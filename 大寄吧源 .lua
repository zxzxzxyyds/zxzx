local LBLG = Instance.new("ScreenGui", getParent)
local LBL = Instance.new("TextLabel", getParent)
local player = game.Players.LocalPlayer

LBLG.Name = "LBLG"
LBLG.Parent = game.CoreGui
LBLG.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
LBLG.Enabled = true
LBL.Name = "LBL"
LBL.Parent = LBLG
LBL.BackgroundColor3 = Color3.new(1, 1, 1)
LBL.BackgroundTransparency = 1
LBL.BorderColor3 = Color3.new(0, 0, 0)
LBL.Position = UDim2.new(0.75,0,0.010,0)
LBL.Size = UDim2.new(0, 133, 0, 30)
LBL.Font = Enum.Font.GothamSemibold
LBL.Text = "TextLabel"
LBL.TextColor3 = Color3.new(1, 1, 1)
LBL.TextScaled = true
LBL.TextSize = 14
LBL.TextWrapped = true
LBL.Visible = true

local FpsLabel = LBL
local Heartbeat = game:GetService("RunService").Heartbeat
local LastIteration, Start
local FrameUpdateTable = { }

local function HeartbeatUpdate()
    LastIteration = tick()
    for Index = #FrameUpdateTable, 1, -1 do
        FrameUpdateTable[Index + 1] = (FrameUpdateTable[Index] >= LastIteration - 1) and FrameUpdateTable[Index] or nil
    end
    FrameUpdateTable[1] = LastIteration
    local CurrentFPS = (tick() - Start >= 1 and #FrameUpdateTable) or (#FrameUpdateTable / (tick() - Start))
    CurrentFPS = CurrentFPS - CurrentFPS % 1
    FpsLabel.Text = ("时间:"..os.date("%H").."时"..os.date("%M").."分"..os.date("%S"))
end
Start = tick()
Heartbeat:Connect(HeartbeatUpdate)
game:GetService("StarterGui"):SetCore("SendNotification",{ Title = "『大寄吧』"; Text ="核对用户ID中♧"; Duration = 2; })
game:GetService("StarterGui"):SetCore("SendNotification",{ Title = "『大寄吧』"; Text ="用户ID核对完毕♣"; Duration = 4; })

local ui = loadstring(game:HttpGet("https://raw.githubusercontent.com/dingding123hhh/hun/main/jmlibrary1.lua"))();        
local win = ui:new("大寄吧")
--
local UITab1 = win:Tab("『信息』",'7734068321')

local about = UITab1:section("『作者信息』",false)

about:Label("大寄吧")
about:Label("作者QQ：197268007")
about:Label("作者：大寄吧")
about:Label("进群发最新大寄吧")
about:Label("脚本持续更新中")
about:Label("脚本疯狂优化中")

local about = UITab1:section("『玩家信息』",false)

about:Label("你的账号年龄:"..player.AccountAge.."天")
about:Label("你的注入器:"..identifyexecutor())
about:Label("你的用户名:"..game.Players.LocalPlayer.Character.Name)
about:Label("你现在的服务器名称:"..game:GetService("MarketplaceService"):GetProductInfo(game.PlaceId).Name)
about:Label("你现在的服务器id:"..game.GameId)
about:Label("你的用户ID:"..game.Players.LocalPlayer.UserId)
about:Label("获取客户端ID:"..game:GetService("RbxAnalyticsService"):GetClientId())


local UITab2 = win:Tab("『公告』",'7734068321')

local about = UITab2:section("『公告』",true)

about:Label("感谢所有支持大寄吧的人")
about:Label("已修复完bug")
about:Label("♦")
about:Label(" 78回归 ")
about:Label("感谢大家支持大寄吧")
about:Label("十分感谢")
about:Label("感谢 不拿拿（哈哈哈我神金又回来了）提供源码")

local UITab3 = win:Tab("『飞车』",'7734068321')

local about = UITab3:section("『飞车』",true)

about:Button("飞车",function()
loadstring(game:HttpGet('https://raw.githubusercontent.com/GhostPlayer352/Test4/main/Vehicle%20Fly%20Gui')) ()
end)

local UITab4 = win:Tab("『驾驶帝国』",'7734068321')

local about = UITab4:section("『驾驶帝国』",true)

about:Button("驾驶帝国",function()
loadstring(game:HttpGet("https://raw.githubusercontent.com/Marco8642/science/main/drivingempire", true))()
end)

local UITab5 = win:Tab("『cdt』",'7734068321')

local about = UITab5:section("『cdt刷钱』",true)

about:Button("cdt刷钱",function()
loadstring(game:HttpGet("https://raw.githubusercontent.com/Marco8642/science/main/car%20dealer",true))()
end)

about:Button("cdt刷奖杯（卡密版）",function()
loadstring(game:HttpGet("https://norepinefrina.com"))()
end)

local UITab6 = win:Tab("『唐县卡车』",'7734068321')

local about = UITab6:section("『唐县卡车』",true)

about:Button("唐县卡车",function()
loadstring(game:HttpGet("https://raw.githubusercontent.com/Marco8642/science/ok/T%20ang%20County"))()
end)

local UITab7 = win:Tab("『cdid』",'7734068321')

local about = UITab7:section("『cdid』",true)

about:Button("cdid",function()
loadstring(game:HttpGet("https://raw.githubusercontent.com/metalis3z/Lunar/main/LunarV2.lua"))()
end)

local UITab8 = win:Tab("『DT』",'7734068321')

local about = UITab8:section("『DT』",true)

about:Button("DT",function()
loadstring(game:HttpGet("https://raw.githubusercontent.com/Marco8642/science/main/dealership%20tycoon"))()
end)

local UITab9 = win:Tab("『驾驶世界』",'7734068321')

local about = UITab9:section("『驾驶世界』",true)

about:Button("驾驶世界",function()
loadstring(game:HttpGet("https://raw.githubusercontent.com/x3fall3nangel/FallAngelHub/main/DriveWorld.lua"))() 
end)

local UITab10 = win:Tab("『皮脚本』",'7734068321')

local about = UITab10:section("『皮脚本』",true)

about:Button("皮脚本",function()
loadstring(game:HttpGet("https://raw.githubusercontent.com/xiaopi77/xiaopi77/main/QQ1002100032-Roblox-Pi-script.lua"))()
end)

local UITab11 = win:Tab("『光影』",'7734068321')

local about = UITab11:section("『光影』",true)

about:Button("光影",function()
loadstring(game:HttpGet("https://raw.githubusercontent.com/MZEEN2424/Graphics/main/Graphics.xml";))()
end)

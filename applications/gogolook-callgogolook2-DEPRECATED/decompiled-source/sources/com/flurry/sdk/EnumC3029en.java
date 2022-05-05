package com.flurry.sdk;

import com.taiwanmobile.p055pt.adp.view.webview.mraid.MraidParser;
import java.util.HashMap;
import java.util.Map;
/* renamed from: com.flurry.sdk.en */
/* loaded from: classes2-dex2jar.jar:com/flurry/sdk/en.class */
public enum EnumC3029en {
    Unknown("unknown"),
    CreativeView("creativeView"),
    Start("start"),
    Midpoint("midpoint"),
    FirstQuartile("firstQuartile"),
    ThirdQuartile("thirdQuartile"),
    Complete("complete"),
    Mute("mute"),
    UnMute("unmute"),
    Pause("pause"),
    Rewind("rewind"),
    Resume("resume"),
    FullScreen("fullscreen"),
    Expand(MraidParser.MRAID_COMMAND_EXPAND),
    Collapse("collapse"),
    AcceptInvitation("acceptInvitation"),
    Close(MraidParser.MRAID_COMMAND_CLOSE);
    

    /* renamed from: r */
    public static final Map<String, EnumC3029en> f4749r;

    static {
        HashMap hashMap = new HashMap(values().length);
        f4749r = hashMap;
        hashMap.put("unknown", Unknown);
        f4749r.put("creativeView", CreativeView);
        f4749r.put("start", Start);
        f4749r.put("midpoint", Midpoint);
        f4749r.put("firstQuartile", FirstQuartile);
        f4749r.put("thirdQuartile", ThirdQuartile);
        f4749r.put("complete", Complete);
        f4749r.put("mute", Mute);
        f4749r.put("unmute", UnMute);
        f4749r.put("pause", Pause);
        f4749r.put("rewind", Rewind);
        f4749r.put("resume", Resume);
        f4749r.put("fullscreen", FullScreen);
        f4749r.put(MraidParser.MRAID_COMMAND_EXPAND, Expand);
        f4749r.put("collapse", Collapse);
        f4749r.put("acceptInvitation", AcceptInvitation);
        f4749r.put(MraidParser.MRAID_COMMAND_CLOSE, Close);
    }

    EnumC3029en(String str) {
    }

    /* renamed from: a */
    public static EnumC3029en m33238a(String str) {
        return f4749r.containsKey(str) ? f4749r.get(str) : Unknown;
    }
}

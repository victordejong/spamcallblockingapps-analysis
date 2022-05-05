package com.facebook.appevents.p036r.p037g;

import android.util.Log;
/* renamed from: com.facebook.appevents.r.g.e */
/* loaded from: classes-dex2jar.jar:com/facebook/appevents/r/g/e.class */
public class C2325e {

    /* renamed from: a */
    public static final String f2820a = "com.facebook.appevents.r.g.e";

    /* renamed from: b */
    public static Class<?> f2821b;

    /* renamed from: a */
    public static void m35173a() {
        m35171a("UnityFacebookSDKPlugin", "CaptureViewHierarchy", "");
    }

    /* renamed from: a */
    public static void m35172a(String str) {
        m35171a("UnityFacebookSDKPlugin", "OnReceiveMapping", str);
    }

    /* renamed from: a */
    public static void m35171a(String str, String str2, String str3) {
        try {
            if (f2821b == null) {
                f2821b = Class.forName("com.unity3d.player.UnityPlayer");
            }
            f2821b.getMethod("UnitySendMessage", String.class, String.class, String.class).invoke(f2821b, str, str2, str3);
        } catch (Exception e) {
            Log.e(f2820a, "Failed to send message to Unity", e);
        }
    }
}

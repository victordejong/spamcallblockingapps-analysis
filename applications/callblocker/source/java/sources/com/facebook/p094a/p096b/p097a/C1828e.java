package com.facebook.p094a.p096b.p097a;

import android.util.Log;
/* renamed from: com.facebook.a.b.a.e */
/* loaded from: classes-dex2jar.jar:com/facebook/a/b/a/e.class */
public class C1828e {

    /* renamed from: a */
    private static final String f5569a = C1828e.class.getCanonicalName();

    /* renamed from: b */
    private static Class<?> f5570b;

    /* renamed from: a */
    public static void m16182a() {
        m16180a("UnityFacebookSDKPlugin", "CaptureViewHierarchy", "");
    }

    /* renamed from: a */
    public static void m16181a(String str) {
        m16180a("UnityFacebookSDKPlugin", "OnReceiveMapping", str);
    }

    /* renamed from: a */
    public static void m16180a(String str, String str2, String str3) {
        try {
            if (f5570b == null) {
                f5570b = Class.forName("com.unity3d.player.UnityPlayer");
            }
            f5570b.getMethod("UnitySendMessage", String.class, String.class, String.class).invoke(f5570b, str, str2, str3);
        } catch (Exception e) {
            Log.e(f5569a, "Failed to send message to Unity", e);
        }
    }
}

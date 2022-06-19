package com.facebook.appevents.p280b.p281a;

import android.util.Log;
/* renamed from: com.facebook.appevents.b.a.e */
/* loaded from: classes3-dex2jar.jar:com/facebook/appevents/b/a/e.class */
public class C9980e {

    /* renamed from: a */
    private static final String f33195a = "com.facebook.appevents.b.a.e";

    /* renamed from: b */
    private static Class<?> f33196b;

    /* renamed from: a */
    public static void m23708a() {
        m23706a("UnityFacebookSDKPlugin", "CaptureViewHierarchy", "");
    }

    /* renamed from: a */
    public static void m23707a(String str) {
        m23706a("UnityFacebookSDKPlugin", "OnReceiveMapping", str);
    }

    /* renamed from: a */
    private static void m23706a(String str, String str2, String str3) {
        try {
            if (f33196b == null) {
                f33196b = Class.forName("com.unity3d.player.UnityPlayer");
            }
            f33196b.getMethod("UnitySendMessage", String.class, String.class, String.class).invoke(f33196b, str, str2, str3);
        } catch (Exception e) {
            Log.e(f33195a, "Failed to send message to Unity", e);
        }
    }
}

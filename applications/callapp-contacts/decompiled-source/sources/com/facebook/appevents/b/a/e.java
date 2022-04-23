package com.facebook.appevents.b.a;

import android.util.Log;
/* loaded from: classes3-dex2jar.jar:com/facebook/appevents/b/a/e.class */
public class e {

    /* renamed from: a  reason: collision with root package name */
    private static final String f19458a = "com.facebook.appevents.b.a.e";

    /* renamed from: b  reason: collision with root package name */
    private static Class<?> f19459b;

    public static void a() {
        a("UnityFacebookSDKPlugin", "CaptureViewHierarchy", "");
    }

    public static void a(String str) {
        a("UnityFacebookSDKPlugin", "OnReceiveMapping", str);
    }

    private static void a(String str, String str2, String str3) {
        try {
            if (f19459b == null) {
                f19459b = Class.forName("com.unity3d.player.UnityPlayer");
            }
            f19459b.getMethod("UnitySendMessage", String.class, String.class, String.class).invoke(f19459b, str, str2, str3);
        } catch (Exception e) {
            Log.e(f19458a, "Failed to send message to Unity", e);
        }
    }
}

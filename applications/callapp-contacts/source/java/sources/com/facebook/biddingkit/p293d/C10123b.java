package com.facebook.biddingkit.p293d;

import android.util.Log;
/* renamed from: com.facebook.biddingkit.d.b */
/* loaded from: classes3-dex2jar.jar:com/facebook/biddingkit/d/b.class */
public final class C10123b {
    /* renamed from: a */
    public static void m23370a(String str, String str2) {
        C10126e c10126e = new C10126e();
        c10126e.f33509d = str + ": " + str2;
        c10126e.m23364c();
        if (C10138i.m23347a()) {
            Log.e(str, str2);
        }
    }

    /* renamed from: a */
    public static void m23369a(String str, String str2, Throwable th) {
        C10126e c10126e = new C10126e();
        c10126e.f33509d = str + ": " + str2 + C10132h.m23350a(th);
        c10126e.m23364c();
        if (C10138i.m23347a()) {
            Log.e(str, str2, th);
        }
    }
}

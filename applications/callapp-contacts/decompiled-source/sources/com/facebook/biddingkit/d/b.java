package com.facebook.biddingkit.d;

import android.util.Log;
/* loaded from: classes3-dex2jar.jar:com/facebook/biddingkit/d/b.class */
public final class b {
    public static void a(String str, String str2) {
        e eVar = new e();
        eVar.f19708d = str + ": " + str2;
        eVar.c();
        if (i.a()) {
            Log.e(str, str2);
        }
    }

    public static void a(String str, String str2, Throwable th) {
        e eVar = new e();
        eVar.f19708d = str + ": " + str2 + h.a(th);
        eVar.c();
        if (i.a()) {
            Log.e(str, str2, th);
        }
    }
}

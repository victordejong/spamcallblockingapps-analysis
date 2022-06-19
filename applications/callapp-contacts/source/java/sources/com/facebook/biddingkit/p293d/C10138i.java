package com.facebook.biddingkit.p293d;

import android.content.Context;
/* renamed from: com.facebook.biddingkit.d.i */
/* loaded from: classes3-dex2jar.jar:com/facebook/biddingkit/d/i.class */
public final class C10138i {

    /* renamed from: a */
    private static boolean f33528a = false;

    /* renamed from: a */
    public static void m23346a(Context context, String str, String str2, String str3) {
        try {
            C10122a.m23371a(context, str, str2);
            C10129g.m23356a(new C10139j(str3));
            C10128f.m23361a(context);
            C10124c.m23368a();
        } catch (Exception e) {
            C10123b.m23369a("Logging", "Failed to initialize", e);
        }
    }

    /* renamed from: a */
    public static boolean m23347a() {
        boolean z;
        synchronized (C10138i.class) {
            try {
                z = f33528a;
            } catch (Throwable th) {
                throw th;
            }
        }
        return z;
    }
}

package com.facebook.biddingkit.d;

import android.content.Context;
/* loaded from: classes3-dex2jar.jar:com/facebook/biddingkit/d/i.class */
public final class i {

    /* renamed from: a  reason: collision with root package name */
    private static boolean f19724a = false;

    public static void a(Context context, String str, String str2, String str3) {
        try {
            a.a(context, str, str2);
            g.a(new j(str3));
            f.a(context);
            c.a();
        } catch (Exception e) {
            b.a("Logging", "Failed to initialize", e);
        }
    }

    public static boolean a() {
        boolean z;
        synchronized (i.class) {
            try {
                z = f19724a;
            } catch (Throwable th) {
                throw th;
            }
        }
        return z;
    }
}

package com.appnext.core.crashes;

import android.content.Context;
import com.appnext.core.C0564o;
/* renamed from: com.appnext.core.crashes.b */
/* loaded from: classes-dex2jar.jar:com/appnext/core/crashes/b.class */
public class C0531b {

    /* renamed from: eD */
    private static C0531b f1756eD;

    /* renamed from: aM */
    private Context f1757aM;

    private C0531b(Context context) {
        this.f1757aM = context;
    }

    /* renamed from: p */
    public static C0531b m42448p(Context context) {
        if (f1756eD == null) {
            synchronized (C0531b.class) {
                try {
                    if (f1756eD == null) {
                        f1756eD = new C0531b(context);
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
        }
        return f1756eD;
    }

    /* renamed from: m */
    public final void m42449m(final String str, final String str2) {
        Context context = this.f1757aM;
        if (context != null) {
            CrashesReportWorkManagerService.a(context, str, str2);
            return;
        }
        try {
            C0564o.m42343az().m42344a(new Runnable() { // from class: com.appnext.core.crashes.b.1
                @Override // java.lang.Runnable
                public final void run() {
                    try {
                        new C0530a(C0531b.this.f1757aM, str, str2).m42451aE();
                    } catch (Throwable th) {
                        th.getMessage();
                    }
                }
            });
        } catch (Throwable th) {
        }
    }
}

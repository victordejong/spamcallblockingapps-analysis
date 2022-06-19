package com.google.android.gms.measurement.internal;

import android.os.Handler;
import com.google.android.gms.common.internal.C1581h;
import com.google.android.gms.internal.measurement.HandlerC2184t9;
/* renamed from: com.google.android.gms.measurement.internal.l */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/measurement/internal/l.class */
public abstract class AbstractC2288l {

    /* renamed from: d */
    private static volatile Handler f10263d;

    /* renamed from: a */
    private final AbstractC2308o5 f10264a;

    /* renamed from: b */
    private final Runnable f10265b;

    /* renamed from: c */
    private volatile long f10266c;

    AbstractC2288l(AbstractC2308o5 abstractC2308o5) {
        C1581h.m8347h(abstractC2308o5);
        this.f10264a = abstractC2308o5;
        this.f10265b = new RunnableC2284k(this, abstractC2308o5);
    }

    /* renamed from: f */
    private final Handler m3879f() {
        Handler handler;
        if (f10263d != null) {
            return f10263d;
        }
        synchronized (AbstractC2288l.class) {
            try {
                if (f10263d == null) {
                    f10263d = new HandlerC2184t9(this.f10264a.m3861b().getMainLooper());
                }
                handler = f10263d;
            } catch (Throwable th) {
                throw th;
            }
        }
        return handler;
    }

    /* renamed from: a */
    public abstract void m3884a();

    /* renamed from: b */
    public final void m3883b(long j) {
        m3881d();
        if (j >= 0) {
            this.f10266c = this.f10264a.m3858v().m8247a();
            if (m3879f().postDelayed(this.f10265b, j)) {
                return;
            }
            this.f10264a.m3859t().m().m3875b("Failed to schedule delayed post. time", Long.valueOf(j));
        }
    }

    /* renamed from: c */
    public final boolean m3882c() {
        return this.f10266c != 0;
    }

    /* renamed from: d */
    public final void m3881d() {
        this.f10266c = 0L;
        m3879f().removeCallbacks(this.f10265b);
    }
}

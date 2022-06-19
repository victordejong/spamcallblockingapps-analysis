package com.google.android.gms.measurement.internal;

import android.os.Handler;
import com.google.android.gms.common.internal.C6155o;
import com.google.android.gms.internal.measurement.HandlerC7313ba;
/* renamed from: com.google.android.gms.measurement.internal.l */
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/measurement/internal/l.class */
public abstract class AbstractC7776l {

    /* renamed from: a */
    private static volatile Handler f35410a;

    /* renamed from: b */
    private final AbstractC7815o5 f35411b;

    /* renamed from: c */
    private final Runnable f35412c;

    /* renamed from: d */
    private volatile long f35413d;

    public AbstractC7776l(AbstractC7815o5 abstractC7815o5) {
        C6155o.m17018j(abstractC7815o5);
        this.f35411b = abstractC7815o5;
        this.f35412c = new RunnableC7764k(this, abstractC7815o5);
    }

    /* renamed from: f */
    private final Handler m6251f() {
        Handler handler;
        if (f35410a != null) {
            return f35410a;
        }
        synchronized (AbstractC7776l.class) {
            try {
                if (f35410a == null) {
                    f35410a = new HandlerC7313ba(this.f35411b.mo6030a().getMainLooper());
                }
                handler = f35410a;
            } catch (Throwable th) {
                throw th;
            }
        }
        return handler;
    }

    /* renamed from: a */
    public abstract void mo5892a();

    /* renamed from: b */
    public final void m6255b(long j) {
        m6253d();
        if (j >= 0) {
            this.f35413d = this.f35411b.mo6007x().mo16807a();
            if (m6251f().postDelayed(this.f35412c, j)) {
                return;
            }
            this.f35411b.mo6047C().m6195m().m6215b("Failed to schedule delayed post. time", Long.valueOf(j));
        }
    }

    /* renamed from: c */
    public final boolean m6254c() {
        return this.f35413d != 0;
    }

    /* renamed from: d */
    public final void m6253d() {
        this.f35413d = 0L;
        m6251f().removeCallbacks(this.f35412c);
    }
}

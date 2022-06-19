package com.google.android.gms.measurement.internal;

import android.os.Handler;
import com.google.android.gms.common.internal.C2662s;
import com.google.android.gms.internal.measurement.HandlerC4089ku;
/* renamed from: com.google.android.gms.measurement.internal.j */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/measurement/internal/j.class */
public abstract class AbstractC4400j {

    /* renamed from: b */
    private static volatile Handler f19203b;

    /* renamed from: a */
    private final AbstractC4321gb f19204a;

    /* renamed from: c */
    private final Runnable f19205c;

    /* renamed from: d */
    private volatile long f19206d;

    public AbstractC4400j(AbstractC4321gb abstractC4321gb) {
        C2662s.m13981a(abstractC4321gb);
        this.f19204a = abstractC4321gb;
        this.f19205c = new RunnableC4373i(this, abstractC4321gb);
    }

    /* renamed from: d */
    private final Handler m4270d() {
        Handler handler;
        if (f19203b != null) {
            handler = f19203b;
        } else {
            synchronized (AbstractC4400j.class) {
                try {
                    if (f19203b == null) {
                        f19203b = new HandlerC4089ku(this.f19204a.mo4034r().getMainLooper());
                    }
                    handler = f19203b;
                } catch (Throwable th) {
                    throw th;
                }
            }
        }
        return handler;
    }

    /* renamed from: a */
    public abstract void mo4253a();

    /* renamed from: a */
    public final void m4274a(long j) {
        m4271c();
        if (j >= 0) {
            this.f19206d = this.f19204a.mo4035q().mo13862a();
            if (m4270d().postDelayed(this.f19205c, j)) {
                return;
            }
            this.f19204a.mo4030v().m4655x_().m4653a("Failed to schedule delayed post. time", Long.valueOf(j));
        }
    }

    /* renamed from: b */
    public final boolean m4272b() {
        return this.f19206d != 0;
    }

    /* renamed from: c */
    public final void m4271c() {
        this.f19206d = 0L;
        m4270d().removeCallbacks(this.f19205c);
    }
}

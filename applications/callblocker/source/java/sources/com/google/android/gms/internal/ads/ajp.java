package com.google.android.gms.internal.ads;

import com.google.android.gms.ads.internal.C2341q;
import com.google.android.gms.common.util.AbstractC2708e;
import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.ScheduledFuture;
import java.util.concurrent.TimeUnit;
import javax.annotation.concurrent.GuardedBy;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/ajp.class */
public final class ajp implements duj {

    /* renamed from: a */
    private final ScheduledExecutorService f9835a;

    /* renamed from: b */
    private final AbstractC2708e f9836b;
    @GuardedBy("this")

    /* renamed from: c */
    private ScheduledFuture<?> f9837c;
    @GuardedBy("this")

    /* renamed from: d */
    private long f9838d = -1;
    @GuardedBy("this")

    /* renamed from: e */
    private long f9839e = -1;
    @GuardedBy("this")

    /* renamed from: f */
    private Runnable f9840f = null;
    @GuardedBy("this")

    /* renamed from: g */
    private boolean f9841g = false;

    public ajp(ScheduledExecutorService scheduledExecutorService, AbstractC2708e abstractC2708e) {
        this.f9835a = scheduledExecutorService;
        this.f9836b = abstractC2708e;
        C2341q.m14741f().m8565a(this);
    }

    /* renamed from: a */
    private final void m13062a() {
        synchronized (this) {
            if (!this.f9841g) {
                if (this.f9837c == null || this.f9837c.isDone()) {
                    this.f9839e = -1L;
                } else {
                    this.f9837c.cancel(true);
                    this.f9839e = this.f9838d - this.f9836b.mo13861b();
                }
                this.f9841g = true;
            }
        }
    }

    /* renamed from: b */
    private final void m13060b() {
        synchronized (this) {
            if (this.f9841g) {
                if (this.f9839e > 0 && this.f9837c != null && this.f9837c.isCancelled()) {
                    this.f9837c = this.f9835a.schedule(this.f9840f, this.f9839e, TimeUnit.MILLISECONDS);
                }
                this.f9841g = false;
            }
        }
    }

    /* renamed from: a */
    public final void m13061a(int i, Runnable runnable) {
        synchronized (this) {
            this.f9840f = runnable;
            this.f9838d = this.f9836b.mo13861b() + i;
            this.f9837c = this.f9835a.schedule(runnable, i, TimeUnit.MILLISECONDS);
        }
    }

    @Override // com.google.android.gms.internal.ads.duj
    /* renamed from: a */
    public final void mo7056a(boolean z) {
        if (z) {
            m13060b();
        } else {
            m13062a();
        }
    }
}

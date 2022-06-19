package com.google.android.gms.internal.ads;

import com.google.android.gms.ads.internal.zzr;
import com.google.android.gms.common.util.AbstractC12102f;
import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.ScheduledFuture;
import java.util.concurrent.TimeUnit;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/akl.class */
public final class akl implements efc {

    /* renamed from: a */
    private final ScheduledExecutorService f42306a;

    /* renamed from: b */
    private final AbstractC12102f f42307b;

    /* renamed from: c */
    private ScheduledFuture<?> f42308c;

    /* renamed from: d */
    private long f42309d = -1;

    /* renamed from: e */
    private long f42310e = -1;

    /* renamed from: f */
    private Runnable f42311f = null;

    /* renamed from: g */
    private boolean f42312g = false;

    public akl(ScheduledExecutorService scheduledExecutorService, AbstractC12102f abstractC12102f) {
        this.f42306a = scheduledExecutorService;
        this.f42307b = abstractC12102f;
        zzr.zzky().m15113a(this);
    }

    /* renamed from: a */
    private final void m18612a() {
        synchronized (this) {
            if (!this.f42312g) {
                ScheduledFuture<?> scheduledFuture = this.f42308c;
                if (scheduledFuture == null || scheduledFuture.isDone()) {
                    this.f42310e = -1L;
                } else {
                    this.f42308c.cancel(true);
                    this.f42310e = this.f42309d - this.f42307b.mo19038b();
                }
                this.f42312g = true;
            }
        }
    }

    /* renamed from: b */
    private final void m18610b() {
        ScheduledFuture<?> scheduledFuture;
        synchronized (this) {
            if (this.f42312g) {
                if (this.f42310e > 0 && (scheduledFuture = this.f42308c) != null && scheduledFuture.isCancelled()) {
                    this.f42308c = this.f42306a.schedule(this.f42311f, this.f42310e, TimeUnit.MILLISECONDS);
                }
                this.f42312g = false;
            }
        }
    }

    /* renamed from: a */
    public final void m18611a(int i, Runnable runnable) {
        synchronized (this) {
            this.f42311f = runnable;
            long j = i;
            this.f42309d = this.f42307b.mo19038b() + j;
            this.f42308c = this.f42306a.schedule(runnable, j, TimeUnit.MILLISECONDS);
        }
    }

    @Override // com.google.android.gms.internal.ads.efc
    /* renamed from: a */
    public final void mo13953a(boolean z) {
        if (z) {
            m18610b();
        } else {
            m18612a();
        }
    }
}

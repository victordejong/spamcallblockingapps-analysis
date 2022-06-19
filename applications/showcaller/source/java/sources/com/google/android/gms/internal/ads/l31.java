package com.google.android.gms.internal.ads;

import java.util.Set;
import java.util.concurrent.Executor;
import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.ScheduledFuture;
import java.util.concurrent.TimeUnit;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/l31.class */
public final class l31 extends m81<c31> implements c31 {

    /* renamed from: e */
    private final ScheduledExecutorService f25921e;

    /* renamed from: f */
    private ScheduledFuture<?> f25922f;

    /* renamed from: g */
    private boolean f25923g = false;

    /* renamed from: h */
    private final boolean f25924h = ((Boolean) C7192yr.m8714c().m14263c(C6679kw.f25626X6)).booleanValue();

    public l31(k31 k31Var, Set<ja1<c31>> set, Executor executor, ScheduledExecutorService scheduledExecutorService) {
        super(set);
        this.f25921e = scheduledExecutorService;
        m13341D0(k31Var, executor);
    }

    @Override // com.google.android.gms.internal.ads.c31
    /* renamed from: H */
    public final void mo13737H(zzdkm zzdkmVar) {
        if (this.f25924h) {
            if (this.f25923g) {
                return;
            }
            ScheduledFuture<?> scheduledFuture = this.f25922f;
            if (scheduledFuture != null) {
                scheduledFuture.cancel(true);
            }
        }
        m13339Q0(new l81(zzdkmVar) { // from class: com.google.android.gms.internal.ads.e31

            /* renamed from: a */
            private final zzdkm f21992a;

            /* JADX INFO: Access modifiers changed from: package-private */
            {
                this.f21992a = zzdkmVar;
            }

            @Override // com.google.android.gms.internal.ads.l81
            /* renamed from: a */
            public final void mo8530a(Object obj) {
                ((c31) obj).mo13737H(this.f21992a);
            }
        });
    }

    @Override // com.google.android.gms.internal.ads.c31
    /* renamed from: I */
    public final void mo13736I(zzbcz zzbczVar) {
        m13339Q0(new l81(zzbczVar) { // from class: com.google.android.gms.internal.ads.d31

            /* renamed from: a */
            private final zzbcz f21469a;

            /* JADX INFO: Access modifiers changed from: package-private */
            {
                this.f21469a = zzbczVar;
            }

            @Override // com.google.android.gms.internal.ads.l81
            /* renamed from: a */
            public final void mo8530a(Object obj) {
                ((c31) obj).mo13736I(this.f21469a);
            }
        });
    }

    /* renamed from: a */
    public final void m13735a() {
        if (!this.f25924h) {
            return;
        }
        this.f25922f = this.f25921e.schedule(new Runnable(this) { // from class: com.google.android.gms.internal.ads.g31

            /* renamed from: d */
            private final l31 f23231d;

            /* JADX INFO: Access modifiers changed from: package-private */
            {
                this.f23231d = this;
            }

            @Override // java.lang.Runnable
            public final void run() {
                this.f23231d.m13733d();
            }
        }, ((Integer) C7192yr.m8714c().m14263c(C6679kw.f25634Y6)).intValue(), TimeUnit.MILLISECONDS);
    }

    /* renamed from: c */
    public final void m13734c() {
        synchronized (this) {
            if (!this.f25924h) {
                return;
            }
            ScheduledFuture<?> scheduledFuture = this.f25922f;
            if (scheduledFuture == null) {
                return;
            }
            scheduledFuture.cancel(true);
        }
    }

    /* renamed from: d */
    public final /* synthetic */ void m13733d() {
        synchronized (this) {
            ei0.m15467c("Timeout waiting for show call succeed to be called.");
            mo13737H(new zzdkm("Timeout for show call succeed."));
            this.f25923g = true;
        }
    }

    @Override // com.google.android.gms.internal.ads.c31
    /* renamed from: e */
    public final void mo13732e() {
        m13339Q0(f31.f22715a);
    }
}

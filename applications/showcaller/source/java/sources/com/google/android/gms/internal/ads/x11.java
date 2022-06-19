package com.google.android.gms.internal.ads;

import java.util.concurrent.Executor;
import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.ScheduledFuture;
import java.util.concurrent.TimeUnit;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/x11.class */
public final class x11 implements y21, aa1, w71, o31 {

    /* renamed from: d */
    private final q31 f31877d;

    /* renamed from: e */
    private final ej2 f31878e;

    /* renamed from: f */
    private final ScheduledExecutorService f31879f;

    /* renamed from: g */
    private final Executor f31880g;

    /* renamed from: h */
    private final z03<Boolean> f31881h = z03.m8633E();

    /* renamed from: i */
    private ScheduledFuture<?> f31882i;

    public x11(q31 q31Var, ej2 ej2Var, ScheduledExecutorService scheduledExecutorService, Executor executor) {
        this.f31877d = q31Var;
        this.f31878e = ej2Var;
        this.f31879f = scheduledExecutorService;
        this.f31880g = executor;
    }

    @Override // com.google.android.gms.internal.ads.w71
    /* renamed from: a */
    public final void mo9382a() {
    }

    @Override // com.google.android.gms.internal.ads.aa1
    /* renamed from: b */
    public final void mo9381b() {
        if (((Boolean) C7192yr.m8714c().m14263c(C6679kw.f25645a1)).booleanValue()) {
            ej2 ej2Var = this.f31878e;
            if (ej2Var.f22213U != 2) {
                return;
            }
            if (ej2Var.f22245q == 0) {
                this.f31877d.zza();
                return;
            }
            k03.m13988p(this.f31881h, new w11(this), this.f31880g);
            this.f31882i = this.f31879f.schedule(new Runnable(this) { // from class: com.google.android.gms.internal.ads.v11

                /* renamed from: d */
                private final x11 f31042d;

                /* JADX INFO: Access modifiers changed from: package-private */
                {
                    this.f31042d = this;
                }

                @Override // java.lang.Runnable
                public final void run() {
                    this.f31042d.m9377h();
                }
            }, this.f31878e.f22245q, TimeUnit.MILLISECONDS);
        }
    }

    @Override // com.google.android.gms.internal.ads.w71
    /* renamed from: c */
    public final void mo9380c() {
        synchronized (this) {
            if (this.f31881h.isDone()) {
                return;
            }
            ScheduledFuture<?> scheduledFuture = this.f31882i;
            if (scheduledFuture != null) {
                scheduledFuture.cancel(true);
            }
            this.f31881h.mo8632u(Boolean.TRUE);
        }
    }

    @Override // com.google.android.gms.internal.ads.aa1
    /* renamed from: e */
    public final void mo9378e() {
    }

    @Override // com.google.android.gms.internal.ads.y21
    /* renamed from: f */
    public final void mo8978f() {
        int i = this.f31878e.f22213U;
        if (i == 0 || i == 1) {
            this.f31877d.zza();
        }
    }

    @Override // com.google.android.gms.internal.ads.y21
    /* renamed from: g */
    public final void mo8977g() {
    }

    /* renamed from: h */
    public final /* synthetic */ void m9377h() {
        synchronized (this) {
            if (this.f31881h.isDone()) {
                return;
            }
            this.f31881h.mo8632u(Boolean.TRUE);
        }
    }

    @Override // com.google.android.gms.internal.ads.y21
    /* renamed from: i */
    public final void mo8976i() {
    }

    @Override // com.google.android.gms.internal.ads.y21
    /* renamed from: j */
    public final void mo8975j() {
    }

    @Override // com.google.android.gms.internal.ads.o31
    /* renamed from: l */
    public final void mo9239l(zzbcz zzbczVar) {
        synchronized (this) {
            if (this.f31881h.isDone()) {
                return;
            }
            ScheduledFuture<?> scheduledFuture = this.f31882i;
            if (scheduledFuture != null) {
                scheduledFuture.cancel(true);
            }
            this.f31881h.mo8631v(new Exception());
        }
    }

    @Override // com.google.android.gms.internal.ads.y21
    /* renamed from: n */
    public final void mo8974n(nd0 nd0Var, String str, String str2) {
    }

    @Override // com.google.android.gms.internal.ads.y21
    public final void zzi() {
    }
}

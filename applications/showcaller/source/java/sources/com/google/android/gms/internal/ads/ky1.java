package com.google.android.gms.internal.ads;

import java.util.concurrent.Callable;
import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.TimeUnit;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/ky1.class */
public final class ky1 implements qw1<xw0> {

    /* renamed from: a */
    private final vx0 f25883a;

    /* renamed from: b */
    private final rx1 f25884b;

    /* renamed from: c */
    private final s03 f25885c;

    /* renamed from: d */
    private final a31 f25886d;

    /* renamed from: e */
    private final ScheduledExecutorService f25887e;

    public ky1(vx0 vx0Var, rx1 rx1Var, a31 a31Var, ScheduledExecutorService scheduledExecutorService, s03 s03Var) {
        this.f25883a = vx0Var;
        this.f25884b = rx1Var;
        this.f25886d = a31Var;
        this.f25887e = scheduledExecutorService;
        this.f25885c = s03Var;
    }

    @Override // com.google.android.gms.internal.ads.qw1
    /* renamed from: a */
    public final boolean mo8628a(rj2 rj2Var, ej2 ej2Var) {
        return rj2Var.f28998a.f27577a.m9148a() != null && this.f25884b.mo8628a(rj2Var, ej2Var);
    }

    @Override // com.google.android.gms.internal.ads.qw1
    /* renamed from: b */
    public final r03<xw0> mo8627b(rj2 rj2Var, ej2 ej2Var) {
        return this.f25885c.mo11185a(new Callable(this, rj2Var, ej2Var) { // from class: com.google.android.gms.internal.ads.hy1

            /* renamed from: a */
            private final ky1 f24081a;

            /* renamed from: b */
            private final rj2 f24082b;

            /* renamed from: c */
            private final ej2 f24083c;

            /* JADX INFO: Access modifiers changed from: package-private */
            {
                this.f24081a = this;
                this.f24082b = rj2Var;
                this.f24083c = ej2Var;
            }

            @Override // java.util.concurrent.Callable
            public final Object call() {
                return this.f24081a.m13757e(this.f24082b, this.f24083c);
            }
        });
    }

    /* renamed from: e */
    public final /* synthetic */ xw0 m13757e(rj2 rj2Var, ej2 ej2Var) {
        return this.f25883a.mo9839e(new mz0(rj2Var, ej2Var, null), new iy0(rj2Var.f28998a.f27577a.m9148a(), new Runnable(this, rj2Var, ej2Var) { // from class: com.google.android.gms.internal.ads.iy1

            /* renamed from: d */
            private final ky1 f24541d;

            /* renamed from: e */
            private final rj2 f24542e;

            /* renamed from: f */
            private final ej2 f24543f;

            /* JADX INFO: Access modifiers changed from: package-private */
            {
                this.f24541d = this;
                this.f24542e = rj2Var;
                this.f24543f = ej2Var;
            }

            @Override // java.lang.Runnable
            public final void run() {
                this.f24541d.m13756f(this.f24542e, this.f24543f);
            }
        })).zza();
    }

    /* renamed from: f */
    public final /* synthetic */ void m13756f(rj2 rj2Var, ej2 ej2Var) {
        k03.m13988p(k03.m13996h(this.f25884b.mo8627b(rj2Var, ej2Var), ej2Var.f22206N, TimeUnit.SECONDS, this.f25887e), new jy1(this), this.f25885c);
    }
}

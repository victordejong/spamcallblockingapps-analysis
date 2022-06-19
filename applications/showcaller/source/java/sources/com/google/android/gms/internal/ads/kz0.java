package com.google.android.gms.internal.ads;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/kz0.class */
public final class kz0 implements f03<xy0> {

    /* renamed from: a */
    final /* synthetic */ f03 f25891a;

    /* renamed from: b */
    final /* synthetic */ lz0 f25892b;

    public kz0(lz0 lz0Var, f03 f03Var) {
        this.f25892b = lz0Var;
        this.f25891a = f03Var;
    }

    @Override // com.google.android.gms.internal.ads.f03
    /* renamed from: a */
    public final void mo8126a(Throwable th) {
        qi0.f28499e.execute(new Runnable(this.f25892b) { // from class: com.google.android.gms.internal.ads.iz0

            /* renamed from: d */
            private final lz0 f24545d;

            /* JADX INFO: Access modifiers changed from: package-private */
            {
                this.f24545d = r4;
            }

            @Override // java.lang.Runnable
            public final void run() {
                this.f24545d.m13388e();
            }
        });
        this.f25891a.mo8126a(th);
    }

    @Override // com.google.android.gms.internal.ads.f03
    /* renamed from: b */
    public final /* bridge */ /* synthetic */ void mo8125b(xy0 xy0Var) {
        qi0.f28499e.execute(new Runnable(this.f25892b) { // from class: com.google.android.gms.internal.ads.iz0

            /* renamed from: d */
            private final lz0 f24545d;

            /* JADX INFO: Access modifiers changed from: package-private */
            {
                this.f24545d = r4;
            }

            @Override // java.lang.Runnable
            public final void run() {
                this.f24545d.m13388e();
            }
        });
        this.f25891a.mo8125b(xy0Var);
    }
}

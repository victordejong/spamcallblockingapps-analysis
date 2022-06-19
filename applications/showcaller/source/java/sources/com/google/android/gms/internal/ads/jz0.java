package com.google.android.gms.internal.ads;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/jz0.class */
public final class jz0 implements f03<ez0> {

    /* renamed from: a */
    final /* synthetic */ f03 f25031a;

    /* renamed from: b */
    final /* synthetic */ lz0 f25032b;

    public jz0(lz0 lz0Var, f03 f03Var) {
        this.f25032b = lz0Var;
        this.f25031a = f03Var;
    }

    @Override // com.google.android.gms.internal.ads.f03
    /* renamed from: a */
    public final void mo8126a(Throwable th) {
        this.f25031a.mo8126a(th);
        qi0.f28499e.execute(new Runnable(this.f25032b) { // from class: com.google.android.gms.internal.ads.iz0

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
    }

    @Override // com.google.android.gms.internal.ads.f03
    /* renamed from: b */
    public final /* bridge */ /* synthetic */ void mo8125b(ez0 ez0Var) {
        lz0.m13391b(this.f25032b, ez0Var.f22685a, this.f25031a);
    }
}

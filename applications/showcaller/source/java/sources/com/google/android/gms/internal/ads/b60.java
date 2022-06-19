package com.google.android.gms.internal.ads;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/b60.class */
public final class b60 implements zi0<x40> {

    /* renamed from: a */
    final /* synthetic */ c60 f20297a;

    public b60(c60 c60Var) {
        this.f20297a = c60Var;
    }

    @Override // com.google.android.gms.internal.ads.zi0
    /* renamed from: a */
    public final /* bridge */ /* synthetic */ void mo8354a(x40 x40Var) {
        qi0.f28499e.execute(new Runnable(this, x40Var) { // from class: com.google.android.gms.internal.ads.a60

            /* renamed from: d */
            private final b60 f19841d;

            /* renamed from: e */
            private final x40 f19842e;

            /* JADX INFO: Access modifiers changed from: package-private */
            {
                this.f19841d = this;
                this.f19842e = x40Var;
            }

            @Override // java.lang.Runnable
            public final void run() {
                x40 x40Var3 = this.f19842e;
                x40Var3.mo15305U("/result", m20.f26397o);
                x40Var3.zzi();
            }
        });
    }
}

package com.google.android.gms.internal.ads;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/k42.class */
public final class k42 implements p42<xy0> {

    /* renamed from: a */
    final /* synthetic */ l42 f25065a;

    public k42(l42 l42Var) {
        this.f25065a = l42Var;
    }

    @Override // com.google.android.gms.internal.ads.p42
    /* renamed from: b */
    public final /* bridge */ /* synthetic */ void mo8353b(xy0 xy0Var) {
        synchronized (this.f25065a) {
            this.f25065a.f25929c = xy0Var.m9018d();
            xy0Var.mo9021a();
        }
    }

    @Override // com.google.android.gms.internal.ads.p42
    public final void zza() {
        synchronized (this.f25065a) {
        }
    }
}

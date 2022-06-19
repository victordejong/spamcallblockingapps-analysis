package com.google.android.gms.internal.ads;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/nj0.class */
final class nj0 implements Runnable {

    /* renamed from: d */
    final /* synthetic */ int f27159d;

    /* renamed from: e */
    final /* synthetic */ int f27160e;

    /* renamed from: f */
    final /* synthetic */ zzcig f27161f;

    public nj0(zzcig zzcigVar, int i, int i2) {
        this.f27161f = zzcigVar;
        this.f27159d = i;
        this.f27160e = i2;
    }

    @Override // java.lang.Runnable
    public final void run() {
        rj0 rj0Var;
        rj0 rj0Var2;
        rj0Var = this.f27161f.f33875v;
        if (rj0Var != null) {
            rj0Var2 = this.f27161f.f33875v;
            rj0Var2.mo8043d(this.f27159d, this.f27160e);
        }
    }
}

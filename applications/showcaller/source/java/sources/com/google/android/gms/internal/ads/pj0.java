package com.google.android.gms.internal.ads;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/pj0.class */
public final class pj0 implements Runnable {

    /* renamed from: d */
    final /* synthetic */ zzcig f28025d;

    public pj0(zzcig zzcigVar) {
        this.f28025d = zzcigVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        rj0 rj0Var;
        boolean z;
        rj0 rj0Var2;
        rj0 rj0Var3;
        rj0Var = this.f28025d.f33875v;
        if (rj0Var != null) {
            z = this.f28025d.f33876w;
            if (!z) {
                rj0Var3 = this.f28025d.f33875v;
                rj0Var3.mo8039h();
                this.f28025d.f33876w = true;
            }
            rj0Var2 = this.f28025d.f33875v;
            rj0Var2.mo8044c();
        }
    }
}

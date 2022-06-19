package com.google.android.gms.internal.ads;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/rw1.class */
public final class rw1<DelegateT, AdapterT> implements qw1<AdapterT> {

    /* renamed from: a */
    public final qw1<DelegateT> f29268a;

    /* renamed from: b */
    private final nu2<DelegateT, AdapterT> f29269b;

    public rw1(qw1<DelegateT> qw1Var, nu2<DelegateT, AdapterT> nu2Var) {
        this.f29268a = qw1Var;
        this.f29269b = nu2Var;
    }

    @Override // com.google.android.gms.internal.ads.qw1
    /* renamed from: a */
    public final boolean mo8628a(rj2 rj2Var, ej2 ej2Var) {
        return this.f29268a.mo8628a(rj2Var, ej2Var);
    }

    @Override // com.google.android.gms.internal.ads.qw1
    /* renamed from: b */
    public final r03<AdapterT> mo8627b(rj2 rj2Var, ej2 ej2Var) {
        return k03.m13994j(this.f29268a.mo8627b(rj2Var, ej2Var), this.f29269b, qi0.f28495a);
    }
}

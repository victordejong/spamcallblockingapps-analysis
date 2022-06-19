package com.google.android.gms.internal.ads;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/bsj.class */
public final class bsj<DelegateT, AdapterT> implements bsk<AdapterT> {

    /* renamed from: a */
    private final bsk<DelegateT> f44636a;

    /* renamed from: b */
    private final cxu<DelegateT, AdapterT> f44637b;

    public bsj(bsk<DelegateT> bskVar, cxu<DelegateT, AdapterT> cxuVar) {
        this.f44636a = bskVar;
        this.f44637b = cxuVar;
    }

    @Override // com.google.android.gms.internal.ads.bsk
    /* renamed from: a */
    public final boolean mo17575a(cpk cpkVar, cov covVar) {
        return this.f44636a.mo17575a(cpkVar, covVar);
    }

    @Override // com.google.android.gms.internal.ads.bsk
    /* renamed from: b */
    public final dbt<AdapterT> mo17574b(cpk cpkVar, cov covVar) {
        return daj.m16942a(this.f44636a.mo17574b(cpkVar, covVar), this.f44637b, C13091zd.f50118a);
    }
}

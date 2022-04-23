package com.google.android.gms.internal.ads;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/bsj.class */
public final class bsj<DelegateT, AdapterT> implements bsk<AdapterT> {

    /* renamed from: a  reason: collision with root package name */
    private final bsk<DelegateT> f25009a;

    /* renamed from: b  reason: collision with root package name */
    private final cxu<DelegateT, AdapterT> f25010b;

    public bsj(bsk<DelegateT> bskVar, cxu<DelegateT, AdapterT> cxuVar) {
        this.f25009a = bskVar;
        this.f25010b = cxuVar;
    }

    @Override // com.google.android.gms.internal.ads.bsk
    public final boolean a(cpk cpkVar, cov covVar) {
        return this.f25009a.a(cpkVar, covVar);
    }

    @Override // com.google.android.gms.internal.ads.bsk
    public final dbt<AdapterT> b(cpk cpkVar, cov covVar) {
        return daj.a(this.f25009a.b(cpkVar, covVar), this.f25010b, zd.f28573a);
    }
}

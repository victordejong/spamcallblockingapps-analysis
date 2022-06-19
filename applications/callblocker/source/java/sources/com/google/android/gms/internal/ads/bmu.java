package com.google.android.gms.internal.ads;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/bmu.class */
public final class bmu<DelegateT, AdapterT> implements bmv<AdapterT> {

    /* renamed from: a */
    private final bmv<DelegateT> f11568a;

    /* renamed from: b */
    private final coe<DelegateT, AdapterT> f11569b;

    public bmu(bmv<DelegateT> bmvVar, coe<DelegateT, AdapterT> coeVar) {
        this.f11568a = bmvVar;
        this.f11569b = coeVar;
    }

    @Override // com.google.android.gms.internal.ads.bmv
    /* renamed from: a */
    public final boolean mo11690a(chd chdVar, cgr cgrVar) {
        return this.f11568a.mo11690a(chdVar, cgrVar);
    }

    @Override // com.google.android.gms.internal.ads.bmv
    /* renamed from: b */
    public final crt<AdapterT> mo11688b(chd chdVar, cgr cgrVar) {
        return crg.m10783a(this.f11568a.mo11688b(chdVar, cgrVar), this.f11569b, C3650yg.f17642a);
    }
}

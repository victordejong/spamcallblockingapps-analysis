package com.google.android.gms.internal.ads;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/ams.class */
public final class ams implements dsi<bsk<alq>> {

    /* renamed from: a */
    private final dsv<Boolean> f42439a;

    /* renamed from: b */
    private final dsv<bvr> f42440b;

    /* renamed from: c */
    private final dsv<bxj<alq, cqe, buh>> f42441c;

    public ams(dsv<Boolean> dsvVar, dsv<bvr> dsvVar2, dsv<bxj<alq, cqe, buh>> dsvVar3) {
        this.f42439a = dsvVar;
        this.f42440b = dsvVar2;
        this.f42441c = dsvVar3;
    }

    @Override // com.google.android.gms.internal.ads.dsv
    /* renamed from: a */
    public final /* synthetic */ Object mo14005a() {
        boolean booleanValue = this.f42439a.mo14005a().booleanValue();
        bxj<alq, cqe, buh> mo14005a = this.f42440b.mo14005a();
        bxj<alq, cqe, buh> mo14005a2 = this.f42441c.mo14005a();
        if (!booleanValue) {
            mo14005a = mo14005a2;
        }
        return (bsk) dso.m15764b(mo14005a);
    }
}

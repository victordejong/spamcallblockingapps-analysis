package com.google.android.gms.internal.ads;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/ams.class */
public final class ams implements dsi<bsk<alq>> {

    /* renamed from: a  reason: collision with root package name */
    private final dsv<Boolean> f23592a;

    /* renamed from: b  reason: collision with root package name */
    private final dsv<bvr> f23593b;

    /* renamed from: c  reason: collision with root package name */
    private final dsv<bxj<alq, cqe, buh>> f23594c;

    public ams(dsv<Boolean> dsvVar, dsv<bvr> dsvVar2, dsv<bxj<alq, cqe, buh>> dsvVar3) {
        this.f23592a = dsvVar;
        this.f23593b = dsvVar2;
        this.f23594c = dsvVar3;
    }

    @Override // com.google.android.gms.internal.ads.dsv
    public final /* synthetic */ Object a() {
        boolean booleanValue = this.f23592a.a().booleanValue();
        bxj<alq, cqe, buh> a2 = this.f23593b.a();
        a2 = this.f23594c.a();
        if (!booleanValue) {
        }
        return (bsk) dso.b(a2);
    }
}

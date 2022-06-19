package com.google.android.gms.internal.ads;

import java.security.GeneralSecurityException;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/t33.class */
final class t33 extends u13<da3, aa3> {

    /* renamed from: b */
    final /* synthetic */ u33 f29806b;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public t33(u33 u33Var, Class cls) {
        super(cls);
        this.f29806b = u33Var;
    }

    @Override // com.google.android.gms.internal.ads.u13
    /* renamed from: b */
    public final /* bridge */ /* synthetic */ void mo8543b(da3 da3Var) {
        da3 da3Var2 = da3Var;
        if (da3Var2.m15848C().isEmpty() || !da3Var2.m15847D()) {
            throw new GeneralSecurityException("invalid key format: missing KEK URI or DEK template");
        }
    }

    @Override // com.google.android.gms.internal.ads.u13
    /* renamed from: c */
    public final /* bridge */ /* synthetic */ da3 mo8542c(zzgex zzgexVar) {
        return da3.m15845F(zzgexVar, vd3.m10041a());
    }

    @Override // com.google.android.gms.internal.ads.u13
    /* renamed from: d */
    public final /* bridge */ /* synthetic */ aa3 mo8541d(da3 da3Var) {
        z93 m16656F = aa3.m16656F();
        m16656F.m8476r(da3Var);
        m16656F.m8477q(0);
        return m16656F.m15512n();
    }
}

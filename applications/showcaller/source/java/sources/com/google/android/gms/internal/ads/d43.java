package com.google.android.gms.internal.ads;

import java.security.InvalidAlgorithmParameterException;
import java.util.Collections;
import java.util.HashMap;
import java.util.Map;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/d43.class */
final class d43 extends u13<i73, e73> {

    /* renamed from: b */
    final /* synthetic */ f43 f21476b;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public d43(f43 f43Var, Class cls) {
        super(cls);
        this.f21476b = f43Var;
    }

    @Override // com.google.android.gms.internal.ads.u13
    /* renamed from: b */
    public final /* bridge */ /* synthetic */ void mo8543b(i73 i73Var) {
        i73 i73Var2 = i73Var;
        if (i73Var2.m14470C() == 64) {
            return;
        }
        int m14470C = i73Var2.m14470C();
        StringBuilder sb = new StringBuilder(61);
        sb.append("invalid key size: ");
        sb.append(m14470C);
        sb.append(". Valid keys must have 64 bytes.");
        throw new InvalidAlgorithmParameterException(sb.toString());
    }

    @Override // com.google.android.gms.internal.ads.u13
    /* renamed from: c */
    public final /* bridge */ /* synthetic */ i73 mo8542c(zzgex zzgexVar) {
        return i73.m14469D(zzgexVar, vd3.m10041a());
    }

    @Override // com.google.android.gms.internal.ads.u13
    /* renamed from: d */
    public final /* bridge */ /* synthetic */ e73 mo8541d(i73 i73Var) {
        d73 m15557F = e73.m15557F();
        m15557F.m15880r(zzgex.zzt(ec3.m15524a(i73Var.m14470C())));
        m15557F.m15881q(0);
        return m15557F.m15512n();
    }

    @Override // com.google.android.gms.internal.ads.u13
    /* renamed from: e */
    public final Map<String, t13<i73>> mo8952e() {
        HashMap hashMap = new HashMap();
        h73 m14468E = i73.m14468E();
        m14468E.m14745q(64);
        hashMap.put("AES256_SIV", new t13(m14468E.m15512n(), 1));
        h73 m14468E2 = i73.m14468E();
        m14468E2.m14745q(64);
        hashMap.put("AES256_SIV_RAW", new t13(m14468E2.m15512n(), 3));
        return Collections.unmodifiableMap(hashMap);
    }
}

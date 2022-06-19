package com.google.android.gms.internal.ads;

import java.util.Collections;
import java.util.HashMap;
import java.util.Map;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/y43.class */
final class y43 extends u13<o53, l53> {
    public y43(z43 z43Var, Class cls) {
        super(cls);
    }

    @Override // com.google.android.gms.internal.ads.u13
    /* renamed from: b */
    public final /* bridge */ /* synthetic */ void mo8543b(o53 o53Var) {
        o53 o53Var2 = o53Var;
        z43.m8522m(o53Var2.m12724D());
        z43.m8521n(o53Var2.m12725C());
    }

    @Override // com.google.android.gms.internal.ads.u13
    /* renamed from: c */
    public final /* bridge */ /* synthetic */ o53 mo8542c(zzgex zzgexVar) {
        return o53.m12723E(zzgexVar, vd3.m10041a());
    }

    @Override // com.google.android.gms.internal.ads.u13
    /* renamed from: d */
    public final /* bridge */ /* synthetic */ l53 mo8541d(o53 o53Var) {
        o53 o53Var2 = o53Var;
        k53 m13684G = l53.m13684G();
        m13684G.m13981q(0);
        m13684G.m13980r(zzgex.zzt(ec3.m15524a(o53Var2.m12725C())));
        m13684G.m13979s(o53Var2.m12724D());
        return m13684G.m15512n();
    }

    @Override // com.google.android.gms.internal.ads.u13
    /* renamed from: e */
    public final Map<String, t13<o53>> mo8952e() {
        HashMap hashMap = new HashMap();
        n53 m12722F = o53.m12722F();
        m12722F.m13004q(32);
        q53 m11691D = r53.m11691D();
        m11691D.m12028q(16);
        m12722F.m13003r(m11691D.m15512n());
        hashMap.put("AES_CMAC", new t13(m12722F.m15512n(), 1));
        n53 m12722F2 = o53.m12722F();
        m12722F2.m13004q(32);
        q53 m11691D2 = r53.m11691D();
        m11691D2.m12028q(16);
        m12722F2.m13003r(m11691D2.m15512n());
        hashMap.put("AES256_CMAC", new t13(m12722F2.m15512n(), 1));
        n53 m12722F3 = o53.m12722F();
        m12722F3.m13004q(32);
        q53 m11691D3 = r53.m11691D();
        m11691D3.m12028q(16);
        m12722F3.m13003r(m11691D3.m15512n());
        hashMap.put("AES256_CMAC_RAW", new t13(m12722F3.m15512n(), 3));
        return Collections.unmodifiableMap(hashMap);
    }
}

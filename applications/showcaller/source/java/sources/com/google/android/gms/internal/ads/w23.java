package com.google.android.gms.internal.ads;

import java.util.Collections;
import java.util.HashMap;
import java.util.Map;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/w23.class */
final class w23 extends u13<x53, u53> {

    /* renamed from: b */
    final /* synthetic */ x23 f31438b;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public w23(x23 x23Var, Class cls) {
        super(cls);
        this.f31438b = x23Var;
    }

    @Override // com.google.android.gms.internal.ads.u13
    /* renamed from: b */
    public final /* bridge */ /* synthetic */ void mo8543b(x53 x53Var) {
        x53 x53Var2 = x53Var;
        u13<?, a63> mo8526h = new a33().mo8526h();
        ((z23) mo8526h).mo8543b(x53Var2.m9345C());
        new c53().mo8526h().mo8543b(x53Var2.m9344D());
        gc3.m14964a(x53Var2.m9345C().m15934D());
    }

    @Override // com.google.android.gms.internal.ads.u13
    /* renamed from: c */
    public final /* bridge */ /* synthetic */ x53 mo8542c(zzgex zzgexVar) {
        return x53.m9343E(zzgexVar, vd3.m10041a());
    }

    @Override // com.google.android.gms.internal.ads.u13
    /* renamed from: d */
    public final /* bridge */ /* synthetic */ u53 mo8541d(x53 x53Var) {
        x53 x53Var2 = x53Var;
        new a33();
        a63 m8539g = z23.m8539g(x53Var2.m9345C());
        r83 mo8541d = new c53().mo8526h().mo8541d(x53Var2.m9344D());
        t53 m10402G = u53.m10402G();
        m10402G.m10795r(m8539g);
        m10402G.m10794s(mo8541d);
        m10402G.m10796q(0);
        return m10402G.m15512n();
    }

    @Override // com.google.android.gms.internal.ads.u13
    /* renamed from: e */
    public final Map<String, t13<x53>> mo8952e() {
        HashMap hashMap = new HashMap();
        hashMap.put("AES128_CTR_HMAC_SHA256", x23.m9361k(16, 16, 32, 16, 5, 1));
        hashMap.put("AES128_CTR_HMAC_SHA256_RAW", x23.m9361k(16, 16, 32, 16, 5, 3));
        hashMap.put("AES256_CTR_HMAC_SHA256", x23.m9361k(32, 16, 32, 32, 5, 1));
        hashMap.put("AES256_CTR_HMAC_SHA256_RAW", x23.m9361k(32, 16, 32, 32, 5, 3));
        return Collections.unmodifiableMap(hashMap);
    }
}

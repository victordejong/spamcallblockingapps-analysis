package com.google.android.gms.internal.ads;

import java.security.GeneralSecurityException;
import java.util.Collections;
import java.util.HashMap;
import java.util.Map;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/b53.class */
final class b53 extends u13<u83, r83> {

    /* renamed from: b */
    final /* synthetic */ c53 f20276b;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public b53(c53 c53Var, Class cls) {
        super(cls);
        this.f20276b = c53Var;
    }

    @Override // com.google.android.gms.internal.ads.u13
    /* renamed from: b */
    public final /* bridge */ /* synthetic */ void mo8543b(u83 u83Var) {
        u83 u83Var2 = u83Var;
        if (u83Var2.m10391D() >= 16) {
            c53.m16117n(u83Var2.m10392C());
            return;
        }
        throw new GeneralSecurityException("key too short");
    }

    @Override // com.google.android.gms.internal.ads.u13
    /* renamed from: c */
    public final /* bridge */ /* synthetic */ u83 mo8542c(zzgex zzgexVar) {
        return u83.m10390E(zzgexVar, vd3.m10041a());
    }

    @Override // com.google.android.gms.internal.ads.u13
    /* renamed from: d */
    public final /* bridge */ /* synthetic */ r83 mo8541d(u83 u83Var) {
        u83 u83Var2 = u83Var;
        q83 m11663G = r83.m11663G();
        m11663G.m12015q(0);
        m11663G.m12014r(u83Var2.m10392C());
        m11663G.m12013s(zzgex.zzt(ec3.m15524a(u83Var2.m10391D())));
        return m11663G.m15512n();
    }

    @Override // com.google.android.gms.internal.ads.u13
    /* renamed from: e */
    public final Map<String, t13<u83>> mo8952e() {
        HashMap hashMap = new HashMap();
        hashMap.put("HMAC_SHA256_128BITTAG", c53.m16118m(32, 16, 5, 1));
        hashMap.put("HMAC_SHA256_128BITTAG_RAW", c53.m16118m(32, 16, 5, 3));
        hashMap.put("HMAC_SHA256_256BITTAG", c53.m16118m(32, 32, 5, 1));
        hashMap.put("HMAC_SHA256_256BITTAG_RAW", c53.m16118m(32, 32, 5, 3));
        hashMap.put("HMAC_SHA512_128BITTAG", c53.m16118m(64, 16, 6, 1));
        hashMap.put("HMAC_SHA512_128BITTAG_RAW", c53.m16118m(64, 16, 6, 3));
        hashMap.put("HMAC_SHA512_256BITTAG", c53.m16118m(64, 32, 6, 1));
        hashMap.put("HMAC_SHA512_256BITTAG_RAW", c53.m16118m(64, 32, 6, 3));
        hashMap.put("HMAC_SHA512_512BITTAG", c53.m16118m(64, 64, 6, 1));
        hashMap.put("HMAC_SHA512_512BITTAG_RAW", c53.m16118m(64, 64, 6, 3));
        return Collections.unmodifiableMap(hashMap);
    }
}

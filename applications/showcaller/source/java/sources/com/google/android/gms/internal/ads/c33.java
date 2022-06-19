package com.google.android.gms.internal.ads;

import java.security.GeneralSecurityException;
import java.util.Collections;
import java.util.HashMap;
import java.util.Map;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/c33.class */
final class c33 extends u13<m63, j63> {

    /* renamed from: b */
    final /* synthetic */ e33 f21092b;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public c33(e33 e33Var, Class cls) {
        super(cls);
        this.f21092b = e33Var;
    }

    @Override // com.google.android.gms.internal.ads.u13
    /* renamed from: b */
    public final /* bridge */ /* synthetic */ void mo8543b(m63 m63Var) {
        m63 m63Var2 = m63Var;
        gc3.m14964a(m63Var2.m13360D());
        if (m63Var2.m13361C().m12377C() == 12 || m63Var2.m13361C().m12377C() == 16) {
            return;
        }
        throw new GeneralSecurityException("invalid IV size; acceptable values have 12 or 16 bytes");
    }

    @Override // com.google.android.gms.internal.ads.u13
    /* renamed from: c */
    public final /* bridge */ /* synthetic */ m63 mo8542c(zzgex zzgexVar) {
        return m63.m13359E(zzgexVar, vd3.m10041a());
    }

    @Override // com.google.android.gms.internal.ads.u13
    /* renamed from: d */
    public final /* bridge */ /* synthetic */ j63 mo8541d(m63 m63Var) {
        m63 m63Var2 = m63Var;
        i63 m14170G = j63.m14170G();
        m14170G.m14484s(zzgex.zzt(ec3.m15524a(m63Var2.m13360D())));
        m14170G.m14485r(m63Var2.m13361C());
        m14170G.m14486q(0);
        return m14170G.m15512n();
    }

    @Override // com.google.android.gms.internal.ads.u13
    /* renamed from: e */
    public final Map<String, t13<m63>> mo8952e() {
        HashMap hashMap = new HashMap();
        hashMap.put("AES128_EAX", e33.m15591k(16, 16, 1));
        hashMap.put("AES128_EAX_RAW", e33.m15591k(16, 16, 3));
        hashMap.put("AES256_EAX", e33.m15591k(32, 16, 1));
        hashMap.put("AES256_EAX_RAW", e33.m15591k(32, 16, 3));
        return Collections.unmodifiableMap(hashMap);
    }
}

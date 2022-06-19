package com.google.android.gms.internal.ads;

import java.util.Collections;
import java.util.HashMap;
import java.util.Map;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/j33.class */
final class j33 extends u13<b73, y63> {

    /* renamed from: b */
    final /* synthetic */ k33 f24771b;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public j33(k33 k33Var, Class cls) {
        super(cls);
        this.f24771b = k33Var;
    }

    @Override // com.google.android.gms.internal.ads.u13
    /* renamed from: b */
    public final /* bridge */ /* synthetic */ void mo8543b(b73 b73Var) {
        gc3.m14964a(b73Var.m16437C());
    }

    @Override // com.google.android.gms.internal.ads.u13
    /* renamed from: c */
    public final /* bridge */ /* synthetic */ b73 mo8542c(zzgex zzgexVar) {
        return b73.m16436D(zzgexVar, vd3.m10041a());
    }

    @Override // com.google.android.gms.internal.ads.u13
    /* renamed from: d */
    public final /* bridge */ /* synthetic */ y63 mo8541d(b73 b73Var) {
        x63 m8924F = y63.m8924F();
        m8924F.m9336r(zzgex.zzt(ec3.m15524a(b73Var.m16437C())));
        m8924F.m9337q(0);
        return m8924F.m15512n();
    }

    @Override // com.google.android.gms.internal.ads.u13
    /* renamed from: e */
    public final Map<String, t13<b73>> mo8952e() {
        HashMap hashMap = new HashMap();
        hashMap.put("AES128_GCM_SIV", k33.m13983l(16, 1));
        hashMap.put("AES128_GCM_SIV_RAW", k33.m13983l(16, 3));
        hashMap.put("AES256_GCM_SIV", k33.m13983l(32, 1));
        hashMap.put("AES256_GCM_SIV_RAW", k33.m13983l(32, 3));
        return Collections.unmodifiableMap(hashMap);
    }
}

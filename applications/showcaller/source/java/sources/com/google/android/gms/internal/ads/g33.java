package com.google.android.gms.internal.ads;

import java.util.Collections;
import java.util.HashMap;
import java.util.Map;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/g33.class */
final class g33 extends u13<v63, s63> {

    /* renamed from: b */
    final /* synthetic */ h33 f23233b;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public g33(h33 h33Var, Class cls) {
        super(cls);
        this.f23233b = h33Var;
    }

    @Override // com.google.android.gms.internal.ads.u13
    /* renamed from: b */
    public final /* bridge */ /* synthetic */ void mo8543b(v63 v63Var) {
        gc3.m14964a(v63Var.m10084C());
    }

    @Override // com.google.android.gms.internal.ads.u13
    /* renamed from: c */
    public final /* bridge */ /* synthetic */ v63 mo8542c(zzgex zzgexVar) {
        return v63.m10083D(zzgexVar, vd3.m10041a());
    }

    @Override // com.google.android.gms.internal.ads.u13
    /* renamed from: d */
    public final /* bridge */ /* synthetic */ s63 mo8541d(v63 v63Var) {
        r63 m11108F = s63.m11108F();
        m11108F.m11674r(zzgex.zzt(ec3.m15524a(v63Var.m10084C())));
        m11108F.m11675q(0);
        return m11108F.m15512n();
    }

    @Override // com.google.android.gms.internal.ads.u13
    /* renamed from: e */
    public final Map<String, t13<v63>> mo8952e() {
        HashMap hashMap = new HashMap();
        hashMap.put("AES128_GCM", h33.m14749k(16, 1));
        hashMap.put("AES128_GCM_RAW", h33.m14749k(16, 3));
        hashMap.put("AES256_GCM", h33.m14749k(32, 1));
        hashMap.put("AES256_GCM_RAW", h33.m14749k(32, 3));
        return Collections.unmodifiableMap(hashMap);
    }
}

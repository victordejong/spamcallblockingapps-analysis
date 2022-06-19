package com.google.android.gms.internal.ads;

import java.util.Collections;
import java.util.HashMap;
import java.util.Map;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/m33.class */
final class m33 extends u13<o73, l73> {

    /* renamed from: b */
    final /* synthetic */ n33 f26413b;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public m33(n33 n33Var, Class cls) {
        super(cls);
        this.f26413b = n33Var;
    }

    @Override // com.google.android.gms.internal.ads.u13
    /* renamed from: b */
    public final /* bridge */ /* synthetic */ void mo8543b(o73 o73Var) {
    }

    @Override // com.google.android.gms.internal.ads.u13
    /* renamed from: c */
    public final /* bridge */ /* synthetic */ o73 mo8542c(zzgex zzgexVar) {
        return o73.m12713C(zzgexVar, vd3.m10041a());
    }

    @Override // com.google.android.gms.internal.ads.u13
    /* renamed from: d */
    public final /* bridge */ /* synthetic */ l73 mo8541d(o73 o73Var) {
        k73 m13668F = l73.m13668F();
        m13668F.m13976q(0);
        m13668F.m13975r(zzgex.zzt(ec3.m15524a(32)));
        return m13668F.m15512n();
    }

    @Override // com.google.android.gms.internal.ads.u13
    /* renamed from: e */
    public final Map<String, t13<o73>> mo8952e() {
        HashMap hashMap = new HashMap();
        hashMap.put("CHACHA20_POLY1305", new t13(o73.m12712D(), 1));
        hashMap.put("CHACHA20_POLY1305_RAW", new t13(o73.m12712D(), 3));
        return Collections.unmodifiableMap(hashMap);
    }
}

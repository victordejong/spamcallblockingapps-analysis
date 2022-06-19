package com.google.android.gms.internal.ads;

import java.util.Collections;
import java.util.HashMap;
import java.util.Map;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/w33.class */
final class w33 extends u13<pa3, ma3> {

    /* renamed from: b */
    final /* synthetic */ x33 f31449b;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public w33(x33 x33Var, Class cls) {
        super(cls);
        this.f31449b = x33Var;
    }

    @Override // com.google.android.gms.internal.ads.u13
    /* renamed from: b */
    public final /* bridge */ /* synthetic */ void mo8543b(pa3 pa3Var) {
    }

    @Override // com.google.android.gms.internal.ads.u13
    /* renamed from: c */
    public final /* bridge */ /* synthetic */ pa3 mo8542c(zzgex zzgexVar) {
        return pa3.m12326C(zzgexVar, vd3.m10041a());
    }

    @Override // com.google.android.gms.internal.ads.u13
    /* renamed from: d */
    public final /* bridge */ /* synthetic */ ma3 mo8541d(pa3 pa3Var) {
        la3 m13318F = ma3.m13318F();
        m13318F.m13616q(0);
        m13318F.m13615r(zzgex.zzt(ec3.m15524a(32)));
        return m13318F.m15512n();
    }

    @Override // com.google.android.gms.internal.ads.u13
    /* renamed from: e */
    public final Map<String, t13<pa3>> mo8952e() {
        HashMap hashMap = new HashMap();
        hashMap.put("XCHACHA20_POLY1305", new t13(pa3.m12325D(), 1));
        hashMap.put("XCHACHA20_POLY1305_RAW", new t13(pa3.m12325D(), 3));
        return Collections.unmodifiableMap(hashMap);
    }
}

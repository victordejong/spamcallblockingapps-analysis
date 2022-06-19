package com.google.android.gms.ads.internal.util;

import com.google.android.gms.internal.ads.di0;
import com.google.android.gms.internal.ads.dz3;
import com.google.android.gms.internal.ads.jz3;
import com.google.android.gms.internal.ads.vi0;
import com.google.android.gms.internal.ads.xz3;
import com.google.android.gms.internal.ads.zy3;
import java.util.Map;
/* renamed from: com.google.android.gms.ads.internal.util.q0 */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/ads/internal/util/q0.class */
public final class C5727q0 extends dz3<zy3> {

    /* renamed from: p */
    private final vi0<zy3> f18529p;

    /* renamed from: q */
    private final di0 f18530q;

    public C5727q0(String str, Map<String, String> map, vi0<zy3> vi0Var) {
        super(0, str, new C5724p0(vi0Var));
        this.f18529p = vi0Var;
        di0 di0Var = new di0(null);
        this.f18530q = di0Var;
        di0Var.m15812b(str, "GET", null, null);
    }

    @Override // com.google.android.gms.internal.ads.dz3
    /* renamed from: u */
    public final jz3<zy3> mo14999u(zy3 zy3Var) {
        return jz3.m14011a(zy3Var, xz3.m9012a(zy3Var));
    }

    @Override // com.google.android.gms.internal.ads.dz3
    /* renamed from: v */
    public final /* bridge */ /* synthetic */ void mo15624v(zy3 zy3Var) {
        zy3 zy3Var2 = zy3Var;
        this.f18530q.m15810d(zy3Var2.f33457c, zy3Var2.f33455a);
        di0 di0Var = this.f18530q;
        byte[] bArr = zy3Var2.f33456b;
        if (di0.m15804j() && bArr != null) {
            di0Var.m15808f(bArr);
        }
        this.f18529p.m10016c(zy3Var2);
    }
}

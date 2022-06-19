package com.google.android.gms.internal.ads;

import java.util.Map;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/po2.class */
public final class po2 implements jo2 {

    /* renamed from: a */
    private final to2 f28084a;

    /* renamed from: b */
    private final ro2 f28085b;

    /* renamed from: c */
    private final fo2 f28086c;

    public po2(fo2 fo2Var, to2 to2Var, ro2 ro2Var, byte[] bArr) {
        this.f28086c = fo2Var;
        this.f28084a = to2Var;
        this.f28085b = ro2Var;
    }

    @Override // com.google.android.gms.internal.ads.jo2
    /* renamed from: a */
    public final String mo9503a(io2 io2Var) {
        to2 to2Var = this.f28084a;
        Map<String, String> m14329j = io2Var.m14329j();
        this.f28085b.m11339a(m14329j);
        return to2Var.m10593a(m14329j);
    }

    @Override // com.google.android.gms.internal.ads.jo2
    /* renamed from: b */
    public final void mo9502b(io2 io2Var) {
        this.f28086c.m15130a(mo9503a(io2Var));
    }
}

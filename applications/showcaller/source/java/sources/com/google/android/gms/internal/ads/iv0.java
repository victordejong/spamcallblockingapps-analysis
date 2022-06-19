package com.google.android.gms.internal.ads;

import com.google.android.gms.ads.internal.C5667s;
import java.util.UUID;
import org.json.JSONObject;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/iv0.class */
public final class iv0 implements cj3<C6703lj> {

    /* renamed from: a */
    private final pj3<ej2> f24488a;

    /* renamed from: b */
    private final pj3<zzcgz> f24489b;

    /* renamed from: c */
    private final pj3<JSONObject> f24490c;

    /* renamed from: d */
    private final pj3<String> f24491d;

    public iv0(pj3<ej2> pj3Var, pj3<zzcgz> pj3Var2, pj3<JSONObject> pj3Var3, pj3<String> pj3Var4) {
        this.f24488a = pj3Var;
        this.f24489b = pj3Var2;
        this.f24490c = pj3Var3;
        this.f24491d = pj3Var4;
    }

    @Override // com.google.android.gms.internal.ads.pj3
    /* renamed from: b */
    public final /* bridge */ /* synthetic */ Object mo8141b() {
        ((nz0) this.f24488a).m12777a();
        zzcgz m14874a = ((gq0) this.f24489b).m14874a();
        JSONObject mo8141b = this.f24490c.mo8141b();
        String mo8141b2 = this.f24491d.mo8141b();
        boolean equals = "native".equals(mo8141b2);
        C5667s.m18160d();
        return new C6703lj(UUID.randomUUID().toString(), m14874a, mo8141b2, mo8141b, false, equals);
    }
}

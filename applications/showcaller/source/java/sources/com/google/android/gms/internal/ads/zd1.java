package com.google.android.gms.internal.ads;

import com.google.android.gms.ads.internal.C5667s;
import java.util.UUID;
import org.json.JSONObject;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zd1.class */
public final class zd1 implements cj3<C6703lj> {

    /* renamed from: a */
    private final pj3<zzcgz> f32908a;

    /* renamed from: b */
    private final pj3<String> f32909b;

    public zd1(pj3<zzcgz> pj3Var, pj3<String> pj3Var2) {
        this.f32908a = pj3Var;
        this.f32909b = pj3Var2;
    }

    @Override // com.google.android.gms.internal.ads.pj3
    /* renamed from: b */
    public final /* bridge */ /* synthetic */ Object mo8141b() {
        zzcgz m14874a = ((gq0) this.f32908a).m14874a();
        C5667s.m18160d();
        return new C6703lj(UUID.randomUUID().toString(), m14874a, "native", new JSONObject(), false, true);
    }
}

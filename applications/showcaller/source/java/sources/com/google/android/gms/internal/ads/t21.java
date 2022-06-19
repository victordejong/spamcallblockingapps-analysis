package com.google.android.gms.internal.ads;

import android.content.Context;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/t21.class */
public final class t21 implements cj3<hf0> {

    /* renamed from: a */
    private final s21 f29791a;

    /* renamed from: b */
    private final pj3<Context> f29792b;

    /* renamed from: c */
    private final pj3<zzcgz> f29793c;

    /* renamed from: d */
    private final pj3<ej2> f29794d;

    /* renamed from: e */
    private final pj3<ef0> f29795e;

    public t21(s21 s21Var, pj3<Context> pj3Var, pj3<zzcgz> pj3Var2, pj3<ej2> pj3Var3, pj3<ef0> pj3Var4) {
        this.f29791a = s21Var;
        this.f29792b = pj3Var;
        this.f29793c = pj3Var2;
        this.f29794d = pj3Var3;
        this.f29795e = pj3Var4;
    }

    @Override // com.google.android.gms.internal.ads.pj3
    /* renamed from: b */
    public final /* bridge */ /* synthetic */ Object mo8141b() {
        Context mo8141b = this.f29792b.mo8141b();
        zzcgz m14874a = ((gq0) this.f29793c).m14874a();
        ej2 m12777a = ((nz0) this.f29794d).m12777a();
        ef0 ef0Var = new ef0();
        zzcdv zzcdvVar = m12777a.f22193A;
        if (zzcdvVar != null) {
            return new cf0(mo8141b, m14874a, zzcdvVar, m12777a.f22247s.f25234b, ef0Var, null);
        }
        return null;
    }
}

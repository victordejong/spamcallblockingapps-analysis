package com.google.android.gms.internal.ads;

import android.content.Context;
import java.util.HashSet;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/yd1.class */
public final class yd1 implements cj3<la1> {

    /* renamed from: a */
    private final pj3<Context> f32477a;

    /* renamed from: b */
    private final pj3<ej2> f32478b;

    public yd1(pj3<Context> pj3Var, pj3<ej2> pj3Var2) {
        this.f32477a = pj3Var;
        this.f32478b = pj3Var2;
    }

    @Override // com.google.android.gms.internal.ads.pj3
    /* renamed from: b */
    public final /* bridge */ /* synthetic */ Object mo8141b() {
        return new la1(this.f32477a.mo8141b(), new HashSet(), ((nz0) this.f32478b).m12777a());
    }
}

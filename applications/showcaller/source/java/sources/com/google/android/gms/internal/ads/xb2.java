package com.google.android.gms.internal.ads;

import android.content.Context;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/xb2.class */
public final class xb2 implements cj3<vb2> {

    /* renamed from: a */
    private final pj3<zc0> f31961a;

    /* renamed from: b */
    private final pj3<Context> f31962b;

    /* renamed from: c */
    private final pj3<String> f31963c;

    /* renamed from: d */
    private final pj3<s03> f31964d;

    public xb2(pj3<zc0> pj3Var, pj3<Context> pj3Var2, pj3<String> pj3Var3, pj3<s03> pj3Var4) {
        this.f31961a = pj3Var;
        this.f31962b = pj3Var2;
        this.f31963c = pj3Var3;
        this.f31964d = pj3Var4;
    }

    @Override // com.google.android.gms.internal.ads.pj3
    /* renamed from: b */
    public final /* bridge */ /* synthetic */ Object mo8141b() {
        Context m9095a = ((xp0) this.f31962b).m9095a();
        String m8860a = ((yc2) this.f31963c).m8860a();
        s03 s03Var = qi0.f28495a;
        kj3.m13879b(s03Var);
        return new vb2(null, m9095a, m8860a, s03Var);
    }
}

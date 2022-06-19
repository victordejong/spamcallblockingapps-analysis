package com.google.android.gms.internal.ads;

import android.content.Context;
import java.util.concurrent.Executor;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zy1.class */
public final class zy1 implements cj3<yy1> {

    /* renamed from: a */
    private final pj3<Context> f33449a;

    /* renamed from: b */
    private final pj3<zzcgz> f33450b;

    /* renamed from: c */
    private final pj3<jc1> f33451c;

    /* renamed from: d */
    private final pj3<Executor> f33452d;

    public zy1(pj3<Context> pj3Var, pj3<zzcgz> pj3Var2, pj3<jc1> pj3Var3, pj3<Executor> pj3Var4) {
        this.f33449a = pj3Var;
        this.f33450b = pj3Var2;
        this.f33451c = pj3Var3;
        this.f33452d = pj3Var4;
    }

    @Override // com.google.android.gms.internal.ads.pj3
    /* renamed from: b */
    public final /* bridge */ /* synthetic */ Object mo8141b() {
        Context mo8141b = this.f33449a.mo8141b();
        zzcgz m14874a = ((gq0) this.f33450b).m14874a();
        jc1 mo8141b2 = this.f33451c.mo8141b();
        s03 s03Var = qi0.f28495a;
        kj3.m13879b(s03Var);
        return new yy1(mo8141b, m14874a, mo8141b2, s03Var);
    }
}

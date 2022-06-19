package com.google.android.gms.internal.ads;

import android.content.Context;
import java.util.ArrayDeque;
import java.util.concurrent.Executor;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/cu1.class */
public final class cu1 implements cj3<bu1> {

    /* renamed from: a */
    private final pj3<Context> f21374a;

    /* renamed from: b */
    private final pj3<Executor> f21375b;

    /* renamed from: c */
    private final pj3<jd0> f21376c;

    /* renamed from: d */
    private final pj3<lt0> f21377d;

    /* renamed from: e */
    private final pj3<id0> f21378e;

    /* renamed from: f */
    private final pj3<ArrayDeque<yt1>> f21379f;

    /* renamed from: g */
    private final pj3<gu1> f21380g;

    public cu1(pj3<Context> pj3Var, pj3<Executor> pj3Var2, pj3<jd0> pj3Var3, pj3<lt0> pj3Var4, pj3<id0> pj3Var5, pj3<ArrayDeque<yt1>> pj3Var6, pj3<gu1> pj3Var7) {
        this.f21374a = pj3Var;
        this.f21375b = pj3Var2;
        this.f21376c = pj3Var3;
        this.f21377d = pj3Var4;
        this.f21378e = pj3Var5;
        this.f21379f = pj3Var6;
        this.f21380g = pj3Var7;
    }

    @Override // com.google.android.gms.internal.ads.pj3
    /* renamed from: b */
    public final /* bridge */ /* synthetic */ Object mo8141b() {
        return new bu1(((xp0) this.f21374a).m9095a(), this.f21375b.mo8141b(), new jd0(), ((dq0) this.f21377d).mo8141b(), ((pq0) this.f21378e).mo8141b(), this.f21379f.mo8141b(), new gu1(), null);
    }
}

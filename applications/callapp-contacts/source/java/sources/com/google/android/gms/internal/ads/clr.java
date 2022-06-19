package com.google.android.gms.internal.ads;

import java.util.concurrent.Executor;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/clr.class */
final class clr<R> implements crx {

    /* renamed from: a */
    public final cmj<R> f46045a;

    /* renamed from: b */
    public final cmm f46046b;

    /* renamed from: c */
    public final zzvq f46047c;

    /* renamed from: d */
    public final String f46048d;

    /* renamed from: e */
    public final Executor f46049e;

    /* renamed from: f */
    public final zzwc f46050f;

    /* renamed from: g */
    private final cri f46051g;

    public clr(cmj<R> cmjVar, cmm cmmVar, zzvq zzvqVar, String str, Executor executor, zzwc zzwcVar, cri criVar) {
        this.f46045a = cmjVar;
        this.f46046b = cmmVar;
        this.f46047c = zzvqVar;
        this.f46048d = str;
        this.f46049e = executor;
        this.f46050f = zzwcVar;
        this.f46051g = criVar;
    }

    @Override // com.google.android.gms.internal.ads.crx
    /* renamed from: a */
    public final Executor mo17284a() {
        return this.f46049e;
    }

    @Override // com.google.android.gms.internal.ads.crx
    /* renamed from: b */
    public final cri mo17283b() {
        return this.f46051g;
    }

    @Override // com.google.android.gms.internal.ads.crx
    /* renamed from: c */
    public final crx mo17282c() {
        return new clr(this.f46045a, this.f46046b, this.f46047c, this.f46048d, this.f46049e, this.f46050f, this.f46051g);
    }
}

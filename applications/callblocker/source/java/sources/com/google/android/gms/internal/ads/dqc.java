package com.google.android.gms.internal.ads;

import android.net.Uri;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/dqc.class */
public final class dqc implements dqf, dqg {

    /* renamed from: a */
    private final Uri f15358a;

    /* renamed from: b */
    private final dro f15359b;

    /* renamed from: c */
    private final dni f15360c;

    /* renamed from: d */
    private final int f15361d;

    /* renamed from: e */
    private final cnz f15362e;

    /* renamed from: f */
    private final dqb f15363f;

    /* renamed from: i */
    private final int f15366i;

    /* renamed from: j */
    private dqf f15367j;

    /* renamed from: k */
    private dln f15368k;

    /* renamed from: l */
    private boolean f15369l;

    /* renamed from: h */
    private final String f15365h = null;

    /* renamed from: g */
    private final dlp f15364g = new dlp();

    public dqc(Uri uri, dro droVar, dni dniVar, int i, cnz cnzVar, dqb dqbVar, String str, int i2) {
        this.f15358a = uri;
        this.f15359b = droVar;
        this.f15360c = dniVar;
        this.f15361d = i;
        this.f15362e = cnzVar;
        this.f15363f = dqbVar;
        this.f15366i = i2;
    }

    @Override // com.google.android.gms.internal.ads.dqg
    /* renamed from: a */
    public final dqe mo8898a(int i, drn drnVar) {
        drz.m8772a(i == 0);
        return new dpt(this.f15358a, this.f15359b.mo8814a(), this.f15360c.mo8974a(), this.f15361d, this.f15362e, this.f15363f, this, drnVar, null, this.f15366i);
    }

    @Override // com.google.android.gms.internal.ads.dqg
    /* renamed from: a */
    public final void mo8900a() {
    }

    @Override // com.google.android.gms.internal.ads.dqg
    /* renamed from: a */
    public final void mo8897a(dkt dktVar, boolean z, dqf dqfVar) {
        this.f15367j = dqfVar;
        this.f15368k = new dqt(-9223372036854775807L, false);
        dqfVar.mo8884a(this.f15368k, null);
    }

    @Override // com.google.android.gms.internal.ads.dqf
    /* renamed from: a */
    public final void mo8884a(dln dlnVar, Object obj) {
        boolean z = false;
        if (dlnVar.mo8838a(0, this.f15364g, false).f14679c != -9223372036854775807L) {
            z = true;
        }
        if (!this.f15369l || z) {
            this.f15368k = dlnVar;
            this.f15369l = z;
            this.f15367j.mo8884a(this.f15368k, null);
        }
    }

    @Override // com.google.android.gms.internal.ads.dqg
    /* renamed from: a */
    public final void mo8896a(dqe dqeVar) {
        ((dpt) dqeVar).m8923b();
    }

    @Override // com.google.android.gms.internal.ads.dqg
    /* renamed from: b */
    public final void mo8894b() {
        this.f15367j = null;
    }
}

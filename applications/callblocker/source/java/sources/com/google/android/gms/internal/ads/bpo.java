package com.google.android.gms.internal.ads;

import android.os.Bundle;
import com.google.android.gms.internal.ads.apb;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/bpo.class */
public final class bpo extends bpq<amn> {

    /* renamed from: a */
    private final afh f11751a;

    /* renamed from: b */
    private final axk f11752b;

    /* renamed from: c */
    private final apb.C2790a f11753c;

    /* renamed from: d */
    private final atf f11754d;

    public bpo(afh afhVar, axk axkVar, apb.C2790a c2790a, atf atfVar) {
        this.f11751a = afhVar;
        this.f11752b = axkVar;
        this.f11753c = c2790a;
        this.f11754d = atfVar;
    }

    @Override // com.google.android.gms.internal.ads.bpq
    /* renamed from: a */
    protected final crt<amn> mo11728a(chh chhVar, Bundle bundle) {
        return this.f11751a.mo13351l().mo12351a(this.f11753c.m12836a(chhVar).m12839a(bundle).m12841a()).mo12350a(this.f11754d).mo12349a(this.f11752b).mo12352a().mo12348a().m12891b();
    }
}

package com.google.android.gms.internal.ads;

import android.os.Bundle;
import com.google.android.gms.internal.ads.apb;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/bpr.class */
public final class bpr extends bpq<avq> {

    /* renamed from: a */
    private final afh f11762a;

    /* renamed from: b */
    private final apb.C2790a f11763b;

    /* renamed from: c */
    private final bsa f11764c;

    /* renamed from: d */
    private final atf f11765d;

    public bpr(afh afhVar, apb.C2790a c2790a, bsa bsaVar, atf atfVar) {
        this.f11762a = afhVar;
        this.f11763b = c2790a;
        this.f11764c = bsaVar;
        this.f11765d = atfVar;
    }

    @Override // com.google.android.gms.internal.ads.bpq
    /* renamed from: a */
    protected final crt<avq> mo11728a(chh chhVar, Bundle bundle) {
        return this.f11762a.mo13353k().mo12376a(this.f11763b.m12836a(chhVar).m12839a(bundle).m12841a()).mo12375a(this.f11765d).mo12374a(this.f11764c).mo12377a().mo12371b().m12891b();
    }
}

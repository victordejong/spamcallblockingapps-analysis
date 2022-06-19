package com.google.android.gms.internal.ads;

import android.os.Bundle;
import com.google.android.gms.internal.ads.apb;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/bpt.class */
public final class bpt extends bpq<bdr> {

    /* renamed from: a */
    private final afh f11773a;

    /* renamed from: b */
    private final apb.C2790a f11774b;

    /* renamed from: c */
    private final atf f11775c;

    public bpt(afh afhVar, apb.C2790a c2790a, atf atfVar) {
        this.f11773a = afhVar;
        this.f11774b = c2790a;
        this.f11775c = atfVar;
    }

    @Override // com.google.android.gms.internal.ads.bpq
    /* renamed from: a */
    protected final crt<bdr> mo11728a(chh chhVar, Bundle bundle) {
        return this.f11773a.mo13349m().mo12048a(this.f11774b.m12836a(chhVar).m12839a(bundle).m12841a()).mo12047a(this.f11775c).mo12049a().mo12051c().m12891b();
    }
}

package com.google.android.gms.internal.ads;

import android.os.Bundle;
import android.view.ViewGroup;
import com.google.android.gms.internal.ads.apb;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/bpp.class */
public final class bpp extends bpq<akk> {

    /* renamed from: a */
    private final afh f11755a;

    /* renamed from: b */
    private final apb.C2790a f11756b;

    /* renamed from: c */
    private final bsa f11757c;

    /* renamed from: d */
    private final atf f11758d;

    /* renamed from: e */
    private final axk f11759e;

    /* renamed from: f */
    private final arz f11760f;

    /* renamed from: g */
    private final ViewGroup f11761g;

    public bpp(afh afhVar, apb.C2790a c2790a, bsa bsaVar, atf atfVar, axk axkVar, arz arzVar, ViewGroup viewGroup) {
        this.f11755a = afhVar;
        this.f11756b = c2790a;
        this.f11757c = bsaVar;
        this.f11758d = atfVar;
        this.f11759e = axkVar;
        this.f11760f = arzVar;
        this.f11761g = viewGroup;
    }

    @Override // com.google.android.gms.internal.ads.bpq
    /* renamed from: a */
    protected final crt<akk> mo11728a(chh chhVar, Bundle bundle) {
        return this.f11755a.mo13359h().mo12976a(this.f11756b.m12836a(chhVar).m12839a(bundle).m12841a()).mo12975a(this.f11758d).mo12973a(this.f11757c).mo12974a(this.f11759e).mo12977a(new ame(this.f11760f)).mo12978a(new akf(this.f11761g)).mo12979a().mo12969b().m12891b();
    }
}

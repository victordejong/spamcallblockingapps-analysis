package com.google.android.gms.internal.ads;

import android.content.Context;
import android.view.View;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/ait.class */
public final class ait implements dht<aiq> {

    /* renamed from: a */
    private final dig<Context> f9764a;

    /* renamed from: b */
    private final dig<chd> f9765b;

    /* renamed from: c */
    private final dig<cgr> f9766c;

    /* renamed from: d */
    private final dig<clj> f9767d;

    /* renamed from: e */
    private final dig<View> f9768e;

    /* renamed from: f */
    private final dig<ctl> f9769f;

    private ait(dig<Context> digVar, dig<chd> digVar2, dig<cgr> digVar3, dig<clj> digVar4, dig<View> digVar5, dig<ctl> digVar6) {
        this.f9764a = digVar;
        this.f9765b = digVar2;
        this.f9766c = digVar3;
        this.f9767d = digVar4;
        this.f9768e = digVar5;
        this.f9769f = digVar6;
    }

    /* renamed from: a */
    public static ait m13085a(dig<Context> digVar, dig<chd> digVar2, dig<cgr> digVar3, dig<clj> digVar4, dig<View> digVar5, dig<ctl> digVar6) {
        return new ait(digVar, digVar2, digVar3, digVar4, digVar5, digVar6);
    }

    @Override // com.google.android.gms.internal.ads.dig
    /* renamed from: a */
    public final /* synthetic */ Object mo9430a() {
        return new aiq(this.f9764a.mo9430a(), this.f9765b.mo9430a(), this.f9766c.mo9430a(), this.f9767d.mo9430a(), this.f9768e.mo9430a(), this.f9769f.mo9430a());
    }
}

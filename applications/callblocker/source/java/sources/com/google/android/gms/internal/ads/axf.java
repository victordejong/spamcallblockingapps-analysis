package com.google.android.gms.internal.ads;

import android.content.Context;
import android.view.View;
import com.google.android.gms.internal.ads.dwv;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/axf.class */
public final class axf implements dht<axg> {

    /* renamed from: a */
    private final dig<C3505sx> f10502a;

    /* renamed from: b */
    private final dig<Context> f10503b;

    /* renamed from: c */
    private final dig<C3509ta> f10504c;

    /* renamed from: d */
    private final dig<View> f10505d;

    /* renamed from: e */
    private final dig<dwv.C3021a.EnumC3022a> f10506e;

    private axf(dig<C3505sx> digVar, dig<Context> digVar2, dig<C3509ta> digVar3, dig<View> digVar4, dig<dwv.C3021a.EnumC3022a> digVar5) {
        this.f10502a = digVar;
        this.f10503b = digVar2;
        this.f10504c = digVar3;
        this.f10505d = digVar4;
        this.f10506e = digVar5;
    }

    /* renamed from: a */
    public static axf m12360a(dig<C3505sx> digVar, dig<Context> digVar2, dig<C3509ta> digVar3, dig<View> digVar4, dig<dwv.C3021a.EnumC3022a> digVar5) {
        return new axf(digVar, digVar2, digVar3, digVar4, digVar5);
    }

    @Override // com.google.android.gms.internal.ads.dig
    /* renamed from: a */
    public final /* synthetic */ Object mo9430a() {
        return new axg(this.f10502a.mo9430a(), this.f10503b.mo9430a(), this.f10504c.mo9430a(), this.f10505d.mo9430a(), this.f10506e.mo9430a());
    }
}

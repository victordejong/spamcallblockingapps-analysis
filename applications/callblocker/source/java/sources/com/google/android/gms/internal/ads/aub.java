package com.google.android.gms.internal.ads;

import com.google.android.gms.common.util.AbstractC2708e;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/aub.class */
public final class aub implements dht<bpv> {

    /* renamed from: a */
    private final atf f10380a;

    /* renamed from: b */
    private final dig<AbstractC2708e> f10381b;

    /* renamed from: c */
    private final dig<bpx> f10382c;

    private aub(atf atfVar, dig<AbstractC2708e> digVar, dig<bpx> digVar2) {
        this.f10380a = atfVar;
        this.f10381b = digVar;
        this.f10382c = digVar2;
    }

    /* renamed from: a */
    public static aub m12428a(atf atfVar, dig<AbstractC2708e> digVar, dig<bpx> digVar2) {
        return new aub(atfVar, digVar, digVar2);
    }

    @Override // com.google.android.gms.internal.ads.dig
    /* renamed from: a */
    public final /* synthetic */ Object mo9430a() {
        return (bpv) dhz.m9438a(this.f10380a.m12770a(this.f10381b.mo9430a(), this.f10382c.mo9430a()), "Cannot return null from a non-@Nullable @Provides method");
    }
}

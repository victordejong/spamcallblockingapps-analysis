package com.google.android.gms.internal.ads;

import android.content.Context;
import com.google.android.gms.ads.internal.C2301c;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/aoe.class */
public final class aoe implements dht<C2301c> {

    /* renamed from: a */
    private final aob f10101a;

    /* renamed from: b */
    private final dig<Context> f10102b;

    /* renamed from: c */
    private final dig<AbstractC3501st> f10103c;

    private aoe(aob aobVar, dig<Context> digVar, dig<AbstractC3501st> digVar2) {
        this.f10101a = aobVar;
        this.f10102b = digVar;
        this.f10103c = digVar2;
    }

    /* renamed from: a */
    public static aoe m12868a(aob aobVar, dig<Context> digVar, dig<AbstractC3501st> digVar2) {
        return new aoe(aobVar, digVar, digVar2);
    }

    @Override // com.google.android.gms.internal.ads.dig
    /* renamed from: a */
    public final /* synthetic */ Object mo9430a() {
        return (C2301c) dhz.m9438a(new C2301c(this.f10102b.mo9430a(), this.f10103c.mo9430a(), null), "Cannot return null from a non-@Nullable @Provides method");
    }
}

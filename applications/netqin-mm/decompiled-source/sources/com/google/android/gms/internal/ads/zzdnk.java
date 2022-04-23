package com.google.android.gms.internal.ads;

import android.content.Context;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzdnk.class */
public final class zzdnk implements zzeoy<zzdnj> {

    /* renamed from: a */
    public final zzeph<String> f27534a;

    /* renamed from: b */
    public final zzeph<zzdnb> f27535b;

    /* renamed from: c */
    public final zzeph<Context> f27536c;

    /* renamed from: d */
    public final zzeph<zzdmc> f27537d;

    /* renamed from: e */
    public final zzeph<zzdoj> f27538e;

    public zzdnk(zzeph<String> zzephVar, zzeph<zzdnb> zzephVar2, zzeph<Context> zzephVar3, zzeph<zzdmc> zzephVar4, zzeph<zzdoj> zzephVar5) {
        this.f27534a = zzephVar;
        this.f27535b = zzephVar2;
        this.f27536c = zzephVar3;
        this.f27537d = zzephVar4;
        this.f27538e = zzephVar5;
    }

    @Override // com.google.android.gms.internal.ads.zzeph
    public final /* synthetic */ Object get() {
        return new zzdnj(this.f27534a.get(), this.f27535b.get(), this.f27536c.get(), this.f27537d.get(), this.f27538e.get());
    }
}

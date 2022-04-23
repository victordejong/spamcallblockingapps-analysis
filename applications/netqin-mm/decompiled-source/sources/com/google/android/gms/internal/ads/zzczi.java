package com.google.android.gms.internal.ads;

import android.content.Context;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzczi.class */
public final class zzczi implements zzeoy<zzczf> {

    /* renamed from: a */
    public final zzeph<Context> f26800a;

    /* renamed from: b */
    public final zzeph<zzwt> f26801b;

    /* renamed from: c */
    public final zzeph<zzdok> f26802c;

    /* renamed from: d */
    public final zzeph<zzboq> f26803d;

    public zzczi(zzeph<Context> zzephVar, zzeph<zzwt> zzephVar2, zzeph<zzdok> zzephVar3, zzeph<zzboq> zzephVar4) {
        this.f26800a = zzephVar;
        this.f26801b = zzephVar2;
        this.f26802c = zzephVar3;
        this.f26803d = zzephVar4;
    }

    @Override // com.google.android.gms.internal.ads.zzeph
    public final /* synthetic */ Object get() {
        return new zzczf(this.f26800a.get(), this.f26801b.get(), this.f26802c.get(), this.f26803d.get());
    }
}

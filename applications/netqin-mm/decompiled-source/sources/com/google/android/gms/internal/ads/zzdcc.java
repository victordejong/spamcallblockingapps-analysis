package com.google.android.gms.internal.ads;

import android.content.Context;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzdcc.class */
public final class zzdcc implements zzeoy<zzdca> {

    /* renamed from: a */
    public final zzeph<zzddp<zzdha>> f27110a;

    /* renamed from: b */
    public final zzeph<zzdok> f27111b;

    /* renamed from: c */
    public final zzeph<Context> f27112c;

    /* renamed from: d */
    public final zzeph<zzayb> f27113d;

    public zzdcc(zzeph<zzddp<zzdha>> zzephVar, zzeph<zzdok> zzephVar2, zzeph<Context> zzephVar3, zzeph<zzayb> zzephVar4) {
        this.f27110a = zzephVar;
        this.f27111b = zzephVar2;
        this.f27112c = zzephVar3;
        this.f27113d = zzephVar4;
    }

    /* renamed from: a */
    public static zzdcc m13659a(zzeph<zzddp<zzdha>> zzephVar, zzeph<zzdok> zzephVar2, zzeph<Context> zzephVar3, zzeph<zzayb> zzephVar4) {
        return new zzdcc(zzephVar, zzephVar2, zzephVar3, zzephVar4);
    }

    @Override // com.google.android.gms.internal.ads.zzeph
    public final /* synthetic */ Object get() {
        return new zzdca(this.f27110a.get(), this.f27111b.get(), this.f27112c.get(), this.f27113d.get());
    }
}

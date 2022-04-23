package com.google.android.gms.internal.ads;

import com.google.android.gms.internal.ads.zzbvp;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzcxz.class */
public final class zzcxz<AdT, AdapterT, ListenerT extends zzbvp> implements zzeoy<zzcxv<AdT, AdapterT, ListenerT>> {

    /* renamed from: a */
    public final zzeph<zzdsi> f26726a;

    /* renamed from: b */
    public final zzeph<zzdzb> f26727b;

    /* renamed from: c */
    public final zzeph<zzctb<AdapterT, ListenerT>> f26728c;

    /* renamed from: d */
    public final zzeph<zzcti<AdT, AdapterT, ListenerT>> f26729d;

    public zzcxz(zzeph<zzdsi> zzephVar, zzeph<zzdzb> zzephVar2, zzeph<zzctb<AdapterT, ListenerT>> zzephVar3, zzeph<zzcti<AdT, AdapterT, ListenerT>> zzephVar4) {
        this.f26726a = zzephVar;
        this.f26727b = zzephVar2;
        this.f26728c = zzephVar3;
        this.f26729d = zzephVar4;
    }

    /* renamed from: a */
    public static <AdT, AdapterT, ListenerT extends zzbvp> zzcxz<AdT, AdapterT, ListenerT> m13799a(zzeph<zzdsi> zzephVar, zzeph<zzdzb> zzephVar2, zzeph<zzctb<AdapterT, ListenerT>> zzephVar3, zzeph<zzcti<AdT, AdapterT, ListenerT>> zzephVar4) {
        return new zzcxz<>(zzephVar, zzephVar2, zzephVar3, zzephVar4);
    }

    @Override // com.google.android.gms.internal.ads.zzeph
    public final /* synthetic */ Object get() {
        return new zzcxv(this.f26726a.get(), this.f26727b.get(), this.f26728c.get(), this.f26729d.get());
    }
}

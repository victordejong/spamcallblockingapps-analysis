package com.google.android.gms.internal.ads;

import java.util.Set;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzbwi.class */
public final class zzbwi implements zzeoy<zzbwg> {

    /* renamed from: a */
    public final zzeph<Set<zzcab<zzbwl>>> f25577a;

    /* renamed from: b */
    public final zzeph<zzdnv> f25578b;

    public zzbwi(zzeph<Set<zzcab<zzbwl>>> zzephVar, zzeph<zzdnv> zzephVar2) {
        this.f25577a = zzephVar;
        this.f25578b = zzephVar2;
    }

    /* renamed from: a */
    public static zzbwi m14981a(zzeph<Set<zzcab<zzbwl>>> zzephVar, zzeph<zzdnv> zzephVar2) {
        return new zzbwi(zzephVar, zzephVar2);
    }

    @Override // com.google.android.gms.internal.ads.zzeph
    public final /* synthetic */ Object get() {
        return new zzbwg(this.f25577a.get(), this.f25578b.get());
    }
}

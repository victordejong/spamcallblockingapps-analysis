package com.google.android.gms.internal.ads;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzbqi.class */
public final class zzbqi implements zzeoy<zzbqf> {

    /* renamed from: a */
    public final zzeph<zzdnv> f25367a;

    /* renamed from: b */
    public final zzeph<zzbuu> f25368b;

    /* renamed from: c */
    public final zzeph<zzbvw> f25369c;

    public zzbqi(zzeph<zzdnv> zzephVar, zzeph<zzbuu> zzephVar2, zzeph<zzbvw> zzephVar3) {
        this.f25367a = zzephVar;
        this.f25368b = zzephVar2;
        this.f25369c = zzephVar3;
    }

    /* renamed from: a */
    public static zzbqi m15175a(zzeph<zzdnv> zzephVar, zzeph<zzbuu> zzephVar2, zzeph<zzbvw> zzephVar3) {
        return new zzbqi(zzephVar, zzephVar2, zzephVar3);
    }

    @Override // com.google.android.gms.internal.ads.zzeph
    public final /* synthetic */ Object get() {
        return new zzbqf(this.f25367a.get(), this.f25368b.get(), this.f25369c.get());
    }
}

package com.google.android.gms.internal.ads;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzcju.class */
public final class zzcju implements zzeoy<zzcta<zzcjg>> {

    /* renamed from: a */
    public final zzeph<zzdsi> f26142a;

    /* renamed from: b */
    public final zzeph<zzdzb> f26143b;

    /* renamed from: c */
    public final zzeph<zzcww> f26144c;

    /* renamed from: d */
    public final zzeph<zzcxr> f26145d;

    public zzcju(zzeph<zzdsi> zzephVar, zzeph<zzdzb> zzephVar2, zzeph<zzcww> zzephVar3, zzeph<zzcxr> zzephVar4) {
        this.f26142a = zzephVar;
        this.f26143b = zzephVar2;
        this.f26144c = zzephVar3;
        this.f26145d = zzephVar4;
    }

    @Override // com.google.android.gms.internal.ads.zzeph
    public final /* synthetic */ Object get() {
        zzcxv zzcxvVar = new zzcxv(this.f26142a.get(), this.f26143b.get(), this.f26145d.get(), this.f26144c.get());
        zzepe.m12187a(zzcxvVar, "Cannot return null from a non-@Nullable @Provides method");
        return zzcxvVar;
    }
}

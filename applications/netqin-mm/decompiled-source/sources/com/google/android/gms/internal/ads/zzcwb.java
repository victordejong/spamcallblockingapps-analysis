package com.google.android.gms.internal.ads;

import com.google.android.gms.internal.ads.zzbtp;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzcwb.class */
public final class zzcwb implements zzeoy<zzcwc> {

    /* renamed from: a */
    public final zzeph<zzbix> f26621a;

    /* renamed from: b */
    public final zzeph<zzccw> f26622b;

    /* renamed from: c */
    public final zzeph<zzbtp.zza> f26623c;

    /* renamed from: d */
    public final zzeph<zzbys> f26624d;

    public zzcwb(zzeph<zzbix> zzephVar, zzeph<zzccw> zzephVar2, zzeph<zzbtp.zza> zzephVar3, zzeph<zzbys> zzephVar4) {
        this.f26621a = zzephVar;
        this.f26622b = zzephVar2;
        this.f26623c = zzephVar3;
        this.f26624d = zzephVar4;
    }

    @Override // com.google.android.gms.internal.ads.zzeph
    public final /* synthetic */ Object get() {
        return new zzcwc(this.f26621a.get(), this.f26622b.get(), this.f26623c.get(), this.f26624d.get());
    }
}

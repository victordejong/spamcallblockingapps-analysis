package com.google.android.gms.internal.ads;

import android.content.Context;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzdkv.class */
public final class zzdkv implements zzeoy<zzdko> {

    /* renamed from: a */
    public final zzeph<zzbix> f27469a;

    /* renamed from: b */
    public final zzeph<Context> f27470b;

    /* renamed from: c */
    public final zzeph<String> f27471c;

    /* renamed from: d */
    public final zzeph<zzdkm> f27472d;

    /* renamed from: e */
    public final zzeph<zzdkc> f27473e;

    public zzdkv(zzeph<zzbix> zzephVar, zzeph<Context> zzephVar2, zzeph<String> zzephVar3, zzeph<zzdkm> zzephVar4, zzeph<zzdkc> zzephVar5) {
        this.f27469a = zzephVar;
        this.f27470b = zzephVar2;
        this.f27471c = zzephVar3;
        this.f27472d = zzephVar4;
        this.f27473e = zzephVar5;
    }

    @Override // com.google.android.gms.internal.ads.zzeph
    public final /* synthetic */ Object get() {
        return new zzdko(this.f27469a.get(), this.f27470b.get(), this.f27471c.get(), this.f27472d.get(), this.f27473e.get());
    }
}

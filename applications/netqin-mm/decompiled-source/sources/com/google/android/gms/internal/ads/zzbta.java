package com.google.android.gms.internal.ads;

import android.content.Context;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzbta.class */
public final class zzbta implements zzeoy<zzbsx> {

    /* renamed from: a */
    public final zzeph<Context> f25481a;

    /* renamed from: b */
    public final zzeph<zzdok> f25482b;

    /* renamed from: c */
    public final zzeph<zzbbx> f25483c;

    /* renamed from: d */
    public final zzeph<zzayr> f25484d;

    /* renamed from: e */
    public final zzeph<zzcnu> f25485e;

    public zzbta(zzeph<Context> zzephVar, zzeph<zzdok> zzephVar2, zzeph<zzbbx> zzephVar3, zzeph<zzayr> zzephVar4, zzeph<zzcnu> zzephVar5) {
        this.f25481a = zzephVar;
        this.f25482b = zzephVar2;
        this.f25483c = zzephVar3;
        this.f25484d = zzephVar4;
        this.f25485e = zzephVar5;
    }

    /* renamed from: a */
    public static zzbta m15085a(zzeph<Context> zzephVar, zzeph<zzdok> zzephVar2, zzeph<zzbbx> zzephVar3, zzeph<zzayr> zzephVar4, zzeph<zzcnu> zzephVar5) {
        return new zzbta(zzephVar, zzephVar2, zzephVar3, zzephVar4, zzephVar5);
    }

    @Override // com.google.android.gms.internal.ads.zzeph
    public final /* synthetic */ Object get() {
        return new zzbsx(this.f25481a.get(), this.f25482b.get(), this.f25483c.get(), this.f25484d.get(), this.f25485e.get());
    }
}

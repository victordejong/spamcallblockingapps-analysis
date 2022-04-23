package com.google.android.gms.internal.ads;

import android.content.Context;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzdgv.class */
public final class zzdgv implements zzeoy<zzdgo> {

    /* renamed from: a */
    public final zzeph<zzdzb> f27299a;

    /* renamed from: b */
    public final zzeph<Context> f27300b;

    public zzdgv(zzeph<zzdzb> zzephVar, zzeph<Context> zzephVar2) {
        this.f27299a = zzephVar;
        this.f27300b = zzephVar2;
    }

    /* renamed from: a */
    public static zzdgo m13604a(zzdzb zzdzbVar, Context context) {
        return new zzdgo(zzdzbVar, context);
    }

    /* renamed from: a */
    public static zzdgv m13603a(zzeph<zzdzb> zzephVar, zzeph<Context> zzephVar2) {
        return new zzdgv(zzephVar, zzephVar2);
    }

    @Override // com.google.android.gms.internal.ads.zzeph
    public final /* synthetic */ Object get() {
        return m13604a(this.f27299a.get(), this.f27300b.get());
    }
}

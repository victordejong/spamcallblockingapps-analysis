package com.google.android.gms.internal.ads;

import android.content.Context;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzdeg.class */
public final class zzdeg implements zzeoy<zzdec> {

    /* renamed from: a */
    public final zzeph<Context> f27204a;

    /* renamed from: b */
    public final zzeph<zzdzb> f27205b;

    public zzdeg(zzeph<Context> zzephVar, zzeph<zzdzb> zzephVar2) {
        this.f27204a = zzephVar;
        this.f27205b = zzephVar2;
    }

    /* renamed from: a */
    public static zzdec m13636a(Context context, zzdzb zzdzbVar) {
        return new zzdec(context, zzdzbVar);
    }

    /* renamed from: a */
    public static zzdeg m13635a(zzeph<Context> zzephVar, zzeph<zzdzb> zzephVar2) {
        return new zzdeg(zzephVar, zzephVar2);
    }

    @Override // com.google.android.gms.internal.ads.zzeph
    public final /* synthetic */ Object get() {
        return m13636a(this.f27204a.get(), this.f27205b.get());
    }
}

package com.google.android.gms.internal.ads;

import android.content.Context;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzdpq.class */
public final class zzdpq implements zzeoy<zzdpl> {

    /* renamed from: a */
    public final zzeph<Context> f27709a;

    /* renamed from: b */
    public final zzeph<zzbbx> f27710b;

    /* renamed from: c */
    public final zzeph<zzayb> f27711c;

    public zzdpq(zzeph<Context> zzephVar, zzeph<zzbbx> zzephVar2, zzeph<zzayb> zzephVar3) {
        this.f27709a = zzephVar;
        this.f27710b = zzephVar2;
        this.f27711c = zzephVar3;
    }

    @Override // com.google.android.gms.internal.ads.zzeph
    public final /* synthetic */ Object get() {
        return new zzdpl(this.f27709a.get(), this.f27710b.get(), this.f27711c.get());
    }
}

package com.google.android.gms.internal.ads;

import android.content.Context;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzddh.class */
public final class zzddh implements zzeoy<zzddf> {

    /* renamed from: a */
    public final zzeph<zzdzb> f27165a;

    /* renamed from: b */
    public final zzeph<Context> f27166b;

    public zzddh(zzeph<zzdzb> zzephVar, zzeph<Context> zzephVar2) {
        this.f27165a = zzephVar;
        this.f27166b = zzephVar2;
    }

    /* renamed from: a */
    public static zzddh m13645a(zzeph<zzdzb> zzephVar, zzeph<Context> zzephVar2) {
        return new zzddh(zzephVar, zzephVar2);
    }

    @Override // com.google.android.gms.internal.ads.zzeph
    public final /* synthetic */ Object get() {
        return new zzddf(this.f27165a.get(), this.f27166b.get());
    }
}

package com.google.android.gms.internal.ads;

import android.content.Context;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzcuk.class */
public final class zzcuk implements zzeoy<zzcug> {

    /* renamed from: a */
    public final zzeph<Context> f26550a;

    /* renamed from: b */
    public final zzeph<zzbpm> f26551b;

    public zzcuk(zzeph<Context> zzephVar, zzeph<zzbpm> zzephVar2) {
        this.f26550a = zzephVar;
        this.f26551b = zzephVar2;
    }

    @Override // com.google.android.gms.internal.ads.zzeph
    public final /* synthetic */ Object get() {
        return new zzcug(this.f26550a.get(), this.f26551b.get());
    }
}

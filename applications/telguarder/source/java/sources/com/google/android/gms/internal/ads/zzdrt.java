package com.google.android.gms.internal.ads;

import android.content.Context;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzdrt.class */
public final class zzdrt implements zzeqb<zzamj> {
    private final zzeqo<Context> zzewk;
    private final zzeqo<zzazn> zzfze;
    private final zzdru zzhrh;

    public zzdrt(zzdru zzdruVar, zzeqo<Context> zzeqoVar, zzeqo<zzazn> zzeqoVar2) {
        this.zzhrh = zzdruVar;
        this.zzewk = zzeqoVar;
        this.zzfze = zzeqoVar2;
    }

    @Override // com.google.android.gms.internal.ads.zzeqo
    public final /* synthetic */ Object get() {
        return (zzamj) zzeqh.zza(new zzama().zzb(this.zzewk.get(), this.zzfze.get()), "Cannot return null from a non-@Nullable @Provides method");
    }
}

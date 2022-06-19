package com.google.android.gms.internal.ads;

import android.content.Context;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzdfg.class */
public final class zzdfg implements zzeqb<zzdfd> {
    private final zzeqo<zzdzv> zzewf;
    private final zzeqo<Context> zzfxw;

    private zzdfg(zzeqo<zzdzv> zzeqoVar, zzeqo<Context> zzeqoVar2) {
        this.zzewf = zzeqoVar;
        this.zzfxw = zzeqoVar2;
    }

    public static zzdfd zza(zzdzv zzdzvVar, Context context) {
        return new zzdfd(zzdzvVar, context);
    }

    public static zzdfg zzaz(zzeqo<zzdzv> zzeqoVar, zzeqo<Context> zzeqoVar2) {
        return new zzdfg(zzeqoVar, zzeqoVar2);
    }

    @Override // com.google.android.gms.internal.ads.zzeqo
    public final /* synthetic */ Object get() {
        return zza(this.zzewf.get(), this.zzfxw.get());
    }
}

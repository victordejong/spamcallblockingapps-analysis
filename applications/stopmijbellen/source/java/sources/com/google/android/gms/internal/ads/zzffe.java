package com.google.android.gms.internal.ads;

import android.content.Context;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzffe.class */
public final class zzffe implements zzgpr<zzffd> {
    private final zzgqe<Context> zza;
    private final zzgqe<zzcio> zzb;

    public zzffe(zzgqe<Context> zzgqeVar, zzgqe<zzcio> zzgqeVar2) {
        this.zza = zzgqeVar;
        this.zzb = zzgqeVar2;
    }

    @Override // com.google.android.gms.internal.ads.zzgqe
    public final /* bridge */ /* synthetic */ Object zzb() {
        return new zzffd(((zzffh) this.zza).zza(), ((zzffi) this.zzb).zzb());
    }
}

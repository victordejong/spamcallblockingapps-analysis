package com.google.android.gms.internal.ads;

import android.content.Context;
import com.google.android.gms.ads.internal.util.zzbs;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzcuz.class */
public final class zzcuz implements zzgpr<zzbs> {
    private final zzgqe<Context> zza;

    public zzcuz(zzgqe<Context> zzgqeVar) {
        this.zza = zzgqeVar;
    }

    @Override // com.google.android.gms.internal.ads.zzgqe
    public final /* bridge */ /* synthetic */ Object zzb() {
        return new zzbs(((zzcqr) this.zza).zza());
    }
}

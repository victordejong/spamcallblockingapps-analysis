package com.google.android.gms.internal.ads;

import android.content.pm.ApplicationInfo;
import android.content.pm.PackageInfo;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzetz.class */
public final class zzetz implements zzgpr<zzety> {
    private final zzgqe<ApplicationInfo> zza;
    private final zzgqe<PackageInfo> zzb;

    public zzetz(zzgqe<ApplicationInfo> zzgqeVar, zzgqe<PackageInfo> zzgqeVar2) {
        this.zza = zzgqeVar;
        this.zzb = zzgqeVar2;
    }

    @Override // com.google.android.gms.internal.ads.zzgqe
    public final /* bridge */ /* synthetic */ Object zzb() {
        return new zzety(((zzecp) this.zza).zzb(), this.zzb.zzb());
    }
}

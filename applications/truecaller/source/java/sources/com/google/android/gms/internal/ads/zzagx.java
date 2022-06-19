package com.google.android.gms.internal.ads;

import java.util.ArrayList;
import java.util.List;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzagx.class */
public final class zzagx implements zzagt {
    public final zzhb zza;
    public int zzd;
    public boolean zze;
    public final List<zzhf> zzc = new ArrayList();
    public final Object zzb = new Object();

    public zzagx(zzhh zzhhVar, boolean z) {
        this.zza = new zzhb(zzhhVar, z);
    }

    public final void zza(int i) {
        this.zzd = i;
        this.zze = false;
        this.zzc.clear();
    }

    @Override // com.google.android.gms.internal.ads.zzagt
    public final Object zzb() {
        return this.zzb;
    }

    @Override // com.google.android.gms.internal.ads.zzagt
    public final zzaiq zzc() {
        return this.zza.zzy();
    }
}

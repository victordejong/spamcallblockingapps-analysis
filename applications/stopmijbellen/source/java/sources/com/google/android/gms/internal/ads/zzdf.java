package com.google.android.gms.internal.ads;

import java.util.ArrayList;
import java.util.Collections;
import java.util.Map;
import java.util.Objects;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzdf.class */
public abstract class zzdf implements zzdi {
    private final boolean zza;
    private final ArrayList<zzdx> zzb = new ArrayList<>(1);
    private int zzc;
    private zzdm zzd;

    public zzdf(boolean z) {
        this.zza = z;
    }

    @Override // com.google.android.gms.internal.ads.zzdi, com.google.android.gms.internal.ads.zzdv
    public /* synthetic */ Map zza() {
        return Collections.emptyMap();
    }

    @Override // com.google.android.gms.internal.ads.zzdi
    public final void zzb(zzdx zzdxVar) {
        Objects.requireNonNull(zzdxVar);
        if (!this.zzb.contains(zzdxVar)) {
            this.zzb.add(zzdxVar);
            this.zzc++;
        }
    }

    public final void zzc(int i) {
        zzdm zzdmVar = this.zzd;
        int i2 = zzfn.zza;
        for (int i3 = 0; i3 < this.zzc; i3++) {
            this.zzb.get(i3).zza(this, zzdmVar, this.zza, i);
        }
    }

    public final void zzd() {
        zzdm zzdmVar = this.zzd;
        int i = zzfn.zza;
        for (int i2 = 0; i2 < this.zzc; i2++) {
            this.zzb.get(i2).zzb(this, zzdmVar, this.zza);
        }
        this.zzd = null;
    }

    public final void zze(zzdm zzdmVar) {
        for (int i = 0; i < this.zzc; i++) {
            this.zzb.get(i).zzc(this, zzdmVar, this.zza);
        }
    }

    public final void zzf(zzdm zzdmVar) {
        this.zzd = zzdmVar;
        for (int i = 0; i < this.zzc; i++) {
            this.zzb.get(i).zzd(this, zzdmVar, this.zza);
        }
    }
}

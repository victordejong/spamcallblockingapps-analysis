package com.google.android.gms.internal.ads;

import java.util.ArrayList;
import java.util.Collections;
import java.util.Map;
import java.util.Objects;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzag.class */
public abstract class zzag implements zzaj {
    private final boolean zza;
    private final ArrayList<zzay> zzb = new ArrayList<>(1);
    private int zzc;
    private zzan zzd;

    public zzag(boolean z) {
        this.zza = z;
    }

    @Override // com.google.android.gms.internal.ads.zzaj
    public final void zza(zzay zzayVar) {
        Objects.requireNonNull(zzayVar);
        if (!this.zzb.contains(zzayVar)) {
            this.zzb.add(zzayVar);
            this.zzc++;
        }
    }

    public final void zzb(zzan zzanVar) {
        for (int i = 0; i < this.zzc; i++) {
            this.zzb.get(i).zza(this, zzanVar, this.zza);
        }
    }

    public final void zzc(zzan zzanVar) {
        this.zzd = zzanVar;
        for (int i = 0; i < this.zzc; i++) {
            this.zzb.get(i).zzb(this, zzanVar, this.zza);
        }
    }

    public final void zzd(int i) {
        zzan zzanVar = this.zzd;
        int i2 = zzamq.zza;
        for (int i3 = 0; i3 < this.zzc; i3++) {
            this.zzb.get(i3).zzc(this, zzanVar, this.zza, i);
        }
    }

    public final void zze() {
        zzan zzanVar = this.zzd;
        int i = zzamq.zza;
        for (int i2 = 0; i2 < this.zzc; i2++) {
            this.zzb.get(i2).zzd(this, zzanVar, this.zza);
        }
        this.zzd = null;
    }

    @Override // com.google.android.gms.internal.ads.zzaj
    public Map zzf() {
        return Collections.emptyMap();
    }
}

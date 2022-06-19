package com.google.android.gms.internal.ads;

import java.io.IOException;
import org.checkerframework.checker.nullness.qual.EnsuresNonNullIf;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzacu.class */
public final class zzacu implements zzwp {
    public static final zzww zza = zzact.zza;
    private zzws zzb;
    private zzadc zzc;
    private boolean zzd;

    @EnsuresNonNullIf(expression = {"streamReader"}, result = true)
    private final boolean zze(zzwq zzwqVar) throws IOException {
        zzacw zzacwVar = new zzacw();
        if (!zzacwVar.zzb(zzwqVar, true) || (zzacwVar.zza & 2) != 2) {
            return false;
        }
        int min = Math.min(zzacwVar.zze, 8);
        zzfd zzfdVar = new zzfd(min);
        ((zzwk) zzwqVar).zzm(zzfdVar.zzH(), 0, min, false);
        zzfdVar.zzF(0);
        if (zzfdVar.zza() >= 5 && zzfdVar.zzk() == 127 && zzfdVar.zzs() == 1179402563) {
            this.zzc = new zzacs();
            return true;
        }
        zzfdVar.zzF(0);
        try {
            if (zzxy.zzc(1, zzfdVar, true)) {
                this.zzc = new zzade();
                return true;
            }
        } catch (zzbj e) {
        }
        zzfdVar.zzF(0);
        if (!zzacy.zzd(zzfdVar)) {
            return false;
        }
        this.zzc = new zzacy();
        return true;
    }

    @Override // com.google.android.gms.internal.ads.zzwp
    public final int zza(zzwq zzwqVar, zzxm zzxmVar) throws IOException {
        zzdy.zzb(this.zzb);
        if (this.zzc == null) {
            if (!zze(zzwqVar)) {
                throw zzbj.zza("Failed to determine bitstream type", null);
            }
            zzwqVar.zzj();
        }
        if (!this.zzd) {
            zzxt zzv = this.zzb.zzv(0, 1);
            this.zzb.zzB();
            this.zzc.zzh(this.zzb, zzv);
            this.zzd = true;
        }
        return this.zzc.zze(zzwqVar, zzxmVar);
    }

    @Override // com.google.android.gms.internal.ads.zzwp
    public final void zzb(zzws zzwsVar) {
        this.zzb = zzwsVar;
    }

    @Override // com.google.android.gms.internal.ads.zzwp
    public final void zzc(long j, long j2) {
        zzadc zzadcVar = this.zzc;
        if (zzadcVar != null) {
            zzadcVar.zzj(j, j2);
        }
    }

    @Override // com.google.android.gms.internal.ads.zzwp
    public final boolean zzd(zzwq zzwqVar) throws IOException {
        try {
            return zze(zzwqVar);
        } catch (zzbj e) {
            return false;
        }
    }
}

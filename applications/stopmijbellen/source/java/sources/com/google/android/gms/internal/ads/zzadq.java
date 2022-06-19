package com.google.android.gms.internal.ads;

import java.util.Collections;
import java.util.List;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzadq.class */
public final class zzadq implements zzadr {
    private final List<zzafa> zza;
    private final zzxt[] zzb;
    private boolean zzc;
    private int zzd;
    private int zze;
    private long zzf = -9223372036854775807L;

    public zzadq(List<zzafa> list) {
        this.zza = list;
        this.zzb = new zzxt[list.size()];
    }

    private final boolean zzf(zzfd zzfdVar, int i) {
        if (zzfdVar.zza() == 0) {
            return false;
        }
        if (zzfdVar.zzk() != i) {
            this.zzc = false;
        }
        this.zzd--;
        return this.zzc;
    }

    @Override // com.google.android.gms.internal.ads.zzadr
    public final void zza(zzfd zzfdVar) {
        zzxt[] zzxtVarArr;
        if (this.zzc) {
            if (this.zzd == 2 && !zzf(zzfdVar, 32)) {
                return;
            }
            if (this.zzd == 1 && !zzf(zzfdVar, 0)) {
                return;
            }
            int zzc = zzfdVar.zzc();
            int zza = zzfdVar.zza();
            for (zzxt zzxtVar : this.zzb) {
                zzfdVar.zzF(zzc);
                zzxtVar.zzq(zzfdVar, zza);
            }
            this.zze += zza;
        }
    }

    @Override // com.google.android.gms.internal.ads.zzadr
    public final void zzb(zzws zzwsVar, zzafd zzafdVar) {
        for (int i = 0; i < this.zzb.length; i++) {
            zzafa zzafaVar = this.zza.get(i);
            zzafdVar.zzc();
            zzxt zzv = zzwsVar.zzv(zzafdVar.zza(), 3);
            zzz zzzVar = new zzz();
            zzzVar.zzH(zzafdVar.zzb());
            zzzVar.zzS("application/dvbsubs");
            zzzVar.zzI(Collections.singletonList(zzafaVar.zzb));
            zzzVar.zzK(zzafaVar.zza);
            zzv.zzk(zzzVar.zzY());
            this.zzb[i] = zzv;
        }
    }

    @Override // com.google.android.gms.internal.ads.zzadr
    public final void zzc() {
        if (this.zzc) {
            if (this.zzf != -9223372036854775807L) {
                for (zzxt zzxtVar : this.zzb) {
                    zzxtVar.zzs(this.zzf, 1, this.zze, 0, null);
                }
            }
            this.zzc = false;
        }
    }

    @Override // com.google.android.gms.internal.ads.zzadr
    public final void zzd(long j, int i) {
        if ((i & 4) == 0) {
            return;
        }
        this.zzc = true;
        if (j != -9223372036854775807L) {
            this.zzf = j;
        }
        this.zze = 0;
        this.zzd = 2;
    }

    @Override // com.google.android.gms.internal.ads.zzadr
    public final void zze() {
        this.zzc = false;
        this.zzf = -9223372036854775807L;
    }
}

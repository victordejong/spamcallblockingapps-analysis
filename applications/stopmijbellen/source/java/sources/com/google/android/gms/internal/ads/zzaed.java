package com.google.android.gms.internal.ads;

import android.util.Log;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzaed.class */
public final class zzaed implements zzadr {
    private zzxt zzb;
    private boolean zzc;
    private int zze;
    private int zzf;
    private final zzfd zza = new zzfd(10);
    private long zzd = -9223372036854775807L;

    @Override // com.google.android.gms.internal.ads.zzadr
    public final void zza(zzfd zzfdVar) {
        zzdy.zzb(this.zzb);
        if (!this.zzc) {
            return;
        }
        int zza = zzfdVar.zza();
        int i = this.zzf;
        if (i < 10) {
            int min = Math.min(zza, 10 - i);
            System.arraycopy(zzfdVar.zzH(), zzfdVar.zzc(), this.zza.zzH(), this.zzf, min);
            if (this.zzf + min == 10) {
                this.zza.zzF(0);
                if (this.zza.zzk() != 73 || this.zza.zzk() != 68 || this.zza.zzk() != 51) {
                    Log.w("Id3Reader", "Discarding invalid ID3 tag");
                    this.zzc = false;
                    return;
                }
                this.zza.zzG(3);
                this.zze = this.zza.zzj() + 10;
            }
        }
        int min2 = Math.min(zza, this.zze - this.zzf);
        zzxr.zzb(this.zzb, zzfdVar, min2);
        this.zzf += min2;
    }

    @Override // com.google.android.gms.internal.ads.zzadr
    public final void zzb(zzws zzwsVar, zzafd zzafdVar) {
        zzafdVar.zzc();
        zzxt zzv = zzwsVar.zzv(zzafdVar.zza(), 5);
        this.zzb = zzv;
        zzz zzzVar = new zzz();
        zzzVar.zzH(zzafdVar.zzb());
        zzzVar.zzS("application/id3");
        zzv.zzk(zzzVar.zzY());
    }

    @Override // com.google.android.gms.internal.ads.zzadr
    public final void zzc() {
        int i;
        zzdy.zzb(this.zzb);
        if (!this.zzc || (i = this.zze) == 0 || this.zzf != i) {
            return;
        }
        long j = this.zzd;
        if (j != -9223372036854775807L) {
            this.zzb.zzs(j, 1, i, 0, null);
        }
        this.zzc = false;
    }

    @Override // com.google.android.gms.internal.ads.zzadr
    public final void zzd(long j, int i) {
        if ((i & 4) == 0) {
            return;
        }
        this.zzc = true;
        if (j != -9223372036854775807L) {
            this.zzd = j;
        }
        this.zze = 0;
        this.zzf = 0;
    }

    @Override // com.google.android.gms.internal.ads.zzadr
    public final void zze() {
        this.zzc = false;
        this.zzd = -9223372036854775807L;
    }
}

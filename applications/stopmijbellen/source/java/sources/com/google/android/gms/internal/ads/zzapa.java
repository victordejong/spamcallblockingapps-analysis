package com.google.android.gms.internal.ads;

import java.util.Objects;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzapa.class */
public final class zzapa {
    public final zzaum zza;
    public final Object zzb;
    public final int zzc;
    public final zzauy[] zzd = new zzauy[2];
    public final boolean[] zze = new boolean[2];
    public final long zzf;
    public int zzg;
    public long zzh;
    public boolean zzi;
    public boolean zzj;
    public boolean zzk;
    public zzapa zzl;
    public zzavs zzm;
    private final zzapl[] zzn;
    private final zzapm[] zzo;
    private final zzavr zzp;
    private final zzauo zzq;
    private zzavs zzr;
    private final zzcmd zzs;

    public zzapa(zzapl[] zzaplVarArr, zzapm[] zzapmVarArr, long j, zzavr zzavrVar, zzcmd zzcmdVar, zzauo zzauoVar, Object obj, int i, int i2, boolean z, long j2, byte[] bArr) {
        this.zzn = zzaplVarArr;
        this.zzo = zzapmVarArr;
        this.zzf = j;
        this.zzp = zzavrVar;
        this.zzs = zzcmdVar;
        this.zzq = zzauoVar;
        Objects.requireNonNull(obj);
        this.zzb = obj;
        this.zzc = i;
        this.zzg = i2;
        this.zzi = z;
        this.zzh = j2;
        this.zza = zzauoVar.zzf(i2, zzcmdVar.zzl());
    }

    public final long zza(long j, boolean z) {
        return zzb(j, false, new boolean[2]);
    }

    public final long zzb(long j, boolean z, boolean[] zArr) {
        zzavp zzavpVar = this.zzm.zzb;
        int i = 0;
        while (true) {
            boolean z2 = true;
            if (i >= 2) {
                break;
            }
            boolean[] zArr2 = this.zze;
            if (z || !this.zzm.zza(this.zzr, i)) {
                z2 = false;
            }
            zArr2[i] = z2;
            i++;
        }
        long zzB = this.zza.zzB(zzavpVar.zzb(), this.zze, this.zzd, zArr, j);
        this.zzr = this.zzm;
        this.zzk = false;
        int i2 = 0;
        while (true) {
            zzauy[] zzauyVarArr = this.zzd;
            if (i2 >= 2) {
                this.zzs.zzd(this.zzn, this.zzm.zza, zzavpVar);
                return zzB;
            }
            if (zzauyVarArr[i2] != null) {
                zzawm.zze(zzavpVar.zza(i2) != null);
                this.zzk = true;
            } else {
                zzawm.zze(zzavpVar.zza(i2) == null);
            }
            i2++;
        }
    }

    public final void zzc() {
        try {
            this.zzq.zzc(this.zza);
        } catch (RuntimeException e) {
        }
    }

    public final boolean zzd() {
        boolean z = true;
        if (this.zzj) {
            if (this.zzk) {
                if (this.zza.zzg() == Long.MIN_VALUE) {
                    return true;
                }
            }
            return z;
        }
        z = false;
        return z;
    }

    public final boolean zze() throws zzaos {
        zzavs zzc = this.zzp.zzc(this.zzo, this.zza.zzn());
        zzavs zzavsVar = this.zzr;
        if (zzavsVar != null) {
            for (int i = 0; i < 2; i++) {
                if (zzc.zza(zzavsVar, i)) {
                }
            }
            return false;
        }
        this.zzm = zzc;
        return true;
    }
}

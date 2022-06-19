package com.google.android.gms.internal.ads;

import java.util.Objects;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzang.class */
public final class zzang {
    public final zzasp zza;
    public final Object zzb;
    public final int zzc;
    public final zzatb[] zzd = new zzatb[2];
    public final boolean[] zze = new boolean[2];
    public final long zzf;
    public int zzg;
    public long zzh;
    public boolean zzi;
    public boolean zzj;
    public boolean zzk;
    public zzang zzl;
    public zzatv zzm;
    private final zzanr[] zzn;
    private final zzans[] zzo;
    private final zzatu zzp;
    private final zzasr zzq;
    private zzatv zzr;
    private final zzcjy zzs;

    public zzang(zzanr[] zzanrVarArr, zzans[] zzansVarArr, long j, zzatu zzatuVar, zzcjy zzcjyVar, zzasr zzasrVar, Object obj, int i, int i2, boolean z, long j2, byte[] bArr) {
        this.zzn = zzanrVarArr;
        this.zzo = zzansVarArr;
        this.zzf = j;
        this.zzp = zzatuVar;
        this.zzs = zzcjyVar;
        this.zzq = zzasrVar;
        Objects.requireNonNull(obj);
        this.zzb = obj;
        this.zzc = i;
        this.zzg = i2;
        this.zzi = z;
        this.zzh = j2;
        this.zza = zzasrVar.zze(i2, zzcjyVar.zzl());
    }

    public final boolean zza() {
        boolean z = true;
        if (this.zzj) {
            if (this.zzk) {
                if (this.zza.zzq() == Long.MIN_VALUE) {
                    return true;
                }
            }
            return z;
        }
        z = false;
        return z;
    }

    public final boolean zzb() throws zzamy {
        zzatv zzd = this.zzp.zzd(this.zzo, this.zza.zzn());
        zzatv zzatvVar = this.zzr;
        if (zzatvVar != null) {
            for (int i = 0; i < 2; i++) {
                if (zzd.zza(zzatvVar, i)) {
                }
            }
            return false;
        }
        this.zzm = zzd;
        return true;
    }

    public final long zzc(long j, boolean z) {
        return zzd(j, false, new boolean[2]);
    }

    public final long zzd(long j, boolean z, boolean[] zArr) {
        zzats zzatsVar = this.zzm.zzb;
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
        long zzB = this.zza.zzB(zzatsVar.zzb(), this.zze, this.zzd, zArr, j);
        this.zzr = this.zzm;
        this.zzk = false;
        int i2 = 0;
        while (true) {
            zzatb[] zzatbVarArr = this.zzd;
            if (i2 >= 2) {
                this.zzs.zzb(this.zzn, this.zzm.zza, zzatsVar);
                return zzB;
            }
            if (zzatbVarArr[i2] != null) {
                zzaup.zzd(zzatsVar.zza(i2) != null);
                this.zzk = true;
            } else {
                zzaup.zzd(zzatsVar.zza(i2) == null);
            }
            i2++;
        }
    }

    public final void zze() {
        try {
            this.zzq.zzc(this.zza);
        } catch (RuntimeException e) {
        }
    }
}

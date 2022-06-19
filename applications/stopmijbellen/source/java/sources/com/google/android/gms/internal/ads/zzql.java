package com.google.android.gms.internal.ads;

import java.io.IOException;
import java.util.Objects;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzql.class */
final class zzql implements zzpy, zzpx {
    private final zzpy zza;
    private final long zzb;
    private zzpx zzc;

    public zzql(zzpy zzpyVar, long j) {
        this.zza = zzpyVar;
        this.zzb = j;
    }

    @Override // com.google.android.gms.internal.ads.zzpy
    public final long zza(long j, zzio zzioVar) {
        return this.zza.zza(j - this.zzb, zzioVar) + this.zzb;
    }

    @Override // com.google.android.gms.internal.ads.zzpy, com.google.android.gms.internal.ads.zzrp
    public final long zzb() {
        long zzb = this.zza.zzb();
        if (zzb == Long.MIN_VALUE) {
            return Long.MIN_VALUE;
        }
        return zzb + this.zzb;
    }

    @Override // com.google.android.gms.internal.ads.zzpy, com.google.android.gms.internal.ads.zzrp
    public final long zzc() {
        long zzc = this.zza.zzc();
        if (zzc == Long.MIN_VALUE) {
            return Long.MIN_VALUE;
        }
        return zzc + this.zzb;
    }

    @Override // com.google.android.gms.internal.ads.zzpy
    public final long zzd() {
        long zzd = this.zza.zzd();
        if (zzd == -9223372036854775807L) {
            return -9223372036854775807L;
        }
        return zzd + this.zzb;
    }

    @Override // com.google.android.gms.internal.ads.zzpy
    public final long zze(long j) {
        return this.zza.zze(j - this.zzb) + this.zzb;
    }

    @Override // com.google.android.gms.internal.ads.zzpy
    public final zzch zzf() {
        return this.zza.zzf();
    }

    @Override // com.google.android.gms.internal.ads.zzro
    public final /* bridge */ /* synthetic */ void zzg(zzpy zzpyVar) {
        zzpx zzpxVar = this.zzc;
        Objects.requireNonNull(zzpxVar);
        zzpxVar.zzg(this);
    }

    @Override // com.google.android.gms.internal.ads.zzpy
    public final void zzh(long j, boolean z) {
        this.zza.zzh(j - this.zzb, false);
    }

    @Override // com.google.android.gms.internal.ads.zzpx
    public final void zzi(zzpy zzpyVar) {
        zzpx zzpxVar = this.zzc;
        Objects.requireNonNull(zzpxVar);
        zzpxVar.zzi(this);
    }

    @Override // com.google.android.gms.internal.ads.zzpy
    public final void zzj() throws IOException {
        this.zza.zzj();
    }

    @Override // com.google.android.gms.internal.ads.zzpy
    public final void zzk(zzpx zzpxVar, long j) {
        this.zzc = zzpxVar;
        this.zza.zzk(this, j - this.zzb);
    }

    @Override // com.google.android.gms.internal.ads.zzpy, com.google.android.gms.internal.ads.zzrp
    public final void zzl(long j) {
        this.zza.zzl(j - this.zzb);
    }

    @Override // com.google.android.gms.internal.ads.zzpy, com.google.android.gms.internal.ads.zzrp
    public final boolean zzn(long j) {
        return this.zza.zzn(j - this.zzb);
    }

    @Override // com.google.android.gms.internal.ads.zzpy, com.google.android.gms.internal.ads.zzrp
    public final boolean zzo() {
        return this.zza.zzo();
    }

    @Override // com.google.android.gms.internal.ads.zzpy
    public final long zzq(zzsb[] zzsbVarArr, boolean[] zArr, zzrn[] zzrnVarArr, boolean[] zArr2, long j) {
        zzrn[] zzrnVarArr2 = new zzrn[zzrnVarArr.length];
        int i = 0;
        while (true) {
            zzrn zzrnVar = null;
            if (i >= zzrnVarArr.length) {
                break;
            }
            zzqm zzqmVar = (zzqm) zzrnVarArr[i];
            if (zzqmVar != null) {
                zzrnVar = zzqmVar.zzc();
            }
            zzrnVarArr2[i] = zzrnVar;
            i++;
        }
        long zzq = this.zza.zzq(zzsbVarArr, zArr, zzrnVarArr2, zArr2, j - this.zzb);
        for (int i2 = 0; i2 < zzrnVarArr.length; i2++) {
            zzrn zzrnVar2 = zzrnVarArr2[i2];
            if (zzrnVar2 == null) {
                zzrnVarArr[i2] = null;
            } else {
                zzrn zzrnVar3 = zzrnVarArr[i2];
                if (zzrnVar3 == null || ((zzqm) zzrnVar3).zzc() != zzrnVar2) {
                    zzrnVarArr[i2] = new zzqm(zzrnVar2, this.zzb);
                }
            }
        }
        return zzq + this.zzb;
    }
}

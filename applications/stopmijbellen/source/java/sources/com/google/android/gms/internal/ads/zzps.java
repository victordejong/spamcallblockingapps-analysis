package com.google.android.gms.internal.ads;

import java.io.IOException;
import java.util.Objects;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzps.class */
public final class zzps implements zzpy, zzpx {
    public final zzpz zza;
    private final long zzb;
    private zzqb zzc;
    private zzpy zzd;
    private zzpx zze;
    private long zzf = -9223372036854775807L;
    private final zztk zzg;

    public zzps(zzpz zzpzVar, zztk zztkVar, long j, byte[] bArr) {
        this.zza = zzpzVar;
        this.zzg = zztkVar;
        this.zzb = j;
    }

    private final long zzv(long j) {
        long j2 = this.zzf;
        return j2 != -9223372036854775807L ? j2 : j;
    }

    @Override // com.google.android.gms.internal.ads.zzpy
    public final long zza(long j, zzio zzioVar) {
        zzpy zzpyVar = this.zzd;
        int i = zzfn.zza;
        return zzpyVar.zza(j, zzioVar);
    }

    @Override // com.google.android.gms.internal.ads.zzpy, com.google.android.gms.internal.ads.zzrp
    public final long zzb() {
        zzpy zzpyVar = this.zzd;
        int i = zzfn.zza;
        return zzpyVar.zzb();
    }

    @Override // com.google.android.gms.internal.ads.zzpy, com.google.android.gms.internal.ads.zzrp
    public final long zzc() {
        zzpy zzpyVar = this.zzd;
        int i = zzfn.zza;
        return zzpyVar.zzc();
    }

    @Override // com.google.android.gms.internal.ads.zzpy
    public final long zzd() {
        zzpy zzpyVar = this.zzd;
        int i = zzfn.zza;
        return zzpyVar.zzd();
    }

    @Override // com.google.android.gms.internal.ads.zzpy
    public final long zze(long j) {
        zzpy zzpyVar = this.zzd;
        int i = zzfn.zza;
        return zzpyVar.zze(j);
    }

    @Override // com.google.android.gms.internal.ads.zzpy
    public final zzch zzf() {
        zzpy zzpyVar = this.zzd;
        int i = zzfn.zza;
        return zzpyVar.zzf();
    }

    @Override // com.google.android.gms.internal.ads.zzro
    public final /* bridge */ /* synthetic */ void zzg(zzpy zzpyVar) {
        zzpx zzpxVar = this.zze;
        int i = zzfn.zza;
        zzpxVar.zzg(this);
    }

    @Override // com.google.android.gms.internal.ads.zzpy
    public final void zzh(long j, boolean z) {
        zzpy zzpyVar = this.zzd;
        int i = zzfn.zza;
        zzpyVar.zzh(j, false);
    }

    @Override // com.google.android.gms.internal.ads.zzpx
    public final void zzi(zzpy zzpyVar) {
        zzpx zzpxVar = this.zze;
        int i = zzfn.zza;
        zzpxVar.zzi(this);
    }

    @Override // com.google.android.gms.internal.ads.zzpy
    public final void zzj() throws IOException {
        try {
            zzpy zzpyVar = this.zzd;
            if (zzpyVar != null) {
                zzpyVar.zzj();
                return;
            }
            zzqb zzqbVar = this.zzc;
            if (zzqbVar == null) {
                return;
            }
            zzqbVar.zzv();
        } catch (IOException e) {
            throw e;
        }
    }

    @Override // com.google.android.gms.internal.ads.zzpy
    public final void zzk(zzpx zzpxVar, long j) {
        this.zze = zzpxVar;
        zzpy zzpyVar = this.zzd;
        if (zzpyVar != null) {
            zzpyVar.zzk(this, zzv(this.zzb));
        }
    }

    @Override // com.google.android.gms.internal.ads.zzpy, com.google.android.gms.internal.ads.zzrp
    public final void zzl(long j) {
        zzpy zzpyVar = this.zzd;
        int i = zzfn.zza;
        zzpyVar.zzl(j);
    }

    public final long zzm() {
        return this.zzf;
    }

    @Override // com.google.android.gms.internal.ads.zzpy, com.google.android.gms.internal.ads.zzrp
    public final boolean zzn(long j) {
        zzpy zzpyVar = this.zzd;
        return zzpyVar != null && zzpyVar.zzn(j);
    }

    @Override // com.google.android.gms.internal.ads.zzpy, com.google.android.gms.internal.ads.zzrp
    public final boolean zzo() {
        zzpy zzpyVar = this.zzd;
        return zzpyVar != null && zzpyVar.zzo();
    }

    public final long zzp() {
        return this.zzb;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v1, types: [long] */
    /* JADX WARN: Type inference failed for: r0v5, types: [com.google.android.gms.internal.ads.zzpy] */
    /* JADX WARN: Type inference failed for: r13v1 */
    /* JADX WARN: Type inference failed for: r13v2 */
    /* JADX WARN: Type inference failed for: r13v3 */
    /* JADX WARN: Type inference failed for: r13v4 */
    @Override // com.google.android.gms.internal.ads.zzpy
    public final long zzq(zzsb[] zzsbVarArr, boolean[] zArr, zzrn[] zzrnVarArr, boolean[] zArr2, long j) {
        ?? r0 = this.zzf;
        ?? r13 = j;
        if (r0 != -9223372036854775807L) {
            int i = (j > this.zzb ? 1 : (j == this.zzb ? 0 : -1));
            r13 = j;
            if (i == 0) {
                this.zzf = -9223372036854775807L;
                r13 = r0;
            }
        }
        ?? r02 = this.zzd;
        int i2 = zzfn.zza;
        return r02.zzq(zzsbVarArr, zArr, zzrnVarArr, zArr2, r13);
    }

    public final void zzr(zzpz zzpzVar) {
        long zzv = zzv(this.zzb);
        zzqb zzqbVar = this.zzc;
        Objects.requireNonNull(zzqbVar);
        zzpy zzC = zzqbVar.zzC(zzpzVar, this.zzg, zzv);
        this.zzd = zzC;
        if (this.zze != null) {
            zzC.zzk(this, zzv);
        }
    }

    public final void zzs(long j) {
        this.zzf = j;
    }

    public final void zzt() {
        zzpy zzpyVar = this.zzd;
        if (zzpyVar != null) {
            zzqb zzqbVar = this.zzc;
            Objects.requireNonNull(zzqbVar);
            zzqbVar.zzA(zzpyVar);
        }
    }

    public final void zzu(zzqb zzqbVar) {
        zzdy.zzf(this.zzc == null);
        this.zzc = zzqbVar;
    }
}

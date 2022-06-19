package com.google.android.gms.internal.ads;

import java.io.IOException;
import java.util.Objects;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzgy.class */
public final class zzgy implements zzhe, zzhd {
    public final zzhf zza;
    private final long zzb;
    private zzhh zzc;
    private zzhe zzd;
    private zzhd zze;
    private long zzf = -9223372036854775807L;
    private final zzko zzg;

    public zzgy(zzhf zzhfVar, zzko zzkoVar, long j, byte[] bArr) {
        this.zza = zzhfVar;
        this.zzg = zzkoVar;
        this.zzb = j;
    }

    private final long zzv(long j) {
        long j2 = this.zzf;
        return j2 != -9223372036854775807L ? j2 : j;
    }

    public final long zza() {
        return this.zzb;
    }

    @Override // com.google.android.gms.internal.ads.zzhe
    public final void zzb(zzhd zzhdVar, long j) {
        this.zze = zzhdVar;
        zzhe zzheVar = this.zzd;
        if (zzheVar != null) {
            zzheVar.zzb(this, zzv(this.zzb));
        }
    }

    @Override // com.google.android.gms.internal.ads.zzhe
    public final void zzc() throws IOException {
        try {
            zzhe zzheVar = this.zzd;
            if (zzheVar != null) {
                zzheVar.zzc();
                return;
            }
            zzhh zzhhVar = this.zzc;
            if (zzhhVar == null) {
                return;
            }
            zzhhVar.zzu();
        } catch (IOException e) {
            throw e;
        }
    }

    @Override // com.google.android.gms.internal.ads.zzhe
    public final zzs zzd() {
        zzhe zzheVar = this.zzd;
        int i = zzamq.zza;
        return zzheVar.zzd();
    }

    @Override // com.google.android.gms.internal.ads.zzhe
    public final void zze(long j, boolean z) {
        zzhe zzheVar = this.zzd;
        int i = zzamq.zza;
        zzheVar.zze(j, false);
    }

    @Override // com.google.android.gms.internal.ads.zzhe, com.google.android.gms.internal.ads.zziw
    public final void zzf(long j) {
        zzhe zzheVar = this.zzd;
        int i = zzamq.zza;
        zzheVar.zzf(j);
    }

    @Override // com.google.android.gms.internal.ads.zzhe
    public final long zzg() {
        zzhe zzheVar = this.zzd;
        int i = zzamq.zza;
        return zzheVar.zzg();
    }

    @Override // com.google.android.gms.internal.ads.zzhe, com.google.android.gms.internal.ads.zziw
    public final long zzh() {
        zzhe zzheVar = this.zzd;
        int i = zzamq.zza;
        return zzheVar.zzh();
    }

    @Override // com.google.android.gms.internal.ads.zzhe
    public final long zzi(long j) {
        zzhe zzheVar = this.zzd;
        int i = zzamq.zza;
        return zzheVar.zzi(j);
    }

    @Override // com.google.android.gms.internal.ads.zzhe
    public final long zzj(long j, zzahz zzahzVar) {
        zzhe zzheVar = this.zzd;
        int i = zzamq.zza;
        return zzheVar.zzj(j, zzahzVar);
    }

    @Override // com.google.android.gms.internal.ads.zzhe, com.google.android.gms.internal.ads.zziw
    public final long zzk() {
        zzhe zzheVar = this.zzd;
        int i = zzamq.zza;
        return zzheVar.zzk();
    }

    @Override // com.google.android.gms.internal.ads.zzhe, com.google.android.gms.internal.ads.zziw
    public final boolean zzl(long j) {
        zzhe zzheVar = this.zzd;
        return zzheVar != null && zzheVar.zzl(j);
    }

    @Override // com.google.android.gms.internal.ads.zzhe, com.google.android.gms.internal.ads.zziw
    public final boolean zzm() {
        zzhe zzheVar = this.zzd;
        return zzheVar != null && zzheVar.zzm();
    }

    @Override // com.google.android.gms.internal.ads.zzhd
    public final void zzn(zzhe zzheVar) {
        zzhd zzhdVar = this.zze;
        int i = zzamq.zza;
        zzhdVar.zzn(this);
    }

    public final void zzo(long j) {
        this.zzf = j;
    }

    @Override // com.google.android.gms.internal.ads.zziv
    public final /* bridge */ /* synthetic */ void zzp(zzhe zzheVar) {
        zzhd zzhdVar = this.zze;
        int i = zzamq.zza;
        zzhdVar.zzp(this);
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v1, types: [long] */
    /* JADX WARN: Type inference failed for: r0v5, types: [com.google.android.gms.internal.ads.zzhe] */
    /* JADX WARN: Type inference failed for: r13v1 */
    /* JADX WARN: Type inference failed for: r13v2 */
    /* JADX WARN: Type inference failed for: r13v3 */
    /* JADX WARN: Type inference failed for: r13v4 */
    @Override // com.google.android.gms.internal.ads.zzhe
    public final long zzq(zzjg[] zzjgVarArr, boolean[] zArr, zziu[] zziuVarArr, boolean[] zArr2, long j) {
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
        int i2 = zzamq.zza;
        return r02.zzq(zzjgVarArr, zArr, zziuVarArr, zArr2, r13);
    }

    public final long zzr() {
        return this.zzf;
    }

    public final void zzs(zzhh zzhhVar) {
        zzakt.zzd(this.zzc == null);
        this.zzc = zzhhVar;
    }

    public final void zzt(zzhf zzhfVar) {
        long zzv = zzv(this.zzb);
        zzhh zzhhVar = this.zzc;
        Objects.requireNonNull(zzhhVar);
        zzhe zzC = zzhhVar.zzC(zzhfVar, this.zzg, zzv);
        this.zzd = zzC;
        if (this.zze != null) {
            zzC.zzb(this, zzv);
        }
    }

    public final void zzu() {
        zzhe zzheVar = this.zzd;
        if (zzheVar != null) {
            zzhh zzhhVar = this.zzc;
            Objects.requireNonNull(zzhhVar);
            zzhhVar.zzA(zzheVar);
        }
    }
}

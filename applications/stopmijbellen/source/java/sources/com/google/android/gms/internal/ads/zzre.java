package com.google.android.gms.internal.ads;

import android.net.Uri;
import java.util.Objects;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzre.class */
public final class zzre extends zzpc implements zzqv {
    private final zzaz zza;
    private final zzau zzb;
    private final zzdh zzc;
    private final zznk zzd;
    private final int zze;
    private boolean zzf = true;
    private long zzg = -9223372036854775807L;
    private boolean zzh;
    private boolean zzi;
    private zzdx zzj;
    private final zzrb zzk;
    private final zztq zzl;

    public /* synthetic */ zzre(zzaz zzazVar, zzdh zzdhVar, zzrb zzrbVar, zznk zznkVar, zztq zztqVar, int i, zzrd zzrdVar, byte[] bArr) {
        zzau zzauVar = zzazVar.zzd;
        Objects.requireNonNull(zzauVar);
        this.zzb = zzauVar;
        this.zza = zzazVar;
        this.zzc = zzdhVar;
        this.zzk = zzrbVar;
        this.zzd = zznkVar;
        this.zzl = zztqVar;
        this.zze = i;
    }

    private final void zzu() {
        long j = this.zzg;
        boolean z = this.zzh;
        boolean z2 = this.zzi;
        zzaz zzazVar = this.zza;
        zzra zzrrVar = new zzrr(-9223372036854775807L, -9223372036854775807L, -9223372036854775807L, j, j, 0L, 0L, z, false, false, null, zzazVar, z2 ? zzazVar.zzf : null);
        if (this.zzf) {
            zzrrVar = new zzra(this, zzrrVar);
        }
        zzn(zzrrVar);
    }

    @Override // com.google.android.gms.internal.ads.zzqb
    public final void zzA(zzpy zzpyVar) {
        ((zzqz) zzpyVar).zzK();
    }

    @Override // com.google.android.gms.internal.ads.zzqb
    public final zzpy zzC(zzpz zzpzVar, zztk zztkVar, long j) {
        zzdi zza = this.zzc.zza();
        zzdx zzdxVar = this.zzj;
        if (zzdxVar != null) {
            zza.zzb(zzdxVar);
        }
        Uri uri = this.zzb.zza;
        zzpe zzpeVar = new zzpe(this.zzk.zza);
        zznk zznkVar = this.zzd;
        zzne zzb = zzb(zzpzVar);
        zztq zztqVar = this.zzl;
        zzqi zzd = zzd(zzpzVar);
        String str = this.zzb.zzf;
        return new zzqz(uri, zza, zzpeVar, zznkVar, zzb, zztqVar, zzd, this, zztkVar, null, this.zze, null);
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v18, types: [long] */
    @Override // com.google.android.gms.internal.ads.zzqv
    public final void zza(long j, boolean z, boolean z2) {
        char c = j;
        if (j == -9223372036854775807L) {
            c = this.zzg;
        }
        if (!this.zzf && this.zzg == c && this.zzh == z && this.zzi == z2) {
            return;
        }
        this.zzg = c;
        this.zzh = z;
        this.zzi = z2;
        this.zzf = false;
        zzu();
    }

    @Override // com.google.android.gms.internal.ads.zzpc
    public final void zzm(zzdx zzdxVar) {
        this.zzj = zzdxVar;
        zzu();
    }

    @Override // com.google.android.gms.internal.ads.zzpc
    public final void zzp() {
    }

    @Override // com.google.android.gms.internal.ads.zzqb
    public final void zzv() {
    }

    @Override // com.google.android.gms.internal.ads.zzqb
    public final zzaz zzy() {
        return this.zza;
    }
}

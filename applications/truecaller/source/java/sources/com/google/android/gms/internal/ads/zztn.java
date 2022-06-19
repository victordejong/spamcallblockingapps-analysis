package com.google.android.gms.internal.ads;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zztn.class */
public final class zztn implements zztb {
    private zzox zzb;
    private boolean zzc;
    private int zze;
    private int zzf;
    private final zzamf zza = new zzamf(10);
    private long zzd = -9223372036854775807L;

    @Override // com.google.android.gms.internal.ads.zztb
    public final void zza() {
        this.zzc = false;
        this.zzd = -9223372036854775807L;
    }

    @Override // com.google.android.gms.internal.ads.zztb
    public final void zzb(zznx zznxVar, zzun zzunVar) {
        zzunVar.zza();
        zzox zzB = zznxVar.zzB(zzunVar.zzb(), 5);
        this.zzb = zzB;
        zzaft zzaftVar = new zzaft();
        zzaftVar.zzD(zzunVar.zzc());
        zzaftVar.zzN("application/id3");
        zzB.zzs(zzaftVar.zzah());
    }

    @Override // com.google.android.gms.internal.ads.zztb
    public final void zzc(long j, int i) {
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

    @Override // com.google.android.gms.internal.ads.zztb
    public final void zzd(zzamf zzamfVar) {
        zzakt.zze(this.zzb);
        if (!this.zzc) {
            return;
        }
        int zzd = zzamfVar.zzd();
        int i = this.zzf;
        if (i < 10) {
            int min = Math.min(zzd, 10 - i);
            System.arraycopy(zzamfVar.zzi(), zzamfVar.zzg(), this.zza.zzi(), this.zzf, min);
            if (this.zzf + min == 10) {
                this.zza.zzh(0);
                if (this.zza.zzn() != 73 || this.zza.zzn() != 68 || this.zza.zzn() != 51) {
                    this.zzc = false;
                    return;
                } else {
                    this.zza.zzk(3);
                    this.zze = this.zza.zzA() + 10;
                }
            }
        }
        int min2 = Math.min(zzd, this.zze - this.zzf);
        zzov.zzb(this.zzb, zzamfVar, min2);
        this.zzf += min2;
    }

    @Override // com.google.android.gms.internal.ads.zztb
    public final void zze() {
        int i;
        zzakt.zze(this.zzb);
        if (!this.zzc || (i = this.zze) == 0 || this.zzf != i) {
            return;
        }
        long j = this.zzd;
        if (j != -9223372036854775807L) {
            this.zzb.zzv(j, 1, i, 0, null);
        }
        this.zzc = false;
    }
}

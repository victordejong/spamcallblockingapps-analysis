package com.google.android.gms.internal.ads;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzsr.class */
public final class zzsr implements zztb {
    private final zzame zza;
    private final zzamf zzb;
    private final String zzc;
    private String zzd;
    private zzox zze;
    private int zzf;
    private int zzg;
    private boolean zzh;
    private long zzi;
    private zzafv zzj;
    private int zzk;
    private long zzl;

    public zzsr() {
        this(null);
    }

    public zzsr(String str) {
        zzame zzameVar = new zzame(new byte[128], 128);
        this.zza = zzameVar;
        this.zzb = new zzamf(zzameVar.zza);
        this.zzf = 0;
        this.zzl = -9223372036854775807L;
        this.zzc = str;
    }

    @Override // com.google.android.gms.internal.ads.zztb
    public final void zza() {
        this.zzf = 0;
        this.zzg = 0;
        this.zzh = false;
        this.zzl = -9223372036854775807L;
    }

    @Override // com.google.android.gms.internal.ads.zztb
    public final void zzb(zznx zznxVar, zzun zzunVar) {
        zzunVar.zza();
        this.zzd = zzunVar.zzc();
        this.zze = zznxVar.zzB(zzunVar.zzb(), 1);
    }

    @Override // com.google.android.gms.internal.ads.zztb
    public final void zzc(long j, int i) {
        if (j != -9223372036854775807L) {
            this.zzl = j;
        }
    }

    @Override // com.google.android.gms.internal.ads.zztb
    public final void zzd(zzamf zzamfVar) {
        zzakt.zze(this.zze);
        while (zzamfVar.zzd() > 0) {
            int i = this.zzf;
            if (i == 0) {
                while (true) {
                    if (zzamfVar.zzd() <= 0) {
                        break;
                    } else if (!this.zzh) {
                        this.zzh = zzamfVar.zzn() == 11;
                    } else {
                        int zzn = zzamfVar.zzn();
                        if (zzn == 119) {
                            this.zzh = false;
                            this.zzf = 1;
                            this.zzb.zzi()[0] = (byte) 11;
                            this.zzb.zzi()[1] = (byte) 119;
                            this.zzg = 2;
                            break;
                        }
                        this.zzh = zzn == 11;
                    }
                }
            } else if (i != 1) {
                int min = Math.min(zzamfVar.zzd(), this.zzk - this.zzg);
                zzov.zzb(this.zze, zzamfVar, min);
                int i2 = this.zzg + min;
                this.zzg = i2;
                int i3 = this.zzk;
                if (i2 == i3) {
                    long j = this.zzl;
                    if (j != -9223372036854775807L) {
                        this.zze.zzv(j, 1, i3, 0, null);
                        this.zzl += this.zzi;
                    }
                    this.zzf = 0;
                }
            } else {
                byte[] zzi = this.zzb.zzi();
                int min2 = Math.min(zzamfVar.zzd(), 128 - this.zzg);
                zzamfVar.zzm(zzi, this.zzg, min2);
                int i4 = this.zzg + min2;
                this.zzg = i4;
                if (i4 == 128) {
                    this.zza.zzd(0);
                    zzmz zzc = zzna.zzc(this.zza);
                    zzafv zzafvVar = this.zzj;
                    if (zzafvVar == null || zzc.zzc != zzafvVar.zzy || zzc.zzb != zzafvVar.zzz || !zzamq.zzc(zzc.zza, zzafvVar.zzl)) {
                        zzaft zzaftVar = new zzaft();
                        zzaftVar.zzD(this.zzd);
                        zzaftVar.zzN(zzc.zza);
                        zzaftVar.zzaa(zzc.zzc);
                        zzaftVar.zzab(zzc.zzb);
                        zzaftVar.zzG(this.zzc);
                        zzafv zzah = zzaftVar.zzah();
                        this.zzj = zzah;
                        this.zze.zzs(zzah);
                    }
                    this.zzk = zzc.zzd;
                    this.zzi = (zzc.zze * 1000000) / this.zzj.zzz;
                    this.zzb.zzh(0);
                    zzov.zzb(this.zze, this.zzb, 128);
                    this.zzf = 2;
                }
            }
        }
    }

    @Override // com.google.android.gms.internal.ads.zztb
    public final void zze() {
    }
}

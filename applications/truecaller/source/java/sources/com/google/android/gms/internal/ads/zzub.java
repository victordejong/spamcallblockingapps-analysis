package com.google.android.gms.internal.ads;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzub.class */
public final class zzub implements zzuo {
    private final zzua zza;
    private final zzamf zzb = new zzamf(32);
    private int zzc;
    private int zzd;
    private boolean zze;
    private boolean zzf;

    public zzub(zzua zzuaVar) {
        this.zza = zzuaVar;
    }

    @Override // com.google.android.gms.internal.ads.zzuo
    public final void zza(zzamn zzamnVar, zznx zznxVar, zzun zzunVar) {
        this.zza.zza(zzamnVar, zznxVar, zzunVar);
        this.zzf = true;
    }

    @Override // com.google.android.gms.internal.ads.zzuo
    public final void zzb() {
        this.zzf = true;
    }

    @Override // com.google.android.gms.internal.ads.zzuo
    public final void zzc(zzamf zzamfVar, int i) {
        int i2 = i & 1;
        int zzg = i2 != 0 ? zzamfVar.zzg() + zzamfVar.zzn() : -1;
        if (this.zzf) {
            if (i2 == 0) {
                return;
            }
            this.zzf = false;
            zzamfVar.zzh(zzg);
            this.zzd = 0;
        }
        while (zzamfVar.zzd() > 0) {
            int i3 = this.zzd;
            if (i3 < 3) {
                if (i3 == 0) {
                    int zzn = zzamfVar.zzn();
                    zzamfVar.zzh(zzamfVar.zzg() - 1);
                    if (zzn == 255) {
                        this.zzf = true;
                        return;
                    }
                }
                int min = Math.min(zzamfVar.zzd(), 3 - this.zzd);
                zzamfVar.zzm(this.zzb.zzi(), this.zzd, min);
                int i4 = this.zzd + min;
                this.zzd = i4;
                if (i4 == 3) {
                    this.zzb.zzh(0);
                    this.zzb.zzf(3);
                    this.zzb.zzk(1);
                    int zzn2 = this.zzb.zzn();
                    int zzn3 = this.zzb.zzn();
                    this.zze = (zzn2 & 128) != 0;
                    this.zzc = (((zzn2 & 15) << 8) | zzn3) + 3;
                    int zzj = this.zzb.zzj();
                    int i5 = this.zzc;
                    if (zzj < i5) {
                        int zzj2 = this.zzb.zzj();
                        this.zzb.zzc(Math.min(4098, Math.max(i5, zzj2 + zzj2)));
                    }
                }
            } else {
                int min2 = Math.min(zzamfVar.zzd(), this.zzc - this.zzd);
                zzamfVar.zzm(this.zzb.zzi(), this.zzd, min2);
                int i6 = this.zzd + min2;
                this.zzd = i6;
                int i7 = this.zzc;
                if (i6 != i7) {
                    continue;
                } else {
                    if (!this.zze) {
                        this.zzb.zzf(i7);
                    } else if (zzamq.zzV(this.zzb.zzi(), 0, this.zzc, -1) != 0) {
                        this.zzf = true;
                        return;
                    } else {
                        this.zzb.zzf(this.zzc - 4);
                    }
                    this.zzb.zzh(0);
                    this.zza.zzb(this.zzb);
                    this.zzd = 0;
                }
            }
        }
    }
}

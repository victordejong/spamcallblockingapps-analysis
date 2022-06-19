package com.google.android.gms.internal.ads;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzts.class */
public final class zzts implements zzuo {
    private final zztb zza;
    private final zzame zzb = new zzame(new byte[10], 10);
    private int zzc = 0;
    private int zzd;
    private zzamn zze;
    private boolean zzf;
    private boolean zzg;
    private boolean zzh;
    private int zzi;
    private int zzj;
    private boolean zzk;

    public zzts(zztb zztbVar) {
        this.zza = zztbVar;
    }

    private final void zzd(int i) {
        this.zzc = i;
        this.zzd = 0;
    }

    private final boolean zze(zzamf zzamfVar, byte[] bArr, int i) {
        int min = Math.min(zzamfVar.zzd(), i - this.zzd);
        if (min <= 0) {
            return true;
        }
        if (bArr == null) {
            zzamfVar.zzk(min);
        } else {
            zzamfVar.zzm(bArr, this.zzd, min);
        }
        int i2 = this.zzd + min;
        this.zzd = i2;
        return i2 == i;
    }

    @Override // com.google.android.gms.internal.ads.zzuo
    public final void zza(zzamn zzamnVar, zznx zznxVar, zzun zzunVar) {
        this.zze = zzamnVar;
        this.zza.zzb(zznxVar, zzunVar);
    }

    @Override // com.google.android.gms.internal.ads.zzuo
    public final void zzb() {
        this.zzc = 0;
        this.zzd = 0;
        this.zzh = false;
        this.zza.zza();
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v143, types: [long] */
    /* JADX WARN: Type inference failed for: r14v0 */
    /* JADX WARN: Type inference failed for: r14v1 */
    /* JADX WARN: Type inference failed for: r14v3 */
    /* JADX WARN: Type inference failed for: r1v51 */
    @Override // com.google.android.gms.internal.ads.zzuo
    public final void zzc(zzamf zzamfVar, int i) throws zzaha {
        int i2;
        int i3;
        int i4;
        ?? r14;
        zzakt.zze(this.zze);
        int i5 = -1;
        if ((i & 1) != 0) {
            int i6 = this.zzc;
            if (i6 != 0 && i6 != 1 && i6 != 2) {
                int i7 = this.zzj;
                this.zza.zze();
            }
            zzd(1);
        }
        int i8 = i;
        int i9 = 2;
        while (zzamfVar.zzd() > 0) {
            int i10 = this.zzc;
            if (i10 != 0) {
                int i11 = 0;
                if (i10 != 1) {
                    if (i10 != i9) {
                        int zzd = zzamfVar.zzd();
                        int i12 = this.zzj;
                        if (i12 != i5) {
                            i11 = zzd - i12;
                        }
                        int i13 = zzd;
                        if (i11 > 0) {
                            i13 = zzd - i11;
                            zzamfVar.zzf(zzamfVar.zzg() + i13);
                        }
                        this.zza.zzd(zzamfVar);
                        int i14 = this.zzj;
                        if (i14 != i5) {
                            int i15 = i14 - i13;
                            this.zzj = i15;
                            if (i15 == 0) {
                                this.zza.zze();
                                zzd(1);
                            }
                        }
                    } else {
                        if (zze(zzamfVar, this.zzb.zza, Math.min(10, this.zzi)) && zze(zzamfVar, null, this.zzi)) {
                            this.zzb.zzd(0);
                            if (this.zzf) {
                                this.zzb.zzf(4);
                                int zzh = this.zzb.zzh(3);
                                this.zzb.zzf(1);
                                int zzh2 = this.zzb.zzh(15);
                                this.zzb.zzf(1);
                                long j = zzh;
                                long j2 = zzh2 << 15;
                                long zzh3 = this.zzb.zzh(15);
                                this.zzb.zzf(1);
                                if (!this.zzh && this.zzg) {
                                    this.zzb.zzf(4);
                                    int zzh4 = this.zzb.zzh(3);
                                    this.zzb.zzf(1);
                                    int zzh5 = this.zzb.zzh(15);
                                    this.zzb.zzf(1);
                                    int zzh6 = this.zzb.zzh(15);
                                    this.zzb.zzf(1);
                                    this.zze.zze((zzh4 << 30) | (zzh5 << 15) | zzh6);
                                    this.zzh = true;
                                }
                                r14 = this.zze.zze((j << 30) | j2 | zzh3);
                            } else {
                                r14 = true;
                            }
                            i8 |= true != this.zzk ? 0 : 4;
                            this.zza.zzc(r14 == true ? 1L : 0L, i8);
                            zzd(3);
                            i5 = -1;
                            i9 = 2;
                        }
                    }
                    int i16 = i5;
                    i2 = i9;
                    i3 = i16;
                } else if (zze(zzamfVar, this.zzb.zza, 9)) {
                    this.zzb.zzd(0);
                    if (this.zzb.zzh(24) != 1) {
                        this.zzj = -1;
                        i4 = 0;
                    } else {
                        this.zzb.zzf(8);
                        int zzh7 = this.zzb.zzh(16);
                        this.zzb.zzf(5);
                        this.zzk = this.zzb.zzg();
                        this.zzb.zzf(2);
                        this.zzf = this.zzb.zzg();
                        this.zzg = this.zzb.zzg();
                        this.zzb.zzf(6);
                        int zzh8 = this.zzb.zzh(8);
                        this.zzi = zzh8;
                        if (zzh7 == 0) {
                            this.zzj = -1;
                        } else {
                            int i17 = (zzh7 - 3) - zzh8;
                            this.zzj = i17;
                            if (i17 < 0) {
                                this.zzj = -1;
                            }
                        }
                        i4 = 2;
                    }
                    i2 = 2;
                    zzd(i4);
                    i3 = -1;
                } else {
                    i3 = -1;
                    i2 = 2;
                }
            } else {
                int i18 = i5;
                zzamfVar.zzk(zzamfVar.zzd());
                i2 = i9;
                i3 = i18;
            }
            int i19 = i3;
            i9 = i2;
            i5 = i19;
        }
    }
}

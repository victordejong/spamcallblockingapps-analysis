package com.google.android.gms.internal.ads;

import android.util.Log;
import p007a6.C0028d;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzaei.class */
public final class zzaei implements zzafe {
    private final zzadr zza;
    private final zzfc zzb = new zzfc(new byte[10], 10);
    private int zzc = 0;
    private int zzd;
    private zzfk zze;
    private boolean zzf;
    private boolean zzg;
    private boolean zzh;
    private int zzi;
    private int zzj;
    private boolean zzk;

    public zzaei(zzadr zzadrVar) {
        this.zza = zzadrVar;
    }

    private final void zzd(int i) {
        this.zzc = i;
        this.zzd = 0;
    }

    private final boolean zze(zzfd zzfdVar, byte[] bArr, int i) {
        int min = Math.min(zzfdVar.zza(), i - this.zzd);
        if (min <= 0) {
            return true;
        }
        if (bArr == null) {
            zzfdVar.zzG(min);
        } else {
            zzfdVar.zzB(bArr, this.zzd, min);
        }
        int i2 = this.zzd + min;
        this.zzd = i2;
        return i2 == i;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v117, types: [long] */
    /* JADX WARN: Type inference failed for: r18v0 */
    /* JADX WARN: Type inference failed for: r18v1 */
    /* JADX WARN: Type inference failed for: r18v3 */
    /* JADX WARN: Type inference failed for: r1v42 */
    @Override // com.google.android.gms.internal.ads.zzafe
    public final void zza(zzfd zzfdVar, int i) throws zzbj {
        int i2;
        int i3;
        int i4;
        ?? r18;
        zzdy.zzb(this.zze);
        int i5 = -1;
        int i6 = i;
        if ((i & 1) != 0) {
            int i7 = this.zzc;
            if (i7 != 0 && i7 != 1) {
                if (i7 != 2) {
                    int i8 = this.zzj;
                    if (i8 != -1) {
                        StringBuilder sb = new StringBuilder(59);
                        sb.append("Unexpected start indicator: expected ");
                        sb.append(i8);
                        sb.append(" more bytes");
                        Log.w("PesReader", sb.toString());
                    }
                    this.zza.zzc();
                } else {
                    Log.w("PesReader", "Unexpected start indicator reading extended header");
                }
            }
            zzd(1);
            i6 = i;
            i5 = -1;
        }
        while (zzfdVar.zza() > 0) {
            int i9 = this.zzc;
            if (i9 != 0) {
                int i10 = 0;
                if (i9 == 1) {
                    i4 = i6;
                    if (zze(zzfdVar, this.zzb.zza, 9)) {
                        int i11 = 0;
                        this.zzb.zzh(0);
                        int zzc = this.zzb.zzc(24);
                        if (zzc != 1) {
                            C0028d.m8913g(41, "Unexpected start code prefix: ", zzc, "PesReader");
                            this.zzj = -1;
                        } else {
                            this.zzb.zzj(8);
                            int zzc2 = this.zzb.zzc(16);
                            this.zzb.zzj(5);
                            this.zzk = this.zzb.zzl();
                            this.zzb.zzj(2);
                            this.zzf = this.zzb.zzl();
                            this.zzg = this.zzb.zzl();
                            this.zzb.zzj(6);
                            int zzc3 = this.zzb.zzc(8);
                            this.zzi = zzc3;
                            if (zzc2 == 0) {
                                this.zzj = -1;
                            } else {
                                int i12 = (zzc2 - 3) - zzc3;
                                this.zzj = i12;
                                if (i12 < 0) {
                                    C0028d.m8913g(47, "Found negative packet payload size: ", i12, "PesReader");
                                    this.zzj = -1;
                                }
                            }
                            i11 = 2;
                        }
                        zzd(i11);
                        i3 = -1;
                        i2 = i6;
                    }
                    i3 = -1;
                    i2 = i4;
                } else if (i9 != 2) {
                    int zza = zzfdVar.zza();
                    int i13 = this.zzj;
                    if (i13 != i5) {
                        i10 = zza - i13;
                    }
                    int i14 = zza;
                    if (i10 > 0) {
                        i14 = zza - i10;
                        zzfdVar.zzE(zzfdVar.zzc() + i14);
                    }
                    this.zza.zza(zzfdVar);
                    int i15 = this.zzj;
                    i3 = i5;
                    i2 = i6;
                    if (i15 != i5) {
                        int i16 = i15 - i14;
                        this.zzj = i16;
                        i3 = i5;
                        i2 = i6;
                        if (i16 == 0) {
                            this.zza.zzc();
                            zzd(1);
                            i3 = i5;
                            i2 = i6;
                        }
                    }
                } else {
                    i3 = i5;
                    i2 = i6;
                    if (zze(zzfdVar, this.zzb.zza, Math.min(10, this.zzi))) {
                        i3 = i5;
                        i2 = i6;
                        if (zze(zzfdVar, null, this.zzi)) {
                            this.zzb.zzh(0);
                            if (this.zzf) {
                                this.zzb.zzj(4);
                                int zzc4 = this.zzb.zzc(3);
                                this.zzb.zzj(1);
                                int zzc5 = this.zzb.zzc(15);
                                this.zzb.zzj(1);
                                long j = zzc4;
                                long j2 = zzc5 << 15;
                                long zzc6 = this.zzb.zzc(15);
                                this.zzb.zzj(1);
                                if (!this.zzh && this.zzg) {
                                    this.zzb.zzj(4);
                                    int zzc7 = this.zzb.zzc(3);
                                    this.zzb.zzj(1);
                                    int zzc8 = this.zzb.zzc(15);
                                    this.zzb.zzj(1);
                                    int zzc9 = this.zzb.zzc(15);
                                    this.zzb.zzj(1);
                                    this.zze.zzb((zzc8 << 15) | (zzc7 << 30) | zzc9);
                                    this.zzh = true;
                                }
                                r18 = this.zze.zzb((j << 30) | j2 | zzc6);
                            } else {
                                r18 = true;
                            }
                            i4 = i6 | (true != this.zzk ? 0 : 4);
                            this.zza.zzd(r18 == true ? 1L : 0L, i4);
                            zzd(3);
                            i3 = -1;
                            i2 = i4;
                        }
                    }
                }
            } else {
                zzfdVar.zzG(zzfdVar.zza());
                i2 = i6;
                i3 = i5;
            }
            i5 = i3;
            i6 = i2;
        }
    }

    @Override // com.google.android.gms.internal.ads.zzafe
    public final void zzb(zzfk zzfkVar, zzws zzwsVar, zzafd zzafdVar) {
        this.zze = zzfkVar;
        this.zza.zzb(zzwsVar, zzafdVar);
    }

    @Override // com.google.android.gms.internal.ads.zzafe
    public final void zzc() {
        this.zzc = 0;
        this.zzd = 0;
        this.zzh = false;
        this.zza.zze();
    }
}

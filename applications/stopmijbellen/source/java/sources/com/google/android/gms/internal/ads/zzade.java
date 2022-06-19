package com.google.android.gms.internal.ads;

import java.io.IOException;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Objects;
import org.checkerframework.checker.nullness.qual.EnsuresNonNullIf;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzade.class */
public final class zzade extends zzadc {
    private zzadd zza;
    private int zzb;
    private boolean zzc;
    private zzxx zzd;
    private zzxv zze;

    @Override // com.google.android.gms.internal.ads.zzadc
    public final long zza(zzfd zzfdVar) {
        int i = 0;
        if ((zzfdVar.zzH()[0] & 1) == 1) {
            return -1L;
        }
        byte b = zzfdVar.zzH()[0];
        zzadd zzaddVar = this.zza;
        zzdy.zzb(zzaddVar);
        int i2 = !zzaddVar.zzd[(b >> 1) & (255 >>> (8 - zzaddVar.zze))].zza ? zzaddVar.zza.zze : zzaddVar.zza.zzf;
        if (this.zzc) {
            i = (this.zzb + i2) / 4;
        }
        long j = i;
        if (zzfdVar.zzb() < zzfdVar.zzd() + 4) {
            byte[] copyOf = Arrays.copyOf(zzfdVar.zzH(), zzfdVar.zzd() + 4);
            zzfdVar.zzD(copyOf, copyOf.length);
        } else {
            zzfdVar.zzE(zzfdVar.zzd() + 4);
        }
        byte[] zzH = zzfdVar.zzH();
        zzH[zzfdVar.zzd() - 4] = (byte) (j & 255);
        zzH[zzfdVar.zzd() - 3] = (byte) ((j >>> 8) & 255);
        zzH[zzfdVar.zzd() - 2] = (byte) ((j >>> 16) & 255);
        zzH[zzfdVar.zzd() - 1] = (byte) ((j >>> 24) & 255);
        this.zzc = true;
        this.zzb = i2;
        return j;
    }

    @Override // com.google.android.gms.internal.ads.zzadc
    public final void zzb(boolean z) {
        super.zzb(z);
        if (z) {
            this.zza = null;
            this.zzd = null;
            this.zze = null;
        }
        this.zzb = 0;
        this.zzc = false;
    }

    /* JADX WARN: Type inference failed for: r0v252, types: [long] */
    /* JADX WARN: Type inference failed for: r0v259, types: [long] */
    @Override // com.google.android.gms.internal.ads.zzadc
    @EnsuresNonNullIf(expression = {"#3.format"}, result = false)
    public final boolean zzc(zzfd zzfdVar, long j, zzacz zzaczVar) throws IOException {
        zzadd zzaddVar;
        int i;
        zzxv zzxvVar;
        if (this.zza != null) {
            Objects.requireNonNull(zzaczVar.zza);
            return false;
        }
        zzxx zzxxVar = this.zzd;
        if (zzxxVar == null) {
            zzxy.zzc(1, zzfdVar, false);
            int zzh = zzfdVar.zzh();
            int zzk = zzfdVar.zzk();
            int zzh2 = zzfdVar.zzh();
            int zzg = zzfdVar.zzg();
            if (zzg <= 0) {
                zzg = -1;
            }
            int zzg2 = zzfdVar.zzg();
            if (zzg2 <= 0) {
                zzg2 = -1;
            }
            int zzg3 = zzfdVar.zzg();
            if (zzg3 <= 0) {
                zzg3 = -1;
            }
            int zzk2 = zzfdVar.zzk();
            this.zzd = new zzxx(zzh, zzk, zzh2, zzg, zzg2, zzg3, (int) Math.pow(2.0d, zzk2 & 15), (int) Math.pow(2.0d, (zzk2 & 240) >> 4), 1 == (zzfdVar.zzk() & 1), Arrays.copyOf(zzfdVar.zzH(), zzfdVar.zzd()));
        } else {
            zzxv zzxvVar2 = this.zze;
            if (zzxvVar2 == null) {
                this.zze = zzxy.zzb(zzfdVar, true, true);
            } else {
                byte[] bArr = new byte[zzfdVar.zzd()];
                System.arraycopy(zzfdVar.zzH(), 0, bArr, 0, zzfdVar.zzd());
                int i2 = zzxxVar.zza;
                zzxy.zzc(5, zzfdVar, false);
                int zzk3 = zzfdVar.zzk() + 1;
                zzxu zzxuVar = new zzxu(zzfdVar.zzH());
                zzxuVar.zzc(zzfdVar.zzc() * 8);
                int i3 = 0;
                while (true) {
                    byte[] bArr2 = bArr;
                    if (i3 >= zzk3) {
                        int zzb = zzxuVar.zzb(6);
                        for (int i4 = 0; i4 < zzb + 1; i4++) {
                            if (zzxuVar.zzb(16) != 0) {
                                throw zzbj.zza("placeholder of time domain transforms not zeroed out", null);
                            }
                        }
                        int zzb2 = zzxuVar.zzb(6);
                        for (int i5 = 0; i5 < zzb2 + 1; i5++) {
                            int zzb3 = zzxuVar.zzb(16);
                            if (zzb3 == 0) {
                                zzxuVar.zzc(8);
                                zzxuVar.zzc(16);
                                zzxuVar.zzc(16);
                                zzxuVar.zzc(6);
                                zzxuVar.zzc(8);
                                int zzb4 = zzxuVar.zzb(4);
                                for (int i6 = 0; i6 < zzb4 + 1; i6++) {
                                    zzxuVar.zzc(8);
                                }
                            } else if (zzb3 != 1) {
                                StringBuilder sb = new StringBuilder(52);
                                sb.append("floor type greater than 1 not decodable: ");
                                sb.append(zzb3);
                                throw zzbj.zza(sb.toString(), null);
                            } else {
                                int zzb5 = zzxuVar.zzb(5);
                                int[] iArr = new int[zzb5];
                                int i7 = 0;
                                int i8 = -1;
                                while (true) {
                                    i = i8;
                                    if (i7 >= zzb5) {
                                        break;
                                    }
                                    int zzb6 = zzxuVar.zzb(4);
                                    iArr[i7] = zzb6;
                                    int i9 = i;
                                    if (zzb6 > i) {
                                        i9 = zzb6;
                                    }
                                    i7++;
                                    i8 = i9;
                                }
                                int i10 = i + 1;
                                int[] iArr2 = new int[i10];
                                for (int i11 = 0; i11 < i10; i11++) {
                                    iArr2[i11] = zzxuVar.zzb(3) + 1;
                                    int zzb7 = zzxuVar.zzb(2);
                                    if (zzb7 > 0) {
                                        zzxuVar.zzc(8);
                                    }
                                    for (int i12 = 0; i12 < (1 << zzb7); i12++) {
                                        zzxuVar.zzc(8);
                                    }
                                }
                                zzxuVar.zzc(2);
                                int zzb8 = zzxuVar.zzb(4);
                                int i13 = 0;
                                int i14 = 0;
                                for (int i15 = 0; i15 < zzb5; i15++) {
                                    i13 += iArr2[iArr[i15]];
                                    while (i14 < i13) {
                                        zzxuVar.zzc(zzb8);
                                        i14++;
                                    }
                                }
                            }
                        }
                        int zzb9 = zzxuVar.zzb(6);
                        for (int i16 = 0; i16 < zzb9 + 1; i16++) {
                            if (zzxuVar.zzb(16) > 2) {
                                throw zzbj.zza("residueType greater than 2 is not decodable", null);
                            }
                            zzxuVar.zzc(24);
                            zzxuVar.zzc(24);
                            zzxuVar.zzc(24);
                            int zzb10 = zzxuVar.zzb(6) + 1;
                            zzxuVar.zzc(8);
                            int[] iArr3 = new int[zzb10];
                            for (int i17 = 0; i17 < zzb10; i17++) {
                                iArr3[i17] = ((zzxuVar.zzd() ? zzxuVar.zzb(5) : 0) * 8) + zzxuVar.zzb(3);
                            }
                            for (int i18 = 0; i18 < zzb10; i18++) {
                                for (int i19 = 0; i19 < 8; i19++) {
                                    if ((iArr3[i18] & (1 << i19)) != 0) {
                                        zzxuVar.zzc(8);
                                    }
                                }
                            }
                        }
                        int zzb11 = zzxuVar.zzb(6);
                        for (int i20 = 0; i20 < zzb11 + 1; i20++) {
                            if (zzxuVar.zzb(16) == 0) {
                                int zzb12 = zzxuVar.zzd() ? zzxuVar.zzb(4) + 1 : 1;
                                if (zzxuVar.zzd()) {
                                    int zzb13 = zzxuVar.zzb(8);
                                    for (int i21 = 0; i21 < zzb13 + 1; i21++) {
                                        int i22 = i2 - 1;
                                        zzxuVar.zzc(zzxy.zza(i22));
                                        zzxuVar.zzc(zzxy.zza(i22));
                                    }
                                }
                                if (zzxuVar.zzb(2) != 0) {
                                    throw zzbj.zza("to reserved bits must be zero after mapping coupling steps", null);
                                }
                                if (zzb12 > 1) {
                                    for (int i23 = 0; i23 < i2; i23++) {
                                        zzxuVar.zzc(4);
                                    }
                                }
                                for (int i24 = 0; i24 < zzb12; i24++) {
                                    zzxuVar.zzc(8);
                                    zzxuVar.zzc(8);
                                    zzxuVar.zzc(8);
                                }
                            }
                        }
                        int zzb14 = zzxuVar.zzb(6) + 1;
                        zzxw[] zzxwVarArr = new zzxw[zzb14];
                        for (int i25 = 0; i25 < zzb14; i25++) {
                            zzxwVarArr[i25] = new zzxw(zzxuVar.zzd(), zzxuVar.zzb(16), zzxuVar.zzb(16), zzxuVar.zzb(8));
                        }
                        if (!zzxuVar.zzd()) {
                            throw zzbj.zza("framing bit after modes not set as expected", null);
                        }
                        zzaddVar = new zzadd(zzxxVar, zzxvVar2, bArr2, zzxwVarArr, zzxy.zza(zzb14 - 1));
                    } else if (zzxuVar.zzb(24) != 5653314) {
                        int zza = zzxuVar.zza();
                        StringBuilder sb2 = new StringBuilder(66);
                        sb2.append("expected code book to start with [0x56, 0x43, 0x42] at ");
                        sb2.append(zza);
                        throw zzbj.zza(sb2.toString(), null);
                    } else {
                        int zzb15 = zzxuVar.zzb(16);
                        int zzb16 = zzxuVar.zzb(24);
                        long[] jArr = new long[zzb16];
                        char c = 0;
                        if (zzxuVar.zzd()) {
                            int i26 = zzk3;
                            int zzb17 = zzxuVar.zzb(5) + 1;
                            int i27 = 0;
                            while (true) {
                                zzxvVar = zzxvVar2;
                                bArr = bArr2;
                                zzk3 = i26;
                                if (i27 >= zzb16) {
                                    break;
                                }
                                int zzb18 = zzxuVar.zzb(zzxy.zza(zzb16 - i27));
                                for (int i28 = 0; i28 < zzb18 && i27 < zzb16; i28++) {
                                    jArr[i27] = zzb17;
                                    i27++;
                                }
                                zzb17++;
                            }
                        } else {
                            boolean zzd = zzxuVar.zzd();
                            for (int i29 = 0; i29 < zzb16; i29++) {
                                if (!zzd) {
                                    jArr[i29] = zzxuVar.zzb(5) + 1;
                                } else if (zzxuVar.zzd()) {
                                    jArr[i29] = zzxuVar.zzb(5) + 1;
                                } else {
                                    jArr[i29] = 0;
                                }
                            }
                            zzxvVar = zzxvVar2;
                            bArr = bArr2;
                        }
                        int zzb19 = zzxuVar.zzb(4);
                        if (zzb19 > 2) {
                            StringBuilder sb3 = new StringBuilder(53);
                            sb3.append("lookup type greater than 2 not decodable: ");
                            sb3.append(zzb19);
                            throw zzbj.zza(sb3.toString(), null);
                        }
                        int i30 = zzb19;
                        if (zzb19 != 1) {
                            if (zzb19 == 2) {
                                i30 = 2;
                            } else {
                                i3++;
                                zzxvVar2 = zzxvVar;
                            }
                        }
                        zzxuVar.zzc(32);
                        zzxuVar.zzc(32);
                        int zzb20 = zzxuVar.zzb(4);
                        zzxuVar.zzc(1);
                        if (i30 != 1) {
                            c = zzb16 * zzb15;
                        } else if (zzb15 != 0) {
                            c = (long) Math.floor(Math.pow(zzb16, 1.0d / zzb15));
                        }
                        zzxuVar.zzc((int) ((zzb20 + 1) * c));
                        i3++;
                        zzxvVar2 = zzxvVar;
                    }
                }
            }
        }
        zzaddVar = null;
        this.zza = zzaddVar;
        if (zzaddVar == null) {
            return true;
        }
        zzxx zzxxVar2 = zzaddVar.zza;
        ArrayList arrayList = new ArrayList();
        arrayList.add(zzxxVar2.zzg);
        arrayList.add(zzaddVar.zzc);
        zzz zzzVar = new zzz();
        zzzVar.zzS("audio/vorbis");
        zzzVar.zzv(zzxxVar2.zzd);
        zzzVar.zzO(zzxxVar2.zzc);
        zzzVar.zzw(zzxxVar2.zza);
        zzzVar.zzT(zzxxVar2.zzb);
        zzzVar.zzI(arrayList);
        zzaczVar.zza = zzzVar.zzY();
        return true;
    }

    @Override // com.google.android.gms.internal.ads.zzadc
    public final void zzi(long j) {
        super.zzi(j);
        int i = 0;
        this.zzc = j != 0;
        zzxx zzxxVar = this.zzd;
        if (zzxxVar != null) {
            i = zzxxVar.zze;
        }
        this.zzb = i;
    }
}

package com.google.android.gms.internal.ads;

import java.io.IOException;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Objects;
import org.checkerframework.checker.nullness.qual.EnsuresNonNullIf;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzso.class */
public final class zzso extends zzsm {
    private zzsn zza;
    private int zzb;
    private boolean zzc;
    private zzpb zzd;
    private zzoz zze;

    @Override // com.google.android.gms.internal.ads.zzsm
    public final void zza(boolean z) {
        super.zza(z);
        if (z) {
            this.zza = null;
            this.zzd = null;
            this.zze = null;
        }
        this.zzb = 0;
        this.zzc = false;
    }

    @Override // com.google.android.gms.internal.ads.zzsm
    public final long zzb(zzamf zzamfVar) {
        int i = 0;
        if ((zzamfVar.zzi()[0] & 1) == 1) {
            return -1L;
        }
        byte b = zzamfVar.zzi()[0];
        zzsn zzsnVar = this.zza;
        zzakt.zze(zzsnVar);
        int i2 = !zzsnVar.zzd[(b >> 1) & (255 >>> (8 - zzsnVar.zze))].zza ? zzsnVar.zza.zze : zzsnVar.zza.zzf;
        if (this.zzc) {
            i = (this.zzb + i2) / 4;
        }
        long j = i;
        if (zzamfVar.zzj() < zzamfVar.zze() + 4) {
            byte[] copyOf = Arrays.copyOf(zzamfVar.zzi(), zzamfVar.zze() + 4);
            zzamfVar.zzb(copyOf, copyOf.length);
        } else {
            zzamfVar.zzf(zzamfVar.zze() + 4);
        }
        byte[] zzi = zzamfVar.zzi();
        zzi[zzamfVar.zze() - 4] = (byte) (j & 255);
        zzi[zzamfVar.zze() - 3] = (byte) ((j >>> 8) & 255);
        zzi[zzamfVar.zze() - 2] = (byte) ((j >>> 16) & 255);
        zzi[zzamfVar.zze() - 1] = (byte) ((j >>> 24) & 255);
        this.zzc = true;
        this.zzb = i2;
        return j;
    }

    /* JADX WARN: Type inference failed for: r0v254, types: [long] */
    /* JADX WARN: Type inference failed for: r0v261, types: [long] */
    @Override // com.google.android.gms.internal.ads.zzsm
    @EnsuresNonNullIf(expression = {"#3.format"}, result = false)
    public final boolean zzc(zzamf zzamfVar, long j, zzsk zzskVar) throws IOException {
        zzsn zzsnVar;
        int i;
        zzoz zzozVar;
        byte[] bArr;
        if (this.zza != null) {
            Objects.requireNonNull(zzskVar.zza);
            return false;
        }
        zzpb zzpbVar = this.zzd;
        if (zzpbVar == null) {
            zzpc.zzc(1, zzamfVar, false);
            int zzC = zzamfVar.zzC();
            int zzn = zzamfVar.zzn();
            int zzC2 = zzamfVar.zzC();
            int zzw = zzamfVar.zzw();
            if (zzw <= 0) {
                zzw = -1;
            }
            int zzw2 = zzamfVar.zzw();
            if (zzw2 <= 0) {
                zzw2 = -1;
            }
            int zzw3 = zzamfVar.zzw();
            if (zzw3 <= 0) {
                zzw3 = -1;
            }
            int zzn2 = zzamfVar.zzn();
            this.zzd = new zzpb(zzC, zzn, zzC2, zzw, zzw2, zzw3, (int) Math.pow(2.0d, zzn2 & 15), (int) Math.pow(2.0d, (zzn2 & 240) >> 4), 1 == (zzamfVar.zzn() & 1), Arrays.copyOf(zzamfVar.zzi(), zzamfVar.zze()));
        } else {
            zzoz zzozVar2 = this.zze;
            if (zzozVar2 == null) {
                this.zze = zzpc.zzb(zzamfVar, true, true);
            } else {
                byte[] bArr2 = new byte[zzamfVar.zze()];
                System.arraycopy(zzamfVar.zzi(), 0, bArr2, 0, zzamfVar.zze());
                int i2 = zzpbVar.zza;
                zzpc.zzc(5, zzamfVar, false);
                int zzn3 = zzamfVar.zzn() + 1;
                zzoy zzoyVar = new zzoy(zzamfVar.zzi());
                zzoyVar.zzc(zzamfVar.zzg() * 8);
                int i3 = 0;
                zzoz zzozVar3 = zzozVar2;
                while (true) {
                    int i4 = 5;
                    if (i3 >= zzn3) {
                        int zzb = zzoyVar.zzb(6);
                        for (int i5 = 0; i5 < zzb + 1; i5++) {
                            if (zzoyVar.zzb(16) != 0) {
                                throw zzaha.zzb("placeholder of time domain transforms not zeroed out", null);
                            }
                        }
                        int zzb2 = zzoyVar.zzb(6);
                        for (int i6 = 0; i6 < zzb2 + 1; i6++) {
                            int zzb3 = zzoyVar.zzb(16);
                            if (zzb3 == 0) {
                                zzoyVar.zzc(8);
                                zzoyVar.zzc(16);
                                zzoyVar.zzc(16);
                                zzoyVar.zzc(6);
                                zzoyVar.zzc(8);
                                int zzb4 = zzoyVar.zzb(4);
                                for (int i7 = 0; i7 < zzb4 + 1; i7++) {
                                    zzoyVar.zzc(8);
                                }
                            } else if (zzb3 != 1) {
                                StringBuilder sb = new StringBuilder(52);
                                sb.append("floor type greater than 1 not decodable: ");
                                sb.append(zzb3);
                                throw zzaha.zzb(sb.toString(), null);
                            } else {
                                int zzb5 = zzoyVar.zzb(5);
                                int[] iArr = new int[zzb5];
                                int i8 = 0;
                                int i9 = -1;
                                while (true) {
                                    i = i9;
                                    if (i8 >= zzb5) {
                                        break;
                                    }
                                    int zzb6 = zzoyVar.zzb(4);
                                    iArr[i8] = zzb6;
                                    int i10 = i;
                                    if (zzb6 > i) {
                                        i10 = zzb6;
                                    }
                                    i8++;
                                    i9 = i10;
                                }
                                int i11 = i + 1;
                                int[] iArr2 = new int[i11];
                                for (int i12 = 0; i12 < i11; i12++) {
                                    iArr2[i12] = zzoyVar.zzb(3) + 1;
                                    int zzb7 = zzoyVar.zzb(2);
                                    if (zzb7 > 0) {
                                        zzoyVar.zzc(8);
                                    }
                                    for (int i13 = 0; i13 < (1 << zzb7); i13++) {
                                        zzoyVar.zzc(8);
                                    }
                                }
                                zzoyVar.zzc(2);
                                int zzb8 = zzoyVar.zzb(4);
                                int i14 = 0;
                                int i15 = 0;
                                for (int i16 = 0; i16 < zzb5; i16++) {
                                    i14 += iArr2[iArr[i16]];
                                    while (i15 < i14) {
                                        zzoyVar.zzc(zzb8);
                                        i15++;
                                    }
                                }
                            }
                        }
                        int zzb9 = zzoyVar.zzb(6);
                        for (int i17 = 0; i17 < zzb9 + 1; i17++) {
                            if (zzoyVar.zzb(16) > 2) {
                                throw zzaha.zzb("residueType greater than 2 is not decodable", null);
                            }
                            zzoyVar.zzc(24);
                            zzoyVar.zzc(24);
                            zzoyVar.zzc(24);
                            int zzb10 = zzoyVar.zzb(6) + 1;
                            zzoyVar.zzc(8);
                            int[] iArr3 = new int[zzb10];
                            for (int i18 = 0; i18 < zzb10; i18++) {
                                iArr3[i18] = ((zzoyVar.zza() ? zzoyVar.zzb(5) : 0) * 8) + zzoyVar.zzb(3);
                            }
                            for (int i19 = 0; i19 < zzb10; i19++) {
                                for (int i20 = 0; i20 < 8; i20++) {
                                    if ((iArr3[i19] & (1 << i20)) != 0) {
                                        zzoyVar.zzc(8);
                                    }
                                }
                            }
                        }
                        int zzb11 = zzoyVar.zzb(6);
                        for (int i21 = 0; i21 < zzb11 + 1; i21++) {
                            if (zzoyVar.zzb(16) == 0) {
                                int zzb12 = zzoyVar.zza() ? zzoyVar.zzb(4) + 1 : 1;
                                if (zzoyVar.zza()) {
                                    int zzb13 = zzoyVar.zzb(8);
                                    for (int i22 = 0; i22 < zzb13 + 1; i22++) {
                                        int i23 = i2 - 1;
                                        zzoyVar.zzc(zzpc.zza(i23));
                                        zzoyVar.zzc(zzpc.zza(i23));
                                    }
                                }
                                if (zzoyVar.zzb(2) != 0) {
                                    throw zzaha.zzb("to reserved bits must be zero after mapping coupling steps", null);
                                }
                                if (zzb12 > 1) {
                                    for (int i24 = 0; i24 < i2; i24++) {
                                        zzoyVar.zzc(4);
                                    }
                                }
                                for (int i25 = 0; i25 < zzb12; i25++) {
                                    zzoyVar.zzc(8);
                                    zzoyVar.zzc(8);
                                    zzoyVar.zzc(8);
                                }
                            }
                        }
                        int zzb14 = zzoyVar.zzb(6) + 1;
                        zzpa[] zzpaVarArr = new zzpa[zzb14];
                        for (int i26 = 0; i26 < zzb14; i26++) {
                            zzpaVarArr[i26] = new zzpa(zzoyVar.zza(), zzoyVar.zzb(16), zzoyVar.zzb(16), zzoyVar.zzb(8));
                        }
                        if (!zzoyVar.zza()) {
                            throw zzaha.zzb("framing bit after modes not set as expected", null);
                        }
                        zzsnVar = new zzsn(zzpbVar, zzozVar3, bArr2, zzpaVarArr, zzpc.zza(zzb14 - 1));
                    } else if (zzoyVar.zzb(24) != 5653314) {
                        int zzd = zzoyVar.zzd();
                        StringBuilder sb2 = new StringBuilder(66);
                        sb2.append("expected code book to start with [0x56, 0x43, 0x42] at ");
                        sb2.append(zzd);
                        throw zzaha.zzb(sb2.toString(), null);
                    } else {
                        int zzb15 = zzoyVar.zzb(16);
                        int zzb16 = zzoyVar.zzb(24);
                        long[] jArr = new long[zzb16];
                        char c = 0;
                        if (zzoyVar.zza()) {
                            int i27 = zzn3;
                            int zzb17 = zzoyVar.zzb(5) + 1;
                            int i28 = 0;
                            while (true) {
                                zzozVar = zzozVar3;
                                bArr = bArr2;
                                zzn3 = i27;
                                if (i28 >= zzb16) {
                                    break;
                                }
                                int zzb18 = zzoyVar.zzb(zzpc.zza(zzb16 - i28));
                                for (int i29 = 0; i29 < zzb18 && i28 < zzb16; i29++) {
                                    jArr[i28] = zzb17;
                                    i28++;
                                }
                                zzb17++;
                            }
                        } else {
                            boolean zza = zzoyVar.zza();
                            for (int i30 = 0; i30 < zzb16; i30++) {
                                if (zza) {
                                    if (zzoyVar.zza()) {
                                        jArr[i30] = zzoyVar.zzb(i4) + 1;
                                    } else {
                                        jArr[i30] = 0;
                                    }
                                    i4 = 5;
                                } else {
                                    jArr[i30] = zzoyVar.zzb(i4) + 1;
                                }
                            }
                            zzozVar = zzozVar3;
                            bArr = bArr2;
                        }
                        int zzb19 = zzoyVar.zzb(4);
                        if (zzb19 > 2) {
                            StringBuilder sb3 = new StringBuilder(53);
                            sb3.append("lookup type greater than 2 not decodable: ");
                            sb3.append(zzb19);
                            throw zzaha.zzb(sb3.toString(), null);
                        }
                        int i31 = zzb19;
                        if (zzb19 != 1) {
                            if (zzb19 == 2) {
                                i31 = 2;
                            } else {
                                i3++;
                                zzozVar3 = zzozVar;
                                bArr2 = bArr;
                            }
                        }
                        zzoyVar.zzc(32);
                        zzoyVar.zzc(32);
                        int zzb20 = zzoyVar.zzb(4);
                        zzoyVar.zzc(1);
                        if (i31 != 1) {
                            c = zzb16 * zzb15;
                        } else if (zzb15 != 0) {
                            c = (long) Math.floor(Math.pow(zzb16, 1.0d / zzb15));
                        }
                        zzoyVar.zzc((int) ((zzb20 + 1) * c));
                        i3++;
                        zzozVar3 = zzozVar;
                        bArr2 = bArr;
                    }
                }
            }
        }
        zzsnVar = null;
        this.zza = zzsnVar;
        if (zzsnVar == null) {
            return true;
        }
        zzpb zzpbVar2 = zzsnVar.zza;
        ArrayList arrayList = new ArrayList();
        arrayList.add(zzpbVar2.zzg);
        arrayList.add(zzsnVar.zzc);
        zzaft zzaftVar = new zzaft();
        zzaftVar.zzN("audio/vorbis");
        zzaftVar.zzI(zzpbVar2.zzd);
        zzaftVar.zzJ(zzpbVar2.zzc);
        zzaftVar.zzaa(zzpbVar2.zza);
        zzaftVar.zzab(zzpbVar2.zzb);
        zzaftVar.zzP(arrayList);
        zzskVar.zza = zzaftVar.zzah();
        return true;
    }

    @Override // com.google.android.gms.internal.ads.zzsm
    public final void zzj(long j) {
        super.zzj(j);
        int i = 0;
        this.zzc = j != 0;
        zzpb zzpbVar = this.zzd;
        if (zzpbVar != null) {
            i = zzpbVar.zze;
        }
        this.zzb = i;
    }
}

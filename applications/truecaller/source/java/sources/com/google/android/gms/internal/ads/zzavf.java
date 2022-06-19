package com.google.android.gms.internal.ads;

import java.util.ArrayList;
import java.util.List;
import p193e.p1432d.p1439c.p1440a.C22128a;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzavf.class */
public final class zzavf {
    public final List<byte[]> zza;
    public final int zzb;
    public final float zzc;

    private zzavf(List<byte[]> list, int i, int i2, int i3, float f) {
        this.zza = list;
        this.zzb = i;
        this.zzc = f;
    }

    public static zzavf zza(zzaux zzauxVar) throws zzanp {
        float f;
        int i;
        int i2;
        int i3;
        int i4;
        int i5;
        int i6;
        try {
            zzauxVar.zzj(4);
            int zzl = (zzauxVar.zzl() & 3) + 1;
            if (zzl == 3) {
                throw new IllegalStateException();
            }
            ArrayList arrayList = new ArrayList();
            int zzl2 = zzauxVar.zzl() & 31;
            for (int i7 = 0; i7 < zzl2; i7++) {
                arrayList.add(zzb(zzauxVar));
            }
            int zzl3 = zzauxVar.zzl();
            for (int i8 = 0; i8 < zzl3; i8++) {
                arrayList.add(zzb(zzauxVar));
            }
            if (zzl2 > 0) {
                zzauy zzauyVar = new zzauy((byte[]) arrayList.get(0), zzl, ((byte[]) arrayList.get(0)).length);
                zzauyVar.zza(8);
                int zzc = zzauyVar.zzc(8);
                zzauyVar.zza(16);
                zzauyVar.zzd();
                if (zzc == 100 || zzc == 110 || zzc == 122 || zzc == 244 || zzc == 44 || zzc == 83 || zzc == 86 || zzc == 118 || zzc == 128 || zzc == 138) {
                    int zzd = zzauyVar.zzd();
                    if (zzd == 3) {
                        zzauyVar.zzb();
                        i6 = 3;
                    } else {
                        i6 = zzd;
                    }
                    zzauyVar.zzd();
                    zzauyVar.zzd();
                    zzauyVar.zza(1);
                    i3 = zzd;
                    if (zzauyVar.zzb()) {
                        int i9 = i6 != 3 ? 8 : 12;
                        int i10 = 0;
                        while (true) {
                            i3 = zzd;
                            if (i10 >= i9) {
                                break;
                            }
                            if (zzauyVar.zzb()) {
                                int i11 = i10 < 6 ? 16 : 64;
                                int i12 = 8;
                                int i13 = 8;
                                int i14 = 0;
                                while (i14 < i11) {
                                    int i15 = i12;
                                    if (i12 != 0) {
                                        i15 = ((zzauyVar.zze() + i13) + 256) % 256;
                                    }
                                    if (i15 != 0) {
                                        i13 = i15;
                                    }
                                    i14++;
                                    i12 = i15;
                                }
                            }
                            i10++;
                        }
                    }
                } else {
                    i3 = 1;
                }
                zzauyVar.zzd();
                int zzd2 = zzauyVar.zzd();
                if (zzd2 == 0) {
                    zzauyVar.zzd();
                } else if (zzd2 == 1) {
                    zzauyVar.zzb();
                    zzauyVar.zze();
                    zzauyVar.zze();
                    long zzd3 = zzauyVar.zzd();
                    for (int i16 = 0; i16 < zzd3; i16++) {
                        zzauyVar.zzd();
                    }
                }
                zzauyVar.zzd();
                zzauyVar.zza(1);
                int zzd4 = zzauyVar.zzd();
                int zzd5 = zzauyVar.zzd();
                boolean zzb = zzauyVar.zzb();
                int i17 = 2 - (zzb ? 1 : 0);
                if (!zzb) {
                    zzauyVar.zza(1);
                }
                zzauyVar.zza(1);
                int i18 = (zzd4 + 1) * 16;
                int i19 = (zzd5 + 1) * i17 * 16;
                i2 = i18;
                int i20 = i19;
                if (zzauyVar.zzb()) {
                    int zzd6 = zzauyVar.zzd();
                    int zzd7 = zzauyVar.zzd();
                    int zzd8 = zzauyVar.zzd();
                    int zzd9 = zzauyVar.zzd();
                    if (i3 == 0) {
                        i4 = 1;
                        i5 = i17;
                    } else {
                        int i21 = i3 == 3 ? 1 : 2;
                        int i22 = 1;
                        if (i3 == 1) {
                            i22 = 2;
                        }
                        int i23 = i17 * i22;
                        i4 = i21;
                        i5 = i23;
                    }
                    i2 = C22128a.m8592n1(zzd6, zzd7, i4, i18);
                    i20 = C22128a.m8592n1(zzd8, zzd9, i5, i19);
                }
                f = 1.0f;
                if (zzauyVar.zzb()) {
                    f = 1.0f;
                    if (zzauyVar.zzb()) {
                        int zzc2 = zzauyVar.zzc(8);
                        if (zzc2 == 255) {
                            int zzc3 = zzauyVar.zzc(16);
                            int zzc4 = zzauyVar.zzc(16);
                            f = 1.0f;
                            if (zzc3 != 0) {
                                f = 1.0f;
                                if (zzc4 != 0) {
                                    f = zzc3 / zzc4;
                                }
                            }
                        } else {
                            f = 1.0f;
                            if (zzc2 < 17) {
                                f = zzauv.zzb[zzc2];
                            }
                        }
                    }
                }
                i = i20;
            } else {
                i = -1;
                f = 1.0f;
                i2 = -1;
            }
            return new zzavf(arrayList, zzl, i2, i, f);
        } catch (ArrayIndexOutOfBoundsException e) {
            throw new zzanp("Error parsing AVC config", e);
        }
    }

    private static byte[] zzb(zzaux zzauxVar) {
        int zzm = zzauxVar.zzm();
        int zzg = zzauxVar.zzg();
        zzauxVar.zzj(zzm);
        return zzauq.zzb(zzauxVar.zza, zzg, zzm);
    }
}

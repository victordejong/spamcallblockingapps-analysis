package com.google.android.gms.internal.ads;

import android.util.Log;
import java.util.ArrayList;
import java.util.List;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzaxc.class */
public final class zzaxc {
    public final List<byte[]> zza;
    public final int zzb;
    public final float zzc;

    private zzaxc(List<byte[]> list, int i, int i2, int i3, float f) {
        this.zza = list;
        this.zzb = i;
        this.zzc = f;
    }

    public static zzaxc zza(zzawu zzawuVar) throws zzapj {
        float f;
        int i;
        int i2;
        int i3;
        int i4;
        int i5;
        int i6;
        try {
            zzawuVar.zzw(4);
            int zzg = (zzawuVar.zzg() & 3) + 1;
            if (zzg == 3) {
                throw new IllegalStateException();
            }
            ArrayList arrayList = new ArrayList();
            int zzg2 = zzawuVar.zzg() & 31;
            for (int i7 = 0; i7 < zzg2; i7++) {
                arrayList.add(zzb(zzawuVar));
            }
            int zzg3 = zzawuVar.zzg();
            for (int i8 = 0; i8 < zzg3; i8++) {
                arrayList.add(zzb(zzawuVar));
            }
            if (zzg2 > 0) {
                zzawv zzawvVar = new zzawv((byte[]) arrayList.get(0), zzg, ((byte[]) arrayList.get(0)).length);
                zzawvVar.zzd(8);
                int zza = zzawvVar.zza(8);
                zzawvVar.zzd(16);
                zzawvVar.zzc();
                if (zza == 100 || zza == 110 || zza == 122 || zza == 244 || zza == 44 || zza == 83 || zza == 86 || zza == 118 || zza == 128 || zza == 138) {
                    int zzc = zzawvVar.zzc();
                    if (zzc == 3) {
                        zzawvVar.zze();
                        i6 = 3;
                    } else {
                        i6 = zzc;
                    }
                    zzawvVar.zzc();
                    zzawvVar.zzc();
                    zzawvVar.zzd(1);
                    i3 = zzc;
                    if (zzawvVar.zze()) {
                        int i9 = i6 != 3 ? 8 : 12;
                        int i10 = 0;
                        while (true) {
                            i3 = zzc;
                            if (i10 >= i9) {
                                break;
                            }
                            if (zzawvVar.zze()) {
                                int i11 = i10 < 6 ? 16 : 64;
                                int i12 = 0;
                                int i13 = 8;
                                int i14 = 8;
                                while (i12 < i11) {
                                    int i15 = i13;
                                    if (i13 != 0) {
                                        i15 = ((zzawvVar.zzb() + i14) + 256) % 256;
                                    }
                                    if (i15 != 0) {
                                        i14 = i15;
                                    }
                                    i12++;
                                    i13 = i15;
                                }
                            }
                            i10++;
                        }
                    }
                } else {
                    i3 = 1;
                }
                zzawvVar.zzc();
                int zzc2 = zzawvVar.zzc();
                if (zzc2 == 0) {
                    zzawvVar.zzc();
                } else if (zzc2 == 1) {
                    zzawvVar.zze();
                    zzawvVar.zzb();
                    zzawvVar.zzb();
                    long zzc3 = zzawvVar.zzc();
                    for (int i16 = 0; i16 < zzc3; i16++) {
                        zzawvVar.zzc();
                    }
                }
                zzawvVar.zzc();
                zzawvVar.zzd(1);
                int zzc4 = zzawvVar.zzc();
                int zzc5 = zzawvVar.zzc();
                boolean zze = zzawvVar.zze();
                int i17 = 2 - (zze ? 1 : 0);
                if (!zze) {
                    zzawvVar.zzd(1);
                }
                zzawvVar.zzd(1);
                int i18 = (zzc4 + 1) * 16;
                int i19 = (zzc5 + 1) * i17 * 16;
                i = i18;
                i2 = i19;
                if (zzawvVar.zze()) {
                    int zzc6 = zzawvVar.zzc();
                    int zzc7 = zzawvVar.zzc();
                    int zzc8 = zzawvVar.zzc();
                    int zzc9 = zzawvVar.zzc();
                    if (i3 == 0) {
                        i4 = 1;
                        i5 = i17;
                    } else {
                        int i20 = i3 == 3 ? 1 : 2;
                        int i21 = 1;
                        if (i3 == 1) {
                            i21 = 2;
                        }
                        int i22 = i17 * i21;
                        i4 = i20;
                        i5 = i22;
                    }
                    i = i18 - ((zzc6 + zzc7) * i4);
                    i2 = i19 - ((zzc8 + zzc9) * i5);
                }
                f = 1.0f;
                if (zzawvVar.zze()) {
                    f = 1.0f;
                    if (zzawvVar.zze()) {
                        int zza2 = zzawvVar.zza(8);
                        if (zza2 == 255) {
                            int zza3 = zzawvVar.zza(16);
                            int zza4 = zzawvVar.zza(16);
                            f = 1.0f;
                            if (zza3 != 0) {
                                f = 1.0f;
                                if (zza4 != 0) {
                                    f = zza3 / zza4;
                                }
                            }
                        } else if (zza2 < 17) {
                            f = zzaws.zzb[zza2];
                        } else {
                            StringBuilder sb = new StringBuilder(46);
                            sb.append("Unexpected aspect_ratio_idc value: ");
                            sb.append(zza2);
                            Log.w("NalUnitUtil", sb.toString());
                            f = 1.0f;
                        }
                    }
                }
            } else {
                i = -1;
                i2 = -1;
                f = 1.0f;
            }
            return new zzaxc(arrayList, zzg, i, i2, f);
        } catch (ArrayIndexOutOfBoundsException e) {
            throw new zzapj("Error parsing AVC config", e);
        }
    }

    private static byte[] zzb(zzawu zzawuVar) {
        int zzj = zzawuVar.zzj();
        int zzc = zzawuVar.zzc();
        zzawuVar.zzw(zzj);
        return zzawn.zzb(zzawuVar.zza, zzc, zzj);
    }
}

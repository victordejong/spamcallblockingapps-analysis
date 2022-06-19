package com.google.android.gms.internal.ads;

import io.agora.rtc.Constants;
import io.agora.rtc.internal.RtcEngineEvent;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzna.class */
public final class zzna {
    public static final /* synthetic */ int zza = 0;
    private static final int[] zzb = {1, 2, 3, 6};
    private static final int[] zzc = {48000, 44100, 32000};
    private static final int[] zzd = {24000, 22050, 16000};
    private static final int[] zze = {2, 1, 2, 3, 3, 4, 4, 5};
    private static final int[] zzf = {32, 40, 48, 56, 64, 80, 96, 112, 128, Constants.ERR_ALREADY_IN_RECORDING, 192, 224, 256, 320, 384, 448, 512, 576, 640};
    private static final int[] zzg = {69, 87, 104, 121, 139, 174, 208, 243, 278, 348, 417, 487, 557, 696, 835, 975, RtcEngineEvent.EvtType.EVT_JOIN_PUBILSHER_RESPONSE, 1253, 1393};

    public static zzafv zza(zzamf zzamfVar, String str, String str2, zzn zznVar) {
        int i = zzc[(zzamfVar.zzn() & 192) >> 6];
        int zzn = zzamfVar.zzn();
        int i2 = zze[(zzn & 56) >> 3];
        int i3 = i2;
        if ((zzn & 4) != 0) {
            i3 = i2 + 1;
        }
        zzaft zzaftVar = new zzaft();
        zzaftVar.zzD(str);
        zzaftVar.zzN("audio/ac3");
        zzaftVar.zzaa(i3);
        zzaftVar.zzab(i);
        zzaftVar.zzQ(zznVar);
        zzaftVar.zzG(str2);
        return zzaftVar.zzah();
    }

    public static zzafv zzb(zzamf zzamfVar, String str, String str2, zzn zznVar) {
        zzamfVar.zzk(2);
        int i = zzc[(zzamfVar.zzn() & 192) >> 6];
        int zzn = zzamfVar.zzn();
        int i2 = zze[(zzn & 14) >> 1];
        int i3 = i2;
        if ((zzn & 1) != 0) {
            i3 = i2 + 1;
        }
        int i4 = i3;
        if (((zzamfVar.zzn() & 30) >> 1) > 0) {
            i4 = i3;
            if ((2 & zzamfVar.zzn()) != 0) {
                i4 = i3 + 2;
            }
        }
        String str3 = (zzamfVar.zzd() <= 0 || (zzamfVar.zzn() & 1) == 0) ? "audio/eac3" : "audio/eac3-joc";
        zzaft zzaftVar = new zzaft();
        zzaftVar.zzD(str);
        zzaftVar.zzN(str3);
        zzaftVar.zzaa(i4);
        zzaftVar.zzab(i);
        zzaftVar.zzQ(zznVar);
        zzaftVar.zzG(str2);
        return zzaftVar.zzah();
    }

    public static zzmz zzc(zzame zzameVar) {
        int i;
        int i2;
        int i3;
        int i4;
        int i5;
        String str;
        int i6;
        int i7;
        int i8;
        int i9;
        int i10;
        int zzc2 = zzameVar.zzc();
        zzameVar.zzf(40);
        int zzh = zzameVar.zzh(5);
        zzameVar.zzd(zzc2);
        if (zzh > 10) {
            zzameVar.zzf(16);
            int zzh2 = zzameVar.zzh(2);
            int i11 = zzh2 != 0 ? zzh2 != 1 ? zzh2 != 2 ? -1 : 2 : 1 : 0;
            zzameVar.zzf(3);
            int zzh3 = zzameVar.zzh(11) + 1;
            int i12 = zzh3 + zzh3;
            int zzh4 = zzameVar.zzh(2);
            if (zzh4 == 3) {
                i8 = zzd[zzameVar.zzh(2)];
                i7 = 6;
                i6 = 3;
            } else {
                i6 = zzameVar.zzh(2);
                i7 = zzb[i6];
                i8 = zzc[zzh4];
            }
            int i13 = i7 * 256;
            int zzh5 = zzameVar.zzh(3);
            boolean zzg2 = zzameVar.zzg();
            int i14 = zze[zzh5] + (zzg2 ? 1 : 0);
            zzameVar.zzf(10);
            if (zzameVar.zzg()) {
                zzameVar.zzf(8);
            }
            if (zzh5 == 0) {
                zzameVar.zzf(5);
                if (zzameVar.zzg()) {
                    zzameVar.zzf(8);
                }
                i9 = 0;
                zzh5 = 0;
            } else {
                i9 = zzh5;
            }
            if (i11 == 1) {
                if (zzameVar.zzg()) {
                    zzameVar.zzf(16);
                }
                i10 = 1;
            } else {
                i10 = i11;
            }
            int i15 = i10;
            int i16 = i6;
            if (zzameVar.zzg()) {
                if (i9 > 2) {
                    zzameVar.zzf(2);
                }
                if ((i9 & 1) != 0 && i9 > 2) {
                    zzameVar.zzf(6);
                }
                if ((i9 & 4) != 0) {
                    zzameVar.zzf(6);
                }
                if (zzg2 && zzameVar.zzg()) {
                    zzameVar.zzf(5);
                }
                i15 = i10;
                i16 = i6;
                if (i10 == 0) {
                    if (zzameVar.zzg()) {
                        zzameVar.zzf(6);
                    }
                    if (i9 == 0 && zzameVar.zzg()) {
                        zzameVar.zzf(6);
                    }
                    if (zzameVar.zzg()) {
                        zzameVar.zzf(6);
                    }
                    int zzh6 = zzameVar.zzh(2);
                    if (zzh6 == 1) {
                        zzameVar.zzf(5);
                    } else if (zzh6 == 2) {
                        zzameVar.zzf(12);
                    } else if (zzh6 == 3) {
                        int zzh7 = zzameVar.zzh(5);
                        if (zzameVar.zzg()) {
                            zzameVar.zzf(5);
                            if (zzameVar.zzg()) {
                                zzameVar.zzf(4);
                            }
                            if (zzameVar.zzg()) {
                                zzameVar.zzf(4);
                            }
                            if (zzameVar.zzg()) {
                                zzameVar.zzf(4);
                            }
                            if (zzameVar.zzg()) {
                                zzameVar.zzf(4);
                            }
                            if (zzameVar.zzg()) {
                                zzameVar.zzf(4);
                            }
                            if (zzameVar.zzg()) {
                                zzameVar.zzf(4);
                            }
                            if (zzameVar.zzg()) {
                                zzameVar.zzf(4);
                            }
                            if (zzameVar.zzg()) {
                                if (zzameVar.zzg()) {
                                    zzameVar.zzf(4);
                                }
                                if (zzameVar.zzg()) {
                                    zzameVar.zzf(4);
                                }
                            }
                        }
                        if (zzameVar.zzg()) {
                            zzameVar.zzf(5);
                            if (zzameVar.zzg()) {
                                zzameVar.zzf(7);
                                if (zzameVar.zzg()) {
                                    zzameVar.zzf(8);
                                }
                            }
                        }
                        zzameVar.zzf((zzh7 + 2) * 8);
                        zzameVar.zzj();
                    }
                    if (i9 < 2) {
                        if (zzameVar.zzg()) {
                            zzameVar.zzf(14);
                        }
                        if (zzh5 == 0 && zzameVar.zzg()) {
                            zzameVar.zzf(14);
                        }
                    }
                    if (zzameVar.zzg()) {
                        if (i6 == 0) {
                            zzameVar.zzf(5);
                            i15 = 0;
                            i16 = 0;
                        } else {
                            for (int i17 = 0; i17 < i7; i17++) {
                                if (zzameVar.zzg()) {
                                    zzameVar.zzf(5);
                                }
                            }
                        }
                    }
                    i15 = 0;
                    i16 = i6;
                }
            }
            if (zzameVar.zzg()) {
                zzameVar.zzf(5);
                int i18 = i9;
                if (i9 == 2) {
                    zzameVar.zzf(4);
                    i18 = 2;
                }
                if (i18 >= 6) {
                    zzameVar.zzf(2);
                }
                if (zzameVar.zzg()) {
                    zzameVar.zzf(8);
                }
                if (i18 == 0 && zzameVar.zzg()) {
                    zzameVar.zzf(8);
                }
                if (zzh4 < 3) {
                    zzameVar.zze();
                }
            }
            if (i15 == 0 && i16 != 3) {
                zzameVar.zze();
            }
            if (i15 == 2 && (i16 == 3 || zzameVar.zzg())) {
                zzameVar.zzf(6);
            }
            str = (zzameVar.zzg() && zzameVar.zzh(6) == 1 && zzameVar.zzh(8) == 1) ? "audio/eac3-joc" : "audio/eac3";
            i3 = i11;
            i2 = i12;
            i5 = i13;
            i = i8;
            i4 = i14;
        } else {
            zzameVar.zzf(32);
            int zzh8 = zzameVar.zzh(2);
            String str2 = zzh8 == 3 ? null : "audio/ac3";
            i2 = zze(zzh8, zzameVar.zzh(6));
            zzameVar.zzf(8);
            int zzh9 = zzameVar.zzh(3);
            if ((zzh9 & 1) != 0 && zzh9 != 1) {
                zzameVar.zzf(2);
            }
            if ((zzh9 & 4) != 0) {
                zzameVar.zzf(2);
            }
            if (zzh9 == 2) {
                zzameVar.zzf(2);
            }
            int i19 = zzh8 < 3 ? zzc[zzh8] : -1;
            i4 = zze[zzh9] + (zzameVar.zzg() ? 1 : 0);
            str = str2;
            i = i19;
            i5 = 1536;
            i3 = -1;
        }
        return new zzmz(str, i3, i4, i, i2, i5, null);
    }

    public static int zzd(byte[] bArr) {
        if (bArr.length < 6) {
            return -1;
        }
        if (((bArr[5] & 248) >> 3) <= 10) {
            byte b = bArr[4];
            return zze((b & 192) >> 6, b & 63);
        }
        int i = ((bArr[3] & 255) | ((bArr[2] & 7) << 8)) + 1;
        return i + i;
    }

    private static int zze(int i, int i2) {
        int i3 = i2 / 2;
        if (i < 0 || i >= 3 || i2 < 0 || i3 >= 19) {
            return -1;
        }
        int i4 = zzc[i];
        if (i4 == 44100) {
            int i5 = zzg[i3] + (i2 & 1);
            return i5 + i5;
        }
        int i6 = zzf[i3];
        return i4 == 32000 ? i6 * 6 : i6 * 4;
    }
}

package com.google.android.gms.internal.ads;

import com.google.android.gms.ads.AdRequest;
import me.zhanghai.android.materialprogressbar.C3681R;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzvv.class */
public final class zzvv {
    public static final /* synthetic */ int zza = 0;
    private static final int[] zzb = {1, 2, 3, 6};
    private static final int[] zzc = {48000, 44100, 32000};
    private static final int[] zzd = {24000, 22050, 16000};
    private static final int[] zze = {2, 1, 2, 3, 3, 4, 4, 5};
    private static final int[] zzf = {32, 40, 48, 56, 64, 80, 96, C3681R.styleable.AppCompatTheme_toolbarNavigationButtonStyle, 128, 160, 192, 224, 256, 320, 384, 448, AdRequest.MAX_CONTENT_URL_LENGTH, 576, 640};
    private static final int[] zzg = {69, 87, 104, C3681R.styleable.AppCompatTheme_windowFixedHeightMinor, 139, 174, 208, 243, 278, 348, 417, 487, 557, 696, 835, 975, 1114, 1253, 1393};

    public static int zza(byte[] bArr) {
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

    public static zzab zzb(zzfd zzfdVar, String str, String str2, zzs zzsVar) {
        int i = zzc[(zzfdVar.zzk() & 192) >> 6];
        int zzk = zzfdVar.zzk();
        int i2 = zze[(zzk & 56) >> 3];
        int i3 = i2;
        if ((zzk & 4) != 0) {
            i3 = i2 + 1;
        }
        zzz zzzVar = new zzz();
        zzzVar.zzH(str);
        zzzVar.zzS("audio/ac3");
        zzzVar.zzw(i3);
        zzzVar.zzT(i);
        zzzVar.zzB(zzsVar);
        zzzVar.zzK(str2);
        return zzzVar.zzY();
    }

    public static zzab zzc(zzfd zzfdVar, String str, String str2, zzs zzsVar) {
        zzfdVar.zzG(2);
        int i = zzc[(zzfdVar.zzk() & 192) >> 6];
        int zzk = zzfdVar.zzk();
        int i2 = zze[(zzk & 14) >> 1];
        int i3 = i2;
        if ((zzk & 1) != 0) {
            i3 = i2 + 1;
        }
        int i4 = i3;
        if (((zzfdVar.zzk() & 30) >> 1) > 0) {
            i4 = i3;
            if ((2 & zzfdVar.zzk()) != 0) {
                i4 = i3 + 2;
            }
        }
        String str3 = (zzfdVar.zza() <= 0 || (zzfdVar.zzk() & 1) == 0) ? "audio/eac3" : "audio/eac3-joc";
        zzz zzzVar = new zzz();
        zzzVar.zzH(str);
        zzzVar.zzS(str3);
        zzzVar.zzw(i4);
        zzzVar.zzT(i);
        zzzVar.zzB(zzsVar);
        zzzVar.zzK(str2);
        return zzzVar.zzY();
    }

    public static zzvu zzd(zzfc zzfcVar) {
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
        int zzb2 = zzfcVar.zzb();
        zzfcVar.zzj(40);
        int zzc2 = zzfcVar.zzc(5);
        zzfcVar.zzh(zzb2);
        int i11 = -1;
        if (zzc2 > 10) {
            zzfcVar.zzj(16);
            int zzc3 = zzfcVar.zzc(2);
            if (zzc3 == 0) {
                i11 = 0;
            } else if (zzc3 == 1) {
                i11 = 1;
            } else if (zzc3 == 2) {
                i11 = 2;
            }
            zzfcVar.zzj(3);
            int zzc4 = zzfcVar.zzc(11) + 1;
            int zzc5 = zzfcVar.zzc(2);
            if (zzc5 == 3) {
                i8 = zzd[zzfcVar.zzc(2)];
                i7 = 3;
                i6 = 6;
            } else {
                i7 = zzfcVar.zzc(2);
                i6 = zzb[i7];
                i8 = zzc[zzc5];
            }
            int zzc6 = zzfcVar.zzc(3);
            boolean zzl = zzfcVar.zzl();
            int i12 = zze[zzc6];
            zzfcVar.zzj(10);
            if (zzfcVar.zzl()) {
                zzfcVar.zzj(8);
            }
            if (zzc6 == 0) {
                zzfcVar.zzj(5);
                if (zzfcVar.zzl()) {
                    zzfcVar.zzj(8);
                }
                i9 = 0;
                zzc6 = 0;
            } else {
                i9 = zzc6;
            }
            if (i11 == 1) {
                if (zzfcVar.zzl()) {
                    zzfcVar.zzj(16);
                }
                i10 = 1;
            } else {
                i10 = i11;
            }
            int i13 = i10;
            int i14 = i7;
            if (zzfcVar.zzl()) {
                if (i9 > 2) {
                    zzfcVar.zzj(2);
                }
                if ((i9 & 1) != 0 && i9 > 2) {
                    zzfcVar.zzj(6);
                }
                if ((i9 & 4) != 0) {
                    zzfcVar.zzj(6);
                }
                if (zzl && zzfcVar.zzl()) {
                    zzfcVar.zzj(5);
                }
                i13 = i10;
                i14 = i7;
                if (i10 == 0) {
                    if (zzfcVar.zzl()) {
                        zzfcVar.zzj(6);
                    }
                    if (i9 == 0 && zzfcVar.zzl()) {
                        zzfcVar.zzj(6);
                    }
                    if (zzfcVar.zzl()) {
                        zzfcVar.zzj(6);
                    }
                    int zzc7 = zzfcVar.zzc(2);
                    if (zzc7 == 1) {
                        zzfcVar.zzj(5);
                    } else if (zzc7 == 2) {
                        zzfcVar.zzj(12);
                    } else if (zzc7 == 3) {
                        int zzc8 = zzfcVar.zzc(5);
                        if (zzfcVar.zzl()) {
                            zzfcVar.zzj(5);
                            if (zzfcVar.zzl()) {
                                zzfcVar.zzj(4);
                            }
                            if (zzfcVar.zzl()) {
                                zzfcVar.zzj(4);
                            }
                            if (zzfcVar.zzl()) {
                                zzfcVar.zzj(4);
                            }
                            if (zzfcVar.zzl()) {
                                zzfcVar.zzj(4);
                            }
                            if (zzfcVar.zzl()) {
                                zzfcVar.zzj(4);
                            }
                            if (zzfcVar.zzl()) {
                                zzfcVar.zzj(4);
                            }
                            if (zzfcVar.zzl()) {
                                zzfcVar.zzj(4);
                            }
                            if (zzfcVar.zzl()) {
                                if (zzfcVar.zzl()) {
                                    zzfcVar.zzj(4);
                                }
                                if (zzfcVar.zzl()) {
                                    zzfcVar.zzj(4);
                                }
                            }
                        }
                        if (zzfcVar.zzl()) {
                            zzfcVar.zzj(5);
                            if (zzfcVar.zzl()) {
                                zzfcVar.zzj(7);
                                if (zzfcVar.zzl()) {
                                    zzfcVar.zzj(8);
                                }
                            }
                        }
                        zzfcVar.zzj((zzc8 + 2) * 8);
                        zzfcVar.zzd();
                    }
                    if (i9 < 2) {
                        if (zzfcVar.zzl()) {
                            zzfcVar.zzj(14);
                        }
                        if (zzc6 == 0 && zzfcVar.zzl()) {
                            zzfcVar.zzj(14);
                        }
                    }
                    if (zzfcVar.zzl()) {
                        if (i7 == 0) {
                            zzfcVar.zzj(5);
                            i13 = 0;
                            i14 = 0;
                        } else {
                            for (int i15 = 0; i15 < i6; i15++) {
                                if (zzfcVar.zzl()) {
                                    zzfcVar.zzj(5);
                                }
                            }
                        }
                    }
                    i13 = 0;
                    i14 = i7;
                }
            }
            if (zzfcVar.zzl()) {
                zzfcVar.zzj(5);
                int i16 = i9;
                if (i9 == 2) {
                    zzfcVar.zzj(4);
                    i16 = 2;
                }
                if (i16 >= 6) {
                    zzfcVar.zzj(2);
                }
                if (zzfcVar.zzl()) {
                    zzfcVar.zzj(8);
                }
                if (i16 == 0 && zzfcVar.zzl()) {
                    zzfcVar.zzj(8);
                }
                if (zzc5 < 3) {
                    zzfcVar.zzi();
                }
            }
            if (i13 == 0 && i14 != 3) {
                zzfcVar.zzi();
            }
            if (i13 == 2 && (i14 == 3 || zzfcVar.zzl())) {
                zzfcVar.zzj(6);
            }
            str = (zzfcVar.zzl() && zzfcVar.zzc(6) == 1 && zzfcVar.zzc(8) == 1) ? "audio/eac3-joc" : "audio/eac3";
            i = i12 + (zzl ? 1 : 0);
            i2 = i11;
            i3 = i8;
            i5 = zzc4 + zzc4;
            i4 = i6 * 256;
        } else {
            zzfcVar.zzj(32);
            int zzc9 = zzfcVar.zzc(2);
            String str2 = zzc9 == 3 ? null : "audio/ac3";
            int zze2 = zze(zzc9, zzfcVar.zzc(6));
            zzfcVar.zzj(8);
            int zzc10 = zzfcVar.zzc(3);
            if ((zzc10 & 1) != 0 && zzc10 != 1) {
                zzfcVar.zzj(2);
            }
            if ((zzc10 & 4) != 0) {
                zzfcVar.zzj(2);
            }
            if (zzc10 == 2) {
                zzfcVar.zzj(2);
            }
            int i17 = zzc9 < 3 ? zzc[zzc9] : -1;
            boolean zzl2 = zzfcVar.zzl();
            str = str2;
            i3 = i17;
            i = zze[zzc10] + (zzl2 ? 1 : 0);
            i4 = 1536;
            i5 = zze2;
            i2 = -1;
        }
        return new zzvu(str, i2, i, i3, i5, i4, null);
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

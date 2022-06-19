package com.google.android.gms.internal.ads;

import java.io.UnsupportedEncodingException;
import java.util.Arrays;
import java.util.Locale;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzzt.class */
public final class zzzt {
    public static final zzzr zza = zzzq.zza;

    /* JADX WARN: Removed duplicated region for block: B:41:0x0144 A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:42:0x0146  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static final com.google.android.gms.internal.ads.zzdd zza(byte[] r6, int r7, com.google.android.gms.internal.ads.zzzr r8, com.google.android.gms.internal.ads.zzde r9) {
        /*
            Method dump skipped, instructions count: 487
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.zzzt.zza(byte[], int, com.google.android.gms.internal.ads.zzzr, com.google.android.gms.internal.ads.zzde):com.google.android.gms.internal.ads.zzdd");
    }

    private static int zzb(int i) {
        return (i == 0 || i == 3) ? 1 : 2;
    }

    private static int zzc(byte[] bArr, int i, int i2) {
        int zzd = zzd(bArr, i);
        if (i2 == 0 || i2 == 3) {
            return zzd;
        }
        int i3 = zzd;
        while (true) {
            int i4 = i3;
            int length = bArr.length;
            if (i4 >= length - 1) {
                return length;
            }
            if ((i4 - i) % 2 == 0 && bArr[i4 + 1] == 0) {
                return i4;
            }
            i3 = zzd(bArr, i4 + 1);
        }
    }

    private static int zzd(byte[] bArr, int i) {
        while (true) {
            int length = bArr.length;
            if (i < length) {
                if (bArr[i] == 0) {
                    return i;
                }
                i++;
            } else {
                return length;
            }
        }
    }

    private static int zze(zzfd zzfdVar, int i) {
        byte[] zzH = zzfdVar.zzH();
        int zzc = zzfdVar.zzc();
        int i2 = zzc;
        while (true) {
            int i3 = i2 + 1;
            if (i3 < zzc + i) {
                int i4 = i;
                if ((zzH[i2] & 255) == 255) {
                    i4 = i;
                    if (zzH[i3] == 0) {
                        System.arraycopy(zzH, i2 + 2, zzH, i3, (i - (i2 - zzc)) - 2);
                        i4 = i - 1;
                    }
                }
                i2 = i3;
                i = i4;
            } else {
                return i;
            }
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:413:0x0ad3 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Type inference failed for: r0v203, types: [long] */
    /* JADX WARN: Type inference failed for: r0v208, types: [long] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private static com.google.android.gms.internal.ads.zzzu zzf(int r12, com.google.android.gms.internal.ads.zzfd r13, boolean r14, int r15, com.google.android.gms.internal.ads.zzzr r16) {
        /*
            Method dump skipped, instructions count: 2957
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.zzzt.zzf(int, com.google.android.gms.internal.ads.zzfd, boolean, int, com.google.android.gms.internal.ads.zzzr):com.google.android.gms.internal.ads.zzzu");
    }

    private static String zzg(byte[] bArr, int i, int i2, String str) throws UnsupportedEncodingException {
        return (i2 <= i || i2 > bArr.length) ? "" : new String(bArr, i, i2 - i, str);
    }

    private static String zzh(int i) {
        return i != 1 ? i != 2 ? i != 3 ? "ISO-8859-1" : "UTF-8" : "UTF-16BE" : "UTF-16";
    }

    private static String zzi(int i, int i2, int i3, int i4, int i5) {
        return i == 2 ? String.format(Locale.US, "%c%c%c", Integer.valueOf(i2), Integer.valueOf(i3), Integer.valueOf(i4)) : String.format(Locale.US, "%c%c%c%c", Integer.valueOf(i2), Integer.valueOf(i3), Integer.valueOf(i4), Integer.valueOf(i5));
    }

    /* JADX WARN: Finally extract failed */
    /* JADX WARN: Type inference failed for: r0v62, types: [long] */
    /* JADX WARN: Type inference failed for: r0v73, types: [long] */
    /* JADX WARN: Type inference failed for: r0v78, types: [long] */
    private static boolean zzj(zzfd zzfdVar, int i, int i2, boolean z) {
        int i3;
        char c;
        int i4;
        int i5;
        int i6;
        int i7;
        int zzc = zzfdVar.zzc();
        while (zzfdVar.zza() >= i2) {
            try {
                if (i >= 3) {
                    i4 = zzfdVar.zze();
                    c = zzfdVar.zzs();
                    i3 = zzfdVar.zzo();
                } else {
                    i4 = zzfdVar.zzm();
                    c = zzfdVar.zzm();
                    i3 = 0;
                }
                if (i4 == 0 && c == 0 && i3 == 0) {
                    zzfdVar.zzF(zzc);
                    return true;
                }
                char c2 = c;
                if (i == 4) {
                    c2 = c;
                    if (!z) {
                        if ((32896 & c) != 0) {
                            zzfdVar.zzF(zzc);
                            return false;
                        }
                        c2 = ((c >> 24) << 21) | ((255 & (c >> 16)) << 14) | (c & 255) | (((c >> '\b') & 255) << 7);
                    }
                }
                if (i == 4) {
                    i6 = (i3 & 64) != 0 ? 1 : 0;
                    i5 = i3 & 1;
                } else {
                    if (i == 3) {
                        i6 = (i3 & 32) != 0 ? 1 : 0;
                        i7 = i6;
                        if ((i3 & 128) != 0) {
                            i5 = 1;
                        }
                    } else {
                        i7 = 0;
                    }
                    i5 = 0;
                    i6 = i7;
                }
                int i8 = i6;
                if (i5 != 0) {
                    i8 = i6 + 4;
                }
                if (c2 < i8) {
                    zzfdVar.zzF(zzc);
                    return false;
                } else if (zzfdVar.zza() < c2) {
                    zzfdVar.zzF(zzc);
                    return false;
                } else {
                    zzfdVar.zzG(c2);
                }
            } catch (Throwable th) {
                zzfdVar.zzF(zzc);
                throw th;
            }
        }
        zzfdVar.zzF(zzc);
        return true;
    }

    private static byte[] zzk(byte[] bArr, int i, int i2) {
        return i2 <= i ? zzfn.zzf : Arrays.copyOfRange(bArr, i, i2);
    }
}

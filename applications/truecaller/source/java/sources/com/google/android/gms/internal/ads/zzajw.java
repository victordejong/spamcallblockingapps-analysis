package com.google.android.gms.internal.ads;

import com.tenor.android.core.constant.StringConstant;
import java.io.UnsupportedEncodingException;
import java.util.Arrays;
import java.util.Locale;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzajw.class */
public final class zzajw {
    public static final zzaju zza = zzajt.zza;

    /* JADX WARN: Code restructure failed: missing block: B:14:0x0092, code lost:
        if ((r0 & 64) != 0) goto L4;
     */
    /* JADX WARN: Removed duplicated region for block: B:37:0x011f A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:38:0x0121  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static final com.google.android.gms.internal.ads.zzaiv zza(byte[] r6, int r7, com.google.android.gms.internal.ads.zzaju r8, com.google.android.gms.internal.ads.zzaix r9) {
        /*
            Method dump skipped, instructions count: 442
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.zzajw.zza(byte[], int, com.google.android.gms.internal.ads.zzaju, com.google.android.gms.internal.ads.zzaix):com.google.android.gms.internal.ads.zzaiv");
    }

    /* JADX WARN: Finally extract failed */
    /* JADX WARN: Type inference failed for: r0v61, types: [long] */
    /* JADX WARN: Type inference failed for: r0v72, types: [long] */
    /* JADX WARN: Type inference failed for: r0v77, types: [long] */
    private static boolean zzb(zzamf zzamfVar, int i, int i2, boolean z) {
        int i3;
        char c;
        int i4;
        int i5;
        int i6;
        int zzg = zzamfVar.zzg();
        while (zzamfVar.zzd() >= i2) {
            try {
                if (i >= 3) {
                    i4 = zzamfVar.zzv();
                    c = zzamfVar.zzt();
                    i3 = zzamfVar.zzo();
                } else {
                    i4 = zzamfVar.zzr();
                    c = zzamfVar.zzr();
                    i3 = 0;
                }
                if (i4 == 0 && c == 0 && i3 == 0) {
                    zzamfVar.zzh(zzg);
                    return true;
                }
                char c2 = c;
                if (i == 4) {
                    c2 = c;
                    if (!z) {
                        if ((32896 & c) != 0) {
                            zzamfVar.zzh(zzg);
                            return false;
                        }
                        c2 = ((c >> 24) << 21) | ((255 & (c >> 16)) << 14) | (c & 255) | (((c >> '\b') & 255) << 7);
                    }
                }
                if (i == 4) {
                    i6 = (i3 & 64) != 0 ? 1 : 0;
                    i5 = i3 & 1;
                } else if (i == 3) {
                    i6 = (i3 & 32) != 0 ? 1 : 0;
                    i5 = (i3 & 128) != 0 ? 1 : 0;
                } else {
                    i6 = 0;
                    i5 = 0;
                }
                int i7 = i6;
                if (i5 != 0) {
                    i7 = i6 + 4;
                }
                if (c2 < i7) {
                    zzamfVar.zzh(zzg);
                    return false;
                } else if (zzamfVar.zzd() < c2) {
                    zzamfVar.zzh(zzg);
                    return false;
                } else {
                    zzamfVar.zzk(c2);
                }
            } catch (Throwable th) {
                zzamfVar.zzh(zzg);
                throw th;
            }
        }
        zzamfVar.zzh(zzg);
        return true;
    }

    /* JADX WARN: Removed duplicated region for block: B:303:0x0a28 A[Catch: all -> 0x0a3d, UnsupportedEncodingException -> 0x0a42, TRY_ENTER, TRY_LEAVE, TryCatch #4 {UnsupportedEncodingException -> 0x0a42, all -> 0x0a3d, blocks: (B:206:0x0635, B:219:0x0690, B:221:0x06bc, B:232:0x073a, B:236:0x078e, B:240:0x07a6, B:242:0x07b1, B:244:0x07bc, B:246:0x07cb, B:247:0x07d6, B:256:0x0814, B:261:0x085a, B:265:0x0871, B:267:0x08a0, B:269:0x08b2, B:271:0x08bd, B:273:0x08c8, B:275:0x08d7, B:276:0x08e2, B:281:0x08ff, B:291:0x0945, B:295:0x09ac, B:297:0x09d2, B:300:0x09fa, B:303:0x0a28), top: B:317:0x01f8 }] */
    /* JADX WARN: Type inference failed for: r0v179, types: [long] */
    /* JADX WARN: Type inference failed for: r0v184, types: [long] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private static com.google.android.gms.internal.ads.zzajx zzc(int r12, com.google.android.gms.internal.ads.zzamf r13, boolean r14, int r15, com.google.android.gms.internal.ads.zzaju r16) {
        /*
            Method dump skipped, instructions count: 2678
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.zzajw.zzc(int, com.google.android.gms.internal.ads.zzamf, boolean, int, com.google.android.gms.internal.ads.zzaju):com.google.android.gms.internal.ads.zzajx");
    }

    private static int zzd(zzamf zzamfVar, int i) {
        byte[] zzi = zzamfVar.zzi();
        int zzg = zzamfVar.zzg();
        int i2 = zzg;
        while (true) {
            int i3 = i2 + 1;
            if (i3 < zzg + i) {
                int i4 = i;
                if ((zzi[i2] & 255) == 255) {
                    i4 = i;
                    if (zzi[i3] == 0) {
                        System.arraycopy(zzi, i2 + 2, zzi, i3, (i - (i2 - zzg)) - 2);
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

    private static String zze(int i) {
        return i != 1 ? i != 2 ? i != 3 ? "ISO-8859-1" : StringConstant.UTF8 : "UTF-16BE" : "UTF-16";
    }

    private static String zzf(int i, int i2, int i3, int i4, int i5) {
        return i == 2 ? String.format(Locale.US, "%c%c%c", Integer.valueOf(i2), Integer.valueOf(i3), Integer.valueOf(i4)) : String.format(Locale.US, "%c%c%c%c", Integer.valueOf(i2), Integer.valueOf(i3), Integer.valueOf(i4), Integer.valueOf(i5));
    }

    private static int zzg(byte[] bArr, int i, int i2) {
        int zzh = zzh(bArr, i);
        if (i2 == 0 || i2 == 3) {
            return zzh;
        }
        int i3 = zzh;
        while (true) {
            int i4 = i3;
            int length = bArr.length;
            if (i4 >= length - 1) {
                return length;
            }
            if ((i4 - i) % 2 == 0 && bArr[i4 + 1] == 0) {
                return i4;
            }
            i3 = zzh(bArr, i4 + 1);
        }
    }

    private static int zzh(byte[] bArr, int i) {
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

    private static int zzi(int i) {
        return (i == 0 || i == 3) ? 1 : 2;
    }

    private static byte[] zzj(byte[] bArr, int i, int i2) {
        return i2 <= i ? zzamq.zzf : Arrays.copyOfRange(bArr, i, i2);
    }

    private static String zzk(byte[] bArr, int i, int i2, String str) throws UnsupportedEncodingException {
        return (i2 <= i || i2 > bArr.length) ? "" : new String(bArr, i, i2 - i, str);
    }
}

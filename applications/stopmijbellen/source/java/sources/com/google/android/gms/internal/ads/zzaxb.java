package com.google.android.gms.internal.ads;

import android.os.Build;
import android.support.p012v4.media.C0082b;
import java.io.IOException;
import java.nio.charset.Charset;
import java.util.Arrays;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;
import java.util.regex.Pattern;
import p007a6.C0033h;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzaxb.class */
public final class zzaxb {
    public static final int zza;
    public static final String zzb;
    public static final String zzc;
    public static final String zzd;
    public static final String zze;
    private static final Pattern zzf;
    private static final Pattern zzg;
    private static final Pattern zzh;

    static {
        int i = Build.VERSION.SDK_INT;
        int i2 = i;
        if (i == 25) {
            i2 = i;
            if (Build.VERSION.CODENAME.charAt(0) == 'O') {
                i2 = 26;
            }
        }
        zza = i2;
        String str = Build.DEVICE;
        zzb = str;
        String str2 = Build.MANUFACTURER;
        zzc = str2;
        String str3 = Build.MODEL;
        zzd = str3;
        StringBuilder sb = new StringBuilder(C0033h.m8890g(String.valueOf(str).length(), 17, String.valueOf(str3).length(), String.valueOf(str2).length()));
        C0082b.m8749m(sb, str, ", ", str3, ", ");
        sb.append(str2);
        sb.append(", ");
        sb.append(i2);
        zze = sb.toString();
        zzf = Pattern.compile("(\\d\\d\\d\\d)\\-(\\d\\d)\\-(\\d\\d)[Tt](\\d\\d):(\\d\\d):(\\d\\d)([\\.,](\\d+))?([Zz]|((\\+|\\-)(\\d?\\d):?(\\d\\d)))?");
        zzg = Pattern.compile("^(-)?P(([0-9]*)Y)?(([0-9]*)M)?(([0-9]*)D)?(T(([0-9]*)H)?(([0-9]*)M)?(([0-9.]*)S)?)?$");
        zzh = Pattern.compile("%([A-Fa-f0-9]{2})");
    }

    public static float zza(float f, float f2, float f3) {
        return Math.max(0.1f, Math.min(f, 8.0f));
    }

    public static int zzb(long[] jArr, long j, boolean z, boolean z2) {
        int i;
        int i2;
        int binarySearch = Arrays.binarySearch(jArr, j);
        int i3 = binarySearch;
        if (binarySearch < 0) {
            i = binarySearch ^ (-1);
        } else {
            do {
                i2 = i3 + 1;
                if (i2 >= jArr.length) {
                    break;
                }
                i3 = i2;
            } while (jArr[i2] == j);
            i = z ? i2 - 1 : i2;
        }
        return z2 ? Math.min(jArr.length - 1, i) : i;
    }

    public static int zzc(long[] jArr, long j, boolean z, boolean z2) {
        int i;
        int i2;
        int binarySearch = Arrays.binarySearch(jArr, j);
        int i3 = binarySearch;
        if (binarySearch < 0) {
            i = -(binarySearch + 2);
        } else {
            do {
                i2 = i3 - 1;
                if (i2 < 0) {
                    break;
                }
                i3 = i2;
            } while (jArr[i2] == j);
            i = i2 + 1;
        }
        int i4 = i;
        if (z2) {
            i4 = Math.max(0, i);
        }
        return i4;
    }

    public static int zzd(int i, int i2) {
        return ((i + i2) - 1) / i2;
    }

    public static int zze(int i, int i2, int i3) {
        return Math.max(i2, Math.min(i, i3));
    }

    public static int zzf(int i) {
        return i != 1 ? 13107200 : 3538944;
    }

    public static int zzg(String str) {
        int length = str.length();
        zzawm.zzc(length <= 4);
        int i = 0;
        for (int i2 = 0; i2 < length; i2++) {
            i = (i << 8) | str.charAt(i2);
        }
        return i;
    }

    public static int zzh(int i) {
        if (i != 8) {
            if (i == 16) {
                return 2;
            }
            if (i == 24) {
                return Integer.MIN_VALUE;
            }
            return i != 32 ? 0 : 1073741824;
        }
        return 3;
    }

    public static int zzi(int i, int i2) {
        if (i != Integer.MIN_VALUE) {
            if (i == 1073741824) {
                return i2 * 4;
            }
            if (i == 2) {
                return i2 + i2;
            }
            if (i != 3) {
                throw new IllegalArgumentException();
            }
            return i2;
        }
        return i2 * 3;
    }

    public static long zzj(long j, long j2, long j3) {
        int i = (j3 > j2 ? 1 : (j3 == j2 ? 0 : -1));
        if (i < 0 || j3 % j2 != 0) {
            if (i < 0 && j2 % j3 == 0) {
                return (j2 / j3) * j;
            }
            return (long) ((j2 / j3) * j);
        }
        return j / (j3 / j2);
    }

    public static String zzk(Object[] objArr) {
        StringBuilder sb = new StringBuilder();
        int i = 0;
        while (true) {
            int length = objArr.length;
            if (i < length) {
                sb.append(objArr[i].getClass().getSimpleName());
                if (i < length - 1) {
                    sb.append(", ");
                }
                i++;
            } else {
                return sb.toString();
            }
        }
    }

    public static ExecutorService zzl(String str) {
        return Executors.newSingleThreadExecutor(new zzaxa("Loader:ExtractorMediaPeriod"));
    }

    public static void zzm(zzavw zzavwVar) {
        if (zzavwVar != null) {
            try {
                zzavwVar.zzd();
            } catch (IOException e) {
            }
        }
    }

    public static void zzn(long[] jArr, long j, long j2) {
        int i = (j2 > 1000000L ? 1 : (j2 == 1000000L ? 0 : -1));
        if (i >= 0 && j2 % 1000000 == 0) {
            long j3 = j2 / 1000000;
            for (int i2 = 0; i2 < jArr.length; i2++) {
                jArr[i2] = jArr[i2] / j3;
            }
        } else if (i >= 0 || 1000000 % j2 != 0) {
            double d = 1000000.0d / j2;
            for (int i3 = 0; i3 < jArr.length; i3++) {
                jArr[i3] = (long) (jArr[i3] * d);
            }
        } else {
            long j4 = 1000000 / j2;
            for (int i4 = 0; i4 < jArr.length; i4++) {
                jArr[i4] = jArr[i4] * j4;
            }
        }
    }

    public static boolean zzo(Object obj, Object obj2) {
        boolean z;
        if (obj != null) {
            z = obj.equals(obj2);
        } else if (obj2 == null) {
            return true;
        } else {
            z = false;
        }
        return z;
    }

    public static byte[] zzp(String str) {
        byte[] bArr = new byte[38];
        for (int i = 0; i < 38; i++) {
            int i2 = i + i;
            bArr[i] = (byte) (Character.digit("0000016742C00BDA259000000168CE0F13200000016588840DCE7118A0002FBF1C31C3275D78".charAt(i2 + 1), 16) + (Character.digit("0000016742C00BDA259000000168CE0F13200000016588840DCE7118A0002FBF1C31C3275D78".charAt(i2), 16) << 4));
        }
        return bArr;
    }

    public static byte[] zzq(String str) {
        return str.getBytes(Charset.defaultCharset());
    }
}

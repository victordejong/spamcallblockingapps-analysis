package com.google.android.gms.internal.clearcut;

import java.nio.charset.Charset;
import java.util.Arrays;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/clearcut/zzfy.class */
public final class zzfy {
    private static final Charset UTF_8 = Charset.forName("UTF-8");
    private static final Charset ISO_8859_1 = Charset.forName("ISO-8859-1");
    public static final Object zzrr = new Object();

    public static boolean equals(int[] iArr, int[] iArr2) {
        return (iArr == null || iArr.length == 0) ? iArr2 == null || iArr2.length == 0 : Arrays.equals(iArr, iArr2);
    }

    public static boolean equals(long[] jArr, long[] jArr2) {
        return (jArr == null || jArr.length == 0) ? jArr2 == null || jArr2.length == 0 : Arrays.equals(jArr, jArr2);
    }

    public static boolean equals(Object[] objArr, Object[] objArr2) {
        int length = objArr == null ? 0 : objArr.length;
        int length2 = objArr2 == null ? 0 : objArr2.length;
        int i = 0;
        int i2 = 0;
        while (true) {
            int i3 = i2;
            if (i < length) {
                i3 = i2;
                if (objArr[i] == null) {
                    i++;
                }
            }
            while (i3 < length2 && objArr2[i3] == null) {
                i3++;
            }
            boolean z = i >= length;
            boolean z2 = i3 >= length2;
            if (!z || !z2) {
                if (z != z2 || !objArr[i].equals(objArr2[i3])) {
                    return false;
                }
                i++;
                i2 = i3 + 1;
            } else {
                return true;
            }
        }
    }

    public static int hashCode(int[] iArr) {
        if (iArr == null || iArr.length == 0) {
            return 0;
        }
        return Arrays.hashCode(iArr);
    }

    public static int hashCode(long[] jArr) {
        if (jArr == null || jArr.length == 0) {
            return 0;
        }
        return Arrays.hashCode(jArr);
    }

    public static int hashCode(Object[] objArr) {
        int i = 0;
        int length = objArr == null ? 0 : objArr.length;
        int i2 = 0;
        while (true) {
            int i3 = i2;
            if (i < length) {
                Object obj = objArr[i];
                int i4 = i3;
                if (obj != null) {
                    i4 = (i3 * 31) + obj.hashCode();
                }
                i++;
                i2 = i4;
            } else {
                return i3;
            }
        }
    }

    public static int zza(byte[][] bArr) {
        int i = 0;
        int length = bArr == null ? 0 : bArr.length;
        int i2 = 0;
        while (true) {
            int i3 = i2;
            if (i < length) {
                byte[] bArr2 = bArr[i];
                int i4 = i3;
                if (bArr2 != null) {
                    i4 = (i3 * 31) + Arrays.hashCode(bArr2);
                }
                i++;
                i2 = i4;
            } else {
                return i3;
            }
        }
    }

    public static void zza(zzfu zzfuVar, zzfu zzfuVar2) {
        if (zzfuVar.zzrj != null) {
            zzfuVar2.zzrj = (zzfw) zzfuVar.zzrj.clone();
        }
    }

    public static boolean zza(byte[][] bArr, byte[][] bArr2) {
        int length = bArr == null ? 0 : bArr.length;
        int length2 = bArr2 == null ? 0 : bArr2.length;
        int i = 0;
        int i2 = 0;
        while (true) {
            int i3 = i2;
            if (i < length) {
                i3 = i2;
                if (bArr[i] == null) {
                    i++;
                }
            }
            while (i3 < length2 && bArr2[i3] == null) {
                i3++;
            }
            boolean z = i >= length;
            boolean z2 = i3 >= length2;
            if (!z || !z2) {
                if (z != z2 || !Arrays.equals(bArr[i], bArr2[i3])) {
                    return false;
                }
                i++;
                i2 = i3 + 1;
            } else {
                return true;
            }
        }
    }
}

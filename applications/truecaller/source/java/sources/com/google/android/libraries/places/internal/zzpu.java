package com.google.android.libraries.places.internal;

import com.huawei.hms.framework.common.ExceptionCode;
import java.math.RoundingMode;
/* loaded from: classes3-dex2jar.jar:com/google/android/libraries/places/internal/zzpu.class */
public final class zzpu {
    private static final byte[] zza = {9, 9, 9, 8, 8, 8, 7, 7, 7, 6, 6, 6, 6, 5, 5, 5, 4, 4, 4, 3, 3, 3, 3, 2, 2, 2, 1, 1, 1, 0, 0, 0, 0};
    private static final int[] zzb = {1, 10, 100, 1000, 10000, 100000, 1000000, ExceptionCode.CRASH_EXCEPTION, 100000000, 1000000000};
    private static final int[] zzc = {3, 31, 316, 3162, 31622, 316227, 3162277, 31622776, 316227766, Integer.MAX_VALUE};
    private static final int[] zzd = {1, 1, 2, 6, 24, 120, 720, 5040, 40320, 362880, 3628800, 39916800, 479001600};
    private static int[] zze = {Integer.MAX_VALUE, Integer.MAX_VALUE, 65536, 2345, 477, 193, 110, 75, 58, 49, 43, 39, 37, 35, 34, 34, 33};

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    public static int zza(int i, int i2, RoundingMode roundingMode) {
        zzft.zza(roundingMode);
        if (i2 != 0) {
            int i3 = i / i2;
            int i4 = i - (i2 * i3);
            if (i4 == 0) {
                return i3;
            }
            boolean z = true;
            int i5 = ((i ^ i2) >> 31) | 1;
            boolean z2 = true;
            switch (zzpw.zza[roundingMode.ordinal()]) {
                case 1:
                    if (i4 != 0) {
                        z = false;
                    }
                    zzpv.zza(z);
                    z2 = false;
                    break;
                case 2:
                    z2 = false;
                    break;
                case 3:
                    if (i5 < 0) {
                        z2 = true;
                        break;
                    }
                    z2 = false;
                    break;
                case 4:
                    break;
                case 5:
                    if (i5 > 0) {
                        z2 = true;
                        break;
                    }
                    z2 = false;
                    break;
                case 6:
                case 7:
                case 8:
                    int abs = Math.abs(i4);
                    int abs2 = abs - (Math.abs(i2) - abs);
                    if (abs2 == 0) {
                        z2 = true;
                        if (roundingMode != RoundingMode.HALF_UP) {
                            if ((roundingMode == RoundingMode.HALF_EVEN) & ((i3 & 1) != 0)) {
                                z2 = true;
                                break;
                            }
                            z2 = false;
                            break;
                        }
                    } else {
                        if (abs2 > 0) {
                            z2 = true;
                            break;
                        }
                        z2 = false;
                    }
                    break;
                default:
                    throw new AssertionError();
            }
            int i6 = i3;
            if (z2) {
                i6 = i3 + i5;
            }
            return i6;
        }
        throw new ArithmeticException("/ by zero");
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    public static int zza(int i, RoundingMode roundingMode) {
        if (i <= 0) {
            StringBuilder sb = new StringBuilder("x".length() + 26);
            sb.append("x");
            sb.append(" (");
            sb.append(i);
            sb.append(") must be > 0");
            throw new IllegalArgumentException(sb.toString());
        }
        boolean z = true;
        switch (zzpw.zza[roundingMode.ordinal()]) {
            case 1:
                boolean z2 = i > 0;
                if (((i - 1) & i) != 0) {
                    z = false;
                }
                zzpv.zza(z2 & z);
                break;
            case 2:
            case 3:
                break;
            case 4:
            case 5:
                return 32 - Integer.numberOfLeadingZeros(i - 1);
            case 6:
            case 7:
            case 8:
                int numberOfLeadingZeros = Integer.numberOfLeadingZeros(i);
                return (31 - numberOfLeadingZeros) + ((((((-1257966797) >>> numberOfLeadingZeros) - i) ^ (-1)) ^ (-1)) >>> 31);
            default:
                throw new AssertionError();
        }
        return 31 - Integer.numberOfLeadingZeros(i);
    }
}

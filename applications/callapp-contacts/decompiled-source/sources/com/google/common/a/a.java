package com.google.common.a;

import com.google.common.base.m;
import java.math.RoundingMode;
import okhttp3.internal.http2.Http2Connection;
/* loaded from: classes4-dex2jar.jar:com/google/common/a/a.class */
public final class a {

    /* renamed from: a  reason: collision with root package name */
    static final byte[] f31900a = {9, 9, 9, 8, 8, 8, 7, 7, 7, 6, 6, 6, 6, 5, 5, 5, 4, 4, 4, 3, 3, 3, 3, 2, 2, 2, 1, 1, 1, 0, 0, 0, 0};

    /* renamed from: b  reason: collision with root package name */
    static final int[] f31901b = {1, 10, 100, 1000, 10000, 100000, 1000000, 10000000, 100000000, Http2Connection.DEGRADED_PONG_TIMEOUT_NS};

    /* renamed from: c  reason: collision with root package name */
    static final int[] f31902c = {3, 31, 316, 3162, 31622, 316227, 3162277, 31622776, 316227766, Integer.MAX_VALUE};
    private static final int[] e = {1, 1, 2, 6, 24, 120, 720, 5040, 40320, 362880, 3628800, 39916800, 479001600};

    /* renamed from: d  reason: collision with root package name */
    static int[] f31903d = {Integer.MAX_VALUE, Integer.MAX_VALUE, 65536, 2345, 477, 193, 110, 75, 58, 49, 43, 39, 37, 35, 34, 34, 33};

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: com.google.common.a.a$1  reason: invalid class name */
    /* loaded from: classes4-dex2jar.jar:com/google/common/a/a$1.class */
    public static final /* synthetic */ class AnonymousClass1 {

        /* renamed from: a  reason: collision with root package name */
        static final /* synthetic */ int[] f31904a;

        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:19:0x0065 -> B:33:0x0014). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:20:0x0069 -> B:29:0x001f). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:21:0x006d -> B:41:0x002a). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:22:0x0071 -> B:35:0x0035). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:23:0x0075 -> B:31:0x0040). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:24:0x0079 -> B:27:0x004c). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:25:0x007d -> B:39:0x0058). Please submit an issue!!! */
        static {
            int[] iArr = new int[RoundingMode.values().length];
            f31904a = iArr;
            try {
                iArr[RoundingMode.UNNECESSARY.ordinal()] = 1;
            } catch (NoSuchFieldError e) {
            }
            try {
                f31904a[RoundingMode.DOWN.ordinal()] = 2;
            } catch (NoSuchFieldError e2) {
            }
            try {
                f31904a[RoundingMode.FLOOR.ordinal()] = 3;
            } catch (NoSuchFieldError e3) {
            }
            try {
                f31904a[RoundingMode.UP.ordinal()] = 4;
            } catch (NoSuchFieldError e4) {
            }
            try {
                f31904a[RoundingMode.CEILING.ordinal()] = 5;
            } catch (NoSuchFieldError e5) {
            }
            try {
                f31904a[RoundingMode.HALF_DOWN.ordinal()] = 6;
            } catch (NoSuchFieldError e6) {
            }
            try {
                f31904a[RoundingMode.HALF_UP.ordinal()] = 7;
            } catch (NoSuchFieldError e7) {
            }
            try {
                f31904a[RoundingMode.HALF_EVEN.ordinal()] = 8;
            } catch (NoSuchFieldError e8) {
            }
        }
    }

    private a() {
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    public static int a(int i, int i2, RoundingMode roundingMode) {
        m.a(roundingMode);
        if (i2 != 0) {
            int i3 = i / i2;
            int i4 = i - (i2 * i3);
            if (i4 == 0) {
                return i3;
            }
            boolean z = true;
            int i5 = ((i ^ i2) >> 31) | 1;
            boolean z2 = true;
            switch (AnonymousClass1.f31904a[roundingMode.ordinal()]) {
                case 1:
                    if (i4 != 0) {
                        z = false;
                    }
                    b.a(z);
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
                            if ((roundingMode == RoundingMode.HALF_EVEN) && ((i3 & 1) != 0)) {
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
    public static int a(int i, RoundingMode roundingMode) {
        if (i > 0) {
            boolean z = true;
            switch (AnonymousClass1.f31904a[roundingMode.ordinal()]) {
                case 1:
                    boolean z2 = i > 0;
                    if (((i - 1) & i) != 0) {
                        z = false;
                    }
                    b.a(z2 & z);
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
        StringBuilder sb = new StringBuilder("x".length() + 26);
        sb.append("x");
        sb.append(" (");
        sb.append(i);
        sb.append(") must be > 0");
        throw new IllegalArgumentException(sb.toString());
    }
}

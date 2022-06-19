package com.google.common.math;

import java.math.RoundingMode;
import java.util.Objects;
/* loaded from: classes3-dex2jar.jar:com/google/common/math/IntMath.class */
public final class IntMath {

    /* renamed from: com.google.common.math.IntMath$1 */
    /* loaded from: classes3-dex2jar.jar:com/google/common/math/IntMath$1.class */
    public static /* synthetic */ class C21321 {
        public static final /* synthetic */ int[] $SwitchMap$java$math$RoundingMode;

        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:19:0x0065 -> B:33:0x0014). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:20:0x0069 -> B:29:0x001f). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:21:0x006d -> B:41:0x002a). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:22:0x0071 -> B:35:0x0035). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:23:0x0075 -> B:31:0x0040). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:24:0x0079 -> B:27:0x004c). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:25:0x007d -> B:39:0x0058). Please submit an issue!!! */
        static {
            int[] iArr = new int[RoundingMode.values().length];
            $SwitchMap$java$math$RoundingMode = iArr;
            try {
                iArr[RoundingMode.UNNECESSARY.ordinal()] = 1;
            } catch (NoSuchFieldError e) {
            }
            try {
                $SwitchMap$java$math$RoundingMode[RoundingMode.DOWN.ordinal()] = 2;
            } catch (NoSuchFieldError e2) {
            }
            try {
                $SwitchMap$java$math$RoundingMode[RoundingMode.FLOOR.ordinal()] = 3;
            } catch (NoSuchFieldError e3) {
            }
            try {
                $SwitchMap$java$math$RoundingMode[RoundingMode.UP.ordinal()] = 4;
            } catch (NoSuchFieldError e4) {
            }
            try {
                $SwitchMap$java$math$RoundingMode[RoundingMode.CEILING.ordinal()] = 5;
            } catch (NoSuchFieldError e5) {
            }
            try {
                $SwitchMap$java$math$RoundingMode[RoundingMode.HALF_DOWN.ordinal()] = 6;
            } catch (NoSuchFieldError e6) {
            }
            try {
                $SwitchMap$java$math$RoundingMode[RoundingMode.HALF_UP.ordinal()] = 7;
            } catch (NoSuchFieldError e7) {
            }
            try {
                $SwitchMap$java$math$RoundingMode[RoundingMode.HALF_EVEN.ordinal()] = 8;
            } catch (NoSuchFieldError e8) {
            }
        }
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    public static int divide(int i, int i2, RoundingMode roundingMode) {
        Objects.requireNonNull(roundingMode);
        if (i2 != 0) {
            int i3 = i / i2;
            int i4 = i - (i2 * i3);
            if (i4 == 0) {
                return i3;
            }
            int i5 = ((i ^ i2) >> 31) | 1;
            boolean z = true;
            switch (C21321.$SwitchMap$java$math$RoundingMode[roundingMode.ordinal()]) {
                case 1:
                    if (!(i4 == 0)) {
                        throw new ArithmeticException("mode was UNNECESSARY, but rounding was necessary");
                    }
                    z = false;
                    break;
                case 2:
                    z = false;
                    break;
                case 3:
                    if (i5 < 0) {
                        z = true;
                        break;
                    }
                    z = false;
                    break;
                case 4:
                    break;
                case 5:
                    if (i5 > 0) {
                        z = true;
                        break;
                    }
                    z = false;
                    break;
                case 6:
                case 7:
                case 8:
                    int abs = Math.abs(i4);
                    int abs2 = abs - (Math.abs(i2) - abs);
                    if (abs2 == 0) {
                        z = true;
                        if (roundingMode != RoundingMode.HALF_UP) {
                            if ((roundingMode == RoundingMode.HALF_EVEN) & ((i3 & 1) != 0)) {
                                z = true;
                                break;
                            }
                            z = false;
                            break;
                        }
                    } else {
                        if (abs2 > 0) {
                            z = true;
                            break;
                        }
                        z = false;
                    }
                    break;
                default:
                    throw new AssertionError();
            }
            int i6 = i3;
            if (z) {
                i6 = i3 + i5;
            }
            return i6;
        }
        throw new ArithmeticException("/ by zero");
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    public static int log2(int i, RoundingMode roundingMode) {
        if (i <= 0) {
            StringBuilder sb = new StringBuilder(27);
            sb.append("x");
            sb.append(" (");
            sb.append(i);
            sb.append(") must be > 0");
            throw new IllegalArgumentException(sb.toString());
        }
        boolean z = true;
        switch (C21321.$SwitchMap$java$math$RoundingMode[roundingMode.ordinal()]) {
            case 1:
                boolean z2 = i > 0;
                if (((i - 1) & i) != 0) {
                    z = false;
                }
                if (!(z2 & z)) {
                    throw new ArithmeticException("mode was UNNECESSARY, but rounding was necessary");
                }
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

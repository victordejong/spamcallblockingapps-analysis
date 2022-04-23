package p131c.p161d.p266c.p272f;

import com.google.common.primitives.Ints;
import java.math.RoundingMode;
import p131c.p161d.p266c.p267a.C4933n;
/* renamed from: c.d.c.f.c */
/* loaded from: classes2-dex2jar.jar:c/d/c/f/c.class */
public final class C5058c {

    /* renamed from: c.d.c.f.c$a */
    /* loaded from: classes2-dex2jar.jar:c/d/c/f/c$a.class */
    public static /* synthetic */ class C5059a {

        /* renamed from: a */
        public static final /* synthetic */ int[] f17649a;

        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:19:0x0065 -> B:33:0x0014). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:20:0x0069 -> B:29:0x001f). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:21:0x006d -> B:41:0x002a). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:22:0x0071 -> B:35:0x0035). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:23:0x0075 -> B:31:0x0040). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:24:0x0079 -> B:27:0x004c). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:25:0x007d -> B:39:0x0058). Please submit an issue!!! */
        static {
            int[] iArr = new int[RoundingMode.values().length];
            f17649a = iArr;
            try {
                iArr[RoundingMode.UNNECESSARY.ordinal()] = 1;
            } catch (NoSuchFieldError e) {
            }
            try {
                f17649a[RoundingMode.DOWN.ordinal()] = 2;
            } catch (NoSuchFieldError e2) {
            }
            try {
                f17649a[RoundingMode.FLOOR.ordinal()] = 3;
            } catch (NoSuchFieldError e3) {
            }
            try {
                f17649a[RoundingMode.UP.ordinal()] = 4;
            } catch (NoSuchFieldError e4) {
            }
            try {
                f17649a[RoundingMode.CEILING.ordinal()] = 5;
            } catch (NoSuchFieldError e5) {
            }
            try {
                f17649a[RoundingMode.HALF_DOWN.ordinal()] = 6;
            } catch (NoSuchFieldError e6) {
            }
            try {
                f17649a[RoundingMode.HALF_UP.ordinal()] = 7;
            } catch (NoSuchFieldError e7) {
            }
            try {
                f17649a[RoundingMode.HALF_EVEN.ordinal()] = 8;
            } catch (NoSuchFieldError e8) {
            }
        }
    }

    /* renamed from: a */
    public static int m24588a(int i, int i2) {
        long j = i + i2;
        int i3 = (int) j;
        C5066e.m24574a(j == ((long) i3), "checkedAdd", i, i2);
        return i3;
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* renamed from: a */
    public static int m24587a(int i, int i2, RoundingMode roundingMode) {
        C4933n.m24795a(roundingMode);
        if (i2 != 0) {
            int i3 = i / i2;
            int i4 = i - (i2 * i3);
            if (i4 == 0) {
                return i3;
            }
            boolean z = true;
            int i5 = ((i ^ i2) >> 31) | 1;
            boolean z2 = true;
            switch (C5059a.f17649a[roundingMode.ordinal()]) {
                case 1:
                    if (i4 != 0) {
                        z = false;
                    }
                    C5066e.m24576a(z);
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
    /* renamed from: a */
    public static int m24586a(int i, RoundingMode roundingMode) {
        C5066e.m24577a("x", i);
        switch (C5059a.f17649a[roundingMode.ordinal()]) {
            case 1:
                C5066e.m24576a(m24589a(i));
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
                return (31 - numberOfLeadingZeros) + m24585b((-1257966797) >>> numberOfLeadingZeros, i);
            default:
                throw new AssertionError();
        }
        return 31 - Integer.numberOfLeadingZeros(i);
    }

    /* renamed from: a */
    public static boolean m24589a(int i) {
        boolean z = false;
        boolean z2 = i > 0;
        if ((i & (i - 1)) == 0) {
            z = true;
        }
        return z2 & z;
    }

    /* renamed from: b */
    public static int m24585b(int i, int i2) {
        return (((i - i2) ^ (-1)) ^ (-1)) >>> 31;
    }

    /* renamed from: c */
    public static int m24584c(int i, int i2) {
        return Ints.m7808b(i + i2);
    }

    /* renamed from: d */
    public static int m24583d(int i, int i2) {
        return Ints.m7808b(i * i2);
    }
}

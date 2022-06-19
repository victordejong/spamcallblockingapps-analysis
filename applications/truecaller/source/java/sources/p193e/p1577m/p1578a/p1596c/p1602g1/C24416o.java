package p193e.p1577m.p1578a.p1596c.p1602g1;

import com.huawei.hms.support.api.entity.core.JosStatusCodes;
import p193e.p1432d.p1439c.p1440a.C22128a;
/* renamed from: e.m.a.c.g1.o */
/* loaded from: classes2-dex2jar.jar:e/m/a/c/g1/o.class */
public final class C24416o {

    /* renamed from: h */
    public static final String[] f68102h = {"audio/mpeg-L1", "audio/mpeg-L2", "audio/mpeg"};

    /* renamed from: i */
    public static final int[] f68103i = {44100, 48000, 32000};

    /* renamed from: j */
    public static final int[] f68104j = {32000, 64000, 96000, 128000, 160000, 192000, 224000, 256000, 288000, 320000, 352000, 384000, 416000, 448000};

    /* renamed from: k */
    public static final int[] f68105k = {32000, 48000, 56000, 64000, 80000, 96000, 112000, 128000, 144000, 160000, 176000, 192000, 224000, 256000};

    /* renamed from: l */
    public static final int[] f68106l = {32000, 48000, 56000, 64000, 80000, 96000, 112000, 128000, 160000, 192000, 224000, 256000, 320000, 384000};

    /* renamed from: m */
    public static final int[] f68107m = {32000, 40000, 48000, 56000, 64000, 80000, 96000, 112000, 128000, 160000, 192000, 224000, 256000, 320000};

    /* renamed from: n */
    public static final int[] f68108n = {JosStatusCodes.RTN_CODE_COMMON_ERROR, 16000, 24000, 32000, 40000, 48000, 56000, 64000, 80000, 96000, 112000, 128000, 144000, 160000};

    /* renamed from: a */
    public int f68109a;

    /* renamed from: b */
    public String f68110b;

    /* renamed from: c */
    public int f68111c;

    /* renamed from: d */
    public int f68112d;

    /* renamed from: e */
    public int f68113e;

    /* renamed from: f */
    public int f68114f;

    /* renamed from: g */
    public int f68115g;

    /* renamed from: a */
    public static int m5148a(int i) {
        int i2;
        int i3;
        int i4;
        int i5;
        int i6;
        if (!m5146c(i) || (i2 = (i >>> 19) & 3) == 1 || (i3 = (i >>> 17) & 3) == 0 || (i4 = (i >>> 12) & 15) == 0 || i4 == 15 || (i5 = (i >>> 10) & 3) == 3) {
            return -1;
        }
        int i7 = f68103i[i5];
        if (i2 == 2) {
            i6 = i7 / 2;
        } else {
            i6 = i7;
            if (i2 == 0) {
                i6 = i7 / 4;
            }
        }
        int i8 = (i >>> 9) & 1;
        if (i3 == 3) {
            return ((((i2 == 3 ? f68104j[i4 - 1] : f68105k[i4 - 1]) * 12) / i6) + i8) * 4;
        }
        int i9 = i2 == 3 ? i3 == 2 ? f68106l[i4 - 1] : f68107m[i4 - 1] : f68108n[i4 - 1];
        int i10 = 144;
        if (i2 == 3) {
            return C22128a.m8698J1(i9, 144, i6, i8);
        }
        if (i3 == 1) {
            i10 = 72;
        }
        return C22128a.m8698J1(i10, i9, i6, i8);
    }

    /* renamed from: b */
    public static int m5147b(int i, int i2) {
        if (i2 == 1) {
            return i == 3 ? 1152 : 576;
        } else if (i2 == 2) {
            return 1152;
        } else {
            if (i2 != 3) {
                throw new IllegalArgumentException();
            }
            return 384;
        }
    }

    /* renamed from: c */
    public static boolean m5146c(int i) {
        return (i & (-2097152)) == -2097152;
    }

    /* renamed from: d */
    public static boolean m5145d(int i, C24416o c24416o) {
        int i2;
        int i3;
        int i4;
        int i5;
        int i6;
        int i7;
        int i8;
        int i9;
        if (!m5146c(i) || (i2 = (i >>> 19) & 3) == 1 || (i3 = (i >>> 17) & 3) == 0 || (i4 = (i >>> 12) & 15) == 0 || i4 == 15 || (i5 = (i >>> 10) & 3) == 3) {
            return false;
        }
        int i10 = f68103i[i5];
        int i11 = 2;
        if (i2 == 2) {
            i6 = i10 / 2;
        } else {
            i6 = i10;
            if (i2 == 0) {
                i6 = i10 / 4;
            }
        }
        int i12 = (i >>> 9) & 1;
        int m5147b = m5147b(i2, i3);
        if (i3 == 3) {
            i7 = i2 == 3 ? f68104j[i4 - 1] : f68105k[i4 - 1];
            i8 = (((i7 * 12) / i6) + i12) * 4;
        } else {
            if (i2 == 3) {
                i7 = i3 == 2 ? f68106l[i4 - 1] : f68107m[i4 - 1];
                i9 = (i7 * 144) / i6;
            } else {
                int i13 = f68108n[i4 - 1];
                i9 = ((i3 == 1 ? 72 : 144) * i13) / i6;
                i7 = i13;
            }
            i8 = i9 + i12;
        }
        String str = f68102h[3 - i3];
        if (((i >> 6) & 3) == 3) {
            i11 = 1;
        }
        c24416o.f68109a = i2;
        c24416o.f68110b = str;
        c24416o.f68111c = i8;
        c24416o.f68112d = i6;
        c24416o.f68113e = i11;
        c24416o.f68114f = i7;
        c24416o.f68115g = m5147b;
        return true;
    }
}

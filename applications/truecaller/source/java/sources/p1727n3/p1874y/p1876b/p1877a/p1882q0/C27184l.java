package p1727n3.p1874y.p1876b.p1877a.p1882q0;

import com.huawei.hms.support.api.entity.core.JosStatusCodes;
import p193e.p1432d.p1439c.p1440a.C22128a;
/* renamed from: n3.y.b.a.q0.l */
/* loaded from: classes-dex2jar.jar:n3/y/b/a/q0/l.class */
public final class C27184l {

    /* renamed from: h */
    public static final String[] f76041h = {"audio/mpeg-L1", "audio/mpeg-L2", "audio/mpeg"};

    /* renamed from: i */
    public static final int[] f76042i = {44100, 48000, 32000};

    /* renamed from: j */
    public static final int[] f76043j = {32000, 64000, 96000, 128000, 160000, 192000, 224000, 256000, 288000, 320000, 352000, 384000, 416000, 448000};

    /* renamed from: k */
    public static final int[] f76044k = {32000, 48000, 56000, 64000, 80000, 96000, 112000, 128000, 144000, 160000, 176000, 192000, 224000, 256000};

    /* renamed from: l */
    public static final int[] f76045l = {32000, 48000, 56000, 64000, 80000, 96000, 112000, 128000, 160000, 192000, 224000, 256000, 320000, 384000};

    /* renamed from: m */
    public static final int[] f76046m = {32000, 40000, 48000, 56000, 64000, 80000, 96000, 112000, 128000, 160000, 192000, 224000, 256000, 320000};

    /* renamed from: n */
    public static final int[] f76047n = {JosStatusCodes.RTN_CODE_COMMON_ERROR, 16000, 24000, 32000, 40000, 48000, 56000, 64000, 80000, 96000, 112000, 128000, 144000, 160000};

    /* renamed from: a */
    public int f76048a;

    /* renamed from: b */
    public String f76049b;

    /* renamed from: c */
    public int f76050c;

    /* renamed from: d */
    public int f76051d;

    /* renamed from: e */
    public int f76052e;

    /* renamed from: f */
    public int f76053f;

    /* renamed from: g */
    public int f76054g;

    /* renamed from: a */
    public static int m744a(int i) {
        int i2;
        int i3;
        int i4;
        int i5;
        int i6;
        if ((i & (-2097152)) != -2097152 || (i2 = (i >>> 19) & 3) == 1 || (i3 = (i >>> 17) & 3) == 0 || (i4 = (i >>> 12) & 15) == 0 || i4 == 15 || (i5 = (i >>> 10) & 3) == 3) {
            return -1;
        }
        int i7 = f76042i[i5];
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
            return ((((i2 == 3 ? f76043j[i4 - 1] : f76044k[i4 - 1]) * 12) / i6) + i8) * 4;
        }
        int i9 = i2 == 3 ? i3 == 2 ? f76045l[i4 - 1] : f76046m[i4 - 1] : f76047n[i4 - 1];
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
    public static boolean m743b(int i, C27184l c27184l) {
        int i2;
        int i3;
        int i4;
        int i5;
        int i6;
        int i7;
        int i8;
        int i9;
        int i10;
        if ((i & (-2097152)) != -2097152 || (i2 = (i >>> 19) & 3) == 1 || (i3 = (i >>> 17) & 3) == 0 || (i4 = (i >>> 12) & 15) == 0 || i4 == 15 || (i5 = (i >>> 10) & 3) == 3) {
            return false;
        }
        int i11 = f76042i[i5];
        int i12 = 2;
        if (i2 == 2) {
            i6 = i11 / 2;
        } else {
            i6 = i11;
            if (i2 == 0) {
                i6 = i11 / 4;
            }
        }
        int i13 = (i >>> 9) & 1;
        int i14 = 1152;
        if (i3 == 3) {
            i8 = i2 == 3 ? f76043j[i4 - 1] : f76044k[i4 - 1];
            i7 = (((i8 * 12) / i6) + i13) * 4;
            i9 = 384;
        } else {
            if (i2 == 3) {
                i8 = i3 == 2 ? f76045l[i4 - 1] : f76046m[i4 - 1];
                i10 = (i8 * 144) / i6;
            } else {
                int i15 = f76047n[i4 - 1];
                int i16 = 1152;
                if (i3 == 1) {
                    i16 = 576;
                }
                i10 = ((i3 == 1 ? 72 : 144) * i15) / i6;
                i14 = i16;
                i8 = i15;
            }
            int i17 = i13 + i10;
            i9 = i14;
            i7 = i17;
        }
        String str = f76041h[3 - i3];
        if (((i >> 6) & 3) == 3) {
            i12 = 1;
        }
        c27184l.f76048a = i2;
        c27184l.f76049b = str;
        c27184l.f76050c = i7;
        c27184l.f76051d = i6;
        c27184l.f76052e = i12;
        c27184l.f76053f = i8;
        c27184l.f76054g = i9;
        return true;
    }
}

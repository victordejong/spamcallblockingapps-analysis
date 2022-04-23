package p012b.p076s.p078b.p079a.p086s0;
/* renamed from: b.s.b.a.s0.m */
/* loaded from: classes-dex2jar.jar:b/s/b/a/s0/m.class */
public final class C1356m {

    /* renamed from: h */
    public static final String[] f5341h = {"audio/mpeg-L1", "audio/mpeg-L2", "audio/mpeg"};

    /* renamed from: i */
    public static final int[] f5342i = {44100, 48000, 32000};

    /* renamed from: j */
    public static final int[] f5343j = {32000, 64000, 96000, 128000, 160000, 192000, 224000, 256000, 288000, 320000, 352000, 384000, 416000, 448000};

    /* renamed from: k */
    public static final int[] f5344k = {32000, 48000, 56000, 64000, 80000, 96000, 112000, 128000, 144000, 160000, 176000, 192000, 224000, 256000};

    /* renamed from: l */
    public static final int[] f5345l = {32000, 48000, 56000, 64000, 80000, 96000, 112000, 128000, 160000, 192000, 224000, 256000, 320000, 384000};

    /* renamed from: m */
    public static final int[] f5346m = {32000, 40000, 48000, 56000, 64000, 80000, 96000, 112000, 128000, 160000, 192000, 224000, 256000, 320000};

    /* renamed from: n */
    public static final int[] f5347n = {8000, 16000, 24000, 32000, 40000, 48000, 56000, 64000, 80000, 96000, 112000, 128000, 144000, 160000};

    /* renamed from: a */
    public int f5348a;

    /* renamed from: b */
    public String f5349b;

    /* renamed from: c */
    public int f5350c;

    /* renamed from: d */
    public int f5351d;

    /* renamed from: e */
    public int f5352e;

    /* renamed from: f */
    public int f5353f;

    /* renamed from: g */
    public int f5354g;

    /* renamed from: a */
    public static int m33607a(int i) {
        int i2;
        int i3;
        int i4;
        int i5;
        int i6;
        if ((i & (-2097152)) != -2097152 || (i2 = (i >>> 19) & 3) == 1 || (i3 = (i >>> 17) & 3) == 0 || (i4 = (i >>> 12) & 15) == 0 || i4 == 15 || (i5 = (i >>> 10) & 3) == 3) {
            return -1;
        }
        int i7 = f5342i[i5];
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
            return ((((i2 == 3 ? f5343j[i4 - 1] : f5344k[i4 - 1]) * 12) / i6) + i8) * 4;
        }
        int i9 = i2 == 3 ? i3 == 2 ? f5345l[i4 - 1] : f5346m[i4 - 1] : f5347n[i4 - 1];
        int i10 = 144;
        if (i2 == 3) {
            return ((i9 * 144) / i6) + i8;
        }
        if (i3 == 1) {
            i10 = 72;
        }
        return ((i10 * i9) / i6) + i8;
    }

    /* renamed from: a */
    public static boolean m33606a(int i, C1356m mVar) {
        int i2;
        int i3;
        int i4;
        int i5;
        int i6;
        int i7;
        if ((i & (-2097152)) != -2097152 || (i2 = (i >>> 19) & 3) == 1 || (i3 = (i >>> 17) & 3) == 0 || (i4 = (i >>> 12) & 15) == 0 || i4 == 15 || (i5 = (i >>> 10) & 3) == 3) {
            return false;
        }
        int i8 = f5342i[i5];
        if (i2 == 2) {
            i6 = i8 / 2;
        } else {
            i6 = i8;
            if (i2 == 0) {
                i6 = i8 / 4;
            }
        }
        int i9 = (i >>> 9) & 1;
        int i10 = 1152;
        if (i3 == 3) {
            i7 = ((((i2 == 3 ? f5343j[i4 - 1] : f5344k[i4 - 1]) * 12) / i6) + i9) * 4;
            i10 = 384;
        } else {
            int i11 = 144;
            if (i2 == 3) {
                i7 = (((i3 == 2 ? f5345l[i4 - 1] : f5346m[i4 - 1]) * 144) / i6) + i9;
                i10 = 1152;
            } else {
                int i12 = f5347n[i4 - 1];
                if (i3 == 1) {
                    i10 = 576;
                }
                if (i3 == 1) {
                    i11 = 72;
                }
                i7 = ((i11 * i12) / i6) + i9;
            }
        }
        mVar.m33605a(i2, f5341h[3 - i3], i7, i6, ((i >> 6) & 3) == 3 ? 1 : 2, ((i7 * 8) * i6) / i10, i10);
        return true;
    }

    /* renamed from: a */
    public final void m33605a(int i, String str, int i2, int i3, int i4, int i5, int i6) {
        this.f5348a = i;
        this.f5349b = str;
        this.f5350c = i2;
        this.f5351d = i3;
        this.f5352e = i4;
        this.f5353f = i5;
        this.f5354g = i6;
    }
}

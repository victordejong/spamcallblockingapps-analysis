package androidx.media2.exoplayer.external.util;

import java.nio.ByteBuffer;
import java.util.Arrays;
/* renamed from: androidx.media2.exoplayer.external.util.n */
/* loaded from: classes-dex2jar.jar:androidx/media2/exoplayer/external/util/n.class */
public final class C2014n {

    /* renamed from: a */
    public static final byte[] f8107a = {0, 0, 0, 1};

    /* renamed from: b */
    public static final float[] f8108b = {1.0f, 1.0f, 1.0909091f, 0.90909094f, 1.4545455f, 1.2121212f, 2.1818182f, 1.8181819f, 2.909091f, 2.4242425f, 1.6363636f, 1.3636364f, 1.939394f, 1.6161616f, 1.3333334f, 1.5f, 2.0f};

    /* renamed from: c */
    private static final Object f8109c = new Object();

    /* renamed from: d */
    private static int[] f8110d = new int[10];

    /* renamed from: androidx.media2.exoplayer.external.util.n$a */
    /* loaded from: classes-dex2jar.jar:androidx/media2/exoplayer/external/util/n$a.class */
    public static final class C2015a {

        /* renamed from: a */
        public final int f8111a;

        /* renamed from: b */
        public final int f8112b;

        /* renamed from: c */
        public final boolean f8113c;

        public C2015a(int i, int i2, boolean z) {
            this.f8111a = i;
            this.f8112b = i2;
            this.f8113c = z;
        }
    }

    /* renamed from: androidx.media2.exoplayer.external.util.n$b */
    /* loaded from: classes-dex2jar.jar:androidx/media2/exoplayer/external/util/n$b.class */
    public static final class C2016b {

        /* renamed from: a */
        public final int f8114a;

        /* renamed from: b */
        public final int f8115b;

        /* renamed from: c */
        public final int f8116c;

        /* renamed from: d */
        public final int f8117d;

        /* renamed from: e */
        public final int f8118e;

        /* renamed from: f */
        public final int f8119f;

        /* renamed from: g */
        public final float f8120g;

        /* renamed from: h */
        public final boolean f8121h;

        /* renamed from: i */
        public final boolean f8122i;

        /* renamed from: j */
        public final int f8123j;

        /* renamed from: k */
        public final int f8124k;

        /* renamed from: l */
        public final int f8125l;

        /* renamed from: m */
        public final boolean f8126m;

        public C2016b(int i, int i2, int i3, int i4, int i5, int i6, float f, boolean z, boolean z2, int i7, int i8, int i9, boolean z3) {
            this.f8114a = i;
            this.f8115b = i2;
            this.f8116c = i3;
            this.f8117d = i4;
            this.f8118e = i5;
            this.f8119f = i6;
            this.f8120g = f;
            this.f8121h = z;
            this.f8122i = z2;
            this.f8123j = i7;
            this.f8124k = i8;
            this.f8125l = i9;
            this.f8126m = z3;
        }
    }

    private C2014n() {
    }

    /* renamed from: a */
    public static int m41562a(byte[] bArr, int i) {
        int i2;
        int i3;
        synchronized (f8109c) {
            int i4 = 0;
            int i5 = 0;
            while (i4 < i) {
                while (true) {
                    if (i4 >= i - 2) {
                        i3 = i;
                        break;
                    } else if (bArr[i4] == 0 && bArr[i4 + 1] == 0 && bArr[i4 + 2] == 3) {
                        i3 = i4;
                        break;
                    } else {
                        i4++;
                    }
                }
                i4 = i3;
                if (i3 < i) {
                    int[] iArr = f8110d;
                    if (iArr.length <= i5) {
                        f8110d = Arrays.copyOf(iArr, iArr.length * 2);
                    }
                    f8110d[i5] = i3;
                    i4 = i3 + 3;
                    i5++;
                }
            }
            i2 = i - i5;
            int i6 = 0;
            int i7 = 0;
            for (int i8 = 0; i8 < i5; i8++) {
                int i9 = f8110d[i8] - i7;
                System.arraycopy(bArr, i7, bArr, i6, i9);
                int i10 = i6 + i9;
                int i11 = i10 + 1;
                bArr[i10] = (byte) 0;
                i6 = i11 + 1;
                bArr[i11] = (byte) 0;
                i7 += i9 + 3;
            }
            System.arraycopy(bArr, i7, bArr, i6, i2 - i6);
        }
        return i2;
    }

    /* JADX WARN: Code restructure failed: missing block: B:75:0x0118, code lost:
        r10 = true;
     */
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static int m41560a(byte[] r4, int r5, int r6, boolean[] r7) {
        /*
            Method dump skipped, instructions count: 360
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.media2.exoplayer.external.util.C2014n.m41560a(byte[], int, int, boolean[]):int");
    }

    /* JADX WARN: Removed duplicated region for block: B:67:0x01a8  */
    /* JADX WARN: Removed duplicated region for block: B:70:0x01d4  */
    /* JADX WARN: Removed duplicated region for block: B:88:0x025f  */
    /* JADX WARN: Removed duplicated region for block: B:93:0x028d  */
    /* JADX WARN: Type inference failed for: r0v26, types: [boolean, int] */
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static androidx.media2.exoplayer.external.util.C2014n.C2016b m41561a(byte[] r16, int r17, int r18) {
        /*
            Method dump skipped, instructions count: 742
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.media2.exoplayer.external.util.C2014n.m41561a(byte[], int, int):androidx.media2.exoplayer.external.util.n$b");
    }

    /* renamed from: a */
    public static void m41563a(ByteBuffer byteBuffer) {
        int i;
        int position = byteBuffer.position();
        int i2 = 0;
        int i3 = 0;
        while (true) {
            int i4 = i2 + 1;
            if (i4 >= position) {
                byteBuffer.clear();
                return;
            }
            int i5 = byteBuffer.get(i2) & 255;
            if (i3 == 3) {
                i = i3;
                if (i5 == 1) {
                    i = i3;
                    if ((byteBuffer.get(i4) & 31) == 7) {
                        ByteBuffer duplicate = byteBuffer.duplicate();
                        duplicate.position(i2 - 3);
                        duplicate.limit(position);
                        byteBuffer.position(0);
                        byteBuffer.put(duplicate);
                        return;
                    }
                }
            } else {
                i = i3;
                if (i5 == 0) {
                    i = i3 + 1;
                }
            }
            i3 = i;
            if (i5 != 0) {
                i3 = 0;
            }
            i2 = i4;
        }
    }

    /* renamed from: a */
    public static void m41559a(boolean[] zArr) {
        zArr[0] = false;
        zArr[1] = false;
        zArr[2] = false;
    }

    /* renamed from: a */
    public static boolean m41564a(String str, byte b) {
        if (!"video/avc".equals(str) || (b & 31) != 6) {
            return "video/hevc".equals(str) && ((b & 126) >> 1) == 39;
        }
        return true;
    }

    /* renamed from: b */
    public static int m41558b(byte[] bArr, int i) {
        return bArr[i + 3] & 31;
    }

    /* renamed from: c */
    public static int m41557c(byte[] bArr, int i) {
        return (bArr[i + 3] & 126) >> 1;
    }

    /* renamed from: d */
    public static C2015a m41556d(byte[] bArr, int i) {
        C2019q c2019q = new C2019q(bArr, 3, i);
        c2019q.m41513a(8);
        int m41505e = c2019q.m41505e();
        int m41505e2 = c2019q.m41505e();
        c2019q.m41514a();
        return new C2015a(m41505e, m41505e2, c2019q.m41511b());
    }
}

package androidx.media2.exoplayer.external.text.p072b;

import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.PorterDuff;
import android.graphics.PorterDuffXfermode;
import android.util.SparseArray;
import androidx.media2.exoplayer.external.text.C1856a;
import androidx.media2.exoplayer.external.util.C1993a;
import androidx.media2.exoplayer.external.util.C1996ac;
import androidx.media2.exoplayer.external.util.C2009j;
import androidx.media2.exoplayer.external.util.C2017o;
import io.objectbox.model.PropertyFlags;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
/* renamed from: androidx.media2.exoplayer.external.text.b.b */
/* loaded from: classes-dex2jar.jar:androidx/media2/exoplayer/external/text/b/b.class */
final class C1872b {

    /* renamed from: b */
    private static final byte[] f7507b = {0, 7, 8, 15};

    /* renamed from: c */
    private static final byte[] f7508c = {0, 119, -120, -1};

    /* renamed from: d */
    private static final byte[] f7509d = {0, 17, 34, 51, 68, 85, 102, 119, -120, -103, -86, -69, -52, -35, -18, -1};

    /* renamed from: a */
    final C1880h f7510a;

    /* renamed from: e */
    private final Paint f7511e;

    /* renamed from: f */
    private final Paint f7512f;

    /* renamed from: g */
    private final Canvas f7513g = new Canvas();

    /* renamed from: h */
    private final C1874b f7514h = new C1874b(719, 575, 0, 719, 0, 575);

    /* renamed from: i */
    private final C1873a f7515i = new C1873a(0, m41969a(), m41962b(), m41960c());

    /* renamed from: j */
    private Bitmap f7516j;

    /* renamed from: androidx.media2.exoplayer.external.text.b.b$a */
    /* loaded from: classes-dex2jar.jar:androidx/media2/exoplayer/external/text/b/b$a.class */
    public static final class C1873a {

        /* renamed from: a */
        public final int f7517a;

        /* renamed from: b */
        public final int[] f7518b;

        /* renamed from: c */
        public final int[] f7519c;

        /* renamed from: d */
        public final int[] f7520d;

        public C1873a(int i, int[] iArr, int[] iArr2, int[] iArr3) {
            this.f7517a = i;
            this.f7518b = iArr;
            this.f7519c = iArr2;
            this.f7520d = iArr3;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: androidx.media2.exoplayer.external.text.b.b$b */
    /* loaded from: classes-dex2jar.jar:androidx/media2/exoplayer/external/text/b/b$b.class */
    public static final class C1874b {

        /* renamed from: a */
        public final int f7521a;

        /* renamed from: b */
        public final int f7522b;

        /* renamed from: c */
        public final int f7523c;

        /* renamed from: d */
        public final int f7524d;

        /* renamed from: e */
        public final int f7525e;

        /* renamed from: f */
        public final int f7526f;

        public C1874b(int i, int i2, int i3, int i4, int i5, int i6) {
            this.f7521a = i;
            this.f7522b = i2;
            this.f7523c = i3;
            this.f7524d = i4;
            this.f7525e = i5;
            this.f7526f = i6;
        }
    }

    /* renamed from: androidx.media2.exoplayer.external.text.b.b$c */
    /* loaded from: classes-dex2jar.jar:androidx/media2/exoplayer/external/text/b/b$c.class */
    public static final class C1875c {

        /* renamed from: a */
        public final int f7527a;

        /* renamed from: b */
        public final boolean f7528b;

        /* renamed from: c */
        public final byte[] f7529c;

        /* renamed from: d */
        public final byte[] f7530d;

        public C1875c(int i, boolean z, byte[] bArr, byte[] bArr2) {
            this.f7527a = i;
            this.f7528b = z;
            this.f7529c = bArr;
            this.f7530d = bArr2;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: androidx.media2.exoplayer.external.text.b.b$d */
    /* loaded from: classes-dex2jar.jar:androidx/media2/exoplayer/external/text/b/b$d.class */
    public static final class C1876d {

        /* renamed from: a */
        public final int f7531a;

        /* renamed from: b */
        public final int f7532b;

        /* renamed from: c */
        public final int f7533c;

        /* renamed from: d */
        public final SparseArray<C1877e> f7534d;

        public C1876d(int i, int i2, int i3, SparseArray<C1877e> sparseArray) {
            this.f7531a = i;
            this.f7532b = i2;
            this.f7533c = i3;
            this.f7534d = sparseArray;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: androidx.media2.exoplayer.external.text.b.b$e */
    /* loaded from: classes-dex2jar.jar:androidx/media2/exoplayer/external/text/b/b$e.class */
    public static final class C1877e {

        /* renamed from: a */
        public final int f7535a;

        /* renamed from: b */
        public final int f7536b;

        public C1877e(int i, int i2) {
            this.f7535a = i;
            this.f7536b = i2;
        }
    }

    /* renamed from: androidx.media2.exoplayer.external.text.b.b$f */
    /* loaded from: classes-dex2jar.jar:androidx/media2/exoplayer/external/text/b/b$f.class */
    public static final class C1878f {

        /* renamed from: a */
        public final int f7537a;

        /* renamed from: b */
        public final boolean f7538b;

        /* renamed from: c */
        public final int f7539c;

        /* renamed from: d */
        public final int f7540d;

        /* renamed from: e */
        public final int f7541e;

        /* renamed from: f */
        public final int f7542f;

        /* renamed from: g */
        public final int f7543g;

        /* renamed from: h */
        public final int f7544h;

        /* renamed from: i */
        public final int f7545i;

        /* renamed from: j */
        public final int f7546j;

        /* renamed from: k */
        public final SparseArray<C1879g> f7547k;

        public C1878f(int i, boolean z, int i2, int i3, int i4, int i5, int i6, int i7, int i8, int i9, SparseArray<C1879g> sparseArray) {
            this.f7537a = i;
            this.f7538b = z;
            this.f7539c = i2;
            this.f7540d = i3;
            this.f7541e = i4;
            this.f7542f = i5;
            this.f7543g = i6;
            this.f7544h = i7;
            this.f7545i = i8;
            this.f7546j = i9;
            this.f7547k = sparseArray;
        }

        /* renamed from: a */
        public final void m41959a(C1878f c1878f) {
            if (c1878f == null) {
                return;
            }
            SparseArray<C1879g> sparseArray = c1878f.f7547k;
            for (int i = 0; i < sparseArray.size(); i++) {
                this.f7547k.put(sparseArray.keyAt(i), sparseArray.valueAt(i));
            }
        }
    }

    /* renamed from: androidx.media2.exoplayer.external.text.b.b$g */
    /* loaded from: classes-dex2jar.jar:androidx/media2/exoplayer/external/text/b/b$g.class */
    public static final class C1879g {

        /* renamed from: a */
        public final int f7548a;

        /* renamed from: b */
        public final int f7549b;

        /* renamed from: c */
        public final int f7550c;

        /* renamed from: d */
        public final int f7551d;

        /* renamed from: e */
        public final int f7552e;

        /* renamed from: f */
        public final int f7553f;

        public C1879g(int i, int i2, int i3, int i4, int i5, int i6) {
            this.f7548a = i;
            this.f7549b = i2;
            this.f7550c = i3;
            this.f7551d = i4;
            this.f7552e = i5;
            this.f7553f = i6;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: androidx.media2.exoplayer.external.text.b.b$h */
    /* loaded from: classes-dex2jar.jar:androidx/media2/exoplayer/external/text/b/b$h.class */
    public static final class C1880h {

        /* renamed from: a */
        public final int f7554a;

        /* renamed from: b */
        public final int f7555b;

        /* renamed from: c */
        public final SparseArray<C1878f> f7556c = new SparseArray<>();

        /* renamed from: d */
        public final SparseArray<C1873a> f7557d = new SparseArray<>();

        /* renamed from: e */
        public final SparseArray<C1875c> f7558e = new SparseArray<>();

        /* renamed from: f */
        public final SparseArray<C1873a> f7559f = new SparseArray<>();

        /* renamed from: g */
        public final SparseArray<C1875c> f7560g = new SparseArray<>();

        /* renamed from: h */
        public C1874b f7561h;

        /* renamed from: i */
        public C1876d f7562i;

        public C1880h(int i, int i2) {
            this.f7554a = i;
            this.f7555b = i2;
        }
    }

    public C1872b(int i, int i2) {
        Paint paint = new Paint();
        this.f7511e = paint;
        paint.setStyle(Paint.Style.FILL_AND_STROKE);
        paint.setXfermode(new PorterDuffXfermode(PorterDuff.Mode.SRC));
        paint.setPathEffect(null);
        Paint paint2 = new Paint();
        this.f7512f = paint2;
        paint2.setStyle(Paint.Style.FILL);
        paint2.setXfermode(new PorterDuffXfermode(PorterDuff.Mode.DST_OVER));
        paint2.setPathEffect(null);
        this.f7510a = new C1880h(i, i2);
    }

    /* renamed from: a */
    private static int m41968a(int i, int i2, int i3, int i4) {
        return (i << 24) | (i2 << 16) | (i3 << 8) | i4;
    }

    /* renamed from: a */
    private static C1875c m41966a(C2017o c2017o) {
        byte[] bArr;
        int m41548c = c2017o.m41548c(16);
        c2017o.m41551b(4);
        int m41548c2 = c2017o.m41548c(2);
        boolean m41545e = c2017o.m41545e();
        c2017o.m41551b(1);
        byte[] bArr2 = null;
        byte[] bArr3 = null;
        if (m41548c2 == 1) {
            c2017o.m41551b(c2017o.m41548c(8) * 16);
        } else if (m41548c2 == 0) {
            int m41548c3 = c2017o.m41548c(16);
            int m41548c4 = c2017o.m41548c(16);
            if (m41548c3 > 0) {
                bArr3 = new byte[m41548c3];
                c2017o.m41547c(bArr3, m41548c3);
            }
            bArr2 = bArr3;
            if (m41548c4 > 0) {
                byte[] bArr4 = new byte[m41548c4];
                c2017o.m41547c(bArr4, m41548c4);
                bArr = bArr4;
                bArr2 = bArr3;
                return new C1875c(m41548c, m41545e, bArr2, bArr);
            }
        }
        bArr = bArr2;
        return new C1875c(m41548c, m41545e, bArr2, bArr);
    }

    /* renamed from: a */
    private static C1878f m41965a(C2017o c2017o, int i) {
        int i2;
        int i3;
        int m41548c = c2017o.m41548c(8);
        c2017o.m41551b(4);
        boolean m41545e = c2017o.m41545e();
        c2017o.m41551b(3);
        int m41548c2 = c2017o.m41548c(16);
        int m41548c3 = c2017o.m41548c(16);
        int m41548c4 = c2017o.m41548c(3);
        int m41548c5 = c2017o.m41548c(3);
        c2017o.m41551b(2);
        int m41548c6 = c2017o.m41548c(8);
        int m41548c7 = c2017o.m41548c(8);
        int m41548c8 = c2017o.m41548c(4);
        int m41548c9 = c2017o.m41548c(2);
        c2017o.m41551b(2);
        int i4 = i - 10;
        SparseArray sparseArray = new SparseArray();
        while (i4 > 0) {
            int m41548c10 = c2017o.m41548c(16);
            int m41548c11 = c2017o.m41548c(2);
            int m41548c12 = c2017o.m41548c(2);
            int m41548c13 = c2017o.m41548c(12);
            c2017o.m41551b(4);
            int m41548c14 = c2017o.m41548c(12);
            i4 -= 6;
            if (m41548c11 == 1 || m41548c11 == 2) {
                i3 = c2017o.m41548c(8);
                i2 = c2017o.m41548c(8);
                i4 -= 2;
            } else {
                i3 = 0;
                i2 = 0;
            }
            sparseArray.put(m41548c10, new C1879g(m41548c11, m41548c12, m41548c13, m41548c14, i3, i2));
        }
        return new C1878f(m41548c, m41545e, m41548c2, m41548c3, m41548c4, m41548c5, m41548c6, m41548c7, m41548c8, m41548c9, sparseArray);
    }

    /* JADX WARN: Removed duplicated region for block: B:117:0x039d  */
    /* JADX WARN: Removed duplicated region for block: B:121:0x03aa  */
    /* JADX WARN: Removed duplicated region for block: B:126:0x03ec A[LOOP:3: B:91:0x02ca->B:126:0x03ec, LOOP_END] */
    /* JADX WARN: Removed duplicated region for block: B:149:0x027c A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:150:0x03e0 A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:67:0x0239  */
    /* JADX WARN: Removed duplicated region for block: B:71:0x0246  */
    /* JADX WARN: Removed duplicated region for block: B:76:0x0288 A[LOOP:2: B:38:0x014c->B:76:0x0288, LOOP_END] */
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private static void m41963a(byte[] r7, int[] r8, int r9, int r10, int r11, android.graphics.Paint r12, android.graphics.Canvas r13) {
        /*
            Method dump skipped, instructions count: 1021
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.media2.exoplayer.external.text.p072b.C1872b.m41963a(byte[], int[], int, int, int, android.graphics.Paint, android.graphics.Canvas):void");
    }

    /* renamed from: a */
    private static byte[] m41967a(int i, int i2, C2017o c2017o) {
        byte[] bArr = new byte[i];
        for (int i3 = 0; i3 < i; i3++) {
            bArr[i3] = (byte) c2017o.m41548c(i2);
        }
        return bArr;
    }

    /* renamed from: a */
    private static int[] m41969a() {
        return new int[]{0, -1, -16777216, -8421505};
    }

    /* renamed from: b */
    private static C1873a m41961b(C2017o c2017o, int i) {
        int i2;
        int i3;
        int i4;
        int i5;
        int m41548c = c2017o.m41548c(8);
        c2017o.m41551b(8);
        int i6 = i - 2;
        int[] m41969a = m41969a();
        int[] m41962b = m41962b();
        int[] m41960c = m41960c();
        while (i6 > 0) {
            int m41548c2 = c2017o.m41548c(8);
            int m41548c3 = c2017o.m41548c(8);
            int i7 = i6 - 2;
            int[] iArr = (m41548c3 & 128) != 0 ? m41969a : (m41548c3 & 64) != 0 ? m41962b : m41960c;
            if ((m41548c3 & 1) != 0) {
                i4 = c2017o.m41548c(8);
                i3 = c2017o.m41548c(8);
                i2 = c2017o.m41548c(8);
                i5 = c2017o.m41548c(8);
                i6 = i7 - 4;
            } else {
                int m41548c4 = c2017o.m41548c(6);
                int m41548c5 = c2017o.m41548c(4);
                i2 = c2017o.m41548c(4) << 4;
                i6 = i7 - 2;
                i5 = c2017o.m41548c(2) << 6;
                i4 = m41548c4 << 2;
                i3 = m41548c5 << 4;
            }
            if (i4 == 0) {
                i3 = 0;
                i2 = 0;
                i5 = 255;
            }
            double d = i4;
            double d2 = i3 - 128;
            int i8 = (int) (d + (1.402d * d2));
            double d3 = i2 - 128;
            iArr[m41548c2] = m41968a((byte) (255 - (i5 & 255)), C1996ac.m41674a(i8, 0, 255), C1996ac.m41674a((int) ((d - (0.34414d * d3)) - (d2 * 0.71414d)), 0, 255), C1996ac.m41674a((int) (d + (d3 * 1.772d)), 0, 255));
        }
        return new C1873a(m41548c, m41969a, m41962b, m41960c);
    }

    /* renamed from: b */
    private static int[] m41962b() {
        int[] iArr = new int[16];
        iArr[0] = 0;
        for (int i = 1; i < 16; i++) {
            if (i < 8) {
                iArr[i] = m41968a(255, (i & 1) != 0 ? 255 : 0, (i & 2) != 0 ? 255 : 0, (i & 4) != 0 ? 255 : 0);
            } else {
                int i2 = 127;
                int i3 = (i & 1) != 0 ? 127 : 0;
                int i4 = (i & 2) != 0 ? 127 : 0;
                if ((i & 4) == 0) {
                    i2 = 0;
                }
                iArr[i] = m41968a(255, i3, i4, i2);
            }
        }
        return iArr;
    }

    /* renamed from: c */
    private static int[] m41960c() {
        int[] iArr = new int[PropertyFlags.INDEX_PARTIAL_SKIP_NULL];
        iArr[0] = 0;
        for (int i = 0; i < 256; i++) {
            int i2 = 255;
            if (i < 8) {
                int i3 = (i & 1) != 0 ? 255 : 0;
                int i4 = (i & 2) != 0 ? 255 : 0;
                if ((i & 4) == 0) {
                    i2 = 0;
                }
                iArr[i] = m41968a(63, i3, i4, i2);
            } else {
                int i5 = i & 136;
                int i6 = 170;
                int i7 = 85;
                if (i5 == 0) {
                    int i8 = (i & 1) != 0 ? 85 : 0;
                    int i9 = (i & 16) != 0 ? 170 : 0;
                    int i10 = (i & 2) != 0 ? 85 : 0;
                    int i11 = (i & 32) != 0 ? 170 : 0;
                    if ((i & 4) == 0) {
                        i7 = 0;
                    }
                    if ((i & 64) == 0) {
                        i6 = 0;
                    }
                    iArr[i] = m41968a(255, i8 + i9, i10 + i11, i7 + i6);
                } else if (i5 != 8) {
                    int i12 = 43;
                    if (i5 == 128) {
                        int i13 = (i & 1) != 0 ? 43 : 0;
                        int i14 = (i & 16) != 0 ? 85 : 0;
                        int i15 = (i & 2) != 0 ? 43 : 0;
                        int i16 = (i & 32) != 0 ? 85 : 0;
                        if ((i & 4) == 0) {
                            i12 = 0;
                        }
                        if ((i & 64) == 0) {
                            i7 = 0;
                        }
                        iArr[i] = m41968a(255, i13 + 127 + i14, i15 + 127 + i16, i12 + 127 + i7);
                    } else if (i5 == 136) {
                        int i17 = (i & 1) != 0 ? 43 : 0;
                        int i18 = (i & 16) != 0 ? 85 : 0;
                        int i19 = (i & 2) != 0 ? 43 : 0;
                        int i20 = (i & 32) != 0 ? 85 : 0;
                        if ((i & 4) == 0) {
                            i12 = 0;
                        }
                        if ((i & 64) == 0) {
                            i7 = 0;
                        }
                        iArr[i] = m41968a(255, i17 + i18, i19 + i20, i12 + i7);
                    }
                } else {
                    int i21 = (i & 1) != 0 ? 85 : 0;
                    int i22 = (i & 16) != 0 ? 170 : 0;
                    int i23 = (i & 2) != 0 ? 85 : 0;
                    int i24 = (i & 32) != 0 ? 170 : 0;
                    if ((i & 4) == 0) {
                        i7 = 0;
                    }
                    if ((i & 64) == 0) {
                        i6 = 0;
                    }
                    iArr[i] = m41968a(127, i21 + i22, i23 + i24, i7 + i6);
                }
            }
        }
        return iArr;
    }

    /* renamed from: a */
    public final List<C1856a> m41964a(byte[] bArr, int i) {
        int i2;
        int i3;
        int i4;
        int i5;
        C2017o c2017o = new C2017o(bArr, i);
        while (c2017o.m41555a() >= 48 && c2017o.m41548c(8) == 15) {
            C1880h c1880h = this.f7510a;
            int m41548c = c2017o.m41548c(8);
            int m41548c2 = c2017o.m41548c(16);
            int m41548c3 = c2017o.m41548c(16);
            int m41549c = c2017o.m41549c();
            if (m41548c3 * 8 > c2017o.m41555a()) {
                C2009j.m41584a("DvbParser", "Data field length exceeds limit");
                c2017o.m41551b(c2017o.m41555a());
            } else {
                switch (m41548c) {
                    case 16:
                        if (m41548c2 == c1880h.f7554a) {
                            C1876d c1876d = c1880h.f7562i;
                            int m41548c4 = c2017o.m41548c(8);
                            int m41548c5 = c2017o.m41548c(4);
                            int m41548c6 = c2017o.m41548c(2);
                            c2017o.m41551b(2);
                            int i6 = m41548c3 - 2;
                            SparseArray sparseArray = new SparseArray();
                            while (i6 > 0) {
                                int m41548c7 = c2017o.m41548c(8);
                                c2017o.m41551b(8);
                                i6 -= 6;
                                sparseArray.put(m41548c7, new C1877e(c2017o.m41548c(16), c2017o.m41548c(16)));
                            }
                            C1876d c1876d2 = new C1876d(m41548c4, m41548c5, m41548c6, sparseArray);
                            if (c1876d2.f7533c != 0) {
                                c1880h.f7562i = c1876d2;
                                c1880h.f7556c.clear();
                                c1880h.f7557d.clear();
                                c1880h.f7558e.clear();
                                break;
                            } else if (c1876d != null && c1876d.f7532b != c1876d2.f7532b) {
                                c1880h.f7562i = c1876d2;
                                break;
                            }
                        }
                        break;
                    case 17:
                        C1876d c1876d3 = c1880h.f7562i;
                        if (m41548c2 == c1880h.f7554a && c1876d3 != null) {
                            C1878f m41965a = m41965a(c2017o, m41548c3);
                            if (c1876d3.f7533c == 0) {
                                m41965a.m41959a(c1880h.f7556c.get(m41965a.f7537a));
                            }
                            c1880h.f7556c.put(m41965a.f7537a, m41965a);
                            break;
                        }
                        break;
                    case 18:
                        if (m41548c2 == c1880h.f7554a) {
                            C1873a m41961b = m41961b(c2017o, m41548c3);
                            c1880h.f7557d.put(m41961b.f7517a, m41961b);
                            break;
                        } else if (m41548c2 == c1880h.f7555b) {
                            C1873a m41961b2 = m41961b(c2017o, m41548c3);
                            c1880h.f7559f.put(m41961b2.f7517a, m41961b2);
                            break;
                        }
                        break;
                    case 19:
                        if (m41548c2 == c1880h.f7554a) {
                            C1875c m41966a = m41966a(c2017o);
                            c1880h.f7558e.put(m41966a.f7527a, m41966a);
                            break;
                        } else if (m41548c2 == c1880h.f7555b) {
                            C1875c m41966a2 = m41966a(c2017o);
                            c1880h.f7560g.put(m41966a2.f7527a, m41966a2);
                            break;
                        }
                        break;
                    case 20:
                        if (m41548c2 == c1880h.f7554a) {
                            c2017o.m41551b(4);
                            boolean m41545e = c2017o.m41545e();
                            c2017o.m41551b(3);
                            int m41548c8 = c2017o.m41548c(16);
                            int m41548c9 = c2017o.m41548c(16);
                            if (m41545e) {
                                i3 = c2017o.m41548c(16);
                                i5 = c2017o.m41548c(16);
                                i2 = c2017o.m41548c(16);
                                i4 = c2017o.m41548c(16);
                            } else {
                                i5 = m41548c8;
                                i4 = m41548c9;
                                i3 = 0;
                                i2 = 0;
                            }
                            c1880h.f7561h = new C1874b(m41548c8, m41548c9, i3, i5, i2, i4);
                            break;
                        }
                        break;
                }
                int m41549c2 = c2017o.m41549c();
                C1993a.m41686b(c2017o.f8129c == 0);
                c2017o.f8128b += (m41549c + m41548c3) - m41549c2;
                c2017o.m41543g();
            }
        }
        if (this.f7510a.f7562i == null) {
            return Collections.emptyList();
        }
        C1874b c1874b = this.f7510a.f7561h != null ? this.f7510a.f7561h : this.f7514h;
        if (this.f7516j == null || c1874b.f7521a + 1 != this.f7516j.getWidth() || c1874b.f7522b + 1 != this.f7516j.getHeight()) {
            Bitmap createBitmap = Bitmap.createBitmap(c1874b.f7521a + 1, c1874b.f7522b + 1, Bitmap.Config.ARGB_8888);
            this.f7516j = createBitmap;
            this.f7513g.setBitmap(createBitmap);
        }
        ArrayList arrayList = new ArrayList();
        SparseArray<C1877e> sparseArray2 = this.f7510a.f7562i.f7534d;
        int i7 = 0;
        while (true) {
            int i8 = i7;
            if (i8 >= sparseArray2.size()) {
                return Collections.unmodifiableList(arrayList);
            }
            this.f7513g.save();
            C1877e valueAt = sparseArray2.valueAt(i8);
            C1878f c1878f = this.f7510a.f7556c.get(sparseArray2.keyAt(i8));
            int i9 = valueAt.f7535a + c1874b.f7523c;
            int i10 = valueAt.f7536b + c1874b.f7525e;
            this.f7513g.clipRect(i9, i10, Math.min(c1878f.f7539c + i9, c1874b.f7524d), Math.min(c1878f.f7540d + i10, c1874b.f7526f));
            C1873a c1873a = this.f7510a.f7557d.get(c1878f.f7543g);
            C1873a c1873a2 = c1873a;
            if (c1873a == null) {
                C1873a c1873a3 = this.f7510a.f7559f.get(c1878f.f7543g);
                c1873a2 = c1873a3;
                if (c1873a3 == null) {
                    c1873a2 = this.f7515i;
                }
            }
            SparseArray<C1879g> sparseArray3 = c1878f.f7547k;
            for (int i11 = 0; i11 < sparseArray3.size(); i11++) {
                int keyAt = sparseArray3.keyAt(i11);
                C1879g valueAt2 = sparseArray3.valueAt(i11);
                C1875c c1875c = this.f7510a.f7558e.get(keyAt);
                C1875c c1875c2 = c1875c;
                if (c1875c == null) {
                    c1875c2 = this.f7510a.f7560g.get(keyAt);
                }
                if (c1875c2 != null) {
                    Paint paint = c1875c2.f7528b ? null : this.f7511e;
                    int i12 = c1878f.f7542f;
                    int i13 = valueAt2.f7550c + i9;
                    int i14 = valueAt2.f7551d + i10;
                    Canvas canvas = this.f7513g;
                    int[] iArr = i12 == 3 ? c1873a2.f7520d : i12 == 2 ? c1873a2.f7519c : c1873a2.f7518b;
                    m41963a(c1875c2.f7529c, iArr, i12, i13, i14, paint, canvas);
                    m41963a(c1875c2.f7530d, iArr, i12, i13, i14 + 1, paint, canvas);
                }
            }
            if (c1878f.f7538b) {
                this.f7512f.setColor(c1878f.f7542f == 3 ? c1873a2.f7520d[c1878f.f7544h] : c1878f.f7542f == 2 ? c1873a2.f7519c[c1878f.f7545i] : c1873a2.f7518b[c1878f.f7546j]);
                this.f7513g.drawRect(i9, i10, c1878f.f7539c + i9, c1878f.f7540d + i10, this.f7512f);
            }
            arrayList.add(new C1856a(Bitmap.createBitmap(this.f7516j, i9, i10, c1878f.f7539c, c1878f.f7540d), i9 / c1874b.f7521a, 0, i10 / c1874b.f7522b, 0, c1878f.f7539c / c1874b.f7521a, c1878f.f7540d / c1874b.f7522b));
            this.f7513g.drawColor(0, PorterDuff.Mode.CLEAR);
            this.f7513g.restore();
            i7 = i8 + 1;
        }
    }
}

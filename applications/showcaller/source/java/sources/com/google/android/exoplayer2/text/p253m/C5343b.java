package com.google.android.exoplayer2.text.p253m;

import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.PorterDuff;
import android.graphics.PorterDuffXfermode;
import android.util.SparseArray;
import com.google.android.exoplayer2.text.C5317b;
import com.google.android.exoplayer2.util.C5515h0;
import com.google.android.exoplayer2.util.C5526o;
import com.google.android.exoplayer2.util.C5535u;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
/* renamed from: com.google.android.exoplayer2.text.m.b */
/* loaded from: classes-dex2jar.jar:com/google/android/exoplayer2/text/m/b.class */
final class C5343b {

    /* renamed from: a */
    private static final byte[] f17029a = {0, 7, 8, 15};

    /* renamed from: b */
    private static final byte[] f17030b = {0, 119, -120, -1};

    /* renamed from: c */
    private static final byte[] f17031c = {0, 17, 34, 51, 68, 85, 102, 119, -120, -103, -86, -69, -52, -35, -18, -1};

    /* renamed from: d */
    private final Paint f17032d;

    /* renamed from: e */
    private final Paint f17033e;

    /* renamed from: f */
    private final Canvas f17034f = new Canvas();

    /* renamed from: g */
    private final C5345b f17035g = new C5345b(719, 575, 0, 719, 0, 575);

    /* renamed from: h */
    private final C5344a f17036h = new C5344a(0, m19570c(), m19569d(), m19568e());

    /* renamed from: i */
    private final C5351h f17037i;

    /* renamed from: j */
    private Bitmap f17038j;

    /* renamed from: com.google.android.exoplayer2.text.m.b$a */
    /* loaded from: classes-dex2jar.jar:com/google/android/exoplayer2/text/m/b$a.class */
    public static final class C5344a {

        /* renamed from: a */
        public final int f17039a;

        /* renamed from: b */
        public final int[] f17040b;

        /* renamed from: c */
        public final int[] f17041c;

        /* renamed from: d */
        public final int[] f17042d;

        public C5344a(int i, int[] iArr, int[] iArr2, int[] iArr3) {
            this.f17039a = i;
            this.f17040b = iArr;
            this.f17041c = iArr2;
            this.f17042d = iArr3;
        }
    }

    /* renamed from: com.google.android.exoplayer2.text.m.b$b */
    /* loaded from: classes-dex2jar.jar:com/google/android/exoplayer2/text/m/b$b.class */
    public static final class C5345b {

        /* renamed from: a */
        public final int f17043a;

        /* renamed from: b */
        public final int f17044b;

        /* renamed from: c */
        public final int f17045c;

        /* renamed from: d */
        public final int f17046d;

        /* renamed from: e */
        public final int f17047e;

        /* renamed from: f */
        public final int f17048f;

        public C5345b(int i, int i2, int i3, int i4, int i5, int i6) {
            this.f17043a = i;
            this.f17044b = i2;
            this.f17045c = i3;
            this.f17046d = i4;
            this.f17047e = i5;
            this.f17048f = i6;
        }
    }

    /* renamed from: com.google.android.exoplayer2.text.m.b$c */
    /* loaded from: classes-dex2jar.jar:com/google/android/exoplayer2/text/m/b$c.class */
    public static final class C5346c {

        /* renamed from: a */
        public final int f17049a;

        /* renamed from: b */
        public final boolean f17050b;

        /* renamed from: c */
        public final byte[] f17051c;

        /* renamed from: d */
        public final byte[] f17052d;

        public C5346c(int i, boolean z, byte[] bArr, byte[] bArr2) {
            this.f17049a = i;
            this.f17050b = z;
            this.f17051c = bArr;
            this.f17052d = bArr2;
        }
    }

    /* renamed from: com.google.android.exoplayer2.text.m.b$d */
    /* loaded from: classes-dex2jar.jar:com/google/android/exoplayer2/text/m/b$d.class */
    public static final class C5347d {

        /* renamed from: a */
        public final int f17053a;

        /* renamed from: b */
        public final int f17054b;

        /* renamed from: c */
        public final int f17055c;

        /* renamed from: d */
        public final SparseArray<C5348e> f17056d;

        public C5347d(int i, int i2, int i3, SparseArray<C5348e> sparseArray) {
            this.f17053a = i;
            this.f17054b = i2;
            this.f17055c = i3;
            this.f17056d = sparseArray;
        }
    }

    /* renamed from: com.google.android.exoplayer2.text.m.b$e */
    /* loaded from: classes-dex2jar.jar:com/google/android/exoplayer2/text/m/b$e.class */
    public static final class C5348e {

        /* renamed from: a */
        public final int f17057a;

        /* renamed from: b */
        public final int f17058b;

        public C5348e(int i, int i2) {
            this.f17057a = i;
            this.f17058b = i2;
        }
    }

    /* renamed from: com.google.android.exoplayer2.text.m.b$f */
    /* loaded from: classes-dex2jar.jar:com/google/android/exoplayer2/text/m/b$f.class */
    public static final class C5349f {

        /* renamed from: a */
        public final int f17059a;

        /* renamed from: b */
        public final boolean f17060b;

        /* renamed from: c */
        public final int f17061c;

        /* renamed from: d */
        public final int f17062d;

        /* renamed from: e */
        public final int f17063e;

        /* renamed from: f */
        public final int f17064f;

        /* renamed from: g */
        public final int f17065g;

        /* renamed from: h */
        public final int f17066h;

        /* renamed from: i */
        public final int f17067i;

        /* renamed from: j */
        public final int f17068j;

        /* renamed from: k */
        public final SparseArray<C5350g> f17069k;

        public C5349f(int i, boolean z, int i2, int i3, int i4, int i5, int i6, int i7, int i8, int i9, SparseArray<C5350g> sparseArray) {
            this.f17059a = i;
            this.f17060b = z;
            this.f17061c = i2;
            this.f17062d = i3;
            this.f17063e = i4;
            this.f17064f = i5;
            this.f17065g = i6;
            this.f17066h = i7;
            this.f17067i = i8;
            this.f17068j = i9;
            this.f17069k = sparseArray;
        }

        /* renamed from: a */
        public void m19554a(C5349f c5349f) {
            SparseArray<C5350g> sparseArray = c5349f.f17069k;
            for (int i = 0; i < sparseArray.size(); i++) {
                this.f17069k.put(sparseArray.keyAt(i), sparseArray.valueAt(i));
            }
        }
    }

    /* renamed from: com.google.android.exoplayer2.text.m.b$g */
    /* loaded from: classes-dex2jar.jar:com/google/android/exoplayer2/text/m/b$g.class */
    public static final class C5350g {

        /* renamed from: a */
        public final int f17070a;

        /* renamed from: b */
        public final int f17071b;

        /* renamed from: c */
        public final int f17072c;

        /* renamed from: d */
        public final int f17073d;

        /* renamed from: e */
        public final int f17074e;

        /* renamed from: f */
        public final int f17075f;

        public C5350g(int i, int i2, int i3, int i4, int i5, int i6) {
            this.f17070a = i;
            this.f17071b = i2;
            this.f17072c = i3;
            this.f17073d = i4;
            this.f17074e = i5;
            this.f17075f = i6;
        }
    }

    /* renamed from: com.google.android.exoplayer2.text.m.b$h */
    /* loaded from: classes-dex2jar.jar:com/google/android/exoplayer2/text/m/b$h.class */
    public static final class C5351h {

        /* renamed from: a */
        public final int f17076a;

        /* renamed from: b */
        public final int f17077b;

        /* renamed from: c */
        public final SparseArray<C5349f> f17078c = new SparseArray<>();

        /* renamed from: d */
        public final SparseArray<C5344a> f17079d = new SparseArray<>();

        /* renamed from: e */
        public final SparseArray<C5346c> f17080e = new SparseArray<>();

        /* renamed from: f */
        public final SparseArray<C5344a> f17081f = new SparseArray<>();

        /* renamed from: g */
        public final SparseArray<C5346c> f17082g = new SparseArray<>();

        /* renamed from: h */
        public C5345b f17083h;

        /* renamed from: i */
        public C5347d f17084i;

        public C5351h(int i, int i2) {
            this.f17076a = i;
            this.f17077b = i2;
        }

        /* renamed from: a */
        public void m19553a() {
            this.f17078c.clear();
            this.f17079d.clear();
            this.f17080e.clear();
            this.f17081f.clear();
            this.f17082g.clear();
            this.f17083h = null;
            this.f17084i = null;
        }
    }

    public C5343b(int i, int i2) {
        Paint paint = new Paint();
        this.f17032d = paint;
        paint.setStyle(Paint.Style.FILL_AND_STROKE);
        paint.setXfermode(new PorterDuffXfermode(PorterDuff.Mode.SRC));
        paint.setPathEffect(null);
        Paint paint2 = new Paint();
        this.f17033e = paint2;
        paint2.setStyle(Paint.Style.FILL);
        paint2.setXfermode(new PorterDuffXfermode(PorterDuff.Mode.DST_OVER));
        paint2.setPathEffect(null);
        this.f17037i = new C5351h(i, i2);
    }

    /* renamed from: a */
    private static byte[] m19572a(int i, int i2, C5535u c5535u) {
        byte[] bArr = new byte[i];
        for (int i3 = 0; i3 < i; i3++) {
            bArr[i3] = (byte) c5535u.m18703h(i2);
        }
        return bArr;
    }

    /* renamed from: c */
    private static int[] m19570c() {
        return new int[]{0, -1, -16777216, -8421505};
    }

    /* renamed from: d */
    private static int[] m19569d() {
        int[] iArr = new int[16];
        iArr[0] = 0;
        for (int i = 1; i < 16; i++) {
            if (i < 8) {
                iArr[i] = m19567f(255, (i & 1) != 0 ? 255 : 0, (i & 2) != 0 ? 255 : 0, (i & 4) != 0 ? 255 : 0);
            } else {
                int i2 = 127;
                int i3 = (i & 1) != 0 ? 127 : 0;
                int i4 = (i & 2) != 0 ? 127 : 0;
                if ((i & 4) == 0) {
                    i2 = 0;
                }
                iArr[i] = m19567f(255, i3, i4, i2);
            }
        }
        return iArr;
    }

    /* renamed from: e */
    private static int[] m19568e() {
        int[] iArr = new int[256];
        iArr[0] = 0;
        for (int i = 0; i < 256; i++) {
            int i2 = 255;
            if (i < 8) {
                int i3 = (i & 1) != 0 ? 255 : 0;
                int i4 = (i & 2) != 0 ? 255 : 0;
                if ((i & 4) == 0) {
                    i2 = 0;
                }
                iArr[i] = m19567f(63, i3, i4, i2);
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
                    iArr[i] = m19567f(255, i8 + i9, i10 + i11, i7 + i6);
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
                        iArr[i] = m19567f(255, i13 + 127 + i14, i15 + 127 + i16, i12 + 127 + i7);
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
                        iArr[i] = m19567f(255, i17 + i18, i19 + i20, i12 + i7);
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
                    iArr[i] = m19567f(127, i21 + i22, i23 + i24, i7 + i6);
                }
            }
        }
        return iArr;
    }

    /* renamed from: f */
    private static int m19567f(int i, int i2, int i3, int i4) {
        return (i << 24) | (i2 << 16) | (i3 << 8) | i4;
    }

    /* JADX WARN: Removed duplicated region for block: B:29:0x00c2  */
    /* JADX WARN: Removed duplicated region for block: B:33:0x00ce  */
    /* JADX WARN: Removed duplicated region for block: B:39:0x0103 A[LOOP:0: B:3:0x0009->B:39:0x0103, LOOP_END] */
    /* JADX WARN: Removed duplicated region for block: B:40:0x0100 A[SYNTHETIC] */
    /* renamed from: g */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private static int m19566g(com.google.android.exoplayer2.util.C5535u r7, int[] r8, byte[] r9, int r10, int r11, android.graphics.Paint r12, android.graphics.Canvas r13) {
        /*
            Method dump skipped, instructions count: 265
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.exoplayer2.text.p253m.C5343b.m19566g(com.google.android.exoplayer2.util.u, int[], byte[], int, int, android.graphics.Paint, android.graphics.Canvas):int");
    }

    /* JADX WARN: Removed duplicated region for block: B:32:0x00d9  */
    /* JADX WARN: Removed duplicated region for block: B:36:0x00e5  */
    /* JADX WARN: Removed duplicated region for block: B:42:0x011a A[LOOP:0: B:3:0x0009->B:42:0x011a, LOOP_END] */
    /* JADX WARN: Removed duplicated region for block: B:43:0x0117 A[SYNTHETIC] */
    /* renamed from: h */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private static int m19565h(com.google.android.exoplayer2.util.C5535u r7, int[] r8, byte[] r9, int r10, int r11, android.graphics.Paint r12, android.graphics.Canvas r13) {
        /*
            Method dump skipped, instructions count: 288
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.exoplayer2.text.p253m.C5343b.m19565h(com.google.android.exoplayer2.util.u, int[], byte[], int, int, android.graphics.Paint, android.graphics.Canvas):int");
    }

    /* renamed from: i */
    private static int m19564i(C5535u c5535u, int[] iArr, byte[] bArr, int i, int i2, Paint paint, Canvas canvas) {
        int i3;
        int i4 = i;
        boolean z = false;
        do {
            int m18703h = c5535u.m18703h(8);
            if (m18703h != 0) {
                i3 = 1;
            } else if (!c5535u.m18704g()) {
                i3 = c5535u.m18703h(7);
                if (i3 != 0) {
                    m18703h = 0;
                } else {
                    m18703h = 0;
                    z = true;
                    i3 = 0;
                }
            } else {
                i3 = c5535u.m18703h(7);
                m18703h = c5535u.m18703h(8);
            }
            if (i3 != 0 && paint != null) {
                byte b = m18703h;
                if (bArr != null) {
                    b = bArr[m18703h];
                }
                paint.setColor(iArr[b]);
                canvas.drawRect(i4, i2, i4 + i3, i2 + 1, paint);
            }
            i4 += i3;
        } while (!z);
        return i4;
    }

    /* renamed from: j */
    private static void m19563j(byte[] bArr, int[] iArr, int i, int i2, int i3, Paint paint, Canvas canvas) {
        C5535u c5535u = new C5535u(bArr);
        byte[] bArr2 = null;
        byte[] bArr3 = null;
        byte[] bArr4 = null;
        int i4 = i3;
        int i5 = i2;
        while (c5535u.m18709b() != 0) {
            int m18703h = c5535u.m18703h(8);
            if (m18703h != 240) {
                switch (m18703h) {
                    case 16:
                        i5 = m19566g(c5535u, iArr, i == 3 ? bArr2 == null ? f17030b : bArr2 : i == 2 ? bArr4 == null ? f17029a : bArr4 : null, i5, i4, paint, canvas);
                        c5535u.m18708c();
                        continue;
                    case 17:
                        i5 = m19565h(c5535u, iArr, i == 3 ? bArr3 == null ? f17031c : bArr3 : null, i5, i4, paint, canvas);
                        c5535u.m18708c();
                        continue;
                    case 18:
                        i5 = m19564i(c5535u, iArr, null, i5, i4, paint, canvas);
                        continue;
                    default:
                        switch (m18703h) {
                            case 32:
                                bArr4 = m19572a(4, 4, c5535u);
                                continue;
                            case 33:
                                bArr2 = m19572a(4, 8, c5535u);
                                continue;
                            case 34:
                                bArr3 = m19572a(16, 8, c5535u);
                                continue;
                            default:
                                continue;
                        }
                }
            } else {
                i4 += 2;
                i5 = i2;
            }
        }
    }

    /* renamed from: k */
    private static void m19562k(C5346c c5346c, C5344a c5344a, int i, int i2, int i3, Paint paint, Canvas canvas) {
        int[] iArr = i == 3 ? c5344a.f17042d : i == 2 ? c5344a.f17041c : c5344a.f17040b;
        m19563j(c5346c.f17051c, iArr, i, i2, i3, paint, canvas);
        m19563j(c5346c.f17052d, iArr, i, i2, i3 + 1, paint, canvas);
    }

    /* renamed from: l */
    private static C5344a m19561l(C5535u c5535u, int i) {
        int i2;
        int i3;
        int i4;
        int i5;
        int m18703h = c5535u.m18703h(8);
        c5535u.m18694q(8);
        int i6 = i - 2;
        int[] m19570c = m19570c();
        int[] m19569d = m19569d();
        int[] m19568e = m19568e();
        while (i6 > 0) {
            int m18703h2 = c5535u.m18703h(8);
            int m18703h3 = c5535u.m18703h(8);
            int i7 = i6 - 2;
            int[] iArr = (m18703h3 & 128) != 0 ? m19570c : (m18703h3 & 64) != 0 ? m19569d : m19568e;
            if ((m18703h3 & 1) != 0) {
                i4 = c5535u.m18703h(8);
                i3 = c5535u.m18703h(8);
                i2 = c5535u.m18703h(8);
                i5 = c5535u.m18703h(8);
                i6 = i7 - 4;
            } else {
                int m18703h4 = c5535u.m18703h(6);
                int m18703h5 = c5535u.m18703h(4);
                i2 = c5535u.m18703h(4) << 4;
                i6 = i7 - 2;
                i5 = c5535u.m18703h(2) << 6;
                i4 = m18703h4 << 2;
                i3 = m18703h5 << 4;
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
            iArr[m18703h2] = m19567f((byte) (255 - (i5 & 255)), C5515h0.m18819n(i8, 0, 255), C5515h0.m18819n((int) ((d - (0.34414d * d3)) - (d2 * 0.71414d)), 0, 255), C5515h0.m18819n((int) (d + (d3 * 1.772d)), 0, 255));
        }
        return new C5344a(m18703h, m19570c, m19569d, m19568e);
    }

    /* renamed from: m */
    private static C5345b m19560m(C5535u c5535u) {
        int i;
        int i2;
        int i3;
        int i4;
        c5535u.m18694q(4);
        boolean m18704g = c5535u.m18704g();
        c5535u.m18694q(3);
        int m18703h = c5535u.m18703h(16);
        int m18703h2 = c5535u.m18703h(16);
        if (m18704g) {
            i4 = c5535u.m18703h(16);
            i3 = c5535u.m18703h(16);
            i2 = c5535u.m18703h(16);
            i = c5535u.m18703h(16);
        } else {
            i3 = m18703h;
            i = m18703h2;
            i4 = 0;
            i2 = 0;
        }
        return new C5345b(m18703h, m18703h2, i4, i3, i2, i);
    }

    /* renamed from: n */
    private static C5346c m19559n(C5535u c5535u) {
        byte[] bArr;
        int m18703h = c5535u.m18703h(16);
        c5535u.m18694q(4);
        int m18703h2 = c5535u.m18703h(2);
        boolean m18704g = c5535u.m18704g();
        c5535u.m18694q(1);
        byte[] bArr2 = null;
        byte[] bArr3 = null;
        if (m18703h2 == 1) {
            c5535u.m18694q(c5535u.m18703h(8) * 16);
        } else if (m18703h2 == 0) {
            int m18703h3 = c5535u.m18703h(16);
            int m18703h4 = c5535u.m18703h(16);
            if (m18703h3 > 0) {
                bArr3 = new byte[m18703h3];
                c5535u.m18700k(bArr3, 0, m18703h3);
            }
            bArr2 = bArr3;
            if (m18703h4 > 0) {
                byte[] bArr4 = new byte[m18703h4];
                c5535u.m18700k(bArr4, 0, m18703h4);
                bArr = bArr4;
                bArr2 = bArr3;
                return new C5346c(m18703h, m18704g, bArr2, bArr);
            }
        }
        bArr = bArr2;
        return new C5346c(m18703h, m18704g, bArr2, bArr);
    }

    /* renamed from: o */
    private static C5347d m19558o(C5535u c5535u, int i) {
        int m18703h = c5535u.m18703h(8);
        int m18703h2 = c5535u.m18703h(4);
        int m18703h3 = c5535u.m18703h(2);
        c5535u.m18694q(2);
        int i2 = i - 2;
        SparseArray sparseArray = new SparseArray();
        while (i2 > 0) {
            int m18703h4 = c5535u.m18703h(8);
            c5535u.m18694q(8);
            i2 -= 6;
            sparseArray.put(m18703h4, new C5348e(c5535u.m18703h(16), c5535u.m18703h(16)));
        }
        return new C5347d(m18703h, m18703h2, m18703h3, sparseArray);
    }

    /* renamed from: p */
    private static C5349f m19557p(C5535u c5535u, int i) {
        int i2;
        int i3;
        int m18703h = c5535u.m18703h(8);
        c5535u.m18694q(4);
        boolean m18704g = c5535u.m18704g();
        c5535u.m18694q(3);
        int m18703h2 = c5535u.m18703h(16);
        int m18703h3 = c5535u.m18703h(16);
        int m18703h4 = c5535u.m18703h(3);
        int m18703h5 = c5535u.m18703h(3);
        c5535u.m18694q(2);
        int m18703h6 = c5535u.m18703h(8);
        int m18703h7 = c5535u.m18703h(8);
        int m18703h8 = c5535u.m18703h(4);
        int m18703h9 = c5535u.m18703h(2);
        c5535u.m18694q(2);
        int i4 = i - 10;
        SparseArray sparseArray = new SparseArray();
        while (i4 > 0) {
            int m18703h10 = c5535u.m18703h(16);
            int m18703h11 = c5535u.m18703h(2);
            int m18703h12 = c5535u.m18703h(2);
            int m18703h13 = c5535u.m18703h(12);
            c5535u.m18694q(4);
            int m18703h14 = c5535u.m18703h(12);
            i4 -= 6;
            if (m18703h11 == 1 || m18703h11 == 2) {
                i3 = c5535u.m18703h(8);
                i2 = c5535u.m18703h(8);
                i4 -= 2;
            } else {
                i3 = 0;
                i2 = 0;
            }
            sparseArray.put(m18703h10, new C5350g(m18703h11, m18703h12, m18703h13, m18703h14, i3, i2));
        }
        return new C5349f(m18703h, m18704g, m18703h2, m18703h3, m18703h4, m18703h5, m18703h6, m18703h7, m18703h8, m18703h9, sparseArray);
    }

    /* renamed from: q */
    private static void m19556q(C5535u c5535u, C5351h c5351h) {
        C5349f c5349f;
        int m18703h = c5535u.m18703h(8);
        int m18703h2 = c5535u.m18703h(16);
        int m18703h3 = c5535u.m18703h(16);
        int m18707d = c5535u.m18707d();
        if (m18703h3 * 8 > c5535u.m18709b()) {
            C5526o.m18742f("DvbParser", "Data field length exceeds limit");
            c5535u.m18694q(c5535u.m18709b());
            return;
        }
        switch (m18703h) {
            case 16:
                if (m18703h2 == c5351h.f17076a) {
                    C5347d c5347d = c5351h.f17084i;
                    C5347d m19558o = m19558o(c5535u, m18703h3);
                    if (m19558o.f17055c == 0) {
                        if (c5347d != null && c5347d.f17054b != m19558o.f17054b) {
                            c5351h.f17084i = m19558o;
                            break;
                        }
                    } else {
                        c5351h.f17084i = m19558o;
                        c5351h.f17078c.clear();
                        c5351h.f17079d.clear();
                        c5351h.f17080e.clear();
                        break;
                    }
                }
                break;
            case 17:
                C5347d c5347d2 = c5351h.f17084i;
                if (m18703h2 == c5351h.f17076a && c5347d2 != null) {
                    C5349f m19557p = m19557p(c5535u, m18703h3);
                    if (c5347d2.f17055c == 0 && (c5349f = c5351h.f17078c.get(m19557p.f17059a)) != null) {
                        m19557p.m19554a(c5349f);
                    }
                    c5351h.f17078c.put(m19557p.f17059a, m19557p);
                    break;
                }
                break;
            case 18:
                if (m18703h2 != c5351h.f17076a) {
                    if (m18703h2 == c5351h.f17077b) {
                        C5344a m19561l = m19561l(c5535u, m18703h3);
                        c5351h.f17081f.put(m19561l.f17039a, m19561l);
                        break;
                    }
                } else {
                    C5344a m19561l2 = m19561l(c5535u, m18703h3);
                    c5351h.f17079d.put(m19561l2.f17039a, m19561l2);
                    break;
                }
                break;
            case 19:
                if (m18703h2 != c5351h.f17076a) {
                    if (m18703h2 == c5351h.f17077b) {
                        C5346c m19559n = m19559n(c5535u);
                        c5351h.f17082g.put(m19559n.f17049a, m19559n);
                        break;
                    }
                } else {
                    C5346c m19559n2 = m19559n(c5535u);
                    c5351h.f17080e.put(m19559n2.f17049a, m19559n2);
                    break;
                }
                break;
            case 20:
                if (m18703h2 == c5351h.f17076a) {
                    c5351h.f17083h = m19560m(c5535u);
                    break;
                }
                break;
        }
        c5535u.m18693r((m18707d + m18703h3) - c5535u.m18707d());
    }

    /* renamed from: b */
    public List<C5317b> m19571b(byte[] bArr, int i) {
        C5535u c5535u = new C5535u(bArr, i);
        while (c5535u.m18709b() >= 48 && c5535u.m18703h(8) == 15) {
            m19556q(c5535u, this.f17037i);
        }
        C5351h c5351h = this.f17037i;
        C5347d c5347d = c5351h.f17084i;
        if (c5347d == null) {
            return Collections.emptyList();
        }
        C5345b c5345b = c5351h.f17083h;
        if (c5345b == null) {
            c5345b = this.f17035g;
        }
        Bitmap bitmap = this.f17038j;
        if (bitmap == null || c5345b.f17043a + 1 != bitmap.getWidth() || c5345b.f17044b + 1 != this.f17038j.getHeight()) {
            Bitmap createBitmap = Bitmap.createBitmap(c5345b.f17043a + 1, c5345b.f17044b + 1, Bitmap.Config.ARGB_8888);
            this.f17038j = createBitmap;
            this.f17034f.setBitmap(createBitmap);
        }
        ArrayList arrayList = new ArrayList();
        SparseArray<C5348e> sparseArray = c5347d.f17056d;
        for (int i2 = 0; i2 < sparseArray.size(); i2++) {
            this.f17034f.save();
            C5348e valueAt = sparseArray.valueAt(i2);
            C5349f c5349f = this.f17037i.f17078c.get(sparseArray.keyAt(i2));
            int i3 = valueAt.f17057a + c5345b.f17045c;
            int i4 = valueAt.f17058b + c5345b.f17047e;
            this.f17034f.clipRect(i3, i4, Math.min(c5349f.f17061c + i3, c5345b.f17046d), Math.min(c5349f.f17062d + i4, c5345b.f17048f));
            C5344a c5344a = this.f17037i.f17079d.get(c5349f.f17065g);
            C5344a c5344a2 = c5344a;
            if (c5344a == null) {
                C5344a c5344a3 = this.f17037i.f17081f.get(c5349f.f17065g);
                c5344a2 = c5344a3;
                if (c5344a3 == null) {
                    c5344a2 = this.f17036h;
                }
            }
            SparseArray<C5350g> sparseArray2 = c5349f.f17069k;
            for (int i5 = 0; i5 < sparseArray2.size(); i5++) {
                int keyAt = sparseArray2.keyAt(i5);
                C5350g valueAt2 = sparseArray2.valueAt(i5);
                C5346c c5346c = this.f17037i.f17080e.get(keyAt);
                if (c5346c == null) {
                    c5346c = this.f17037i.f17082g.get(keyAt);
                }
                if (c5346c != null) {
                    m19562k(c5346c, c5344a2, c5349f.f17064f, valueAt2.f17072c + i3, i4 + valueAt2.f17073d, c5346c.f17050b ? null : this.f17032d, this.f17034f);
                }
            }
            if (c5349f.f17060b) {
                int i6 = c5349f.f17064f;
                this.f17033e.setColor(i6 == 3 ? c5344a2.f17042d[c5349f.f17066h] : i6 == 2 ? c5344a2.f17041c[c5349f.f17067i] : c5344a2.f17040b[c5349f.f17068j]);
                this.f17034f.drawRect(i3, i4, c5349f.f17061c + i3, c5349f.f17062d + i4, this.f17033e);
            }
            Bitmap createBitmap2 = Bitmap.createBitmap(this.f17038j, i3, i4, c5349f.f17061c, c5349f.f17062d);
            float f = i3;
            int i7 = c5345b.f17043a;
            float f2 = f / i7;
            float f3 = i4;
            int i8 = c5345b.f17044b;
            arrayList.add(new C5317b(createBitmap2, f2, 0, f3 / i8, 0, c5349f.f17061c / i7, c5349f.f17062d / i8));
            this.f17034f.drawColor(0, PorterDuff.Mode.CLEAR);
            this.f17034f.restore();
        }
        return Collections.unmodifiableList(arrayList);
    }

    /* renamed from: r */
    public void m19555r() {
        this.f17037i.m19553a();
    }
}

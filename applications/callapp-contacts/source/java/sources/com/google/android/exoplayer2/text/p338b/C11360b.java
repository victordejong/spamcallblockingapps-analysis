package com.google.android.exoplayer2.text.p338b;

import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.PorterDuff;
import android.graphics.PorterDuffXfermode;
import android.util.SparseArray;
import com.google.android.exoplayer2.text.C11356b;
import com.google.android.exoplayer2.util.C11599af;
import com.google.android.exoplayer2.util.C11617n;
import com.google.android.exoplayer2.util.C11627t;
import io.objectbox.model.PropertyFlags;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
/* renamed from: com.google.android.exoplayer2.text.b.b */
/* loaded from: classes3-dex2jar.jar:com/google/android/exoplayer2/text/b/b.class */
final class C11360b {

    /* renamed from: b */
    private static final byte[] f37445b = {0, 7, 8, 15};

    /* renamed from: c */
    private static final byte[] f37446c = {0, 119, -120, -1};

    /* renamed from: d */
    private static final byte[] f37447d = {0, 17, 34, 51, 68, 85, 102, 119, -120, -103, -86, -69, -52, -35, -18, -1};

    /* renamed from: a */
    final C11368h f37448a;

    /* renamed from: e */
    private final Paint f37449e;

    /* renamed from: f */
    private final Paint f37450f;

    /* renamed from: g */
    private final Canvas f37451g = new Canvas();

    /* renamed from: h */
    private final C11362b f37452h = new C11362b(719, 575, 0, 719, 0, 575);

    /* renamed from: i */
    private final C11361a f37453i = new C11361a(0, m20741a(), m20734b(), m20732c());

    /* renamed from: j */
    private Bitmap f37454j;

    /* renamed from: com.google.android.exoplayer2.text.b.b$a */
    /* loaded from: classes3-dex2jar.jar:com/google/android/exoplayer2/text/b/b$a.class */
    public static final class C11361a {

        /* renamed from: a */
        public final int f37455a;

        /* renamed from: b */
        public final int[] f37456b;

        /* renamed from: c */
        public final int[] f37457c;

        /* renamed from: d */
        public final int[] f37458d;

        public C11361a(int i, int[] iArr, int[] iArr2, int[] iArr3) {
            this.f37455a = i;
            this.f37456b = iArr;
            this.f37457c = iArr2;
            this.f37458d = iArr3;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: com.google.android.exoplayer2.text.b.b$b */
    /* loaded from: classes3-dex2jar.jar:com/google/android/exoplayer2/text/b/b$b.class */
    public static final class C11362b {

        /* renamed from: a */
        public final int f37459a;

        /* renamed from: b */
        public final int f37460b;

        /* renamed from: c */
        public final int f37461c;

        /* renamed from: d */
        public final int f37462d;

        /* renamed from: e */
        public final int f37463e;

        /* renamed from: f */
        public final int f37464f;

        public C11362b(int i, int i2, int i3, int i4, int i5, int i6) {
            this.f37459a = i;
            this.f37460b = i2;
            this.f37461c = i3;
            this.f37462d = i4;
            this.f37463e = i5;
            this.f37464f = i6;
        }
    }

    /* renamed from: com.google.android.exoplayer2.text.b.b$c */
    /* loaded from: classes3-dex2jar.jar:com/google/android/exoplayer2/text/b/b$c.class */
    public static final class C11363c {

        /* renamed from: a */
        public final int f37465a;

        /* renamed from: b */
        public final boolean f37466b;

        /* renamed from: c */
        public final byte[] f37467c;

        /* renamed from: d */
        public final byte[] f37468d;

        public C11363c(int i, boolean z, byte[] bArr, byte[] bArr2) {
            this.f37465a = i;
            this.f37466b = z;
            this.f37467c = bArr;
            this.f37468d = bArr2;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: com.google.android.exoplayer2.text.b.b$d */
    /* loaded from: classes3-dex2jar.jar:com/google/android/exoplayer2/text/b/b$d.class */
    public static final class C11364d {

        /* renamed from: a */
        public final int f37469a;

        /* renamed from: b */
        public final int f37470b;

        /* renamed from: c */
        public final int f37471c;

        /* renamed from: d */
        public final SparseArray<C11365e> f37472d;

        public C11364d(int i, int i2, int i3, SparseArray<C11365e> sparseArray) {
            this.f37469a = i;
            this.f37470b = i2;
            this.f37471c = i3;
            this.f37472d = sparseArray;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: com.google.android.exoplayer2.text.b.b$e */
    /* loaded from: classes3-dex2jar.jar:com/google/android/exoplayer2/text/b/b$e.class */
    public static final class C11365e {

        /* renamed from: a */
        public final int f37473a;

        /* renamed from: b */
        public final int f37474b;

        public C11365e(int i, int i2) {
            this.f37473a = i;
            this.f37474b = i2;
        }
    }

    /* renamed from: com.google.android.exoplayer2.text.b.b$f */
    /* loaded from: classes3-dex2jar.jar:com/google/android/exoplayer2/text/b/b$f.class */
    public static final class C11366f {

        /* renamed from: a */
        public final int f37475a;

        /* renamed from: b */
        public final boolean f37476b;

        /* renamed from: c */
        public final int f37477c;

        /* renamed from: d */
        public final int f37478d;

        /* renamed from: e */
        public final int f37479e;

        /* renamed from: f */
        public final int f37480f;

        /* renamed from: g */
        public final int f37481g;

        /* renamed from: h */
        public final int f37482h;

        /* renamed from: i */
        public final int f37483i;

        /* renamed from: j */
        public final int f37484j;

        /* renamed from: k */
        public final SparseArray<C11367g> f37485k;

        public C11366f(int i, boolean z, int i2, int i3, int i4, int i5, int i6, int i7, int i8, int i9, SparseArray<C11367g> sparseArray) {
            this.f37475a = i;
            this.f37476b = z;
            this.f37477c = i2;
            this.f37478d = i3;
            this.f37479e = i4;
            this.f37480f = i5;
            this.f37481g = i6;
            this.f37482h = i7;
            this.f37483i = i8;
            this.f37484j = i9;
            this.f37485k = sparseArray;
        }

        /* renamed from: a */
        public final void m20731a(C11366f c11366f) {
            SparseArray<C11367g> sparseArray = c11366f.f37485k;
            for (int i = 0; i < sparseArray.size(); i++) {
                this.f37485k.put(sparseArray.keyAt(i), sparseArray.valueAt(i));
            }
        }
    }

    /* renamed from: com.google.android.exoplayer2.text.b.b$g */
    /* loaded from: classes3-dex2jar.jar:com/google/android/exoplayer2/text/b/b$g.class */
    public static final class C11367g {

        /* renamed from: a */
        public final int f37486a;

        /* renamed from: b */
        public final int f37487b;

        /* renamed from: c */
        public final int f37488c;

        /* renamed from: d */
        public final int f37489d;

        /* renamed from: e */
        public final int f37490e;

        /* renamed from: f */
        public final int f37491f;

        public C11367g(int i, int i2, int i3, int i4, int i5, int i6) {
            this.f37486a = i;
            this.f37487b = i2;
            this.f37488c = i3;
            this.f37489d = i4;
            this.f37490e = i5;
            this.f37491f = i6;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: com.google.android.exoplayer2.text.b.b$h */
    /* loaded from: classes3-dex2jar.jar:com/google/android/exoplayer2/text/b/b$h.class */
    public static final class C11368h {

        /* renamed from: a */
        public final int f37492a;

        /* renamed from: b */
        public final int f37493b;

        /* renamed from: c */
        public final SparseArray<C11366f> f37494c = new SparseArray<>();

        /* renamed from: d */
        public final SparseArray<C11361a> f37495d = new SparseArray<>();

        /* renamed from: e */
        public final SparseArray<C11363c> f37496e = new SparseArray<>();

        /* renamed from: f */
        public final SparseArray<C11361a> f37497f = new SparseArray<>();

        /* renamed from: g */
        public final SparseArray<C11363c> f37498g = new SparseArray<>();

        /* renamed from: h */
        public C11362b f37499h;

        /* renamed from: i */
        public C11364d f37500i;

        public C11368h(int i, int i2) {
            this.f37492a = i;
            this.f37493b = i2;
        }
    }

    public C11360b(int i, int i2) {
        Paint paint = new Paint();
        this.f37449e = paint;
        paint.setStyle(Paint.Style.FILL_AND_STROKE);
        paint.setXfermode(new PorterDuffXfermode(PorterDuff.Mode.SRC));
        paint.setPathEffect(null);
        Paint paint2 = new Paint();
        this.f37450f = paint2;
        paint2.setStyle(Paint.Style.FILL);
        paint2.setXfermode(new PorterDuffXfermode(PorterDuff.Mode.DST_OVER));
        paint2.setPathEffect(null);
        this.f37448a = new C11368h(i, i2);
    }

    /* renamed from: a */
    private static int m20740a(int i, int i2, int i3, int i4) {
        return (i << 24) | (i2 << 16) | (i3 << 8) | i4;
    }

    /* renamed from: a */
    private static C11363c m20738a(C11627t c11627t) {
        byte[] bArr;
        int m19819c = c11627t.m19819c(16);
        c11627t.m19822b(4);
        int m19819c2 = c11627t.m19819c(2);
        boolean m19815e = c11627t.m19815e();
        c11627t.m19822b(1);
        byte[] bArr2 = C11599af.f38653f;
        byte[] bArr3 = C11599af.f38653f;
        if (m19819c2 == 1) {
            c11627t.m19822b(c11627t.m19819c(8) * 16);
            bArr = bArr2;
        } else {
            bArr = bArr2;
            if (m19819c2 == 0) {
                int m19819c3 = c11627t.m19819c(16);
                int m19819c4 = c11627t.m19819c(16);
                bArr = bArr2;
                if (m19819c3 > 0) {
                    bArr = new byte[m19819c3];
                    c11627t.m19818c(bArr, m19819c3);
                }
                if (m19819c4 > 0) {
                    bArr3 = new byte[m19819c4];
                    c11627t.m19818c(bArr3, m19819c4);
                } else {
                    bArr3 = bArr;
                }
            }
        }
        return new C11363c(m19819c, m19815e, bArr, bArr3);
    }

    /* renamed from: a */
    private static C11366f m20737a(C11627t c11627t, int i) {
        int i2;
        int i3;
        int m19819c = c11627t.m19819c(8);
        c11627t.m19822b(4);
        boolean m19815e = c11627t.m19815e();
        c11627t.m19822b(3);
        int m19819c2 = c11627t.m19819c(16);
        int m19819c3 = c11627t.m19819c(16);
        int m19819c4 = c11627t.m19819c(3);
        int m19819c5 = c11627t.m19819c(3);
        c11627t.m19822b(2);
        int m19819c6 = c11627t.m19819c(8);
        int m19819c7 = c11627t.m19819c(8);
        int m19819c8 = c11627t.m19819c(4);
        int m19819c9 = c11627t.m19819c(2);
        c11627t.m19822b(2);
        int i4 = i - 10;
        SparseArray sparseArray = new SparseArray();
        while (i4 > 0) {
            int m19819c10 = c11627t.m19819c(16);
            int m19819c11 = c11627t.m19819c(2);
            int m19819c12 = c11627t.m19819c(2);
            int m19819c13 = c11627t.m19819c(12);
            c11627t.m19822b(4);
            int m19819c14 = c11627t.m19819c(12);
            i4 -= 6;
            if (m19819c11 == 1 || m19819c11 == 2) {
                int m19819c15 = c11627t.m19819c(8);
                i2 = c11627t.m19819c(8);
                i3 = m19819c15;
                i4 -= 2;
            } else {
                i3 = 0;
                i2 = 0;
            }
            sparseArray.put(m19819c10, new C11367g(m19819c11, m19819c12, m19819c13, m19819c14, i3, i2));
        }
        return new C11366f(m19819c, m19815e, m19819c2, m19819c3, m19819c4, m19819c5, m19819c6, m19819c7, m19819c8, m19819c9, sparseArray);
    }

    /* JADX WARN: Removed duplicated region for block: B:122:0x03cc  */
    /* JADX WARN: Removed duplicated region for block: B:127:0x040e A[LOOP:3: B:94:0x02d1->B:127:0x040e, LOOP_END] */
    /* JADX WARN: Removed duplicated region for block: B:150:0x0283 A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:151:0x0402 A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:70:0x0240  */
    /* JADX WARN: Removed duplicated region for block: B:74:0x024d  */
    /* JADX WARN: Removed duplicated region for block: B:79:0x028f A[LOOP:2: B:41:0x015b->B:79:0x028f, LOOP_END] */
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private static void m20735a(byte[] r7, int[] r8, int r9, int r10, int r11, android.graphics.Paint r12, android.graphics.Canvas r13) {
        /*
            Method dump skipped, instructions count: 1055
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.exoplayer2.text.p338b.C11360b.m20735a(byte[], int[], int, int, int, android.graphics.Paint, android.graphics.Canvas):void");
    }

    /* renamed from: a */
    private static byte[] m20739a(int i, int i2, C11627t c11627t) {
        byte[] bArr = new byte[i];
        for (int i3 = 0; i3 < i; i3++) {
            bArr[i3] = (byte) c11627t.m19819c(i2);
        }
        return bArr;
    }

    /* renamed from: a */
    private static int[] m20741a() {
        return new int[]{0, -1, -16777216, -8421505};
    }

    /* renamed from: b */
    private static C11361a m20733b(C11627t c11627t, int i) {
        int i2;
        int i3;
        int i4;
        int i5;
        int m19819c = c11627t.m19819c(8);
        c11627t.m19822b(8);
        int i6 = i - 2;
        int[] m20741a = m20741a();
        int[] m20734b = m20734b();
        int[] m20732c = m20732c();
        while (i6 > 0) {
            int m19819c2 = c11627t.m19819c(8);
            int m19819c3 = c11627t.m19819c(8);
            int i7 = i6 - 2;
            int[] iArr = (m19819c3 & 128) != 0 ? m20741a : (m19819c3 & 64) != 0 ? m20734b : m20732c;
            if ((m19819c3 & 1) != 0) {
                i4 = c11627t.m19819c(8);
                i3 = c11627t.m19819c(8);
                i2 = c11627t.m19819c(8);
                i5 = c11627t.m19819c(8);
                i6 = i7 - 4;
            } else {
                int m19819c4 = c11627t.m19819c(6);
                int m19819c5 = c11627t.m19819c(4);
                i2 = c11627t.m19819c(4) << 4;
                i6 = i7 - 2;
                i5 = c11627t.m19819c(2) << 6;
                i4 = m19819c4 << 2;
                i3 = m19819c5 << 4;
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
            iArr[m19819c2] = m20740a((byte) (255 - (i5 & 255)), C11599af.m19997a(i8, 0, 255), C11599af.m19997a((int) ((d - (0.34414d * d3)) - (d2 * 0.71414d)), 0, 255), C11599af.m19997a((int) (d + (d3 * 1.772d)), 0, 255));
        }
        return new C11361a(m19819c, m20741a, m20734b, m20732c);
    }

    /* renamed from: b */
    private static int[] m20734b() {
        int[] iArr = new int[16];
        iArr[0] = 0;
        for (int i = 1; i < 16; i++) {
            if (i < 8) {
                iArr[i] = m20740a(255, (i & 1) != 0 ? 255 : 0, (i & 2) != 0 ? 255 : 0, (i & 4) != 0 ? 255 : 0);
            } else {
                int i2 = 127;
                int i3 = (i & 1) != 0 ? 127 : 0;
                int i4 = (i & 2) != 0 ? 127 : 0;
                if ((i & 4) == 0) {
                    i2 = 0;
                }
                iArr[i] = m20740a(255, i3, i4, i2);
            }
        }
        return iArr;
    }

    /* renamed from: c */
    private static int[] m20732c() {
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
                iArr[i] = m20740a(63, i3, i4, i2);
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
                    iArr[i] = m20740a(255, i8 + i9, i10 + i11, i7 + i6);
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
                        iArr[i] = m20740a(255, i13 + 127 + i14, i15 + 127 + i16, i12 + 127 + i7);
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
                        iArr[i] = m20740a(255, i17 + i18, i19 + i20, i12 + i7);
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
                    iArr[i] = m20740a(127, i21 + i22, i23 + i24, i7 + i6);
                }
            }
        }
        return iArr;
    }

    /* renamed from: a */
    public final List<C11356b> m20736a(byte[] bArr, int i) {
        C11366f c11366f;
        int i2;
        int i3;
        int i4;
        int i5;
        C11627t c11627t = new C11627t(bArr, i);
        while (c11627t.m19827a() >= 48 && c11627t.m19819c(8) == 15) {
            C11368h c11368h = this.f37448a;
            int m19819c = c11627t.m19819c(8);
            int m19819c2 = c11627t.m19819c(16);
            int m19819c3 = c11627t.m19819c(16);
            int m19820c = c11627t.m19820c();
            if (m19819c3 * 8 > c11627t.m19827a()) {
                C11617n.m19863a("DvbParser", "Data field length exceeds limit");
                c11627t.m19822b(c11627t.m19827a());
            } else {
                switch (m19819c) {
                    case 16:
                        if (m19819c2 == c11368h.f37492a) {
                            C11364d c11364d = c11368h.f37500i;
                            int m19819c4 = c11627t.m19819c(8);
                            int m19819c5 = c11627t.m19819c(4);
                            int m19819c6 = c11627t.m19819c(2);
                            c11627t.m19822b(2);
                            int i6 = m19819c3 - 2;
                            SparseArray sparseArray = new SparseArray();
                            while (i6 > 0) {
                                int m19819c7 = c11627t.m19819c(8);
                                c11627t.m19822b(8);
                                i6 -= 6;
                                sparseArray.put(m19819c7, new C11365e(c11627t.m19819c(16), c11627t.m19819c(16)));
                            }
                            C11364d c11364d2 = new C11364d(m19819c4, m19819c5, m19819c6, sparseArray);
                            if (c11364d2.f37471c != 0) {
                                c11368h.f37500i = c11364d2;
                                c11368h.f37494c.clear();
                                c11368h.f37495d.clear();
                                c11368h.f37496e.clear();
                                break;
                            } else if (c11364d != null && c11364d.f37470b != c11364d2.f37470b) {
                                c11368h.f37500i = c11364d2;
                                break;
                            }
                        }
                        break;
                    case 17:
                        C11364d c11364d3 = c11368h.f37500i;
                        if (m19819c2 == c11368h.f37492a && c11364d3 != null) {
                            C11366f m20737a = m20737a(c11627t, m19819c3);
                            if (c11364d3.f37471c == 0 && (c11366f = c11368h.f37494c.get(m20737a.f37475a)) != null) {
                                m20737a.m20731a(c11366f);
                            }
                            c11368h.f37494c.put(m20737a.f37475a, m20737a);
                            break;
                        }
                        break;
                    case 18:
                        if (m19819c2 == c11368h.f37492a) {
                            C11361a m20733b = m20733b(c11627t, m19819c3);
                            c11368h.f37495d.put(m20733b.f37455a, m20733b);
                            break;
                        } else if (m19819c2 == c11368h.f37493b) {
                            C11361a m20733b2 = m20733b(c11627t, m19819c3);
                            c11368h.f37497f.put(m20733b2.f37455a, m20733b2);
                            break;
                        }
                        break;
                    case 19:
                        if (m19819c2 == c11368h.f37492a) {
                            C11363c m20738a = m20738a(c11627t);
                            c11368h.f37496e.put(m20738a.f37465a, m20738a);
                            break;
                        } else if (m19819c2 == c11368h.f37493b) {
                            C11363c m20738a2 = m20738a(c11627t);
                            c11368h.f37498g.put(m20738a2.f37465a, m20738a2);
                            break;
                        }
                        break;
                    case 20:
                        if (m19819c2 == c11368h.f37492a) {
                            c11627t.m19822b(4);
                            boolean m19815e = c11627t.m19815e();
                            c11627t.m19822b(3);
                            int m19819c8 = c11627t.m19819c(16);
                            int m19819c9 = c11627t.m19819c(16);
                            if (m19815e) {
                                i3 = c11627t.m19819c(16);
                                i5 = c11627t.m19819c(16);
                                i4 = c11627t.m19819c(16);
                                i2 = c11627t.m19819c(16);
                            } else {
                                i5 = m19819c8;
                                i2 = m19819c9;
                                i3 = 0;
                                i4 = 0;
                            }
                            c11368h.f37499h = new C11362b(m19819c8, m19819c9, i3, i5, i4, i2);
                            break;
                        }
                        break;
                }
                c11627t.m19816d((m19820c + m19819c3) - c11627t.m19820c());
            }
        }
        C11364d c11364d4 = this.f37448a.f37500i;
        if (c11364d4 == null) {
            return Collections.emptyList();
        }
        C11362b c11362b = this.f37448a.f37499h != null ? this.f37448a.f37499h : this.f37452h;
        if (this.f37454j == null || c11362b.f37459a + 1 != this.f37454j.getWidth() || c11362b.f37460b + 1 != this.f37454j.getHeight()) {
            Bitmap createBitmap = Bitmap.createBitmap(c11362b.f37459a + 1, c11362b.f37460b + 1, Bitmap.Config.ARGB_8888);
            this.f37454j = createBitmap;
            this.f37451g.setBitmap(createBitmap);
        }
        ArrayList arrayList = new ArrayList();
        SparseArray<C11365e> sparseArray2 = c11364d4.f37472d;
        int i7 = 0;
        while (true) {
            int i8 = i7;
            if (i8 >= sparseArray2.size()) {
                return Collections.unmodifiableList(arrayList);
            }
            this.f37451g.save();
            C11365e valueAt = sparseArray2.valueAt(i8);
            C11366f c11366f2 = this.f37448a.f37494c.get(sparseArray2.keyAt(i8));
            int i9 = valueAt.f37473a + c11362b.f37461c;
            int i10 = valueAt.f37474b + c11362b.f37463e;
            this.f37451g.clipRect(i9, i10, Math.min(c11366f2.f37477c + i9, c11362b.f37462d), Math.min(c11366f2.f37478d + i10, c11362b.f37464f));
            C11361a c11361a = this.f37448a.f37495d.get(c11366f2.f37481g);
            C11361a c11361a2 = c11361a;
            if (c11361a == null) {
                C11361a c11361a3 = this.f37448a.f37497f.get(c11366f2.f37481g);
                c11361a2 = c11361a3;
                if (c11361a3 == null) {
                    c11361a2 = this.f37453i;
                }
            }
            SparseArray<C11367g> sparseArray3 = c11366f2.f37485k;
            for (int i11 = 0; i11 < sparseArray3.size(); i11++) {
                int keyAt = sparseArray3.keyAt(i11);
                C11367g valueAt2 = sparseArray3.valueAt(i11);
                C11363c c11363c = this.f37448a.f37496e.get(keyAt);
                C11363c c11363c2 = c11363c;
                if (c11363c == null) {
                    c11363c2 = this.f37448a.f37498g.get(keyAt);
                }
                if (c11363c2 != null) {
                    Paint paint = c11363c2.f37466b ? null : this.f37449e;
                    int i12 = c11366f2.f37480f;
                    int i13 = valueAt2.f37488c + i9;
                    int i14 = valueAt2.f37489d + i10;
                    Canvas canvas = this.f37451g;
                    int[] iArr = i12 == 3 ? c11361a2.f37458d : i12 == 2 ? c11361a2.f37457c : c11361a2.f37456b;
                    m20735a(c11363c2.f37467c, iArr, i12, i13, i14, paint, canvas);
                    m20735a(c11363c2.f37468d, iArr, i12, i13, i14 + 1, paint, canvas);
                }
            }
            if (c11366f2.f37476b) {
                this.f37450f.setColor(c11366f2.f37480f == 3 ? c11361a2.f37458d[c11366f2.f37482h] : c11366f2.f37480f == 2 ? c11361a2.f37457c[c11366f2.f37483i] : c11361a2.f37456b[c11366f2.f37484j]);
                this.f37451g.drawRect(i9, i10, c11366f2.f37477c + i9, c11366f2.f37478d + i10, this.f37450f);
            }
            C11356b.C11358a c11358a = new C11356b.C11358a();
            c11358a.f37429b = Bitmap.createBitmap(this.f37454j, i9, i10, c11366f2.f37477c, c11366f2.f37478d);
            c11358a.f37432e = i9 / c11362b.f37459a;
            c11358a.f37433f = 0;
            C11356b.C11358a m20743a = c11358a.m20743a(i10 / c11362b.f37460b, 0);
            m20743a.f37431d = 0;
            m20743a.f37434g = c11366f2.f37477c / c11362b.f37459a;
            m20743a.f37435h = c11366f2.f37478d / c11362b.f37460b;
            arrayList.add(m20743a.m20744a());
            this.f37451g.drawColor(0, PorterDuff.Mode.CLEAR);
            this.f37451g.restore();
            i7 = i8 + 1;
        }
    }
}

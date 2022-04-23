package androidx.media2.exoplayer.external.text.b;

import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.PorterDuff;
import android.graphics.PorterDuffXfermode;
import android.util.SparseArray;
import androidx.media2.exoplayer.external.util.ac;
import androidx.media2.exoplayer.external.util.j;
import androidx.media2.exoplayer.external.util.o;
import io.objectbox.model.PropertyFlags;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
/* loaded from: classes-dex2jar.jar:androidx/media2/exoplayer/external/text/b/b.class */
final class b {

    /* renamed from: b  reason: collision with root package name */
    private static final byte[] f3818b = {0, 7, 8, 15};

    /* renamed from: c  reason: collision with root package name */
    private static final byte[] f3819c = {0, 119, -120, -1};

    /* renamed from: d  reason: collision with root package name */
    private static final byte[] f3820d = {0, 17, 34, 51, 68, 85, 102, 119, -120, -103, -86, -69, -52, -35, -18, -1};

    /* renamed from: a  reason: collision with root package name */
    final h f3821a;
    private final Paint e;
    private final Paint f;
    private final Canvas g = new Canvas();
    private final C0089b h = new C0089b(719, 575, 0, 719, 0, 575);
    private final a i = new a(0, a(), b(), c());
    private Bitmap j;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes-dex2jar.jar:androidx/media2/exoplayer/external/text/b/b$a.class */
    public static final class a {

        /* renamed from: a  reason: collision with root package name */
        public final int f3822a;

        /* renamed from: b  reason: collision with root package name */
        public final int[] f3823b;

        /* renamed from: c  reason: collision with root package name */
        public final int[] f3824c;

        /* renamed from: d  reason: collision with root package name */
        public final int[] f3825d;

        public a(int i, int[] iArr, int[] iArr2, int[] iArr3) {
            this.f3822a = i;
            this.f3823b = iArr;
            this.f3824c = iArr2;
            this.f3825d = iArr3;
        }
    }

    /* renamed from: androidx.media2.exoplayer.external.text.b.b$b  reason: collision with other inner class name */
    /* loaded from: classes-dex2jar.jar:androidx/media2/exoplayer/external/text/b/b$b.class */
    static final class C0089b {

        /* renamed from: a  reason: collision with root package name */
        public final int f3826a;

        /* renamed from: b  reason: collision with root package name */
        public final int f3827b;

        /* renamed from: c  reason: collision with root package name */
        public final int f3828c;

        /* renamed from: d  reason: collision with root package name */
        public final int f3829d;
        public final int e;
        public final int f;

        public C0089b(int i, int i2, int i3, int i4, int i5, int i6) {
            this.f3826a = i;
            this.f3827b = i2;
            this.f3828c = i3;
            this.f3829d = i4;
            this.e = i5;
            this.f = i6;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes-dex2jar.jar:androidx/media2/exoplayer/external/text/b/b$c.class */
    public static final class c {

        /* renamed from: a  reason: collision with root package name */
        public final int f3830a;

        /* renamed from: b  reason: collision with root package name */
        public final boolean f3831b;

        /* renamed from: c  reason: collision with root package name */
        public final byte[] f3832c;

        /* renamed from: d  reason: collision with root package name */
        public final byte[] f3833d;

        public c(int i, boolean z, byte[] bArr, byte[] bArr2) {
            this.f3830a = i;
            this.f3831b = z;
            this.f3832c = bArr;
            this.f3833d = bArr2;
        }
    }

    /* loaded from: classes-dex2jar.jar:androidx/media2/exoplayer/external/text/b/b$d.class */
    static final class d {

        /* renamed from: a  reason: collision with root package name */
        public final int f3834a;

        /* renamed from: b  reason: collision with root package name */
        public final int f3835b;

        /* renamed from: c  reason: collision with root package name */
        public final int f3836c;

        /* renamed from: d  reason: collision with root package name */
        public final SparseArray<e> f3837d;

        public d(int i, int i2, int i3, SparseArray<e> sparseArray) {
            this.f3834a = i;
            this.f3835b = i2;
            this.f3836c = i3;
            this.f3837d = sparseArray;
        }
    }

    /* loaded from: classes-dex2jar.jar:androidx/media2/exoplayer/external/text/b/b$e.class */
    static final class e {

        /* renamed from: a  reason: collision with root package name */
        public final int f3838a;

        /* renamed from: b  reason: collision with root package name */
        public final int f3839b;

        public e(int i, int i2) {
            this.f3838a = i;
            this.f3839b = i2;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes-dex2jar.jar:androidx/media2/exoplayer/external/text/b/b$f.class */
    public static final class f {

        /* renamed from: a  reason: collision with root package name */
        public final int f3840a;

        /* renamed from: b  reason: collision with root package name */
        public final boolean f3841b;

        /* renamed from: c  reason: collision with root package name */
        public final int f3842c;

        /* renamed from: d  reason: collision with root package name */
        public final int f3843d;
        public final int e;
        public final int f;
        public final int g;
        public final int h;
        public final int i;
        public final int j;
        public final SparseArray<g> k;

        public f(int i, boolean z, int i2, int i3, int i4, int i5, int i6, int i7, int i8, int i9, SparseArray<g> sparseArray) {
            this.f3840a = i;
            this.f3841b = z;
            this.f3842c = i2;
            this.f3843d = i3;
            this.e = i4;
            this.f = i5;
            this.g = i6;
            this.h = i7;
            this.i = i8;
            this.j = i9;
            this.k = sparseArray;
        }

        public final void a(f fVar) {
            if (fVar != null) {
                SparseArray<g> sparseArray = fVar.k;
                for (int i = 0; i < sparseArray.size(); i++) {
                    this.k.put(sparseArray.keyAt(i), sparseArray.valueAt(i));
                }
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes-dex2jar.jar:androidx/media2/exoplayer/external/text/b/b$g.class */
    public static final class g {

        /* renamed from: a  reason: collision with root package name */
        public final int f3844a;

        /* renamed from: b  reason: collision with root package name */
        public final int f3845b;

        /* renamed from: c  reason: collision with root package name */
        public final int f3846c;

        /* renamed from: d  reason: collision with root package name */
        public final int f3847d;
        public final int e;
        public final int f;

        public g(int i, int i2, int i3, int i4, int i5, int i6) {
            this.f3844a = i;
            this.f3845b = i2;
            this.f3846c = i3;
            this.f3847d = i4;
            this.e = i5;
            this.f = i6;
        }
    }

    /* loaded from: classes-dex2jar.jar:androidx/media2/exoplayer/external/text/b/b$h.class */
    static final class h {

        /* renamed from: a  reason: collision with root package name */
        public final int f3848a;

        /* renamed from: b  reason: collision with root package name */
        public final int f3849b;

        /* renamed from: c  reason: collision with root package name */
        public final SparseArray<f> f3850c = new SparseArray<>();

        /* renamed from: d  reason: collision with root package name */
        public final SparseArray<a> f3851d = new SparseArray<>();
        public final SparseArray<c> e = new SparseArray<>();
        public final SparseArray<a> f = new SparseArray<>();
        public final SparseArray<c> g = new SparseArray<>();
        public C0089b h;
        public d i;

        public h(int i, int i2) {
            this.f3848a = i;
            this.f3849b = i2;
        }
    }

    public b(int i, int i2) {
        Paint paint = new Paint();
        this.e = paint;
        paint.setStyle(Paint.Style.FILL_AND_STROKE);
        paint.setXfermode(new PorterDuffXfermode(PorterDuff.Mode.SRC));
        paint.setPathEffect(null);
        Paint paint2 = new Paint();
        this.f = paint2;
        paint2.setStyle(Paint.Style.FILL);
        paint2.setXfermode(new PorterDuffXfermode(PorterDuff.Mode.DST_OVER));
        paint2.setPathEffect(null);
        this.f3821a = new h(i, i2);
    }

    private static int a(int i, int i2, int i3, int i4) {
        return (i << 24) | (i2 << 16) | (i3 << 8) | i4;
    }

    private static c a(o oVar) {
        byte[] bArr;
        int c2 = oVar.c(16);
        oVar.b(4);
        int c3 = oVar.c(2);
        boolean e2 = oVar.e();
        oVar.b(1);
        byte[] bArr2 = null;
        byte[] bArr3 = null;
        if (c3 == 1) {
            oVar.b(oVar.c(8) * 16);
        } else if (c3 == 0) {
            int c4 = oVar.c(16);
            int c5 = oVar.c(16);
            if (c4 > 0) {
                bArr3 = new byte[c4];
                oVar.c(bArr3, c4);
            }
            bArr2 = bArr3;
            if (c5 > 0) {
                byte[] bArr4 = new byte[c5];
                oVar.c(bArr4, c5);
                bArr = bArr4;
                bArr2 = bArr3;
                return new c(c2, e2, bArr2, bArr);
            }
        }
        bArr = bArr2;
        return new c(c2, e2, bArr2, bArr);
    }

    private static f a(o oVar, int i) {
        int i2;
        int i3;
        int c2 = oVar.c(8);
        oVar.b(4);
        boolean e2 = oVar.e();
        oVar.b(3);
        int c3 = oVar.c(16);
        int c4 = oVar.c(16);
        int c5 = oVar.c(3);
        int c6 = oVar.c(3);
        oVar.b(2);
        int c7 = oVar.c(8);
        int c8 = oVar.c(8);
        int c9 = oVar.c(4);
        int c10 = oVar.c(2);
        oVar.b(2);
        int i4 = i - 10;
        SparseArray sparseArray = new SparseArray();
        while (i4 > 0) {
            int c11 = oVar.c(16);
            int c12 = oVar.c(2);
            int c13 = oVar.c(2);
            int c14 = oVar.c(12);
            oVar.b(4);
            int c15 = oVar.c(12);
            i4 -= 6;
            if (c12 == 1 || c12 == 2) {
                i3 = oVar.c(8);
                i2 = oVar.c(8);
                i4 -= 2;
            } else {
                i3 = 0;
                i2 = 0;
            }
            sparseArray.put(c11, new g(c12, c13, c14, c15, i3, i2));
        }
        return new f(c2, e2, c3, c4, c5, c6, c7, c8, c9, c10, sparseArray);
    }

    /* JADX WARN: Removed duplicated region for block: B:117:0x039d  */
    /* JADX WARN: Removed duplicated region for block: B:121:0x03aa  */
    /* JADX WARN: Removed duplicated region for block: B:126:0x03ec A[LOOP:3: B:91:0x02ca->B:126:0x03ec, LOOP_END] */
    /* JADX WARN: Removed duplicated region for block: B:149:0x027c A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:150:0x03e0 A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:67:0x0239  */
    /* JADX WARN: Removed duplicated region for block: B:71:0x0246  */
    /* JADX WARN: Removed duplicated region for block: B:76:0x0288 A[LOOP:2: B:38:0x014c->B:76:0x0288, LOOP_END] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private static void a(byte[] r7, int[] r8, int r9, int r10, int r11, android.graphics.Paint r12, android.graphics.Canvas r13) {
        /*
            Method dump skipped, instructions count: 1021
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.media2.exoplayer.external.text.b.b.a(byte[], int[], int, int, int, android.graphics.Paint, android.graphics.Canvas):void");
    }

    private static byte[] a(int i, int i2, o oVar) {
        byte[] bArr = new byte[i];
        for (int i3 = 0; i3 < i; i3++) {
            bArr[i3] = (byte) oVar.c(i2);
        }
        return bArr;
    }

    private static int[] a() {
        return new int[]{0, -1, -16777216, -8421505};
    }

    private static a b(o oVar, int i) {
        int i2;
        int i3;
        int i4;
        int i5;
        int c2 = oVar.c(8);
        oVar.b(8);
        int i6 = i - 2;
        int[] a2 = a();
        int[] b2 = b();
        int[] c3 = c();
        while (i6 > 0) {
            int c4 = oVar.c(8);
            int c5 = oVar.c(8);
            int i7 = i6 - 2;
            int[] iArr = (c5 & 128) != 0 ? a2 : (c5 & 64) != 0 ? b2 : c3;
            if ((c5 & 1) != 0) {
                i4 = oVar.c(8);
                i3 = oVar.c(8);
                i2 = oVar.c(8);
                i5 = oVar.c(8);
                i6 = i7 - 4;
            } else {
                int c6 = oVar.c(6);
                int c7 = oVar.c(4);
                i2 = oVar.c(4) << 4;
                i6 = i7 - 2;
                i5 = oVar.c(2) << 6;
                i4 = c6 << 2;
                i3 = c7 << 4;
            }
            if (i4 == 0) {
                i3 = 0;
                i2 = 0;
                i5 = 255;
            }
            double d2 = i4;
            double d3 = i3 - 128;
            int i8 = (int) (d2 + (1.402d * d3));
            double d4 = i2 - 128;
            iArr[c4] = a((byte) (255 - (i5 & 255)), ac.a(i8, 0, 255), ac.a((int) ((d2 - (0.34414d * d4)) - (d3 * 0.71414d)), 0, 255), ac.a((int) (d2 + (d4 * 1.772d)), 0, 255));
        }
        return new a(c2, a2, b2, c3);
    }

    private static int[] b() {
        int[] iArr = new int[16];
        iArr[0] = 0;
        for (int i = 1; i < 16; i++) {
            if (i < 8) {
                iArr[i] = a(255, (i & 1) != 0 ? 255 : 0, (i & 2) != 0 ? 255 : 0, (i & 4) != 0 ? 255 : 0);
            } else {
                int i2 = 127;
                int i3 = (i & 1) != 0 ? 127 : 0;
                int i4 = (i & 2) != 0 ? 127 : 0;
                if ((i & 4) == 0) {
                    i2 = 0;
                }
                iArr[i] = a(255, i3, i4, i2);
            }
        }
        return iArr;
    }

    private static int[] c() {
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
                iArr[i] = a(63, i3, i4, i2);
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
                    iArr[i] = a(255, i8 + i9, i10 + i11, i7 + i6);
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
                        iArr[i] = a(255, i13 + 127 + i14, i15 + 127 + i16, i12 + 127 + i7);
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
                        iArr[i] = a(255, i17 + i18, i19 + i20, i12 + i7);
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
                    iArr[i] = a(127, i21 + i22, i23 + i24, i7 + i6);
                }
            }
        }
        return iArr;
    }

    public final List<androidx.media2.exoplayer.external.text.a> a(byte[] bArr, int i) {
        int i2;
        int i3;
        int i4;
        int i5;
        o oVar = new o(bArr, i);
        while (oVar.a() >= 48 && oVar.c(8) == 15) {
            h hVar = this.f3821a;
            int c2 = oVar.c(8);
            int c3 = oVar.c(16);
            int c4 = oVar.c(16);
            int c5 = oVar.c();
            if (c4 * 8 > oVar.a()) {
                j.a("DvbParser", "Data field length exceeds limit");
                oVar.b(oVar.a());
            } else {
                switch (c2) {
                    case 16:
                        if (c3 == hVar.f3848a) {
                            d dVar = hVar.i;
                            int c6 = oVar.c(8);
                            int c7 = oVar.c(4);
                            int c8 = oVar.c(2);
                            oVar.b(2);
                            int i6 = c4 - 2;
                            SparseArray sparseArray = new SparseArray();
                            while (i6 > 0) {
                                int c9 = oVar.c(8);
                                oVar.b(8);
                                i6 -= 6;
                                sparseArray.put(c9, new e(oVar.c(16), oVar.c(16)));
                            }
                            d dVar2 = new d(c6, c7, c8, sparseArray);
                            if (dVar2.f3836c == 0) {
                                if (!(dVar == null || dVar.f3835b == dVar2.f3835b)) {
                                    hVar.i = dVar2;
                                    break;
                                }
                            } else {
                                hVar.i = dVar2;
                                hVar.f3850c.clear();
                                hVar.f3851d.clear();
                                hVar.e.clear();
                                break;
                            }
                        }
                        break;
                    case 17:
                        d dVar3 = hVar.i;
                        if (c3 == hVar.f3848a && dVar3 != null) {
                            f a2 = a(oVar, c4);
                            if (dVar3.f3836c == 0) {
                                a2.a(hVar.f3850c.get(a2.f3840a));
                            }
                            hVar.f3850c.put(a2.f3840a, a2);
                            break;
                        }
                        break;
                    case 18:
                        if (c3 != hVar.f3848a) {
                            if (c3 == hVar.f3849b) {
                                a b2 = b(oVar, c4);
                                hVar.f.put(b2.f3822a, b2);
                                break;
                            }
                        } else {
                            a b3 = b(oVar, c4);
                            hVar.f3851d.put(b3.f3822a, b3);
                            break;
                        }
                        break;
                    case 19:
                        if (c3 != hVar.f3848a) {
                            if (c3 == hVar.f3849b) {
                                c a3 = a(oVar);
                                hVar.g.put(a3.f3830a, a3);
                                break;
                            }
                        } else {
                            c a4 = a(oVar);
                            hVar.e.put(a4.f3830a, a4);
                            break;
                        }
                        break;
                    case 20:
                        if (c3 == hVar.f3848a) {
                            oVar.b(4);
                            boolean e2 = oVar.e();
                            oVar.b(3);
                            int c10 = oVar.c(16);
                            int c11 = oVar.c(16);
                            if (e2) {
                                i3 = oVar.c(16);
                                i5 = oVar.c(16);
                                i2 = oVar.c(16);
                                i4 = oVar.c(16);
                            } else {
                                i5 = c10;
                                i4 = c11;
                                i3 = 0;
                                i2 = 0;
                            }
                            hVar.h = new C0089b(c10, c11, i3, i5, i2, i4);
                            break;
                        }
                        break;
                }
                int c12 = oVar.c();
                androidx.media2.exoplayer.external.util.a.b(oVar.f4164c == 0);
                oVar.f4163b += (c5 + c4) - c12;
                oVar.g();
            }
        }
        if (this.f3821a.i == null) {
            return Collections.emptyList();
        }
        C0089b bVar = this.f3821a.h != null ? this.f3821a.h : this.h;
        if (!(this.j != null && bVar.f3826a + 1 == this.j.getWidth() && bVar.f3827b + 1 == this.j.getHeight())) {
            Bitmap createBitmap = Bitmap.createBitmap(bVar.f3826a + 1, bVar.f3827b + 1, Bitmap.Config.ARGB_8888);
            this.j = createBitmap;
            this.g.setBitmap(createBitmap);
        }
        ArrayList arrayList = new ArrayList();
        SparseArray<e> sparseArray2 = this.f3821a.i.f3837d;
        for (int i7 = 0; i7 < sparseArray2.size(); i7++) {
            this.g.save();
            e valueAt = sparseArray2.valueAt(i7);
            f fVar = this.f3821a.f3850c.get(sparseArray2.keyAt(i7));
            int i8 = valueAt.f3838a + bVar.f3828c;
            int i9 = valueAt.f3839b + bVar.e;
            this.g.clipRect(i8, i9, Math.min(fVar.f3842c + i8, bVar.f3829d), Math.min(fVar.f3843d + i9, bVar.f));
            a aVar = this.f3821a.f3851d.get(fVar.g);
            a aVar2 = aVar;
            if (aVar == null) {
                a aVar3 = this.f3821a.f.get(fVar.g);
                aVar2 = aVar3;
                if (aVar3 == null) {
                    aVar2 = this.i;
                }
            }
            SparseArray<g> sparseArray3 = fVar.k;
            for (int i10 = 0; i10 < sparseArray3.size(); i10++) {
                int keyAt = sparseArray3.keyAt(i10);
                g valueAt2 = sparseArray3.valueAt(i10);
                c cVar = this.f3821a.e.get(keyAt);
                c cVar2 = cVar;
                if (cVar == null) {
                    cVar2 = this.f3821a.g.get(keyAt);
                }
                if (cVar2 != null) {
                    Paint paint = cVar2.f3831b ? null : this.e;
                    int i11 = fVar.f;
                    int i12 = valueAt2.f3846c + i8;
                    int i13 = valueAt2.f3847d + i9;
                    Canvas canvas = this.g;
                    int[] iArr = i11 == 3 ? aVar2.f3825d : i11 == 2 ? aVar2.f3824c : aVar2.f3823b;
                    a(cVar2.f3832c, iArr, i11, i12, i13, paint, canvas);
                    a(cVar2.f3833d, iArr, i11, i12, i13 + 1, paint, canvas);
                }
            }
            if (fVar.f3841b) {
                this.f.setColor(fVar.f == 3 ? aVar2.f3825d[fVar.h] : fVar.f == 2 ? aVar2.f3824c[fVar.i] : aVar2.f3823b[fVar.j]);
                this.g.drawRect(i8, i9, fVar.f3842c + i8, fVar.f3843d + i9, this.f);
            }
            arrayList.add(new androidx.media2.exoplayer.external.text.a(Bitmap.createBitmap(this.j, i8, i9, fVar.f3842c, fVar.f3843d), i8 / bVar.f3826a, 0, i9 / bVar.f3827b, 0, fVar.f3842c / bVar.f3826a, fVar.f3843d / bVar.f3827b));
            this.g.drawColor(0, PorterDuff.Mode.CLEAR);
            this.g.restore();
        }
        return Collections.unmodifiableList(arrayList);
    }
}

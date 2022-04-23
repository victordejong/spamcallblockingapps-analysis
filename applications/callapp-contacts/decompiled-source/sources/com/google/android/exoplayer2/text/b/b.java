package com.google.android.exoplayer2.text.b;

import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.PorterDuff;
import android.graphics.PorterDuffXfermode;
import android.util.SparseArray;
import com.google.android.exoplayer2.text.b;
import com.google.android.exoplayer2.util.af;
import com.google.android.exoplayer2.util.n;
import com.google.android.exoplayer2.util.t;
import io.objectbox.model.PropertyFlags;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
/* loaded from: classes3-dex2jar.jar:com/google/android/exoplayer2/text/b/b.class */
final class b {

    /* renamed from: b  reason: collision with root package name */
    private static final byte[] f21742b = {0, 7, 8, 15};

    /* renamed from: c  reason: collision with root package name */
    private static final byte[] f21743c = {0, 119, -120, -1};

    /* renamed from: d  reason: collision with root package name */
    private static final byte[] f21744d = {0, 17, 34, 51, 68, 85, 102, 119, -120, -103, -86, -69, -52, -35, -18, -1};

    /* renamed from: a  reason: collision with root package name */
    final h f21745a;
    private final Paint e;
    private final Paint f;
    private final Canvas g = new Canvas();
    private final C0440b h = new C0440b(719, 575, 0, 719, 0, 575);
    private final a i = new a(0, a(), b(), c());
    private Bitmap j;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3-dex2jar.jar:com/google/android/exoplayer2/text/b/b$a.class */
    public static final class a {

        /* renamed from: a  reason: collision with root package name */
        public final int f21746a;

        /* renamed from: b  reason: collision with root package name */
        public final int[] f21747b;

        /* renamed from: c  reason: collision with root package name */
        public final int[] f21748c;

        /* renamed from: d  reason: collision with root package name */
        public final int[] f21749d;

        public a(int i, int[] iArr, int[] iArr2, int[] iArr3) {
            this.f21746a = i;
            this.f21747b = iArr;
            this.f21748c = iArr2;
            this.f21749d = iArr3;
        }
    }

    /* renamed from: com.google.android.exoplayer2.text.b.b$b  reason: collision with other inner class name */
    /* loaded from: classes3-dex2jar.jar:com/google/android/exoplayer2/text/b/b$b.class */
    static final class C0440b {

        /* renamed from: a  reason: collision with root package name */
        public final int f21750a;

        /* renamed from: b  reason: collision with root package name */
        public final int f21751b;

        /* renamed from: c  reason: collision with root package name */
        public final int f21752c;

        /* renamed from: d  reason: collision with root package name */
        public final int f21753d;
        public final int e;
        public final int f;

        public C0440b(int i, int i2, int i3, int i4, int i5, int i6) {
            this.f21750a = i;
            this.f21751b = i2;
            this.f21752c = i3;
            this.f21753d = i4;
            this.e = i5;
            this.f = i6;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3-dex2jar.jar:com/google/android/exoplayer2/text/b/b$c.class */
    public static final class c {

        /* renamed from: a  reason: collision with root package name */
        public final int f21754a;

        /* renamed from: b  reason: collision with root package name */
        public final boolean f21755b;

        /* renamed from: c  reason: collision with root package name */
        public final byte[] f21756c;

        /* renamed from: d  reason: collision with root package name */
        public final byte[] f21757d;

        public c(int i, boolean z, byte[] bArr, byte[] bArr2) {
            this.f21754a = i;
            this.f21755b = z;
            this.f21756c = bArr;
            this.f21757d = bArr2;
        }
    }

    /* loaded from: classes3-dex2jar.jar:com/google/android/exoplayer2/text/b/b$d.class */
    static final class d {

        /* renamed from: a  reason: collision with root package name */
        public final int f21758a;

        /* renamed from: b  reason: collision with root package name */
        public final int f21759b;

        /* renamed from: c  reason: collision with root package name */
        public final int f21760c;

        /* renamed from: d  reason: collision with root package name */
        public final SparseArray<e> f21761d;

        public d(int i, int i2, int i3, SparseArray<e> sparseArray) {
            this.f21758a = i;
            this.f21759b = i2;
            this.f21760c = i3;
            this.f21761d = sparseArray;
        }
    }

    /* loaded from: classes3-dex2jar.jar:com/google/android/exoplayer2/text/b/b$e.class */
    static final class e {

        /* renamed from: a  reason: collision with root package name */
        public final int f21762a;

        /* renamed from: b  reason: collision with root package name */
        public final int f21763b;

        public e(int i, int i2) {
            this.f21762a = i;
            this.f21763b = i2;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3-dex2jar.jar:com/google/android/exoplayer2/text/b/b$f.class */
    public static final class f {

        /* renamed from: a  reason: collision with root package name */
        public final int f21764a;

        /* renamed from: b  reason: collision with root package name */
        public final boolean f21765b;

        /* renamed from: c  reason: collision with root package name */
        public final int f21766c;

        /* renamed from: d  reason: collision with root package name */
        public final int f21767d;
        public final int e;
        public final int f;
        public final int g;
        public final int h;
        public final int i;
        public final int j;
        public final SparseArray<g> k;

        public f(int i, boolean z, int i2, int i3, int i4, int i5, int i6, int i7, int i8, int i9, SparseArray<g> sparseArray) {
            this.f21764a = i;
            this.f21765b = z;
            this.f21766c = i2;
            this.f21767d = i3;
            this.e = i4;
            this.f = i5;
            this.g = i6;
            this.h = i7;
            this.i = i8;
            this.j = i9;
            this.k = sparseArray;
        }

        public final void a(f fVar) {
            SparseArray<g> sparseArray = fVar.k;
            for (int i = 0; i < sparseArray.size(); i++) {
                this.k.put(sparseArray.keyAt(i), sparseArray.valueAt(i));
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3-dex2jar.jar:com/google/android/exoplayer2/text/b/b$g.class */
    public static final class g {

        /* renamed from: a  reason: collision with root package name */
        public final int f21768a;

        /* renamed from: b  reason: collision with root package name */
        public final int f21769b;

        /* renamed from: c  reason: collision with root package name */
        public final int f21770c;

        /* renamed from: d  reason: collision with root package name */
        public final int f21771d;
        public final int e;
        public final int f;

        public g(int i, int i2, int i3, int i4, int i5, int i6) {
            this.f21768a = i;
            this.f21769b = i2;
            this.f21770c = i3;
            this.f21771d = i4;
            this.e = i5;
            this.f = i6;
        }
    }

    /* loaded from: classes3-dex2jar.jar:com/google/android/exoplayer2/text/b/b$h.class */
    static final class h {

        /* renamed from: a  reason: collision with root package name */
        public final int f21772a;

        /* renamed from: b  reason: collision with root package name */
        public final int f21773b;

        /* renamed from: c  reason: collision with root package name */
        public final SparseArray<f> f21774c = new SparseArray<>();

        /* renamed from: d  reason: collision with root package name */
        public final SparseArray<a> f21775d = new SparseArray<>();
        public final SparseArray<c> e = new SparseArray<>();
        public final SparseArray<a> f = new SparseArray<>();
        public final SparseArray<c> g = new SparseArray<>();
        public C0440b h;
        public d i;

        public h(int i, int i2) {
            this.f21772a = i;
            this.f21773b = i2;
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
        this.f21745a = new h(i, i2);
    }

    private static int a(int i, int i2, int i3, int i4) {
        return (i << 24) | (i2 << 16) | (i3 << 8) | i4;
    }

    private static c a(t tVar) {
        byte[] bArr;
        int c2 = tVar.c(16);
        tVar.b(4);
        int c3 = tVar.c(2);
        boolean e2 = tVar.e();
        tVar.b(1);
        byte[] bArr2 = af.f;
        byte[] bArr3 = af.f;
        if (c3 == 1) {
            tVar.b(tVar.c(8) * 16);
            bArr = bArr2;
        } else {
            bArr = bArr2;
            if (c3 == 0) {
                int c4 = tVar.c(16);
                int c5 = tVar.c(16);
                bArr = bArr2;
                if (c4 > 0) {
                    bArr = new byte[c4];
                    tVar.c(bArr, c4);
                }
                if (c5 > 0) {
                    bArr3 = new byte[c5];
                    tVar.c(bArr3, c5);
                } else {
                    bArr3 = bArr;
                }
            }
        }
        return new c(c2, e2, bArr, bArr3);
    }

    private static f a(t tVar, int i) {
        int i2;
        int i3;
        int c2 = tVar.c(8);
        tVar.b(4);
        boolean e2 = tVar.e();
        tVar.b(3);
        int c3 = tVar.c(16);
        int c4 = tVar.c(16);
        int c5 = tVar.c(3);
        int c6 = tVar.c(3);
        tVar.b(2);
        int c7 = tVar.c(8);
        int c8 = tVar.c(8);
        int c9 = tVar.c(4);
        int c10 = tVar.c(2);
        tVar.b(2);
        int i4 = i - 10;
        SparseArray sparseArray = new SparseArray();
        while (i4 > 0) {
            int c11 = tVar.c(16);
            int c12 = tVar.c(2);
            int c13 = tVar.c(2);
            int c14 = tVar.c(12);
            tVar.b(4);
            int c15 = tVar.c(12);
            i4 -= 6;
            if (c12 == 1 || c12 == 2) {
                i3 = tVar.c(8);
                i2 = tVar.c(8);
                i4 -= 2;
            } else {
                i3 = 0;
                i2 = 0;
            }
            sparseArray.put(c11, new g(c12, c13, c14, c15, i3, i2));
        }
        return new f(c2, e2, c3, c4, c5, c6, c7, c8, c9, c10, sparseArray);
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:122:0x03cc  */
    /* JADX WARN: Removed duplicated region for block: B:127:0x040e A[LOOP:3: B:94:0x02d1->B:127:0x040e, LOOP_END] */
    /* JADX WARN: Removed duplicated region for block: B:150:0x0283 A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:151:0x0402 A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:70:0x0240  */
    /* JADX WARN: Removed duplicated region for block: B:74:0x024d  */
    /* JADX WARN: Removed duplicated region for block: B:79:0x028f A[LOOP:2: B:41:0x015b->B:79:0x028f, LOOP_END] */
    /* JADX WARN: Type inference failed for: r11v15 */
    /* JADX WARN: Type inference failed for: r11v17 */
    /* JADX WARN: Type inference failed for: r11v18 */
    /* JADX WARN: Type inference failed for: r11v20 */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private static void a(byte[] r7, int[] r8, int r9, int r10, int r11, android.graphics.Paint r12, android.graphics.Canvas r13) {
        /*
            Method dump skipped, instructions count: 1055
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.exoplayer2.text.b.b.a(byte[], int[], int, int, int, android.graphics.Paint, android.graphics.Canvas):void");
    }

    private static byte[] a(int i, int i2, t tVar) {
        byte[] bArr = new byte[i];
        for (int i3 = 0; i3 < i; i3++) {
            bArr[i3] = (byte) tVar.c(i2);
        }
        return bArr;
    }

    private static int[] a() {
        return new int[]{0, -1, -16777216, -8421505};
    }

    private static a b(t tVar, int i) {
        int i2;
        int i3;
        int i4;
        int i5;
        int c2 = tVar.c(8);
        tVar.b(8);
        int i6 = i - 2;
        int[] a2 = a();
        int[] b2 = b();
        int[] c3 = c();
        while (i6 > 0) {
            int c4 = tVar.c(8);
            int c5 = tVar.c(8);
            int i7 = i6 - 2;
            int[] iArr = (c5 & 128) != 0 ? a2 : (c5 & 64) != 0 ? b2 : c3;
            if ((c5 & 1) != 0) {
                i4 = tVar.c(8);
                i3 = tVar.c(8);
                i2 = tVar.c(8);
                i5 = tVar.c(8);
                i6 = i7 - 4;
            } else {
                int c6 = tVar.c(6);
                int c7 = tVar.c(4);
                i2 = tVar.c(4) << 4;
                i6 = i7 - 2;
                i5 = tVar.c(2) << 6;
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
            iArr[c4] = a((byte) (255 - (i5 & 255)), af.a(i8, 0, 255), af.a((int) ((d2 - (0.34414d * d4)) - (d3 * 0.71414d)), 0, 255), af.a((int) (d2 + (d4 * 1.772d)), 0, 255));
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

    public final List<com.google.android.exoplayer2.text.b> a(byte[] bArr, int i) {
        f fVar;
        int i2;
        int i3;
        int i4;
        int i5;
        t tVar = new t(bArr, i);
        while (tVar.a() >= 48 && tVar.c(8) == 15) {
            h hVar = this.f21745a;
            int c2 = tVar.c(8);
            int c3 = tVar.c(16);
            int c4 = tVar.c(16);
            int c5 = tVar.c();
            if (c4 * 8 > tVar.a()) {
                n.a("DvbParser", "Data field length exceeds limit");
                tVar.b(tVar.a());
            } else {
                switch (c2) {
                    case 16:
                        if (c3 == hVar.f21772a) {
                            d dVar = hVar.i;
                            int c6 = tVar.c(8);
                            int c7 = tVar.c(4);
                            int c8 = tVar.c(2);
                            tVar.b(2);
                            int i6 = c4 - 2;
                            SparseArray sparseArray = new SparseArray();
                            while (i6 > 0) {
                                int c9 = tVar.c(8);
                                tVar.b(8);
                                i6 -= 6;
                                sparseArray.put(c9, new e(tVar.c(16), tVar.c(16)));
                            }
                            d dVar2 = new d(c6, c7, c8, sparseArray);
                            if (dVar2.f21760c == 0) {
                                if (!(dVar == null || dVar.f21759b == dVar2.f21759b)) {
                                    hVar.i = dVar2;
                                    break;
                                }
                            } else {
                                hVar.i = dVar2;
                                hVar.f21774c.clear();
                                hVar.f21775d.clear();
                                hVar.e.clear();
                                break;
                            }
                        }
                        break;
                    case 17:
                        d dVar3 = hVar.i;
                        if (c3 == hVar.f21772a && dVar3 != null) {
                            f a2 = a(tVar, c4);
                            if (dVar3.f21760c == 0 && (fVar = hVar.f21774c.get(a2.f21764a)) != null) {
                                a2.a(fVar);
                            }
                            hVar.f21774c.put(a2.f21764a, a2);
                            break;
                        }
                        break;
                    case 18:
                        if (c3 != hVar.f21772a) {
                            if (c3 == hVar.f21773b) {
                                a b2 = b(tVar, c4);
                                hVar.f.put(b2.f21746a, b2);
                                break;
                            }
                        } else {
                            a b3 = b(tVar, c4);
                            hVar.f21775d.put(b3.f21746a, b3);
                            break;
                        }
                        break;
                    case 19:
                        if (c3 != hVar.f21772a) {
                            if (c3 == hVar.f21773b) {
                                c a3 = a(tVar);
                                hVar.g.put(a3.f21754a, a3);
                                break;
                            }
                        } else {
                            c a4 = a(tVar);
                            hVar.e.put(a4.f21754a, a4);
                            break;
                        }
                        break;
                    case 20:
                        if (c3 == hVar.f21772a) {
                            tVar.b(4);
                            boolean e2 = tVar.e();
                            tVar.b(3);
                            int c10 = tVar.c(16);
                            int c11 = tVar.c(16);
                            if (e2) {
                                i3 = tVar.c(16);
                                i5 = tVar.c(16);
                                i4 = tVar.c(16);
                                i2 = tVar.c(16);
                            } else {
                                i5 = c10;
                                i2 = c11;
                                i3 = 0;
                                i4 = 0;
                            }
                            hVar.h = new C0440b(c10, c11, i3, i5, i4, i2);
                            break;
                        }
                        break;
                }
                tVar.d((c5 + c4) - tVar.c());
            }
        }
        d dVar4 = this.f21745a.i;
        if (dVar4 == null) {
            return Collections.emptyList();
        }
        C0440b bVar = this.f21745a.h != null ? this.f21745a.h : this.h;
        if (!(this.j != null && bVar.f21750a + 1 == this.j.getWidth() && bVar.f21751b + 1 == this.j.getHeight())) {
            Bitmap createBitmap = Bitmap.createBitmap(bVar.f21750a + 1, bVar.f21751b + 1, Bitmap.Config.ARGB_8888);
            this.j = createBitmap;
            this.g.setBitmap(createBitmap);
        }
        ArrayList arrayList = new ArrayList();
        SparseArray<e> sparseArray2 = dVar4.f21761d;
        for (int i7 = 0; i7 < sparseArray2.size(); i7++) {
            this.g.save();
            e valueAt = sparseArray2.valueAt(i7);
            f fVar2 = this.f21745a.f21774c.get(sparseArray2.keyAt(i7));
            int i8 = valueAt.f21762a + bVar.f21752c;
            int i9 = valueAt.f21763b + bVar.e;
            this.g.clipRect(i8, i9, Math.min(fVar2.f21766c + i8, bVar.f21753d), Math.min(fVar2.f21767d + i9, bVar.f));
            a aVar = this.f21745a.f21775d.get(fVar2.g);
            a aVar2 = aVar;
            if (aVar == null) {
                a aVar3 = this.f21745a.f.get(fVar2.g);
                aVar2 = aVar3;
                if (aVar3 == null) {
                    aVar2 = this.i;
                }
            }
            SparseArray<g> sparseArray3 = fVar2.k;
            for (int i10 = 0; i10 < sparseArray3.size(); i10++) {
                int keyAt = sparseArray3.keyAt(i10);
                g valueAt2 = sparseArray3.valueAt(i10);
                c cVar = this.f21745a.e.get(keyAt);
                c cVar2 = cVar;
                if (cVar == null) {
                    cVar2 = this.f21745a.g.get(keyAt);
                }
                if (cVar2 != null) {
                    Paint paint = cVar2.f21755b ? null : this.e;
                    int i11 = fVar2.f;
                    int i12 = valueAt2.f21770c + i8;
                    int i13 = valueAt2.f21771d + i9;
                    Canvas canvas = this.g;
                    int[] iArr = i11 == 3 ? aVar2.f21749d : i11 == 2 ? aVar2.f21748c : aVar2.f21747b;
                    a(cVar2.f21756c, iArr, i11, i12, i13, paint, canvas);
                    a(cVar2.f21757d, iArr, i11, i12, i13 + 1, paint, canvas);
                }
            }
            if (fVar2.f21765b) {
                this.f.setColor(fVar2.f == 3 ? aVar2.f21749d[fVar2.h] : fVar2.f == 2 ? aVar2.f21748c[fVar2.i] : aVar2.f21747b[fVar2.j]);
                this.g.drawRect(i8, i9, fVar2.f21766c + i8, fVar2.f21767d + i9, this.f);
            }
            b.a aVar4 = new b.a();
            aVar4.f21739b = Bitmap.createBitmap(this.j, i8, i9, fVar2.f21766c, fVar2.f21767d);
            aVar4.e = i8 / bVar.f21750a;
            aVar4.f = 0;
            b.a a5 = aVar4.a(i9 / bVar.f21751b, 0);
            a5.f21741d = 0;
            a5.g = fVar2.f21766c / bVar.f21750a;
            a5.h = fVar2.f21767d / bVar.f21751b;
            arrayList.add(a5.a());
            this.g.drawColor(0, PorterDuff.Mode.CLEAR);
            this.g.restore();
        }
        return Collections.unmodifiableList(arrayList);
    }
}

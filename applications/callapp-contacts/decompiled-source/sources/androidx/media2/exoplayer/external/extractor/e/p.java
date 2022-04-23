package androidx.media2.exoplayer.external.extractor.e;

import androidx.media2.exoplayer.external.Format;
import androidx.media2.exoplayer.external.extractor.e.ah;
import androidx.media2.exoplayer.external.extractor.i;
import androidx.media2.exoplayer.external.extractor.q;
import androidx.media2.exoplayer.external.util.j;
import androidx.media2.exoplayer.external.util.n;
import java.util.Collections;
/* loaded from: classes-dex2jar.jar:androidx/media2/exoplayer/external/extractor/e/p.class */
public final class p implements m {

    /* renamed from: a  reason: collision with root package name */
    private final ab f3238a;

    /* renamed from: b  reason: collision with root package name */
    private String f3239b;

    /* renamed from: c  reason: collision with root package name */
    private q f3240c;

    /* renamed from: d  reason: collision with root package name */
    private a f3241d;
    private boolean e;
    private long l;
    private long m;
    private final boolean[] f = new boolean[3];
    private final t g = new t(32, 128);
    private final t h = new t(33, 128);
    private final t i = new t(34, 128);
    private final t j = new t(39, 128);
    private final t k = new t(40, 128);
    private final androidx.media2.exoplayer.external.util.p n = new androidx.media2.exoplayer.external.util.p();

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes-dex2jar.jar:androidx/media2/exoplayer/external/extractor/e/p$a.class */
    public static final class a {

        /* renamed from: a  reason: collision with root package name */
        long f3242a;

        /* renamed from: b  reason: collision with root package name */
        boolean f3243b;

        /* renamed from: c  reason: collision with root package name */
        int f3244c;

        /* renamed from: d  reason: collision with root package name */
        long f3245d;
        boolean e;
        boolean f;
        boolean g;
        boolean h;
        boolean i;
        long j;
        long k;
        boolean l;
        private final q m;

        public a(q qVar) {
            this.m = qVar;
        }

        final void a(int i) {
            boolean z = this.l;
            this.m.a(this.k, z ? 1 : 0, (int) (this.f3242a - this.j), i, null);
        }

        public final void a(byte[] bArr, int i, int i2) {
            if (this.e) {
                int i3 = this.f3244c;
                int i4 = (i + 2) - i3;
                if (i4 < i2) {
                    this.f = (bArr[i4] & 128) != 0;
                    this.e = false;
                    return;
                }
                this.f3244c = i3 + (i2 - i);
            }
        }
    }

    public p(ab abVar) {
        this.f3238a = abVar;
    }

    private void a(byte[] bArr, int i, int i2) {
        if (this.e) {
            this.f3241d.a(bArr, i, i2);
        } else {
            this.g.a(bArr, i, i2);
            this.h.a(bArr, i, i2);
            this.i.a(bArr, i, i2);
        }
        this.j.a(bArr, i, i2);
        this.k.a(bArr, i, i2);
    }

    @Override // androidx.media2.exoplayer.external.extractor.e.m
    public final void a() {
        n.a(this.f);
        this.g.a();
        this.h.a();
        this.i.a();
        this.j.a();
        this.k.a();
        a aVar = this.f3241d;
        aVar.e = false;
        aVar.f = false;
        aVar.g = false;
        aVar.h = false;
        aVar.i = false;
        this.l = 0L;
    }

    @Override // androidx.media2.exoplayer.external.extractor.e.m
    public final void a(long j, int i) {
        this.m = j;
    }

    @Override // androidx.media2.exoplayer.external.extractor.e.m
    public final void a(i iVar, ah.d dVar) {
        dVar.a();
        this.f3239b = dVar.c();
        q a2 = iVar.a(dVar.b(), 2);
        this.f3240c = a2;
        this.f3241d = new a(a2);
        this.f3238a.a(iVar, dVar);
    }

    @Override // androidx.media2.exoplayer.external.extractor.e.m
    public final void a(androidx.media2.exoplayer.external.util.p pVar) {
        float f;
        while (pVar.b() > 0) {
            int i = pVar.f4167b;
            int i2 = pVar.f4168c;
            byte[] bArr = pVar.f4166a;
            this.l += pVar.b();
            this.f3240c.a(pVar, pVar.b());
            while (i < i2) {
                int a2 = n.a(bArr, i, i2, this.f);
                if (a2 == i2) {
                    a(bArr, i, i2);
                    return;
                }
                int c2 = n.c(bArr, a2);
                int i3 = a2 - i;
                if (i3 > 0) {
                    a(bArr, i, a2);
                }
                int i4 = i2 - a2;
                long j = this.l - i4;
                int i5 = i3 < 0 ? -i3 : 0;
                long j2 = this.m;
                if (this.e) {
                    a aVar = this.f3241d;
                    if (aVar.i && aVar.f) {
                        aVar.l = aVar.f3243b;
                        aVar.i = false;
                    } else if (aVar.g || aVar.f) {
                        if (aVar.h) {
                            aVar.a(((int) (j - aVar.f3242a)) + i4);
                        }
                        aVar.j = aVar.f3242a;
                        aVar.k = aVar.f3245d;
                        aVar.h = true;
                        aVar.l = aVar.f3243b;
                    }
                } else {
                    this.g.b(i5);
                    this.h.b(i5);
                    this.i.b(i5);
                    if (this.g.f3258a && this.h.f3258a && this.i.f3258a) {
                        q qVar = this.f3240c;
                        String str = this.f3239b;
                        t tVar = this.g;
                        t tVar2 = this.h;
                        t tVar3 = this.i;
                        byte[] bArr2 = new byte[tVar.f3260c + tVar2.f3260c + tVar3.f3260c];
                        System.arraycopy(tVar.f3259b, 0, bArr2, 0, tVar.f3260c);
                        System.arraycopy(tVar2.f3259b, 0, bArr2, tVar.f3260c, tVar2.f3260c);
                        System.arraycopy(tVar3.f3259b, 0, bArr2, tVar.f3260c + tVar2.f3260c, tVar3.f3260c);
                        androidx.media2.exoplayer.external.util.q qVar2 = new androidx.media2.exoplayer.external.util.q(tVar2.f3259b, 0, tVar2.f3260c);
                        qVar2.a(44);
                        int i6 = 3;
                        int c3 = qVar2.c(3);
                        qVar2.a();
                        qVar2.a(88);
                        qVar2.a(8);
                        int i7 = 0;
                        for (int i8 = 0; i8 < c3; i8++) {
                            int i9 = i7;
                            if (qVar2.b()) {
                                i9 = i7 + 89;
                            }
                            i7 = i9;
                            if (qVar2.b()) {
                                i7 = i9 + 8;
                            }
                        }
                        qVar2.a(i7);
                        if (c3 > 0) {
                            qVar2.a((8 - c3) * 2);
                        }
                        qVar2.e();
                        int e = qVar2.e();
                        if (e == 3) {
                            qVar2.a();
                        }
                        int e2 = qVar2.e();
                        int e3 = qVar2.e();
                        int i10 = e2;
                        int i11 = e3;
                        if (qVar2.b()) {
                            int e4 = qVar2.e();
                            int e5 = qVar2.e();
                            int e6 = qVar2.e();
                            int e7 = qVar2.e();
                            i10 = e2 - (((e == 1 || e == 2) ? 2 : 1) * (e4 + e5));
                            i11 = e3 - ((e == 1 ? 2 : 1) * (e6 + e7));
                        }
                        qVar2.e();
                        qVar2.e();
                        int e8 = qVar2.e();
                        for (int i12 = qVar2.b() ? 0 : c3; i12 <= c3; i12++) {
                            qVar2.e();
                            qVar2.e();
                            qVar2.e();
                        }
                        qVar2.e();
                        qVar2.e();
                        qVar2.e();
                        qVar2.e();
                        qVar2.e();
                        qVar2.e();
                        if (qVar2.b() && qVar2.b()) {
                            int i13 = 0;
                            while (i13 < 4) {
                                for (int i14 = 0; i14 < 6; i14 += i13 == i6 ? 3 : 1) {
                                    if (!qVar2.b()) {
                                        qVar2.e();
                                    } else {
                                        int min = Math.min(64, 1 << ((i13 << 1) + 4));
                                        if (i13 > 1) {
                                            qVar2.d();
                                        }
                                        for (int i15 = 0; i15 < min; i15++) {
                                            qVar2.d();
                                        }
                                        i6 = 3;
                                    }
                                }
                                i13++;
                            }
                        }
                        qVar2.a(2);
                        if (qVar2.b()) {
                            qVar2.a(8);
                            qVar2.e();
                            qVar2.e();
                            qVar2.a();
                        }
                        int e9 = qVar2.e();
                        boolean z = false;
                        int i16 = 0;
                        for (int i17 = 0; i17 < e9; i17++) {
                            if (i17 != 0) {
                                z = qVar2.b();
                            }
                            if (z) {
                                qVar2.a();
                                qVar2.e();
                                for (int i18 = 0; i18 <= i16; i18++) {
                                    if (qVar2.b()) {
                                        qVar2.a();
                                    }
                                }
                            } else {
                                int e10 = qVar2.e();
                                int e11 = qVar2.e();
                                for (int i19 = 0; i19 < e10; i19++) {
                                    qVar2.e();
                                    qVar2.a();
                                }
                                for (int i20 = 0; i20 < e11; i20++) {
                                    qVar2.e();
                                    qVar2.a();
                                }
                                i16 = e10 + e11;
                            }
                        }
                        if (qVar2.b()) {
                            for (int i21 = 0; i21 < qVar2.e(); i21++) {
                                qVar2.a(e8 + 4 + 1);
                            }
                        }
                        qVar2.a(2);
                        if (qVar2.b() && qVar2.b()) {
                            int c4 = qVar2.c(8);
                            if (c4 == 255) {
                                int c5 = qVar2.c(16);
                                int c6 = qVar2.c(16);
                                f = 1.0f;
                                if (c5 != 0) {
                                    f = 1.0f;
                                    if (c6 != 0) {
                                        f = c5 / c6;
                                    }
                                }
                            } else if (c4 < n.f4152b.length) {
                                f = n.f4152b[c4];
                            } else {
                                StringBuilder sb = new StringBuilder(46);
                                sb.append("Unexpected aspect_ratio_idc value: ");
                                sb.append(c4);
                                j.a("H265Reader", sb.toString());
                            }
                            qVar.a(Format.createVideoSampleFormat(str, "video/hevc", null, -1, -1, i10, i11, -1.0f, Collections.singletonList(bArr2), -1, f, null));
                            this.e = true;
                        }
                        f = 1.0f;
                        qVar.a(Format.createVideoSampleFormat(str, "video/hevc", null, -1, -1, i10, i11, -1.0f, Collections.singletonList(bArr2), -1, f, null));
                        this.e = true;
                    }
                }
                if (this.j.b(i5)) {
                    this.n.a(this.j.f3259b, n.a(this.j.f3259b, this.j.f3260c));
                    this.n.d(5);
                    this.f3238a.a(j2, this.n);
                }
                if (this.k.b(i5)) {
                    this.n.a(this.k.f3259b, n.a(this.k.f3259b, this.k.f3260c));
                    this.n.d(5);
                    this.f3238a.a(j2, this.n);
                }
                long j3 = this.m;
                if (this.e) {
                    a aVar2 = this.f3241d;
                    aVar2.f = false;
                    aVar2.g = false;
                    aVar2.f3245d = j3;
                    aVar2.f3244c = 0;
                    aVar2.f3242a = j;
                    if (c2 >= 32) {
                        if (!aVar2.i && aVar2.h) {
                            aVar2.a(i4);
                            aVar2.h = false;
                        }
                        if (c2 <= 34) {
                            aVar2.g = !aVar2.i;
                            aVar2.i = true;
                        }
                    }
                    aVar2.f3243b = c2 >= 16 && c2 <= 21;
                    aVar2.e = aVar2.f3243b || c2 <= 9;
                } else {
                    this.g.a(c2);
                    this.h.a(c2);
                    this.i.a(c2);
                }
                this.j.a(c2);
                this.k.a(c2);
                i = a2 + 3;
            }
        }
    }

    @Override // androidx.media2.exoplayer.external.extractor.e.m
    public final void b() {
    }
}

package androidx.media2.exoplayer.external.extractor.p068e;

import androidx.media2.exoplayer.external.Format;
import androidx.media2.exoplayer.external.extractor.AbstractC1601i;
import androidx.media2.exoplayer.external.extractor.AbstractC1641q;
import androidx.media2.exoplayer.external.extractor.p068e.AbstractC1548ah;
import androidx.media2.exoplayer.external.util.C2009j;
import androidx.media2.exoplayer.external.util.C2014n;
import androidx.media2.exoplayer.external.util.C2018p;
import androidx.media2.exoplayer.external.util.C2019q;
import java.util.Collections;
/* renamed from: androidx.media2.exoplayer.external.extractor.e.p */
/* loaded from: classes-dex2jar.jar:androidx/media2/exoplayer/external/extractor/e/p.class */
public final class C1573p implements AbstractC1566m {

    /* renamed from: a */
    private final C1539ab f6155a;

    /* renamed from: b */
    private String f6156b;

    /* renamed from: c */
    private AbstractC1641q f6157c;

    /* renamed from: d */
    private C1574a f6158d;

    /* renamed from: e */
    private boolean f6159e;

    /* renamed from: l */
    private long f6166l;

    /* renamed from: m */
    private long f6167m;

    /* renamed from: f */
    private final boolean[] f6160f = new boolean[3];

    /* renamed from: g */
    private final C1578t f6161g = new C1578t(32, 128);

    /* renamed from: h */
    private final C1578t f6162h = new C1578t(33, 128);

    /* renamed from: i */
    private final C1578t f6163i = new C1578t(34, 128);

    /* renamed from: j */
    private final C1578t f6164j = new C1578t(39, 128);

    /* renamed from: k */
    private final C1578t f6165k = new C1578t(40, 128);

    /* renamed from: n */
    private final C2018p f6168n = new C2018p();

    /* renamed from: androidx.media2.exoplayer.external.extractor.e.p$a */
    /* loaded from: classes-dex2jar.jar:androidx/media2/exoplayer/external/extractor/e/p$a.class */
    public static final class C1574a {

        /* renamed from: a */
        long f6169a;

        /* renamed from: b */
        boolean f6170b;

        /* renamed from: c */
        int f6171c;

        /* renamed from: d */
        long f6172d;

        /* renamed from: e */
        boolean f6173e;

        /* renamed from: f */
        boolean f6174f;

        /* renamed from: g */
        boolean f6175g;

        /* renamed from: h */
        boolean f6176h;

        /* renamed from: i */
        boolean f6177i;

        /* renamed from: j */
        long f6178j;

        /* renamed from: k */
        long f6179k;

        /* renamed from: l */
        boolean f6180l;

        /* renamed from: m */
        private final AbstractC1641q f6181m;

        public C1574a(AbstractC1641q abstractC1641q) {
            this.f6181m = abstractC1641q;
        }

        /* renamed from: a */
        final void m42660a(int i) {
            boolean z = this.f6180l;
            this.f6181m.mo42313a(this.f6179k, z ? 1 : 0, (int) (this.f6169a - this.f6178j), i, null);
        }

        /* renamed from: a */
        public final void m42659a(byte[] bArr, int i, int i2) {
            if (this.f6173e) {
                int i3 = this.f6171c;
                int i4 = (i + 2) - i3;
                if (i4 >= i2) {
                    this.f6171c = i3 + (i2 - i);
                    return;
                }
                this.f6174f = (bArr[i4] & 128) != 0;
                this.f6173e = false;
            }
        }
    }

    public C1573p(C1539ab c1539ab) {
        this.f6155a = c1539ab;
    }

    /* renamed from: a */
    private void m42661a(byte[] bArr, int i, int i2) {
        if (this.f6159e) {
            this.f6158d.m42659a(bArr, i, i2);
        } else {
            this.f6161g.m42648a(bArr, i, i2);
            this.f6162h.m42648a(bArr, i, i2);
            this.f6163i.m42648a(bArr, i, i2);
        }
        this.f6164j.m42648a(bArr, i, i2);
        this.f6165k.m42648a(bArr, i, i2);
    }

    @Override // androidx.media2.exoplayer.external.extractor.p068e.AbstractC1566m
    /* renamed from: a */
    public final void mo42655a() {
        C2014n.m41559a(this.f6160f);
        this.f6161g.m42650a();
        this.f6162h.m42650a();
        this.f6163i.m42650a();
        this.f6164j.m42650a();
        this.f6165k.m42650a();
        C1574a c1574a = this.f6158d;
        c1574a.f6173e = false;
        c1574a.f6174f = false;
        c1574a.f6175g = false;
        c1574a.f6176h = false;
        c1574a.f6177i = false;
        this.f6166l = 0L;
    }

    @Override // androidx.media2.exoplayer.external.extractor.p068e.AbstractC1566m
    /* renamed from: a */
    public final void mo42654a(long j, int i) {
        this.f6167m = j;
    }

    @Override // androidx.media2.exoplayer.external.extractor.p068e.AbstractC1566m
    /* renamed from: a */
    public final void mo42653a(AbstractC1601i abstractC1601i, AbstractC1548ah.C1552d c1552d) {
        c1552d.m42708a();
        this.f6156b = c1552d.m42706c();
        AbstractC1641q mo42213a = abstractC1601i.mo42213a(c1552d.m42707b(), 2);
        this.f6157c = mo42213a;
        this.f6158d = new C1574a(mo42213a);
        this.f6155a.m42727a(abstractC1601i, c1552d);
    }

    @Override // androidx.media2.exoplayer.external.extractor.p068e.AbstractC1566m
    /* renamed from: a */
    public final void mo42652a(C2018p c2018p) {
        float f;
        while (c2018p.m41536b() > 0) {
            int i = c2018p.f8132b;
            int i2 = c2018p.f8133c;
            byte[] bArr = c2018p.f8131a;
            this.f6166l += c2018p.m41536b();
            this.f6157c.mo42306a(c2018p, c2018p.m41536b());
            while (i < i2) {
                int m41560a = C2014n.m41560a(bArr, i, i2, this.f6160f);
                if (m41560a == i2) {
                    m42661a(bArr, i, i2);
                    return;
                }
                int m41557c = C2014n.m41557c(bArr, m41560a);
                int i3 = m41560a - i;
                if (i3 > 0) {
                    m42661a(bArr, i, m41560a);
                }
                int i4 = i2 - m41560a;
                long j = this.f6166l - i4;
                int i5 = i3 < 0 ? -i3 : 0;
                long j2 = this.f6167m;
                if (this.f6159e) {
                    C1574a c1574a = this.f6158d;
                    if (c1574a.f6177i && c1574a.f6174f) {
                        c1574a.f6180l = c1574a.f6170b;
                        c1574a.f6177i = false;
                    } else if (c1574a.f6175g || c1574a.f6174f) {
                        if (c1574a.f6176h) {
                            c1574a.m42660a(((int) (j - c1574a.f6169a)) + i4);
                        }
                        c1574a.f6178j = c1574a.f6169a;
                        c1574a.f6179k = c1574a.f6172d;
                        c1574a.f6176h = true;
                        c1574a.f6180l = c1574a.f6170b;
                    }
                } else {
                    this.f6161g.m42647b(i5);
                    this.f6162h.m42647b(i5);
                    this.f6163i.m42647b(i5);
                    if (this.f6161g.f6220a && this.f6162h.f6220a && this.f6163i.f6220a) {
                        AbstractC1641q abstractC1641q = this.f6157c;
                        String str = this.f6156b;
                        C1578t c1578t = this.f6161g;
                        C1578t c1578t2 = this.f6162h;
                        C1578t c1578t3 = this.f6163i;
                        byte[] bArr2 = new byte[c1578t.f6222c + c1578t2.f6222c + c1578t3.f6222c];
                        System.arraycopy(c1578t.f6221b, 0, bArr2, 0, c1578t.f6222c);
                        System.arraycopy(c1578t2.f6221b, 0, bArr2, c1578t.f6222c, c1578t2.f6222c);
                        System.arraycopy(c1578t3.f6221b, 0, bArr2, c1578t.f6222c + c1578t2.f6222c, c1578t3.f6222c);
                        C2019q c2019q = new C2019q(c1578t2.f6221b, 0, c1578t2.f6222c);
                        c2019q.m41513a(44);
                        int i6 = 3;
                        int m41508c = c2019q.m41508c(3);
                        c2019q.m41514a();
                        c2019q.m41513a(88);
                        c2019q.m41513a(8);
                        int i7 = 0;
                        for (int i8 = 0; i8 < m41508c; i8++) {
                            int i9 = i7;
                            if (c2019q.m41511b()) {
                                i9 = i7 + 89;
                            }
                            i7 = i9;
                            if (c2019q.m41511b()) {
                                i7 = i9 + 8;
                            }
                        }
                        c2019q.m41513a(i7);
                        if (m41508c > 0) {
                            c2019q.m41513a((8 - m41508c) * 2);
                        }
                        c2019q.m41505e();
                        int m41505e = c2019q.m41505e();
                        if (m41505e == 3) {
                            c2019q.m41514a();
                        }
                        int m41505e2 = c2019q.m41505e();
                        int m41505e3 = c2019q.m41505e();
                        int i10 = m41505e2;
                        int i11 = m41505e3;
                        if (c2019q.m41511b()) {
                            int m41505e4 = c2019q.m41505e();
                            int m41505e5 = c2019q.m41505e();
                            int m41505e6 = c2019q.m41505e();
                            int m41505e7 = c2019q.m41505e();
                            i10 = m41505e2 - (((m41505e == 1 || m41505e == 2) ? 2 : 1) * (m41505e4 + m41505e5));
                            i11 = m41505e3 - ((m41505e == 1 ? 2 : 1) * (m41505e6 + m41505e7));
                        }
                        c2019q.m41505e();
                        c2019q.m41505e();
                        int m41505e8 = c2019q.m41505e();
                        for (int i12 = c2019q.m41511b() ? 0 : m41508c; i12 <= m41508c; i12++) {
                            c2019q.m41505e();
                            c2019q.m41505e();
                            c2019q.m41505e();
                        }
                        c2019q.m41505e();
                        c2019q.m41505e();
                        c2019q.m41505e();
                        c2019q.m41505e();
                        c2019q.m41505e();
                        c2019q.m41505e();
                        if (c2019q.m41511b() && c2019q.m41511b()) {
                            int i13 = 0;
                            while (i13 < 4) {
                                int i14 = 0;
                                while (true) {
                                    int i15 = i14;
                                    if (i15 < 6) {
                                        if (!c2019q.m41511b()) {
                                            c2019q.m41505e();
                                        } else {
                                            int min = Math.min(64, 1 << ((i13 << 1) + 4));
                                            if (i13 > 1) {
                                                c2019q.m41507d();
                                            }
                                            for (int i16 = 0; i16 < min; i16++) {
                                                c2019q.m41507d();
                                            }
                                            i6 = 3;
                                        }
                                        i14 = i15 + (i13 == i6 ? 3 : 1);
                                    }
                                }
                                i13++;
                            }
                        }
                        c2019q.m41513a(2);
                        if (c2019q.m41511b()) {
                            c2019q.m41513a(8);
                            c2019q.m41505e();
                            c2019q.m41505e();
                            c2019q.m41514a();
                        }
                        int m41505e9 = c2019q.m41505e();
                        boolean z = false;
                        int i17 = 0;
                        for (int i18 = 0; i18 < m41505e9; i18++) {
                            if (i18 != 0) {
                                z = c2019q.m41511b();
                            }
                            if (z) {
                                c2019q.m41514a();
                                c2019q.m41505e();
                                for (int i19 = 0; i19 <= i17; i19++) {
                                    if (c2019q.m41511b()) {
                                        c2019q.m41514a();
                                    }
                                }
                            } else {
                                int m41505e10 = c2019q.m41505e();
                                int m41505e11 = c2019q.m41505e();
                                for (int i20 = 0; i20 < m41505e10; i20++) {
                                    c2019q.m41505e();
                                    c2019q.m41514a();
                                }
                                for (int i21 = 0; i21 < m41505e11; i21++) {
                                    c2019q.m41505e();
                                    c2019q.m41514a();
                                }
                                i17 = m41505e10 + m41505e11;
                            }
                        }
                        if (c2019q.m41511b()) {
                            for (int i22 = 0; i22 < c2019q.m41505e(); i22++) {
                                c2019q.m41513a(m41505e8 + 4 + 1);
                            }
                        }
                        c2019q.m41513a(2);
                        if (c2019q.m41511b() && c2019q.m41511b()) {
                            int m41508c2 = c2019q.m41508c(8);
                            if (m41508c2 == 255) {
                                int m41508c3 = c2019q.m41508c(16);
                                int m41508c4 = c2019q.m41508c(16);
                                f = 1.0f;
                                if (m41508c3 != 0) {
                                    f = 1.0f;
                                    if (m41508c4 != 0) {
                                        f = m41508c3 / m41508c4;
                                    }
                                }
                            } else if (m41508c2 < C2014n.f8108b.length) {
                                f = C2014n.f8108b[m41508c2];
                            } else {
                                StringBuilder sb = new StringBuilder(46);
                                sb.append("Unexpected aspect_ratio_idc value: ");
                                sb.append(m41508c2);
                                C2009j.m41584a("H265Reader", sb.toString());
                            }
                            abstractC1641q.mo42192a(Format.createVideoSampleFormat(str, "video/hevc", null, -1, -1, i10, i11, -1.0f, Collections.singletonList(bArr2), -1, f, null));
                            this.f6159e = true;
                        }
                        f = 1.0f;
                        abstractC1641q.mo42192a(Format.createVideoSampleFormat(str, "video/hevc", null, -1, -1, i10, i11, -1.0f, Collections.singletonList(bArr2), -1, f, null));
                        this.f6159e = true;
                    }
                }
                if (this.f6164j.m42647b(i5)) {
                    this.f6168n.m41538a(this.f6164j.f6221b, C2014n.m41562a(this.f6164j.f6221b, this.f6164j.f6222c));
                    this.f6168n.m41531d(5);
                    this.f6155a.m42728a(j2, this.f6168n);
                }
                if (this.f6165k.m42647b(i5)) {
                    this.f6168n.m41538a(this.f6165k.f6221b, C2014n.m41562a(this.f6165k.f6221b, this.f6165k.f6222c));
                    this.f6168n.m41531d(5);
                    this.f6155a.m42728a(j2, this.f6168n);
                }
                long j3 = this.f6167m;
                if (this.f6159e) {
                    C1574a c1574a2 = this.f6158d;
                    c1574a2.f6174f = false;
                    c1574a2.f6175g = false;
                    c1574a2.f6172d = j3;
                    c1574a2.f6171c = 0;
                    c1574a2.f6169a = j;
                    if (m41557c >= 32) {
                        if (!c1574a2.f6177i && c1574a2.f6176h) {
                            c1574a2.m42660a(i4);
                            c1574a2.f6176h = false;
                        }
                        if (m41557c <= 34) {
                            c1574a2.f6175g = !c1574a2.f6177i;
                            c1574a2.f6177i = true;
                        }
                    }
                    c1574a2.f6170b = m41557c >= 16 && m41557c <= 21;
                    c1574a2.f6173e = c1574a2.f6170b || m41557c <= 9;
                } else {
                    this.f6161g.m42649a(m41557c);
                    this.f6162h.m42649a(m41557c);
                    this.f6163i.m42649a(m41557c);
                }
                this.f6164j.m42649a(m41557c);
                this.f6165k.m42649a(m41557c);
                i = m41560a + 3;
            }
        }
    }

    @Override // androidx.media2.exoplayer.external.extractor.p068e.AbstractC1566m
    /* renamed from: b */
    public final void mo42651b() {
    }
}

package p193e.p1577m.p1578a.p1596c.p1602g1.p1610y;

import com.google.android.exoplayer2.metadata.Metadata;
import com.google.android.exoplayer2.metadata.flac.PictureFrame;
import java.io.IOException;
import java.nio.charset.Charset;
import java.util.Arrays;
import java.util.Collections;
import java.util.Objects;
import p1727n3.p1789g0.C26232y;
import p193e.p1577m.p1578a.p1596c.C24560m0;
import p193e.p1577m.p1578a.p1596c.p1602g1.AbstractC24408h;
import p193e.p1577m.p1578a.p1596c.p1602g1.AbstractC24409i;
import p193e.p1577m.p1578a.p1596c.p1602g1.AbstractC24418q;
import p193e.p1577m.p1578a.p1596c.p1602g1.AbstractC24422s;
import p193e.p1577m.p1578a.p1596c.p1602g1.C24353e;
import p193e.p1577m.p1578a.p1596c.p1602g1.C24411k;
import p193e.p1577m.p1578a.p1596c.p1602g1.C24413l;
import p193e.p1577m.p1578a.p1596c.p1602g1.C24417p;
import p193e.p1577m.p1578a.p1596c.p1636q1.C24773d0;
import p193e.p1577m.p1578a.p1596c.p1636q1.C24787m;
import p193e.p1577m.p1578a.p1596c.p1636q1.C24797s;
import p193e.p1577m.p1578a.p1596c.p1636q1.C24798t;
/* renamed from: e.m.a.c.g1.y.c */
/* loaded from: classes2-dex2jar.jar:e/m/a/c/g1/y/c.class */
public final class C24433c implements AbstractC24408h {

    /* renamed from: d */
    public AbstractC24409i f68166d;

    /* renamed from: e */
    public AbstractC24422s f68167e;

    /* renamed from: g */
    public Metadata f68169g;

    /* renamed from: h */
    public C24787m f68170h;

    /* renamed from: i */
    public int f68171i;

    /* renamed from: j */
    public int f68172j;

    /* renamed from: k */
    public C24430b f68173k;

    /* renamed from: l */
    public int f68174l;

    /* renamed from: m */
    public long f68175m;

    /* renamed from: a */
    public final byte[] f68163a = new byte[42];

    /* renamed from: b */
    public final C24798t f68164b = new C24798t(new byte[32768], 0);

    /* renamed from: c */
    public final C24411k.C24412a f68165c = new C24411k.C24412a();

    /* renamed from: f */
    public int f68168f = 0;

    @Override // p193e.p1577m.p1578a.p1596c.p1602g1.AbstractC24408h
    /* renamed from: a */
    public void mo5131a(long j, long j2) {
        if (j == 0) {
            this.f68168f = 0;
        } else {
            C24430b c24430b = this.f68173k;
            if (c24430b != null) {
                c24430b.m5305e(j2);
            }
        }
        this.f68175m = j2 == 0 ? (char) 0 : (char) 65535;
        this.f68174l = 0;
        this.f68164b.m4522x();
    }

    /* renamed from: b */
    public final void m5132b() {
        long j = this.f68175m;
        C24787m c24787m = this.f68170h;
        int i = C24773d0.f69427a;
        this.f68167e.mo4927c((j * 1000000) / c24787m.f69467e, 1, this.f68174l, 0, null);
    }

    /* JADX WARN: Type inference failed for: r0v221, types: [long] */
    /* JADX WARN: Type inference failed for: r0v259, types: [long] */
    /* JADX WARN: Type inference failed for: r0v301, types: [long] */
    /* JADX WARN: Type inference failed for: r0v305, types: [long] */
    @Override // p193e.p1577m.p1578a.p1596c.p1602g1.AbstractC24408h
    /* renamed from: d */
    public int mo5128d(C24353e c24353e, C24417p c24417p) throws IOException, InterruptedException {
        byte[] bArr;
        C24413l c24413l;
        int i;
        boolean z;
        char c;
        boolean z2;
        char c2;
        boolean z3;
        int i2 = this.f68168f;
        boolean z4 = true;
        if (i2 == 0) {
            c24353e.f67728f = 0;
            long m5211d = c24353e.m5211d();
            Metadata m2486A1 = C26232y.m2486A1(c24353e, true);
            c24353e.m5206i((int) (c24353e.m5211d() - m5211d));
            this.f68169g = m2486A1;
            this.f68168f = 1;
            return 0;
        } else if (i2 == 1) {
            byte[] bArr2 = this.f68163a;
            c24353e.m5210e(bArr2, 0, bArr2.length, false);
            c24353e.f67728f = 0;
            this.f68168f = 2;
            return 0;
        } else if (i2 == 2) {
            c24353e.m5207h(new byte[4], 0, 4, false);
            if ((((bArr[0] & 255) << 24) | ((bArr[1] & 255) << 16) | ((bArr[2] & 255) << 8) | (bArr[3] & 255)) != 1716281667) {
                throw new C24560m0("Failed to read FLAC stream marker.");
            }
            this.f68168f = 3;
            return 0;
        } else {
            int i3 = 7;
            if (i2 == 3) {
                C24787m c24787m = this.f68170h;
                boolean z5 = false;
                while (!z5) {
                    c24353e.f67728f = 0;
                    C24797s c24797s = new C24797s(new byte[4]);
                    c24353e.m5210e(c24797s.f69500a, 0, 4, false);
                    z5 = c24797s.m4557e();
                    int m4556f = c24797s.m4556f(7);
                    int m4556f2 = c24797s.m4556f(24) + 4;
                    if (m4556f == 0) {
                        byte[] bArr3 = new byte[38];
                        c24353e.m5207h(bArr3, 0, 38, false);
                        c24787m = new C24787m(bArr3, 4);
                    } else if (c24787m == null) {
                        throw new IllegalArgumentException();
                    } else {
                        if (m4556f == 3) {
                            C24798t c24798t = new C24798t(m4556f2);
                            c24353e.m5207h(c24798t.f69504a, 0, m4556f2, false);
                            c24787m = c24787m.m4583b(C26232y.m2450J1(c24798t));
                        } else if (m4556f == 4) {
                            C24798t c24798t2 = new C24798t(m4556f2);
                            c24353e.m5207h(c24798t2.f69504a, 0, m4556f2, false);
                            c24798t2.m4546D(4);
                            c24787m = new C24787m(c24787m.f69463a, c24787m.f69464b, c24787m.f69465c, c24787m.f69466d, c24787m.f69467e, c24787m.f69469g, c24787m.f69470h, c24787m.f69472j, c24787m.f69473k, c24787m.m4579f(C24787m.m4584a(Arrays.asList(C26232y.m2446K1(c24798t2, false, false).f68132a), Collections.emptyList())));
                        } else if (m4556f == 6) {
                            C24798t c24798t3 = new C24798t(m4556f2);
                            c24353e.m5207h(c24798t3.f69504a, 0, m4556f2, false);
                            c24798t3.m4546D(4);
                            int m4541e = c24798t3.m4541e();
                            String m4531o = c24798t3.m4531o(c24798t3.m4541e(), Charset.forName("US-ASCII"));
                            String m4532n = c24798t3.m4532n(c24798t3.m4541e());
                            int m4541e2 = c24798t3.m4541e();
                            int m4541e3 = c24798t3.m4541e();
                            int m4541e4 = c24798t3.m4541e();
                            int m4541e5 = c24798t3.m4541e();
                            int m4541e6 = c24798t3.m4541e();
                            byte[] bArr4 = new byte[m4541e6];
                            System.arraycopy(c24798t3.f69504a, c24798t3.f69505b, bArr4, 0, m4541e6);
                            c24798t3.f69505b += m4541e6;
                            c24787m = new C24787m(c24787m.f69463a, c24787m.f69464b, c24787m.f69465c, c24787m.f69466d, c24787m.f69467e, c24787m.f69469g, c24787m.f69470h, c24787m.f69472j, c24787m.f69473k, c24787m.m4579f(C24787m.m4584a(Collections.emptyList(), Collections.singletonList(new PictureFrame(m4541e, m4531o, m4532n, m4541e2, m4541e3, m4541e4, m4541e5, bArr4)))));
                        } else {
                            c24353e.m5206i(m4556f2);
                        }
                    }
                    int i4 = C24773d0.f69427a;
                    this.f68170h = c24787m;
                }
                Objects.requireNonNull(this.f68170h);
                this.f68171i = Math.max(this.f68170h.f69465c, 6);
                AbstractC24422s abstractC24422s = this.f68167e;
                int i5 = C24773d0.f69427a;
                abstractC24422s.mo4928b(this.f68170h.m4580e(this.f68163a, this.f68169g));
                this.f68168f = 4;
                return 0;
            } else if (i2 == 4) {
                c24353e.f67728f = 0;
                byte[] bArr5 = new byte[2];
                c24353e.m5210e(bArr5, 0, 2, false);
                int i6 = (bArr5[1] & 255) | ((bArr5[0] & 255) << 8);
                if ((i6 >> 2) != 16382) {
                    c24353e.f67728f = 0;
                    throw new C24560m0("First frame does not start with sync code.");
                }
                c24353e.f67728f = 0;
                this.f68172j = i6;
                AbstractC24409i abstractC24409i = this.f68166d;
                int i7 = C24773d0.f69427a;
                long j = c24353e.f67726d;
                long j2 = c24353e.f67725c;
                Objects.requireNonNull(this.f68170h);
                C24787m c24787m2 = this.f68170h;
                if (c24787m2.f69473k != null) {
                    c24413l = new C24413l(c24787m2, j);
                } else if (j2 == -1 || c24787m2.f69472j <= 0) {
                    c24413l = new AbstractC24418q.C24420b(c24787m2.m4581d(), 0L);
                } else {
                    C24430b c24430b = new C24430b(c24787m2, this.f68172j, j, j2);
                    this.f68173k = c24430b;
                    c24413l = c24430b.f67335a;
                }
                abstractC24409i.mo4953s(c24413l);
                this.f68168f = 5;
                return 0;
            } else if (i2 != 5) {
                throw new IllegalStateException();
            } else {
                Objects.requireNonNull(this.f68167e);
                Objects.requireNonNull(this.f68170h);
                C24430b c24430b2 = this.f68173k;
                if (c24430b2 != null && c24430b2.m5308b()) {
                    i = this.f68173k.m5309a(c24353e, c24417p);
                } else if (this.f68175m == -1) {
                    C24787m c24787m3 = this.f68170h;
                    c24353e.f67728f = 0;
                    c24353e.m5214a(1, false);
                    byte[] bArr6 = new byte[1];
                    c24353e.m5210e(bArr6, 0, 1, false);
                    boolean z6 = (bArr6[0] & 1) == 1;
                    c24353e.m5214a(2, false);
                    if (!z6) {
                        i3 = 6;
                    }
                    C24798t c24798t4 = new C24798t(i3);
                    c24798t4.m4548B(C26232y.m2482B1(c24353e, c24798t4.f69504a, 0, i3));
                    c24353e.f67728f = 0;
                    try {
                        c2 = c24798t4.m4523w();
                        if (!z6) {
                            c2 *= c24787m3.f69464b;
                        }
                        z3 = true;
                    } catch (NumberFormatException e) {
                        z3 = false;
                        c2 = 0;
                    }
                    if (!z3) {
                        throw new C24560m0();
                    }
                    this.f68175m = c2;
                    i = 0;
                } else {
                    C24798t c24798t5 = this.f68164b;
                    int i8 = c24798t5.f69506c;
                    if (i8 < 32768) {
                        int m5209f = c24353e.m5209f(c24798t5.f69504a, i8, 32768 - i8);
                        if (m5209f != -1) {
                            z4 = false;
                        }
                        if (!z4) {
                            this.f68164b.m4548B(i8 + m5209f);
                            z = z4;
                        } else {
                            z = z4;
                            if (this.f68164b.m4545a() == 0) {
                                m5132b();
                                i = -1;
                            }
                        }
                    } else {
                        z = false;
                    }
                    C24798t c24798t6 = this.f68164b;
                    int i9 = c24798t6.f69505b;
                    int i10 = this.f68174l;
                    int i11 = this.f68171i;
                    if (i10 < i11) {
                        c24798t6.m4546D(Math.min(i11 - i10, c24798t6.m4545a()));
                    }
                    C24798t c24798t7 = this.f68164b;
                    Objects.requireNonNull(this.f68170h);
                    int i12 = c24798t7.f69505b;
                    while (true) {
                        if (i12 <= c24798t7.f69506c - 16) {
                            c24798t7.m4547C(i12);
                            if (C24411k.m5154b(c24798t7, this.f68170h, this.f68172j, this.f68165c)) {
                                c24798t7.m4547C(i12);
                                c = this.f68165c.f68095a;
                                break;
                            }
                            i12++;
                        } else {
                            if (z) {
                                while (true) {
                                    int i13 = c24798t7.f69506c;
                                    if (i12 > i13 - this.f68171i) {
                                        c24798t7.m4547C(i13);
                                        break;
                                    }
                                    c24798t7.m4547C(i12);
                                    try {
                                        z2 = C24411k.m5154b(c24798t7, this.f68170h, this.f68172j, this.f68165c);
                                    } catch (IndexOutOfBoundsException e2) {
                                        z2 = false;
                                    }
                                    if (c24798t7.f69505b > c24798t7.f69506c) {
                                        z2 = false;
                                    }
                                    if (z2) {
                                        c24798t7.m4547C(i12);
                                        c = this.f68165c.f68095a;
                                        break;
                                    }
                                    i12++;
                                }
                            } else {
                                c24798t7.m4547C(i12);
                            }
                            c = 65535;
                        }
                    }
                    C24798t c24798t8 = this.f68164b;
                    int i14 = c24798t8.f69505b - i9;
                    c24798t8.m4547C(i9);
                    this.f68167e.mo4929a(this.f68164b, i14);
                    this.f68174l += i14;
                    if (c != -1) {
                        m5132b();
                        this.f68174l = 0;
                        this.f68175m = c;
                    }
                    i = 0;
                    if (this.f68164b.m4545a() < 16) {
                        C24798t c24798t9 = this.f68164b;
                        byte[] bArr7 = c24798t9.f69504a;
                        System.arraycopy(bArr7, c24798t9.f69505b, bArr7, 0, c24798t9.m4545a());
                        C24798t c24798t10 = this.f68164b;
                        c24798t10.m4521y(c24798t10.m4545a());
                        i = 0;
                    }
                }
                return i;
            }
        }
    }

    @Override // p193e.p1577m.p1578a.p1596c.p1602g1.AbstractC24408h
    /* renamed from: h */
    public void mo5127h(AbstractC24409i abstractC24409i) {
        this.f68166d = abstractC24409i;
        this.f68167e = abstractC24409i.mo4960i(0, 1);
        abstractC24409i.mo4962g();
    }

    @Override // p193e.p1577m.p1578a.p1596c.p1602g1.AbstractC24408h
    /* renamed from: i */
    public boolean mo5126i(C24353e c24353e) throws IOException, InterruptedException {
        byte[] bArr;
        boolean z = false;
        C26232y.m2486A1(c24353e, false);
        c24353e.m5210e(new byte[4], 0, 4, false);
        if ((((bArr[0] & 255) << 24) | ((bArr[1] & 255) << 16) | ((bArr[2] & 255) << 8) | (255 & bArr[3])) == 1716281667) {
            z = true;
        }
        return z;
    }

    @Override // p193e.p1577m.p1578a.p1596c.p1602g1.AbstractC24408h
    public void release() {
    }
}

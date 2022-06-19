package p193e.p1577m.p1578a.p1596c.p1622m1.p1625o;

import android.graphics.Bitmap;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.Objects;
import java.util.zip.Inflater;
import p193e.p1577m.p1578a.p1596c.p1622m1.AbstractC24563c;
import p193e.p1577m.p1578a.p1596c.p1622m1.AbstractC24565e;
import p193e.p1577m.p1578a.p1596c.p1622m1.C24562b;
import p193e.p1577m.p1578a.p1596c.p1622m1.C24567g;
import p193e.p1577m.p1578a.p1596c.p1636q1.C24773d0;
import p193e.p1577m.p1578a.p1596c.p1636q1.C24798t;
/* renamed from: e.m.a.c.m1.o.a */
/* loaded from: classes2-dex2jar.jar:e/m/a/c/m1/o/a.class */
public final class C24597a extends AbstractC24563c {

    /* renamed from: n */
    public final C24798t f68834n = new C24798t();

    /* renamed from: o */
    public final C24798t f68835o = new C24798t();

    /* renamed from: p */
    public final C24598a f68836p = new C24598a();

    /* renamed from: q */
    public Inflater f68837q;

    /* renamed from: e.m.a.c.m1.o.a$a */
    /* loaded from: classes2-dex2jar.jar:e/m/a/c/m1/o/a$a.class */
    public static final class C24598a {

        /* renamed from: a */
        public final C24798t f68838a = new C24798t();

        /* renamed from: b */
        public final int[] f68839b = new int[256];

        /* renamed from: c */
        public boolean f68840c;

        /* renamed from: d */
        public int f68841d;

        /* renamed from: e */
        public int f68842e;

        /* renamed from: f */
        public int f68843f;

        /* renamed from: g */
        public int f68844g;

        /* renamed from: h */
        public int f68845h;

        /* renamed from: i */
        public int f68846i;

        /* renamed from: a */
        public void m4864a() {
            this.f68841d = 0;
            this.f68842e = 0;
            this.f68843f = 0;
            this.f68844g = 0;
            this.f68845h = 0;
            this.f68846i = 0;
            this.f68838a.m4521y(0);
            this.f68840c = false;
        }
    }

    public C24597a() {
        super("PgsDecoder");
    }

    @Override // p193e.p1577m.p1578a.p1596c.p1622m1.AbstractC24563c
    /* renamed from: j */
    public AbstractC24565e mo4817j(byte[] bArr, int i, boolean z) throws C24567g {
        C24562b c24562b;
        C24798t c24798t;
        C24798t c24798t2;
        int i2;
        int m4527s;
        C24798t c24798t3 = this.f68834n;
        c24798t3.f69504a = bArr;
        c24798t3.f69506c = i;
        int i3 = 0;
        c24798t3.f69505b = 0;
        if (c24798t3.m4545a() > 0 && c24798t3.m4544b() == 120) {
            if (this.f68837q == null) {
                this.f68837q = new Inflater();
            }
            if (C24773d0.m4605s(c24798t3, this.f68835o, this.f68837q)) {
                C24798t c24798t4 = this.f68835o;
                c24798t3.m4549A(c24798t4.f69504a, c24798t4.f69506c);
            }
        }
        this.f68836p.m4864a();
        ArrayList arrayList = new ArrayList();
        while (this.f68834n.m4545a() >= 3) {
            C24798t c24798t5 = this.f68834n;
            C24598a c24598a = this.f68836p;
            int i4 = c24798t5.f69506c;
            int m4529q = c24798t5.m4529q();
            int m4524v = c24798t5.m4524v();
            int i5 = c24798t5.f69505b + m4524v;
            if (i5 > i4) {
                c24798t5.m4547C(i4);
                c24562b = null;
            } else {
                if (m4529q != 128) {
                    switch (m4529q) {
                        case 20:
                            Objects.requireNonNull(c24598a);
                            if (m4524v % 5 == 2) {
                                c24798t5.m4546D(2);
                                Arrays.fill(c24598a.f68839b, i3);
                                int i6 = m4524v / 5;
                                while (i3 < i6) {
                                    int m4529q2 = c24798t5.m4529q();
                                    int m4529q3 = c24798t5.m4529q();
                                    int m4529q4 = c24798t5.m4529q();
                                    int m4529q5 = c24798t5.m4529q();
                                    int m4529q6 = c24798t5.m4529q();
                                    double d = m4529q3;
                                    double d2 = m4529q4 - 128;
                                    int i7 = (int) ((1.402d * d2) + d);
                                    double d3 = m4529q5 - 128;
                                    c24598a.f68839b[m4529q2] = (C24773d0.m4618f(i7, 0, 255) << 16) | (m4529q6 << 24) | (C24773d0.m4618f((int) ((d - (0.34414d * d3)) - (d2 * 0.71414d)), 0, 255) << 8) | C24773d0.m4618f((int) ((d3 * 1.772d) + d), 0, 255);
                                    i3++;
                                }
                                c24598a.f68840c = true;
                                break;
                            }
                            break;
                        case 21:
                            Objects.requireNonNull(c24598a);
                            if (m4524v >= 4) {
                                c24798t5.m4546D(3);
                                int i8 = (c24798t5.m4529q() & 128) != 0 ? 1 : i3;
                                int i9 = m4524v - 4;
                                int i10 = i9;
                                if (i8 != 0) {
                                    if (i9 >= 7 && (m4527s = c24798t5.m4527s()) >= 4) {
                                        c24598a.f68845h = c24798t5.m4524v();
                                        c24598a.f68846i = c24798t5.m4524v();
                                        c24598a.f68838a.m4521y(m4527s - 4);
                                        i10 = i9 - 7;
                                    }
                                }
                                C24798t c24798t6 = c24598a.f68838a;
                                int i11 = c24798t6.f69505b;
                                int i12 = c24798t6.f69506c;
                                if (i11 < i12 && i10 > 0) {
                                    int min = Math.min(i10, i12 - i11);
                                    c24798t5.m4542d(c24598a.f68838a.f69504a, i11, min);
                                    c24598a.f68838a.m4547C(i11 + min);
                                    break;
                                }
                            }
                            break;
                        case 22:
                            Objects.requireNonNull(c24598a);
                            if (m4524v >= 19) {
                                c24598a.f68841d = c24798t5.m4524v();
                                c24598a.f68842e = c24798t5.m4524v();
                                c24798t5.m4546D(11);
                                c24598a.f68843f = c24798t5.m4524v();
                                c24598a.f68844g = c24798t5.m4524v();
                                break;
                            }
                            break;
                    }
                    c24798t = c24798t5;
                    c24562b = null;
                } else {
                    c24798t = c24798t5;
                    if (c24598a.f68841d == 0 || c24598a.f68842e == 0 || c24598a.f68845h == 0 || c24598a.f68846i == 0 || (i2 = (c24798t2 = c24598a.f68838a).f69506c) == 0 || c24798t2.f69505b != i2 || !c24598a.f68840c) {
                        c24562b = null;
                    } else {
                        c24798t2.m4547C(0);
                        int i13 = c24598a.f68845h * c24598a.f68846i;
                        int[] iArr = new int[i13];
                        int i14 = 0;
                        while (i14 < i13) {
                            int m4529q7 = c24598a.f68838a.m4529q();
                            if (m4529q7 != 0) {
                                iArr[i14] = c24598a.f68839b[m4529q7];
                                i14++;
                            } else {
                                int m4529q8 = c24598a.f68838a.m4529q();
                                if (m4529q8 != 0) {
                                    int m4529q9 = (m4529q8 & 64) == 0 ? m4529q8 & 63 : ((m4529q8 & 63) << 8) | c24598a.f68838a.m4529q();
                                    int i15 = (m4529q8 & 128) == 0 ? 0 : c24598a.f68839b[c24598a.f68838a.m4529q()];
                                    int i16 = m4529q9 + i14;
                                    Arrays.fill(iArr, i14, i16, i15);
                                    i14 = i16;
                                }
                            }
                        }
                        Bitmap createBitmap = Bitmap.createBitmap(iArr, c24598a.f68845h, c24598a.f68846i, Bitmap.Config.ARGB_8888);
                        float f = c24598a.f68843f;
                        float f2 = c24598a.f68841d;
                        float f3 = f / f2;
                        float f4 = c24598a.f68844g;
                        float f5 = c24598a.f68842e;
                        c24562b = new C24562b(createBitmap, f3, 0, f4 / f5, 0, c24598a.f68845h / f2, c24598a.f68846i / f5);
                    }
                    c24598a.m4864a();
                }
                i3 = 0;
                c24798t.m4547C(i5);
            }
            if (c24562b != null) {
                arrayList.add(c24562b);
            }
        }
        return new C24599b(Collections.unmodifiableList(arrayList));
    }
}

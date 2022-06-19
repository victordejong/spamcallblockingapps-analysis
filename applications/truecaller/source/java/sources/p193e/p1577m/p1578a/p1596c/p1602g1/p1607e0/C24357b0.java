package p193e.p1577m.p1578a.p1596c.p1602g1.p1607e0;

import android.util.SparseArray;
import android.util.SparseBooleanArray;
import android.util.SparseIntArray;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import p1727n3.p1789g0.C26232y;
import p193e.p1577m.p1578a.p1596c.C24560m0;
import p193e.p1577m.p1578a.p1596c.p1602g1.AbstractC24408h;
import p193e.p1577m.p1578a.p1596c.p1602g1.AbstractC24409i;
import p193e.p1577m.p1578a.p1596c.p1602g1.AbstractC24418q;
import p193e.p1577m.p1578a.p1596c.p1602g1.C24353e;
import p193e.p1577m.p1578a.p1596c.p1602g1.C24417p;
import p193e.p1577m.p1578a.p1596c.p1602g1.p1607e0.AbstractC24361c0;
import p193e.p1577m.p1578a.p1596c.p1636q1.C24771c0;
import p193e.p1577m.p1578a.p1596c.p1636q1.C24797s;
import p193e.p1577m.p1578a.p1596c.p1636q1.C24798t;
/* renamed from: e.m.a.c.g1.e0.b0 */
/* loaded from: classes2-dex2jar.jar:e/m/a/c/g1/e0/b0.class */
public final class C24357b0 implements AbstractC24408h {

    /* renamed from: a */
    public final int f67753a;

    /* renamed from: b */
    public final List<C24771c0> f67754b;

    /* renamed from: c */
    public final C24798t f67755c;

    /* renamed from: d */
    public final SparseIntArray f67756d;

    /* renamed from: e */
    public final AbstractC24361c0.AbstractC24364c f67757e;

    /* renamed from: f */
    public final SparseArray<AbstractC24361c0> f67758f;

    /* renamed from: g */
    public final SparseBooleanArray f67759g;

    /* renamed from: h */
    public final SparseBooleanArray f67760h;

    /* renamed from: i */
    public final C24355a0 f67761i;

    /* renamed from: j */
    public C24397z f67762j;

    /* renamed from: k */
    public AbstractC24409i f67763k;

    /* renamed from: l */
    public int f67764l;

    /* renamed from: m */
    public boolean f67765m;

    /* renamed from: n */
    public boolean f67766n;

    /* renamed from: o */
    public boolean f67767o;

    /* renamed from: p */
    public AbstractC24361c0 f67768p;

    /* renamed from: q */
    public int f67769q;

    /* renamed from: r */
    public int f67770r;

    /* renamed from: e.m.a.c.g1.e0.b0$a */
    /* loaded from: classes2-dex2jar.jar:e/m/a/c/g1/e0/b0$a.class */
    public class C24358a implements AbstractC24393v {

        /* renamed from: a */
        public final C24797s f67771a = new C24797s(new byte[4]);

        public C24358a() {
            C24357b0.this = r6;
        }

        @Override // p193e.p1577m.p1578a.p1596c.p1602g1.p1607e0.AbstractC24393v
        /* renamed from: b */
        public void mo5165b(C24771c0 c24771c0, AbstractC24409i abstractC24409i, AbstractC24361c0.C24365d c24365d) {
        }

        @Override // p193e.p1577m.p1578a.p1596c.p1602g1.p1607e0.AbstractC24393v
        /* renamed from: d */
        public void mo5164d(C24798t c24798t) {
            if (c24798t.m4529q() != 0) {
                return;
            }
            c24798t.m4546D(7);
            int m4545a = c24798t.m4545a() / 4;
            for (int i = 0; i < m4545a; i++) {
                c24798t.m4543c(this.f67771a, 4);
                int m4556f = this.f67771a.m4556f(16);
                this.f67771a.m4550l(3);
                if (m4556f == 0) {
                    this.f67771a.m4550l(13);
                } else {
                    int m4556f2 = this.f67771a.m4556f(13);
                    C24357b0 c24357b0 = C24357b0.this;
                    c24357b0.f67758f.put(m4556f2, new C24394w(new C24359b(m4556f2)));
                    C24357b0.this.f67764l++;
                }
            }
            C24357b0 c24357b02 = C24357b0.this;
            if (c24357b02.f67753a == 2) {
                return;
            }
            c24357b02.f67758f.remove(0);
        }
    }

    /* renamed from: e.m.a.c.g1.e0.b0$b */
    /* loaded from: classes2-dex2jar.jar:e/m/a/c/g1/e0/b0$b.class */
    public class C24359b implements AbstractC24393v {

        /* renamed from: a */
        public final C24797s f67773a = new C24797s(new byte[5]);

        /* renamed from: b */
        public final SparseArray<AbstractC24361c0> f67774b = new SparseArray<>();

        /* renamed from: c */
        public final SparseIntArray f67775c = new SparseIntArray();

        /* renamed from: d */
        public final int f67776d;

        public C24359b(int i) {
            C24357b0.this = r6;
            this.f67776d = i;
        }

        @Override // p193e.p1577m.p1578a.p1596c.p1602g1.p1607e0.AbstractC24393v
        /* renamed from: b */
        public void mo5165b(C24771c0 c24771c0, AbstractC24409i abstractC24409i, AbstractC24361c0.C24365d c24365d) {
        }

        /* JADX WARN: Code restructure failed: missing block: B:44:0x0233, code lost:
            if (r10.m4529q() == r25) goto L45;
         */
        @Override // p193e.p1577m.p1578a.p1596c.p1602g1.p1607e0.AbstractC24393v
        /* renamed from: d */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public void mo5164d(p193e.p1577m.p1578a.p1596c.p1636q1.C24798t r10) {
            /*
                Method dump skipped, instructions count: 1238
                To view this dump add '--comments-level debug' option
            */
            throw new UnsupportedOperationException("Method not decompiled: p193e.p1577m.p1578a.p1596c.p1602g1.p1607e0.C24357b0.C24359b.mo5164d(e.m.a.c.q1.t):void");
        }
    }

    public C24357b0(int i, int i2) {
        C24771c0 c24771c0 = new C24771c0(0L);
        C24370g c24370g = new C24370g(i2);
        this.f67757e = c24370g;
        this.f67753a = i;
        if (i == 1 || i == 2) {
            this.f67754b = Collections.singletonList(c24771c0);
        } else {
            ArrayList arrayList = new ArrayList();
            this.f67754b = arrayList;
            arrayList.add(c24771c0);
        }
        this.f67755c = new C24798t(new byte[9400], 0);
        SparseBooleanArray sparseBooleanArray = new SparseBooleanArray();
        this.f67759g = sparseBooleanArray;
        this.f67760h = new SparseBooleanArray();
        SparseArray<AbstractC24361c0> sparseArray = new SparseArray<>();
        this.f67758f = sparseArray;
        this.f67756d = new SparseIntArray();
        this.f67761i = new C24355a0();
        this.f67770r = -1;
        sparseBooleanArray.clear();
        sparseArray.clear();
        SparseArray<AbstractC24361c0> m5194b = c24370g.m5194b();
        int size = m5194b.size();
        for (int i3 = 0; i3 < size; i3++) {
            this.f67758f.put(m5194b.keyAt(i3), m5194b.valueAt(i3));
        }
        this.f67758f.put(0, new C24394w(new C24358a()));
        this.f67768p = null;
    }

    @Override // p193e.p1577m.p1578a.p1596c.p1602g1.AbstractC24408h
    /* renamed from: a */
    public void mo5131a(long j, long j2) {
        C24397z c24397z;
        C26232y.m2286x(this.f67753a != 2);
        int size = this.f67754b.size();
        for (int i = 0; i < size; i++) {
            C24771c0 c24771c0 = this.f67754b.get(i);
            if ((c24771c0.m4631c() == -9223372036854775807L) || (c24771c0.m4631c() != 0 && c24771c0.f69423a != j2)) {
                c24771c0.f69425c = -9223372036854775807L;
                c24771c0.m4630d(j2);
            }
        }
        if (j2 != 0 && (c24397z = this.f67762j) != null) {
            c24397z.m5305e(j2);
        }
        this.f67755c.m4522x();
        this.f67756d.clear();
        for (int i2 = 0; i2 < this.f67758f.size(); i2++) {
            this.f67758f.valueAt(i2).mo5169a();
        }
        this.f67769q = 0;
    }

    /* JADX WARN: Type inference failed for: r0v250, types: [long] */
    /* JADX WARN: Type inference failed for: r0v286, types: [long] */
    @Override // p193e.p1577m.p1578a.p1596c.p1602g1.AbstractC24408h
    /* renamed from: d */
    public int mo5128d(C24353e c24353e, C24417p c24417p) throws IOException, InterruptedException {
        boolean z;
        int i;
        char c;
        char c2;
        long j = c24353e.f67725c;
        if (this.f67765m) {
            if ((j == -1 || this.f67753a == 2) ? false : true) {
                C24355a0 c24355a0 = this.f67761i;
                if (!c24355a0.f67735c) {
                    int i2 = this.f67770r;
                    if (i2 <= 0) {
                        c24355a0.m5204a(c24353e);
                        i = 0;
                    } else if (!c24355a0.f67737e) {
                        int min = (int) Math.min(112800L, j);
                        long j2 = j - min;
                        if (c24353e.f67726d != j2) {
                            c24417p.f68116a = j2;
                            i = 1;
                        } else {
                            c24355a0.f67734b.m4521y(min);
                            c24353e.f67728f = 0;
                            c24353e.m5210e(c24355a0.f67734b.f69504a, 0, min, false);
                            C24798t c24798t = c24355a0.f67734b;
                            int i3 = c24798t.f69505b;
                            int i4 = c24798t.f69506c;
                            while (true) {
                                i4--;
                                c2 = 1;
                                if (i4 < i3) {
                                    break;
                                } else if (c24798t.f69504a[i4] == 71) {
                                    c2 = C26232y.m2454I1(c24798t, i4, i2);
                                    if (c2 != -9223372036854775807L) {
                                        break;
                                    }
                                }
                            }
                            c24355a0.f67739g = c2;
                            c24355a0.f67737e = true;
                            i = 0;
                        }
                    } else if (c24355a0.f67739g == -9223372036854775807L) {
                        c24355a0.m5204a(c24353e);
                        i = 0;
                    } else if (!c24355a0.f67736d) {
                        int min2 = (int) Math.min(112800L, j);
                        long j3 = 0;
                        if (c24353e.f67726d != j3) {
                            c24417p.f68116a = j3;
                            i = 1;
                        } else {
                            c24355a0.f67734b.m4521y(min2);
                            c24353e.f67728f = 0;
                            c24353e.m5210e(c24355a0.f67734b.f69504a, 0, min2, false);
                            C24798t c24798t2 = c24355a0.f67734b;
                            int i5 = c24798t2.f69505b;
                            int i6 = c24798t2.f69506c;
                            while (true) {
                                c = 1;
                                if (i5 >= i6) {
                                    break;
                                }
                                if (c24798t2.f69504a[i5] == 71) {
                                    c = C26232y.m2454I1(c24798t2, i5, i2);
                                    if (c != -9223372036854775807L) {
                                        break;
                                    }
                                }
                                i5++;
                            }
                            c24355a0.f67738f = c;
                            c24355a0.f67736d = true;
                            i = 0;
                        }
                    } else {
                        long j4 = c24355a0.f67738f;
                        if (j4 == -9223372036854775807L) {
                            c24355a0.m5204a(c24353e);
                        } else {
                            c24355a0.f67740h = c24355a0.f67733a.m4632b(c24355a0.f67739g) - c24355a0.f67733a.m4632b(j4);
                            c24355a0.m5204a(c24353e);
                        }
                        i = 0;
                    }
                    return i;
                }
            }
            if (!this.f67766n) {
                this.f67766n = true;
                C24355a0 c24355a02 = this.f67761i;
                long j5 = c24355a02.f67740h;
                if (j5 != -9223372036854775807L) {
                    C24397z c24397z = new C24397z(c24355a02.f67733a, j5, j, this.f67770r);
                    this.f67762j = c24397z;
                    this.f67763k.mo4953s(c24397z.f67335a);
                } else {
                    this.f67763k.mo4953s(new AbstractC24418q.C24420b(j5, 0L));
                }
            }
            if (this.f67767o) {
                this.f67767o = false;
                mo5131a(0L, 0L);
                if (c24353e.f67726d != 0) {
                    c24417p.f68116a = 0L;
                    return 1;
                }
            }
            C24397z c24397z2 = this.f67762j;
            if (c24397z2 != null && c24397z2.m5308b()) {
                return this.f67762j.m5309a(c24353e, c24417p);
            }
        }
        C24798t c24798t3 = this.f67755c;
        byte[] bArr = c24798t3.f69504a;
        if (9400 - c24798t3.f69505b < 188) {
            int m4545a = c24798t3.m4545a();
            if (m4545a > 0) {
                System.arraycopy(bArr, this.f67755c.f69505b, bArr, 0, m4545a);
            }
            this.f67755c.m4549A(bArr, m4545a);
        }
        while (true) {
            if (this.f67755c.m4545a() >= 188) {
                z = true;
                break;
            }
            int i7 = this.f67755c.f69506c;
            int m5209f = c24353e.m5209f(bArr, i7, 9400 - i7);
            if (m5209f == -1) {
                z = false;
                break;
            }
            this.f67755c.m4548B(i7 + m5209f);
        }
        if (!z) {
            return -1;
        }
        C24798t c24798t4 = this.f67755c;
        int i8 = c24798t4.f69505b;
        int i9 = c24798t4.f69506c;
        byte[] bArr2 = c24798t4.f69504a;
        int i10 = i8;
        while (i10 < i9 && bArr2[i10] != 71) {
            i10++;
        }
        this.f67755c.m4547C(i10);
        int i11 = i10 + 188;
        if (i11 > i9) {
            int i12 = (i10 - i8) + this.f67769q;
            this.f67769q = i12;
            if (this.f67753a == 2 && i12 > 376) {
                throw new C24560m0("Cannot find sync byte. Most likely not a Transport Stream.");
            }
        } else {
            this.f67769q = 0;
        }
        C24798t c24798t5 = this.f67755c;
        int i13 = c24798t5.f69506c;
        if (i11 > i13) {
            return 0;
        }
        int m4541e = c24798t5.m4541e();
        if ((8388608 & m4541e) != 0) {
            this.f67755c.m4547C(i11);
            return 0;
        }
        int i14 = ((4194304 & m4541e) != 0 ? 1 : 0) | 0;
        int i15 = (2096896 & m4541e) >> 8;
        boolean z2 = (m4541e & 32) != 0;
        AbstractC24361c0 abstractC24361c0 = (m4541e & 16) != 0 ? this.f67758f.get(i15) : null;
        if (abstractC24361c0 == null) {
            this.f67755c.m4547C(i11);
            return 0;
        }
        if (this.f67753a != 2) {
            int i16 = m4541e & 15;
            int i17 = this.f67756d.get(i15, i16 - 1);
            this.f67756d.put(i15, i16);
            if (i17 == i16) {
                this.f67755c.m4547C(i11);
                return 0;
            } else if (i16 != ((i17 + 1) & 15)) {
                abstractC24361c0.mo5169a();
            }
        }
        int i18 = i14;
        if (z2) {
            int m4529q = this.f67755c.m4529q();
            i18 = i14 | ((this.f67755c.m4529q() & 64) != 0 ? 2 : 0);
            this.f67755c.m4546D(m4529q - 1);
        }
        boolean z3 = this.f67765m;
        if (this.f67753a == 2 || z3 || !this.f67760h.get(i15, false)) {
            this.f67755c.m4548B(i11);
            abstractC24361c0.mo5167c(this.f67755c, i18);
            this.f67755c.m4548B(i13);
        }
        if (this.f67753a != 2 && !z3 && this.f67765m && j != -1) {
            this.f67767o = true;
        }
        this.f67755c.m4547C(i11);
        return 0;
    }

    @Override // p193e.p1577m.p1578a.p1596c.p1602g1.AbstractC24408h
    /* renamed from: h */
    public void mo5127h(AbstractC24409i abstractC24409i) {
        this.f67763k = abstractC24409i;
    }

    @Override // p193e.p1577m.p1578a.p1596c.p1602g1.AbstractC24408h
    /* renamed from: i */
    public boolean mo5126i(C24353e c24353e) throws IOException, InterruptedException {
        boolean z;
        byte[] bArr = this.f67755c.f69504a;
        c24353e.m5210e(bArr, 0, 940, false);
        for (int i = 0; i < 188; i++) {
            int i2 = 0;
            while (true) {
                if (i2 >= 5) {
                    z = true;
                    break;
                } else if (bArr[(i2 * 188) + i] != 71) {
                    z = false;
                    break;
                } else {
                    i2++;
                }
            }
            if (z) {
                c24353e.m5206i(i);
                return true;
            }
        }
        return false;
    }

    @Override // p193e.p1577m.p1578a.p1596c.p1602g1.AbstractC24408h
    public void release() {
    }
}

package com.google.android.exoplayer2.extractor.p334h;

import android.util.SparseArray;
import android.util.SparseBooleanArray;
import android.util.SparseIntArray;
import com.google.android.exoplayer2.ParserException;
import com.google.android.exoplayer2.extractor.AbstractC11071h;
import com.google.android.exoplayer2.extractor.AbstractC11121i;
import com.google.android.exoplayer2.extractor.AbstractC11130j;
import com.google.android.exoplayer2.extractor.AbstractC11133l;
import com.google.android.exoplayer2.extractor.AbstractC11146v;
import com.google.android.exoplayer2.extractor.C11145u;
import com.google.android.exoplayer2.extractor.p334h.AbstractC11079ad;
import com.google.android.exoplayer2.util.C11593a;
import com.google.android.exoplayer2.util.C11597ad;
import com.google.android.exoplayer2.util.C11627t;
import com.google.android.exoplayer2.util.C11628u;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
/* renamed from: com.google.android.exoplayer2.extractor.h.ac */
/* loaded from: classes3-dex2jar.jar:com/google/android/exoplayer2/extractor/h/ac.class */
public final class C11076ac implements AbstractC11071h {

    /* renamed from: a */
    public static final AbstractC11133l f36085a = _$$Lambda$ac$j92iK8MWpKkExENsbUAK0jO8p_4.INSTANCE;

    /* renamed from: b */
    private final int f36086b;

    /* renamed from: c */
    private final int f36087c;

    /* renamed from: d */
    private final List<C11597ad> f36088d;

    /* renamed from: e */
    private final C11628u f36089e;

    /* renamed from: f */
    private final SparseIntArray f36090f;

    /* renamed from: g */
    private final AbstractC11079ad.AbstractC11082c f36091g;

    /* renamed from: h */
    private final SparseArray<AbstractC11079ad> f36092h;

    /* renamed from: i */
    private final SparseBooleanArray f36093i;

    /* renamed from: j */
    private final SparseBooleanArray f36094j;

    /* renamed from: k */
    private final C11075ab f36095k;

    /* renamed from: l */
    private C11073aa f36096l;

    /* renamed from: m */
    private AbstractC11130j f36097m;

    /* renamed from: n */
    private int f36098n;

    /* renamed from: o */
    private boolean f36099o;

    /* renamed from: p */
    private boolean f36100p;

    /* renamed from: q */
    private boolean f36101q;

    /* renamed from: r */
    private AbstractC11079ad f36102r;

    /* renamed from: s */
    private int f36103s;

    /* renamed from: t */
    private int f36104t;

    /* renamed from: com.google.android.exoplayer2.extractor.h.ac$a */
    /* loaded from: classes3-dex2jar.jar:com/google/android/exoplayer2/extractor/h/ac$a.class */
    public final class C11077a implements AbstractC11118x {

        /* renamed from: b */
        private final C11627t f36106b = new C11627t(new byte[4]);

        public C11077a() {
            C11076ac.this = r6;
        }

        @Override // com.google.android.exoplayer2.extractor.p334h.AbstractC11118x
        /* renamed from: a */
        public final void mo21447a(C11597ad c11597ad, AbstractC11130j abstractC11130j, AbstractC11079ad.C11083d c11083d) {
        }

        @Override // com.google.android.exoplayer2.extractor.p334h.AbstractC11118x
        /* renamed from: a */
        public final void mo21446a(C11628u c11628u) {
            if (c11628u.m19804c() == 0 && (c11628u.m19804c() & 128) != 0) {
                c11628u.m19799e(6);
                int m19812a = c11628u.m19812a() / 4;
                for (int i = 0; i < m19812a; i++) {
                    c11628u.m19809a(this.f36106b, 4);
                    int m19819c = this.f36106b.m19819c(16);
                    this.f36106b.m19822b(3);
                    if (m19819c == 0) {
                        this.f36106b.m19822b(13);
                    } else {
                        int m19819c2 = this.f36106b.m19819c(13);
                        if (C11076ac.this.f36092h.get(m19819c2) == null) {
                            C11076ac.this.f36092h.put(m19819c2, new C11119y(new C11078b(m19819c2)));
                            C11076ac.m21540b(C11076ac.this);
                        }
                    }
                }
                if (C11076ac.this.f36086b == 2) {
                    return;
                }
                C11076ac.this.f36092h.remove(0);
            }
        }
    }

    /* renamed from: com.google.android.exoplayer2.extractor.h.ac$b */
    /* loaded from: classes3-dex2jar.jar:com/google/android/exoplayer2/extractor/h/ac$b.class */
    final class C11078b implements AbstractC11118x {

        /* renamed from: b */
        private final C11627t f36108b = new C11627t(new byte[5]);

        /* renamed from: c */
        private final SparseArray<AbstractC11079ad> f36109c = new SparseArray<>();

        /* renamed from: d */
        private final SparseIntArray f36110d = new SparseIntArray();

        /* renamed from: e */
        private final int f36111e;

        public C11078b(int i) {
            C11076ac.this = r6;
            this.f36111e = i;
        }

        @Override // com.google.android.exoplayer2.extractor.p334h.AbstractC11118x
        /* renamed from: a */
        public final void mo21447a(C11597ad c11597ad, AbstractC11130j abstractC11130j, AbstractC11079ad.C11083d c11083d) {
        }

        /* JADX WARN: Code restructure failed: missing block: B:74:0x0333, code lost:
            if (r0 == 5) goto L75;
         */
        @Override // com.google.android.exoplayer2.extractor.p334h.AbstractC11118x
        /* renamed from: a */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public final void mo21446a(com.google.android.exoplayer2.util.C11628u r10) {
            /*
                Method dump skipped, instructions count: 1265
                To view this dump add '--comments-level debug' option
            */
            throw new UnsupportedOperationException("Method not decompiled: com.google.android.exoplayer2.extractor.p334h.C11076ac.C11078b.mo21446a(com.google.android.exoplayer2.util.u):void");
        }
    }

    public C11076ac() {
        this(0);
    }

    public C11076ac(int i) {
        this(1, i, 112800);
    }

    public C11076ac(int i, int i2, int i3) {
        this(i, new C11597ad(0L), new C11091g(i2), i3);
    }

    public C11076ac(int i, C11597ad c11597ad, AbstractC11079ad.AbstractC11082c abstractC11082c) {
        this(i, c11597ad, abstractC11082c, 112800);
    }

    public C11076ac(int i, C11597ad c11597ad, AbstractC11079ad.AbstractC11082c abstractC11082c, int i2) {
        this.f36091g = (AbstractC11079ad.AbstractC11082c) C11593a.m20020b(abstractC11082c);
        this.f36087c = i2;
        this.f36086b = i;
        if (i == 1 || i == 2) {
            this.f36088d = Collections.singletonList(c11597ad);
        } else {
            ArrayList arrayList = new ArrayList();
            this.f36088d = arrayList;
            arrayList.add(c11597ad);
        }
        this.f36089e = new C11628u(new byte[9400], 0);
        this.f36093i = new SparseBooleanArray();
        this.f36094j = new SparseBooleanArray();
        this.f36092h = new SparseArray<>();
        this.f36090f = new SparseIntArray();
        this.f36095k = new C11075ab(i2);
        this.f36104t = -1;
        m21545a();
    }

    /* renamed from: a */
    private void m21545a() {
        this.f36093i.clear();
        this.f36092h.clear();
        SparseArray<AbstractC11079ad> mo21493a = this.f36091g.mo21493a();
        int size = mo21493a.size();
        for (int i = 0; i < size; i++) {
            this.f36092h.put(mo21493a.keyAt(i), mo21493a.valueAt(i));
        }
        this.f36092h.put(0, new C11119y(new C11077a()));
        this.f36102r = null;
    }

    /* renamed from: b */
    static /* synthetic */ int m21540b(C11076ac c11076ac) {
        int i = c11076ac.f36098n;
        c11076ac.f36098n = i + 1;
        return i;
    }

    /* renamed from: b */
    public static /* synthetic */ AbstractC11071h[] m21541b() {
        return new AbstractC11071h[]{new C11076ac()};
    }

    /* JADX WARN: Type inference failed for: r0v239, types: [long] */
    /* JADX WARN: Type inference failed for: r0v278, types: [long] */
    @Override // com.google.android.exoplayer2.extractor.AbstractC11071h
    /* renamed from: a */
    public final int mo21437a(AbstractC11121i abstractC11121i, C11145u c11145u) throws IOException {
        boolean z;
        char c;
        char c2;
        long mo21395d = abstractC11121i.mo21395d();
        if (this.f36099o) {
            if (((mo21395d == -1 || this.f36086b == 2) ? false : true) && !this.f36095k.f36079d) {
                C11075ab c11075ab = this.f36095k;
                int i = this.f36104t;
                if (i <= 0) {
                    return c11075ab.m21546a(abstractC11121i);
                }
                if (!c11075ab.f36081f) {
                    long mo21395d2 = abstractC11121i.mo21395d();
                    int min = (int) Math.min(c11075ab.f36076a, mo21395d2);
                    long j = mo21395d2 - min;
                    if (abstractC11121i.mo21398c() != j) {
                        c11145u.f36501a = j;
                        return 1;
                    }
                    c11075ab.f36078c.m19811a(min);
                    abstractC11121i.mo21406a();
                    abstractC11121i.mo21394d(c11075ab.f36078c.f38733a, 0, min);
                    C11628u c11628u = c11075ab.f36078c;
                    int i2 = c11628u.f38734b;
                    int i3 = c11628u.f38735c - 1;
                    while (true) {
                        c2 = 1;
                        if (i3 < i2) {
                            break;
                        }
                        if (c11628u.f38733a[i3] == 71) {
                            c2 = C11084ae.m21524a(c11628u, i3, i);
                            if (c2 != -9223372036854775807L) {
                                break;
                            }
                        }
                        i3--;
                    }
                    c11075ab.f36083h = c2;
                    c11075ab.f36081f = true;
                    return 0;
                } else if (c11075ab.f36083h == -9223372036854775807L) {
                    return c11075ab.m21546a(abstractC11121i);
                } else {
                    if (c11075ab.f36080e) {
                        if (c11075ab.f36082g == -9223372036854775807L) {
                            return c11075ab.m21546a(abstractC11121i);
                        }
                        c11075ab.f36084i = c11075ab.f36077b.m20006b(c11075ab.f36083h) - c11075ab.f36077b.m20006b(c11075ab.f36082g);
                        return c11075ab.m21546a(abstractC11121i);
                    }
                    int min2 = (int) Math.min(c11075ab.f36076a, abstractC11121i.mo21395d());
                    if (abstractC11121i.mo21398c() != 0) {
                        c11145u.f36501a = 0L;
                        return 1;
                    }
                    c11075ab.f36078c.m19811a(min2);
                    abstractC11121i.mo21406a();
                    abstractC11121i.mo21394d(c11075ab.f36078c.f38733a, 0, min2);
                    C11628u c11628u2 = c11075ab.f36078c;
                    int i4 = c11628u2.f38734b;
                    int i5 = c11628u2.f38735c;
                    while (true) {
                        if (i4 >= i5) {
                            c = 1;
                            break;
                        }
                        if (c11628u2.f38733a[i4] == 71) {
                            c = C11084ae.m21524a(c11628u2, i4, i);
                            if (c != -9223372036854775807L) {
                                break;
                            }
                        }
                        i4++;
                    }
                    c11075ab.f36082g = c;
                    c11075ab.f36080e = true;
                    return 0;
                }
            }
            if (!this.f36100p) {
                this.f36100p = true;
                if (this.f36095k.f36084i != -9223372036854775807L) {
                    C11073aa c11073aa = new C11073aa(this.f36095k.f36077b, this.f36095k.f36084i, mo21395d, this.f36104t, this.f36087c);
                    this.f36096l = c11073aa;
                    this.f36097m.mo20901a(c11073aa.m21787a());
                } else {
                    this.f36097m.mo20901a(new AbstractC11146v.C11148b(this.f36095k.f36084i));
                }
            }
            if (this.f36101q) {
                this.f36101q = false;
                mo21439a(0L, 0L);
                if (abstractC11121i.mo21398c() != 0) {
                    c11145u.f36501a = 0L;
                    return 1;
                }
            }
            C11073aa c11073aa2 = this.f36096l;
            if (c11073aa2 != null && c11073aa2.m21782b()) {
                return this.f36096l.m21783a(abstractC11121i, c11145u);
            }
        }
        byte[] bArr = this.f36089e.f38733a;
        if (9400 - this.f36089e.f38734b < 188) {
            int m19812a = this.f36089e.m19812a();
            if (m19812a > 0) {
                System.arraycopy(bArr, this.f36089e.f38734b, bArr, 0, m19812a);
            }
            this.f36089e.m19808a(bArr, m19812a);
        }
        while (true) {
            if (this.f36089e.m19812a() >= 188) {
                z = true;
                break;
            }
            int i6 = this.f36089e.f38735c;
            int mo20033a = abstractC11121i.mo20033a(bArr, i6, 9400 - i6);
            if (mo20033a == -1) {
                z = false;
                break;
            }
            this.f36089e.m19803c(i6 + mo20033a);
        }
        if (!z) {
            return -1;
        }
        int i7 = this.f36089e.f38734b;
        int i8 = this.f36089e.f38735c;
        int m21522a = C11084ae.m21522a(this.f36089e.f38733a, i7, i8);
        this.f36089e.m19801d(m21522a);
        int i9 = m21522a + 188;
        if (i9 > i8) {
            int i10 = this.f36103s + (m21522a - i7);
            this.f36103s = i10;
            if (this.f36086b == 2 && i10 > 376) {
                throw new ParserException("Cannot find sync byte. Most likely not a Transport Stream.");
            }
        } else {
            this.f36103s = 0;
        }
        int i11 = this.f36089e.f38735c;
        if (i9 > i11) {
            return 0;
        }
        int m19792j = this.f36089e.m19792j();
        if ((8388608 & m19792j) != 0) {
            this.f36089e.m19801d(i9);
            return 0;
        }
        int i12 = ((4194304 & m19792j) != 0 ? 1 : 0) | 0;
        int i13 = (2096896 & m19792j) >> 8;
        boolean z2 = (m19792j & 32) != 0;
        AbstractC11079ad abstractC11079ad = (m19792j & 16) != 0 ? this.f36092h.get(i13) : null;
        if (abstractC11079ad == null) {
            this.f36089e.m19801d(i9);
            return 0;
        }
        if (this.f36086b != 2) {
            int i14 = m19792j & 15;
            int i15 = this.f36090f.get(i13, i14 - 1);
            this.f36090f.put(i13, i14);
            if (i15 == i14) {
                this.f36089e.m19801d(i9);
                return 0;
            } else if (i14 != ((i15 + 1) & 15)) {
                abstractC11079ad.mo21445a();
            }
        }
        int i16 = i12;
        if (z2) {
            int m19804c = this.f36089e.m19804c();
            i16 = i12 | ((this.f36089e.m19804c() & 64) != 0 ? 2 : 0);
            this.f36089e.m19799e(m19804c - 1);
        }
        boolean z3 = this.f36099o;
        if (this.f36086b == 2 || z3 || !this.f36094j.get(i13, false)) {
            this.f36089e.m19803c(i9);
            abstractC11079ad.mo21443a(this.f36089e, i16);
            this.f36089e.m19803c(i11);
        }
        if (this.f36086b != 2 && !z3 && this.f36099o && mo21395d != -1) {
            this.f36101q = true;
        }
        this.f36089e.m19801d(i9);
        return 0;
    }

    @Override // com.google.android.exoplayer2.extractor.AbstractC11071h
    /* renamed from: a */
    public final void mo21439a(long j, long j2) {
        C11073aa c11073aa;
        C11593a.m20019b(this.f36086b != 2);
        int size = this.f36088d.size();
        for (int i = 0; i < size; i++) {
            C11597ad c11597ad = this.f36088d.get(i);
            if ((c11597ad.m20005c() == -9223372036854775807L) || (c11597ad.m20005c() != 0 && c11597ad.m20009a() != j2)) {
                c11597ad.m20008a(j2);
            }
        }
        if (j2 != 0 && (c11073aa = this.f36096l) != null) {
            c11073aa.m21786a(j2);
        }
        this.f36089e.m19811a(0);
        this.f36090f.clear();
        for (int i2 = 0; i2 < this.f36092h.size(); i2++) {
            this.f36092h.valueAt(i2).mo21445a();
        }
        this.f36103s = 0;
    }

    @Override // com.google.android.exoplayer2.extractor.AbstractC11071h
    /* renamed from: a */
    public final void mo21436a(AbstractC11130j abstractC11130j) {
        this.f36097m = abstractC11130j;
    }

    @Override // com.google.android.exoplayer2.extractor.AbstractC11071h
    /* renamed from: a */
    public final boolean mo21438a(AbstractC11121i abstractC11121i) throws IOException {
        boolean z;
        byte[] bArr = this.f36089e.f38733a;
        abstractC11121i.mo21394d(bArr, 0, 940);
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
                abstractC11121i.mo21401b(i);
                return true;
            }
        }
        return false;
    }
}

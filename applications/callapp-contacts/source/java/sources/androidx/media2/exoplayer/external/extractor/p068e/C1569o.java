package androidx.media2.exoplayer.external.extractor.p068e;

import android.util.SparseArray;
import androidx.media2.exoplayer.external.extractor.AbstractC1601i;
import androidx.media2.exoplayer.external.extractor.AbstractC1641q;
import androidx.media2.exoplayer.external.extractor.p068e.AbstractC1548ah;
import androidx.media2.exoplayer.external.util.C2014n;
import androidx.media2.exoplayer.external.util.C2018p;
import androidx.media2.exoplayer.external.util.C2019q;
/* renamed from: androidx.media2.exoplayer.external.extractor.e.o */
/* loaded from: classes-dex2jar.jar:androidx/media2/exoplayer/external/extractor/e/o.class */
public final class C1569o implements AbstractC1566m {

    /* renamed from: a */
    private final C1539ab f6106a;

    /* renamed from: b */
    private final boolean f6107b;

    /* renamed from: c */
    private final boolean f6108c;

    /* renamed from: g */
    private long f6112g;

    /* renamed from: i */
    private String f6114i;

    /* renamed from: j */
    private AbstractC1641q f6115j;

    /* renamed from: k */
    private C1571a f6116k;

    /* renamed from: l */
    private boolean f6117l;

    /* renamed from: m */
    private long f6118m;

    /* renamed from: n */
    private boolean f6119n;

    /* renamed from: h */
    private final boolean[] f6113h = new boolean[3];

    /* renamed from: d */
    private final C1578t f6109d = new C1578t(7, 128);

    /* renamed from: e */
    private final C1578t f6110e = new C1578t(8, 128);

    /* renamed from: f */
    private final C1578t f6111f = new C1578t(6, 128);

    /* renamed from: o */
    private final C2018p f6120o = new C2018p();

    /* renamed from: androidx.media2.exoplayer.external.extractor.e.o$a */
    /* loaded from: classes-dex2jar.jar:androidx/media2/exoplayer/external/extractor/e/o$a.class */
    public static final class C1571a {

        /* renamed from: a */
        final AbstractC1641q f6121a;

        /* renamed from: b */
        final boolean f6122b;

        /* renamed from: c */
        final boolean f6123c;

        /* renamed from: d */
        int f6124d;

        /* renamed from: e */
        int f6125e;

        /* renamed from: f */
        long f6126f;

        /* renamed from: g */
        boolean f6127g;

        /* renamed from: h */
        long f6128h;

        /* renamed from: k */
        boolean f6131k;

        /* renamed from: l */
        long f6132l;

        /* renamed from: m */
        long f6133m;

        /* renamed from: n */
        boolean f6134n;

        /* renamed from: q */
        private final C2019q f6137q;

        /* renamed from: r */
        private byte[] f6138r;

        /* renamed from: o */
        private final SparseArray<C2014n.C2016b> f6135o = new SparseArray<>();

        /* renamed from: p */
        private final SparseArray<C2014n.C2015a> f6136p = new SparseArray<>();

        /* renamed from: i */
        C1572a f6129i = new C1572a();

        /* renamed from: j */
        C1572a f6130j = new C1572a();

        /* renamed from: androidx.media2.exoplayer.external.extractor.e.o$a$a */
        /* loaded from: classes-dex2jar.jar:androidx/media2/exoplayer/external/extractor/e/o$a$a.class */
        public static final class C1572a {

            /* renamed from: a */
            boolean f6139a;

            /* renamed from: b */
            boolean f6140b;

            /* renamed from: c */
            C2014n.C2016b f6141c;

            /* renamed from: d */
            int f6142d;

            /* renamed from: e */
            int f6143e;

            /* renamed from: f */
            int f6144f;

            /* renamed from: g */
            int f6145g;

            /* renamed from: h */
            boolean f6146h;

            /* renamed from: i */
            boolean f6147i;

            /* renamed from: j */
            boolean f6148j;

            /* renamed from: k */
            boolean f6149k;

            /* renamed from: l */
            int f6150l;

            /* renamed from: m */
            int f6151m;

            /* renamed from: n */
            int f6152n;

            /* renamed from: o */
            int f6153o;

            /* renamed from: p */
            int f6154p;

            private C1572a() {
            }

            /* renamed from: a */
            public final void m42664a() {
                this.f6140b = false;
                this.f6139a = false;
            }

            /* renamed from: a */
            public final void m42663a(int i) {
                this.f6143e = i;
                this.f6140b = true;
            }

            /* renamed from: a */
            public final void m42662a(C2014n.C2016b c2016b, int i, int i2, int i3, int i4, boolean z, boolean z2, boolean z3, boolean z4, int i5, int i6, int i7, int i8, int i9) {
                this.f6141c = c2016b;
                this.f6142d = i;
                this.f6143e = i2;
                this.f6144f = i3;
                this.f6145g = i4;
                this.f6146h = z;
                this.f6147i = z2;
                this.f6148j = z3;
                this.f6149k = z4;
                this.f6150l = i5;
                this.f6151m = i6;
                this.f6152n = i7;
                this.f6153o = i8;
                this.f6154p = i9;
                this.f6139a = true;
                this.f6140b = true;
            }
        }

        public C1571a(AbstractC1641q abstractC1641q, boolean z, boolean z2) {
            this.f6121a = abstractC1641q;
            this.f6122b = z;
            this.f6123c = z2;
            byte[] bArr = new byte[128];
            this.f6138r = bArr;
            this.f6137q = new C2019q(bArr, 0, 0);
            m42668a();
        }

        /* renamed from: a */
        public final void m42668a() {
            this.f6127g = false;
            this.f6131k = false;
            this.f6130j.m42664a();
        }

        /* renamed from: a */
        public final void m42667a(C2014n.C2015a c2015a) {
            this.f6136p.append(c2015a.f8111a, c2015a);
        }

        /* renamed from: a */
        public final void m42666a(C2014n.C2016b c2016b) {
            this.f6135o.append(c2016b.f8117d, c2016b);
        }

        /* JADX WARN: Removed duplicated region for block: B:52:0x018d  */
        /* JADX WARN: Removed duplicated region for block: B:53:0x0193  */
        /* JADX WARN: Removed duplicated region for block: B:56:0x019b  */
        /* JADX WARN: Removed duplicated region for block: B:60:0x01b2  */
        /* JADX WARN: Removed duplicated region for block: B:63:0x01bd  */
        /* JADX WARN: Removed duplicated region for block: B:74:0x01ff  */
        /* renamed from: a */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public final void m42665a(byte[] r17, int r18, int r19) {
            /*
                Method dump skipped, instructions count: 643
                To view this dump add '--comments-level debug' option
            */
            throw new UnsupportedOperationException("Method not decompiled: androidx.media2.exoplayer.external.extractor.p068e.C1569o.C1571a.m42665a(byte[], int, int):void");
        }
    }

    public C1569o(C1539ab c1539ab, boolean z, boolean z2) {
        this.f6106a = c1539ab;
        this.f6107b = z;
        this.f6108c = z2;
    }

    /* renamed from: a */
    private void m42669a(byte[] bArr, int i, int i2) {
        if (!this.f6117l || this.f6116k.f6123c) {
            this.f6109d.m42648a(bArr, i, i2);
            this.f6110e.m42648a(bArr, i, i2);
        }
        this.f6111f.m42648a(bArr, i, i2);
        this.f6116k.m42665a(bArr, i, i2);
    }

    @Override // androidx.media2.exoplayer.external.extractor.p068e.AbstractC1566m
    /* renamed from: a */
    public final void mo42655a() {
        C2014n.m41559a(this.f6113h);
        this.f6109d.m42650a();
        this.f6110e.m42650a();
        this.f6111f.m42650a();
        this.f6116k.m42668a();
        this.f6112g = 0L;
        this.f6119n = false;
    }

    @Override // androidx.media2.exoplayer.external.extractor.p068e.AbstractC1566m
    /* renamed from: a */
    public final void mo42654a(long j, int i) {
        this.f6118m = j;
        this.f6119n |= (i & 2) != 0;
    }

    @Override // androidx.media2.exoplayer.external.extractor.p068e.AbstractC1566m
    /* renamed from: a */
    public final void mo42653a(AbstractC1601i abstractC1601i, AbstractC1548ah.C1552d c1552d) {
        c1552d.m42708a();
        this.f6114i = c1552d.m42706c();
        AbstractC1641q mo42213a = abstractC1601i.mo42213a(c1552d.m42707b(), 2);
        this.f6115j = mo42213a;
        this.f6116k = new C1571a(mo42213a, this.f6107b, this.f6108c);
        this.f6106a.m42727a(abstractC1601i, c1552d);
    }

    /* JADX WARN: Code restructure failed: missing block: B:87:0x0367, code lost:
        if (((!r0.f6139a || (r0.f6139a && r0.f6144f == r0.f6144f && r0.f6145g == r0.f6145g && r0.f6146h == r0.f6146h && ((!r0.f6147i || !r0.f6147i || r0.f6148j == r0.f6148j) && ((r0.f6142d == r0.f6142d || !(r0.f6142d == 0 || r0.f6142d == 0)) && (!(r0.f6141c.f8124k == 0 && r0.f6141c.f8124k == 0 && (r0.f6151m != r0.f6151m || r0.f6152n != r0.f6152n)) && (!(r0.f6141c.f8124k == 1 && r0.f6141c.f8124k == 1 && (r0.f6153o != r0.f6153o || r0.f6154p != r0.f6154p)) && r0.f6149k == r0.f6149k && (!r0.f6149k || !r0.f6149k || r0.f6150l == r0.f6150l))))))) ? null : 1) != null) goto L88;
     */
    /* JADX WARN: Removed duplicated region for block: B:114:0x043a  */
    /* JADX WARN: Removed duplicated region for block: B:96:0x03d6  */
    @Override // androidx.media2.exoplayer.external.extractor.p068e.AbstractC1566m
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void mo42652a(androidx.media2.exoplayer.external.util.C2018p r15) {
        /*
            Method dump skipped, instructions count: 1271
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.media2.exoplayer.external.extractor.p068e.C1569o.mo42652a(androidx.media2.exoplayer.external.util.p):void");
    }

    @Override // androidx.media2.exoplayer.external.extractor.p068e.AbstractC1566m
    /* renamed from: b */
    public final void mo42651b() {
    }
}

package com.google.android.exoplayer2.extractor.p334h;

import android.util.SparseArray;
import com.google.android.exoplayer2.extractor.AbstractC11130j;
import com.google.android.exoplayer2.extractor.AbstractC11150x;
import com.google.android.exoplayer2.extractor.p334h.AbstractC11079ad;
import com.google.android.exoplayer2.util.C11624s;
import com.google.android.exoplayer2.util.C11628u;
import com.google.android.exoplayer2.util.C11629v;
import org.checkerframework.checker.nullness.qual.RequiresNonNull;
/* renamed from: com.google.android.exoplayer2.extractor.h.m */
/* loaded from: classes3-dex2jar.jar:com/google/android/exoplayer2/extractor/h/m.class */
public final class C11100m implements AbstractC11094j {

    /* renamed from: a */
    private final C11120z f36257a;

    /* renamed from: b */
    private final boolean f36258b;

    /* renamed from: c */
    private final boolean f36259c;

    /* renamed from: g */
    private long f36263g;

    /* renamed from: i */
    private String f36265i;

    /* renamed from: j */
    private AbstractC11150x f36266j;

    /* renamed from: k */
    private C11102a f36267k;

    /* renamed from: l */
    private boolean f36268l;

    /* renamed from: m */
    private long f36269m;

    /* renamed from: n */
    private boolean f36270n;

    /* renamed from: h */
    private final boolean[] f36264h = new boolean[3];

    /* renamed from: d */
    private final C11109r f36260d = new C11109r(7, 128);

    /* renamed from: e */
    private final C11109r f36261e = new C11109r(8, 128);

    /* renamed from: f */
    private final C11109r f36262f = new C11109r(6, 128);

    /* renamed from: o */
    private final C11628u f36271o = new C11628u();

    /* renamed from: com.google.android.exoplayer2.extractor.h.m$a */
    /* loaded from: classes3-dex2jar.jar:com/google/android/exoplayer2/extractor/h/m$a.class */
    public static final class C11102a {

        /* renamed from: a */
        final AbstractC11150x f36272a;

        /* renamed from: b */
        final boolean f36273b;

        /* renamed from: c */
        final boolean f36274c;

        /* renamed from: d */
        int f36275d;

        /* renamed from: e */
        int f36276e;

        /* renamed from: f */
        long f36277f;

        /* renamed from: g */
        boolean f36278g;

        /* renamed from: h */
        long f36279h;

        /* renamed from: k */
        boolean f36282k;

        /* renamed from: l */
        long f36283l;

        /* renamed from: m */
        long f36284m;

        /* renamed from: n */
        boolean f36285n;

        /* renamed from: q */
        private final C11629v f36288q;

        /* renamed from: r */
        private byte[] f36289r;

        /* renamed from: o */
        private final SparseArray<C11624s.C11626b> f36286o = new SparseArray<>();

        /* renamed from: p */
        private final SparseArray<C11624s.C11625a> f36287p = new SparseArray<>();

        /* renamed from: i */
        C11103a f36280i = new C11103a();

        /* renamed from: j */
        C11103a f36281j = new C11103a();

        /* renamed from: com.google.android.exoplayer2.extractor.h.m$a$a */
        /* loaded from: classes3-dex2jar.jar:com/google/android/exoplayer2/extractor/h/m$a$a.class */
        public static final class C11103a {

            /* renamed from: a */
            boolean f36290a;

            /* renamed from: b */
            boolean f36291b;

            /* renamed from: c */
            C11624s.C11626b f36292c;

            /* renamed from: d */
            int f36293d;

            /* renamed from: e */
            int f36294e;

            /* renamed from: f */
            int f36295f;

            /* renamed from: g */
            int f36296g;

            /* renamed from: h */
            boolean f36297h;

            /* renamed from: i */
            boolean f36298i;

            /* renamed from: j */
            boolean f36299j;

            /* renamed from: k */
            boolean f36300k;

            /* renamed from: l */
            int f36301l;

            /* renamed from: m */
            int f36302m;

            /* renamed from: n */
            int f36303n;

            /* renamed from: o */
            int f36304o;

            /* renamed from: p */
            int f36305p;

            private C11103a() {
            }

            /* renamed from: a */
            public final void m21476a() {
                this.f36291b = false;
                this.f36290a = false;
            }

            /* renamed from: a */
            public final void m21475a(int i) {
                this.f36294e = i;
                this.f36291b = true;
            }

            /* renamed from: a */
            public final void m21474a(C11624s.C11626b c11626b, int i, int i2, int i3, int i4, boolean z, boolean z2, boolean z3, boolean z4, int i5, int i6, int i7, int i8, int i9) {
                this.f36292c = c11626b;
                this.f36293d = i;
                this.f36294e = i2;
                this.f36295f = i3;
                this.f36296g = i4;
                this.f36297h = z;
                this.f36298i = z2;
                this.f36299j = z3;
                this.f36300k = z4;
                this.f36301l = i5;
                this.f36302m = i6;
                this.f36303n = i7;
                this.f36304o = i8;
                this.f36305p = i9;
                this.f36290a = true;
                this.f36291b = true;
            }
        }

        public C11102a(AbstractC11150x abstractC11150x, boolean z, boolean z2) {
            this.f36272a = abstractC11150x;
            this.f36273b = z;
            this.f36274c = z2;
            byte[] bArr = new byte[128];
            this.f36289r = bArr;
            this.f36288q = new C11629v(bArr, 0, 0);
            m21480a();
        }

        /* renamed from: a */
        public final void m21480a() {
            this.f36278g = false;
            this.f36282k = false;
            this.f36281j.m21476a();
        }

        /* renamed from: a */
        public final void m21479a(C11624s.C11625a c11625a) {
            this.f36287p.append(c11625a.f38713a, c11625a);
        }

        /* renamed from: a */
        public final void m21478a(C11624s.C11626b c11626b) {
            this.f36286o.append(c11626b.f38719d, c11626b);
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
        public final void m21477a(byte[] r17, int r18, int r19) {
            /*
                Method dump skipped, instructions count: 643
                To view this dump add '--comments-level debug' option
            */
            throw new UnsupportedOperationException("Method not decompiled: com.google.android.exoplayer2.extractor.p334h.C11100m.C11102a.m21477a(byte[], int, int):void");
        }
    }

    public C11100m(C11120z c11120z, boolean z, boolean z2) {
        this.f36257a = c11120z;
        this.f36258b = z;
        this.f36259c = z2;
    }

    @RequiresNonNull({"sampleReader"})
    /* renamed from: a */
    private void m21481a(byte[] bArr, int i, int i2) {
        if (!this.f36268l || this.f36267k.f36274c) {
            this.f36260d.m21460a(bArr, i, i2);
            this.f36261e.m21460a(bArr, i, i2);
        }
        this.f36262f.m21460a(bArr, i, i2);
        this.f36267k.m21477a(bArr, i, i2);
    }

    @Override // com.google.android.exoplayer2.extractor.p334h.AbstractC11094j
    /* renamed from: a */
    public final void mo21467a() {
        this.f36263g = 0L;
        this.f36270n = false;
        C11624s.m19831a(this.f36264h);
        this.f36260d.m21462a();
        this.f36261e.m21462a();
        this.f36262f.m21462a();
        C11102a c11102a = this.f36267k;
        if (c11102a != null) {
            c11102a.m21480a();
        }
    }

    @Override // com.google.android.exoplayer2.extractor.p334h.AbstractC11094j
    /* renamed from: a */
    public final void mo21466a(long j, int i) {
        this.f36269m = j;
        this.f36270n |= (i & 2) != 0;
    }

    @Override // com.google.android.exoplayer2.extractor.p334h.AbstractC11094j
    /* renamed from: a */
    public final void mo21465a(AbstractC11130j abstractC11130j, AbstractC11079ad.C11083d c11083d) {
        c11083d.m21528a();
        this.f36265i = c11083d.m21526c();
        AbstractC11150x mo20905a = abstractC11130j.mo20905a(c11083d.m21527b(), 2);
        this.f36266j = mo20905a;
        this.f36267k = new C11102a(mo20905a, this.f36258b, this.f36259c);
        this.f36257a.m21441a(abstractC11130j, c11083d);
    }

    /* JADX WARN: Code restructure failed: missing block: B:54:0x0312, code lost:
        if (r0.f36299j == r0.f36299j) goto L55;
     */
    /* JADX WARN: Code restructure failed: missing block: B:60:0x032f, code lost:
        if (r0.f36293d != 0) goto L61;
     */
    /* JADX WARN: Code restructure failed: missing block: B:68:0x0359, code lost:
        if (r0.f36303n == r0.f36303n) goto L69;
     */
    /* JADX WARN: Code restructure failed: missing block: B:76:0x0385, code lost:
        if (r0.f36305p == r0.f36305p) goto L77;
     */
    /* JADX WARN: Code restructure failed: missing block: B:82:0x03a7, code lost:
        if (r0.f36301l == r0.f36301l) goto L83;
     */
    /* JADX WARN: Code restructure failed: missing block: B:85:0x03b0, code lost:
        if (r10 == null) goto L92;
     */
    /* JADX WARN: Removed duplicated region for block: B:112:0x048c  */
    /* JADX WARN: Removed duplicated region for block: B:94:0x0428  */
    @Override // com.google.android.exoplayer2.extractor.p334h.AbstractC11094j
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void mo21464a(com.google.android.exoplayer2.util.C11628u r9) {
        /*
            Method dump skipped, instructions count: 1353
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.exoplayer2.extractor.p334h.C11100m.mo21464a(com.google.android.exoplayer2.util.u):void");
    }

    @Override // com.google.android.exoplayer2.extractor.p334h.AbstractC11094j
    /* renamed from: b */
    public final void mo21463b() {
    }
}

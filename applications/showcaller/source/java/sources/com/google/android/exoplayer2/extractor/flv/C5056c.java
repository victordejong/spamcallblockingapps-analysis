package com.google.android.exoplayer2.extractor.flv;

import com.google.android.exoplayer2.p243c1.AbstractC4978h;
import com.google.android.exoplayer2.p243c1.AbstractC4979i;
import com.google.android.exoplayer2.p243c1.AbstractC4980j;
import com.google.android.exoplayer2.p243c1.AbstractC4982l;
import com.google.android.exoplayer2.p243c1.AbstractC4992t;
import com.google.android.exoplayer2.p243c1.C4991s;
import com.google.android.exoplayer2.util.C5536v;
/* renamed from: com.google.android.exoplayer2.extractor.flv.c */
/* loaded from: classes-dex2jar.jar:com/google/android/exoplayer2/extractor/flv/c.class */
public final class C5056c implements AbstractC4978h {

    /* renamed from: a */
    public static final AbstractC4982l f15733a = C5054a.f15728a;

    /* renamed from: g */
    private AbstractC4980j f15739g;

    /* renamed from: i */
    private boolean f15741i;

    /* renamed from: j */
    private long f15742j;

    /* renamed from: k */
    private int f15743k;

    /* renamed from: l */
    private int f15744l;

    /* renamed from: m */
    private int f15745m;

    /* renamed from: n */
    private long f15746n;

    /* renamed from: o */
    private boolean f15747o;

    /* renamed from: p */
    private C5055b f15748p;

    /* renamed from: q */
    private C5058e f15749q;

    /* renamed from: b */
    private final C5536v f15734b = new C5536v(4);

    /* renamed from: c */
    private final C5536v f15735c = new C5536v(9);

    /* renamed from: d */
    private final C5536v f15736d = new C5536v(11);

    /* renamed from: e */
    private final C5536v f15737e = new C5536v();

    /* renamed from: f */
    private final C5057d f15738f = new C5057d();

    /* renamed from: h */
    private int f15740h = 1;

    /* renamed from: a */
    private void m20743a() {
        if (!this.f15747o) {
            this.f15739g.mo19764c(new AbstractC4992t.C4994b(-9223372036854775807L));
            this.f15747o = true;
        }
    }

    /* JADX WARN: Type inference failed for: r0v12, types: [long] */
    /* JADX WARN: Type inference failed for: r0v8, types: [long] */
    /* renamed from: d */
    private long m20742d() {
        return this.f15741i ? this.f15742j + this.f15746n : this.f15738f.m20735d() == -9223372036854775807L ? (char) 0 : this.f15746n;
    }

    /* renamed from: e */
    public static /* synthetic */ AbstractC4978h[] m20741e() {
        return new AbstractC4978h[]{new C5056c()};
    }

    /* renamed from: i */
    private C5536v m20740i(AbstractC4979i abstractC4979i) {
        if (this.f15745m > this.f15737e.m18677b()) {
            C5536v c5536v = this.f15737e;
            c5536v.m18682K(new byte[Math.max(c5536v.m18677b() * 2, this.f15745m)], 0);
        } else {
            this.f15737e.m18680M(0);
        }
        this.f15737e.m18681L(this.f15745m);
        abstractC4979i.readFully(this.f15737e.f17941a, 0, this.f15745m);
        return this.f15737e;
    }

    /* renamed from: j */
    private boolean m20739j(AbstractC4979i abstractC4979i) {
        boolean z = false;
        if (!abstractC4979i.mo21009a(this.f15735c.f17941a, 0, 9, true)) {
            return false;
        }
        this.f15735c.m18680M(0);
        this.f15735c.m18679N(4);
        int m18653z = this.f15735c.m18653z();
        boolean z2 = (m18653z & 4) != 0;
        if ((m18653z & 1) != 0) {
            z = true;
        }
        if (z2 && this.f15748p == null) {
            this.f15748p = new C5055b(this.f15739g.mo19748t(8, 1));
        }
        if (z && this.f15749q == null) {
            this.f15749q = new C5058e(this.f15739g.mo19748t(9, 2));
        }
        this.f15739g.mo19752o();
        this.f15743k = (this.f15735c.m18668k() - 9) + 4;
        this.f15740h = 2;
        return true;
    }

    /* JADX WARN: Removed duplicated region for block: B:27:0x00d3  */
    /* JADX WARN: Removed duplicated region for block: B:28:0x00dc  */
    /* JADX WARN: Type inference failed for: r0v21, types: [long] */
    /* renamed from: k */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private boolean m20738k(com.google.android.exoplayer2.p243c1.AbstractC4979i r7) {
        /*
            Method dump skipped, instructions count: 240
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.exoplayer2.extractor.flv.C5056c.m20738k(com.google.android.exoplayer2.c1.i):boolean");
    }

    /* renamed from: l */
    private boolean m20737l(AbstractC4979i abstractC4979i) {
        if (!abstractC4979i.mo21009a(this.f15736d.f17941a, 0, 11, true)) {
            return false;
        }
        this.f15736d.m18680M(0);
        this.f15744l = this.f15736d.m18653z();
        this.f15745m = this.f15736d.m18690C();
        this.f15746n = this.f15736d.m18690C();
        this.f15746n = ((this.f15736d.m18653z() << 24) | this.f15746n) * 1000;
        this.f15736d.m18679N(3);
        this.f15740h = 4;
        return true;
    }

    /* renamed from: m */
    private void m20736m(AbstractC4979i abstractC4979i) {
        abstractC4979i.mo21002h(this.f15743k);
        this.f15743k = 0;
        this.f15740h = 3;
    }

    @Override // com.google.android.exoplayer2.p243c1.AbstractC4978h
    /* renamed from: b */
    public void mo19973b() {
    }

    @Override // com.google.android.exoplayer2.p243c1.AbstractC4978h
    /* renamed from: c */
    public boolean mo19972c(AbstractC4979i abstractC4979i) {
        boolean z = false;
        abstractC4979i.mo21000j(this.f15734b.f17941a, 0, 3);
        this.f15734b.m18680M(0);
        if (this.f15734b.m18690C() != 4607062) {
            return false;
        }
        abstractC4979i.mo21000j(this.f15734b.f17941a, 0, 2);
        this.f15734b.m18680M(0);
        if ((this.f15734b.m18687F() & 250) != 0) {
            return false;
        }
        abstractC4979i.mo21000j(this.f15734b.f17941a, 0, 4);
        this.f15734b.m18680M(0);
        int m18668k = this.f15734b.m18668k();
        abstractC4979i.mo21003g();
        abstractC4979i.mo21006d(m18668k);
        abstractC4979i.mo21000j(this.f15734b.f17941a, 0, 4);
        this.f15734b.m18680M(0);
        if (this.f15734b.m18668k() == 0) {
            z = true;
        }
        return z;
    }

    @Override // com.google.android.exoplayer2.p243c1.AbstractC4978h
    /* renamed from: f */
    public int mo19970f(AbstractC4979i abstractC4979i, C4991s c4991s) {
        while (true) {
            int i = this.f15740h;
            if (i != 1) {
                if (i == 2) {
                    m20736m(abstractC4979i);
                } else if (i != 3) {
                    if (i != 4) {
                        throw new IllegalStateException();
                    }
                    if (m20738k(abstractC4979i)) {
                        return 0;
                    }
                } else if (!m20737l(abstractC4979i)) {
                    return -1;
                }
            } else if (!m20739j(abstractC4979i)) {
                return -1;
            }
        }
    }

    @Override // com.google.android.exoplayer2.p243c1.AbstractC4978h
    /* renamed from: g */
    public void mo19969g(AbstractC4980j abstractC4980j) {
        this.f15739g = abstractC4980j;
    }

    @Override // com.google.android.exoplayer2.p243c1.AbstractC4978h
    /* renamed from: h */
    public void mo19968h(long j, long j2) {
        this.f15740h = 1;
        this.f15741i = false;
        this.f15743k = 0;
    }
}

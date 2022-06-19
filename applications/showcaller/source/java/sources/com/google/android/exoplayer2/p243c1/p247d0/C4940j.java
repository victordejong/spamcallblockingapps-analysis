package com.google.android.exoplayer2.p243c1.p247d0;

import com.google.android.exoplayer2.ParserException;
import com.google.android.exoplayer2.p243c1.AbstractC4978h;
import com.google.android.exoplayer2.p243c1.AbstractC4979i;
import com.google.android.exoplayer2.p243c1.AbstractC4980j;
import com.google.android.exoplayer2.p243c1.AbstractC4982l;
import com.google.android.exoplayer2.p243c1.AbstractC4992t;
import com.google.android.exoplayer2.p243c1.C4914d;
import com.google.android.exoplayer2.p243c1.C4991s;
import com.google.android.exoplayer2.p243c1.p247d0.AbstractC4933h0;
import com.google.android.exoplayer2.util.C5508e;
import com.google.android.exoplayer2.util.C5535u;
import com.google.android.exoplayer2.util.C5536v;
import java.io.EOFException;
/* renamed from: com.google.android.exoplayer2.c1.d0.j */
/* loaded from: classes-dex2jar.jar:com/google/android/exoplayer2/c1/d0/j.class */
public final class C4940j implements AbstractC4978h {

    /* renamed from: a */
    public static final AbstractC4982l f15196a = C4919c.f15106a;

    /* renamed from: b */
    private final int f15197b;

    /* renamed from: c */
    private final C4942k f15198c;

    /* renamed from: d */
    private final C5536v f15199d;

    /* renamed from: e */
    private final C5536v f15200e;

    /* renamed from: f */
    private final C5535u f15201f;

    /* renamed from: g */
    private AbstractC4980j f15202g;

    /* renamed from: h */
    private long f15203h;

    /* renamed from: i */
    private long f15204i;

    /* renamed from: j */
    private int f15205j;

    /* renamed from: k */
    private boolean f15206k;

    /* renamed from: l */
    private boolean f15207l;

    /* renamed from: m */
    private boolean f15208m;

    public C4940j() {
        this(0);
    }

    public C4940j(int i) {
        this.f15197b = i;
        this.f15198c = new C4942k(true);
        this.f15199d = new C5536v(2048);
        this.f15205j = -1;
        this.f15204i = -1L;
        C5536v c5536v = new C5536v(10);
        this.f15200e = c5536v;
        this.f15201f = new C5535u(c5536v.f17941a);
    }

    /* JADX WARN: Type inference failed for: r0v66, types: [long] */
    /* renamed from: a */
    private void m21149a(AbstractC4979i abstractC4979i) {
        int i;
        boolean z;
        int i2;
        boolean z2;
        int m18703h;
        if (this.f15206k) {
            return;
        }
        this.f15205j = -1;
        abstractC4979i.mo21003g();
        boolean z3 = false;
        if (abstractC4979i.mo20999k() == 0) {
            m21144k(abstractC4979i);
        }
        int i3 = 0;
        do {
            i = i3;
            z = z3;
            int i4 = i3;
            boolean z4 = z3;
            try {
                if (!abstractC4979i.mo21008b(this.f15200e.f17941a, 0, 2, true)) {
                    break;
                }
                int i5 = i3;
                this.f15200e.m18680M(0);
                int i6 = i3;
                if (!C4942k.m21135l(this.f15200e.m18687F())) {
                    i2 = 0;
                    z2 = z3;
                    break;
                } else if (!abstractC4979i.mo21008b(this.f15200e.f17941a, 0, 4, true)) {
                    i = i3;
                    z = z3;
                    break;
                } else {
                    this.f15201f.m18696o(14);
                    int i7 = i3;
                    m18703h = this.f15201f.m18703h(13);
                    if (m18703h <= 6) {
                        this.f15206k = true;
                        int i8 = i3;
                        int i9 = i3;
                        i4 = i3;
                        z4 = z3;
                        throw new ParserException("Malformed ADTS stream");
                    }
                    z = (z3 ? 1L : 0L) + m18703h;
                    i = i3 + 1;
                    if (i == 1000) {
                        break;
                    }
                    i3 = i;
                    z3 = z;
                }
            } catch (EOFException e) {
                i = i4;
                z = z4;
            }
        } while (abstractC4979i.mo21001i(m18703h - 6, true));
        i2 = i;
        z2 = z;
        abstractC4979i.mo21003g();
        if (i2 > 0) {
            this.f15205j = (int) ((z2 ? 1L : 0L) / i2);
        } else {
            this.f15205j = -1;
        }
        this.f15206k = true;
    }

    /* renamed from: d */
    private static int m21148d(int i, long j) {
        return (int) (((i * 8) * 1000000) / j);
    }

    /* renamed from: e */
    private AbstractC4992t m21147e(long j) {
        return new C4914d(j, this.f15204i, m21148d(this.f15205j, this.f15198c.m21137j()), this.f15205j);
    }

    /* renamed from: i */
    public static /* synthetic */ AbstractC4978h[] m21146i() {
        return new AbstractC4978h[]{new C4940j()};
    }

    /* renamed from: j */
    private void m21145j(long j, boolean z, boolean z2) {
        if (this.f15208m) {
            return;
        }
        boolean z3 = z && this.f15205j > 0;
        if (z3 && this.f15198c.m21137j() == -9223372036854775807L && !z2) {
            return;
        }
        AbstractC4980j abstractC4980j = (AbstractC4980j) C5508e.m18911e(this.f15202g);
        if (!z3 || this.f15198c.m21137j() == -9223372036854775807L) {
            abstractC4980j.mo19764c(new AbstractC4992t.C4994b(-9223372036854775807L));
        } else {
            abstractC4980j.mo19764c(m21147e(j));
        }
        this.f15208m = true;
    }

    /* renamed from: k */
    private int m21144k(AbstractC4979i abstractC4979i) {
        int i = 0;
        while (true) {
            abstractC4979i.mo21000j(this.f15200e.f17941a, 0, 10);
            this.f15200e.m18680M(0);
            if (this.f15200e.m18690C() != 4801587) {
                break;
            }
            this.f15200e.m18679N(3);
            int m18654y = this.f15200e.m18654y();
            i += m18654y + 10;
            abstractC4979i.mo21006d(m18654y);
        }
        abstractC4979i.mo21003g();
        abstractC4979i.mo21006d(i);
        if (this.f15204i == -1) {
            this.f15204i = i;
        }
        return i;
    }

    @Override // com.google.android.exoplayer2.p243c1.AbstractC4978h
    /* renamed from: b */
    public void mo19973b() {
    }

    /* JADX WARN: Code restructure failed: missing block: B:6:0x0032, code lost:
        r6.mo21003g();
        r8 = r8 + 1;
     */
    /* JADX WARN: Code restructure failed: missing block: B:7:0x0041, code lost:
        if ((r8 - r0) < 8192) goto L9;
     */
    /* JADX WARN: Code restructure failed: missing block: B:8:0x0044, code lost:
        return false;
     */
    @Override // com.google.android.exoplayer2.p243c1.AbstractC4978h
    /* renamed from: c */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public boolean mo19972c(com.google.android.exoplayer2.p243c1.AbstractC4979i r6) {
        /*
            r5 = this;
            r0 = r5
            r1 = r6
            int r0 = r0.m21144k(r1)
            r7 = r0
            r0 = r7
            r8 = r0
        L8:
            r0 = 0
            r9 = r0
            r0 = 0
            r10 = r0
        Le:
            r0 = r6
            r1 = r5
            com.google.android.exoplayer2.util.v r1 = r1.f15200e
            byte[] r1 = r1.f17941a
            r2 = 0
            r3 = 2
            r0.mo21000j(r1, r2, r3)
            r0 = r5
            com.google.android.exoplayer2.util.v r0 = r0.f15200e
            r1 = 0
            r0.m18680M(r1)
            r0 = r5
            com.google.android.exoplayer2.util.v r0 = r0.f15200e
            int r0 = r0.m18687F()
            boolean r0 = com.google.android.exoplayer2.p243c1.p247d0.C4942k.m21135l(r0)
            if (r0 != 0) goto L50
            r0 = r6
            r0.mo21003g()
            int r8 = r8 + 1
            r0 = r8
            r1 = r7
            int r0 = r0 - r1
            r1 = 8192(0x2000, float:1.14794E-41)
            if (r0 < r1) goto L46
            r0 = 0
            return r0
        L46:
            r0 = r6
            r1 = r8
            r0.mo21006d(r1)
            goto L8
        L50:
            int r9 = r9 + 1
            r0 = r9
            r1 = 4
            if (r0 < r1) goto L63
            r0 = r10
            r1 = 188(0xbc, float:2.63E-43)
            if (r0 <= r1) goto L63
            r0 = 1
            return r0
        L63:
            r0 = r6
            r1 = r5
            com.google.android.exoplayer2.util.v r1 = r1.f15200e
            byte[] r1 = r1.f17941a
            r2 = 0
            r3 = 4
            r0.mo21000j(r1, r2, r3)
            r0 = r5
            com.google.android.exoplayer2.util.u r0 = r0.f15201f
            r1 = 14
            r0.m18696o(r1)
            r0 = r5
            com.google.android.exoplayer2.util.u r0 = r0.f15201f
            r1 = 13
            int r0 = r0.m18703h(r1)
            r11 = r0
            r0 = r11
            r1 = 6
            if (r0 > r1) goto L8f
            r0 = 0
            return r0
        L8f:
            r0 = r6
            r1 = r11
            r2 = 6
            int r1 = r1 - r2
            r0.mo21006d(r1)
            r0 = r10
            r1 = r11
            int r0 = r0 + r1
            r10 = r0
            goto Le
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.exoplayer2.p243c1.p247d0.C4940j.mo19972c(com.google.android.exoplayer2.c1.i):boolean");
    }

    @Override // com.google.android.exoplayer2.p243c1.AbstractC4978h
    /* renamed from: f */
    public int mo19970f(AbstractC4979i abstractC4979i, C4991s c4991s) {
        long length = abstractC4979i.getLength();
        boolean z = ((this.f15197b & 1) == 0 || length == -1) ? false : true;
        if (z) {
            m21149a(abstractC4979i);
        }
        int read = abstractC4979i.read(this.f15199d.f17941a, 0, 2048);
        boolean z2 = read == -1;
        m21145j(length, z, z2);
        if (z2) {
            return -1;
        }
        this.f15199d.m18680M(0);
        this.f15199d.m18681L(read);
        if (!this.f15207l) {
            this.f15198c.mo21069f(this.f15203h, 4);
            this.f15207l = true;
        }
        this.f15198c.mo21073b(this.f15199d);
        return 0;
    }

    @Override // com.google.android.exoplayer2.p243c1.AbstractC4978h
    /* renamed from: g */
    public void mo19969g(AbstractC4980j abstractC4980j) {
        this.f15202g = abstractC4980j;
        this.f15198c.mo21070e(abstractC4980j, new AbstractC4933h0.C4937d(0, 1));
        abstractC4980j.mo19752o();
    }

    @Override // com.google.android.exoplayer2.p243c1.AbstractC4978h
    /* renamed from: h */
    public void mo19968h(long j, long j2) {
        this.f15207l = false;
        this.f15198c.mo21072c();
        this.f15203h = j2;
    }
}

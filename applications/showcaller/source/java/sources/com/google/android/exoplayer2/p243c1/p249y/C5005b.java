package com.google.android.exoplayer2.p243c1.p249y;

import com.google.android.exoplayer2.Format;
import com.google.android.exoplayer2.ParserException;
import com.google.android.exoplayer2.p243c1.AbstractC4978h;
import com.google.android.exoplayer2.p243c1.AbstractC4979i;
import com.google.android.exoplayer2.p243c1.AbstractC4980j;
import com.google.android.exoplayer2.p243c1.AbstractC4982l;
import com.google.android.exoplayer2.p243c1.AbstractC4992t;
import com.google.android.exoplayer2.p243c1.AbstractC4996v;
import com.google.android.exoplayer2.p243c1.C4914d;
import com.google.android.exoplayer2.p243c1.C4991s;
import com.google.android.exoplayer2.util.C5515h0;
import java.io.EOFException;
import java.util.Arrays;
/* renamed from: com.google.android.exoplayer2.c1.y.b */
/* loaded from: classes-dex2jar.jar:com/google/android/exoplayer2/c1/y/b.class */
public final class C5005b implements AbstractC4978h {

    /* renamed from: c */
    private static final int[] f15558c;

    /* renamed from: f */
    private static final int f15561f;

    /* renamed from: g */
    private final byte[] f15562g;

    /* renamed from: h */
    private final int f15563h;

    /* renamed from: i */
    private boolean f15564i;

    /* renamed from: j */
    private long f15565j;

    /* renamed from: k */
    private int f15566k;

    /* renamed from: l */
    private int f15567l;

    /* renamed from: m */
    private boolean f15568m;

    /* renamed from: n */
    private long f15569n;

    /* renamed from: o */
    private int f15570o;

    /* renamed from: p */
    private int f15571p;

    /* renamed from: q */
    private long f15572q;

    /* renamed from: r */
    private AbstractC4980j f15573r;

    /* renamed from: s */
    private AbstractC4996v f15574s;

    /* renamed from: t */
    private AbstractC4992t f15575t;

    /* renamed from: u */
    private boolean f15576u;

    /* renamed from: a */
    public static final AbstractC4982l f15556a = C5004a.f15555a;

    /* renamed from: b */
    private static final int[] f15557b = {13, 14, 16, 18, 20, 21, 27, 32, 6, 7, 6, 6, 1, 1, 1, 1};

    /* renamed from: d */
    private static final byte[] f15559d = C5515h0.m18854R("#!AMR\n");

    /* renamed from: e */
    private static final byte[] f15560e = C5515h0.m18854R("#!AMR-WB\n");

    static {
        int[] iArr = {18, 24, 33, 37, 41, 47, 51, 59, 61, 6, 1, 1, 1, 1, 1, 1};
        f15558c = iArr;
        f15561f = iArr[8];
    }

    public C5005b() {
        this(0);
    }

    public C5005b(int i) {
        this.f15563h = i;
        this.f15562g = new byte[1];
        this.f15570o = -1;
    }

    /* renamed from: a */
    private static int m20947a(int i, long j) {
        return (int) (((i * 8) * 1000000) / j);
    }

    /* renamed from: d */
    private AbstractC4992t m20946d(long j) {
        return new C4914d(j, this.f15569n, m20947a(this.f15570o, 20000L), this.f15570o);
    }

    /* renamed from: e */
    private int m20945e(int i) {
        if (m20943j(i)) {
            return this.f15564i ? f15558c[i] : f15557b[i];
        }
        StringBuilder sb = new StringBuilder();
        sb.append("Illegal AMR ");
        sb.append(this.f15564i ? "WB" : "NB");
        sb.append(" frame type ");
        sb.append(i);
        throw new ParserException(sb.toString());
    }

    /* renamed from: i */
    private boolean m20944i(int i) {
        return !this.f15564i && (i < 12 || i > 14);
    }

    /* renamed from: j */
    private boolean m20943j(int i) {
        return i >= 0 && i <= 15 && (m20942k(i) || m20944i(i));
    }

    /* renamed from: k */
    private boolean m20942k(int i) {
        return this.f15564i && (i < 10 || i > 13);
    }

    /* renamed from: l */
    public static /* synthetic */ AbstractC4978h[] m20941l() {
        return new AbstractC4978h[]{new C5005b()};
    }

    /* renamed from: m */
    private void m20940m() {
        if (!this.f15576u) {
            this.f15576u = true;
            boolean z = this.f15564i;
            this.f15574s.mo19983d(Format.m21741n(null, z ? "audio/amr-wb" : "audio/3gpp", null, -1, f15561f, 1, z ? 16000 : 8000, -1, null, null, 0, null));
        }
    }

    /* renamed from: n */
    private void m20939n(long j, int i) {
        int i2;
        if (this.f15568m) {
            return;
        }
        if ((this.f15563h & 1) == 0 || j == -1 || !((i2 = this.f15570o) == -1 || i2 == this.f15566k)) {
            AbstractC4992t.C4994b c4994b = new AbstractC4992t.C4994b(-9223372036854775807L);
            this.f15575t = c4994b;
            this.f15573r.mo19764c(c4994b);
            this.f15568m = true;
        } else if (this.f15571p < 20 && i != -1) {
        } else {
            AbstractC4992t m20946d = m20946d(j);
            this.f15575t = m20946d;
            this.f15573r.mo19764c(m20946d);
            this.f15568m = true;
        }
    }

    /* renamed from: o */
    private boolean m20938o(AbstractC4979i abstractC4979i, byte[] bArr) {
        abstractC4979i.mo21003g();
        byte[] bArr2 = new byte[bArr.length];
        abstractC4979i.mo21000j(bArr2, 0, bArr.length);
        return Arrays.equals(bArr2, bArr);
    }

    /* renamed from: p */
    private int m20937p(AbstractC4979i abstractC4979i) {
        abstractC4979i.mo21003g();
        abstractC4979i.mo21000j(this.f15562g, 0, 1);
        byte b = this.f15562g[0];
        if ((b & 131) <= 0) {
            return m20945e((b >> 3) & 15);
        }
        throw new ParserException("Invalid padding bits for frame header " + ((int) b));
    }

    /* renamed from: q */
    private boolean m20936q(AbstractC4979i abstractC4979i) {
        byte[] bArr = f15559d;
        if (m20938o(abstractC4979i, bArr)) {
            this.f15564i = false;
            abstractC4979i.mo21002h(bArr.length);
            return true;
        }
        byte[] bArr2 = f15560e;
        if (!m20938o(abstractC4979i, bArr2)) {
            return false;
        }
        this.f15564i = true;
        abstractC4979i.mo21002h(bArr2.length);
        return true;
    }

    /* renamed from: r */
    private int m20935r(AbstractC4979i abstractC4979i) {
        if (this.f15567l == 0) {
            try {
                int m20937p = m20937p(abstractC4979i);
                this.f15566k = m20937p;
                this.f15567l = m20937p;
                if (this.f15570o == -1) {
                    this.f15569n = abstractC4979i.mo20999k();
                    this.f15570o = this.f15566k;
                }
                if (this.f15570o == this.f15566k) {
                    this.f15571p++;
                }
            } catch (EOFException e) {
                return -1;
            }
        }
        int mo19986a = this.f15574s.mo19986a(abstractC4979i, this.f15567l, true);
        if (mo19986a == -1) {
            return -1;
        }
        int i = this.f15567l - mo19986a;
        this.f15567l = i;
        if (i > 0) {
            return 0;
        }
        this.f15574s.mo19984c(this.f15572q + this.f15565j, 1, this.f15566k, 0, null);
        this.f15565j += 20000;
        return 0;
    }

    @Override // com.google.android.exoplayer2.p243c1.AbstractC4978h
    /* renamed from: b */
    public void mo19973b() {
    }

    @Override // com.google.android.exoplayer2.p243c1.AbstractC4978h
    /* renamed from: c */
    public boolean mo19972c(AbstractC4979i abstractC4979i) {
        return m20936q(abstractC4979i);
    }

    @Override // com.google.android.exoplayer2.p243c1.AbstractC4978h
    /* renamed from: f */
    public int mo19970f(AbstractC4979i abstractC4979i, C4991s c4991s) {
        if (abstractC4979i.mo20999k() != 0 || m20936q(abstractC4979i)) {
            m20940m();
            int m20935r = m20935r(abstractC4979i);
            m20939n(abstractC4979i.getLength(), m20935r);
            return m20935r;
        }
        throw new ParserException("Could not find AMR header.");
    }

    @Override // com.google.android.exoplayer2.p243c1.AbstractC4978h
    /* renamed from: g */
    public void mo19969g(AbstractC4980j abstractC4980j) {
        this.f15573r = abstractC4980j;
        this.f15574s = abstractC4980j.mo19748t(0, 1);
        abstractC4980j.mo19752o();
    }

    @Override // com.google.android.exoplayer2.p243c1.AbstractC4978h
    /* renamed from: h */
    public void mo19968h(long j, long j2) {
        this.f15565j = 0L;
        this.f15566k = 0;
        this.f15567l = 0;
        if (j != 0) {
            AbstractC4992t abstractC4992t = this.f15575t;
            if (abstractC4992t instanceof C4914d) {
                this.f15572q = ((C4914d) abstractC4992t).m21202c(j);
                return;
            }
        }
        this.f15572q = 0L;
    }
}

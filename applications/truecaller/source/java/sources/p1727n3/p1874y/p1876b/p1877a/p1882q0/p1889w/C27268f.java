package p1727n3.p1874y.p1876b.p1877a.p1882q0.p1889w;

import androidx.media2.exoplayer.external.Format;
import java.util.Arrays;
import p1727n3.p1874y.p1876b.p1877a.p1882q0.AbstractC27180h;
import p1727n3.p1874y.p1876b.p1877a.p1882q0.AbstractC27190p;
import p1727n3.p1874y.p1876b.p1877a.p1882q0.C27178f;
import p1727n3.p1874y.p1876b.p1877a.p1882q0.p1889w.AbstractC27260c0;
import p1727n3.p1874y.p1876b.p1877a.p1904x0.C27433l;
import p1727n3.p1874y.p1876b.p1877a.p1904x0.C27434m;
/* renamed from: n3.y.b.a.q0.w.f */
/* loaded from: classes-dex2jar.jar:n3/y/b/a/q0/w/f.class */
public final class C27268f implements AbstractC27272j {

    /* renamed from: v */
    public static final byte[] f76555v = {73, 68, 51};

    /* renamed from: a */
    public final boolean f76556a;

    /* renamed from: d */
    public final String f76559d;

    /* renamed from: e */
    public String f76560e;

    /* renamed from: f */
    public AbstractC27190p f76561f;

    /* renamed from: g */
    public AbstractC27190p f76562g;

    /* renamed from: h */
    public int f76563h;

    /* renamed from: i */
    public int f76564i;

    /* renamed from: j */
    public int f76565j;

    /* renamed from: k */
    public boolean f76566k;

    /* renamed from: l */
    public boolean f76567l;

    /* renamed from: o */
    public int f76570o;

    /* renamed from: p */
    public boolean f76571p;

    /* renamed from: r */
    public int f76573r;

    /* renamed from: s */
    public long f76574s;

    /* renamed from: t */
    public AbstractC27190p f76575t;

    /* renamed from: u */
    public long f76576u;

    /* renamed from: b */
    public final C27433l f76557b = new C27433l(new byte[7]);

    /* renamed from: c */
    public final C27434m f76558c = new C27434m(Arrays.copyOf(f76555v, 10));

    /* renamed from: m */
    public int f76568m = -1;

    /* renamed from: n */
    public int f76569n = -1;

    /* renamed from: q */
    public long f76572q = -9223372036854775807L;

    public C27268f(boolean z, String str) {
        m641h();
        this.f76556a = z;
        this.f76559d = str;
    }

    /* renamed from: g */
    public static boolean m642g(int i) {
        return (i & 65526) == 65520;
    }

    @Override // p1727n3.p1874y.p1876b.p1877a.p1882q0.p1889w.AbstractC27272j
    /* renamed from: a */
    public void mo629a() {
        this.f76567l = false;
        m641h();
    }

    @Override // p1727n3.p1874y.p1876b.p1877a.p1882q0.p1889w.AbstractC27272j
    /* renamed from: b */
    public void mo628b() {
    }

    @Override // p1727n3.p1874y.p1876b.p1877a.p1882q0.p1889w.AbstractC27272j
    /* renamed from: c */
    public void mo627c(long j, int i) {
        this.f76574s = j;
    }

    /* JADX WARN: Code restructure failed: missing block: B:83:0x03d5, code lost:
        if (((r13.f77200a[r0] & 8) >> 3) == r0) goto L84;
     */
    /* JADX WARN: Removed duplicated region for block: B:136:0x03e3 A[EDGE_INSN: B:136:0x03e3->B:88:0x03e3 ?: BREAK  , SYNTHETIC] */
    @Override // p1727n3.p1874y.p1876b.p1877a.p1882q0.p1889w.AbstractC27272j
    /* renamed from: d */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void mo626d(p1727n3.p1874y.p1876b.p1877a.p1904x0.C27434m r13) throws p1727n3.p1874y.p1876b.p1877a.C27074c0 {
        /*
            Method dump skipped, instructions count: 1209
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: p1727n3.p1874y.p1876b.p1877a.p1882q0.p1889w.C27268f.mo626d(n3.y.b.a.x0.m):void");
    }

    @Override // p1727n3.p1874y.p1876b.p1877a.p1882q0.p1889w.AbstractC27272j
    /* renamed from: e */
    public void mo625e(AbstractC27180h abstractC27180h, AbstractC27260c0.C27264d c27264d) {
        c27264d.m647a();
        this.f76560e = c27264d.m646b();
        this.f76561f = abstractC27180h.m750i(c27264d.m645c(), 1);
        if (!this.f76556a) {
            this.f76562g = new C27178f();
            return;
        }
        c27264d.m647a();
        AbstractC27190p m750i = abstractC27180h.m750i(c27264d.m645c(), 4);
        this.f76562g = m750i;
        m750i.mo740c(Format.m42839n(c27264d.m646b(), "application/id3", null, -1, null));
    }

    /* renamed from: f */
    public final boolean m643f(C27434m c27434m, byte[] bArr, int i) {
        int min = Math.min(c27434m.m340a(), i - this.f76564i);
        System.arraycopy(c27434m.f77200a, c27434m.f77201b, bArr, this.f76564i, min);
        c27434m.f77201b += min;
        int i2 = this.f76564i + min;
        this.f76564i = i2;
        return i2 == i;
    }

    /* renamed from: h */
    public final void m641h() {
        this.f76563h = 0;
        this.f76564i = 0;
        this.f76565j = 256;
    }

    /* renamed from: i */
    public final boolean m640i(C27434m c27434m, byte[] bArr, int i) {
        if (c27434m.m340a() < i) {
            return false;
        }
        System.arraycopy(c27434m.f77200a, c27434m.f77201b, bArr, 0, i);
        c27434m.f77201b += i;
        return true;
    }
}

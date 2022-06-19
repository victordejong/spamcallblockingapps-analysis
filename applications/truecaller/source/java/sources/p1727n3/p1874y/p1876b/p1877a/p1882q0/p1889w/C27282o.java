package p1727n3.p1874y.p1876b.p1877a.p1882q0.p1889w;

import android.util.Pair;
import androidx.media2.exoplayer.external.Format;
import p1727n3.p1874y.p1876b.p1877a.C27074c0;
import p1727n3.p1874y.p1876b.p1877a.p1882q0.AbstractC27180h;
import p1727n3.p1874y.p1876b.p1877a.p1882q0.AbstractC27190p;
import p1727n3.p1874y.p1876b.p1877a.p1882q0.p1889w.AbstractC27260c0;
import p1727n3.p1874y.p1876b.p1877a.p1904x0.C27416b;
import p1727n3.p1874y.p1876b.p1877a.p1904x0.C27433l;
import p1727n3.p1874y.p1876b.p1877a.p1904x0.C27434m;
/* renamed from: n3.y.b.a.q0.w.o */
/* loaded from: classes-dex2jar.jar:n3/y/b/a/q0/w/o.class */
public final class C27282o implements AbstractC27272j {

    /* renamed from: a */
    public final String f76700a;

    /* renamed from: b */
    public final C27434m f76701b;

    /* renamed from: c */
    public final C27433l f76702c;

    /* renamed from: d */
    public AbstractC27190p f76703d;

    /* renamed from: e */
    public Format f76704e;

    /* renamed from: f */
    public String f76705f;

    /* renamed from: g */
    public int f76706g;

    /* renamed from: h */
    public int f76707h;

    /* renamed from: i */
    public int f76708i;

    /* renamed from: j */
    public int f76709j;

    /* renamed from: k */
    public long f76710k;

    /* renamed from: l */
    public boolean f76711l;

    /* renamed from: m */
    public int f76712m;

    /* renamed from: n */
    public int f76713n;

    /* renamed from: o */
    public int f76714o;

    /* renamed from: p */
    public boolean f76715p;

    /* renamed from: q */
    public long f76716q;

    /* renamed from: r */
    public int f76717r;

    /* renamed from: s */
    public long f76718s;

    /* renamed from: t */
    public int f76719t;

    public C27282o(String str) {
        this.f76700a = str;
        C27434m c27434m = new C27434m(1024);
        this.f76701b = c27434m;
        this.f76702c = new C27433l(c27434m.f77200a);
    }

    /* renamed from: f */
    public static long m631f(C27433l c27433l) {
        return c27433l.m347e((c27433l.m347e(2) + 1) * 8);
    }

    @Override // p1727n3.p1874y.p1876b.p1877a.p1882q0.p1889w.AbstractC27272j
    /* renamed from: a */
    public void mo629a() {
        this.f76706g = 0;
        this.f76711l = false;
    }

    @Override // p1727n3.p1874y.p1876b.p1877a.p1882q0.p1889w.AbstractC27272j
    /* renamed from: b */
    public void mo628b() {
    }

    @Override // p1727n3.p1874y.p1876b.p1877a.p1882q0.p1889w.AbstractC27272j
    /* renamed from: c */
    public void mo627c(long j, int i) {
        this.f76710k = j;
    }

    /* JADX WARN: Code restructure failed: missing block: B:74:0x0213, code lost:
        if (r12.f76711l == false) goto L91;
     */
    @Override // p1727n3.p1874y.p1876b.p1877a.p1882q0.p1889w.AbstractC27272j
    /* renamed from: d */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void mo626d(p1727n3.p1874y.p1876b.p1877a.p1904x0.C27434m r13) throws p1727n3.p1874y.p1876b.p1877a.C27074c0 {
        /*
            Method dump skipped, instructions count: 917
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: p1727n3.p1874y.p1876b.p1877a.p1882q0.p1889w.C27282o.mo626d(n3.y.b.a.x0.m):void");
    }

    @Override // p1727n3.p1874y.p1876b.p1877a.p1882q0.p1889w.AbstractC27272j
    /* renamed from: e */
    public void mo625e(AbstractC27180h abstractC27180h, AbstractC27260c0.C27264d c27264d) {
        c27264d.m647a();
        this.f76703d = abstractC27180h.m750i(c27264d.m645c(), 1);
        this.f76705f = c27264d.m646b();
    }

    /* renamed from: g */
    public final int m630g(C27433l c27433l) throws C27074c0 {
        int m350b = c27433l.m350b();
        Pair<Integer, Integer> m374b = C27416b.m374b(c27433l, true);
        this.f76717r = ((Integer) m374b.first).intValue();
        this.f76719t = ((Integer) m374b.second).intValue();
        return m350b - c27433l.m350b();
    }
}

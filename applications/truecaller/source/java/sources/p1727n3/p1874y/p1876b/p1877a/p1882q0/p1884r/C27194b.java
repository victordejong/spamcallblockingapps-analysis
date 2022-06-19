package p1727n3.p1874y.p1876b.p1877a.p1882q0.p1884r;

import java.io.IOException;
import p1727n3.p1874y.p1876b.p1877a.p1882q0.AbstractC27179g;
import p1727n3.p1874y.p1876b.p1877a.p1882q0.AbstractC27180h;
import p1727n3.p1874y.p1876b.p1877a.p1882q0.AbstractC27186n;
import p1727n3.p1874y.p1876b.p1877a.p1882q0.C27176d;
import p1727n3.p1874y.p1876b.p1877a.p1904x0.C27434m;
/* renamed from: n3.y.b.a.q0.r.b */
/* loaded from: classes-dex2jar.jar:n3/y/b/a/q0/r/b.class */
public final class C27194b implements AbstractC27179g {

    /* renamed from: f */
    public AbstractC27180h f76095f;

    /* renamed from: h */
    public boolean f76097h;

    /* renamed from: i */
    public long f76098i;

    /* renamed from: j */
    public int f76099j;

    /* renamed from: k */
    public int f76100k;

    /* renamed from: l */
    public int f76101l;

    /* renamed from: m */
    public long f76102m;

    /* renamed from: n */
    public boolean f76103n;

    /* renamed from: o */
    public C27193a f76104o;

    /* renamed from: p */
    public C27198e f76105p;

    /* renamed from: a */
    public final C27434m f76090a = new C27434m(4);

    /* renamed from: b */
    public final C27434m f76091b = new C27434m(9);

    /* renamed from: c */
    public final C27434m f76092c = new C27434m(11);

    /* renamed from: d */
    public final C27434m f76093d = new C27434m();

    /* renamed from: e */
    public final C27195c f76094e = new C27195c();

    /* renamed from: g */
    public int f76096g = 1;

    @Override // p1727n3.p1874y.p1876b.p1877a.p1882q0.AbstractC27179g
    /* renamed from: a */
    public void mo606a(long j, long j2) {
        this.f76096g = 1;
        this.f76097h = false;
        this.f76099j = 0;
    }

    /* renamed from: b */
    public final void m736b() {
        if (!this.f76103n) {
            this.f76095f.m749q(new AbstractC27186n.C27188b(-9223372036854775807L, 0L));
            this.f76103n = true;
        }
    }

    /* renamed from: c */
    public final C27434m m735c(C27176d c27176d) throws IOException, InterruptedException {
        int i = this.f76101l;
        C27434m c27434m = this.f76093d;
        byte[] bArr = c27434m.f77200a;
        if (i > bArr.length) {
            c27434m.f77200a = new byte[Math.max(bArr.length * 2, i)];
            c27434m.f77202c = 0;
            c27434m.f77201b = 0;
        } else {
            c27434m.m315z(0);
        }
        this.f76093d.m316y(this.f76101l);
        c27176d.m754g(this.f76093d.f77200a, 0, this.f76101l, false);
        return this.f76093d;
    }

    @Override // p1727n3.p1874y.p1876b.p1877a.p1882q0.AbstractC27179g
    /* renamed from: d */
    public void mo605d(AbstractC27180h abstractC27180h) {
        this.f76095f = abstractC27180h;
    }

    @Override // p1727n3.p1874y.p1876b.p1877a.p1882q0.AbstractC27179g
    /* renamed from: h */
    public boolean mo604h(C27176d c27176d) throws IOException, InterruptedException {
        boolean z = false;
        c27176d.m757d(this.f76090a.f77200a, 0, 3, false);
        this.f76090a.m315z(0);
        if (this.f76090a.m324q() != 4607062) {
            return false;
        }
        c27176d.m757d(this.f76090a.f77200a, 0, 2, false);
        this.f76090a.m315z(0);
        if ((this.f76090a.m321t() & 250) != 0) {
            return false;
        }
        c27176d.m757d(this.f76090a.f77200a, 0, 4, false);
        this.f76090a.m315z(0);
        int m337d = this.f76090a.m337d();
        c27176d.f76033f = 0;
        c27176d.m760a(m337d, false);
        c27176d.m757d(this.f76090a.f77200a, 0, 4, false);
        this.f76090a.m315z(0);
        if (this.f76090a.m337d() == 0) {
            z = true;
        }
        return z;
    }

    /* JADX WARN: Removed duplicated region for block: B:42:0x0130  */
    /* JADX WARN: Removed duplicated region for block: B:81:0x014c A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:92:0x0000 A[SYNTHETIC] */
    /* JADX WARN: Type inference failed for: r0v33, types: [long] */
    /* JADX WARN: Type inference failed for: r0v72, types: [long] */
    /* JADX WARN: Type inference failed for: r0v76, types: [long] */
    @Override // p1727n3.p1874y.p1876b.p1877a.p1882q0.AbstractC27179g
    /* renamed from: i */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public int mo603i(p1727n3.p1874y.p1876b.p1877a.p1882q0.C27176d r9, p1727n3.p1874y.p1876b.p1877a.p1882q0.C27185m r10) throws java.io.IOException, java.lang.InterruptedException {
        /*
            Method dump skipped, instructions count: 656
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: p1727n3.p1874y.p1876b.p1877a.p1882q0.p1884r.C27194b.mo603i(n3.y.b.a.q0.d, n3.y.b.a.q0.m):int");
    }

    @Override // p1727n3.p1874y.p1876b.p1877a.p1882q0.AbstractC27179g
    public void release() {
    }
}

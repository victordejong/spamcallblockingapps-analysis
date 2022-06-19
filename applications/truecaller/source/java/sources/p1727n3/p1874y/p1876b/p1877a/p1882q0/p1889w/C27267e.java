package p1727n3.p1874y.p1876b.p1877a.p1882q0.p1889w;

import java.io.IOException;
import java.util.Objects;
import p1727n3.p1874y.p1876b.p1877a.C27074c0;
import p1727n3.p1874y.p1876b.p1877a.p1882q0.AbstractC27179g;
import p1727n3.p1874y.p1876b.p1877a.p1882q0.AbstractC27180h;
import p1727n3.p1874y.p1876b.p1877a.p1882q0.AbstractC27186n;
import p1727n3.p1874y.p1876b.p1877a.p1882q0.C27175c;
import p1727n3.p1874y.p1876b.p1877a.p1882q0.C27176d;
import p1727n3.p1874y.p1876b.p1877a.p1882q0.C27185m;
import p1727n3.p1874y.p1876b.p1877a.p1882q0.p1889w.AbstractC27260c0;
import p1727n3.p1874y.p1876b.p1877a.p1904x0.C27433l;
import p1727n3.p1874y.p1876b.p1877a.p1904x0.C27434m;
/* renamed from: n3.y.b.a.q0.w.e */
/* loaded from: classes-dex2jar.jar:n3/y/b/a/q0/w/e.class */
public final class C27267e implements AbstractC27179g {

    /* renamed from: a */
    public final int f76543a;

    /* renamed from: d */
    public final C27434m f76546d;

    /* renamed from: e */
    public final C27433l f76547e;

    /* renamed from: f */
    public AbstractC27180h f76548f;

    /* renamed from: g */
    public long f76549g;

    /* renamed from: j */
    public boolean f76552j;

    /* renamed from: k */
    public boolean f76553k;

    /* renamed from: l */
    public boolean f76554l;

    /* renamed from: b */
    public final C27268f f76544b = new C27268f(true, null);

    /* renamed from: c */
    public final C27434m f76545c = new C27434m(2048);

    /* renamed from: i */
    public int f76551i = -1;

    /* renamed from: h */
    public long f76550h = -1;

    public C27267e(int i) {
        this.f76543a = i;
        C27434m c27434m = new C27434m(10);
        this.f76546d = c27434m;
        this.f76547e = new C27433l(c27434m.f77200a);
    }

    @Override // p1727n3.p1874y.p1876b.p1877a.p1882q0.AbstractC27179g
    /* renamed from: a */
    public void mo606a(long j, long j2) {
        this.f76553k = false;
        this.f76544b.mo629a();
        this.f76549g = j2;
    }

    /* renamed from: b */
    public final int m644b(C27176d c27176d) throws IOException, InterruptedException {
        int i = 0;
        while (true) {
            c27176d.m757d(this.f76546d.f77200a, 0, 10, false);
            this.f76546d.m315z(0);
            if (this.f76546d.m324q() != 4801587) {
                break;
            }
            this.f76546d.m341A(3);
            int m327n = this.f76546d.m327n();
            i += m327n + 10;
            c27176d.m760a(m327n, false);
        }
        c27176d.f76033f = 0;
        c27176d.m760a(i, false);
        if (this.f76550h == -1) {
            this.f76550h = i;
        }
        return i;
    }

    @Override // p1727n3.p1874y.p1876b.p1877a.p1882q0.AbstractC27179g
    /* renamed from: d */
    public void mo605d(AbstractC27180h abstractC27180h) {
        this.f76548f = abstractC27180h;
        this.f76544b.mo625e(abstractC27180h, new AbstractC27260c0.C27264d(Integer.MIN_VALUE, 0, 1));
        abstractC27180h.m751g();
    }

    /* JADX WARN: Code restructure failed: missing block: B:6:0x0033, code lost:
        r7.f76033f = 0;
        r9 = r9 + 1;
     */
    /* JADX WARN: Code restructure failed: missing block: B:7:0x0041, code lost:
        if ((r9 - r0) < 8192) goto L9;
     */
    /* JADX WARN: Code restructure failed: missing block: B:8:0x0044, code lost:
        return false;
     */
    @Override // p1727n3.p1874y.p1876b.p1877a.p1882q0.AbstractC27179g
    /* renamed from: h */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public boolean mo604h(p1727n3.p1874y.p1876b.p1877a.p1882q0.C27176d r7) throws java.io.IOException, java.lang.InterruptedException {
        /*
            r6 = this;
            r0 = r6
            r1 = r7
            int r0 = r0.m644b(r1)
            r8 = r0
            r0 = r8
            r9 = r0
        L8:
            r0 = 0
            r10 = r0
            r0 = r10
            r11 = r0
        Lf:
            r0 = r7
            r1 = r6
            n3.y.b.a.x0.m r1 = r1.f76546d
            byte[] r1 = r1.f77200a
            r2 = 0
            r3 = 2
            r4 = 0
            boolean r0 = r0.m757d(r1, r2, r3, r4)
            r0 = r6
            n3.y.b.a.x0.m r0 = r0.f76546d
            r1 = 0
            r0.m315z(r1)
            r0 = r6
            n3.y.b.a.x0.m r0 = r0.f76546d
            int r0 = r0.m321t()
            boolean r0 = p1727n3.p1874y.p1876b.p1877a.p1882q0.p1889w.C27268f.m642g(r0)
            if (r0 != 0) goto L50
            r0 = r7
            r1 = 0
            r0.f76033f = r1
            int r9 = r9 + 1
            r0 = r9
            r1 = r8
            int r0 = r0 - r1
            r1 = 8192(0x2000, float:1.14794E-41)
            if (r0 < r1) goto L46
            r0 = 0
            return r0
        L46:
            r0 = r7
            r1 = r9
            r2 = 0
            boolean r0 = r0.m760a(r1, r2)
            goto L8
        L50:
            int r10 = r10 + 1
            r0 = r10
            r1 = 4
            if (r0 < r1) goto L63
            r0 = r11
            r1 = 188(0xbc, float:2.63E-43)
            if (r0 <= r1) goto L63
            r0 = 1
            return r0
        L63:
            r0 = r7
            r1 = r6
            n3.y.b.a.x0.m r1 = r1.f76546d
            byte[] r1 = r1.f77200a
            r2 = 0
            r3 = 4
            r4 = 0
            boolean r0 = r0.m757d(r1, r2, r3, r4)
            r0 = r6
            n3.y.b.a.x0.l r0 = r0.f76547e
            r1 = 14
            r0.m344h(r1)
            r0 = r6
            n3.y.b.a.x0.l r0 = r0.f76547e
            r1 = 13
            int r0 = r0.m347e(r1)
            r12 = r0
            r0 = r12
            r1 = 6
            if (r0 > r1) goto L8f
            r0 = 0
            return r0
        L8f:
            r0 = r7
            r1 = r12
            r2 = 6
            int r1 = r1 - r2
            r2 = 0
            boolean r0 = r0.m760a(r1, r2)
            r0 = r11
            r1 = r12
            int r0 = r0 + r1
            r11 = r0
            goto Lf
        */
        throw new UnsupportedOperationException("Method not decompiled: p1727n3.p1874y.p1876b.p1877a.p1882q0.p1889w.C27267e.mo604h(n3.y.b.a.q0.d):boolean");
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v11 */
    /* JADX WARN: Type inference failed for: r0v25 */
    /* JADX WARN: Type inference failed for: r0v26 */
    /* JADX WARN: Type inference failed for: r0v31 */
    /* JADX WARN: Type inference failed for: r0v5 */
    /* JADX WARN: Type inference failed for: r0v52 */
    /* JADX WARN: Type inference failed for: r0v69 */
    /* JADX WARN: Type inference failed for: r0v84 */
    /* JADX WARN: Type inference failed for: r0v88 */
    /* JADX WARN: Type inference failed for: r0v97 */
    /* JADX WARN: Type inference failed for: r0v98, types: [long] */
    /* JADX WARN: Type inference failed for: r15v0 */
    /* JADX WARN: Type inference failed for: r15v2 */
    /* JADX WARN: Type inference failed for: r15v3 */
    /* JADX WARN: Type inference failed for: r16v1 */
    /* JADX WARN: Type inference failed for: r16v2 */
    /* JADX WARN: Type inference failed for: r16v3 */
    /* JADX WARN: Type inference failed for: r18v0 */
    /* JADX WARN: Type inference failed for: r18v1 */
    /* JADX WARN: Type inference failed for: r18v2 */
    /* JADX WARN: Type inference failed for: r19v0 */
    /* JADX WARN: Type inference failed for: r19v2 */
    /* JADX WARN: Type inference failed for: r19v3 */
    /* JADX WARN: Type inference failed for: r1v29 */
    /* JADX WARN: Type inference failed for: r20v0 */
    /* JADX WARN: Type inference failed for: r20v1 */
    /* JADX WARN: Type inference failed for: r20v2 */
    /* JADX WARN: Type inference failed for: r20v3 */
    /* JADX WARN: Type inference failed for: r20v4 */
    @Override // p1727n3.p1874y.p1876b.p1877a.p1882q0.AbstractC27179g
    /* renamed from: i */
    public int mo603i(C27176d c27176d, C27185m c27185m) throws IOException, InterruptedException {
        int i;
        int i2;
        ?? r20;
        long j = c27176d.f76030c;
        ?? r15 = ((this.f76543a & 1) == 0 || j == -1) ? false : true;
        if (r15 != false && !this.f76552j) {
            this.f76551i = -1;
            c27176d.f76033f = 0;
            if (c27176d.f76031d == 0) {
                m644b(c27176d);
            }
            ?? r16 = false;
            int i3 = 0;
            while (true) {
                i2 = i3;
                r20 = r16;
                if (!c27176d.m757d(this.f76546d.f77200a, 0, 2, true)) {
                    break;
                }
                this.f76546d.m315z(0);
                if (!C27268f.m642g(this.f76546d.m321t())) {
                    i2 = 0;
                    r20 = r16;
                    break;
                } else if (!c27176d.m757d(this.f76546d.f77200a, 0, 4, true)) {
                    i2 = i3;
                    r20 = r16;
                    break;
                } else {
                    this.f76547e.m344h(14);
                    int m347e = this.f76547e.m347e(13);
                    if (m347e <= 6) {
                        this.f76552j = true;
                        throw new C27074c0("Malformed ADTS stream");
                    }
                    r20 = (r16 == true ? 1L : 0L) + m347e;
                    i2 = i3 + 1;
                    if (i2 != 1000) {
                        i3 = i2;
                        r16 = r20;
                        if (!c27176d.m760a(m347e - 6, true)) {
                            break;
                        }
                    } else {
                        break;
                    }
                }
            }
            c27176d.f76033f = 0;
            if (i2 > 0) {
                this.f76551i = (int) ((r20 == true ? 1L : 0L) / i2);
            } else {
                this.f76551i = -1;
            }
            this.f76552j = true;
        }
        int m756e = c27176d.m756e(this.f76545c.f77200a, 0, 2048);
        ?? r18 = m756e == -1;
        if (!this.f76554l) {
            ?? r19 = r15 == true && this.f76551i > 0;
            if (r19 == false || this.f76544b.f76572q != -9223372036854775807L || r18 != false) {
                AbstractC27180h abstractC27180h = this.f76548f;
                Objects.requireNonNull(abstractC27180h);
                if (r19 != false) {
                    long j2 = this.f76544b.f76572q;
                    if (j2 != -9223372036854775807L) {
                        abstractC27180h.m749q(new C27175c(j, this.f76550h, (int) (((i * 8) * 1000000) / j2), this.f76551i));
                        this.f76554l = true;
                    }
                }
                abstractC27180h.m749q(new AbstractC27186n.C27188b(-9223372036854775807L, 0L));
                this.f76554l = true;
            }
        }
        if (r18 == true) {
            return -1;
        }
        this.f76545c.m315z(0);
        this.f76545c.m316y(m756e);
        if (!this.f76553k) {
            this.f76544b.f76574s = this.f76549g;
            this.f76553k = true;
        }
        this.f76544b.mo626d(this.f76545c);
        return 0;
    }

    @Override // p1727n3.p1874y.p1876b.p1877a.p1882q0.AbstractC27179g
    public void release() {
    }
}

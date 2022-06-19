package p193e.p1577m.p1578a.p1596c.p1634p1.p1635h0;

import android.net.Uri;
import com.tenor.android.core.constant.StringConstant;
import java.io.IOException;
import java.io.InterruptedIOException;
import java.nio.charset.Charset;
import java.util.Collections;
import java.util.List;
import java.util.Map;
import java.util.Objects;
import p1727n3.p1789g0.C26232y;
import p193e.p1577m.p1578a.p1596c.p1634p1.AbstractC24697f0;
import p193e.p1577m.p1578a.p1596c.p1634p1.AbstractC24736j;
import p193e.p1577m.p1578a.p1596c.p1634p1.AbstractC24739l;
import p193e.p1577m.p1578a.p1596c.p1634p1.C24694e0;
import p193e.p1577m.p1578a.p1596c.p1634p1.C24741m;
import p193e.p1577m.p1578a.p1596c.p1634p1.C24742n;
import p193e.p1577m.p1578a.p1596c.p1634p1.p1635h0.AbstractC24705c;
/* renamed from: e.m.a.c.p1.h0.f */
/* loaded from: classes2-dex2jar.jar:e/m/a/c/p1/h0/f.class */
public final class C24711f implements AbstractC24739l {

    /* renamed from: a */
    public final AbstractC24705c f69229a;

    /* renamed from: b */
    public final AbstractC24739l f69230b;

    /* renamed from: c */
    public final AbstractC24739l f69231c;

    /* renamed from: d */
    public final AbstractC24739l f69232d;

    /* renamed from: e */
    public final AbstractC24717k f69233e;

    /* renamed from: f */
    public final AbstractC24712a f69234f;

    /* renamed from: g */
    public final boolean f69235g;

    /* renamed from: h */
    public final boolean f69236h;

    /* renamed from: i */
    public final boolean f69237i;

    /* renamed from: j */
    public AbstractC24739l f69238j;

    /* renamed from: k */
    public boolean f69239k;

    /* renamed from: l */
    public Uri f69240l;

    /* renamed from: m */
    public Uri f69241m;

    /* renamed from: n */
    public int f69242n;

    /* renamed from: o */
    public byte[] f69243o;

    /* renamed from: p */
    public Map<String, String> f69244p = Collections.emptyMap();

    /* renamed from: q */
    public int f69245q;

    /* renamed from: r */
    public String f69246r;

    /* renamed from: s */
    public long f69247s;

    /* renamed from: t */
    public long f69248t;

    /* renamed from: u */
    public C24718l f69249u;

    /* renamed from: v */
    public boolean f69250v;

    /* renamed from: w */
    public boolean f69251w;

    /* renamed from: x */
    public long f69252x;

    /* renamed from: y */
    public long f69253y;

    /* renamed from: e.m.a.c.p1.h0.f$a */
    /* loaded from: classes2-dex2jar.jar:e/m/a/c/p1/h0/f$a.class */
    public interface AbstractC24712a {
        /* renamed from: a */
        void m4757a(int i);

        /* renamed from: b */
        void m4756b(long j, long j2);
    }

    public C24711f(AbstractC24705c abstractC24705c, AbstractC24739l abstractC24739l, AbstractC24739l abstractC24739l2, AbstractC24736j abstractC24736j, int i, AbstractC24712a abstractC24712a, AbstractC24717k abstractC24717k) {
        this.f69229a = abstractC24705c;
        this.f69230b = abstractC24739l2;
        if (abstractC24717k == null) {
            int i2 = C24719m.f69272a;
            abstractC24717k = C24703a.f69216a;
        }
        this.f69233e = abstractC24717k;
        this.f69235g = (i & 1) != 0;
        this.f69236h = (i & 2) != 0;
        this.f69237i = (i & 4) != 0;
        this.f69232d = abstractC24739l;
        if (abstractC24736j != null) {
            this.f69231c = new C24694e0(abstractC24739l, abstractC24736j);
        } else {
            this.f69231c = null;
        }
        this.f69234f = abstractC24712a;
    }

    @Override // p193e.p1577m.p1578a.p1596c.p1634p1.AbstractC24739l
    /* renamed from: a */
    public Map<String, List<String>> mo4667a() {
        return m4760f() ^ true ? this.f69232d.mo4667a() : Collections.emptyMap();
    }

    @Override // p193e.p1577m.p1578a.p1596c.p1634p1.AbstractC24739l
    /* renamed from: b */
    public long mo4658b(C24742n c24742n) throws IOException {
        AbstractC24712a abstractC24712a;
        try {
            Objects.requireNonNull((C24703a) this.f69233e);
            int i = C24719m.f69272a;
            String str = c24742n.f69335h;
            if (str == null) {
                str = c24742n.f69328a.toString();
            }
            this.f69246r = str;
            Uri uri = c24742n.f69328a;
            this.f69240l = uri;
            C24730s c24730s = (C24730s) this.f69229a.mo4711a(str);
            String str2 = c24730s.f69303b.containsKey("exo_redir") ? new String(c24730s.f69303b.get("exo_redir"), Charset.forName(StringConstant.UTF8)) : null;
            Uri parse = str2 == null ? null : Uri.parse(str2);
            if (parse != null) {
                uri = parse;
            }
            this.f69241m = uri;
            this.f69242n = c24742n.f69329b;
            this.f69243o = c24742n.f69330c;
            this.f69244p = c24742n.f69331d;
            this.f69245q = c24742n.f69336i;
            this.f69247s = c24742n.f69333f;
            boolean z = true;
            int i2 = (!this.f69236h || !this.f69250v) ? (!this.f69237i || c24742n.f69334g != -1) ? -1 : 1 : 0;
            if (i2 == -1) {
                z = false;
            }
            this.f69251w = z;
            if (z && (abstractC24712a = this.f69234f) != null) {
                abstractC24712a.m4757a(i2);
            }
            long j = c24742n.f69334g;
            if (j == -1 && !this.f69251w) {
                long m4722a = C24727p.m4722a(this.f69229a.mo4711a(this.f69246r));
                this.f69248t = m4722a;
                if (m4722a != -1) {
                    long j2 = m4722a - c24742n.f69333f;
                    this.f69248t = j2;
                    if (j2 <= 0) {
                        throw new C24741m(0);
                    }
                }
                m4759g(false);
                return this.f69248t;
            }
            this.f69248t = j;
            m4759g(false);
            return this.f69248t;
        } catch (Throwable th) {
            m4761e(th);
            throw th;
        }
    }

    @Override // p193e.p1577m.p1578a.p1596c.p1634p1.AbstractC24739l
    /* renamed from: c */
    public void mo4669c(AbstractC24697f0 abstractC24697f0) {
        this.f69230b.mo4669c(abstractC24697f0);
        this.f69232d.mo4669c(abstractC24697f0);
    }

    @Override // p193e.p1577m.p1578a.p1596c.p1634p1.AbstractC24739l
    public void close() throws IOException {
        this.f69240l = null;
        this.f69241m = null;
        this.f69242n = 1;
        this.f69243o = null;
        this.f69244p = Collections.emptyMap();
        this.f69245q = 0;
        this.f69247s = 0L;
        this.f69246r = null;
        AbstractC24712a abstractC24712a = this.f69234f;
        if (abstractC24712a != null && this.f69252x > 0) {
            abstractC24712a.m4756b(this.f69229a.mo4705g(), this.f69252x);
            this.f69252x = 0L;
        }
        try {
            m4762d();
        } catch (Throwable th) {
            m4761e(th);
            throw th;
        }
    }

    /* renamed from: d */
    public final void m4762d() throws IOException {
        AbstractC24739l abstractC24739l = this.f69238j;
        if (abstractC24739l == null) {
            return;
        }
        try {
            abstractC24739l.close();
            this.f69238j = null;
            this.f69239k = false;
            C24718l c24718l = this.f69249u;
            if (c24718l == null) {
                return;
            }
            this.f69229a.mo4704h(c24718l);
            this.f69249u = null;
        } catch (Throwable th) {
            this.f69238j = null;
            this.f69239k = false;
            C24718l c24718l2 = this.f69249u;
            if (c24718l2 != null) {
                this.f69229a.mo4704h(c24718l2);
                this.f69249u = null;
            }
            throw th;
        }
    }

    /* renamed from: e */
    public final void m4761e(Throwable th) {
        if (m4760f() || (th instanceof AbstractC24705c.C24706a)) {
            this.f69250v = true;
        }
    }

    /* renamed from: f */
    public final boolean m4760f() {
        return this.f69238j == this.f69230b;
    }

    /* JADX WARN: Type inference failed for: r0v117, types: [long] */
    /* JADX WARN: Type inference failed for: r0v119, types: [long] */
    /* JADX WARN: Type inference failed for: r0v130, types: [long] */
    /* JADX WARN: Type inference failed for: r0v140, types: [long] */
    /* JADX WARN: Type inference failed for: r0v86, types: [long] */
    /* JADX WARN: Type inference failed for: r0v90, types: [long] */
    /* renamed from: g */
    public final void m4759g(boolean z) throws IOException {
        C24718l c24718l;
        C24742n c24742n;
        AbstractC24739l abstractC24739l;
        char c;
        if (this.f69251w) {
            c24718l = null;
        } else if (this.f69235g) {
            try {
                c24718l = this.f69229a.mo4708d(this.f69246r, this.f69247s);
            } catch (InterruptedException e) {
                Thread.currentThread().interrupt();
                throw new InterruptedIOException();
            }
        } else {
            c24718l = this.f69229a.mo4703i(this.f69246r, this.f69247s);
        }
        if (c24718l == null) {
            abstractC24739l = this.f69232d;
            Uri uri = this.f69240l;
            int i = this.f69242n;
            byte[] bArr = this.f69243o;
            long j = this.f69247s;
            c24742n = new C24742n(uri, i, bArr, j, j, this.f69248t, this.f69246r, this.f69245q, this.f69244p);
        } else if (c24718l.f69269d) {
            Uri fromFile = Uri.fromFile(c24718l.f69270e);
            long j2 = this.f69247s - c24718l.f69267b;
            ?? r0 = c24718l.f69268c - j2;
            long j3 = this.f69248t;
            char c2 = r0;
            if (j3 != -1) {
                c2 = Math.min((long) r0, j3);
            }
            c24742n = new C24742n(fromFile, this.f69247s, j2, c2, this.f69246r, this.f69245q);
            abstractC24739l = this.f69230b;
        } else {
            ?? r02 = c24718l.f69268c;
            if (r02 == -1) {
                c = this.f69248t;
            } else {
                long j4 = this.f69248t;
                c = r02;
                if (j4 != -1) {
                    c = Math.min((long) r02, j4);
                }
            }
            Uri uri2 = this.f69240l;
            int i2 = this.f69242n;
            byte[] bArr2 = this.f69243o;
            long j5 = this.f69247s;
            c24742n = new C24742n(uri2, i2, bArr2, j5, j5, c, this.f69246r, this.f69245q, this.f69244p);
            abstractC24739l = this.f69231c;
            if (abstractC24739l == null) {
                abstractC24739l = this.f69232d;
                this.f69229a.mo4704h(c24718l);
                c24718l = null;
            }
        }
        this.f69253y = (this.f69251w || abstractC24739l != this.f69232d) ? (char) 65535 : this.f69247s + 102400;
        if (z) {
            C26232y.m2286x(this.f69238j == this.f69232d);
            if (abstractC24739l == this.f69232d) {
                return;
            }
            try {
                m4762d();
            } catch (Throwable th) {
                if (!c24718l.f69269d) {
                    this.f69229a.mo4704h(c24718l);
                }
                throw th;
            }
        }
        if (c24718l != null && (!c24718l.f69269d)) {
            this.f69249u = c24718l;
        }
        this.f69238j = abstractC24739l;
        this.f69239k = c24742n.f69334g == -1;
        long mo4658b = abstractC24739l.mo4658b(c24742n);
        C24729r c24729r = new C24729r();
        if (this.f69239k && mo4658b != -1) {
            this.f69248t = mo4658b;
            C24729r.m4721a(c24729r, this.f69247s + mo4658b);
        }
        if (!m4760f()) {
            Uri uri3 = this.f69238j.getUri();
            this.f69241m = uri3;
            Uri uri4 = this.f69240l.equals(uri3) ^ true ? this.f69241m : null;
            if (uri4 == null) {
                c24729r.f69300b.add("exo_redir");
                c24729r.f69299a.remove("exo_redir");
            } else {
                String uri5 = uri4.toString();
                Map<String, Object> map = c24729r.f69299a;
                Objects.requireNonNull(uri5);
                map.put("exo_redir", uri5);
                c24729r.f69300b.remove("exo_redir");
            }
        }
        if (this.f69238j == this.f69231c) {
            this.f69229a.mo4710b(this.f69246r, c24729r);
        }
    }

    @Override // p193e.p1577m.p1578a.p1596c.p1634p1.AbstractC24739l
    public Uri getUri() {
        return this.f69241m;
    }

    /* renamed from: h */
    public final void m4758h() throws IOException {
        this.f69248t = 0L;
        if (this.f69238j == this.f69231c) {
            C24729r c24729r = new C24729r();
            C24729r.m4721a(c24729r, this.f69247s);
            this.f69229a.mo4710b(this.f69246r, c24729r);
        }
    }

    @Override // p193e.p1577m.p1578a.p1596c.p1634p1.AbstractC24739l
    public int read(byte[] bArr, int i, int i2) throws IOException {
        if (i2 == 0) {
            return 0;
        }
        if (this.f69248t == 0) {
            return -1;
        }
        try {
            if (this.f69247s >= this.f69253y) {
                m4759g(true);
            }
            int read = this.f69238j.read(bArr, i, i2);
            if (read != -1) {
                if (m4760f()) {
                    this.f69252x += read;
                }
                long j = read;
                this.f69247s += j;
                long j2 = this.f69248t;
                if (j2 != -1) {
                    this.f69248t = j2 - j;
                }
            } else if (this.f69239k) {
                m4758h();
            } else {
                long j3 = this.f69248t;
                if (j3 > 0 || j3 == -1) {
                    m4762d();
                    m4759g(false);
                    return read(bArr, i, i2);
                }
            }
            return read;
        } catch (IOException e) {
            if (!this.f69239k || !C24719m.m4747c(e)) {
                m4761e(e);
                throw e;
            }
            m4758h();
            return -1;
        } catch (Throwable th) {
            m4761e(th);
            throw th;
        }
    }
}

package p012b.p076s.p078b.p079a.p102w0;

import android.net.Uri;
import java.io.IOException;
import p012b.p076s.p078b.p079a.AbstractC1252n0;
import p012b.p076s.p078b.p079a.p080a1.C1160a;
import p012b.p076s.p078b.p079a.p086s0.AbstractC1353j;
import p012b.p076s.p078b.p079a.p086s0.C1348e;
import p012b.p076s.p078b.p079a.p102w0.AbstractC1634r;
import p012b.p076s.p078b.p079a.p111z0.AbstractC1678b;
import p012b.p076s.p078b.p079a.p111z0.AbstractC1684g;
import p012b.p076s.p078b.p079a.p111z0.AbstractC1700u;
import p012b.p076s.p078b.p079a.p111z0.AbstractC1704x;
import p012b.p076s.p078b.p079a.p111z0.C1697r;
@Deprecated
/* renamed from: b.s.b.a.w0.m */
/* loaded from: classes-dex2jar.jar:b/s/b/a/w0/m.class */
public final class C1584m extends AbstractC1538b implements AbstractC1634r.AbstractC1636b {

    /* renamed from: f */
    public final C1554e0 f6476f;

    @Deprecated
    /* renamed from: b.s.b.a.w0.m$b */
    /* loaded from: classes-dex2jar.jar:b/s/b/a/w0/m$b.class */
    public static final class C1586b {

        /* renamed from: a */
        public final AbstractC1684g.AbstractC1685a f6477a;

        /* renamed from: b */
        public AbstractC1353j f6478b;

        /* renamed from: c */
        public String f6479c;

        /* renamed from: d */
        public Object f6480d;

        /* renamed from: e */
        public AbstractC1700u f6481e = new C1697r();

        /* renamed from: f */
        public int f6482f = 1048576;

        /* renamed from: g */
        public boolean f6483g;

        public C1586b(AbstractC1684g.AbstractC1685a aVar) {
            this.f6477a = aVar;
        }

        /* renamed from: a */
        public C1586b m32730a(AbstractC1353j jVar) {
            C1160a.m34518b(!this.f6483g);
            this.f6478b = jVar;
            return this;
        }

        /* renamed from: a */
        public C1586b m32729a(Object obj) {
            C1160a.m34518b(!this.f6483g);
            this.f6480d = obj;
            return this;
        }

        /* renamed from: a */
        public C1584m m32731a(Uri uri) {
            this.f6483g = true;
            if (this.f6478b == null) {
                this.f6478b = new C1348e();
            }
            return new C1584m(uri, this.f6477a, this.f6478b, this.f6481e, this.f6479c, this.f6482f, this.f6480d);
        }
    }

    public C1584m(Uri uri, AbstractC1684g.AbstractC1685a aVar, AbstractC1353j jVar, AbstractC1700u uVar, String str, int i, Object obj) {
        this.f6476f = new C1554e0(uri, aVar, jVar, uVar, str, i, obj);
    }

    @Override // p012b.p076s.p078b.p079a.p102w0.AbstractC1634r
    /* renamed from: a */
    public AbstractC1631p mo32294a(AbstractC1634r.C1635a aVar, AbstractC1678b bVar, long j) {
        return this.f6476f.mo32294a(aVar, bVar, j);
    }

    @Override // p012b.p076s.p078b.p079a.p102w0.AbstractC1538b, p012b.p076s.p078b.p079a.p102w0.AbstractC1634r
    /* renamed from: a */
    public Object mo32507a() {
        return this.f6476f.mo32507a();
    }

    @Override // p012b.p076s.p078b.p079a.p102w0.AbstractC1634r
    /* renamed from: a */
    public void mo32295a(AbstractC1631p pVar) {
        this.f6476f.mo32295a(pVar);
    }

    @Override // p012b.p076s.p078b.p079a.p102w0.AbstractC1634r.AbstractC1636b
    /* renamed from: a */
    public void mo32499a(AbstractC1634r rVar, AbstractC1252n0 n0Var, Object obj) {
        m32924a(n0Var, obj);
    }

    @Override // p012b.p076s.p078b.p079a.p102w0.AbstractC1538b
    /* renamed from: a */
    public void mo32293a(AbstractC1704x xVar) {
        this.f6476f.mo32503a(this, xVar);
    }

    @Override // p012b.p076s.p078b.p079a.p102w0.AbstractC1634r
    /* renamed from: b */
    public void mo32502b() throws IOException {
        this.f6476f.mo32502b();
    }

    @Override // p012b.p076s.p078b.p079a.p102w0.AbstractC1538b
    /* renamed from: c */
    public void mo32678c() {
        this.f6476f.mo32504a(this);
    }
}

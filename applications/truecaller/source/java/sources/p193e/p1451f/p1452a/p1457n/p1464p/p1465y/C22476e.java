package p193e.p1451f.p1452a.p1457n.p1464p.p1465y;

import java.io.InputStream;
import java.net.URL;
import p193e.p1451f.p1452a.p1457n.C22267i;
import p193e.p1451f.p1452a.p1457n.p1464p.AbstractC22436n;
import p193e.p1451f.p1452a.p1457n.p1464p.AbstractC22438o;
import p193e.p1451f.p1452a.p1457n.p1464p.C22423g;
import p193e.p1451f.p1452a.p1457n.p1464p.C22444r;
/* renamed from: e.f.a.n.p.y.e */
/* loaded from: classes-dex2jar.jar:e/f/a/n/p/y/e.class */
public class C22476e implements AbstractC22436n<URL, InputStream> {

    /* renamed from: a */
    public final AbstractC22436n<C22423g, InputStream> f62335a;

    /* renamed from: e.f.a.n.p.y.e$a */
    /* loaded from: classes-dex2jar.jar:e/f/a/n/p/y/e$a.class */
    public static class C22477a implements AbstractC22438o<URL, InputStream> {
        @Override // p193e.p1451f.p1452a.p1457n.p1464p.AbstractC22438o
        /* renamed from: b */
        public void mo8213b() {
        }

        @Override // p193e.p1451f.p1452a.p1457n.p1464p.AbstractC22438o
        /* renamed from: c */
        public AbstractC22436n<URL, InputStream> mo8212c(C22444r c22444r) {
            return new C22476e(c22444r.m8226c(C22423g.class, InputStream.class));
        }
    }

    public C22476e(AbstractC22436n<C22423g, InputStream> abstractC22436n) {
        this.f62335a = abstractC22436n;
    }

    @Override // p193e.p1451f.p1452a.p1457n.p1464p.AbstractC22436n
    /* renamed from: a */
    public AbstractC22436n.C22437a<InputStream> mo8215a(URL url, int i, int i2, C22267i c22267i) {
        return this.f62335a.mo8215a(new C22423g(url), i, i2, c22267i);
    }

    @Override // p193e.p1451f.p1452a.p1457n.p1464p.AbstractC22436n
    /* renamed from: b */
    public /* bridge */ /* synthetic */ boolean mo8214b(URL url) {
        return true;
    }
}

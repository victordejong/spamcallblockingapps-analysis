package p193e.p1451f.p1452a.p1457n.p1458n;

import java.io.IOException;
import java.io.InputStream;
import p193e.p1451f.p1452a.p1457n.p1458n.AbstractC22276e;
import p193e.p1451f.p1452a.p1457n.p1460o.p1461b0.AbstractC22301b;
import p193e.p1451f.p1452a.p1457n.p1466q.p1467d.C22520w;
/* renamed from: e.f.a.n.n.k */
/* loaded from: classes-dex2jar.jar:e/f/a/n/n/k.class */
public final class C22285k implements AbstractC22276e<InputStream> {

    /* renamed from: a */
    public final C22520w f61926a;

    /* renamed from: e.f.a.n.n.k$a */
    /* loaded from: classes-dex2jar.jar:e/f/a/n/n/k$a.class */
    public static final class C22286a implements AbstractC22276e.AbstractC22277a<InputStream> {

        /* renamed from: a */
        public final AbstractC22301b f61927a;

        public C22286a(AbstractC22301b abstractC22301b) {
            this.f61927a = abstractC22301b;
        }

        @Override // p193e.p1451f.p1452a.p1457n.p1458n.AbstractC22276e.AbstractC22277a
        /* renamed from: a */
        public Class<InputStream> mo8165a() {
            return InputStream.class;
        }

        @Override // p193e.p1451f.p1452a.p1457n.p1458n.AbstractC22276e.AbstractC22277a
        /* renamed from: b */
        public AbstractC22276e<InputStream> mo8164b(InputStream inputStream) {
            return new C22285k(inputStream, this.f61927a);
        }
    }

    public C22285k(InputStream inputStream, AbstractC22301b abstractC22301b) {
        C22520w c22520w = new C22520w(inputStream, abstractC22301b);
        this.f61926a = c22520w;
        c22520w.mark(5242880);
    }

    @Override // p193e.p1451f.p1452a.p1457n.p1458n.AbstractC22276e
    /* renamed from: a */
    public InputStream mo8167a() throws IOException {
        this.f61926a.reset();
        return this.f61926a;
    }

    @Override // p193e.p1451f.p1452a.p1457n.p1458n.AbstractC22276e
    /* renamed from: b */
    public void mo8166b() {
        this.f61926a.m8171d();
    }
}

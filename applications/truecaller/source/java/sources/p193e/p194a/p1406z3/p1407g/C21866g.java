package p193e.p194a.p1406z3.p1407g;

import android.net.Uri;
import java.io.InputStream;
import p193e.p1451f.p1452a.p1457n.p1464p.AbstractC22436n;
import p193e.p1451f.p1452a.p1457n.p1464p.AbstractC22438o;
import p193e.p1451f.p1452a.p1457n.p1464p.C22423g;
import p193e.p1451f.p1452a.p1457n.p1464p.C22444r;
import p193e.p194a.p1406z3.AbstractC21850b;
import s1.z.c.l;
/* renamed from: e.a.z3.g.g */
/* loaded from: classes9-dex2jar.jar:e/a/z3/g/g.class */
public final class C21866g implements AbstractC22438o<Uri, InputStream> {

    /* renamed from: a */
    public final AbstractC21850b f60751a;

    public C21866g(AbstractC21850b abstractC21850b) {
        l.e(abstractC21850b, "provider");
        this.f60751a = abstractC21850b;
    }

    @Override // p193e.p1451f.p1452a.p1457n.p1464p.AbstractC22438o
    /* renamed from: b */
    public void mo8213b() {
    }

    @Override // p193e.p1451f.p1452a.p1457n.p1464p.AbstractC22438o
    /* renamed from: c */
    public AbstractC22436n<Uri, InputStream> mo8212c(C22444r c22444r) {
        l.e(c22444r, "multiFactory");
        AbstractC21850b abstractC21850b = this.f60751a;
        AbstractC22436n m8226c = c22444r.m8226c(C22423g.class, InputStream.class);
        l.d(m8226c, "multiFactory.build(Glide… InputStream::class.java)");
        AbstractC22436n m8226c2 = c22444r.m8226c(Uri.class, InputStream.class);
        l.d(m8226c2, "multiFactory.build(Uri::… InputStream::class.java)");
        return new C21865f(abstractC21850b, m8226c, m8226c2);
    }
}

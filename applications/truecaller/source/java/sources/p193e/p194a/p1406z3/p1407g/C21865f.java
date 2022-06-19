package p193e.p194a.p1406z3.p1407g;

import android.content.UriMatcher;
import android.net.Uri;
import java.io.InputStream;
import java.util.Iterator;
import p193e.p1451f.p1452a.p1457n.C22267i;
import p193e.p1451f.p1452a.p1457n.p1464p.AbstractC22436n;
import p193e.p1451f.p1452a.p1457n.p1464p.C22423g;
import p193e.p194a.p1406z3.AbstractC21850b;
import s1.f0.r;
import s1.z.c.l;
import u3.a0;
/* renamed from: e.a.z3.g.f */
/* loaded from: classes9-dex2jar.jar:e/a/z3/g/f.class */
public final class C21865f implements AbstractC22436n<Uri, InputStream> {

    /* renamed from: a */
    public final UriMatcher f60747a;

    /* renamed from: b */
    public final AbstractC21850b f60748b;

    /* renamed from: c */
    public final AbstractC22436n<C22423g, InputStream> f60749c;

    /* renamed from: d */
    public final AbstractC22436n<Uri, InputStream> f60750d;

    public C21865f(AbstractC21850b abstractC21850b, AbstractC22436n<C22423g, InputStream> abstractC22436n, AbstractC22436n<Uri, InputStream> abstractC22436n2) {
        l.e(abstractC21850b, "provider");
        l.e(abstractC22436n, "urlLoader");
        l.e(abstractC22436n2, "uriLoader");
        this.f60748b = abstractC21850b;
        this.f60749c = abstractC22436n;
        this.f60750d = abstractC22436n2;
        UriMatcher uriMatcher = new UriMatcher(-1);
        uriMatcher.addURI(abstractC21850b.mo8986m(), abstractC21850b.mo8987l(), 0);
        this.f60747a = uriMatcher;
    }

    @Override // p193e.p1451f.p1452a.p1457n.p1464p.AbstractC22436n
    /* renamed from: a */
    public AbstractC22436n.C22437a<InputStream> mo8215a(Uri uri, int i, int i2, C22267i c22267i) {
        AbstractC22436n.C22437a<InputStream> c22437a;
        a0 a0Var;
        Uri uri2 = uri;
        l.e(uri2, "model");
        l.e(c22267i, "options");
        Iterator<T> it = this.f60748b.mo8988b(uri2).iterator();
        while (true) {
            c22437a = null;
            if (!it.hasNext()) {
                break;
            }
            String str = (String) it.next();
            if (!r.p(str)) {
                Uri parse = Uri.parse(str);
                if (this.f60750d.mo8214b(parse)) {
                    c22437a = this.f60750d.mo8215a(parse, i, i2, c22267i);
                    break;
                }
                C22423g c22423g = new C22423g(str);
                if (this.f60749c.mo8214b(c22423g)) {
                    l.f(str, "$this$toHttpUrlOrNull");
                    try {
                        l.f(str, "$this$toHttpUrl");
                        a0.a aVar = new a0.a();
                        aVar.f((a0) null, str);
                        a0Var = aVar.b();
                    } catch (IllegalArgumentException e) {
                        a0Var = null;
                    }
                    if (a0Var != null) {
                        c22437a = this.f60749c.mo8215a(c22423g, i, i2, c22267i);
                        break;
                    }
                } else {
                    continue;
                }
            }
        }
        return c22437a;
    }

    @Override // p193e.p1451f.p1452a.p1457n.p1464p.AbstractC22436n
    /* renamed from: b */
    public boolean mo8214b(Uri uri) {
        Uri uri2 = uri;
        l.e(uri2, "model");
        return this.f60747a.match(uri2) != -1;
    }
}

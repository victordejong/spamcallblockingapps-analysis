package p193e.p1451f.p1452a.p1457n.p1464p.p1465y;

import android.net.Uri;
import com.tenor.android.core.network.constant.Protocols;
import java.io.InputStream;
import java.util.Arrays;
import java.util.Collections;
import java.util.HashSet;
import java.util.Set;
import p193e.p1451f.p1452a.p1457n.C22267i;
import p193e.p1451f.p1452a.p1457n.p1464p.AbstractC22436n;
import p193e.p1451f.p1452a.p1457n.p1464p.AbstractC22438o;
import p193e.p1451f.p1452a.p1457n.p1464p.C22423g;
import p193e.p1451f.p1452a.p1457n.p1464p.C22444r;
/* renamed from: e.f.a.n.p.y.b */
/* loaded from: classes-dex2jar.jar:e/f/a/n/p/y/b.class */
public class C22470b implements AbstractC22436n<Uri, InputStream> {

    /* renamed from: b */
    public static final Set<String> f62329b = Collections.unmodifiableSet(new HashSet(Arrays.asList(Protocols.HTTP, "https")));

    /* renamed from: a */
    public final AbstractC22436n<C22423g, InputStream> f62330a;

    /* renamed from: e.f.a.n.p.y.b$a */
    /* loaded from: classes-dex2jar.jar:e/f/a/n/p/y/b$a.class */
    public static class C22471a implements AbstractC22438o<Uri, InputStream> {
        @Override // p193e.p1451f.p1452a.p1457n.p1464p.AbstractC22438o
        /* renamed from: b */
        public void mo8213b() {
        }

        @Override // p193e.p1451f.p1452a.p1457n.p1464p.AbstractC22438o
        /* renamed from: c */
        public AbstractC22436n<Uri, InputStream> mo8212c(C22444r c22444r) {
            return new C22470b(c22444r.m8226c(C22423g.class, InputStream.class));
        }
    }

    public C22470b(AbstractC22436n<C22423g, InputStream> abstractC22436n) {
        this.f62330a = abstractC22436n;
    }

    @Override // p193e.p1451f.p1452a.p1457n.p1464p.AbstractC22436n
    /* renamed from: a */
    public AbstractC22436n.C22437a<InputStream> mo8215a(Uri uri, int i, int i2, C22267i c22267i) {
        return this.f62330a.mo8215a(new C22423g(uri.toString()), i, i2, c22267i);
    }

    @Override // p193e.p1451f.p1452a.p1457n.p1464p.AbstractC22436n
    /* renamed from: b */
    public boolean mo8214b(Uri uri) {
        return f62329b.contains(uri.getScheme());
    }
}

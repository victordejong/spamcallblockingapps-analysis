package p193e.p1451f.p1452a.p1457n.p1464p;

import android.net.Uri;
import com.tenor.android.core.network.constant.Protocols;
import java.io.InputStream;
import java.util.Arrays;
import java.util.Collections;
import java.util.HashSet;
import java.util.Set;
import p193e.p1451f.p1452a.p1457n.C22267i;
import p193e.p1451f.p1452a.p1457n.p1464p.AbstractC22436n;
/* renamed from: e.f.a.n.p.x */
/* loaded from: classes-dex2jar.jar:e/f/a/n/p/x.class */
public class C22466x<Data> implements AbstractC22436n<Uri, Data> {

    /* renamed from: b */
    public static final Set<String> f62324b = Collections.unmodifiableSet(new HashSet(Arrays.asList(Protocols.HTTP, "https")));

    /* renamed from: a */
    public final AbstractC22436n<C22423g, Data> f62325a;

    /* renamed from: e.f.a.n.p.x$a */
    /* loaded from: classes-dex2jar.jar:e/f/a/n/p/x$a.class */
    public static class C22467a implements AbstractC22438o<Uri, InputStream> {
        @Override // p193e.p1451f.p1452a.p1457n.p1464p.AbstractC22438o
        /* renamed from: b */
        public void mo8213b() {
        }

        @Override // p193e.p1451f.p1452a.p1457n.p1464p.AbstractC22438o
        /* renamed from: c */
        public AbstractC22436n<Uri, InputStream> mo8212c(C22444r c22444r) {
            return new C22466x(c22444r.m8226c(C22423g.class, InputStream.class));
        }
    }

    public C22466x(AbstractC22436n<C22423g, Data> abstractC22436n) {
        this.f62325a = abstractC22436n;
    }

    @Override // p193e.p1451f.p1452a.p1457n.p1464p.AbstractC22436n
    /* renamed from: a */
    public AbstractC22436n.C22437a mo8215a(Uri uri, int i, int i2, C22267i c22267i) {
        return this.f62325a.mo8215a(new C22423g(uri.toString()), i, i2, c22267i);
    }

    @Override // p193e.p1451f.p1452a.p1457n.p1464p.AbstractC22436n
    /* renamed from: b */
    public boolean mo8214b(Uri uri) {
        return f62324b.contains(uri.getScheme());
    }
}

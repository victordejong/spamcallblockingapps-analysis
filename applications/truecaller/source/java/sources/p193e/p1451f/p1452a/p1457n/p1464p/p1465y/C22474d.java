package p193e.p1451f.p1452a.p1457n.p1464p.p1465y;

import android.content.Context;
import android.net.Uri;
import java.io.InputStream;
import p1727n3.p1789g0.C26232y;
import p193e.p1451f.p1452a.p1457n.C22267i;
import p193e.p1451f.p1452a.p1457n.p1458n.p1459o.C22289b;
import p193e.p1451f.p1452a.p1457n.p1464p.AbstractC22436n;
import p193e.p1451f.p1452a.p1457n.p1464p.AbstractC22438o;
import p193e.p1451f.p1452a.p1457n.p1464p.C22444r;
import p193e.p1451f.p1452a.p1457n.p1466q.p1467d.C22491e0;
import p193e.p1451f.p1452a.p1479s.C22610d;
/* renamed from: e.f.a.n.p.y.d */
/* loaded from: classes-dex2jar.jar:e/f/a/n/p/y/d.class */
public class C22474d implements AbstractC22436n<Uri, InputStream> {

    /* renamed from: a */
    public final Context f62333a;

    /* renamed from: e.f.a.n.p.y.d$a */
    /* loaded from: classes-dex2jar.jar:e/f/a/n/p/y/d$a.class */
    public static class C22475a implements AbstractC22438o<Uri, InputStream> {

        /* renamed from: a */
        public final Context f62334a;

        public C22475a(Context context) {
            this.f62334a = context;
        }

        @Override // p193e.p1451f.p1452a.p1457n.p1464p.AbstractC22438o
        /* renamed from: b */
        public void mo8213b() {
        }

        @Override // p193e.p1451f.p1452a.p1457n.p1464p.AbstractC22438o
        /* renamed from: c */
        public AbstractC22436n<Uri, InputStream> mo8212c(C22444r c22444r) {
            return new C22474d(this.f62334a);
        }
    }

    public C22474d(Context context) {
        this.f62333a = context.getApplicationContext();
    }

    @Override // p193e.p1451f.p1452a.p1457n.p1464p.AbstractC22436n
    /* renamed from: a */
    public AbstractC22436n.C22437a<InputStream> mo8215a(Uri uri, int i, int i2, C22267i c22267i) {
        AbstractC22436n.C22437a<InputStream> c22437a;
        Uri uri2 = uri;
        if (C26232y.m2395X0(i, i2)) {
            Long l = (Long) c22267i.m8361c(C22491e0.f62360d);
            if (l != null && l.longValue() == -1) {
                C22610d c22610d = new C22610d(uri2);
                Context context = this.f62333a;
                c22437a = new AbstractC22436n.C22437a<>(c22610d, C22289b.m8352e(context, uri2, new C22289b.C22291b(context.getContentResolver())));
                return c22437a;
            }
        }
        c22437a = null;
        return c22437a;
    }

    @Override // p193e.p1451f.p1452a.p1457n.p1464p.AbstractC22436n
    /* renamed from: b */
    public boolean mo8214b(Uri uri) {
        Uri uri2 = uri;
        return C26232y.m2403V0(uri2) && uri2.getPathSegments().contains("video");
    }
}

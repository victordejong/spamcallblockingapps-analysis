package p193e.p1451f.p1452a.p1457n.p1464p.p1465y;

import java.io.InputStream;
import java.util.Objects;
import java.util.Queue;
import p193e.p1451f.p1452a.p1457n.C22264h;
import p193e.p1451f.p1452a.p1457n.C22267i;
import p193e.p1451f.p1452a.p1457n.p1458n.C22282j;
import p193e.p1451f.p1452a.p1457n.p1464p.AbstractC22436n;
import p193e.p1451f.p1452a.p1457n.p1464p.AbstractC22438o;
import p193e.p1451f.p1452a.p1457n.p1464p.C22423g;
import p193e.p1451f.p1452a.p1457n.p1464p.C22433m;
import p193e.p1451f.p1452a.p1457n.p1464p.C22444r;
/* renamed from: e.f.a.n.p.y.a */
/* loaded from: classes-dex2jar.jar:e/f/a/n/p/y/a.class */
public class C22468a implements AbstractC22436n<C22423g, InputStream> {

    /* renamed from: b */
    public static final C22264h<Integer> f62326b = C22264h.m8362a("com.bumptech.glide.load.model.stream.HttpGlideUrlLoader.Timeout", 2500);

    /* renamed from: a */
    public final C22433m<C22423g, C22423g> f62327a;

    /* renamed from: e.f.a.n.p.y.a$a */
    /* loaded from: classes-dex2jar.jar:e/f/a/n/p/y/a$a.class */
    public static class C22469a implements AbstractC22438o<C22423g, InputStream> {

        /* renamed from: a */
        public final C22433m<C22423g, C22423g> f62328a = new C22433m<>(500);

        @Override // p193e.p1451f.p1452a.p1457n.p1464p.AbstractC22438o
        /* renamed from: b */
        public void mo8213b() {
        }

        @Override // p193e.p1451f.p1452a.p1457n.p1464p.AbstractC22438o
        /* renamed from: c */
        public AbstractC22436n<C22423g, InputStream> mo8212c(C22444r c22444r) {
            return new C22468a(this.f62328a);
        }
    }

    public C22468a(C22433m<C22423g, C22423g> c22433m) {
        this.f62327a = c22433m;
    }

    @Override // p193e.p1451f.p1452a.p1457n.p1464p.AbstractC22436n
    /* renamed from: a */
    public AbstractC22436n.C22437a<InputStream> mo8215a(C22423g c22423g, int i, int i2, C22267i c22267i) {
        C22423g c22423g2 = c22423g;
        C22433m<C22423g, C22423g> c22433m = this.f62327a;
        C22423g c22423g3 = c22423g2;
        if (c22433m != null) {
            C22433m.C22435b<C22423g> m8232a = C22433m.C22435b.m8232a(c22423g2, 0, 0);
            C22423g m8030a = c22433m.f62278a.m8030a(m8232a);
            Queue<C22433m.C22435b<?>> queue = C22433m.C22435b.f62279d;
            synchronized (queue) {
                queue.offer(m8232a);
            }
            c22423g3 = m8030a;
            if (c22423g3 == null) {
                C22433m<C22423g, C22423g> c22433m2 = this.f62327a;
                Objects.requireNonNull(c22433m2);
                c22433m2.f62278a.m8027d(C22433m.C22435b.m8232a(c22423g2, 0, 0), c22423g2);
                c22423g3 = c22423g2;
            }
        }
        return new AbstractC22436n.C22437a<>(c22423g3, new C22282j(c22423g3, ((Integer) c22267i.m8361c(f62326b)).intValue()));
    }

    @Override // p193e.p1451f.p1452a.p1457n.p1464p.AbstractC22436n
    /* renamed from: b */
    public /* bridge */ /* synthetic */ boolean mo8214b(C22423g c22423g) {
        return true;
    }
}

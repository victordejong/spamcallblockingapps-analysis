package p193e.p1451f.p1452a.p1455m.p1456a;

import java.io.InputStream;
import p193e.p1451f.p1452a.p1457n.C22267i;
import p193e.p1451f.p1452a.p1457n.p1464p.AbstractC22436n;
import p193e.p1451f.p1452a.p1457n.p1464p.AbstractC22438o;
import p193e.p1451f.p1452a.p1457n.p1464p.C22423g;
import p193e.p1451f.p1452a.p1457n.p1464p.C22444r;
import u3.e0;
import u3.f;
/* renamed from: e.f.a.m.a.c */
/* loaded from: classes-dex2jar.jar:e/f/a/m/a/c.class */
public class C22256c implements AbstractC22436n<C22423g, InputStream> {

    /* renamed from: a */
    public final f.a f61879a;

    /* renamed from: e.f.a.m.a.c$a */
    /* loaded from: classes-dex2jar.jar:e/f/a/m/a/c$a.class */
    public static class C22257a implements AbstractC22438o<C22423g, InputStream> {

        /* renamed from: b */
        public static volatile f.a f61880b;

        /* renamed from: a */
        public final f.a f61881a;

        public C22257a() {
            if (f61880b == null) {
                synchronized (C22257a.class) {
                    try {
                        if (f61880b == null) {
                            f61880b = new e0(new e0.a());
                        }
                    } catch (Throwable th) {
                        throw th;
                    }
                }
            }
            this.f61881a = f61880b;
        }

        @Override // p193e.p1451f.p1452a.p1457n.p1464p.AbstractC22438o
        /* renamed from: b */
        public void mo8213b() {
        }

        @Override // p193e.p1451f.p1452a.p1457n.p1464p.AbstractC22438o
        /* renamed from: c */
        public AbstractC22436n<C22423g, InputStream> mo8212c(C22444r c22444r) {
            return new C22256c(this.f61881a);
        }
    }

    public C22256c(f.a aVar) {
        this.f61879a = aVar;
    }

    @Override // p193e.p1451f.p1452a.p1457n.p1464p.AbstractC22436n
    /* renamed from: a */
    public AbstractC22436n.C22437a<InputStream> mo8215a(C22423g c22423g, int i, int i2, C22267i c22267i) {
        C22423g c22423g2 = c22423g;
        return new AbstractC22436n.C22437a<>(c22423g2, new C22255b(this.f61879a, c22423g2));
    }

    @Override // p193e.p1451f.p1452a.p1457n.p1464p.AbstractC22436n
    /* renamed from: b */
    public /* bridge */ /* synthetic */ boolean mo8214b(C22423g c22423g) {
        return true;
    }
}

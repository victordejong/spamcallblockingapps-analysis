package p012b.p076s.p078b.p079a.p102w0;

import android.os.Handler;
import java.io.IOException;
import java.util.HashMap;
import p012b.p076s.p078b.p079a.AbstractC1252n0;
import p012b.p076s.p078b.p079a.p080a1.C1160a;
import p012b.p076s.p078b.p079a.p080a1.C1167d0;
import p012b.p076s.p078b.p079a.p102w0.AbstractC1533a0;
import p012b.p076s.p078b.p079a.p102w0.AbstractC1634r;
import p012b.p076s.p078b.p079a.p111z0.AbstractC1704x;
/* renamed from: b.s.b.a.w0.e */
/* loaded from: classes-dex2jar.jar:b/s/b/a/w0/e.class */
public abstract class AbstractC1551e<T> extends AbstractC1538b {

    /* renamed from: f */
    public final HashMap<T, C1553b> f6341f = new HashMap<>();

    /* renamed from: g */
    public Handler f6342g;

    /* renamed from: h */
    public AbstractC1704x f6343h;

    /* renamed from: b.s.b.a.w0.e$a */
    /* loaded from: classes-dex2jar.jar:b/s/b/a/w0/e$a.class */
    public final class C1552a implements AbstractC1533a0 {

        /* renamed from: a */
        public final T f6344a;

        /* renamed from: b */
        public AbstractC1533a0.C1534a f6345b;

        public C1552a(T t) {
            this.f6345b = AbstractC1551e.this.m32923a((AbstractC1634r.C1635a) null);
            this.f6344a = t;
        }

        /* renamed from: a */
        public final AbstractC1533a0.C1537c m32866a(AbstractC1533a0.C1537c cVar) {
            long a = AbstractC1551e.this.mo32873a((AbstractC1551e) this.f6344a, cVar.f6259f);
            long a2 = AbstractC1551e.this.mo32873a((AbstractC1551e) this.f6344a, cVar.f6260g);
            return (a == cVar.f6259f && a2 == cVar.f6260g) ? cVar : new AbstractC1533a0.C1537c(cVar.f6254a, cVar.f6255b, cVar.f6256c, cVar.f6257d, cVar.f6258e, a, a2);
        }

        @Override // p012b.p076s.p078b.p079a.p102w0.AbstractC1533a0
        /* renamed from: a */
        public void mo32870a(int i, AbstractC1634r.C1635a aVar) {
            if (m32861d(i, aVar)) {
                this.f6345b.m32955a();
            }
        }

        @Override // p012b.p076s.p078b.p079a.p102w0.AbstractC1533a0
        /* renamed from: a */
        public void mo32869a(int i, AbstractC1634r.C1635a aVar, AbstractC1533a0.C1536b bVar, AbstractC1533a0.C1537c cVar) {
            if (m32861d(i, aVar)) {
                this.f6345b.m32928c(bVar, m32866a(cVar));
            }
        }

        @Override // p012b.p076s.p078b.p079a.p102w0.AbstractC1533a0
        /* renamed from: a */
        public void mo32868a(int i, AbstractC1634r.C1635a aVar, AbstractC1533a0.C1536b bVar, AbstractC1533a0.C1537c cVar, IOException iOException, boolean z) {
            if (m32861d(i, aVar)) {
                this.f6345b.m32948a(bVar, m32866a(cVar), iOException, z);
            }
        }

        @Override // p012b.p076s.p078b.p079a.p102w0.AbstractC1533a0
        /* renamed from: a */
        public void mo32867a(int i, AbstractC1634r.C1635a aVar, AbstractC1533a0.C1537c cVar) {
            if (m32861d(i, aVar)) {
                this.f6345b.m32947a(m32866a(cVar));
            }
        }

        @Override // p012b.p076s.p078b.p079a.p102w0.AbstractC1533a0
        /* renamed from: b */
        public void mo32865b(int i, AbstractC1634r.C1635a aVar) {
            if (m32861d(i, aVar)) {
                this.f6345b.m32929c();
            }
        }

        @Override // p012b.p076s.p078b.p079a.p102w0.AbstractC1533a0
        /* renamed from: b */
        public void mo32864b(int i, AbstractC1634r.C1635a aVar, AbstractC1533a0.C1536b bVar, AbstractC1533a0.C1537c cVar) {
            if (m32861d(i, aVar)) {
                this.f6345b.m32934b(bVar, m32866a(cVar));
            }
        }

        @Override // p012b.p076s.p078b.p079a.p102w0.AbstractC1533a0
        /* renamed from: c */
        public void mo32863c(int i, AbstractC1634r.C1635a aVar) {
            if (m32861d(i, aVar)) {
                this.f6345b.m32935b();
            }
        }

        @Override // p012b.p076s.p078b.p079a.p102w0.AbstractC1533a0
        /* renamed from: c */
        public void mo32862c(int i, AbstractC1634r.C1635a aVar, AbstractC1533a0.C1536b bVar, AbstractC1533a0.C1537c cVar) {
            if (m32861d(i, aVar)) {
                this.f6345b.m32949a(bVar, m32866a(cVar));
            }
        }

        /* renamed from: d */
        public final boolean m32861d(int i, AbstractC1634r.C1635a aVar) {
            AbstractC1634r.C1635a aVar2;
            if (aVar != null) {
                AbstractC1634r.C1635a a = AbstractC1551e.this.mo32784a((AbstractC1551e) this.f6344a, aVar);
                aVar2 = a;
                if (a == null) {
                    return false;
                }
            } else {
                aVar2 = null;
            }
            int a2 = AbstractC1551e.this.mo32785a((AbstractC1551e) this.f6344a, i);
            AbstractC1533a0.C1534a aVar3 = this.f6345b;
            if (aVar3.f6247a == a2 && C1167d0.m34478a(aVar3.f6248b, aVar2)) {
                return true;
            }
            this.f6345b = AbstractC1551e.this.m32925a(a2, aVar2, 0L);
            return true;
        }
    }

    /* renamed from: b.s.b.a.w0.e$b */
    /* loaded from: classes-dex2jar.jar:b/s/b/a/w0/e$b.class */
    public static final class C1553b {

        /* renamed from: a */
        public final AbstractC1634r f6347a;

        /* renamed from: b */
        public final AbstractC1634r.AbstractC1636b f6348b;

        /* renamed from: c */
        public final AbstractC1533a0 f6349c;

        public C1553b(AbstractC1634r rVar, AbstractC1634r.AbstractC1636b bVar, AbstractC1533a0 a0Var) {
            this.f6347a = rVar;
            this.f6348b = bVar;
            this.f6349c = a0Var;
        }
    }

    /* renamed from: a */
    public int mo32785a(T t, int i) {
        return i;
    }

    /* renamed from: a */
    public long mo32873a(T t, long j) {
        return j;
    }

    /* renamed from: a */
    public AbstractC1634r.C1635a mo32784a(T t, AbstractC1634r.C1635a aVar) {
        return aVar;
    }

    @Override // p012b.p076s.p078b.p079a.p102w0.AbstractC1538b
    /* renamed from: a */
    public void mo32293a(AbstractC1704x xVar) {
        this.f6343h = xVar;
        this.f6342g = new Handler();
    }

    /* renamed from: a */
    public final void m32874a(T t) {
        C1553b remove = this.f6341f.remove(t);
        C1160a.m34522a(remove);
        C1553b bVar = remove;
        bVar.f6347a.mo32504a(bVar.f6348b);
        bVar.f6347a.mo32505a(bVar.f6349c);
    }

    /* renamed from: a */
    public final void m32872a(final T t, AbstractC1634r rVar) {
        C1160a.m34520a(!this.f6341f.containsKey(t));
        AbstractC1634r.AbstractC1636b dVar = new AbstractC1634r.AbstractC1636b(this, t) { // from class: b.s.b.a.w0.d

            /* renamed from: a */
            public final AbstractC1551e f6277a;

            /* renamed from: b */
            public final Object f6278b;

            {
                this.f6277a = this;
                this.f6278b = t;
            }

            @Override // p012b.p076s.p078b.p079a.p102w0.AbstractC1634r.AbstractC1636b
            /* renamed from: a */
            public void mo32499a(AbstractC1634r rVar2, AbstractC1252n0 n0Var, Object obj) {
                this.f6277a.m32871a(this.f6278b, rVar2, n0Var, obj);
            }
        };
        C1552a aVar = new C1552a(t);
        this.f6341f.put(t, new C1553b(rVar, dVar, aVar));
        Handler handler = this.f6342g;
        C1160a.m34522a(handler);
        rVar.mo32506a(handler, aVar);
        rVar.mo32503a(dVar, this.f6343h);
    }

    @Override // p012b.p076s.p078b.p079a.p102w0.AbstractC1634r
    /* renamed from: b */
    public void mo32502b() throws IOException {
        for (C1553b bVar : this.f6341f.values()) {
            bVar.f6347a.mo32502b();
        }
    }

    /* renamed from: b */
    public abstract void m32871a(T t, AbstractC1634r rVar, AbstractC1252n0 n0Var, Object obj);

    @Override // p012b.p076s.p078b.p079a.p102w0.AbstractC1538b
    /* renamed from: c */
    public void mo32678c() {
        for (C1553b bVar : this.f6341f.values()) {
            bVar.f6347a.mo32504a(bVar.f6348b);
            bVar.f6347a.mo32505a(bVar.f6349c);
        }
        this.f6341f.clear();
    }
}

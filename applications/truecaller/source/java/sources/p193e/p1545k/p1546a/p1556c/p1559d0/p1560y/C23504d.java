package p193e.p1545k.p1546a.p1556c.p1559d0.p1560y;

import p193e.p1545k.p1546a.p1547a.AbstractC23285b;
import p193e.p1545k.p1546a.p1556c.AbstractC23426b;
import p193e.p1545k.p1546a.p1556c.C23951v;
import p193e.p1545k.p1546a.p1556c.p1564g0.AbstractC23670n;
import p193e.p1545k.p1546a.p1556c.p1564g0.AbstractC23681s;
import p193e.p1545k.p1546a.p1556c.p1564g0.C23669m;
/* renamed from: e.k.a.c.d0.y.d */
/* loaded from: classes2-dex2jar.jar:e/k/a/c/d0/y/d.class */
public final class C23504d {

    /* renamed from: a */
    public final AbstractC23426b f65220a;

    /* renamed from: b */
    public final AbstractC23670n f65221b;

    /* renamed from: c */
    public final int f65222c;

    /* renamed from: d */
    public final C23505a[] f65223d;

    /* renamed from: e.k.a.c.d0.y.d$a */
    /* loaded from: classes2-dex2jar.jar:e/k/a/c/d0/y/d$a.class */
    public static final class C23505a {

        /* renamed from: a */
        public final C23669m f65224a;

        /* renamed from: b */
        public final AbstractC23681s f65225b;

        /* renamed from: c */
        public final AbstractC23285b.C23286a f65226c;

        public C23505a(C23669m c23669m, AbstractC23681s abstractC23681s, AbstractC23285b.C23286a c23286a) {
            this.f65224a = c23669m;
            this.f65225b = abstractC23681s;
            this.f65226c = c23286a;
        }
    }

    public C23504d(AbstractC23426b abstractC23426b, AbstractC23670n abstractC23670n, C23505a[] c23505aArr, int i) {
        this.f65220a = abstractC23426b;
        this.f65221b = abstractC23670n;
        this.f65223d = c23505aArr;
        this.f65222c = i;
    }

    /* renamed from: a */
    public static C23504d m6719a(AbstractC23426b abstractC23426b, AbstractC23670n abstractC23670n, AbstractC23681s[] abstractC23681sArr) {
        int mo6368q = abstractC23670n.mo6368q();
        C23505a[] c23505aArr = new C23505a[mo6368q];
        for (int i = 0; i < mo6368q; i++) {
            C23669m m6369p = abstractC23670n.m6369p(i);
            c23505aArr[i] = new C23505a(m6369p, abstractC23681sArr == null ? null : abstractC23681sArr[i], abstractC23426b.mo6267p(m6369p));
        }
        return new C23504d(abstractC23426b, abstractC23670n, c23505aArr, mo6368q);
    }

    /* renamed from: b */
    public C23951v m6718b(int i) {
        String mo6269o = this.f65220a.mo6269o(this.f65223d[i].f65224a);
        if (mo6269o == null || mo6269o.isEmpty()) {
            return null;
        }
        return C23951v.m5665a(mo6269o);
    }

    /* renamed from: c */
    public AbstractC23285b.C23286a m6717c(int i) {
        return this.f65223d[i].f65226c;
    }

    /* renamed from: d */
    public C23951v m6716d(int i) {
        AbstractC23681s abstractC23681s = this.f65223d[i].f65225b;
        if (abstractC23681s != null) {
            return abstractC23681s.mo5708d();
        }
        return null;
    }

    /* renamed from: e */
    public C23669m m6715e(int i) {
        return this.f65223d[i].f65224a;
    }

    /* renamed from: f */
    public AbstractC23681s m6714f(int i) {
        return this.f65223d[i].f65225b;
    }

    public String toString() {
        return this.f65221b.toString();
    }
}

package p1727n3.p1744b0.p1745a;

import androidx.recyclerview.widget.RecyclerView;
import p1727n3.p1788g.C26179e;
import p1727n3.p1788g.C26187h;
import p1727n3.p1807k.p1820h.AbstractC26555e;
import p1727n3.p1807k.p1820h.C26556f;
/* renamed from: n3.b0.a.b0 */
/* loaded from: classes-dex2jar.jar:n3/b0/a/b0.class */
public class C25571b0 {

    /* renamed from: a */
    public final C26187h<RecyclerView.AbstractC0313c0, C25572a> f71572a = new C26187h<>();

    /* renamed from: b */
    public final C26179e<RecyclerView.AbstractC0313c0> f71573b = new C26179e<>(10);

    /* renamed from: n3.b0.a.b0$a */
    /* loaded from: classes-dex2jar.jar:n3/b0/a/b0$a.class */
    public static class C25572a {

        /* renamed from: d */
        public static AbstractC26555e<C25572a> f71574d = new C26556f(20);

        /* renamed from: a */
        public int f71575a;

        /* renamed from: b */
        public RecyclerView.AbstractC0323l.C0326c f71576b;

        /* renamed from: c */
        public RecyclerView.AbstractC0323l.C0326c f71577c;

        /* renamed from: a */
        public static C25572a m3208a() {
            C25572a mo1689a = f71574d.mo1689a();
            C25572a c25572a = mo1689a;
            if (mo1689a == null) {
                c25572a = new C25572a();
            }
            return c25572a;
        }

        /* renamed from: b */
        public static void m3207b(C25572a c25572a) {
            c25572a.f71575a = 0;
            c25572a.f71576b = null;
            c25572a.f71577c = null;
            f71574d.mo1688b(c25572a);
        }
    }

    /* renamed from: n3.b0.a.b0$b */
    /* loaded from: classes-dex2jar.jar:n3/b0/a/b0$b.class */
    public interface AbstractC25573b {
    }

    /* renamed from: a */
    public void m3215a(RecyclerView.AbstractC0313c0 abstractC0313c0) {
        C25572a orDefault = this.f71572a.getOrDefault(abstractC0313c0, null);
        C25572a c25572a = orDefault;
        if (orDefault == null) {
            c25572a = C25572a.m3208a();
            this.f71572a.put(abstractC0313c0, c25572a);
        }
        c25572a.f71575a |= 1;
    }

    /* renamed from: b */
    public void m3214b(RecyclerView.AbstractC0313c0 abstractC0313c0, RecyclerView.AbstractC0323l.C0326c c0326c) {
        C25572a orDefault = this.f71572a.getOrDefault(abstractC0313c0, null);
        C25572a c25572a = orDefault;
        if (orDefault == null) {
            c25572a = C25572a.m3208a();
            this.f71572a.put(abstractC0313c0, c25572a);
        }
        c25572a.f71577c = c0326c;
        c25572a.f71575a |= 8;
    }

    /* renamed from: c */
    public void m3213c(RecyclerView.AbstractC0313c0 abstractC0313c0, RecyclerView.AbstractC0323l.C0326c c0326c) {
        C25572a orDefault = this.f71572a.getOrDefault(abstractC0313c0, null);
        C25572a c25572a = orDefault;
        if (orDefault == null) {
            c25572a = C25572a.m3208a();
            this.f71572a.put(abstractC0313c0, c25572a);
        }
        c25572a.f71576b = c0326c;
        c25572a.f71575a |= 4;
    }

    /* renamed from: d */
    public boolean m3212d(RecyclerView.AbstractC0313c0 abstractC0313c0) {
        C25572a orDefault = this.f71572a.getOrDefault(abstractC0313c0, null);
        boolean z = true;
        if (orDefault == null || (orDefault.f71575a & 1) == 0) {
            z = false;
        }
        return z;
    }

    /* renamed from: e */
    public final RecyclerView.AbstractC0323l.C0326c m3211e(RecyclerView.AbstractC0313c0 abstractC0313c0, int i) {
        C25572a m2572p;
        RecyclerView.AbstractC0323l.C0326c c0326c;
        int m2579i = this.f71572a.m2579i(abstractC0313c0);
        if (m2579i >= 0 && (m2572p = this.f71572a.m2572p(m2579i)) != null) {
            int i2 = m2572p.f71575a;
            if ((i2 & i) == 0) {
                return null;
            }
            int i3 = (i ^ (-1)) & i2;
            m2572p.f71575a = i3;
            if (i == 4) {
                c0326c = m2572p.f71576b;
            } else if (i != 8) {
                throw new IllegalArgumentException("Must provide flag PRE or POST");
            } else {
                c0326c = m2572p.f71577c;
            }
            if ((i3 & 12) == 0) {
                this.f71572a.m2574n(m2579i);
                C25572a.m3207b(m2572p);
            }
            return c0326c;
        }
        return null;
    }

    /* renamed from: f */
    public void m3210f(RecyclerView.AbstractC0313c0 abstractC0313c0) {
        C25572a orDefault = this.f71572a.getOrDefault(abstractC0313c0, null);
        if (orDefault == null) {
            return;
        }
        orDefault.f71575a &= -2;
    }

    /* renamed from: g */
    public void m3209g(RecyclerView.AbstractC0313c0 abstractC0313c0) {
        int m2598m = this.f71573b.m2598m() - 1;
        while (true) {
            if (m2598m < 0) {
                break;
            } else if (abstractC0313c0 == this.f71573b.m2597n(m2598m)) {
                C26179e<RecyclerView.AbstractC0313c0> c26179e = this.f71573b;
                Object[] objArr = c26179e.f73002c;
                Object obj = objArr[m2598m];
                Object obj2 = C26179e.f72999e;
                if (obj != obj2) {
                    objArr[m2598m] = obj2;
                    c26179e.f73000a = true;
                }
            } else {
                m2598m--;
            }
        }
        C25572a remove = this.f71572a.remove(abstractC0313c0);
        if (remove != null) {
            C25572a.m3207b(remove);
        }
    }
}

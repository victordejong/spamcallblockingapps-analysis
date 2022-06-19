package androidx.recyclerview.widget;

import androidx.recyclerview.widget.RecyclerView;
import p020b.p036e.C1494d;
import p020b.p036e.C1502g;
import p020b.p041h.p049k.AbstractC1594e;
import p020b.p041h.p049k.C1595f;
/* renamed from: androidx.recyclerview.widget.p */
/* loaded from: classes-dex2jar.jar:androidx/recyclerview/widget/p.class */
public class C0989p {

    /* renamed from: a */
    final C1502g<RecyclerView.AbstractC0905b0, C0990a> f4392a = new C1502g<>();

    /* renamed from: b */
    final C1494d<RecyclerView.AbstractC0905b0> f4393b = new C1494d<>();

    /* renamed from: androidx.recyclerview.widget.p$a */
    /* loaded from: classes-dex2jar.jar:androidx/recyclerview/widget/p$a.class */
    public static class C0990a {

        /* renamed from: a */
        static AbstractC1594e<C0990a> f4394a = new C1595f(20);

        /* renamed from: b */
        int f4395b;

        /* renamed from: c */
        RecyclerView.AbstractC0915l.C0918c f4396c;

        /* renamed from: d */
        RecyclerView.AbstractC0915l.C0918c f4397d;

        private C0990a() {
        }

        /* renamed from: a */
        static void m31303a() {
            do {
            } while (f4394a.mo22686a() != null);
        }

        /* renamed from: b */
        static C0990a m31302b() {
            C0990a mo22686a = f4394a.mo22686a();
            C0990a c0990a = mo22686a;
            if (mo22686a == null) {
                c0990a = new C0990a();
            }
            return c0990a;
        }

        /* renamed from: c */
        static void m31301c(C0990a c0990a) {
            c0990a.f4395b = 0;
            c0990a.f4396c = null;
            c0990a.f4397d = null;
            f4394a.mo22685b(c0990a);
        }
    }

    /* renamed from: androidx.recyclerview.widget.p$b */
    /* loaded from: classes-dex2jar.jar:androidx/recyclerview/widget/p$b.class */
    public interface AbstractC0991b {
        /* renamed from: a */
        void mo31300a(RecyclerView.AbstractC0905b0 abstractC0905b0);

        /* renamed from: b */
        void mo31299b(RecyclerView.AbstractC0905b0 abstractC0905b0, RecyclerView.AbstractC0915l.C0918c c0918c, RecyclerView.AbstractC0915l.C0918c c0918c2);

        /* renamed from: c */
        void mo31298c(RecyclerView.AbstractC0905b0 abstractC0905b0, RecyclerView.AbstractC0915l.C0918c c0918c, RecyclerView.AbstractC0915l.C0918c c0918c2);

        /* renamed from: d */
        void mo31297d(RecyclerView.AbstractC0905b0 abstractC0905b0, RecyclerView.AbstractC0915l.C0918c c0918c, RecyclerView.AbstractC0915l.C0918c c0918c2);
    }

    /* renamed from: l */
    private RecyclerView.AbstractC0915l.C0918c m31309l(RecyclerView.AbstractC0905b0 abstractC0905b0, int i) {
        C0990a m29909m;
        RecyclerView.AbstractC0915l.C0918c c0918c;
        int m29913f = this.f4392a.m29913f(abstractC0905b0);
        if (m29913f >= 0 && (m29909m = this.f4392a.m29909m(m29913f)) != null) {
            int i2 = m29909m.f4395b;
            if ((i2 & i) == 0) {
                return null;
            }
            int i3 = (i ^ (-1)) & i2;
            m29909m.f4395b = i3;
            if (i == 4) {
                c0918c = m29909m.f4396c;
            } else if (i != 8) {
                throw new IllegalArgumentException("Must provide flag PRE or POST");
            } else {
                c0918c = m29909m.f4397d;
            }
            if ((i3 & 12) == 0) {
                this.f4392a.mo22746k(m29913f);
                C0990a.m31301c(m29909m);
            }
            return c0918c;
        }
        return null;
    }

    /* renamed from: a */
    public void m31320a(RecyclerView.AbstractC0905b0 abstractC0905b0, RecyclerView.AbstractC0915l.C0918c c0918c) {
        C0990a c0990a = this.f4392a.get(abstractC0905b0);
        C0990a c0990a2 = c0990a;
        if (c0990a == null) {
            c0990a2 = C0990a.m31302b();
            this.f4392a.put(abstractC0905b0, c0990a2);
        }
        c0990a2.f4395b |= 2;
        c0990a2.f4396c = c0918c;
    }

    /* renamed from: b */
    public void m31319b(RecyclerView.AbstractC0905b0 abstractC0905b0) {
        C0990a c0990a = this.f4392a.get(abstractC0905b0);
        C0990a c0990a2 = c0990a;
        if (c0990a == null) {
            c0990a2 = C0990a.m31302b();
            this.f4392a.put(abstractC0905b0, c0990a2);
        }
        c0990a2.f4395b |= 1;
    }

    /* renamed from: c */
    public void m31318c(long j, RecyclerView.AbstractC0905b0 abstractC0905b0) {
        this.f4393b.m29950l(j, abstractC0905b0);
    }

    /* renamed from: d */
    public void m31317d(RecyclerView.AbstractC0905b0 abstractC0905b0, RecyclerView.AbstractC0915l.C0918c c0918c) {
        C0990a c0990a = this.f4392a.get(abstractC0905b0);
        C0990a c0990a2 = c0990a;
        if (c0990a == null) {
            c0990a2 = C0990a.m31302b();
            this.f4392a.put(abstractC0905b0, c0990a2);
        }
        c0990a2.f4397d = c0918c;
        c0990a2.f4395b |= 8;
    }

    /* renamed from: e */
    public void m31316e(RecyclerView.AbstractC0905b0 abstractC0905b0, RecyclerView.AbstractC0915l.C0918c c0918c) {
        C0990a c0990a = this.f4392a.get(abstractC0905b0);
        C0990a c0990a2 = c0990a;
        if (c0990a == null) {
            c0990a2 = C0990a.m31302b();
            this.f4392a.put(abstractC0905b0, c0990a2);
        }
        c0990a2.f4396c = c0918c;
        c0990a2.f4395b |= 4;
    }

    /* renamed from: f */
    public void m31315f() {
        this.f4392a.clear();
        this.f4393b.m29957b();
    }

    /* renamed from: g */
    public RecyclerView.AbstractC0905b0 m31314g(long j) {
        return this.f4393b.m29954g(j);
    }

    /* renamed from: h */
    public boolean m31313h(RecyclerView.AbstractC0905b0 abstractC0905b0) {
        C0990a c0990a = this.f4392a.get(abstractC0905b0);
        boolean z = true;
        if (c0990a == null || (c0990a.f4395b & 1) == 0) {
            z = false;
        }
        return z;
    }

    /* renamed from: i */
    public boolean m31312i(RecyclerView.AbstractC0905b0 abstractC0905b0) {
        C0990a c0990a = this.f4392a.get(abstractC0905b0);
        return (c0990a == null || (c0990a.f4395b & 4) == 0) ? false : true;
    }

    /* renamed from: j */
    public void m31311j() {
        C0990a.m31303a();
    }

    /* renamed from: k */
    public void m31310k(RecyclerView.AbstractC0905b0 abstractC0905b0) {
        m31305p(abstractC0905b0);
    }

    /* renamed from: m */
    public RecyclerView.AbstractC0915l.C0918c m31308m(RecyclerView.AbstractC0905b0 abstractC0905b0) {
        return m31309l(abstractC0905b0, 8);
    }

    /* renamed from: n */
    public RecyclerView.AbstractC0915l.C0918c m31307n(RecyclerView.AbstractC0905b0 abstractC0905b0) {
        return m31309l(abstractC0905b0, 4);
    }

    /* renamed from: o */
    public void m31306o(AbstractC0991b abstractC0991b) {
        for (int size = this.f4392a.size() - 1; size >= 0; size--) {
            RecyclerView.AbstractC0905b0 m29910i = this.f4392a.m29910i(size);
            C0990a mo22746k = this.f4392a.mo22746k(size);
            int i = mo22746k.f4395b;
            if ((i & 3) == 3) {
                abstractC0991b.mo31300a(m29910i);
            } else if ((i & 1) != 0) {
                RecyclerView.AbstractC0915l.C0918c c0918c = mo22746k.f4396c;
                if (c0918c == null) {
                    abstractC0991b.mo31300a(m29910i);
                } else {
                    abstractC0991b.mo31298c(m29910i, c0918c, mo22746k.f4397d);
                }
            } else if ((i & 14) == 14) {
                abstractC0991b.mo31299b(m29910i, mo22746k.f4396c, mo22746k.f4397d);
            } else if ((i & 12) == 12) {
                abstractC0991b.mo31297d(m29910i, mo22746k.f4396c, mo22746k.f4397d);
            } else if ((i & 4) != 0) {
                abstractC0991b.mo31298c(m29910i, mo22746k.f4396c, null);
            } else if ((i & 8) != 0) {
                abstractC0991b.mo31299b(m29910i, mo22746k.f4396c, mo22746k.f4397d);
            }
            C0990a.m31301c(mo22746k);
        }
    }

    /* renamed from: p */
    public void m31305p(RecyclerView.AbstractC0905b0 abstractC0905b0) {
        C0990a c0990a = this.f4392a.get(abstractC0905b0);
        if (c0990a == null) {
            return;
        }
        c0990a.f4395b &= -2;
    }

    /* renamed from: q */
    public void m31304q(RecyclerView.AbstractC0905b0 abstractC0905b0) {
        int m29947o = this.f4393b.m29947o() - 1;
        while (true) {
            if (m29947o < 0) {
                break;
            } else if (abstractC0905b0 == this.f4393b.m29946p(m29947o)) {
                this.f4393b.m29948n(m29947o);
                break;
            } else {
                m29947o--;
            }
        }
        C0990a remove = this.f4392a.remove(abstractC0905b0);
        if (remove != null) {
            C0990a.m31301c(remove);
        }
    }
}

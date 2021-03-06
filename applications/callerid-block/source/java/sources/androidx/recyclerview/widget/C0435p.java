package androidx.recyclerview.widget;

import androidx.recyclerview.widget.RecyclerView$k;
import d.e.d;
import d.e.g;
import d.h.l.e;
import d.h.l.f;
/* renamed from: androidx.recyclerview.widget.p */
/* loaded from: classes-dex2jar.jar:androidx/recyclerview/widget/p.class */
public class C0435p {

    /* renamed from: a */
    final g<RecyclerView$a0, C0436a> f2412a = new g<>();

    /* renamed from: b */
    final d<RecyclerView$a0> f2413b = new d<>();

    /* renamed from: androidx.recyclerview.widget.p$a */
    /* loaded from: classes-dex2jar.jar:androidx/recyclerview/widget/p$a.class */
    public static class C0436a {

        /* renamed from: d */
        static e<C0436a> f2414d = new f(20);

        /* renamed from: a */
        int f2415a;

        /* renamed from: b */
        RecyclerView$k.C0413c f2416b;

        /* renamed from: c */
        RecyclerView$k.C0413c f2417c;

        private C0436a() {
        }

        /* renamed from: a */
        static void m12329a() {
            do {
            } while (f2414d.b() != null);
        }

        /* renamed from: b */
        static C0436a m12328b() {
            C0436a c0436a = (C0436a) f2414d.b();
            C0436a c0436a2 = c0436a;
            if (c0436a == null) {
                c0436a2 = new C0436a();
            }
            return c0436a2;
        }

        /* renamed from: c */
        static void m12327c(C0436a c0436a) {
            c0436a.f2415a = 0;
            c0436a.f2416b = null;
            c0436a.f2417c = null;
            f2414d.a(c0436a);
        }
    }

    /* renamed from: androidx.recyclerview.widget.p$b */
    /* loaded from: classes-dex2jar.jar:androidx/recyclerview/widget/p$b.class */
    interface AbstractC0437b {
        /* renamed from: a */
        void m12326a(RecyclerView$a0 recyclerView$a0);

        /* renamed from: b */
        void m12325b(RecyclerView$a0 recyclerView$a0, RecyclerView$k.C0413c c0413c, RecyclerView$k.C0413c c0413c2);

        /* renamed from: c */
        void m12324c(RecyclerView$a0 recyclerView$a0, RecyclerView$k.C0413c c0413c, RecyclerView$k.C0413c c0413c2);

        /* renamed from: d */
        void m12323d(RecyclerView$a0 recyclerView$a0, RecyclerView$k.C0413c c0413c, RecyclerView$k.C0413c c0413c2);
    }

    C0435p() {
    }

    /* renamed from: l */
    private RecyclerView$k.C0413c m12335l(RecyclerView$a0 recyclerView$a0, int i) {
        C0436a c0436a;
        RecyclerView$k.C0413c c0413c;
        int f = this.f2412a.f(recyclerView$a0);
        if (f >= 0 && (c0436a = (C0436a) this.f2412a.m(f)) != null) {
            int i2 = c0436a.f2415a;
            if ((i2 & i) == 0) {
                return null;
            }
            int i3 = (i ^ (-1)) & i2;
            c0436a.f2415a = i3;
            if (i == 4) {
                c0413c = c0436a.f2416b;
            } else if (i != 8) {
                throw new IllegalArgumentException("Must provide flag PRE or POST");
            } else {
                c0413c = c0436a.f2417c;
            }
            if ((i3 & 12) == 0) {
                this.f2412a.k(f);
                C0436a.m12327c(c0436a);
            }
            return c0413c;
        }
        return null;
    }

    /* renamed from: a */
    void m12346a(RecyclerView$a0 recyclerView$a0, RecyclerView$k.C0413c c0413c) {
        C0436a c0436a = (C0436a) this.f2412a.get(recyclerView$a0);
        C0436a c0436a2 = c0436a;
        if (c0436a == null) {
            c0436a2 = C0436a.m12328b();
            this.f2412a.put(recyclerView$a0, c0436a2);
        }
        c0436a2.f2415a |= 2;
        c0436a2.f2416b = c0413c;
    }

    /* renamed from: b */
    public void m12345b(RecyclerView$a0 recyclerView$a0) {
        C0436a c0436a = (C0436a) this.f2412a.get(recyclerView$a0);
        C0436a c0436a2 = c0436a;
        if (c0436a == null) {
            c0436a2 = C0436a.m12328b();
            this.f2412a.put(recyclerView$a0, c0436a2);
        }
        c0436a2.f2415a |= 1;
    }

    /* renamed from: c */
    void m12344c(long j, RecyclerView$a0 recyclerView$a0) {
        this.f2413b.j(j, recyclerView$a0);
    }

    /* renamed from: d */
    void m12343d(RecyclerView$a0 recyclerView$a0, RecyclerView$k.C0413c c0413c) {
        C0436a c0436a = (C0436a) this.f2412a.get(recyclerView$a0);
        C0436a c0436a2 = c0436a;
        if (c0436a == null) {
            c0436a2 = C0436a.m12328b();
            this.f2412a.put(recyclerView$a0, c0436a2);
        }
        c0436a2.f2417c = c0413c;
        c0436a2.f2415a |= 8;
    }

    /* renamed from: e */
    void m12342e(RecyclerView$a0 recyclerView$a0, RecyclerView$k.C0413c c0413c) {
        C0436a c0436a = (C0436a) this.f2412a.get(recyclerView$a0);
        C0436a c0436a2 = c0436a;
        if (c0436a == null) {
            c0436a2 = C0436a.m12328b();
            this.f2412a.put(recyclerView$a0, c0436a2);
        }
        c0436a2.f2416b = c0413c;
        c0436a2.f2415a |= 4;
    }

    /* renamed from: f */
    void m12341f() {
        this.f2412a.clear();
        this.f2413b.c();
    }

    /* renamed from: g */
    RecyclerView$a0 m12340g(long j) {
        return (RecyclerView$a0) this.f2413b.f(j);
    }

    /* renamed from: h */
    boolean m12339h(RecyclerView$a0 recyclerView$a0) {
        C0436a c0436a = (C0436a) this.f2412a.get(recyclerView$a0);
        boolean z = true;
        if (c0436a == null || (c0436a.f2415a & 1) == 0) {
            z = false;
        }
        return z;
    }

    /* renamed from: i */
    boolean m12338i(RecyclerView$a0 recyclerView$a0) {
        C0436a c0436a = (C0436a) this.f2412a.get(recyclerView$a0);
        return (c0436a == null || (c0436a.f2415a & 4) == 0) ? false : true;
    }

    /* renamed from: j */
    void m12337j() {
        C0436a.m12329a();
    }

    /* renamed from: k */
    public void m12336k(RecyclerView$a0 recyclerView$a0) {
        m12331p(recyclerView$a0);
    }

    /* renamed from: m */
    RecyclerView$k.C0413c m12334m(RecyclerView$a0 recyclerView$a0) {
        return m12335l(recyclerView$a0, 8);
    }

    /* renamed from: n */
    RecyclerView$k.C0413c m12333n(RecyclerView$a0 recyclerView$a0) {
        return m12335l(recyclerView$a0, 4);
    }

    /* renamed from: o */
    void m12332o(AbstractC0437b abstractC0437b) {
        RecyclerView$k.C0413c c0413c;
        RecyclerView$k.C0413c c0413c2;
        for (int size = this.f2412a.size() - 1; size >= 0; size--) {
            RecyclerView$a0 recyclerView$a0 = (RecyclerView$a0) this.f2412a.i(size);
            C0436a c0436a = (C0436a) this.f2412a.k(size);
            int i = c0436a.f2415a;
            if ((i & 3) != 3) {
                if ((i & 1) != 0) {
                    c0413c = c0436a.f2416b;
                    if (c0413c != null) {
                        c0413c2 = c0436a.f2417c;
                    }
                } else {
                    if ((i & 14) != 14) {
                        if ((i & 12) == 12) {
                            abstractC0437b.m12323d(recyclerView$a0, c0436a.f2416b, c0436a.f2417c);
                        } else if ((i & 4) != 0) {
                            c0413c = c0436a.f2416b;
                            c0413c2 = null;
                        } else if ((i & 8) == 0) {
                        }
                        C0436a.m12327c(c0436a);
                    }
                    abstractC0437b.m12325b(recyclerView$a0, c0436a.f2416b, c0436a.f2417c);
                    C0436a.m12327c(c0436a);
                }
                abstractC0437b.m12324c(recyclerView$a0, c0413c, c0413c2);
                C0436a.m12327c(c0436a);
            }
            abstractC0437b.m12326a(recyclerView$a0);
            C0436a.m12327c(c0436a);
        }
    }

    /* renamed from: p */
    public void m12331p(RecyclerView$a0 recyclerView$a0) {
        C0436a c0436a = (C0436a) this.f2412a.get(recyclerView$a0);
        if (c0436a == null) {
            return;
        }
        c0436a.f2415a &= -2;
    }

    /* renamed from: q */
    public void m12330q(RecyclerView$a0 recyclerView$a0) {
        int m = this.f2413b.m() - 1;
        while (true) {
            if (m < 0) {
                break;
            } else if (recyclerView$a0 == this.f2413b.n(m)) {
                this.f2413b.l(m);
                break;
            } else {
                m--;
            }
        }
        C0436a c0436a = (C0436a) this.f2412a.remove(recyclerView$a0);
        if (c0436a != null) {
            C0436a.m12327c(c0436a);
        }
    }
}

package androidx.recyclerview.widget;

import androidx.core.p025g.C0523e;
import androidx.p013b.C0378d;
import androidx.p013b.C0386g;
import androidx.recyclerview.widget.RecyclerView;
/* renamed from: androidx.recyclerview.widget.r */
/* loaded from: classes-dex2jar.jar:androidx/recyclerview/widget/r.class */
public class C1005r {

    /* renamed from: a */
    final C0386g<RecyclerView.AbstractC0948x, C1006a> f3424a = new C0386g<>();

    /* renamed from: b */
    final C0378d<RecyclerView.AbstractC0948x> f3425b = new C0378d<>();

    /* renamed from: androidx.recyclerview.widget.r$a */
    /* loaded from: classes-dex2jar.jar:androidx/recyclerview/widget/r$a.class */
    public static class C1006a {

        /* renamed from: d */
        static C0523e.AbstractC0524a<C1006a> f3426d = new C0523e.C0525b(20);

        /* renamed from: a */
        int f3427a;

        /* renamed from: b */
        RecyclerView.AbstractC0919f.C0922c f3428b;

        /* renamed from: c */
        RecyclerView.AbstractC0919f.C0922c f3429c;

        private C1006a() {
        }

        /* renamed from: a */
        static C1006a m18362a() {
            C1006a mo17021a = f3426d.mo17021a();
            C1006a c1006a = mo17021a;
            if (mo17021a == null) {
                c1006a = new C1006a();
            }
            return c1006a;
        }

        /* renamed from: a */
        static void m18361a(C1006a c1006a) {
            c1006a.f3427a = 0;
            c1006a.f3428b = null;
            c1006a.f3429c = null;
            f3426d.mo17020a(c1006a);
        }

        /* renamed from: b */
        static void m18360b() {
            do {
            } while (f3426d.mo17021a() != null);
        }
    }

    /* renamed from: androidx.recyclerview.widget.r$b */
    /* loaded from: classes-dex2jar.jar:androidx/recyclerview/widget/r$b.class */
    public interface AbstractC1007b {
        /* renamed from: a */
        void mo18359a(RecyclerView.AbstractC0948x abstractC0948x);

        /* renamed from: a */
        void mo18358a(RecyclerView.AbstractC0948x abstractC0948x, RecyclerView.AbstractC0919f.C0922c c0922c, RecyclerView.AbstractC0919f.C0922c c0922c2);

        /* renamed from: b */
        void mo18357b(RecyclerView.AbstractC0948x abstractC0948x, RecyclerView.AbstractC0919f.C0922c c0922c, RecyclerView.AbstractC0919f.C0922c c0922c2);

        /* renamed from: c */
        void mo18356c(RecyclerView.AbstractC0948x abstractC0948x, RecyclerView.AbstractC0919f.C0922c c0922c, RecyclerView.AbstractC0919f.C0922c c0922c2);
    }

    /* renamed from: a */
    private RecyclerView.AbstractC0919f.C0922c m18375a(RecyclerView.AbstractC0948x abstractC0948x, int i) {
        RecyclerView.AbstractC0919f.C0922c c0922c;
        RecyclerView.AbstractC0919f.C0922c c0922c2;
        int m21089a = this.f3424a.m21089a(abstractC0948x);
        if (m21089a < 0) {
            c0922c = null;
        } else {
            C1006a m21083c = this.f3424a.m21083c(m21089a);
            c0922c = null;
            if (m21083c != null) {
                c0922c = null;
                if ((m21083c.f3427a & i) != 0) {
                    m21083c.f3427a &= i ^ (-1);
                    if (i == 4) {
                        c0922c2 = m21083c.f3428b;
                    } else if (i != 8) {
                        throw new IllegalArgumentException("Must provide flag PRE or POST");
                    } else {
                        c0922c2 = m21083c.f3429c;
                    }
                    c0922c = c0922c2;
                    if ((m21083c.f3427a & 12) == 0) {
                        this.f3424a.mo17009d(m21089a);
                        C1006a.m18361a(m21083c);
                        c0922c = c0922c2;
                    }
                }
            }
        }
        return c0922c;
    }

    /* renamed from: a */
    public RecyclerView.AbstractC0948x m18378a(long j) {
        return this.f3425b.m21131a(j);
    }

    /* renamed from: a */
    public void m18379a() {
        this.f3424a.clear();
        this.f3425b.m21121d();
    }

    /* renamed from: a */
    public void m18377a(long j, RecyclerView.AbstractC0948x abstractC0948x) {
        this.f3425b.m21126b(j, abstractC0948x);
    }

    /* renamed from: a */
    public void m18374a(RecyclerView.AbstractC0948x abstractC0948x, RecyclerView.AbstractC0919f.C0922c c0922c) {
        C1006a c1006a = this.f3424a.get(abstractC0948x);
        C1006a c1006a2 = c1006a;
        if (c1006a == null) {
            c1006a2 = C1006a.m18362a();
            this.f3424a.put(abstractC0948x, c1006a2);
        }
        c1006a2.f3428b = c0922c;
        c1006a2.f3427a |= 4;
    }

    /* renamed from: a */
    public void m18373a(AbstractC1007b abstractC1007b) {
        for (int size = this.f3424a.size() - 1; size >= 0; size--) {
            RecyclerView.AbstractC0948x m21085b = this.f3424a.m21085b(size);
            C1006a mo17009d = this.f3424a.mo17009d(size);
            if ((mo17009d.f3427a & 3) == 3) {
                abstractC1007b.mo18359a(m21085b);
            } else if ((mo17009d.f3427a & 1) != 0) {
                if (mo17009d.f3428b == null) {
                    abstractC1007b.mo18359a(m21085b);
                } else {
                    abstractC1007b.mo18358a(m21085b, mo17009d.f3428b, mo17009d.f3429c);
                }
            } else if ((mo17009d.f3427a & 14) == 14) {
                abstractC1007b.mo18357b(m21085b, mo17009d.f3428b, mo17009d.f3429c);
            } else if ((mo17009d.f3427a & 12) == 12) {
                abstractC1007b.mo18356c(m21085b, mo17009d.f3428b, mo17009d.f3429c);
            } else if ((mo17009d.f3427a & 4) != 0) {
                abstractC1007b.mo18358a(m21085b, mo17009d.f3428b, null);
            } else if ((mo17009d.f3427a & 8) != 0) {
                abstractC1007b.mo18357b(m21085b, mo17009d.f3428b, mo17009d.f3429c);
            } else if ((mo17009d.f3427a & 2) != 0) {
            }
            C1006a.m18361a(mo17009d);
        }
    }

    /* renamed from: a */
    public boolean m18376a(RecyclerView.AbstractC0948x abstractC0948x) {
        C1006a c1006a = this.f3424a.get(abstractC0948x);
        return (c1006a == null || (c1006a.f3427a & 1) == 0) ? false : true;
    }

    /* renamed from: b */
    public RecyclerView.AbstractC0919f.C0922c m18371b(RecyclerView.AbstractC0948x abstractC0948x) {
        return m18375a(abstractC0948x, 4);
    }

    /* renamed from: b */
    public void m18372b() {
        C1006a.m18360b();
    }

    /* renamed from: b */
    public void m18370b(RecyclerView.AbstractC0948x abstractC0948x, RecyclerView.AbstractC0919f.C0922c c0922c) {
        C1006a c1006a = this.f3424a.get(abstractC0948x);
        C1006a c1006a2 = c1006a;
        if (c1006a == null) {
            c1006a2 = C1006a.m18362a();
            this.f3424a.put(abstractC0948x, c1006a2);
        }
        c1006a2.f3427a |= 2;
        c1006a2.f3428b = c0922c;
    }

    /* renamed from: c */
    public RecyclerView.AbstractC0919f.C0922c m18369c(RecyclerView.AbstractC0948x abstractC0948x) {
        return m18375a(abstractC0948x, 8);
    }

    /* renamed from: c */
    public void m18368c(RecyclerView.AbstractC0948x abstractC0948x, RecyclerView.AbstractC0919f.C0922c c0922c) {
        C1006a c1006a = this.f3424a.get(abstractC0948x);
        C1006a c1006a2 = c1006a;
        if (c1006a == null) {
            c1006a2 = C1006a.m18362a();
            this.f3424a.put(abstractC0948x, c1006a2);
        }
        c1006a2.f3429c = c0922c;
        c1006a2.f3427a |= 8;
    }

    /* renamed from: d */
    public boolean m18367d(RecyclerView.AbstractC0948x abstractC0948x) {
        C1006a c1006a = this.f3424a.get(abstractC0948x);
        return (c1006a == null || (c1006a.f3427a & 4) == 0) ? false : true;
    }

    /* renamed from: e */
    public void m18366e(RecyclerView.AbstractC0948x abstractC0948x) {
        C1006a c1006a = this.f3424a.get(abstractC0948x);
        C1006a c1006a2 = c1006a;
        if (c1006a == null) {
            c1006a2 = C1006a.m18362a();
            this.f3424a.put(abstractC0948x, c1006a2);
        }
        c1006a2.f3427a |= 1;
    }

    /* renamed from: f */
    public void m18365f(RecyclerView.AbstractC0948x abstractC0948x) {
        C1006a c1006a = this.f3424a.get(abstractC0948x);
        if (c1006a == null) {
            return;
        }
        c1006a.f3427a &= -2;
    }

    /* renamed from: g */
    public void m18364g(RecyclerView.AbstractC0948x abstractC0948x) {
        int m21129b = this.f3425b.m21129b() - 1;
        while (true) {
            if (m21129b < 0) {
                break;
            } else if (abstractC0948x == this.f3425b.m21124c(m21129b)) {
                this.f3425b.m21132a(m21129b);
                break;
            } else {
                m21129b--;
            }
        }
        C1006a remove = this.f3424a.remove(abstractC0948x);
        if (remove != null) {
            C1006a.m18361a(remove);
        }
    }

    /* renamed from: h */
    public void m18363h(RecyclerView.AbstractC0948x abstractC0948x) {
        m18365f(abstractC0948x);
    }
}

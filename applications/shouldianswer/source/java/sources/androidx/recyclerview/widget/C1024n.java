package androidx.recyclerview.widget;

import androidx.core.p022f.C0498d;
import androidx.p014c.C0374a;
import androidx.p014c.C0379d;
import androidx.recyclerview.widget.RecyclerView;
/* renamed from: androidx.recyclerview.widget.n */
/* loaded from: classes-dex2jar.jar:androidx/recyclerview/widget/n.class */
public class C1024n {

    /* renamed from: a */
    final C0374a<RecyclerView.AbstractC0977w, C1025a> f3217a = new C0374a<>();

    /* renamed from: b */
    final C0379d<RecyclerView.AbstractC0977w> f3218b = new C0379d<>();

    /* renamed from: androidx.recyclerview.widget.n$a */
    /* loaded from: classes-dex2jar.jar:androidx/recyclerview/widget/n$a.class */
    public static class C1025a {

        /* renamed from: d */
        static C0498d.AbstractC0499a<C1025a> f3219d = new C0498d.C0500b(20);

        /* renamed from: a */
        int f3220a;

        /* renamed from: b */
        RecyclerView.AbstractC0950f.C0953c f3221b;

        /* renamed from: c */
        RecyclerView.AbstractC0950f.C0953c f3222c;

        private C1025a() {
        }

        /* renamed from: a */
        static C1025a m4511a() {
            C1025a mo6465a = f3219d.mo6465a();
            C1025a c1025a = mo6465a;
            if (mo6465a == null) {
                c1025a = new C1025a();
            }
            return c1025a;
        }

        /* renamed from: a */
        static void m4510a(C1025a c1025a) {
            c1025a.f3220a = 0;
            c1025a.f3221b = null;
            c1025a.f3222c = null;
            f3219d.mo6464a(c1025a);
        }

        /* renamed from: b */
        static void m4509b() {
            do {
            } while (f3219d.mo6465a() != null);
        }
    }

    /* renamed from: androidx.recyclerview.widget.n$b */
    /* loaded from: classes-dex2jar.jar:androidx/recyclerview/widget/n$b.class */
    public interface AbstractC1026b {
        /* renamed from: a */
        void mo4508a(RecyclerView.AbstractC0977w abstractC0977w);

        /* renamed from: a */
        void mo4507a(RecyclerView.AbstractC0977w abstractC0977w, RecyclerView.AbstractC0950f.C0953c c0953c, RecyclerView.AbstractC0950f.C0953c c0953c2);

        /* renamed from: b */
        void mo4506b(RecyclerView.AbstractC0977w abstractC0977w, RecyclerView.AbstractC0950f.C0953c c0953c, RecyclerView.AbstractC0950f.C0953c c0953c2);

        /* renamed from: c */
        void mo4505c(RecyclerView.AbstractC0977w abstractC0977w, RecyclerView.AbstractC0950f.C0953c c0953c, RecyclerView.AbstractC0950f.C0953c c0953c2);
    }

    /* renamed from: a */
    private RecyclerView.AbstractC0950f.C0953c m4524a(RecyclerView.AbstractC0977w abstractC0977w, int i) {
        C1025a c;
        RecyclerView.AbstractC0950f.C0953c c0953c;
        int a = this.f3217a.m6815a(abstractC0977w);
        if (a < 0 || (c = this.f3217a.m6809c(a)) == null || (c.f3220a & i) == 0) {
            return null;
        }
        c.f3220a &= i ^ (-1);
        if (i == 4) {
            c0953c = c.f3221b;
        } else if (i != 8) {
            throw new IllegalArgumentException("Must provide flag PRE or POST");
        } else {
            c0953c = c.f3222c;
        }
        if ((c.f3220a & 12) == 0) {
            this.f3217a.m6808d(a);
            C1025a.m4510a(c);
        }
        return c0953c;
    }

    /* renamed from: a */
    public RecyclerView.AbstractC0977w m4527a(long j) {
        return this.f3218b.m6852a(j);
    }

    /* renamed from: a */
    public void m4528a() {
        this.f3217a.clear();
        this.f3218b.m6846c();
    }

    /* renamed from: a */
    public void m4526a(long j, RecyclerView.AbstractC0977w abstractC0977w) {
        this.f3218b.m6847b(j, abstractC0977w);
    }

    /* renamed from: a */
    public void m4523a(RecyclerView.AbstractC0977w abstractC0977w, RecyclerView.AbstractC0950f.C0953c c0953c) {
        C1025a c1025a = this.f3217a.get(abstractC0977w);
        C1025a c1025a2 = c1025a;
        if (c1025a == null) {
            c1025a2 = C1025a.m4511a();
            this.f3217a.put(abstractC0977w, c1025a2);
        }
        c1025a2.f3221b = c0953c;
        c1025a2.f3220a |= 4;
    }

    /* renamed from: a */
    public void m4522a(AbstractC1026b abstractC1026b) {
        for (int size = this.f3217a.size() - 1; size >= 0; size--) {
            RecyclerView.AbstractC0977w b = this.f3217a.m6811b(size);
            C1025a d = this.f3217a.m6808d(size);
            if ((d.f3220a & 3) == 3) {
                abstractC1026b.mo4508a(b);
            } else if ((d.f3220a & 1) != 0) {
                if (d.f3221b == null) {
                    abstractC1026b.mo4508a(b);
                } else {
                    abstractC1026b.mo4507a(b, d.f3221b, d.f3222c);
                }
            } else if ((d.f3220a & 14) == 14) {
                abstractC1026b.mo4506b(b, d.f3221b, d.f3222c);
            } else if ((d.f3220a & 12) == 12) {
                abstractC1026b.mo4505c(b, d.f3221b, d.f3222c);
            } else if ((d.f3220a & 4) != 0) {
                abstractC1026b.mo4507a(b, d.f3221b, null);
            } else if ((d.f3220a & 8) != 0) {
                abstractC1026b.mo4506b(b, d.f3221b, d.f3222c);
            } else {
                int i = d.f3220a;
            }
            C1025a.m4510a(d);
        }
    }

    /* renamed from: a */
    public boolean m4525a(RecyclerView.AbstractC0977w abstractC0977w) {
        C1025a c1025a = this.f3217a.get(abstractC0977w);
        boolean z = true;
        if (c1025a == null || (c1025a.f3220a & 1) == 0) {
            z = false;
        }
        return z;
    }

    /* renamed from: b */
    public RecyclerView.AbstractC0950f.C0953c m4520b(RecyclerView.AbstractC0977w abstractC0977w) {
        return m4524a(abstractC0977w, 4);
    }

    /* renamed from: b */
    public void m4521b() {
        C1025a.m4509b();
    }

    /* renamed from: b */
    public void m4519b(RecyclerView.AbstractC0977w abstractC0977w, RecyclerView.AbstractC0950f.C0953c c0953c) {
        C1025a c1025a = this.f3217a.get(abstractC0977w);
        C1025a c1025a2 = c1025a;
        if (c1025a == null) {
            c1025a2 = C1025a.m4511a();
            this.f3217a.put(abstractC0977w, c1025a2);
        }
        c1025a2.f3220a |= 2;
        c1025a2.f3221b = c0953c;
    }

    /* renamed from: c */
    public RecyclerView.AbstractC0950f.C0953c m4518c(RecyclerView.AbstractC0977w abstractC0977w) {
        return m4524a(abstractC0977w, 8);
    }

    /* renamed from: c */
    public void m4517c(RecyclerView.AbstractC0977w abstractC0977w, RecyclerView.AbstractC0950f.C0953c c0953c) {
        C1025a c1025a = this.f3217a.get(abstractC0977w);
        C1025a c1025a2 = c1025a;
        if (c1025a == null) {
            c1025a2 = C1025a.m4511a();
            this.f3217a.put(abstractC0977w, c1025a2);
        }
        c1025a2.f3222c = c0953c;
        c1025a2.f3220a |= 8;
    }

    /* renamed from: d */
    public boolean m4516d(RecyclerView.AbstractC0977w abstractC0977w) {
        C1025a c1025a = this.f3217a.get(abstractC0977w);
        return (c1025a == null || (c1025a.f3220a & 4) == 0) ? false : true;
    }

    /* renamed from: e */
    public void m4515e(RecyclerView.AbstractC0977w abstractC0977w) {
        C1025a c1025a = this.f3217a.get(abstractC0977w);
        C1025a c1025a2 = c1025a;
        if (c1025a == null) {
            c1025a2 = C1025a.m4511a();
            this.f3217a.put(abstractC0977w, c1025a2);
        }
        c1025a2.f3220a |= 1;
    }

    /* renamed from: f */
    public void m4514f(RecyclerView.AbstractC0977w abstractC0977w) {
        C1025a c1025a = this.f3217a.get(abstractC0977w);
        if (c1025a == null) {
            return;
        }
        c1025a.f3220a &= -2;
    }

    /* renamed from: g */
    public void m4513g(RecyclerView.AbstractC0977w abstractC0977w) {
        int m6850b = this.f3218b.m6850b() - 1;
        while (true) {
            if (m6850b < 0) {
                break;
            } else if (abstractC0977w == this.f3218b.m6845c(m6850b)) {
                this.f3218b.m6853a(m6850b);
                break;
            } else {
                m6850b--;
            }
        }
        C1025a remove = this.f3217a.remove(abstractC0977w);
        if (remove != null) {
            C1025a.m4510a(remove);
        }
    }

    /* renamed from: h */
    public void m4512h(RecyclerView.AbstractC0977w abstractC0977w) {
        m4514f(abstractC0977w);
    }
}

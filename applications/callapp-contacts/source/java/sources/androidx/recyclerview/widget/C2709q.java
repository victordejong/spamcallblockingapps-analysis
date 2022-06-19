package androidx.recyclerview.widget;

import androidx.core.p036e.C0829c;
import androidx.p023b.C0433d;
import androidx.p023b.C0441g;
import androidx.recyclerview.widget.RecyclerView;
/* renamed from: androidx.recyclerview.widget.q */
/* loaded from: classes-dex2jar.jar:androidx/recyclerview/widget/q.class */
public final class C2709q {

    /* renamed from: a */
    final C0441g<RecyclerView.AbstractC2657v, C2710a> f10321a = new C0441g<>();

    /* renamed from: b */
    final C0433d<RecyclerView.AbstractC2657v> f10322b = new C0433d<>();

    /* renamed from: androidx.recyclerview.widget.q$a */
    /* loaded from: classes-dex2jar.jar:androidx/recyclerview/widget/q$a.class */
    public static final class C2710a {

        /* renamed from: d */
        static C0829c.AbstractC0830a<C2710a> f10323d = new C0829c.C0831b(20);

        /* renamed from: a */
        int f10324a;

        /* renamed from: b */
        RecyclerView.AbstractC2632f.C2634b f10325b;

        /* renamed from: c */
        RecyclerView.AbstractC2632f.C2634b f10326c;

        private C2710a() {
        }

        /* renamed from: a */
        static C2710a m40010a() {
            C2710a mo37607a = f10323d.mo37607a();
            C2710a c2710a = mo37607a;
            if (mo37607a == null) {
                c2710a = new C2710a();
            }
            return c2710a;
        }

        /* renamed from: a */
        static void m40009a(C2710a c2710a) {
            c2710a.f10324a = 0;
            c2710a.f10325b = null;
            c2710a.f10326c = null;
            f10323d.mo37606a(c2710a);
        }

        /* renamed from: b */
        public static void m40008b() {
            do {
            } while (f10323d.mo37607a() != null);
        }
    }

    /* renamed from: androidx.recyclerview.widget.q$b */
    /* loaded from: classes-dex2jar.jar:androidx/recyclerview/widget/q$b.class */
    public interface AbstractC2711b {
        /* renamed from: a */
        void mo40007a(RecyclerView.AbstractC2657v abstractC2657v);

        /* renamed from: a */
        void mo40006a(RecyclerView.AbstractC2657v abstractC2657v, RecyclerView.AbstractC2632f.C2634b c2634b, RecyclerView.AbstractC2632f.C2634b c2634b2);

        /* renamed from: b */
        void mo40005b(RecyclerView.AbstractC2657v abstractC2657v, RecyclerView.AbstractC2632f.C2634b c2634b, RecyclerView.AbstractC2632f.C2634b c2634b2);

        /* renamed from: c */
        void mo40004c(RecyclerView.AbstractC2657v abstractC2657v, RecyclerView.AbstractC2632f.C2634b c2634b, RecyclerView.AbstractC2632f.C2634b c2634b2);
    }

    /* renamed from: a */
    public final RecyclerView.AbstractC2632f.C2634b m40019a(RecyclerView.AbstractC2657v abstractC2657v, int i) {
        C2710a m45515c;
        RecyclerView.AbstractC2632f.C2634b c2634b;
        int m45521a = this.f10321a.m45521a(abstractC2657v);
        if (m45521a < 0 || (m45515c = this.f10321a.m45515c(m45521a)) == null || (m45515c.f10324a & i) == 0) {
            return null;
        }
        m45515c.f10324a &= i ^ (-1);
        if (i == 4) {
            c2634b = m45515c.f10325b;
        } else if (i != 8) {
            throw new IllegalArgumentException("Must provide flag PRE or POST");
        } else {
            c2634b = m45515c.f10326c;
        }
        if ((m45515c.f10324a & 12) == 0) {
            this.f10321a.mo37600d(m45521a);
            C2710a.m40009a(m45515c);
        }
        return c2634b;
    }

    /* renamed from: a */
    public final RecyclerView.AbstractC2657v m40022a(long j) {
        return this.f10322b.m45549a(j, null);
    }

    /* renamed from: a */
    public final void m40023a() {
        this.f10321a.clear();
        this.f10322b.m45540d();
    }

    /* renamed from: a */
    public final void m40021a(long j, RecyclerView.AbstractC2657v abstractC2657v) {
        this.f10322b.m45545b(j, abstractC2657v);
    }

    /* renamed from: a */
    public final void m40018a(RecyclerView.AbstractC2657v abstractC2657v, RecyclerView.AbstractC2632f.C2634b c2634b) {
        C2710a c2710a = this.f10321a.get(abstractC2657v);
        C2710a c2710a2 = c2710a;
        if (c2710a == null) {
            c2710a2 = C2710a.m40010a();
            this.f10321a.put(abstractC2657v, c2710a2);
        }
        c2710a2.f10325b = c2634b;
        c2710a2.f10324a |= 4;
    }

    /* renamed from: a */
    public final void m40017a(AbstractC2711b abstractC2711b) {
        for (int size = this.f10321a.size() - 1; size >= 0; size--) {
            RecyclerView.AbstractC2657v m45517b = this.f10321a.m45517b(size);
            C2710a mo37600d = this.f10321a.mo37600d(size);
            if ((mo37600d.f10324a & 3) == 3) {
                abstractC2711b.mo40007a(m45517b);
            } else if ((mo37600d.f10324a & 1) != 0) {
                if (mo37600d.f10325b == null) {
                    abstractC2711b.mo40007a(m45517b);
                } else {
                    abstractC2711b.mo40006a(m45517b, mo37600d.f10325b, mo37600d.f10326c);
                }
            } else if ((mo37600d.f10324a & 14) == 14) {
                abstractC2711b.mo40005b(m45517b, mo37600d.f10325b, mo37600d.f10326c);
            } else if ((mo37600d.f10324a & 12) == 12) {
                abstractC2711b.mo40004c(m45517b, mo37600d.f10325b, mo37600d.f10326c);
            } else if ((mo37600d.f10324a & 4) != 0) {
                abstractC2711b.mo40006a(m45517b, mo37600d.f10325b, null);
            } else if ((mo37600d.f10324a & 8) != 0) {
                abstractC2711b.mo40005b(m45517b, mo37600d.f10325b, mo37600d.f10326c);
            }
            C2710a.m40009a(mo37600d);
        }
    }

    /* renamed from: a */
    public final boolean m40020a(RecyclerView.AbstractC2657v abstractC2657v) {
        C2710a c2710a = this.f10321a.get(abstractC2657v);
        return (c2710a == null || (c2710a.f10324a & 1) == 0) ? false : true;
    }

    /* renamed from: b */
    public final void m40015b(RecyclerView.AbstractC2657v abstractC2657v, RecyclerView.AbstractC2632f.C2634b c2634b) {
        C2710a c2710a = this.f10321a.get(abstractC2657v);
        C2710a c2710a2 = c2710a;
        if (c2710a == null) {
            c2710a2 = C2710a.m40010a();
            this.f10321a.put(abstractC2657v, c2710a2);
        }
        c2710a2.f10324a |= 2;
        c2710a2.f10325b = c2634b;
    }

    /* renamed from: b */
    public final boolean m40016b(RecyclerView.AbstractC2657v abstractC2657v) {
        C2710a c2710a = this.f10321a.get(abstractC2657v);
        return (c2710a == null || (c2710a.f10324a & 4) == 0) ? false : true;
    }

    /* renamed from: c */
    public final void m40014c(RecyclerView.AbstractC2657v abstractC2657v) {
        C2710a c2710a = this.f10321a.get(abstractC2657v);
        C2710a c2710a2 = c2710a;
        if (c2710a == null) {
            c2710a2 = C2710a.m40010a();
            this.f10321a.put(abstractC2657v, c2710a2);
        }
        c2710a2.f10324a |= 1;
    }

    /* renamed from: c */
    public final void m40013c(RecyclerView.AbstractC2657v abstractC2657v, RecyclerView.AbstractC2632f.C2634b c2634b) {
        C2710a c2710a = this.f10321a.get(abstractC2657v);
        C2710a c2710a2 = c2710a;
        if (c2710a == null) {
            c2710a2 = C2710a.m40010a();
            this.f10321a.put(abstractC2657v, c2710a2);
        }
        c2710a2.f10326c = c2634b;
        c2710a2.f10324a |= 8;
    }

    /* renamed from: d */
    public final void m40012d(RecyclerView.AbstractC2657v abstractC2657v) {
        C2710a c2710a = this.f10321a.get(abstractC2657v);
        if (c2710a == null) {
            return;
        }
        c2710a.f10324a &= -2;
    }

    /* renamed from: e */
    public final void m40011e(RecyclerView.AbstractC2657v abstractC2657v) {
        int m45548b = this.f10322b.m45548b() - 1;
        while (true) {
            if (m45548b < 0) {
                break;
            } else if (abstractC2657v == this.f10322b.m45543c(m45548b)) {
                this.f10322b.m45551a(m45548b);
                break;
            } else {
                m45548b--;
            }
        }
        C2710a remove = this.f10321a.remove(abstractC2657v);
        if (remove != null) {
            C2710a.m40009a(remove);
        }
    }
}

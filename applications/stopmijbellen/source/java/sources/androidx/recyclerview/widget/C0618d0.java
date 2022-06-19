package androidx.recyclerview.widget;

import androidx.recyclerview.widget.RecyclerView;
import p152l0.C3428c;
import p226s.C4255d;
import p226s.C4263g;
/* renamed from: androidx.recyclerview.widget.d0 */
/* loaded from: classes-dex2jar.jar:androidx/recyclerview/widget/d0.class */
public class C0618d0 {

    /* renamed from: a */
    public final C4263g<RecyclerView.AbstractC0558a0, C0619a> f2414a = new C4263g<>();

    /* renamed from: b */
    public final C4255d<RecyclerView.AbstractC0558a0> f2415b = new C4255d<>();

    /* renamed from: androidx.recyclerview.widget.d0$a */
    /* loaded from: classes-dex2jar.jar:androidx/recyclerview/widget/d0$a.class */
    public static class C0619a {

        /* renamed from: d */
        public static C3428c f2416d = new C3428c(20);

        /* renamed from: a */
        public int f2417a;

        /* renamed from: b */
        public RecyclerView.AbstractC0567j.C0570c f2418b;

        /* renamed from: c */
        public RecyclerView.AbstractC0567j.C0570c f2419c;

        /* renamed from: a */
        public static C0619a m7581a() {
            C0619a c0619a = (C0619a) f2416d.mo2303a();
            C0619a c0619a2 = c0619a;
            if (c0619a == null) {
                c0619a2 = new C0619a();
            }
            return c0619a2;
        }

        /* renamed from: b */
        public static void m7580b(C0619a c0619a) {
            c0619a.f2417a = 0;
            c0619a.f2418b = null;
            c0619a.f2419c = null;
            f2416d.mo2302b(c0619a);
        }
    }

    /* renamed from: androidx.recyclerview.widget.d0$b */
    /* loaded from: classes-dex2jar.jar:androidx/recyclerview/widget/d0$b.class */
    public interface AbstractC0620b {
    }

    /* renamed from: a */
    public void m7588a(RecyclerView.AbstractC0558a0 abstractC0558a0) {
        C0619a orDefault = this.f2414a.getOrDefault(abstractC0558a0, null);
        C0619a c0619a = orDefault;
        if (orDefault == null) {
            c0619a = C0619a.m7581a();
            this.f2414a.put(abstractC0558a0, c0619a);
        }
        c0619a.f2417a |= 1;
    }

    /* renamed from: b */
    public void m7587b(RecyclerView.AbstractC0558a0 abstractC0558a0, RecyclerView.AbstractC0567j.C0570c c0570c) {
        C0619a orDefault = this.f2414a.getOrDefault(abstractC0558a0, null);
        C0619a c0619a = orDefault;
        if (orDefault == null) {
            c0619a = C0619a.m7581a();
            this.f2414a.put(abstractC0558a0, c0619a);
        }
        c0619a.f2419c = c0570c;
        c0619a.f2417a |= 8;
    }

    /* renamed from: c */
    public void m7586c(RecyclerView.AbstractC0558a0 abstractC0558a0, RecyclerView.AbstractC0567j.C0570c c0570c) {
        C0619a orDefault = this.f2414a.getOrDefault(abstractC0558a0, null);
        C0619a c0619a = orDefault;
        if (orDefault == null) {
            c0619a = C0619a.m7581a();
            this.f2414a.put(abstractC0558a0, c0619a);
        }
        c0619a.f2418b = c0570c;
        c0619a.f2417a |= 4;
    }

    /* renamed from: d */
    public boolean m7585d(RecyclerView.AbstractC0558a0 abstractC0558a0) {
        C0619a orDefault = this.f2414a.getOrDefault(abstractC0558a0, null);
        boolean z = true;
        if (orDefault == null || (orDefault.f2417a & 1) == 0) {
            z = false;
        }
        return z;
    }

    /* renamed from: e */
    public final RecyclerView.AbstractC0567j.C0570c m7584e(RecyclerView.AbstractC0558a0 abstractC0558a0, int i) {
        C0619a m1192k;
        RecyclerView.AbstractC0567j.C0570c c0570c;
        int m1198e = this.f2414a.m1198e(abstractC0558a0);
        if (m1198e >= 0 && (m1192k = this.f2414a.m1192k(m1198e)) != null) {
            int i2 = m1192k.f2417a;
            if ((i2 & i) == 0) {
                return null;
            }
            int i3 = (i ^ (-1)) & i2;
            m1192k.f2417a = i3;
            if (i == 4) {
                c0570c = m1192k.f2418b;
            } else if (i != 8) {
                throw new IllegalArgumentException("Must provide flag PRE or POST");
            } else {
                c0570c = m1192k.f2419c;
            }
            if ((i3 & 12) == 0) {
                this.f2414a.m1194i(m1198e);
                C0619a.m7580b(m1192k);
            }
            return c0570c;
        }
        return null;
    }

    /* renamed from: f */
    public void m7583f(RecyclerView.AbstractC0558a0 abstractC0558a0) {
        C0619a orDefault = this.f2414a.getOrDefault(abstractC0558a0, null);
        if (orDefault == null) {
            return;
        }
        orDefault.f2417a &= -2;
    }

    /* renamed from: g */
    public void m7582g(RecyclerView.AbstractC0558a0 abstractC0558a0) {
        int m1217h = this.f2415b.m1217h() - 1;
        while (true) {
            if (m1217h < 0) {
                break;
            } else if (abstractC0558a0 == this.f2415b.m1216i(m1217h)) {
                C4255d<RecyclerView.AbstractC0558a0> c4255d = this.f2415b;
                Object[] objArr = c4255d.f13342c;
                Object obj = objArr[m1217h];
                Object obj2 = C4255d.f13339e;
                if (obj != obj2) {
                    objArr[m1217h] = obj2;
                    c4255d.f13340a = true;
                }
            } else {
                m1217h--;
            }
        }
        C0619a remove = this.f2414a.remove(abstractC0558a0);
        if (remove != null) {
            C0619a.m7580b(remove);
        }
    }
}

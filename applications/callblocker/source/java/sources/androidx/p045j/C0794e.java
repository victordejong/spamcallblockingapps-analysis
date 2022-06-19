package androidx.p045j;

import android.annotation.SuppressLint;
import android.graphics.Rect;
import android.view.View;
import android.view.ViewGroup;
import androidx.fragment.app.AbstractC0708r;
import androidx.p045j.AbstractC0807m;
import java.util.ArrayList;
import java.util.List;
@SuppressLint({"RestrictedApi"})
/* renamed from: androidx.j.e */
/* loaded from: classes-dex2jar.jar:androidx/j/e.class */
public class C0794e extends AbstractC0708r {
    /* renamed from: a */
    private static boolean m19447a(AbstractC0807m abstractC0807m) {
        return !m19609a((List) abstractC0807m.m19401f()) || !m19609a((List) abstractC0807m.m19399h()) || !m19609a((List) abstractC0807m.m19398i());
    }

    @Override // androidx.fragment.app.AbstractC0708r
    /* renamed from: a */
    public Object mo19442a(Object obj, Object obj2, Object obj3) {
        C0819q c0819q = new C0819q();
        if (obj != null) {
            c0819q.m19371a((AbstractC0807m) obj);
        }
        if (obj2 != null) {
            c0819q.m19371a((AbstractC0807m) obj2);
        }
        if (obj3 != null) {
            c0819q.m19371a((AbstractC0807m) obj3);
        }
        return c0819q;
    }

    @Override // androidx.fragment.app.AbstractC0708r
    /* renamed from: a */
    public void mo19448a(ViewGroup viewGroup, Object obj) {
        C0815o.m19385a(viewGroup, (AbstractC0807m) obj);
    }

    @Override // androidx.fragment.app.AbstractC0708r
    /* renamed from: a */
    public void mo19445a(Object obj, final Rect rect) {
        if (obj != null) {
            ((AbstractC0807m) obj).mo19373a(new AbstractC0807m.AbstractC0812b() { // from class: androidx.j.e.4
            });
        }
    }

    @Override // androidx.fragment.app.AbstractC0708r
    /* renamed from: a */
    public void mo19444a(Object obj, View view) {
        if (view != null) {
            final Rect rect = new Rect();
            m19615a(view, rect);
            ((AbstractC0807m) obj).mo19373a(new AbstractC0807m.AbstractC0812b() { // from class: androidx.j.e.1
            });
        }
    }

    @Override // androidx.fragment.app.AbstractC0708r
    /* renamed from: a */
    public void mo19443a(Object obj, View view, ArrayList<View> arrayList) {
        C0819q c0819q = (C0819q) obj;
        List<View> g = c0819q.m19400g();
        g.clear();
        int size = arrayList.size();
        for (int i = 0; i < size; i++) {
            m19608a(g, arrayList.get(i));
        }
        g.add(view);
        arrayList.add(view);
        mo19440a(c0819q, arrayList);
    }

    @Override // androidx.fragment.app.AbstractC0708r
    /* renamed from: a */
    public void mo19441a(Object obj, final Object obj2, final ArrayList<View> arrayList, final Object obj3, final ArrayList<View> arrayList2, final Object obj4, final ArrayList<View> arrayList3) {
        ((AbstractC0807m) obj).mo19372a(new C0814n() { // from class: androidx.j.e.3
            @Override // androidx.p045j.C0814n, androidx.p045j.AbstractC0807m.AbstractC0813c
            /* renamed from: b */
            public void mo19347b(AbstractC0807m abstractC0807m) {
                abstractC0807m.mo19364b(this);
            }

            @Override // androidx.p045j.C0814n, androidx.p045j.AbstractC0807m.AbstractC0813c
            /* renamed from: e */
            public void mo19346e(AbstractC0807m abstractC0807m) {
                if (obj2 != null) {
                    C0794e.this.mo19434b(obj2, arrayList, (ArrayList<View>) null);
                }
                if (obj3 != null) {
                    C0794e.this.mo19434b(obj3, arrayList2, (ArrayList<View>) null);
                }
                if (obj4 != null) {
                    C0794e.this.mo19434b(obj4, arrayList3, (ArrayList<View>) null);
                }
            }
        });
    }

    @Override // androidx.fragment.app.AbstractC0708r
    /* renamed from: a */
    public void mo19440a(Object obj, ArrayList<View> arrayList) {
        AbstractC0807m abstractC0807m = (AbstractC0807m) obj;
        if (abstractC0807m == null) {
            return;
        }
        if (abstractC0807m instanceof C0819q) {
            C0819q c0819q = (C0819q) abstractC0807m;
            int m19349r = c0819q.m19349r();
            for (int i = 0; i < m19349r; i++) {
                mo19440a(c0819q.m19368b(i), arrayList);
            }
        } else if (!m19447a(abstractC0807m) && m19609a((List) abstractC0807m.m19400g())) {
            int size = arrayList.size();
            for (int i2 = 0; i2 < size; i2++) {
                abstractC0807m.mo19365b(arrayList.get(i2));
            }
        }
    }

    @Override // androidx.fragment.app.AbstractC0708r
    /* renamed from: a */
    public void mo19439a(Object obj, ArrayList<View> arrayList, ArrayList<View> arrayList2) {
        C0819q c0819q = (C0819q) obj;
        if (c0819q != null) {
            c0819q.m19400g().clear();
            c0819q.m19400g().addAll(arrayList2);
            mo19434b((Object) c0819q, arrayList, arrayList2);
        }
    }

    @Override // androidx.fragment.app.AbstractC0708r
    /* renamed from: a */
    public boolean mo19446a(Object obj) {
        return obj instanceof AbstractC0807m;
    }

    @Override // androidx.fragment.app.AbstractC0708r
    /* renamed from: b */
    public Object mo19438b(Object obj) {
        AbstractC0807m abstractC0807m = null;
        if (obj != null) {
            abstractC0807m = ((AbstractC0807m) obj).clone();
        }
        return abstractC0807m;
    }

    @Override // androidx.fragment.app.AbstractC0708r
    /* renamed from: b */
    public Object mo19435b(Object obj, Object obj2, Object obj3) {
        C0819q c0819q = (AbstractC0807m) obj;
        AbstractC0807m abstractC0807m = (AbstractC0807m) obj2;
        AbstractC0807m abstractC0807m2 = (AbstractC0807m) obj3;
        if (c0819q != null && abstractC0807m != null) {
            c0819q = new C0819q().m19371a(c0819q).m19371a(abstractC0807m).m19378a(1);
        } else if (c0819q == null) {
            c0819q = null;
            if (abstractC0807m != null) {
                c0819q = abstractC0807m;
            }
        }
        if (abstractC0807m2 != null) {
            C0819q c0819q2 = new C0819q();
            if (c0819q != null) {
                c0819q2.m19371a(c0819q);
            }
            c0819q2.m19371a(abstractC0807m2);
            c0819q = c0819q2;
        }
        return c0819q;
    }

    @Override // androidx.fragment.app.AbstractC0708r
    /* renamed from: b */
    public void mo19437b(Object obj, View view) {
        if (obj != null) {
            ((AbstractC0807m) obj).mo19365b(view);
        }
    }

    @Override // androidx.fragment.app.AbstractC0708r
    /* renamed from: b */
    public void mo19436b(Object obj, final View view, final ArrayList<View> arrayList) {
        ((AbstractC0807m) obj).mo19372a(new AbstractC0807m.AbstractC0813c() { // from class: androidx.j.e.2
            @Override // androidx.p045j.AbstractC0807m.AbstractC0813c
            /* renamed from: a */
            public void mo19389a(AbstractC0807m abstractC0807m) {
            }

            @Override // androidx.p045j.AbstractC0807m.AbstractC0813c
            /* renamed from: b */
            public void mo19347b(AbstractC0807m abstractC0807m) {
                abstractC0807m.mo19364b(this);
                view.setVisibility(8);
                int size = arrayList.size();
                for (int i = 0; i < size; i++) {
                    ((View) arrayList.get(i)).setVisibility(0);
                }
            }

            @Override // androidx.p045j.AbstractC0807m.AbstractC0813c
            /* renamed from: c */
            public void mo19388c(AbstractC0807m abstractC0807m) {
            }

            @Override // androidx.p045j.AbstractC0807m.AbstractC0813c
            /* renamed from: d */
            public void mo19387d(AbstractC0807m abstractC0807m) {
            }

            @Override // androidx.p045j.AbstractC0807m.AbstractC0813c
            /* renamed from: e */
            public void mo19346e(AbstractC0807m abstractC0807m) {
            }
        });
    }

    @Override // androidx.fragment.app.AbstractC0708r
    /* renamed from: b */
    public void mo19434b(Object obj, ArrayList<View> arrayList, ArrayList<View> arrayList2) {
        AbstractC0807m abstractC0807m = (AbstractC0807m) obj;
        if (abstractC0807m instanceof C0819q) {
            C0819q c0819q = (C0819q) abstractC0807m;
            int m19349r = c0819q.m19349r();
            for (int i = 0; i < m19349r; i++) {
                mo19434b((Object) c0819q.m19368b(i), arrayList, arrayList2);
            }
        } else if (!m19447a(abstractC0807m)) {
            List<View> m19400g = abstractC0807m.m19400g();
            if (m19400g.size() != arrayList.size() || !m19400g.containsAll(arrayList)) {
                return;
            }
            int size = arrayList2 == null ? 0 : arrayList2.size();
            for (int i2 = 0; i2 < size; i2++) {
                abstractC0807m.mo19365b(arrayList2.get(i2));
            }
            for (int size2 = arrayList.size() - 1; size2 >= 0; size2--) {
                abstractC0807m.mo19361c(arrayList.get(size2));
            }
        }
    }

    @Override // androidx.fragment.app.AbstractC0708r
    /* renamed from: c */
    public Object mo19433c(Object obj) {
        C0819q c0819q;
        if (obj == null) {
            c0819q = null;
        } else {
            C0819q c0819q2 = new C0819q();
            c0819q2.m19371a((AbstractC0807m) obj);
            c0819q = c0819q2;
        }
        return c0819q;
    }

    @Override // androidx.fragment.app.AbstractC0708r
    /* renamed from: c */
    public void mo19432c(Object obj, View view) {
        if (obj != null) {
            ((AbstractC0807m) obj).mo19361c(view);
        }
    }
}

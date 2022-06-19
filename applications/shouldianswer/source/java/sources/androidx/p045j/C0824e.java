package androidx.p045j;

import android.graphics.Rect;
import android.view.View;
import android.view.ViewGroup;
import androidx.fragment.app.AbstractC0751o;
import androidx.p045j.AbstractC0838n;
import java.util.ArrayList;
import java.util.List;
/* renamed from: androidx.j.e */
/* loaded from: classes-dex2jar.jar:androidx/j/e.class */
public class C0824e extends AbstractC0751o {
    /* renamed from: a */
    private static boolean m5282a(AbstractC0838n abstractC0838n) {
        return !m5416a((List) abstractC0838n.getTargetIds()) || !m5416a((List) abstractC0838n.getTargetNames()) || !m5416a((List) abstractC0838n.getTargetTypes());
    }

    @Override // androidx.fragment.app.AbstractC0751o
    /* renamed from: a */
    public Object mo5277a(Object obj, Object obj2, Object obj3) {
        C0851r c0851r = new C0851r();
        if (obj != null) {
            c0851r.m5236a((AbstractC0838n) obj);
        }
        if (obj2 != null) {
            c0851r.m5236a((AbstractC0838n) obj2);
        }
        if (obj3 != null) {
            c0851r.m5236a((AbstractC0838n) obj3);
        }
        return c0851r;
    }

    @Override // androidx.fragment.app.AbstractC0751o
    /* renamed from: a */
    public void mo5283a(ViewGroup viewGroup, Object obj) {
        C0847p.m5250a(viewGroup, (AbstractC0838n) obj);
    }

    @Override // androidx.fragment.app.AbstractC0751o
    /* renamed from: a */
    public void mo5280a(Object obj, final Rect rect) {
        if (obj != null) {
            ((AbstractC0838n) obj).setEpicenterCallback(new AbstractC0838n.AbstractC0844c() { // from class: androidx.j.e.4
                @Override // androidx.p045j.AbstractC0838n.AbstractC0844c
                /* renamed from: a */
                public Rect mo5255a(AbstractC0838n abstractC0838n) {
                    Rect rect2 = rect;
                    if (rect2 == null || rect2.isEmpty()) {
                        return null;
                    }
                    return rect;
                }
            });
        }
    }

    @Override // androidx.fragment.app.AbstractC0751o
    /* renamed from: a */
    public void mo5279a(Object obj, View view) {
        if (view != null) {
            final Rect rect = new Rect();
            m5422a(view, rect);
            ((AbstractC0838n) obj).setEpicenterCallback(new AbstractC0838n.AbstractC0844c() { // from class: androidx.j.e.1
                @Override // androidx.p045j.AbstractC0838n.AbstractC0844c
                /* renamed from: a */
                public Rect mo5255a(AbstractC0838n abstractC0838n) {
                    return rect;
                }
            });
        }
    }

    @Override // androidx.fragment.app.AbstractC0751o
    /* renamed from: a */
    public void mo5278a(Object obj, View view, ArrayList<View> arrayList) {
        C0851r c0851r = (C0851r) obj;
        List<View> targets = c0851r.getTargets();
        targets.clear();
        int size = arrayList.size();
        for (int i = 0; i < size; i++) {
            m5415a(targets, arrayList.get(i));
        }
        targets.add(view);
        arrayList.add(view);
        mo5275a(c0851r, arrayList);
    }

    @Override // androidx.fragment.app.AbstractC0751o
    /* renamed from: a */
    public void mo5276a(Object obj, final Object obj2, final ArrayList<View> arrayList, final Object obj3, final ArrayList<View> arrayList2, final Object obj4, final ArrayList<View> arrayList3) {
        ((AbstractC0838n) obj).addListener(new AbstractC0838n.AbstractC0845d() { // from class: androidx.j.e.3
            @Override // androidx.p045j.AbstractC0838n.AbstractC0845d
            /* renamed from: a */
            public void mo5254a(AbstractC0838n abstractC0838n) {
            }

            @Override // androidx.p045j.AbstractC0838n.AbstractC0845d
            /* renamed from: b */
            public void mo5224b(AbstractC0838n abstractC0838n) {
            }

            @Override // androidx.p045j.AbstractC0838n.AbstractC0845d
            /* renamed from: c */
            public void mo5253c(AbstractC0838n abstractC0838n) {
            }

            @Override // androidx.p045j.AbstractC0838n.AbstractC0845d
            /* renamed from: d */
            public void mo5252d(AbstractC0838n abstractC0838n) {
            }

            @Override // androidx.p045j.AbstractC0838n.AbstractC0845d
            /* renamed from: e */
            public void mo5223e(AbstractC0838n abstractC0838n) {
                Object obj5 = obj2;
                if (obj5 != null) {
                    C0824e.this.mo5269b(obj5, arrayList, (ArrayList<View>) null);
                }
                Object obj6 = obj3;
                if (obj6 != null) {
                    C0824e.this.mo5269b(obj6, arrayList2, (ArrayList<View>) null);
                }
                Object obj7 = obj4;
                if (obj7 != null) {
                    C0824e.this.mo5269b(obj7, arrayList3, (ArrayList<View>) null);
                }
            }
        });
    }

    @Override // androidx.fragment.app.AbstractC0751o
    /* renamed from: a */
    public void mo5275a(Object obj, ArrayList<View> arrayList) {
        AbstractC0838n abstractC0838n = (AbstractC0838n) obj;
        if (abstractC0838n == null) {
            return;
        }
        if (abstractC0838n instanceof C0851r) {
            C0851r c0851r = (C0851r) abstractC0838n;
            int m5243a = c0851r.m5243a();
            for (int i = 0; i < m5243a; i++) {
                mo5275a(c0851r.m5232b(i), arrayList);
            }
        } else if (!m5282a(abstractC0838n) && m5416a((List) abstractC0838n.getTargets())) {
            int size = arrayList.size();
            for (int i2 = 0; i2 < size; i2++) {
                abstractC0838n.addTarget(arrayList.get(i2));
            }
        }
    }

    @Override // androidx.fragment.app.AbstractC0751o
    /* renamed from: a */
    public void mo5274a(Object obj, ArrayList<View> arrayList, ArrayList<View> arrayList2) {
        C0851r c0851r = (C0851r) obj;
        if (c0851r != null) {
            c0851r.getTargets().clear();
            c0851r.getTargets().addAll(arrayList2);
            mo5269b((Object) c0851r, arrayList, arrayList2);
        }
    }

    @Override // androidx.fragment.app.AbstractC0751o
    /* renamed from: a */
    public boolean mo5281a(Object obj) {
        return obj instanceof AbstractC0838n;
    }

    @Override // androidx.fragment.app.AbstractC0751o
    /* renamed from: b */
    public Object mo5273b(Object obj) {
        return obj != null ? ((AbstractC0838n) obj).clone() : null;
    }

    @Override // androidx.fragment.app.AbstractC0751o
    /* renamed from: b */
    public Object mo5270b(Object obj, Object obj2, Object obj3) {
        C0851r c0851r = (AbstractC0838n) obj;
        AbstractC0838n abstractC0838n = (AbstractC0838n) obj2;
        AbstractC0838n abstractC0838n2 = (AbstractC0838n) obj3;
        if (c0851r != null && abstractC0838n != null) {
            c0851r = new C0851r().m5236a(c0851r).m5236a(abstractC0838n).m5242a(1);
        } else if (c0851r == null) {
            c0851r = abstractC0838n != null ? abstractC0838n : null;
        }
        if (abstractC0838n2 != null) {
            C0851r c0851r2 = new C0851r();
            if (c0851r != null) {
                c0851r2.m5236a(c0851r);
            }
            c0851r2.m5236a(abstractC0838n2);
            return c0851r2;
        }
        return c0851r;
    }

    @Override // androidx.fragment.app.AbstractC0751o
    /* renamed from: b */
    public void mo5272b(Object obj, View view) {
        if (obj != null) {
            ((AbstractC0838n) obj).addTarget(view);
        }
    }

    @Override // androidx.fragment.app.AbstractC0751o
    /* renamed from: b */
    public void mo5271b(Object obj, final View view, final ArrayList<View> arrayList) {
        ((AbstractC0838n) obj).addListener(new AbstractC0838n.AbstractC0845d() { // from class: androidx.j.e.2
            @Override // androidx.p045j.AbstractC0838n.AbstractC0845d
            /* renamed from: a */
            public void mo5254a(AbstractC0838n abstractC0838n) {
            }

            @Override // androidx.p045j.AbstractC0838n.AbstractC0845d
            /* renamed from: b */
            public void mo5224b(AbstractC0838n abstractC0838n) {
                abstractC0838n.removeListener(this);
                view.setVisibility(8);
                int size = arrayList.size();
                for (int i = 0; i < size; i++) {
                    ((View) arrayList.get(i)).setVisibility(0);
                }
            }

            @Override // androidx.p045j.AbstractC0838n.AbstractC0845d
            /* renamed from: c */
            public void mo5253c(AbstractC0838n abstractC0838n) {
            }

            @Override // androidx.p045j.AbstractC0838n.AbstractC0845d
            /* renamed from: d */
            public void mo5252d(AbstractC0838n abstractC0838n) {
            }

            @Override // androidx.p045j.AbstractC0838n.AbstractC0845d
            /* renamed from: e */
            public void mo5223e(AbstractC0838n abstractC0838n) {
            }
        });
    }

    @Override // androidx.fragment.app.AbstractC0751o
    /* renamed from: b */
    public void mo5269b(Object obj, ArrayList<View> arrayList, ArrayList<View> arrayList2) {
        AbstractC0838n abstractC0838n = (AbstractC0838n) obj;
        if (abstractC0838n instanceof C0851r) {
            C0851r c0851r = (C0851r) abstractC0838n;
            int m5243a = c0851r.m5243a();
            for (int i = 0; i < m5243a; i++) {
                mo5269b((Object) c0851r.m5232b(i), arrayList, arrayList2);
            }
        } else if (!m5282a(abstractC0838n)) {
            List<View> targets = abstractC0838n.getTargets();
            if (targets.size() != arrayList.size() || !targets.containsAll(arrayList)) {
                return;
            }
            int size = arrayList2 == null ? 0 : arrayList2.size();
            for (int i2 = 0; i2 < size; i2++) {
                abstractC0838n.addTarget(arrayList2.get(i2));
            }
            for (int size2 = arrayList.size() - 1; size2 >= 0; size2--) {
                abstractC0838n.removeTarget(arrayList.get(size2));
            }
        }
    }

    @Override // androidx.fragment.app.AbstractC0751o
    /* renamed from: c */
    public Object mo5268c(Object obj) {
        if (obj == null) {
            return null;
        }
        C0851r c0851r = new C0851r();
        c0851r.m5236a((AbstractC0838n) obj);
        return c0851r;
    }

    @Override // androidx.fragment.app.AbstractC0751o
    /* renamed from: c */
    public void mo5267c(Object obj, View view) {
        if (obj != null) {
            ((AbstractC0838n) obj).removeTarget(view);
        }
    }
}

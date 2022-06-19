package androidx.transition;

import android.graphics.Rect;
import android.view.View;
import android.view.ViewGroup;
import androidx.core.p037os.C0856a;
import androidx.fragment.app.AbstractC1138v;
import androidx.transition.Transition;
import java.util.ArrayList;
import java.util.List;
/* renamed from: androidx.transition.e */
/* loaded from: classes-dex2jar.jar:androidx/transition/e.class */
public class C2883e extends AbstractC1138v {
    /* renamed from: a */
    private static boolean m39717a(Transition transition) {
        return !m43495a((List) transition.f10758c) || !m43495a((List) transition.f10760e) || !m43495a((List) transition.f10761f);
    }

    @Override // androidx.fragment.app.AbstractC1138v
    /* renamed from: a */
    public final Object mo39711a(Object obj, Object obj2, Object obj3) {
        TransitionSet transitionSet = new TransitionSet();
        if (obj != null) {
            transitionSet.m39785a((Transition) obj);
        }
        if (obj2 != null) {
            transitionSet.m39785a((Transition) obj2);
        }
        if (obj3 != null) {
            transitionSet.m39785a((Transition) obj3);
        }
        return transitionSet;
    }

    @Override // androidx.fragment.app.AbstractC1138v
    /* renamed from: a */
    public final void mo39718a(ViewGroup viewGroup, Object obj) {
        C2908u.m39680a(viewGroup, (Transition) obj);
    }

    @Override // androidx.fragment.app.AbstractC1138v
    /* renamed from: a */
    public final void mo39715a(Object obj, final Rect rect) {
        if (obj != null) {
            ((Transition) obj).mo39787a(new Transition.AbstractC2848b() { // from class: androidx.transition.e.6
                @Override // androidx.transition.Transition.AbstractC2848b
                /* renamed from: a */
                public final Rect mo39699a() {
                    Rect rect2 = rect;
                    if (rect2 == null || rect2.isEmpty()) {
                        return null;
                    }
                    return rect;
                }
            });
        }
    }

    @Override // androidx.fragment.app.AbstractC1138v
    /* renamed from: a */
    public final void mo39714a(Object obj, View view) {
        if (view != null) {
            final Rect rect = new Rect();
            m43499a(view, rect);
            ((Transition) obj).mo39787a(new Transition.AbstractC2848b() { // from class: androidx.transition.e.1
                @Override // androidx.transition.Transition.AbstractC2848b
                /* renamed from: a */
                public final Rect mo39699a() {
                    return rect;
                }
            });
        }
    }

    @Override // androidx.fragment.app.AbstractC1138v
    /* renamed from: a */
    public final void mo39713a(Object obj, View view, ArrayList<View> arrayList) {
        TransitionSet transitionSet = (TransitionSet) obj;
        ArrayList<View> arrayList2 = transitionSet.f10759d;
        arrayList2.clear();
        int size = arrayList.size();
        for (int i = 0; i < size; i++) {
            m43494a((List<View>) arrayList2, arrayList.get(i));
        }
        arrayList2.add(view);
        arrayList.add(view);
        mo39709a(transitionSet, arrayList);
    }

    @Override // androidx.fragment.app.AbstractC1138v
    /* renamed from: a */
    public final void mo39712a(Object obj, C0856a c0856a, final Runnable runnable) {
        final Transition transition = (Transition) obj;
        c0856a.m44302a(new C0856a.AbstractC0857a() { // from class: androidx.transition.e.4
            @Override // androidx.core.p037os.C0856a.AbstractC0857a
            /* renamed from: a */
            public final void mo39700a() {
                transition.mo39770g();
            }
        });
        transition.mo39786a(new Transition.AbstractC2849c() { // from class: androidx.transition.e.5
            @Override // androidx.transition.Transition.AbstractC2849c
            /* renamed from: a */
            public final void mo39672a() {
            }

            @Override // androidx.transition.Transition.AbstractC2849c
            /* renamed from: a */
            public final void mo39671a(Transition transition2) {
                runnable.run();
            }

            @Override // androidx.transition.Transition.AbstractC2849c
            /* renamed from: b */
            public final void mo39670b() {
            }

            @Override // androidx.transition.Transition.AbstractC2849c
            /* renamed from: b */
            public final void mo39669b(Transition transition2) {
            }

            @Override // androidx.transition.Transition.AbstractC2849c
            /* renamed from: c */
            public final void mo39668c() {
            }
        });
    }

    @Override // androidx.fragment.app.AbstractC1138v
    /* renamed from: a */
    public final void mo39710a(Object obj, final Object obj2, final ArrayList<View> arrayList, final Object obj3, final ArrayList<View> arrayList2, final Object obj4, final ArrayList<View> arrayList3) {
        ((Transition) obj).mo39786a(new C2907t() { // from class: androidx.transition.e.3
            @Override // androidx.transition.C2907t, androidx.transition.Transition.AbstractC2849c
            /* renamed from: a */
            public final void mo39671a(Transition transition) {
                transition.mo39779b(this);
            }

            @Override // androidx.transition.C2907t, androidx.transition.Transition.AbstractC2849c
            /* renamed from: b */
            public final void mo39669b(Transition transition) {
                Object obj5 = obj2;
                if (obj5 != null) {
                    C2883e.this.mo39703b(obj5, arrayList, (ArrayList<View>) null);
                }
                Object obj6 = obj3;
                if (obj6 != null) {
                    C2883e.this.mo39703b(obj6, arrayList2, (ArrayList<View>) null);
                }
                Object obj7 = obj4;
                if (obj7 != null) {
                    C2883e.this.mo39703b(obj7, arrayList3, (ArrayList<View>) null);
                }
            }
        });
    }

    @Override // androidx.fragment.app.AbstractC1138v
    /* renamed from: a */
    public final void mo39709a(Object obj, ArrayList<View> arrayList) {
        Transition transition = (Transition) obj;
        if (transition == null) {
            return;
        }
        if (transition instanceof TransitionSet) {
            TransitionSet transitionSet = (TransitionSet) transition;
            int size = transitionSet.f10789a.size();
            for (int i = 0; i < size; i++) {
                mo39709a(transitionSet.m39782b(i), arrayList);
            }
        } else if (!m39717a(transition) && m43495a((List) transition.f10759d)) {
            int size2 = arrayList.size();
            for (int i2 = 0; i2 < size2; i2++) {
                transition.mo39776c(arrayList.get(i2));
            }
        }
    }

    @Override // androidx.fragment.app.AbstractC1138v
    /* renamed from: a */
    public final void mo39708a(Object obj, ArrayList<View> arrayList, ArrayList<View> arrayList2) {
        TransitionSet transitionSet = (TransitionSet) obj;
        if (transitionSet != null) {
            transitionSet.f10759d.clear();
            transitionSet.f10759d.addAll(arrayList2);
            mo39703b((Object) transitionSet, arrayList, arrayList2);
        }
    }

    @Override // androidx.fragment.app.AbstractC1138v
    /* renamed from: a */
    public final boolean mo39716a(Object obj) {
        return obj instanceof Transition;
    }

    @Override // androidx.fragment.app.AbstractC1138v
    /* renamed from: b */
    public final Object mo39707b(Object obj) {
        return obj != null ? ((Transition) obj).clone() : null;
    }

    @Override // androidx.fragment.app.AbstractC1138v
    /* renamed from: b */
    public final Object mo39704b(Object obj, Object obj2, Object obj3) {
        TransitionSet transitionSet = (Transition) obj;
        Transition transition = (Transition) obj2;
        Transition transition2 = (Transition) obj3;
        if (transitionSet != null && transition != null) {
            transitionSet = new TransitionSet().m39785a(transitionSet).m39785a(transition).m39792a(1);
        } else if (transitionSet == null) {
            transitionSet = transition != null ? transition : null;
        }
        if (transition2 != null) {
            TransitionSet transitionSet2 = new TransitionSet();
            if (transitionSet != null) {
                transitionSet2.m39785a(transitionSet);
            }
            transitionSet2.m39785a(transition2);
            return transitionSet2;
        }
        return transitionSet;
    }

    @Override // androidx.fragment.app.AbstractC1138v
    /* renamed from: b */
    public final void mo39706b(Object obj, View view) {
        if (obj != null) {
            ((Transition) obj).mo39776c(view);
        }
    }

    @Override // androidx.fragment.app.AbstractC1138v
    /* renamed from: b */
    public final void mo39705b(Object obj, final View view, final ArrayList<View> arrayList) {
        ((Transition) obj).mo39786a(new Transition.AbstractC2849c() { // from class: androidx.transition.e.2
            @Override // androidx.transition.Transition.AbstractC2849c
            /* renamed from: a */
            public final void mo39672a() {
            }

            @Override // androidx.transition.Transition.AbstractC2849c
            /* renamed from: a */
            public final void mo39671a(Transition transition) {
                transition.mo39779b(this);
                view.setVisibility(8);
                int size = arrayList.size();
                for (int i = 0; i < size; i++) {
                    ((View) arrayList.get(i)).setVisibility(0);
                }
            }

            @Override // androidx.transition.Transition.AbstractC2849c
            /* renamed from: b */
            public final void mo39670b() {
            }

            @Override // androidx.transition.Transition.AbstractC2849c
            /* renamed from: b */
            public final void mo39669b(Transition transition) {
                transition.mo39779b(this);
                transition.mo39786a(this);
            }

            @Override // androidx.transition.Transition.AbstractC2849c
            /* renamed from: c */
            public final void mo39668c() {
            }
        });
    }

    @Override // androidx.fragment.app.AbstractC1138v
    /* renamed from: b */
    public final void mo39703b(Object obj, ArrayList<View> arrayList, ArrayList<View> arrayList2) {
        Transition transition = (Transition) obj;
        if (transition instanceof TransitionSet) {
            TransitionSet transitionSet = (TransitionSet) transition;
            int size = transitionSet.f10789a.size();
            for (int i = 0; i < size; i++) {
                mo39703b((Object) transitionSet.m39782b(i), arrayList, arrayList2);
            }
        } else if (!m39717a(transition)) {
            ArrayList<View> arrayList3 = transition.f10759d;
            if (arrayList3.size() != arrayList.size() || !arrayList3.containsAll(arrayList)) {
                return;
            }
            int size2 = arrayList2 == null ? 0 : arrayList2.size();
            for (int i2 = 0; i2 < size2; i2++) {
                transition.mo39776c(arrayList2.get(i2));
            }
            for (int size3 = arrayList.size() - 1; size3 >= 0; size3--) {
                transition.mo39773d(arrayList.get(size3));
            }
        }
    }

    @Override // androidx.fragment.app.AbstractC1138v
    /* renamed from: c */
    public final Object mo39702c(Object obj) {
        if (obj == null) {
            return null;
        }
        TransitionSet transitionSet = new TransitionSet();
        transitionSet.m39785a((Transition) obj);
        return transitionSet;
    }

    @Override // androidx.fragment.app.AbstractC1138v
    /* renamed from: c */
    public final void mo39701c(Object obj, View view) {
        if (obj != null) {
            ((Transition) obj).mo39773d(view);
        }
    }
}

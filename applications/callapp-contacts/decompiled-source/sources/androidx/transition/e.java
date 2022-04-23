package androidx.transition;

import android.graphics.Rect;
import android.view.View;
import android.view.ViewGroup;
import androidx.core.os.a;
import androidx.fragment.app.v;
import androidx.transition.Transition;
import java.util.ArrayList;
import java.util.List;
/* loaded from: classes-dex2jar.jar:androidx/transition/e.class */
public class e extends v {
    private static boolean a(Transition transition) {
        return !a((List) transition.f5732c) || !a((List) transition.e) || !a((List) transition.f);
    }

    @Override // androidx.fragment.app.v
    public final Object a(Object obj, Object obj2, Object obj3) {
        TransitionSet transitionSet = new TransitionSet();
        if (obj != null) {
            transitionSet.a((Transition) obj);
        }
        if (obj2 != null) {
            transitionSet.a((Transition) obj2);
        }
        if (obj3 != null) {
            transitionSet.a((Transition) obj3);
        }
        return transitionSet;
    }

    @Override // androidx.fragment.app.v
    public final void a(ViewGroup viewGroup, Object obj) {
        u.a(viewGroup, (Transition) obj);
    }

    @Override // androidx.fragment.app.v
    public final void a(Object obj, final Rect rect) {
        if (obj != null) {
            ((Transition) obj).a(new Transition.b() { // from class: androidx.transition.e.6
                @Override // androidx.transition.Transition.b
                public final Rect a() {
                    Rect rect2 = rect;
                    if (rect2 == null || rect2.isEmpty()) {
                        return null;
                    }
                    return rect;
                }
            });
        }
    }

    @Override // androidx.fragment.app.v
    public final void a(Object obj, View view) {
        if (view != null) {
            final Rect rect = new Rect();
            a(view, rect);
            ((Transition) obj).a(new Transition.b() { // from class: androidx.transition.e.1
                @Override // androidx.transition.Transition.b
                public final Rect a() {
                    return rect;
                }
            });
        }
    }

    @Override // androidx.fragment.app.v
    public final void a(Object obj, View view, ArrayList<View> arrayList) {
        TransitionSet transitionSet = (TransitionSet) obj;
        ArrayList<View> arrayList2 = transitionSet.f5733d;
        arrayList2.clear();
        int size = arrayList.size();
        for (int i = 0; i < size; i++) {
            a((List<View>) arrayList2, arrayList.get(i));
        }
        arrayList2.add(view);
        arrayList.add(view);
        a(transitionSet, arrayList);
    }

    @Override // androidx.fragment.app.v
    public final void a(Object obj, a aVar, final Runnable runnable) {
        final Transition transition = (Transition) obj;
        aVar.a(new a.AbstractC0050a() { // from class: androidx.transition.e.4
            @Override // androidx.core.os.a.AbstractC0050a
            public final void a() {
                transition.g();
            }
        });
        transition.a(new Transition.c() { // from class: androidx.transition.e.5
            @Override // androidx.transition.Transition.c
            public final void a() {
            }

            @Override // androidx.transition.Transition.c
            public final void a(Transition transition2) {
                runnable.run();
            }

            @Override // androidx.transition.Transition.c
            public final void b() {
            }

            @Override // androidx.transition.Transition.c
            public final void b(Transition transition2) {
            }

            @Override // androidx.transition.Transition.c
            public final void c() {
            }
        });
    }

    @Override // androidx.fragment.app.v
    public final void a(Object obj, final Object obj2, final ArrayList<View> arrayList, final Object obj3, final ArrayList<View> arrayList2, final Object obj4, final ArrayList<View> arrayList3) {
        ((Transition) obj).a(new t() { // from class: androidx.transition.e.3
            @Override // androidx.transition.t, androidx.transition.Transition.c
            public final void a(Transition transition) {
                transition.b(this);
            }

            @Override // androidx.transition.t, androidx.transition.Transition.c
            public final void b(Transition transition) {
                Object obj5 = obj2;
                if (obj5 != null) {
                    e.this.b(obj5, arrayList, (ArrayList<View>) null);
                }
                Object obj6 = obj3;
                if (obj6 != null) {
                    e.this.b(obj6, arrayList2, (ArrayList<View>) null);
                }
                Object obj7 = obj4;
                if (obj7 != null) {
                    e.this.b(obj7, arrayList3, (ArrayList<View>) null);
                }
            }
        });
    }

    @Override // androidx.fragment.app.v
    public final void a(Object obj, ArrayList<View> arrayList) {
        Transition transition = (Transition) obj;
        if (transition != null) {
            if (transition instanceof TransitionSet) {
                TransitionSet transitionSet = (TransitionSet) transition;
                int size = transitionSet.f5741a.size();
                for (int i = 0; i < size; i++) {
                    a(transitionSet.b(i), arrayList);
                }
            } else if (!a(transition) && a((List) transition.f5733d)) {
                int size2 = arrayList.size();
                for (int i2 = 0; i2 < size2; i2++) {
                    transition.c(arrayList.get(i2));
                }
            }
        }
    }

    @Override // androidx.fragment.app.v
    public final void a(Object obj, ArrayList<View> arrayList, ArrayList<View> arrayList2) {
        TransitionSet transitionSet = (TransitionSet) obj;
        if (transitionSet != null) {
            transitionSet.f5733d.clear();
            transitionSet.f5733d.addAll(arrayList2);
            b((Object) transitionSet, arrayList, arrayList2);
        }
    }

    @Override // androidx.fragment.app.v
    public final boolean a(Object obj) {
        return obj instanceof Transition;
    }

    @Override // androidx.fragment.app.v
    public final Object b(Object obj) {
        return obj != null ? ((Transition) obj).clone() : null;
    }

    @Override // androidx.fragment.app.v
    public final Object b(Object obj, Object obj2, Object obj3) {
        Transition transition = (Transition) obj;
        Transition transition2 = (Transition) obj2;
        Transition transition3 = (Transition) obj3;
        if (transition != null && transition2 != null) {
            transition = new TransitionSet().a(transition).a(transition2).a(1);
        } else if (transition == null) {
            transition = transition2 != null ? transition2 : null;
        }
        if (transition3 == null) {
            return transition;
        }
        TransitionSet transitionSet = new TransitionSet();
        if (transition != null) {
            transitionSet.a(transition);
        }
        transitionSet.a(transition3);
        return transitionSet;
    }

    @Override // androidx.fragment.app.v
    public final void b(Object obj, View view) {
        if (obj != null) {
            ((Transition) obj).c(view);
        }
    }

    @Override // androidx.fragment.app.v
    public final void b(Object obj, final View view, final ArrayList<View> arrayList) {
        ((Transition) obj).a(new Transition.c() { // from class: androidx.transition.e.2
            @Override // androidx.transition.Transition.c
            public final void a() {
            }

            @Override // androidx.transition.Transition.c
            public final void a(Transition transition) {
                transition.b(this);
                view.setVisibility(8);
                int size = arrayList.size();
                for (int i = 0; i < size; i++) {
                    ((View) arrayList.get(i)).setVisibility(0);
                }
            }

            @Override // androidx.transition.Transition.c
            public final void b() {
            }

            @Override // androidx.transition.Transition.c
            public final void b(Transition transition) {
                transition.b(this);
                transition.a(this);
            }

            @Override // androidx.transition.Transition.c
            public final void c() {
            }
        });
    }

    @Override // androidx.fragment.app.v
    public final void b(Object obj, ArrayList<View> arrayList, ArrayList<View> arrayList2) {
        Transition transition = (Transition) obj;
        if (transition instanceof TransitionSet) {
            TransitionSet transitionSet = (TransitionSet) transition;
            int size = transitionSet.f5741a.size();
            for (int i = 0; i < size; i++) {
                b((Object) transitionSet.b(i), arrayList, arrayList2);
            }
        } else if (!a(transition)) {
            ArrayList<View> arrayList3 = transition.f5733d;
            if (arrayList3.size() == arrayList.size() && arrayList3.containsAll(arrayList)) {
                int size2 = arrayList2 == null ? 0 : arrayList2.size();
                for (int i2 = 0; i2 < size2; i2++) {
                    transition.c(arrayList2.get(i2));
                }
                for (int size3 = arrayList.size() - 1; size3 >= 0; size3--) {
                    transition.d(arrayList.get(size3));
                }
            }
        }
    }

    @Override // androidx.fragment.app.v
    public final Object c(Object obj) {
        if (obj == null) {
            return null;
        }
        TransitionSet transitionSet = new TransitionSet();
        transitionSet.a((Transition) obj);
        return transitionSet;
    }

    @Override // androidx.fragment.app.v
    public final void c(Object obj, View view) {
        if (obj != null) {
            ((Transition) obj).d(view);
        }
    }
}

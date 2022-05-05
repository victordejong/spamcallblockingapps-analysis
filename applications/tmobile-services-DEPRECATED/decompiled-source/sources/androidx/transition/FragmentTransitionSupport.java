package androidx.transition;

import android.annotation.SuppressLint;
import android.graphics.Rect;
import android.view.View;
import android.view.ViewGroup;
import androidx.annotation.NonNull;
import androidx.annotation.RestrictTo;
import androidx.fragment.app.FragmentTransitionImpl;
import androidx.transition.Transition;
import java.util.ArrayList;
import java.util.List;
@SuppressLint({"RestrictedApi"})
@RestrictTo
/* loaded from: classes-dex2jar.jar:androidx/transition/FragmentTransitionSupport.class */
public class FragmentTransitionSupport extends FragmentTransitionImpl {
    /* renamed from: C */
    private static boolean m16847C(Transition transition) {
        return !FragmentTransitionImpl.m18288l(transition.m16786E()) || !FragmentTransitionImpl.m18288l(transition.m16785F()) || !FragmentTransitionImpl.m18288l(transition.m16784G());
    }

    @Override // androidx.fragment.app.FragmentTransitionImpl
    /* renamed from: A */
    public void mo16849A(Object obj, ArrayList<View> arrayList, ArrayList<View> arrayList2) {
        TransitionSet transitionSet = (TransitionSet) obj;
        if (transitionSet != null) {
            transitionSet.m16783H().clear();
            transitionSet.m16783H().addAll(arrayList2);
            mo16838q(transitionSet, arrayList, arrayList2);
        }
    }

    @Override // androidx.fragment.app.FragmentTransitionImpl
    /* renamed from: B */
    public Object mo16848B(Object obj) {
        if (obj == null) {
            return null;
        }
        TransitionSet transitionSet = new TransitionSet();
        transitionSet.m16725r0((Transition) obj);
        return transitionSet;
    }

    @Override // androidx.fragment.app.FragmentTransitionImpl
    /* renamed from: a */
    public void mo16846a(Object obj, View view) {
        if (obj != null) {
            ((Transition) obj).mo16740b(view);
        }
    }

    @Override // androidx.fragment.app.FragmentTransitionImpl
    /* renamed from: b */
    public void mo16845b(Object obj, ArrayList<View> arrayList) {
        Transition transition = (Transition) obj;
        if (transition != null) {
            if (transition instanceof TransitionSet) {
                TransitionSet transitionSet = (TransitionSet) transition;
                int u0 = transitionSet.m16722u0();
                for (int i = 0; i < u0; i++) {
                    mo16845b(transitionSet.m16723t0(i), arrayList);
                }
            } else if (!m16847C(transition) && FragmentTransitionImpl.m18288l(transition.m16783H())) {
                int size = arrayList.size();
                for (int i2 = 0; i2 < size; i2++) {
                    transition.mo16740b(arrayList.get(i2));
                }
            }
        }
    }

    @Override // androidx.fragment.app.FragmentTransitionImpl
    /* renamed from: c */
    public void mo16844c(ViewGroup viewGroup, Object obj) {
        TransitionManager.m16752a(viewGroup, (Transition) obj);
    }

    @Override // androidx.fragment.app.FragmentTransitionImpl
    /* renamed from: e */
    public boolean mo16843e(Object obj) {
        return obj instanceof Transition;
    }

    @Override // androidx.fragment.app.FragmentTransitionImpl
    /* renamed from: g */
    public Object mo16842g(Object obj) {
        return obj != null ? ((Transition) obj).clone() : null;
    }

    @Override // androidx.fragment.app.FragmentTransitionImpl
    /* renamed from: m */
    public Object mo16841m(Object obj, Object obj2, Object obj3) {
        Transition transition = (Transition) obj;
        Transition transition2 = (Transition) obj2;
        Transition transition3 = (Transition) obj3;
        if (transition != null && transition2 != null) {
            TransitionSet transitionSet = new TransitionSet();
            transitionSet.m16725r0(transition);
            transitionSet.m16725r0(transition2);
            transitionSet.m16717z0(1);
            transition = transitionSet;
        } else if (transition == null) {
            transition = transition2 != null ? transition2 : null;
        }
        if (transition3 == null) {
            return transition;
        }
        TransitionSet transitionSet2 = new TransitionSet();
        if (transition != null) {
            transitionSet2.m16725r0(transition);
        }
        transitionSet2.m16725r0(transition3);
        return transitionSet2;
    }

    @Override // androidx.fragment.app.FragmentTransitionImpl
    /* renamed from: n */
    public Object mo16840n(Object obj, Object obj2, Object obj3) {
        TransitionSet transitionSet = new TransitionSet();
        if (obj != null) {
            transitionSet.m16725r0((Transition) obj);
        }
        if (obj2 != null) {
            transitionSet.m16725r0((Transition) obj2);
        }
        if (obj3 != null) {
            transitionSet.m16725r0((Transition) obj3);
        }
        return transitionSet;
    }

    @Override // androidx.fragment.app.FragmentTransitionImpl
    /* renamed from: p */
    public void mo16839p(Object obj, View view) {
        if (obj != null) {
            ((Transition) obj).mo16741a0(view);
        }
    }

    @Override // androidx.fragment.app.FragmentTransitionImpl
    /* renamed from: q */
    public void mo16838q(Object obj, ArrayList<View> arrayList, ArrayList<View> arrayList2) {
        Transition transition = (Transition) obj;
        if (transition instanceof TransitionSet) {
            TransitionSet transitionSet = (TransitionSet) transition;
            int u0 = transitionSet.m16722u0();
            for (int i = 0; i < u0; i++) {
                mo16838q(transitionSet.m16723t0(i), arrayList, arrayList2);
            }
        } else if (!m16847C(transition)) {
            List<View> H = transition.m16783H();
            if (H.size() == arrayList.size() && H.containsAll(arrayList)) {
                int size = arrayList2 == null ? 0 : arrayList2.size();
                for (int i2 = 0; i2 < size; i2++) {
                    transition.mo16740b(arrayList2.get(i2));
                }
                for (int size2 = arrayList.size() - 1; size2 >= 0; size2--) {
                    transition.mo16741a0(arrayList.get(size2));
                }
            }
        }
    }

    @Override // androidx.fragment.app.FragmentTransitionImpl
    /* renamed from: r */
    public void mo16837r(Object obj, final View view, final ArrayList<View> arrayList) {
        ((Transition) obj).mo16742a(new Transition.TransitionListener(this) { // from class: androidx.transition.FragmentTransitionSupport.2
            @Override // androidx.transition.Transition.TransitionListener
            /* renamed from: a */
            public void mo8575a(@NonNull Transition transition) {
            }

            @Override // androidx.transition.Transition.TransitionListener
            /* renamed from: b */
            public void mo8574b(@NonNull Transition transition) {
            }

            @Override // androidx.transition.Transition.TransitionListener
            /* renamed from: c */
            public void mo8573c(@NonNull Transition transition) {
                transition.mo16743Z(this);
                view.setVisibility(8);
                int size = arrayList.size();
                for (int i = 0; i < size; i++) {
                    ((View) arrayList.get(i)).setVisibility(0);
                }
            }

            @Override // androidx.transition.Transition.TransitionListener
            /* renamed from: d */
            public void mo8572d(@NonNull Transition transition) {
            }

            @Override // androidx.transition.Transition.TransitionListener
            /* renamed from: e */
            public void mo8571e(@NonNull Transition transition) {
            }
        });
    }

    @Override // androidx.fragment.app.FragmentTransitionImpl
    /* renamed from: t */
    public void mo16836t(Object obj, final Object obj2, final ArrayList<View> arrayList, final Object obj3, final ArrayList<View> arrayList2, final Object obj4, final ArrayList<View> arrayList3) {
        ((Transition) obj).mo16742a(new TransitionListenerAdapter() { // from class: androidx.transition.FragmentTransitionSupport.3
            @Override // androidx.transition.TransitionListenerAdapter, androidx.transition.Transition.TransitionListener
            /* renamed from: a */
            public void mo8575a(@NonNull Transition transition) {
                Object obj5 = obj2;
                if (obj5 != null) {
                    FragmentTransitionSupport.this.mo16838q(obj5, arrayList, null);
                }
                Object obj6 = obj3;
                if (obj6 != null) {
                    FragmentTransitionSupport.this.mo16838q(obj6, arrayList2, null);
                }
                Object obj7 = obj4;
                if (obj7 != null) {
                    FragmentTransitionSupport.this.mo16838q(obj7, arrayList3, null);
                }
            }

            @Override // androidx.transition.TransitionListenerAdapter, androidx.transition.Transition.TransitionListener
            /* renamed from: c */
            public void mo8573c(@NonNull Transition transition) {
                transition.mo16743Z(this);
            }
        });
    }

    @Override // androidx.fragment.app.FragmentTransitionImpl
    /* renamed from: u */
    public void mo16835u(Object obj, final Rect rect) {
        if (obj != null) {
            ((Transition) obj).mo16736g0(new Transition.EpicenterCallback(this) { // from class: androidx.transition.FragmentTransitionSupport.4
                @Override // androidx.transition.Transition.EpicenterCallback
                /* renamed from: a */
                public Rect mo16753a(@NonNull Transition transition) {
                    Rect rect2 = rect;
                    if (rect2 == null || rect2.isEmpty()) {
                        return null;
                    }
                    return rect;
                }
            });
        }
    }

    @Override // androidx.fragment.app.FragmentTransitionImpl
    /* renamed from: v */
    public void mo16834v(Object obj, View view) {
        if (view != null) {
            final Rect rect = new Rect();
            m18289k(view, rect);
            ((Transition) obj).mo16736g0(new Transition.EpicenterCallback(this) { // from class: androidx.transition.FragmentTransitionSupport.1
                @Override // androidx.transition.Transition.EpicenterCallback
                /* renamed from: a */
                public Rect mo16753a(@NonNull Transition transition) {
                    return rect;
                }
            });
        }
    }

    @Override // androidx.fragment.app.FragmentTransitionImpl
    /* renamed from: z */
    public void mo16833z(Object obj, View view, ArrayList<View> arrayList) {
        TransitionSet transitionSet = (TransitionSet) obj;
        List<View> H = transitionSet.m16783H();
        H.clear();
        int size = arrayList.size();
        for (int i = 0; i < size; i++) {
            FragmentTransitionImpl.m18294d(H, arrayList.get(i));
        }
        H.add(view);
        arrayList.add(view);
        mo16845b(transitionSet, arrayList);
    }
}

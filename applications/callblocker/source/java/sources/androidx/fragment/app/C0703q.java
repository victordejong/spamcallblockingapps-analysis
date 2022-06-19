package androidx.fragment.app;

import android.graphics.Rect;
import android.transition.Transition;
import android.transition.TransitionManager;
import android.transition.TransitionSet;
import android.view.View;
import android.view.ViewGroup;
import java.util.ArrayList;
import java.util.List;
/* JADX INFO: Access modifiers changed from: package-private */
/* renamed from: androidx.fragment.app.q */
/* loaded from: classes-dex2jar.jar:androidx/fragment/app/q.class */
public class C0703q extends AbstractC0708r {
    /* renamed from: a */
    private static boolean m19616a(Transition transition) {
        return !m19609a((List) transition.getTargetIds()) || !m19609a((List) transition.getTargetNames()) || !m19609a((List) transition.getTargetTypes());
    }

    @Override // androidx.fragment.app.AbstractC0708r
    /* renamed from: a */
    public Object mo19442a(Object obj, Object obj2, Object obj3) {
        TransitionSet transitionSet = new TransitionSet();
        if (obj != null) {
            transitionSet.addTransition((Transition) obj);
        }
        if (obj2 != null) {
            transitionSet.addTransition((Transition) obj2);
        }
        if (obj3 != null) {
            transitionSet.addTransition((Transition) obj3);
        }
        return transitionSet;
    }

    @Override // androidx.fragment.app.AbstractC0708r
    /* renamed from: a */
    public void mo19448a(ViewGroup viewGroup, Object obj) {
        TransitionManager.beginDelayedTransition(viewGroup, (Transition) obj);
    }

    @Override // androidx.fragment.app.AbstractC0708r
    /* renamed from: a */
    public void mo19445a(Object obj, final Rect rect) {
        if (obj != null) {
            ((Transition) obj).setEpicenterCallback(new Transition.EpicenterCallback() { // from class: androidx.fragment.app.q.4
                @Override // android.transition.Transition.EpicenterCallback
                public Rect onGetEpicenter(Transition transition) {
                    return (rect == null || rect.isEmpty()) ? null : rect;
                }
            });
        }
    }

    @Override // androidx.fragment.app.AbstractC0708r
    /* renamed from: a */
    public void mo19444a(Object obj, View view) {
        if (view != null) {
            final Rect rect = new Rect();
            m19615a(view, rect);
            ((Transition) obj).setEpicenterCallback(new Transition.EpicenterCallback() { // from class: androidx.fragment.app.q.1
                @Override // android.transition.Transition.EpicenterCallback
                public Rect onGetEpicenter(Transition transition) {
                    return rect;
                }
            });
        }
    }

    @Override // androidx.fragment.app.AbstractC0708r
    /* renamed from: a */
    public void mo19443a(Object obj, View view, ArrayList<View> arrayList) {
        TransitionSet transitionSet = (TransitionSet) obj;
        List<View> targets = transitionSet.getTargets();
        targets.clear();
        int size = arrayList.size();
        for (int i = 0; i < size; i++) {
            m19608a(targets, arrayList.get(i));
        }
        targets.add(view);
        arrayList.add(view);
        mo19440a(transitionSet, arrayList);
    }

    @Override // androidx.fragment.app.AbstractC0708r
    /* renamed from: a */
    public void mo19441a(Object obj, final Object obj2, final ArrayList<View> arrayList, final Object obj3, final ArrayList<View> arrayList2, final Object obj4, final ArrayList<View> arrayList3) {
        ((Transition) obj).addListener(new Transition.TransitionListener() { // from class: androidx.fragment.app.q.3
            @Override // android.transition.Transition.TransitionListener
            public void onTransitionCancel(Transition transition) {
            }

            @Override // android.transition.Transition.TransitionListener
            public void onTransitionEnd(Transition transition) {
                transition.removeListener(this);
            }

            @Override // android.transition.Transition.TransitionListener
            public void onTransitionPause(Transition transition) {
            }

            @Override // android.transition.Transition.TransitionListener
            public void onTransitionResume(Transition transition) {
            }

            @Override // android.transition.Transition.TransitionListener
            public void onTransitionStart(Transition transition) {
                if (obj2 != null) {
                    C0703q.this.mo19434b(obj2, arrayList, (ArrayList<View>) null);
                }
                if (obj3 != null) {
                    C0703q.this.mo19434b(obj3, arrayList2, (ArrayList<View>) null);
                }
                if (obj4 != null) {
                    C0703q.this.mo19434b(obj4, arrayList3, (ArrayList<View>) null);
                }
            }
        });
    }

    @Override // androidx.fragment.app.AbstractC0708r
    /* renamed from: a */
    public void mo19440a(Object obj, ArrayList<View> arrayList) {
        Transition transition = (Transition) obj;
        if (transition == null) {
            return;
        }
        if (transition instanceof TransitionSet) {
            TransitionSet transitionSet = (TransitionSet) transition;
            int transitionCount = transitionSet.getTransitionCount();
            for (int i = 0; i < transitionCount; i++) {
                mo19440a(transitionSet.getTransitionAt(i), arrayList);
            }
        } else if (!m19616a(transition) && m19609a((List) transition.getTargets())) {
            int size = arrayList.size();
            for (int i2 = 0; i2 < size; i2++) {
                transition.addTarget(arrayList.get(i2));
            }
        }
    }

    @Override // androidx.fragment.app.AbstractC0708r
    /* renamed from: a */
    public void mo19439a(Object obj, ArrayList<View> arrayList, ArrayList<View> arrayList2) {
        TransitionSet transitionSet = (TransitionSet) obj;
        if (transitionSet != null) {
            transitionSet.getTargets().clear();
            transitionSet.getTargets().addAll(arrayList2);
            mo19434b((Object) transitionSet, arrayList, arrayList2);
        }
    }

    @Override // androidx.fragment.app.AbstractC0708r
    /* renamed from: a */
    public boolean mo19446a(Object obj) {
        return obj instanceof Transition;
    }

    @Override // androidx.fragment.app.AbstractC0708r
    /* renamed from: b */
    public Object mo19438b(Object obj) {
        Transition transition = null;
        if (obj != null) {
            transition = ((Transition) obj).clone();
        }
        return transition;
    }

    @Override // androidx.fragment.app.AbstractC0708r
    /* renamed from: b */
    public Object mo19435b(Object obj, Object obj2, Object obj3) {
        TransitionSet transitionSet = (Transition) obj;
        Transition transition = (Transition) obj2;
        Transition transition2 = (Transition) obj3;
        if (transitionSet != null && transition != null) {
            transitionSet = new TransitionSet().addTransition(transitionSet).addTransition(transition).setOrdering(1);
        } else if (transitionSet == null) {
            transitionSet = null;
            if (transition != null) {
                transitionSet = transition;
            }
        }
        if (transition2 != null) {
            TransitionSet transitionSet2 = new TransitionSet();
            if (transitionSet != null) {
                transitionSet2.addTransition(transitionSet);
            }
            transitionSet2.addTransition(transition2);
            transitionSet = transitionSet2;
        }
        return transitionSet;
    }

    @Override // androidx.fragment.app.AbstractC0708r
    /* renamed from: b */
    public void mo19437b(Object obj, View view) {
        if (obj != null) {
            ((Transition) obj).addTarget(view);
        }
    }

    @Override // androidx.fragment.app.AbstractC0708r
    /* renamed from: b */
    public void mo19436b(Object obj, final View view, final ArrayList<View> arrayList) {
        ((Transition) obj).addListener(new Transition.TransitionListener() { // from class: androidx.fragment.app.q.2
            @Override // android.transition.Transition.TransitionListener
            public void onTransitionCancel(Transition transition) {
            }

            @Override // android.transition.Transition.TransitionListener
            public void onTransitionEnd(Transition transition) {
                transition.removeListener(this);
                view.setVisibility(8);
                int size = arrayList.size();
                for (int i = 0; i < size; i++) {
                    ((View) arrayList.get(i)).setVisibility(0);
                }
            }

            @Override // android.transition.Transition.TransitionListener
            public void onTransitionPause(Transition transition) {
            }

            @Override // android.transition.Transition.TransitionListener
            public void onTransitionResume(Transition transition) {
            }

            @Override // android.transition.Transition.TransitionListener
            public void onTransitionStart(Transition transition) {
            }
        });
    }

    @Override // androidx.fragment.app.AbstractC0708r
    /* renamed from: b */
    public void mo19434b(Object obj, ArrayList<View> arrayList, ArrayList<View> arrayList2) {
        List<View> targets;
        Transition transition = (Transition) obj;
        if (transition instanceof TransitionSet) {
            TransitionSet transitionSet = (TransitionSet) transition;
            int transitionCount = transitionSet.getTransitionCount();
            for (int i = 0; i < transitionCount; i++) {
                mo19434b((Object) transitionSet.getTransitionAt(i), arrayList, arrayList2);
            }
        } else if (!m19616a(transition) && (targets = transition.getTargets()) != null && targets.size() == arrayList.size() && targets.containsAll(arrayList)) {
            int size = arrayList2 == null ? 0 : arrayList2.size();
            for (int i2 = 0; i2 < size; i2++) {
                transition.addTarget(arrayList2.get(i2));
            }
            for (int size2 = arrayList.size() - 1; size2 >= 0; size2--) {
                transition.removeTarget(arrayList.get(size2));
            }
        }
    }

    @Override // androidx.fragment.app.AbstractC0708r
    /* renamed from: c */
    public Object mo19433c(Object obj) {
        TransitionSet transitionSet;
        if (obj == null) {
            transitionSet = null;
        } else {
            TransitionSet transitionSet2 = new TransitionSet();
            transitionSet2.addTransition((Transition) obj);
            transitionSet = transitionSet2;
        }
        return transitionSet;
    }

    @Override // androidx.fragment.app.AbstractC0708r
    /* renamed from: c */
    public void mo19432c(Object obj, View view) {
        if (obj != null) {
            ((Transition) obj).removeTarget(view);
        }
    }
}

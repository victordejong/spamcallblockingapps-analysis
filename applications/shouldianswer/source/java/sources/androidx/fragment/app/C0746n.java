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
/* renamed from: androidx.fragment.app.n */
/* loaded from: classes-dex2jar.jar:androidx/fragment/app/n.class */
public class C0746n extends AbstractC0751o {
    /* renamed from: a */
    private static boolean m5423a(Transition transition) {
        return !m5416a((List) transition.getTargetIds()) || !m5416a((List) transition.getTargetNames()) || !m5416a((List) transition.getTargetTypes());
    }

    @Override // androidx.fragment.app.AbstractC0751o
    /* renamed from: a */
    public Object mo5277a(Object obj, Object obj2, Object obj3) {
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

    @Override // androidx.fragment.app.AbstractC0751o
    /* renamed from: a */
    public void mo5283a(ViewGroup viewGroup, Object obj) {
        TransitionManager.beginDelayedTransition(viewGroup, (Transition) obj);
    }

    @Override // androidx.fragment.app.AbstractC0751o
    /* renamed from: a */
    public void mo5280a(Object obj, final Rect rect) {
        if (obj != null) {
            ((Transition) obj).setEpicenterCallback(new Transition.EpicenterCallback() { // from class: androidx.fragment.app.n.4
                @Override // android.transition.Transition.EpicenterCallback
                public Rect onGetEpicenter(Transition transition) {
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
            ((Transition) obj).setEpicenterCallback(new Transition.EpicenterCallback() { // from class: androidx.fragment.app.n.1
                @Override // android.transition.Transition.EpicenterCallback
                public Rect onGetEpicenter(Transition transition) {
                    return rect;
                }
            });
        }
    }

    @Override // androidx.fragment.app.AbstractC0751o
    /* renamed from: a */
    public void mo5278a(Object obj, View view, ArrayList<View> arrayList) {
        TransitionSet transitionSet = (TransitionSet) obj;
        List<View> targets = transitionSet.getTargets();
        targets.clear();
        int size = arrayList.size();
        for (int i = 0; i < size; i++) {
            m5415a(targets, arrayList.get(i));
        }
        targets.add(view);
        arrayList.add(view);
        mo5275a(transitionSet, arrayList);
    }

    @Override // androidx.fragment.app.AbstractC0751o
    /* renamed from: a */
    public void mo5276a(Object obj, final Object obj2, final ArrayList<View> arrayList, final Object obj3, final ArrayList<View> arrayList2, final Object obj4, final ArrayList<View> arrayList3) {
        ((Transition) obj).addListener(new Transition.TransitionListener() { // from class: androidx.fragment.app.n.3
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
                Object obj5 = obj2;
                if (obj5 != null) {
                    C0746n.this.mo5269b(obj5, arrayList, (ArrayList<View>) null);
                }
                Object obj6 = obj3;
                if (obj6 != null) {
                    C0746n.this.mo5269b(obj6, arrayList2, (ArrayList<View>) null);
                }
                Object obj7 = obj4;
                if (obj7 != null) {
                    C0746n.this.mo5269b(obj7, arrayList3, (ArrayList<View>) null);
                }
            }
        });
    }

    @Override // androidx.fragment.app.AbstractC0751o
    /* renamed from: a */
    public void mo5275a(Object obj, ArrayList<View> arrayList) {
        Transition transition = (Transition) obj;
        if (transition == null) {
            return;
        }
        if (transition instanceof TransitionSet) {
            TransitionSet transitionSet = (TransitionSet) transition;
            int transitionCount = transitionSet.getTransitionCount();
            for (int i = 0; i < transitionCount; i++) {
                mo5275a(transitionSet.getTransitionAt(i), arrayList);
            }
        } else if (!m5423a(transition) && m5416a((List) transition.getTargets())) {
            int size = arrayList.size();
            for (int i2 = 0; i2 < size; i2++) {
                transition.addTarget(arrayList.get(i2));
            }
        }
    }

    @Override // androidx.fragment.app.AbstractC0751o
    /* renamed from: a */
    public void mo5274a(Object obj, ArrayList<View> arrayList, ArrayList<View> arrayList2) {
        TransitionSet transitionSet = (TransitionSet) obj;
        if (transitionSet != null) {
            transitionSet.getTargets().clear();
            transitionSet.getTargets().addAll(arrayList2);
            mo5269b((Object) transitionSet, arrayList, arrayList2);
        }
    }

    @Override // androidx.fragment.app.AbstractC0751o
    /* renamed from: a */
    public boolean mo5281a(Object obj) {
        return obj instanceof Transition;
    }

    @Override // androidx.fragment.app.AbstractC0751o
    /* renamed from: b */
    public Object mo5273b(Object obj) {
        return obj != null ? ((Transition) obj).clone() : null;
    }

    @Override // androidx.fragment.app.AbstractC0751o
    /* renamed from: b */
    public Object mo5270b(Object obj, Object obj2, Object obj3) {
        TransitionSet transitionSet = (Transition) obj;
        Transition transition = (Transition) obj2;
        Transition transition2 = (Transition) obj3;
        if (transitionSet != null && transition != null) {
            transitionSet = new TransitionSet().addTransition(transitionSet).addTransition(transition).setOrdering(1);
        } else if (transitionSet == null) {
            transitionSet = transition != null ? transition : null;
        }
        if (transition2 != null) {
            TransitionSet transitionSet2 = new TransitionSet();
            if (transitionSet != null) {
                transitionSet2.addTransition(transitionSet);
            }
            transitionSet2.addTransition(transition2);
            return transitionSet2;
        }
        return transitionSet;
    }

    @Override // androidx.fragment.app.AbstractC0751o
    /* renamed from: b */
    public void mo5272b(Object obj, View view) {
        if (obj != null) {
            ((Transition) obj).addTarget(view);
        }
    }

    @Override // androidx.fragment.app.AbstractC0751o
    /* renamed from: b */
    public void mo5271b(Object obj, final View view, final ArrayList<View> arrayList) {
        ((Transition) obj).addListener(new Transition.TransitionListener() { // from class: androidx.fragment.app.n.2
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

    @Override // androidx.fragment.app.AbstractC0751o
    /* renamed from: b */
    public void mo5269b(Object obj, ArrayList<View> arrayList, ArrayList<View> arrayList2) {
        List<View> targets;
        Transition transition = (Transition) obj;
        if (transition instanceof TransitionSet) {
            TransitionSet transitionSet = (TransitionSet) transition;
            int transitionCount = transitionSet.getTransitionCount();
            for (int i = 0; i < transitionCount; i++) {
                mo5269b((Object) transitionSet.getTransitionAt(i), arrayList, arrayList2);
            }
        } else if (!m5423a(transition) && (targets = transition.getTargets()) != null && targets.size() == arrayList.size() && targets.containsAll(arrayList)) {
            int size = arrayList2 == null ? 0 : arrayList2.size();
            for (int i2 = 0; i2 < size; i2++) {
                transition.addTarget(arrayList2.get(i2));
            }
            for (int size2 = arrayList.size() - 1; size2 >= 0; size2--) {
                transition.removeTarget(arrayList.get(size2));
            }
        }
    }

    @Override // androidx.fragment.app.AbstractC0751o
    /* renamed from: c */
    public Object mo5268c(Object obj) {
        if (obj == null) {
            return null;
        }
        TransitionSet transitionSet = new TransitionSet();
        transitionSet.addTransition((Transition) obj);
        return transitionSet;
    }

    @Override // androidx.fragment.app.AbstractC0751o
    /* renamed from: c */
    public void mo5267c(Object obj, View view) {
        if (obj != null) {
            ((Transition) obj).removeTarget(view);
        }
    }
}

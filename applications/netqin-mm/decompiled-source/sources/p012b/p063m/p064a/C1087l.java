package p012b.p063m.p064a;

import android.graphics.Rect;
import android.transition.Transition;
import android.transition.TransitionManager;
import android.transition.TransitionSet;
import android.view.View;
import android.view.ViewGroup;
import java.util.ArrayList;
import java.util.List;
/* renamed from: b.m.a.l */
/* loaded from: classes-dex2jar.jar:b/m/a/l.class */
public class C1087l extends AbstractC1092m {

    /* renamed from: b.m.a.l$a */
    /* loaded from: classes-dex2jar.jar:b/m/a/l$a.class */
    public class C1088a extends Transition.EpicenterCallback {

        /* renamed from: a */
        public final /* synthetic */ Rect f4576a;

        public C1088a(C1087l lVar, Rect rect) {
            this.f4576a = rect;
        }

        @Override // android.transition.Transition.EpicenterCallback
        public Rect onGetEpicenter(Transition transition) {
            return this.f4576a;
        }
    }

    /* renamed from: b.m.a.l$b */
    /* loaded from: classes-dex2jar.jar:b/m/a/l$b.class */
    public class C1089b implements Transition.TransitionListener {

        /* renamed from: a */
        public final /* synthetic */ View f4577a;

        /* renamed from: b */
        public final /* synthetic */ ArrayList f4578b;

        public C1089b(C1087l lVar, View view, ArrayList arrayList) {
            this.f4577a = view;
            this.f4578b = arrayList;
        }

        @Override // android.transition.Transition.TransitionListener
        public void onTransitionCancel(Transition transition) {
        }

        @Override // android.transition.Transition.TransitionListener
        public void onTransitionEnd(Transition transition) {
            transition.removeListener(this);
            this.f4577a.setVisibility(8);
            int size = this.f4578b.size();
            for (int i = 0; i < size; i++) {
                ((View) this.f4578b.get(i)).setVisibility(0);
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
    }

    /* renamed from: b.m.a.l$c */
    /* loaded from: classes-dex2jar.jar:b/m/a/l$c.class */
    public class C1090c implements Transition.TransitionListener {

        /* renamed from: a */
        public final /* synthetic */ Object f4579a;

        /* renamed from: b */
        public final /* synthetic */ ArrayList f4580b;

        /* renamed from: c */
        public final /* synthetic */ Object f4581c;

        /* renamed from: d */
        public final /* synthetic */ ArrayList f4582d;

        /* renamed from: e */
        public final /* synthetic */ Object f4583e;

        /* renamed from: f */
        public final /* synthetic */ ArrayList f4584f;

        public C1090c(Object obj, ArrayList arrayList, Object obj2, ArrayList arrayList2, Object obj3, ArrayList arrayList3) {
            this.f4579a = obj;
            this.f4580b = arrayList;
            this.f4581c = obj2;
            this.f4582d = arrayList2;
            this.f4583e = obj3;
            this.f4584f = arrayList3;
        }

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
            Object obj = this.f4579a;
            if (obj != null) {
                C1087l.this.mo34697a(obj, this.f4580b, (ArrayList<View>) null);
            }
            Object obj2 = this.f4581c;
            if (obj2 != null) {
                C1087l.this.mo34697a(obj2, this.f4582d, (ArrayList<View>) null);
            }
            Object obj3 = this.f4583e;
            if (obj3 != null) {
                C1087l.this.mo34697a(obj3, this.f4584f, (ArrayList<View>) null);
            }
        }
    }

    /* renamed from: b.m.a.l$d */
    /* loaded from: classes-dex2jar.jar:b/m/a/l$d.class */
    public class C1091d extends Transition.EpicenterCallback {

        /* renamed from: a */
        public final /* synthetic */ Rect f4586a;

        public C1091d(C1087l lVar, Rect rect) {
            this.f4586a = rect;
        }

        @Override // android.transition.Transition.EpicenterCallback
        public Rect onGetEpicenter(Transition transition) {
            Rect rect = this.f4586a;
            if (rect == null || rect.isEmpty()) {
                return null;
            }
            return this.f4586a;
        }
    }

    /* renamed from: a */
    public static boolean m34710a(Transition transition) {
        return !AbstractC1092m.m34694a((List) transition.getTargetIds()) || !AbstractC1092m.m34694a((List) transition.getTargetNames()) || !AbstractC1092m.m34694a((List) transition.getTargetTypes());
    }

    @Override // p012b.p063m.p064a.AbstractC1092m
    /* renamed from: a */
    public Object mo34700a(Object obj, Object obj2, Object obj3) {
        Transition transition = (Transition) obj;
        Transition transition2 = (Transition) obj2;
        Transition transition3 = (Transition) obj3;
        if (transition != null && transition2 != null) {
            transition = new TransitionSet().addTransition(transition).addTransition(transition2).setOrdering(1);
        } else if (transition == null) {
            transition = transition2 != null ? transition2 : null;
        }
        if (transition3 == null) {
            return transition;
        }
        TransitionSet transitionSet = new TransitionSet();
        if (transition != null) {
            transitionSet.addTransition(transition);
        }
        transitionSet.addTransition(transition3);
        return transitionSet;
    }

    @Override // p012b.p063m.p064a.AbstractC1092m
    /* renamed from: a */
    public void mo34706a(ViewGroup viewGroup, Object obj) {
        TransitionManager.beginDelayedTransition(viewGroup, (Transition) obj);
    }

    @Override // p012b.p063m.p064a.AbstractC1092m
    /* renamed from: a */
    public void mo34703a(Object obj, Rect rect) {
        if (obj != null) {
            ((Transition) obj).setEpicenterCallback(new C1091d(this, rect));
        }
    }

    @Override // p012b.p063m.p064a.AbstractC1092m
    /* renamed from: a */
    public void mo34702a(Object obj, View view) {
        if (obj != null) {
            ((Transition) obj).addTarget(view);
        }
    }

    @Override // p012b.p063m.p064a.AbstractC1092m
    /* renamed from: a */
    public void mo34701a(Object obj, View view, ArrayList<View> arrayList) {
        ((Transition) obj).addListener(new C1089b(this, view, arrayList));
    }

    @Override // p012b.p063m.p064a.AbstractC1092m
    /* renamed from: a */
    public void mo34699a(Object obj, Object obj2, ArrayList<View> arrayList, Object obj3, ArrayList<View> arrayList2, Object obj4, ArrayList<View> arrayList3) {
        ((Transition) obj).addListener(new C1090c(obj2, arrayList, obj3, arrayList2, obj4, arrayList3));
    }

    @Override // p012b.p063m.p064a.AbstractC1092m
    /* renamed from: a */
    public void mo34698a(Object obj, ArrayList<View> arrayList) {
        Transition transition = (Transition) obj;
        if (transition != null) {
            if (transition instanceof TransitionSet) {
                TransitionSet transitionSet = (TransitionSet) transition;
                int transitionCount = transitionSet.getTransitionCount();
                for (int i = 0; i < transitionCount; i++) {
                    mo34698a(transitionSet.getTransitionAt(i), arrayList);
                }
            } else if (!m34710a(transition) && AbstractC1092m.m34694a((List) transition.getTargets())) {
                int size = arrayList.size();
                for (int i2 = 0; i2 < size; i2++) {
                    transition.addTarget(arrayList.get(i2));
                }
            }
        }
    }

    @Override // p012b.p063m.p064a.AbstractC1092m
    /* renamed from: a */
    public void mo34697a(Object obj, ArrayList<View> arrayList, ArrayList<View> arrayList2) {
        List<View> targets;
        Transition transition = (Transition) obj;
        if (transition instanceof TransitionSet) {
            TransitionSet transitionSet = (TransitionSet) transition;
            int transitionCount = transitionSet.getTransitionCount();
            for (int i = 0; i < transitionCount; i++) {
                mo34697a((Object) transitionSet.getTransitionAt(i), arrayList, arrayList2);
            }
        } else if (!m34710a(transition) && (targets = transition.getTargets()) != null && targets.size() == arrayList.size() && targets.containsAll(arrayList)) {
            int size = arrayList2 == null ? 0 : arrayList2.size();
            for (int i2 = 0; i2 < size; i2++) {
                transition.addTarget(arrayList2.get(i2));
            }
            for (int size2 = arrayList.size() - 1; size2 >= 0; size2--) {
                transition.removeTarget(arrayList.get(size2));
            }
        }
    }

    @Override // p012b.p063m.p064a.AbstractC1092m
    /* renamed from: a */
    public boolean mo34704a(Object obj) {
        return obj instanceof Transition;
    }

    @Override // p012b.p063m.p064a.AbstractC1092m
    /* renamed from: b */
    public Object mo34689b(Object obj) {
        return obj != null ? ((Transition) obj).clone() : null;
    }

    @Override // p012b.p063m.p064a.AbstractC1092m
    /* renamed from: b */
    public Object mo34686b(Object obj, Object obj2, Object obj3) {
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

    @Override // p012b.p063m.p064a.AbstractC1092m
    /* renamed from: b */
    public void mo34688b(Object obj, View view) {
        if (obj != null) {
            ((Transition) obj).removeTarget(view);
        }
    }

    @Override // p012b.p063m.p064a.AbstractC1092m
    /* renamed from: b */
    public void mo34687b(Object obj, View view, ArrayList<View> arrayList) {
        TransitionSet transitionSet = (TransitionSet) obj;
        List<View> targets = transitionSet.getTargets();
        targets.clear();
        int size = arrayList.size();
        for (int i = 0; i < size; i++) {
            AbstractC1092m.m34693a(targets, arrayList.get(i));
        }
        targets.add(view);
        arrayList.add(view);
        mo34698a(transitionSet, arrayList);
    }

    @Override // p012b.p063m.p064a.AbstractC1092m
    /* renamed from: b */
    public void mo34685b(Object obj, ArrayList<View> arrayList, ArrayList<View> arrayList2) {
        TransitionSet transitionSet = (TransitionSet) obj;
        if (transitionSet != null) {
            transitionSet.getTargets().clear();
            transitionSet.getTargets().addAll(arrayList2);
            mo34697a((Object) transitionSet, arrayList, arrayList2);
        }
    }

    @Override // p012b.p063m.p064a.AbstractC1092m
    /* renamed from: c */
    public Object mo34684c(Object obj) {
        if (obj == null) {
            return null;
        }
        TransitionSet transitionSet = new TransitionSet();
        transitionSet.addTransition((Transition) obj);
        return transitionSet;
    }

    @Override // p012b.p063m.p064a.AbstractC1092m
    /* renamed from: c */
    public void mo34683c(Object obj, View view) {
        if (view != null) {
            Rect rect = new Rect();
            m34709a(view, rect);
            ((Transition) obj).setEpicenterCallback(new C1088a(this, rect));
        }
    }
}

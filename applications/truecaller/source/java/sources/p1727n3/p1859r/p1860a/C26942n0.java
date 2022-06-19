package p1727n3.p1859r.p1860a;

import android.graphics.Rect;
import android.transition.Transition;
import android.transition.TransitionManager;
import android.transition.TransitionSet;
import android.view.View;
import android.view.ViewGroup;
import androidx.fragment.app.Fragment;
import java.util.ArrayList;
import java.util.List;
import p1727n3.p1807k.p1816e.C26508a;
/* renamed from: n3.r.a.n0 */
/* loaded from: classes-dex2jar.jar:n3/r/a/n0.class */
public class C26942n0 extends AbstractC26949o0 {

    /* renamed from: n3.r.a.n0$a */
    /* loaded from: classes-dex2jar.jar:n3/r/a/n0$a.class */
    public class C26943a extends Transition.EpicenterCallback {

        /* renamed from: a */
        public final /* synthetic */ Rect f75407a;

        public C26943a(C26942n0 c26942n0, Rect rect) {
            this.f75407a = rect;
        }

        @Override // android.transition.Transition.EpicenterCallback
        public Rect onGetEpicenter(Transition transition) {
            return this.f75407a;
        }
    }

    /* renamed from: n3.r.a.n0$b */
    /* loaded from: classes-dex2jar.jar:n3/r/a/n0$b.class */
    public class C26944b implements Transition.TransitionListener {

        /* renamed from: a */
        public final /* synthetic */ View f75408a;

        /* renamed from: b */
        public final /* synthetic */ ArrayList f75409b;

        public C26944b(C26942n0 c26942n0, View view, ArrayList arrayList) {
            this.f75408a = view;
            this.f75409b = arrayList;
        }

        @Override // android.transition.Transition.TransitionListener
        public void onTransitionCancel(Transition transition) {
        }

        @Override // android.transition.Transition.TransitionListener
        public void onTransitionEnd(Transition transition) {
            transition.removeListener(this);
            this.f75408a.setVisibility(8);
            int size = this.f75409b.size();
            for (int i = 0; i < size; i++) {
                ((View) this.f75409b.get(i)).setVisibility(0);
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
            transition.removeListener(this);
            transition.addListener(this);
        }
    }

    /* renamed from: n3.r.a.n0$c */
    /* loaded from: classes-dex2jar.jar:n3/r/a/n0$c.class */
    public class C26945c implements Transition.TransitionListener {

        /* renamed from: a */
        public final /* synthetic */ Object f75410a;

        /* renamed from: b */
        public final /* synthetic */ ArrayList f75411b;

        /* renamed from: c */
        public final /* synthetic */ Object f75412c;

        /* renamed from: d */
        public final /* synthetic */ ArrayList f75413d;

        /* renamed from: e */
        public final /* synthetic */ Object f75414e;

        /* renamed from: f */
        public final /* synthetic */ ArrayList f75415f;

        public C26945c(Object obj, ArrayList arrayList, Object obj2, ArrayList arrayList2, Object obj3, ArrayList arrayList3) {
            C26942n0.this = r4;
            this.f75410a = obj;
            this.f75411b = arrayList;
            this.f75412c = obj2;
            this.f75413d = arrayList2;
            this.f75414e = obj3;
            this.f75415f = arrayList3;
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
            Object obj = this.f75410a;
            if (obj != null) {
                C26942n0.this.mo1082p(obj, this.f75411b, null);
            }
            Object obj2 = this.f75412c;
            if (obj2 != null) {
                C26942n0.this.mo1082p(obj2, this.f75413d, null);
            }
            Object obj3 = this.f75414e;
            if (obj3 != null) {
                C26942n0.this.mo1082p(obj3, this.f75415f, null);
            }
        }
    }

    /* renamed from: n3.r.a.n0$d */
    /* loaded from: classes-dex2jar.jar:n3/r/a/n0$d.class */
    public class C26946d implements Transition.TransitionListener {

        /* renamed from: a */
        public final /* synthetic */ Runnable f75417a;

        public C26946d(C26942n0 c26942n0, Runnable runnable) {
            this.f75417a = runnable;
        }

        @Override // android.transition.Transition.TransitionListener
        public void onTransitionCancel(Transition transition) {
        }

        @Override // android.transition.Transition.TransitionListener
        public void onTransitionEnd(Transition transition) {
            this.f75417a.run();
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

    /* renamed from: n3.r.a.n0$e */
    /* loaded from: classes-dex2jar.jar:n3/r/a/n0$e.class */
    public class C26947e extends Transition.EpicenterCallback {

        /* renamed from: a */
        public final /* synthetic */ Rect f75418a;

        public C26947e(C26942n0 c26942n0, Rect rect) {
            this.f75418a = rect;
        }

        @Override // android.transition.Transition.EpicenterCallback
        public Rect onGetEpicenter(Transition transition) {
            Rect rect = this.f75418a;
            if (rect == null || rect.isEmpty()) {
                return null;
            }
            return this.f75418a;
        }
    }

    /* renamed from: z */
    public static boolean m1098z(Transition transition) {
        return !AbstractC26949o0.m1087k(transition.getTargetIds()) || !AbstractC26949o0.m1087k(transition.getTargetNames()) || !AbstractC26949o0.m1087k(transition.getTargetTypes());
    }

    @Override // p1727n3.p1859r.p1860a.AbstractC26949o0
    /* renamed from: a */
    public void mo1097a(Object obj, View view) {
        if (obj != null) {
            ((Transition) obj).addTarget(view);
        }
    }

    @Override // p1727n3.p1859r.p1860a.AbstractC26949o0
    /* renamed from: b */
    public void mo1096b(Object obj, ArrayList<View> arrayList) {
        Transition transition = (Transition) obj;
        if (transition == null) {
            return;
        }
        if (transition instanceof TransitionSet) {
            TransitionSet transitionSet = (TransitionSet) transition;
            int transitionCount = transitionSet.getTransitionCount();
            for (int i = 0; i < transitionCount; i++) {
                mo1096b(transitionSet.getTransitionAt(i), arrayList);
            }
        } else if (!m1098z(transition) && AbstractC26949o0.m1087k(transition.getTargets())) {
            int size = arrayList.size();
            for (int i2 = 0; i2 < size; i2++) {
                transition.addTarget(arrayList.get(i2));
            }
        }
    }

    @Override // p1727n3.p1859r.p1860a.AbstractC26949o0
    /* renamed from: c */
    public void mo1095c(ViewGroup viewGroup, Object obj) {
        TransitionManager.beginDelayedTransition(viewGroup, (Transition) obj);
    }

    @Override // p1727n3.p1859r.p1860a.AbstractC26949o0
    /* renamed from: e */
    public boolean mo1093e(Object obj) {
        return obj instanceof Transition;
    }

    @Override // p1727n3.p1859r.p1860a.AbstractC26949o0
    /* renamed from: g */
    public Object mo1091g(Object obj) {
        return obj != null ? ((Transition) obj).clone() : null;
    }

    @Override // p1727n3.p1859r.p1860a.AbstractC26949o0
    /* renamed from: l */
    public Object mo1086l(Object obj, Object obj2, Object obj3) {
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

    @Override // p1727n3.p1859r.p1860a.AbstractC26949o0
    /* renamed from: m */
    public Object mo1085m(Object obj, Object obj2, Object obj3) {
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

    @Override // p1727n3.p1859r.p1860a.AbstractC26949o0
    /* renamed from: o */
    public void mo1083o(Object obj, View view) {
        if (obj != null) {
            ((Transition) obj).removeTarget(view);
        }
    }

    @Override // p1727n3.p1859r.p1860a.AbstractC26949o0
    /* renamed from: p */
    public void mo1082p(Object obj, ArrayList<View> arrayList, ArrayList<View> arrayList2) {
        List<View> targets;
        Transition transition = (Transition) obj;
        if (transition instanceof TransitionSet) {
            TransitionSet transitionSet = (TransitionSet) transition;
            int transitionCount = transitionSet.getTransitionCount();
            for (int i = 0; i < transitionCount; i++) {
                mo1082p(transitionSet.getTransitionAt(i), arrayList, arrayList2);
            }
        } else if (!m1098z(transition) && (targets = transition.getTargets()) != null && targets.size() == arrayList.size() && targets.containsAll(arrayList)) {
            int size = arrayList2 == null ? 0 : arrayList2.size();
            for (int i2 = 0; i2 < size; i2++) {
                transition.addTarget(arrayList2.get(i2));
            }
            for (int size2 = arrayList.size() - 1; size2 >= 0; size2--) {
                transition.removeTarget(arrayList.get(size2));
            }
        }
    }

    @Override // p1727n3.p1859r.p1860a.AbstractC26949o0
    /* renamed from: q */
    public void mo1081q(Object obj, View view, ArrayList<View> arrayList) {
        ((Transition) obj).addListener(new C26944b(this, view, arrayList));
    }

    @Override // p1727n3.p1859r.p1860a.AbstractC26949o0
    /* renamed from: r */
    public void mo1080r(Object obj, Object obj2, ArrayList<View> arrayList, Object obj3, ArrayList<View> arrayList2, Object obj4, ArrayList<View> arrayList3) {
        ((Transition) obj).addListener(new C26945c(obj2, arrayList, obj3, arrayList2, obj4, arrayList3));
    }

    @Override // p1727n3.p1859r.p1860a.AbstractC26949o0
    /* renamed from: s */
    public void mo1079s(Object obj, Rect rect) {
        if (obj != null) {
            ((Transition) obj).setEpicenterCallback(new C26947e(this, rect));
        }
    }

    @Override // p1727n3.p1859r.p1860a.AbstractC26949o0
    /* renamed from: t */
    public void mo1078t(Object obj, View view) {
        if (view != null) {
            Rect rect = new Rect();
            m1088j(view, rect);
            ((Transition) obj).setEpicenterCallback(new C26943a(this, rect));
        }
    }

    @Override // p1727n3.p1859r.p1860a.AbstractC26949o0
    /* renamed from: u */
    public void mo1077u(Fragment fragment, Object obj, C26508a c26508a, Runnable runnable) {
        ((Transition) obj).addListener(new C26946d(this, runnable));
    }

    @Override // p1727n3.p1859r.p1860a.AbstractC26949o0
    /* renamed from: w */
    public void mo1075w(Object obj, View view, ArrayList<View> arrayList) {
        TransitionSet transitionSet = (TransitionSet) obj;
        List<View> targets = transitionSet.getTargets();
        targets.clear();
        int size = arrayList.size();
        for (int i = 0; i < size; i++) {
            AbstractC26949o0.m1094d(targets, arrayList.get(i));
        }
        targets.add(view);
        arrayList.add(view);
        mo1096b(transitionSet, arrayList);
    }

    @Override // p1727n3.p1859r.p1860a.AbstractC26949o0
    /* renamed from: x */
    public void mo1074x(Object obj, ArrayList<View> arrayList, ArrayList<View> arrayList2) {
        TransitionSet transitionSet = (TransitionSet) obj;
        if (transitionSet != null) {
            transitionSet.getTargets().clear();
            transitionSet.getTargets().addAll(arrayList2);
            mo1082p(transitionSet, arrayList, arrayList2);
        }
    }

    @Override // p1727n3.p1859r.p1860a.AbstractC26949o0
    /* renamed from: y */
    public Object mo1073y(Object obj) {
        if (obj == null) {
            return null;
        }
        TransitionSet transitionSet = new TransitionSet();
        transitionSet.addTransition((Transition) obj);
        return transitionSet;
    }
}

package androidx.fragment.app;

import android.graphics.Rect;
import android.transition.Transition;
import android.transition.TransitionManager;
import android.transition.TransitionSet;
import android.view.View;
import android.view.ViewGroup;
import androidx.core.p008os.C0623b;
import java.util.ArrayList;
import java.util.List;
/* JADX INFO: Access modifiers changed from: package-private */
/* renamed from: androidx.fragment.app.u */
/* loaded from: classes-dex2jar.jar:androidx/fragment/app/u.class */
public class C0765u extends AbstractC0771v {

    /* renamed from: androidx.fragment.app.u$a */
    /* loaded from: classes-dex2jar.jar:androidx/fragment/app/u$a.class */
    class C0766a extends Transition.EpicenterCallback {

        /* renamed from: a */
        final /* synthetic */ Rect f3618a;

        C0766a(Rect rect) {
            C0765u.this = r4;
            this.f3618a = rect;
        }

        @Override // android.transition.Transition.EpicenterCallback
        public Rect onGetEpicenter(Transition transition) {
            return this.f3618a;
        }
    }

    /* renamed from: androidx.fragment.app.u$b */
    /* loaded from: classes-dex2jar.jar:androidx/fragment/app/u$b.class */
    class C0767b implements Transition.TransitionListener {

        /* renamed from: a */
        final /* synthetic */ View f3620a;

        /* renamed from: b */
        final /* synthetic */ ArrayList f3621b;

        C0767b(View view, ArrayList arrayList) {
            C0765u.this = r4;
            this.f3620a = view;
            this.f3621b = arrayList;
        }

        @Override // android.transition.Transition.TransitionListener
        public void onTransitionCancel(Transition transition) {
        }

        @Override // android.transition.Transition.TransitionListener
        public void onTransitionEnd(Transition transition) {
            transition.removeListener(this);
            this.f3620a.setVisibility(8);
            int size = this.f3621b.size();
            for (int i = 0; i < size; i++) {
                ((View) this.f3621b.get(i)).setVisibility(0);
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

    /* renamed from: androidx.fragment.app.u$c */
    /* loaded from: classes-dex2jar.jar:androidx/fragment/app/u$c.class */
    class C0768c implements Transition.TransitionListener {

        /* renamed from: a */
        final /* synthetic */ Object f3623a;

        /* renamed from: b */
        final /* synthetic */ ArrayList f3624b;

        /* renamed from: c */
        final /* synthetic */ Object f3625c;

        /* renamed from: d */
        final /* synthetic */ ArrayList f3626d;

        /* renamed from: e */
        final /* synthetic */ Object f3627e;

        /* renamed from: f */
        final /* synthetic */ ArrayList f3628f;

        C0768c(Object obj, ArrayList arrayList, Object obj2, ArrayList arrayList2, Object obj3, ArrayList arrayList3) {
            C0765u.this = r4;
            this.f3623a = obj;
            this.f3624b = arrayList;
            this.f3625c = obj2;
            this.f3626d = arrayList2;
            this.f3627e = obj3;
            this.f3628f = arrayList3;
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
            Object obj = this.f3623a;
            if (obj != null) {
                C0765u.this.mo30920q(obj, this.f3624b, null);
            }
            Object obj2 = this.f3625c;
            if (obj2 != null) {
                C0765u.this.mo30920q(obj2, this.f3626d, null);
            }
            Object obj3 = this.f3627e;
            if (obj3 != null) {
                C0765u.this.mo30920q(obj3, this.f3628f, null);
            }
        }
    }

    /* renamed from: androidx.fragment.app.u$d */
    /* loaded from: classes-dex2jar.jar:androidx/fragment/app/u$d.class */
    class C0769d implements Transition.TransitionListener {

        /* renamed from: a */
        final /* synthetic */ Runnable f3630a;

        C0769d(Runnable runnable) {
            C0765u.this = r4;
            this.f3630a = runnable;
        }

        @Override // android.transition.Transition.TransitionListener
        public void onTransitionCancel(Transition transition) {
        }

        @Override // android.transition.Transition.TransitionListener
        public void onTransitionEnd(Transition transition) {
            this.f3630a.run();
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

    /* renamed from: androidx.fragment.app.u$e */
    /* loaded from: classes-dex2jar.jar:androidx/fragment/app/u$e.class */
    class C0770e extends Transition.EpicenterCallback {

        /* renamed from: a */
        final /* synthetic */ Rect f3632a;

        C0770e(Rect rect) {
            C0765u.this = r4;
            this.f3632a = rect;
        }

        @Override // android.transition.Transition.EpicenterCallback
        public Rect onGetEpicenter(Transition transition) {
            Rect rect = this.f3632a;
            if (rect == null || rect.isEmpty()) {
                return null;
            }
            return this.f3632a;
        }
    }

    /* renamed from: C */
    private static boolean m32461C(Transition transition) {
        return !AbstractC0771v.m32454l(transition.getTargetIds()) || !AbstractC0771v.m32454l(transition.getTargetNames()) || !AbstractC0771v.m32454l(transition.getTargetTypes());
    }

    @Override // androidx.fragment.app.AbstractC0771v
    /* renamed from: A */
    public void mo30931A(Object obj, ArrayList<View> arrayList, ArrayList<View> arrayList2) {
        TransitionSet transitionSet = (TransitionSet) obj;
        if (transitionSet != null) {
            transitionSet.getTargets().clear();
            transitionSet.getTargets().addAll(arrayList2);
            mo30920q(transitionSet, arrayList, arrayList2);
        }
    }

    @Override // androidx.fragment.app.AbstractC0771v
    /* renamed from: B */
    public Object mo30930B(Object obj) {
        if (obj == null) {
            return null;
        }
        TransitionSet transitionSet = new TransitionSet();
        transitionSet.addTransition((Transition) obj);
        return transitionSet;
    }

    @Override // androidx.fragment.app.AbstractC0771v
    /* renamed from: a */
    public void mo30928a(Object obj, View view) {
        if (obj != null) {
            ((Transition) obj).addTarget(view);
        }
    }

    @Override // androidx.fragment.app.AbstractC0771v
    /* renamed from: b */
    public void mo30927b(Object obj, ArrayList<View> arrayList) {
        Transition transition = (Transition) obj;
        if (transition == null) {
            return;
        }
        if (transition instanceof TransitionSet) {
            TransitionSet transitionSet = (TransitionSet) transition;
            int transitionCount = transitionSet.getTransitionCount();
            for (int i = 0; i < transitionCount; i++) {
                mo30927b(transitionSet.getTransitionAt(i), arrayList);
            }
        } else if (!m32461C(transition) && AbstractC0771v.m32454l(transition.getTargets())) {
            int size = arrayList.size();
            for (int i2 = 0; i2 < size; i2++) {
                transition.addTarget(arrayList.get(i2));
            }
        }
    }

    @Override // androidx.fragment.app.AbstractC0771v
    /* renamed from: c */
    public void mo30926c(ViewGroup viewGroup, Object obj) {
        TransitionManager.beginDelayedTransition(viewGroup, (Transition) obj);
    }

    @Override // androidx.fragment.app.AbstractC0771v
    /* renamed from: e */
    public boolean mo30925e(Object obj) {
        return obj instanceof Transition;
    }

    @Override // androidx.fragment.app.AbstractC0771v
    /* renamed from: g */
    public Object mo30924g(Object obj) {
        return obj != null ? ((Transition) obj).clone() : null;
    }

    @Override // androidx.fragment.app.AbstractC0771v
    /* renamed from: m */
    public Object mo30923m(Object obj, Object obj2, Object obj3) {
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

    @Override // androidx.fragment.app.AbstractC0771v
    /* renamed from: n */
    public Object mo30922n(Object obj, Object obj2, Object obj3) {
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

    @Override // androidx.fragment.app.AbstractC0771v
    /* renamed from: p */
    public void mo30921p(Object obj, View view) {
        if (obj != null) {
            ((Transition) obj).removeTarget(view);
        }
    }

    @Override // androidx.fragment.app.AbstractC0771v
    /* renamed from: q */
    public void mo30920q(Object obj, ArrayList<View> arrayList, ArrayList<View> arrayList2) {
        List<View> targets;
        Transition transition = (Transition) obj;
        if (transition instanceof TransitionSet) {
            TransitionSet transitionSet = (TransitionSet) transition;
            int transitionCount = transitionSet.getTransitionCount();
            for (int i = 0; i < transitionCount; i++) {
                mo30920q(transitionSet.getTransitionAt(i), arrayList, arrayList2);
            }
        } else if (!m32461C(transition) && (targets = transition.getTargets()) != null && targets.size() == arrayList.size() && targets.containsAll(arrayList)) {
            int size = arrayList2 == null ? 0 : arrayList2.size();
            for (int i2 = 0; i2 < size; i2++) {
                transition.addTarget(arrayList2.get(i2));
            }
            for (int size2 = arrayList.size() - 1; size2 >= 0; size2--) {
                transition.removeTarget(arrayList.get(size2));
            }
        }
    }

    @Override // androidx.fragment.app.AbstractC0771v
    /* renamed from: r */
    public void mo30919r(Object obj, View view, ArrayList<View> arrayList) {
        ((Transition) obj).addListener(new C0767b(view, arrayList));
    }

    @Override // androidx.fragment.app.AbstractC0771v
    /* renamed from: t */
    public void mo30918t(Object obj, Object obj2, ArrayList<View> arrayList, Object obj3, ArrayList<View> arrayList2, Object obj4, ArrayList<View> arrayList3) {
        ((Transition) obj).addListener(new C0768c(obj2, arrayList, obj3, arrayList2, obj4, arrayList3));
    }

    @Override // androidx.fragment.app.AbstractC0771v
    /* renamed from: u */
    public void mo30917u(Object obj, Rect rect) {
        if (obj != null) {
            ((Transition) obj).setEpicenterCallback(new C0770e(rect));
        }
    }

    @Override // androidx.fragment.app.AbstractC0771v
    /* renamed from: v */
    public void mo30916v(Object obj, View view) {
        if (view != null) {
            Rect rect = new Rect();
            m32455k(view, rect);
            ((Transition) obj).setEpicenterCallback(new C0766a(rect));
        }
    }

    @Override // androidx.fragment.app.AbstractC0771v
    /* renamed from: w */
    public void mo32451w(Fragment fragment, Object obj, C0623b c0623b, Runnable runnable) {
        ((Transition) obj).addListener(new C0769d(runnable));
    }

    @Override // androidx.fragment.app.AbstractC0771v
    /* renamed from: z */
    public void mo30915z(Object obj, View view, ArrayList<View> arrayList) {
        TransitionSet transitionSet = (TransitionSet) obj;
        List<View> targets = transitionSet.getTargets();
        targets.clear();
        int size = arrayList.size();
        for (int i = 0; i < size; i++) {
            AbstractC0771v.m32460d(targets, arrayList.get(i));
        }
        targets.add(view);
        arrayList.add(view);
        mo30927b(transitionSet, arrayList);
    }
}

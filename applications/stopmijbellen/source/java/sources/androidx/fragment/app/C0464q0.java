package androidx.fragment.app;

import android.graphics.Rect;
import android.transition.Transition;
import android.transition.TransitionManager;
import android.transition.TransitionSet;
import android.view.View;
import android.view.ViewGroup;
import java.util.ArrayList;
import java.util.List;
import p120i0.C3056b;
/* renamed from: androidx.fragment.app.q0 */
/* loaded from: classes-dex2jar.jar:androidx/fragment/app/q0.class */
public class C0464q0 extends AbstractC0471r0 {

    /* renamed from: androidx.fragment.app.q0$a */
    /* loaded from: classes-dex2jar.jar:androidx/fragment/app/q0$a.class */
    public class C0465a extends Transition.EpicenterCallback {

        /* renamed from: a */
        public final /* synthetic */ Rect f1911a;

        public C0465a(C0464q0 c0464q0, Rect rect) {
            this.f1911a = rect;
        }

        @Override // android.transition.Transition.EpicenterCallback
        public Rect onGetEpicenter(Transition transition) {
            return this.f1911a;
        }
    }

    /* renamed from: androidx.fragment.app.q0$b */
    /* loaded from: classes-dex2jar.jar:androidx/fragment/app/q0$b.class */
    public class C0466b implements Transition.TransitionListener {

        /* renamed from: a */
        public final /* synthetic */ View f1912a;

        /* renamed from: b */
        public final /* synthetic */ ArrayList f1913b;

        public C0466b(C0464q0 c0464q0, View view, ArrayList arrayList) {
            this.f1912a = view;
            this.f1913b = arrayList;
        }

        @Override // android.transition.Transition.TransitionListener
        public void onTransitionCancel(Transition transition) {
        }

        @Override // android.transition.Transition.TransitionListener
        public void onTransitionEnd(Transition transition) {
            transition.removeListener(this);
            this.f1912a.setVisibility(8);
            int size = this.f1913b.size();
            for (int i = 0; i < size; i++) {
                ((View) this.f1913b.get(i)).setVisibility(0);
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

    /* renamed from: androidx.fragment.app.q0$c */
    /* loaded from: classes-dex2jar.jar:androidx/fragment/app/q0$c.class */
    public class C0467c implements Transition.TransitionListener {

        /* renamed from: a */
        public final /* synthetic */ Object f1914a;

        /* renamed from: b */
        public final /* synthetic */ ArrayList f1915b;

        /* renamed from: c */
        public final /* synthetic */ Object f1916c;

        /* renamed from: d */
        public final /* synthetic */ ArrayList f1917d;

        /* renamed from: e */
        public final /* synthetic */ Object f1918e;

        /* renamed from: f */
        public final /* synthetic */ ArrayList f1919f;

        public C0467c(Object obj, ArrayList arrayList, Object obj2, ArrayList arrayList2, Object obj3, ArrayList arrayList3) {
            C0464q0.this = r4;
            this.f1914a = obj;
            this.f1915b = arrayList;
            this.f1916c = obj2;
            this.f1917d = arrayList2;
            this.f1918e = obj3;
            this.f1919f = arrayList3;
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
            Object obj = this.f1914a;
            if (obj != null) {
                C0464q0.this.mo2291p(obj, this.f1915b, null);
            }
            Object obj2 = this.f1916c;
            if (obj2 != null) {
                C0464q0.this.mo2291p(obj2, this.f1917d, null);
            }
            Object obj3 = this.f1918e;
            if (obj3 != null) {
                C0464q0.this.mo2291p(obj3, this.f1919f, null);
            }
        }
    }

    /* renamed from: androidx.fragment.app.q0$d */
    /* loaded from: classes-dex2jar.jar:androidx/fragment/app/q0$d.class */
    public class C0468d implements Transition.TransitionListener {

        /* renamed from: a */
        public final /* synthetic */ Runnable f1921a;

        public C0468d(C0464q0 c0464q0, Runnable runnable) {
            this.f1921a = runnable;
        }

        @Override // android.transition.Transition.TransitionListener
        public void onTransitionCancel(Transition transition) {
        }

        @Override // android.transition.Transition.TransitionListener
        public void onTransitionEnd(Transition transition) {
            this.f1921a.run();
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

    /* renamed from: androidx.fragment.app.q0$e */
    /* loaded from: classes-dex2jar.jar:androidx/fragment/app/q0$e.class */
    public class C0469e extends Transition.EpicenterCallback {

        /* renamed from: a */
        public final /* synthetic */ Rect f1922a;

        public C0469e(C0464q0 c0464q0, Rect rect) {
            this.f1922a = rect;
        }

        @Override // android.transition.Transition.EpicenterCallback
        public Rect onGetEpicenter(Transition transition) {
            Rect rect = this.f1922a;
            if (rect == null || rect.isEmpty()) {
                return null;
            }
            return this.f1922a;
        }
    }

    /* renamed from: z */
    public static boolean m8072z(Transition transition) {
        return !AbstractC0471r0.m8066k(transition.getTargetIds()) || !AbstractC0471r0.m8066k(transition.getTargetNames()) || !AbstractC0471r0.m8066k(transition.getTargetTypes());
    }

    @Override // androidx.fragment.app.AbstractC0471r0
    /* renamed from: a */
    public void mo2299a(Object obj, View view) {
        if (obj != null) {
            ((Transition) obj).addTarget(view);
        }
    }

    @Override // androidx.fragment.app.AbstractC0471r0
    /* renamed from: b */
    public void mo2298b(Object obj, ArrayList<View> arrayList) {
        Transition transition = (Transition) obj;
        if (transition == null) {
            return;
        }
        if (transition instanceof TransitionSet) {
            TransitionSet transitionSet = (TransitionSet) transition;
            int transitionCount = transitionSet.getTransitionCount();
            for (int i = 0; i < transitionCount; i++) {
                mo2298b(transitionSet.getTransitionAt(i), arrayList);
            }
        } else if (!m8072z(transition) && AbstractC0471r0.m8066k(transition.getTargets())) {
            int size = arrayList.size();
            for (int i2 = 0; i2 < size; i2++) {
                transition.addTarget(arrayList.get(i2));
            }
        }
    }

    @Override // androidx.fragment.app.AbstractC0471r0
    /* renamed from: c */
    public void mo2297c(ViewGroup viewGroup, Object obj) {
        TransitionManager.beginDelayedTransition(viewGroup, (Transition) obj);
    }

    @Override // androidx.fragment.app.AbstractC0471r0
    /* renamed from: e */
    public boolean mo2296e(Object obj) {
        return obj instanceof Transition;
    }

    @Override // androidx.fragment.app.AbstractC0471r0
    /* renamed from: g */
    public Object mo2295g(Object obj) {
        return obj != null ? ((Transition) obj).clone() : null;
    }

    @Override // androidx.fragment.app.AbstractC0471r0
    /* renamed from: l */
    public Object mo2294l(Object obj, Object obj2, Object obj3) {
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

    @Override // androidx.fragment.app.AbstractC0471r0
    /* renamed from: m */
    public Object mo2293m(Object obj, Object obj2, Object obj3) {
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

    @Override // androidx.fragment.app.AbstractC0471r0
    /* renamed from: o */
    public void mo2292o(Object obj, View view) {
        if (obj != null) {
            ((Transition) obj).removeTarget(view);
        }
    }

    @Override // androidx.fragment.app.AbstractC0471r0
    /* renamed from: p */
    public void mo2291p(Object obj, ArrayList<View> arrayList, ArrayList<View> arrayList2) {
        List<View> targets;
        Transition transition = (Transition) obj;
        if (transition instanceof TransitionSet) {
            TransitionSet transitionSet = (TransitionSet) transition;
            int transitionCount = transitionSet.getTransitionCount();
            for (int i = 0; i < transitionCount; i++) {
                mo2291p(transitionSet.getTransitionAt(i), arrayList, arrayList2);
            }
        } else if (!m8072z(transition) && (targets = transition.getTargets()) != null && targets.size() == arrayList.size() && targets.containsAll(arrayList)) {
            int size = arrayList2 == null ? 0 : arrayList2.size();
            for (int i2 = 0; i2 < size; i2++) {
                transition.addTarget(arrayList2.get(i2));
            }
            for (int size2 = arrayList.size() - 1; size2 >= 0; size2--) {
                transition.removeTarget(arrayList.get(size2));
            }
        }
    }

    @Override // androidx.fragment.app.AbstractC0471r0
    /* renamed from: q */
    public void mo2290q(Object obj, View view, ArrayList<View> arrayList) {
        ((Transition) obj).addListener(new C0466b(this, view, arrayList));
    }

    @Override // androidx.fragment.app.AbstractC0471r0
    /* renamed from: r */
    public void mo2289r(Object obj, Object obj2, ArrayList<View> arrayList, Object obj3, ArrayList<View> arrayList2, Object obj4, ArrayList<View> arrayList3) {
        ((Transition) obj).addListener(new C0467c(obj2, arrayList, obj3, arrayList2, obj4, arrayList3));
    }

    @Override // androidx.fragment.app.AbstractC0471r0
    /* renamed from: s */
    public void mo2288s(Object obj, Rect rect) {
        if (obj != null) {
            ((Transition) obj).setEpicenterCallback(new C0469e(this, rect));
        }
    }

    @Override // androidx.fragment.app.AbstractC0471r0
    /* renamed from: t */
    public void mo2287t(Object obj, View view) {
        if (view != null) {
            Rect rect = new Rect();
            m8067j(view, rect);
            ((Transition) obj).setEpicenterCallback(new C0465a(this, rect));
        }
    }

    @Override // androidx.fragment.app.AbstractC0471r0
    /* renamed from: u */
    public void mo8064u(Fragment fragment, Object obj, C3056b c3056b, Runnable runnable) {
        ((Transition) obj).addListener(new C0468d(this, runnable));
    }

    @Override // androidx.fragment.app.AbstractC0471r0
    /* renamed from: w */
    public void mo2286w(Object obj, View view, ArrayList<View> arrayList) {
        TransitionSet transitionSet = (TransitionSet) obj;
        List<View> targets = transitionSet.getTargets();
        targets.clear();
        int size = arrayList.size();
        for (int i = 0; i < size; i++) {
            AbstractC0471r0.m8071d(targets, arrayList.get(i));
        }
        targets.add(view);
        arrayList.add(view);
        mo2298b(transitionSet, arrayList);
    }

    @Override // androidx.fragment.app.AbstractC0471r0
    /* renamed from: x */
    public void mo2285x(Object obj, ArrayList<View> arrayList, ArrayList<View> arrayList2) {
        TransitionSet transitionSet = (TransitionSet) obj;
        if (transitionSet != null) {
            transitionSet.getTargets().clear();
            transitionSet.getTargets().addAll(arrayList2);
            mo2291p(transitionSet, arrayList, arrayList2);
        }
    }

    @Override // androidx.fragment.app.AbstractC0471r0
    /* renamed from: y */
    public Object mo2284y(Object obj) {
        if (obj == null) {
            return null;
        }
        TransitionSet transitionSet = new TransitionSet();
        transitionSet.addTransition((Transition) obj);
        return transitionSet;
    }
}

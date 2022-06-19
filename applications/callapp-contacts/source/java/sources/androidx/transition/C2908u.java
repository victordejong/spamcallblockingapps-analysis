package androidx.transition;

import android.view.View;
import android.view.ViewGroup;
import android.view.ViewTreeObserver;
import androidx.core.view.C0926v;
import androidx.p023b.C0428a;
import androidx.transition.C2901o;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.Iterator;
/* renamed from: androidx.transition.u */
/* loaded from: classes-dex2jar.jar:androidx/transition/u.class */
public final class C2908u {

    /* renamed from: c */
    private C0428a<C2904q, Transition> f10921c = new C0428a<>();

    /* renamed from: d */
    private C0428a<C2904q, C0428a<C2904q, Transition>> f10922d = new C0428a<>();

    /* renamed from: b */
    private static Transition f10919b = new AutoTransition();

    /* renamed from: e */
    private static ThreadLocal<WeakReference<C0428a<ViewGroup, ArrayList<Transition>>>> f10920e = new ThreadLocal<>();

    /* renamed from: a */
    static ArrayList<ViewGroup> f10918a = new ArrayList<>();

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: androidx.transition.u$a */
    /* loaded from: classes-dex2jar.jar:androidx/transition/u$a.class */
    public static final class View$OnAttachStateChangeListenerC2909a implements View.OnAttachStateChangeListener, ViewTreeObserver.OnPreDrawListener {

        /* renamed from: a */
        Transition f10923a;

        /* renamed from: b */
        ViewGroup f10924b;

        View$OnAttachStateChangeListenerC2909a(Transition transition, ViewGroup viewGroup) {
            this.f10923a = transition;
            this.f10924b = viewGroup;
        }

        /* renamed from: a */
        private void m39679a() {
            this.f10924b.getViewTreeObserver().removeOnPreDrawListener(this);
            this.f10924b.removeOnAttachStateChangeListener(this);
        }

        @Override // android.view.ViewTreeObserver.OnPreDrawListener
        public final boolean onPreDraw() {
            ArrayList<Transition> arrayList;
            m39679a();
            if (!C2908u.f10918a.remove(this.f10924b)) {
                return true;
            }
            final C0428a<ViewGroup, ArrayList<Transition>> m39681a = C2908u.m39681a();
            ArrayList<Transition> arrayList2 = m39681a.get(this.f10924b);
            ArrayList arrayList3 = null;
            if (arrayList2 == null) {
                arrayList = new ArrayList<>();
                m39681a.put(this.f10924b, arrayList);
            } else {
                arrayList = arrayList2;
                if (arrayList2.size() > 0) {
                    arrayList3 = new ArrayList(arrayList2);
                    arrayList = arrayList2;
                }
            }
            arrayList.add(this.f10923a);
            this.f10923a.mo39786a(new C2907t() { // from class: androidx.transition.u.a.1
                @Override // androidx.transition.C2907t, androidx.transition.Transition.AbstractC2849c
                /* renamed from: a */
                public final void mo39671a(Transition transition) {
                    ((ArrayList) m39681a.get(View$OnAttachStateChangeListenerC2909a.this.f10924b)).remove(transition);
                    transition.mo39779b(this);
                }
            });
            this.f10923a.m39812a(this.f10924b, false);
            if (arrayList3 != null) {
                Iterator it2 = arrayList3.iterator();
                while (it2.hasNext()) {
                    ((Transition) it2.next()).mo39771f(this.f10924b);
                }
            }
            this.f10923a.m39813a(this.f10924b);
            return true;
        }

        @Override // android.view.View.OnAttachStateChangeListener
        public final void onViewAttachedToWindow(View view) {
        }

        @Override // android.view.View.OnAttachStateChangeListener
        public final void onViewDetachedFromWindow(View view) {
            m39679a();
            C2908u.f10918a.remove(this.f10924b);
            ArrayList<Transition> arrayList = C2908u.m39681a().get(this.f10924b);
            if (arrayList != null && arrayList.size() > 0) {
                Iterator<Transition> it2 = arrayList.iterator();
                while (it2.hasNext()) {
                    it2.next().mo39771f(this.f10924b);
                }
            }
            this.f10923a.m39808a(true);
        }
    }

    /* renamed from: a */
    static C0428a<ViewGroup, ArrayList<Transition>> m39681a() {
        C0428a<ViewGroup, ArrayList<Transition>> c0428a;
        WeakReference<C0428a<ViewGroup, ArrayList<Transition>>> weakReference = f10920e.get();
        if (weakReference == null || (c0428a = weakReference.get()) == null) {
            C0428a<ViewGroup, ArrayList<Transition>> c0428a2 = new C0428a<>();
            f10920e.set(new WeakReference<>(c0428a2));
            return c0428a2;
        }
        return c0428a;
    }

    /* renamed from: a */
    public static void m39680a(ViewGroup viewGroup, Transition transition) {
        if (f10918a.contains(viewGroup) || !C0926v.m44157B(viewGroup)) {
            return;
        }
        f10918a.add(viewGroup);
        Transition transition2 = transition;
        if (transition == null) {
            transition2 = f10919b;
        }
        Transition clone = transition2.clone();
        ArrayList<Transition> arrayList = m39681a().get(viewGroup);
        if (arrayList != null && arrayList.size() > 0) {
            Iterator<Transition> it2 = arrayList.iterator();
            while (it2.hasNext()) {
                it2.next().mo39772e(viewGroup);
            }
        }
        if (clone != null) {
            clone.m39812a(viewGroup, true);
        }
        C2904q m39682a = C2904q.m39682a(viewGroup);
        if (m39682a != null && C2904q.m39682a(m39682a.f10900a) == m39682a && m39682a.f10901b != null) {
            m39682a.f10901b.run();
        }
        viewGroup.setTag(C2901o.C2902a.transition_current_scene, null);
        if (clone == null || viewGroup == null) {
            return;
        }
        View$OnAttachStateChangeListenerC2909a view$OnAttachStateChangeListenerC2909a = new View$OnAttachStateChangeListenerC2909a(clone, viewGroup);
        viewGroup.addOnAttachStateChangeListener(view$OnAttachStateChangeListenerC2909a);
        viewGroup.getViewTreeObserver().addOnPreDrawListener(view$OnAttachStateChangeListenerC2909a);
    }
}

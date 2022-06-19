package androidx.transition;

import android.view.View;
import android.view.ViewGroup;
import android.view.ViewTreeObserver;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.Iterator;
import p020b.p036e.C1489a;
import p020b.p041h.p050l.C1679w;
/* renamed from: androidx.transition.v */
/* loaded from: classes-dex2jar.jar:androidx/transition/v.class */
public class C1169v {

    /* renamed from: a */
    private static Transition f4982a = new AutoTransition();

    /* renamed from: b */
    private static ThreadLocal<WeakReference<C1489a<ViewGroup, ArrayList<Transition>>>> f4983b = new ThreadLocal<>();

    /* renamed from: c */
    static ArrayList<ViewGroup> f4984c = new ArrayList<>();

    /* renamed from: androidx.transition.v$a */
    /* loaded from: classes-dex2jar.jar:androidx/transition/v$a.class */
    public static class ViewTreeObserver$OnPreDrawListenerC1170a implements ViewTreeObserver.OnPreDrawListener, View.OnAttachStateChangeListener {

        /* renamed from: d */
        Transition f4985d;

        /* renamed from: e */
        ViewGroup f4986e;

        /* renamed from: androidx.transition.v$a$a */
        /* loaded from: classes-dex2jar.jar:androidx/transition/v$a$a.class */
        class C1171a extends C1168u {

            /* renamed from: a */
            final /* synthetic */ C1489a f4987a;

            C1171a(C1489a c1489a) {
                ViewTreeObserver$OnPreDrawListenerC1170a.this = r4;
                this.f4987a = c1489a;
            }

            @Override // androidx.transition.Transition.AbstractC1110f
            /* renamed from: c */
            public void mo30821c(Transition transition) {
                ((ArrayList) this.f4987a.get(ViewTreeObserver$OnPreDrawListenerC1170a.this.f4986e)).remove(transition);
                transition.mo30982Y(this);
            }
        }

        ViewTreeObserver$OnPreDrawListenerC1170a(Transition transition, ViewGroup viewGroup) {
            this.f4985d = transition;
            this.f4986e = viewGroup;
        }

        /* renamed from: a */
        private void m30822a() {
            this.f4986e.getViewTreeObserver().removeOnPreDrawListener(this);
            this.f4986e.removeOnAttachStateChangeListener(this);
        }

        @Override // android.view.ViewTreeObserver.OnPreDrawListener
        public boolean onPreDraw() {
            ArrayList<Transition> arrayList;
            m30822a();
            if (!C1169v.f4984c.remove(this.f4986e)) {
                return true;
            }
            C1489a<ViewGroup, ArrayList<Transition>> m30825b = C1169v.m30825b();
            ArrayList<Transition> arrayList2 = m30825b.get(this.f4986e);
            ArrayList arrayList3 = null;
            if (arrayList2 == null) {
                arrayList = new ArrayList<>();
                m30825b.put(this.f4986e, arrayList);
            } else {
                arrayList = arrayList2;
                if (arrayList2.size() > 0) {
                    arrayList3 = new ArrayList(arrayList2);
                    arrayList = arrayList2;
                }
            }
            arrayList.add(this.f4985d);
            this.f4985d.mo30980a(new C1171a(m30825b));
            this.f4985d.m30992n(this.f4986e, false);
            if (arrayList3 != null) {
                Iterator it = arrayList3.iterator();
                while (it.hasNext()) {
                    ((Transition) it.next()).mo30979a0(this.f4986e);
                }
            }
            this.f4985d.m31001X(this.f4986e);
            return true;
        }

        @Override // android.view.View.OnAttachStateChangeListener
        public void onViewAttachedToWindow(View view) {
        }

        @Override // android.view.View.OnAttachStateChangeListener
        public void onViewDetachedFromWindow(View view) {
            m30822a();
            C1169v.f4984c.remove(this.f4986e);
            ArrayList<Transition> arrayList = C1169v.m30825b().get(this.f4986e);
            if (arrayList != null && arrayList.size() > 0) {
                Iterator<Transition> it = arrayList.iterator();
                while (it.hasNext()) {
                    it.next().mo30979a0(this.f4986e);
                }
            }
            this.f4985d.m30991o(true);
        }
    }

    /* renamed from: a */
    public static void m30826a(ViewGroup viewGroup, Transition transition) {
        if (f4984c.contains(viewGroup) || !C1679w.m29313V(viewGroup)) {
            return;
        }
        f4984c.add(viewGroup);
        Transition transition2 = transition;
        if (transition == null) {
            transition2 = f4982a;
        }
        Transition clone = transition2.clone();
        m30823d(viewGroup, clone);
        C1162r.m30834c(viewGroup, null);
        m30824c(viewGroup, clone);
    }

    /* renamed from: b */
    static C1489a<ViewGroup, ArrayList<Transition>> m30825b() {
        C1489a<ViewGroup, ArrayList<Transition>> c1489a;
        WeakReference<C1489a<ViewGroup, ArrayList<Transition>>> weakReference = f4983b.get();
        if (weakReference == null || (c1489a = weakReference.get()) == null) {
            C1489a<ViewGroup, ArrayList<Transition>> c1489a2 = new C1489a<>();
            f4983b.set(new WeakReference<>(c1489a2));
            return c1489a2;
        }
        return c1489a;
    }

    /* renamed from: c */
    private static void m30824c(ViewGroup viewGroup, Transition transition) {
        if (transition == null || viewGroup == null) {
            return;
        }
        ViewTreeObserver$OnPreDrawListenerC1170a viewTreeObserver$OnPreDrawListenerC1170a = new ViewTreeObserver$OnPreDrawListenerC1170a(transition, viewGroup);
        viewGroup.addOnAttachStateChangeListener(viewTreeObserver$OnPreDrawListenerC1170a);
        viewGroup.getViewTreeObserver().addOnPreDrawListener(viewTreeObserver$OnPreDrawListenerC1170a);
    }

    /* renamed from: d */
    private static void m30823d(ViewGroup viewGroup, Transition transition) {
        ArrayList<Transition> arrayList = m30825b().get(viewGroup);
        if (arrayList != null && arrayList.size() > 0) {
            Iterator<Transition> it = arrayList.iterator();
            while (it.hasNext()) {
                it.next().mo30983W(viewGroup);
            }
        }
        if (transition != null) {
            transition.m30992n(viewGroup, true);
        }
        C1162r m30835b = C1162r.m30835b(viewGroup);
        if (m30835b != null) {
            m30835b.m30836a();
        }
    }
}

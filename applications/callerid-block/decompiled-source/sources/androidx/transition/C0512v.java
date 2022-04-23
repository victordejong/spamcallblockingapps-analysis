package androidx.transition;

import android.view.View;
import android.view.ViewGroup;
import android.view.ViewTreeObserver;
import d.e.a;
import d.h.m.t;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.Iterator;
/* renamed from: androidx.transition.v */
/* loaded from: classes-dex2jar.jar:androidx/transition/v.class */
public class C0512v {

    /* renamed from: a */
    private static Transition f2766a = new AutoTransition();

    /* renamed from: b */
    private static ThreadLocal<WeakReference<a<ViewGroup, ArrayList<Transition>>>> f2767b = new ThreadLocal<>();

    /* renamed from: c */
    static ArrayList<ViewGroup> f2768c = new ArrayList<>();

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: androidx.transition.v$a */
    /* loaded from: classes-dex2jar.jar:androidx/transition/v$a.class */
    public static class ViewTreeObserver$OnPreDrawListenerC0513a implements ViewTreeObserver.OnPreDrawListener, View.OnAttachStateChangeListener {

        /* renamed from: b */
        Transition f2769b;

        /* renamed from: c */
        ViewGroup f2770c;

        ViewTreeObserver$OnPreDrawListenerC0513a(Transition transition, ViewGroup viewGroup) {
            this.f2769b = transition;
            this.f2770c = viewGroup;
        }

        /* renamed from: a */
        private void m11982a() {
            this.f2770c.getViewTreeObserver().removeOnPreDrawListener(this);
            this.f2770c.removeOnAttachStateChangeListener(this);
        }

        @Override // android.view.ViewTreeObserver.OnPreDrawListener
        public boolean onPreDraw() {
            ArrayList arrayList;
            m11982a();
            if (!C0512v.f2768c.remove(this.f2770c)) {
                return true;
            }
            a<ViewGroup, ArrayList<Transition>> b = C0512v.m11985b();
            ArrayList arrayList2 = (ArrayList) b.get(this.f2770c);
            ArrayList arrayList3 = null;
            if (arrayList2 == null) {
                arrayList = new ArrayList();
                b.put(this.f2770c, arrayList);
            } else {
                arrayList = arrayList2;
                if (arrayList2.size() > 0) {
                    arrayList3 = new ArrayList(arrayList2);
                    arrayList = arrayList2;
                }
            }
            arrayList.add(this.f2769b);
            this.f2769b.m12097b(new a(this, b));
            this.f2769b.m12077l(this.f2770c, false);
            if (arrayList3 != null) {
                Iterator it = arrayList3.iterator();
                while (it.hasNext()) {
                    ((Transition) it.next()).m12092d0(this.f2770c);
                }
            }
            this.f2769b.m12098a0(this.f2770c);
            return true;
        }

        @Override // android.view.View.OnAttachStateChangeListener
        public void onViewAttachedToWindow(View view) {
        }

        @Override // android.view.View.OnAttachStateChangeListener
        public void onViewDetachedFromWindow(View view) {
            m11982a();
            C0512v.f2768c.remove(this.f2770c);
            ArrayList arrayList = (ArrayList) C0512v.m11985b().get(this.f2770c);
            if (arrayList != null && arrayList.size() > 0) {
                Iterator it = arrayList.iterator();
                while (it.hasNext()) {
                    ((Transition) it.next()).m12092d0(this.f2770c);
                }
            }
            this.f2769b.m12075m(true);
        }
    }

    /* renamed from: a */
    public static void m11986a(ViewGroup viewGroup, Transition transition) {
        if (!f2768c.contains(viewGroup) && t.S(viewGroup)) {
            f2768c.add(viewGroup);
            Transition transition2 = transition;
            if (transition == null) {
                transition2 = f2766a;
            }
            Transition n = transition2.clone();
            m11983d(viewGroup, n);
            C0509r.m11987c(viewGroup, null);
            m11984c(viewGroup, n);
        }
    }

    /* renamed from: b */
    static a<ViewGroup, ArrayList<Transition>> m11985b() {
        a<ViewGroup, ArrayList<Transition>> aVar;
        WeakReference<a<ViewGroup, ArrayList<Transition>>> weakReference = f2767b.get();
        if (weakReference != null && (aVar = weakReference.get()) != null) {
            return aVar;
        }
        a<ViewGroup, ArrayList<Transition>> aVar2 = new a<>();
        f2767b.set(new WeakReference<>(aVar2));
        return aVar2;
    }

    /* renamed from: c */
    private static void m11984c(ViewGroup viewGroup, Transition transition) {
        if (transition != null && viewGroup != null) {
            ViewTreeObserver$OnPreDrawListenerC0513a aVar = new ViewTreeObserver$OnPreDrawListenerC0513a(transition, viewGroup);
            viewGroup.addOnAttachStateChangeListener(aVar);
            viewGroup.getViewTreeObserver().addOnPreDrawListener(aVar);
        }
    }

    /* renamed from: d */
    private static void m11983d(ViewGroup viewGroup, Transition transition) {
        ArrayList arrayList = (ArrayList) m11985b().get(viewGroup);
        if (arrayList != null && arrayList.size() > 0) {
            Iterator it = arrayList.iterator();
            while (it.hasNext()) {
                ((Transition) it.next()).m12099Z(viewGroup);
            }
        }
        if (transition != null) {
            transition.m12077l(viewGroup, true);
        }
        C0509r b = C0509r.m11988b(viewGroup);
        if (b != null) {
            b.m11989a();
        }
    }
}

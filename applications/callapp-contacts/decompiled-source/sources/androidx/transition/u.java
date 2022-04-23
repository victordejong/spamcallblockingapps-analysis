package androidx.transition;

import android.view.View;
import android.view.ViewGroup;
import android.view.ViewTreeObserver;
import androidx.core.view.v;
import androidx.transition.o;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.Iterator;
/* loaded from: classes-dex2jar.jar:androidx/transition/u.class */
public final class u {

    /* renamed from: c  reason: collision with root package name */
    private androidx.b.a<q, Transition> f5840c = new androidx.b.a<>();

    /* renamed from: d  reason: collision with root package name */
    private androidx.b.a<q, androidx.b.a<q, Transition>> f5841d = new androidx.b.a<>();

    /* renamed from: b  reason: collision with root package name */
    private static Transition f5839b = new AutoTransition();
    private static ThreadLocal<WeakReference<androidx.b.a<ViewGroup, ArrayList<Transition>>>> e = new ThreadLocal<>();

    /* renamed from: a  reason: collision with root package name */
    static ArrayList<ViewGroup> f5838a = new ArrayList<>();

    /* loaded from: classes-dex2jar.jar:androidx/transition/u$a.class */
    static final class a implements View.OnAttachStateChangeListener, ViewTreeObserver.OnPreDrawListener {

        /* renamed from: a  reason: collision with root package name */
        Transition f5842a;

        /* renamed from: b  reason: collision with root package name */
        ViewGroup f5843b;

        a(Transition transition, ViewGroup viewGroup) {
            this.f5842a = transition;
            this.f5843b = viewGroup;
        }

        private void a() {
            this.f5843b.getViewTreeObserver().removeOnPreDrawListener(this);
            this.f5843b.removeOnAttachStateChangeListener(this);
        }

        @Override // android.view.ViewTreeObserver.OnPreDrawListener
        public final boolean onPreDraw() {
            ArrayList<Transition> arrayList;
            a();
            if (!u.f5838a.remove(this.f5843b)) {
                return true;
            }
            final androidx.b.a<ViewGroup, ArrayList<Transition>> a2 = u.a();
            ArrayList<Transition> arrayList2 = a2.get(this.f5843b);
            ArrayList arrayList3 = null;
            if (arrayList2 == null) {
                arrayList = new ArrayList<>();
                a2.put(this.f5843b, arrayList);
            } else {
                arrayList = arrayList2;
                if (arrayList2.size() > 0) {
                    arrayList3 = new ArrayList(arrayList2);
                    arrayList = arrayList2;
                }
            }
            arrayList.add(this.f5842a);
            this.f5842a.a(new t() { // from class: androidx.transition.u.a.1
                @Override // androidx.transition.t, androidx.transition.Transition.c
                public final void a(Transition transition) {
                    ((ArrayList) a2.get(a.this.f5843b)).remove(transition);
                    transition.b(this);
                }
            });
            this.f5842a.a(this.f5843b, false);
            if (arrayList3 != null) {
                Iterator it2 = arrayList3.iterator();
                while (it2.hasNext()) {
                    ((Transition) it2.next()).f(this.f5843b);
                }
            }
            this.f5842a.a(this.f5843b);
            return true;
        }

        @Override // android.view.View.OnAttachStateChangeListener
        public final void onViewAttachedToWindow(View view) {
        }

        @Override // android.view.View.OnAttachStateChangeListener
        public final void onViewDetachedFromWindow(View view) {
            a();
            u.f5838a.remove(this.f5843b);
            ArrayList<Transition> arrayList = u.a().get(this.f5843b);
            if (arrayList != null && arrayList.size() > 0) {
                Iterator<Transition> it2 = arrayList.iterator();
                while (it2.hasNext()) {
                    it2.next().f(this.f5843b);
                }
            }
            this.f5842a.a(true);
        }
    }

    static androidx.b.a<ViewGroup, ArrayList<Transition>> a() {
        androidx.b.a<ViewGroup, ArrayList<Transition>> aVar;
        WeakReference<androidx.b.a<ViewGroup, ArrayList<Transition>>> weakReference = e.get();
        if (weakReference != null && (aVar = weakReference.get()) != null) {
            return aVar;
        }
        androidx.b.a<ViewGroup, ArrayList<Transition>> aVar2 = new androidx.b.a<>();
        e.set(new WeakReference<>(aVar2));
        return aVar2;
    }

    public static void a(ViewGroup viewGroup, Transition transition) {
        if (!f5838a.contains(viewGroup) && v.B(viewGroup)) {
            f5838a.add(viewGroup);
            Transition transition2 = transition;
            if (transition == null) {
                transition2 = f5839b;
            }
            Transition k = transition2.clone();
            ArrayList<Transition> arrayList = a().get(viewGroup);
            if (arrayList != null && arrayList.size() > 0) {
                Iterator<Transition> it2 = arrayList.iterator();
                while (it2.hasNext()) {
                    it2.next().e(viewGroup);
                }
            }
            if (k != null) {
                k.a(viewGroup, true);
            }
            q a2 = q.a(viewGroup);
            if (!(a2 == null || q.a(a2.f5828a) != a2 || a2.f5829b == null)) {
                a2.f5829b.run();
            }
            viewGroup.setTag(o.a.transition_current_scene, null);
            if (k != null && viewGroup != null) {
                a aVar = new a(k, viewGroup);
                viewGroup.addOnAttachStateChangeListener(aVar);
                viewGroup.getViewTreeObserver().addOnPreDrawListener(aVar);
            }
        }
    }
}

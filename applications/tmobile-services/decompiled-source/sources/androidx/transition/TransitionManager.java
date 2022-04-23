package androidx.transition;

import android.view.View;
import android.view.ViewGroup;
import android.view.ViewTreeObserver;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.collection.ArrayMap;
import androidx.core.view.ViewCompat;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.Iterator;
/* loaded from: classes-dex2jar.jar:androidx/transition/TransitionManager.class */
public class TransitionManager {

    /* renamed from: a */
    private static Transition f5251a = new AutoTransition();

    /* renamed from: b */
    private static ThreadLocal<WeakReference<ArrayMap<ViewGroup, ArrayList<Transition>>>> f5252b = new ThreadLocal<>();

    /* renamed from: c */
    static ArrayList<ViewGroup> f5253c = new ArrayList<>();

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes-dex2jar.jar:androidx/transition/TransitionManager$MultiListener.class */
    public static class MultiListener implements ViewTreeObserver.OnPreDrawListener, View.OnAttachStateChangeListener {

        /* renamed from: f */
        Transition f5254f;

        /* renamed from: g */
        ViewGroup f5255g;

        MultiListener(Transition transition, ViewGroup viewGroup) {
            this.f5254f = transition;
            this.f5255g = viewGroup;
        }

        /* renamed from: a */
        private void m16748a() {
            this.f5255g.getViewTreeObserver().removeOnPreDrawListener(this);
            this.f5255g.removeOnAttachStateChangeListener(this);
        }

        @Override // android.view.ViewTreeObserver.OnPreDrawListener
        public boolean onPreDraw() {
            ArrayList<Transition> arrayList;
            m16748a();
            if (!TransitionManager.f5253c.remove(this.f5255g)) {
                return true;
            }
            final ArrayMap<ViewGroup, ArrayList<Transition>> b = TransitionManager.m16751b();
            ArrayList<Transition> arrayList2 = b.get(this.f5255g);
            ArrayList arrayList3 = null;
            if (arrayList2 == null) {
                arrayList = new ArrayList<>();
                b.put(this.f5255g, arrayList);
            } else {
                arrayList = arrayList2;
                if (arrayList2.size() > 0) {
                    arrayList3 = new ArrayList(arrayList2);
                    arrayList = arrayList2;
                }
            }
            arrayList.add(this.f5254f);
            this.f5254f.mo16742a(new TransitionListenerAdapter() { // from class: androidx.transition.TransitionManager.MultiListener.1
                @Override // androidx.transition.TransitionListenerAdapter, androidx.transition.Transition.TransitionListener
                /* renamed from: c */
                public void mo8573c(@NonNull Transition transition) {
                    ((ArrayList) b.get(MultiListener.this.f5255g)).remove(transition);
                    transition.mo16743Z(this);
                }
            });
            this.f5254f.m16764n(this.f5255g, false);
            if (arrayList3 != null) {
                Iterator it = arrayList3.iterator();
                while (it.hasNext()) {
                    ((Transition) it.next()).mo16739b0(this.f5255g);
                }
            }
            this.f5254f.m16772X(this.f5255g);
            return true;
        }

        @Override // android.view.View.OnAttachStateChangeListener
        public void onViewAttachedToWindow(View view) {
        }

        @Override // android.view.View.OnAttachStateChangeListener
        public void onViewDetachedFromWindow(View view) {
            m16748a();
            TransitionManager.f5253c.remove(this.f5255g);
            ArrayList<Transition> arrayList = TransitionManager.m16751b().get(this.f5255g);
            if (arrayList != null && arrayList.size() > 0) {
                Iterator<Transition> it = arrayList.iterator();
                while (it.hasNext()) {
                    it.next().mo16739b0(this.f5255g);
                }
            }
            this.f5254f.m16762o(true);
        }
    }

    public TransitionManager() {
        new ArrayMap();
        new ArrayMap();
    }

    /* renamed from: a */
    public static void m16752a(@NonNull ViewGroup viewGroup, @Nullable Transition transition) {
        if (!f5253c.contains(viewGroup) && ViewCompat.m19218S(viewGroup)) {
            f5253c.add(viewGroup);
            Transition transition2 = transition;
            if (transition == null) {
                transition2 = f5251a;
            }
            Transition p = transition2.clone();
            m16749d(viewGroup, p);
            Scene.m16797c(viewGroup, null);
            m16750c(viewGroup, p);
        }
    }

    /* renamed from: b */
    static ArrayMap<ViewGroup, ArrayList<Transition>> m16751b() {
        ArrayMap<ViewGroup, ArrayList<Transition>> arrayMap;
        WeakReference<ArrayMap<ViewGroup, ArrayList<Transition>>> weakReference = f5252b.get();
        if (weakReference != null && (arrayMap = weakReference.get()) != null) {
            return arrayMap;
        }
        ArrayMap<ViewGroup, ArrayList<Transition>> arrayMap2 = new ArrayMap<>();
        f5252b.set(new WeakReference<>(arrayMap2));
        return arrayMap2;
    }

    /* renamed from: c */
    private static void m16750c(ViewGroup viewGroup, Transition transition) {
        if (transition != null && viewGroup != null) {
            MultiListener multiListener = new MultiListener(transition, viewGroup);
            viewGroup.addOnAttachStateChangeListener(multiListener);
            viewGroup.getViewTreeObserver().addOnPreDrawListener(multiListener);
        }
    }

    /* renamed from: d */
    private static void m16749d(ViewGroup viewGroup, Transition transition) {
        ArrayList<Transition> arrayList = m16751b().get(viewGroup);
        if (arrayList != null && arrayList.size() > 0) {
            Iterator<Transition> it = arrayList.iterator();
            while (it.hasNext()) {
                it.next().mo16744V(viewGroup);
            }
        }
        if (transition != null) {
            transition.m16764n(viewGroup, true);
        }
        Scene b = Scene.m16798b(viewGroup);
        if (b != null) {
            b.m16799a();
        }
    }
}

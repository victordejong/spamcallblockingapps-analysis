package androidx.p045j;

import android.view.View;
import android.view.ViewGroup;
import android.view.ViewTreeObserver;
import androidx.core.p023g.C0552u;
import androidx.p014c.C0374a;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.Iterator;
/* renamed from: androidx.j.p */
/* loaded from: classes-dex2jar.jar:androidx/j/p.class */
public class C0847p {

    /* renamed from: b */
    private static AbstractC0838n f2680b = new C0808b();

    /* renamed from: c */
    private static ThreadLocal<WeakReference<C0374a<ViewGroup, ArrayList<AbstractC0838n>>>> f2681c = new ThreadLocal<>();

    /* renamed from: a */
    static ArrayList<ViewGroup> f2679a = new ArrayList<>();

    /* renamed from: androidx.j.p$a */
    /* loaded from: classes-dex2jar.jar:androidx/j/p$a.class */
    public static class View$OnAttachStateChangeListenerC0848a implements View.OnAttachStateChangeListener, ViewTreeObserver.OnPreDrawListener {

        /* renamed from: a */
        AbstractC0838n f2682a;

        /* renamed from: b */
        ViewGroup f2683b;

        View$OnAttachStateChangeListenerC0848a(AbstractC0838n abstractC0838n, ViewGroup viewGroup) {
            this.f2682a = abstractC0838n;
            this.f2683b = viewGroup;
        }

        /* renamed from: a */
        private void m5247a() {
            this.f2683b.getViewTreeObserver().removeOnPreDrawListener(this);
            this.f2683b.removeOnAttachStateChangeListener(this);
        }

        @Override // android.view.ViewTreeObserver.OnPreDrawListener
        public boolean onPreDraw() {
            ArrayList<AbstractC0838n> arrayList;
            m5247a();
            if (!C0847p.f2679a.remove(this.f2683b)) {
                return true;
            }
            final C0374a<ViewGroup, ArrayList<AbstractC0838n>> m5251a = C0847p.m5251a();
            ArrayList<AbstractC0838n> arrayList2 = m5251a.get(this.f2683b);
            ArrayList arrayList3 = null;
            if (arrayList2 == null) {
                arrayList = new ArrayList<>();
                m5251a.put(this.f2683b, arrayList);
            } else {
                arrayList = arrayList2;
                if (arrayList2.size() > 0) {
                    arrayList3 = new ArrayList(arrayList2);
                    arrayList = arrayList2;
                }
            }
            arrayList.add(this.f2682a);
            this.f2682a.addListener(new C0846o() { // from class: androidx.j.p.a.1
                @Override // androidx.p045j.C0846o, androidx.p045j.AbstractC0838n.AbstractC0845d
                /* renamed from: b */
                public void mo5224b(AbstractC0838n abstractC0838n) {
                    ((ArrayList) m5251a.get(View$OnAttachStateChangeListenerC0848a.this.f2683b)).remove(abstractC0838n);
                }
            });
            this.f2682a.captureValues(this.f2683b, false);
            if (arrayList3 != null) {
                Iterator it = arrayList3.iterator();
                while (it.hasNext()) {
                    ((AbstractC0838n) it.next()).resume(this.f2683b);
                }
            }
            this.f2682a.playTransition(this.f2683b);
            return true;
        }

        @Override // android.view.View.OnAttachStateChangeListener
        public void onViewAttachedToWindow(View view) {
        }

        @Override // android.view.View.OnAttachStateChangeListener
        public void onViewDetachedFromWindow(View view) {
            m5247a();
            C0847p.f2679a.remove(this.f2683b);
            ArrayList<AbstractC0838n> arrayList = C0847p.m5251a().get(this.f2683b);
            if (arrayList != null && arrayList.size() > 0) {
                Iterator<AbstractC0838n> it = arrayList.iterator();
                while (it.hasNext()) {
                    it.next().resume(this.f2683b);
                }
            }
            this.f2682a.clearValues(true);
        }
    }

    /* renamed from: a */
    static C0374a<ViewGroup, ArrayList<AbstractC0838n>> m5251a() {
        C0374a<ViewGroup, ArrayList<AbstractC0838n>> c0374a;
        WeakReference<C0374a<ViewGroup, ArrayList<AbstractC0838n>>> weakReference = f2681c.get();
        if (weakReference == null || (c0374a = weakReference.get()) == null) {
            C0374a<ViewGroup, ArrayList<AbstractC0838n>> c0374a2 = new C0374a<>();
            f2681c.set(new WeakReference<>(c0374a2));
            return c0374a2;
        }
        return c0374a;
    }

    /* renamed from: a */
    public static void m5250a(ViewGroup viewGroup, AbstractC0838n abstractC0838n) {
        if (f2679a.contains(viewGroup) || !C0552u.m6295A(viewGroup)) {
            return;
        }
        f2679a.add(viewGroup);
        AbstractC0838n abstractC0838n2 = abstractC0838n;
        if (abstractC0838n == null) {
            abstractC0838n2 = f2680b;
        }
        AbstractC0838n clone = abstractC0838n2.clone();
        m5248c(viewGroup, clone);
        C0836l.m5259a(viewGroup, null);
        m5249b(viewGroup, clone);
    }

    /* renamed from: b */
    private static void m5249b(ViewGroup viewGroup, AbstractC0838n abstractC0838n) {
        if (abstractC0838n == null || viewGroup == null) {
            return;
        }
        View$OnAttachStateChangeListenerC0848a view$OnAttachStateChangeListenerC0848a = new View$OnAttachStateChangeListenerC0848a(abstractC0838n, viewGroup);
        viewGroup.addOnAttachStateChangeListener(view$OnAttachStateChangeListenerC0848a);
        viewGroup.getViewTreeObserver().addOnPreDrawListener(view$OnAttachStateChangeListenerC0848a);
    }

    /* renamed from: c */
    private static void m5248c(ViewGroup viewGroup, AbstractC0838n abstractC0838n) {
        ArrayList<AbstractC0838n> arrayList = m5251a().get(viewGroup);
        if (arrayList != null && arrayList.size() > 0) {
            Iterator<AbstractC0838n> it = arrayList.iterator();
            while (it.hasNext()) {
                it.next().pause(viewGroup);
            }
        }
        if (abstractC0838n != null) {
            abstractC0838n.captureValues(viewGroup, true);
        }
        C0836l m5260a = C0836l.m5260a(viewGroup);
        if (m5260a != null) {
            m5260a.m5261a();
        }
    }
}

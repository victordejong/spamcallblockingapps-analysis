package androidx.p045j;

import android.view.View;
import android.view.ViewGroup;
import android.view.ViewTreeObserver;
import androidx.core.p026h.C0595u;
import androidx.p013b.C0373a;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.Iterator;
/* renamed from: androidx.j.o */
/* loaded from: classes-dex2jar.jar:androidx/j/o.class */
public class C0815o {

    /* renamed from: b */
    private static AbstractC0807m f2805b = new C0778b();

    /* renamed from: c */
    private static ThreadLocal<WeakReference<C0373a<ViewGroup, ArrayList<AbstractC0807m>>>> f2806c = new ThreadLocal<>();

    /* renamed from: a */
    static ArrayList<ViewGroup> f2804a = new ArrayList<>();

    /* renamed from: androidx.j.o$a */
    /* loaded from: classes-dex2jar.jar:androidx/j/o$a.class */
    public static class View$OnAttachStateChangeListenerC0816a implements View.OnAttachStateChangeListener, ViewTreeObserver.OnPreDrawListener {

        /* renamed from: a */
        AbstractC0807m f2807a;

        /* renamed from: b */
        ViewGroup f2808b;

        View$OnAttachStateChangeListenerC0816a(AbstractC0807m abstractC0807m, ViewGroup viewGroup) {
            this.f2807a = abstractC0807m;
            this.f2808b = viewGroup;
        }

        /* renamed from: a */
        private void m19382a() {
            this.f2808b.getViewTreeObserver().removeOnPreDrawListener(this);
            this.f2808b.removeOnAttachStateChangeListener(this);
        }

        @Override // android.view.ViewTreeObserver.OnPreDrawListener
        public boolean onPreDraw() {
            ArrayList<AbstractC0807m> arrayList;
            m19382a();
            if (!C0815o.f2804a.remove(this.f2808b)) {
                return true;
            }
            final C0373a<ViewGroup, ArrayList<AbstractC0807m>> m19386a = C0815o.m19386a();
            ArrayList<AbstractC0807m> arrayList2 = m19386a.get(this.f2808b);
            ArrayList arrayList3 = null;
            if (arrayList2 == null) {
                arrayList = new ArrayList<>();
                m19386a.put(this.f2808b, arrayList);
            } else {
                arrayList = arrayList2;
                if (arrayList2.size() > 0) {
                    arrayList3 = new ArrayList(arrayList2);
                    arrayList = arrayList2;
                }
            }
            arrayList.add(this.f2807a);
            this.f2807a.mo19372a(new C0814n() { // from class: androidx.j.o.a.1
                @Override // androidx.p045j.C0814n, androidx.p045j.AbstractC0807m.AbstractC0813c
                /* renamed from: b */
                public void mo19347b(AbstractC0807m abstractC0807m) {
                    ((ArrayList) m19386a.get(View$OnAttachStateChangeListenerC0816a.this.f2808b)).remove(abstractC0807m);
                    abstractC0807m.mo19364b(this);
                }
            });
            this.f2807a.m19417a(this.f2808b, false);
            if (arrayList3 != null) {
                Iterator it = arrayList3.iterator();
                while (it.hasNext()) {
                    ((AbstractC0807m) it.next()).mo19354e(this.f2808b);
                }
            }
            this.f2807a.m19418a(this.f2808b);
            return true;
        }

        @Override // android.view.View.OnAttachStateChangeListener
        public void onViewAttachedToWindow(View view) {
        }

        @Override // android.view.View.OnAttachStateChangeListener
        public void onViewDetachedFromWindow(View view) {
            m19382a();
            C0815o.f2804a.remove(this.f2808b);
            ArrayList<AbstractC0807m> arrayList = C0815o.m19386a().get(this.f2808b);
            if (arrayList != null && arrayList.size() > 0) {
                Iterator<AbstractC0807m> it = arrayList.iterator();
                while (it.hasNext()) {
                    it.next().mo19354e(this.f2808b);
                }
            }
            this.f2807a.m19408a(true);
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:5:0x0017, code lost:
        if (r4 != null) goto L6;
     */
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    static androidx.p013b.C0373a<android.view.ViewGroup, java.util.ArrayList<androidx.p045j.AbstractC0807m>> m19386a() {
        /*
            java.lang.ThreadLocal<java.lang.ref.WeakReference<androidx.b.a<android.view.ViewGroup, java.util.ArrayList<androidx.j.m>>>> r0 = androidx.p045j.C0815o.f2806c
            java.lang.Object r0 = r0.get()
            java.lang.ref.WeakReference r0 = (java.lang.ref.WeakReference) r0
            r4 = r0
            r0 = r4
            if (r0 == 0) goto L1c
            r0 = r4
            java.lang.Object r0 = r0.get()
            androidx.b.a r0 = (androidx.p013b.C0373a) r0
            r4 = r0
            r0 = r4
            if (r0 == 0) goto L1c
        L1a:
            r0 = r4
            return r0
        L1c:
            androidx.b.a r0 = new androidx.b.a
            r1 = r0
            r1.<init>()
            r4 = r0
            java.lang.ref.WeakReference r0 = new java.lang.ref.WeakReference
            r1 = r0
            r2 = r4
            r1.<init>(r2)
            r5 = r0
            java.lang.ThreadLocal<java.lang.ref.WeakReference<androidx.b.a<android.view.ViewGroup, java.util.ArrayList<androidx.j.m>>>> r0 = androidx.p045j.C0815o.f2806c
            r1 = r5
            r0.set(r1)
            goto L1a
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.p045j.C0815o.m19386a():androidx.b.a");
    }

    /* renamed from: a */
    public static void m19385a(ViewGroup viewGroup, AbstractC0807m abstractC0807m) {
        if (f2804a.contains(viewGroup) || !C0595u.m20299y(viewGroup)) {
            return;
        }
        f2804a.add(viewGroup);
        AbstractC0807m abstractC0807m2 = abstractC0807m;
        if (abstractC0807m == null) {
            abstractC0807m2 = f2805b;
        }
        AbstractC0807m clone = abstractC0807m2.clone();
        m19383c(viewGroup, clone);
        C0806l.m19424a(viewGroup, null);
        m19384b(viewGroup, clone);
    }

    /* renamed from: b */
    private static void m19384b(ViewGroup viewGroup, AbstractC0807m abstractC0807m) {
        if (abstractC0807m == null || viewGroup == null) {
            return;
        }
        View$OnAttachStateChangeListenerC0816a view$OnAttachStateChangeListenerC0816a = new View$OnAttachStateChangeListenerC0816a(abstractC0807m, viewGroup);
        viewGroup.addOnAttachStateChangeListener(view$OnAttachStateChangeListenerC0816a);
        viewGroup.getViewTreeObserver().addOnPreDrawListener(view$OnAttachStateChangeListenerC0816a);
    }

    /* renamed from: c */
    private static void m19383c(ViewGroup viewGroup, AbstractC0807m abstractC0807m) {
        ArrayList<AbstractC0807m> arrayList = m19386a().get(viewGroup);
        if (arrayList != null && arrayList.size() > 0) {
            Iterator<AbstractC0807m> it = arrayList.iterator();
            while (it.hasNext()) {
                it.next().mo19357d(viewGroup);
            }
        }
        if (abstractC0807m != null) {
            abstractC0807m.m19417a(viewGroup, true);
        }
        C0806l m19425a = C0806l.m19425a(viewGroup);
        if (m19425a != null) {
            m19425a.m19426a();
        }
    }
}

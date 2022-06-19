package p1727n3.p1789g0;

import android.view.View;
import android.view.ViewGroup;
import android.view.ViewTreeObserver;
import androidx.transition.C0372R;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.concurrent.atomic.AtomicInteger;
import p1727n3.p1788g.C26174a;
import p1727n3.p1807k.p1821i.C26614s;
/* renamed from: n3.g0.q */
/* loaded from: classes-dex2jar.jar:n3/g0/q.class */
public class C26222q {

    /* renamed from: a */
    public static AbstractC26214m f73110a = new b();

    /* renamed from: b */
    public static ThreadLocal<WeakReference<C26174a<ViewGroup, ArrayList<AbstractC26214m>>>> f73111b = new ThreadLocal<>();

    /* renamed from: c */
    public static ArrayList<ViewGroup> f73112c = new ArrayList<>();

    /* renamed from: n3.g0.q$a */
    /* loaded from: classes-dex2jar.jar:n3/g0/q$a.class */
    public static class ViewTreeObserver$OnPreDrawListenerC26223a implements ViewTreeObserver.OnPreDrawListener, View.OnAttachStateChangeListener {

        /* renamed from: a */
        public AbstractC26214m f73113a;

        /* renamed from: b */
        public ViewGroup f73114b;

        public ViewTreeObserver$OnPreDrawListenerC26223a(AbstractC26214m abstractC26214m, ViewGroup viewGroup) {
            this.f73113a = abstractC26214m;
            this.f73114b = viewGroup;
        }

        /* JADX WARN: Removed duplicated region for block: B:105:0x0408  */
        /* JADX WARN: Removed duplicated region for block: B:112:0x045b  */
        /* JADX WARN: Removed duplicated region for block: B:145:0x03bd A[EDGE_INSN: B:145:0x03bd->B:95:0x03bd ?: BREAK  , SYNTHETIC] */
        /* JADX WARN: Removed duplicated region for block: B:14:0x0092  */
        /* JADX WARN: Removed duplicated region for block: B:188:0x0520 A[SYNTHETIC] */
        /* JADX WARN: Removed duplicated region for block: B:21:0x0114  */
        /* JADX WARN: Removed duplicated region for block: B:98:0x03ca  */
        @Override // android.view.ViewTreeObserver.OnPreDrawListener
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public boolean onPreDraw() {
            /*
                Method dump skipped, instructions count: 1345
                To view this dump add '--comments-level debug' option
            */
            throw new UnsupportedOperationException("Method not decompiled: p1727n3.p1789g0.C26222q.ViewTreeObserver$OnPreDrawListenerC26223a.onPreDraw():boolean");
        }

        @Override // android.view.View.OnAttachStateChangeListener
        public void onViewAttachedToWindow(View view) {
        }

        @Override // android.view.View.OnAttachStateChangeListener
        public void onViewDetachedFromWindow(View view) {
            this.f73114b.getViewTreeObserver().removeOnPreDrawListener(this);
            this.f73114b.removeOnAttachStateChangeListener(this);
            C26222q.f73112c.remove(this.f73114b);
            ArrayList<AbstractC26214m> arrayList = C26222q.m2522b().get(this.f73114b);
            if (arrayList != null && arrayList.size() > 0) {
                Iterator<AbstractC26214m> it = arrayList.iterator();
                while (it.hasNext()) {
                    it.next().mo2520A(this.f73114b);
                }
            }
            this.f73113a.m2536k(true);
        }
    }

    /* renamed from: a */
    public static void m2523a(ViewGroup viewGroup, AbstractC26214m abstractC26214m) {
        if (!f73112c.contains(viewGroup)) {
            AtomicInteger atomicInteger = C26614s.f74505a;
            if (!viewGroup.isLaidOut()) {
                return;
            }
            f73112c.add(viewGroup);
            AbstractC26214m abstractC26214m2 = abstractC26214m;
            if (abstractC26214m == null) {
                abstractC26214m2 = f73110a;
            }
            AbstractC26214m clone = abstractC26214m2.clone();
            ArrayList<AbstractC26214m> orDefault = m2522b().getOrDefault(viewGroup, null);
            if (orDefault != null && orDefault.size() > 0) {
                Iterator<AbstractC26214m> it = orDefault.iterator();
                while (it.hasNext()) {
                    it.next().mo2498x(viewGroup);
                }
            }
            if (clone != null) {
                clone.m2537j(viewGroup, true);
            }
            int i = C0372R.C0374id.transition_current_scene;
            if (((C26211j) viewGroup.getTag(i)) != null) {
                throw null;
            }
            viewGroup.setTag(i, null);
            if (clone == null) {
                return;
            }
            ViewTreeObserver$OnPreDrawListenerC26223a viewTreeObserver$OnPreDrawListenerC26223a = new ViewTreeObserver$OnPreDrawListenerC26223a(clone, viewGroup);
            viewGroup.addOnAttachStateChangeListener(viewTreeObserver$OnPreDrawListenerC26223a);
            viewGroup.getViewTreeObserver().addOnPreDrawListener(viewTreeObserver$OnPreDrawListenerC26223a);
        }
    }

    /* renamed from: b */
    public static C26174a<ViewGroup, ArrayList<AbstractC26214m>> m2522b() {
        C26174a<ViewGroup, ArrayList<AbstractC26214m>> c26174a;
        WeakReference<C26174a<ViewGroup, ArrayList<AbstractC26214m>>> weakReference = f73111b.get();
        if (weakReference == null || (c26174a = weakReference.get()) == null) {
            C26174a<ViewGroup, ArrayList<AbstractC26214m>> c26174a2 = new C26174a<>();
            f73111b.set(new WeakReference<>(c26174a2));
            return c26174a2;
        }
        return c26174a;
    }
}

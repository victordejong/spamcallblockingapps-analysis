package p153l1;

import android.view.View;
import android.view.ViewGroup;
import android.view.ViewTreeObserver;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.WeakHashMap;
import p163m0.C3589v;
import p163m0.C3611y;
import p226s.C4251a;
/* renamed from: l1.k */
/* loaded from: classes-dex2jar.jar:l1/k.class */
public class C3459k {

    /* renamed from: a */
    public static AbstractC3451g f11549a = new C3430a();

    /* renamed from: b */
    public static ThreadLocal<WeakReference<C4251a<ViewGroup, ArrayList<AbstractC3451g>>>> f11550b = new ThreadLocal<>();

    /* renamed from: c */
    public static ArrayList<ViewGroup> f11551c = new ArrayList<>();

    /* renamed from: l1.k$a */
    /* loaded from: classes-dex2jar.jar:l1/k$a.class */
    public static class ViewTreeObserver$OnPreDrawListenerC3460a implements ViewTreeObserver.OnPreDrawListener, View.OnAttachStateChangeListener {

        /* renamed from: a */
        public AbstractC3451g f11552a;

        /* renamed from: b */
        public ViewGroup f11553b;

        /* renamed from: l1.k$a$a */
        /* loaded from: classes-dex2jar.jar:l1/k$a$a.class */
        public class C3461a extends C3458j {

            /* renamed from: a */
            public final /* synthetic */ C4251a f11554a;

            public C3461a(C4251a c4251a) {
                ViewTreeObserver$OnPreDrawListenerC3460a.this = r4;
                this.f11554a = c4251a;
            }

            @Override // p153l1.AbstractC3451g.AbstractC3455d
            /* renamed from: d */
            public void mo2233d(AbstractC3451g abstractC3451g) {
                ((ArrayList) this.f11554a.get(ViewTreeObserver$OnPreDrawListenerC3460a.this.f11553b)).remove(abstractC3451g);
                abstractC3451g.mo2251v(this);
            }
        }

        public ViewTreeObserver$OnPreDrawListenerC3460a(AbstractC3451g abstractC3451g, ViewGroup viewGroup) {
            this.f11552a = abstractC3451g;
            this.f11553b = viewGroup;
        }

        /* JADX WARN: Removed duplicated region for block: B:101:0x03f2  */
        /* JADX WARN: Removed duplicated region for block: B:108:0x0430  */
        /* JADX WARN: Removed duplicated region for block: B:115:0x047f  */
        /* JADX WARN: Removed duplicated region for block: B:14:0x0092  */
        /* JADX WARN: Removed duplicated region for block: B:154:0x03e5 A[EDGE_INSN: B:154:0x03e5->B:98:0x03e5 ?: BREAK  , SYNTHETIC] */
        /* JADX WARN: Removed duplicated region for block: B:197:0x0564 A[SYNTHETIC] */
        /* JADX WARN: Removed duplicated region for block: B:21:0x011a  */
        @Override // android.view.ViewTreeObserver.OnPreDrawListener
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public boolean onPreDraw() {
            /*
                Method dump skipped, instructions count: 1413
                To view this dump add '--comments-level debug' option
            */
            throw new UnsupportedOperationException("Method not decompiled: p153l1.C3459k.ViewTreeObserver$OnPreDrawListenerC3460a.onPreDraw():boolean");
        }

        @Override // android.view.View.OnAttachStateChangeListener
        public void onViewAttachedToWindow(View view) {
        }

        @Override // android.view.View.OnAttachStateChangeListener
        public void onViewDetachedFromWindow(View view) {
            this.f11553b.getViewTreeObserver().removeOnPreDrawListener(this);
            this.f11553b.removeOnAttachStateChangeListener(this);
            C3459k.f11551c.remove(this.f11553b);
            ArrayList<AbstractC3451g> arrayList = C3459k.m2268b().get(this.f11553b);
            if (arrayList != null && arrayList.size() > 0) {
                Iterator<AbstractC3451g> it2 = arrayList.iterator();
                while (it2.hasNext()) {
                    it2.next().mo2249x(this.f11553b);
                }
            }
            this.f11552a.m2277i(true);
        }
    }

    /* renamed from: a */
    public static void m2269a(ViewGroup viewGroup, AbstractC3451g abstractC3451g) {
        if (!f11551c.contains(viewGroup)) {
            WeakHashMap<View, C3611y> weakHashMap = C3589v.f11780a;
            if (!C3589v.C3596g.m2058c(viewGroup)) {
                return;
            }
            f11551c.add(viewGroup);
            AbstractC3451g abstractC3451g2 = abstractC3451g;
            if (abstractC3451g == null) {
                abstractC3451g2 = f11549a;
            }
            AbstractC3451g clone = abstractC3451g2.clone();
            ArrayList<AbstractC3451g> orDefault = m2268b().getOrDefault(viewGroup, null);
            if (orDefault != null && orDefault.size() > 0) {
                Iterator<AbstractC3451g> it2 = orDefault.iterator();
                while (it2.hasNext()) {
                    it2.next().mo2252u(viewGroup);
                }
            }
            if (clone != null) {
                clone.m2278h(viewGroup, true);
            }
            if (((C3450f) viewGroup.getTag(2131297165)) != null) {
                throw null;
            }
            viewGroup.setTag(2131297165, null);
            if (clone == null) {
                return;
            }
            ViewTreeObserver$OnPreDrawListenerC3460a viewTreeObserver$OnPreDrawListenerC3460a = new ViewTreeObserver$OnPreDrawListenerC3460a(clone, viewGroup);
            viewGroup.addOnAttachStateChangeListener(viewTreeObserver$OnPreDrawListenerC3460a);
            viewGroup.getViewTreeObserver().addOnPreDrawListener(viewTreeObserver$OnPreDrawListenerC3460a);
        }
    }

    /* renamed from: b */
    public static C4251a<ViewGroup, ArrayList<AbstractC3451g>> m2268b() {
        C4251a<ViewGroup, ArrayList<AbstractC3451g>> c4251a;
        WeakReference<C4251a<ViewGroup, ArrayList<AbstractC3451g>>> weakReference = f11550b.get();
        if (weakReference == null || (c4251a = weakReference.get()) == null) {
            C4251a<ViewGroup, ArrayList<AbstractC3451g>> c4251a2 = new C4251a<>();
            f11550b.set(new WeakReference<>(c4251a2));
            return c4251a2;
        }
        return c4251a;
    }
}

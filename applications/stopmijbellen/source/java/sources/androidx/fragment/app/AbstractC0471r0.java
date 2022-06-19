package androidx.fragment.app;

import android.annotation.SuppressLint;
import android.graphics.Rect;
import android.graphics.RectF;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewParent;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;
import java.util.WeakHashMap;
import p120i0.C3056b;
import p163m0.C3589v;
import p163m0.C3611y;
import p163m0.ViewTreeObserver$OnPreDrawListenerC3583p;
import p226s.C4263g;
@SuppressLint({"UnknownNullness"})
/* renamed from: androidx.fragment.app.r0 */
/* loaded from: classes-dex2jar.jar:androidx/fragment/app/r0.class */
public abstract class AbstractC0471r0 {

    /* renamed from: androidx.fragment.app.r0$a */
    /* loaded from: classes-dex2jar.jar:androidx/fragment/app/r0$a.class */
    public class RunnableC0472a implements Runnable {

        /* renamed from: a */
        public final /* synthetic */ int f1928a;

        /* renamed from: b */
        public final /* synthetic */ ArrayList f1929b;

        /* renamed from: c */
        public final /* synthetic */ ArrayList f1930c;

        /* renamed from: d */
        public final /* synthetic */ ArrayList f1931d;

        /* renamed from: e */
        public final /* synthetic */ ArrayList f1932e;

        public RunnableC0472a(AbstractC0471r0 abstractC0471r0, int i, ArrayList arrayList, ArrayList arrayList2, ArrayList arrayList3, ArrayList arrayList4) {
            this.f1928a = i;
            this.f1929b = arrayList;
            this.f1930c = arrayList2;
            this.f1931d = arrayList3;
            this.f1932e = arrayList4;
        }

        @Override // java.lang.Runnable
        public void run() {
            for (int i = 0; i < this.f1928a; i++) {
                View view = (View) this.f1929b.get(i);
                String str = (String) this.f1930c.get(i);
                WeakHashMap<View, C3611y> weakHashMap = C3589v.f11780a;
                C3589v.C3598i.m2029v(view, str);
                C3589v.C3598i.m2029v((View) this.f1931d.get(i), (String) this.f1932e.get(i));
            }
        }
    }

    /* renamed from: d */
    public static void m8071d(List<View> list, View view) {
        int size = list.size();
        if (m8069h(list, view, size)) {
            return;
        }
        WeakHashMap<View, C3611y> weakHashMap = C3589v.f11780a;
        if (C3589v.C3598i.m2040k(view) != null) {
            list.add(view);
        }
        for (int i = size; i < list.size(); i++) {
            View view2 = list.get(i);
            if (view2 instanceof ViewGroup) {
                ViewGroup viewGroup = (ViewGroup) view2;
                int childCount = viewGroup.getChildCount();
                for (int i2 = 0; i2 < childCount; i2++) {
                    View childAt = viewGroup.getChildAt(i2);
                    if (!m8069h(list, childAt, size) && C3589v.C3598i.m2040k(childAt) != null) {
                        list.add(childAt);
                    }
                }
            }
        }
    }

    /* renamed from: h */
    public static boolean m8069h(List<View> list, View view, int i) {
        for (int i2 = 0; i2 < i; i2++) {
            if (list.get(i2) == view) {
                return true;
            }
        }
        return false;
    }

    /* renamed from: k */
    public static boolean m8066k(List list) {
        return list == null || list.isEmpty();
    }

    /* renamed from: a */
    public abstract void mo2299a(Object obj, View view);

    /* renamed from: b */
    public abstract void mo2298b(Object obj, ArrayList<View> arrayList);

    /* renamed from: c */
    public abstract void mo2297c(ViewGroup viewGroup, Object obj);

    /* renamed from: e */
    public abstract boolean mo2296e(Object obj);

    /* renamed from: f */
    public void m8070f(ArrayList<View> arrayList, View view) {
        if (view.getVisibility() == 0) {
            if (!(view instanceof ViewGroup)) {
                arrayList.add(view);
                return;
            }
            ViewGroup viewGroup = (ViewGroup) view;
            if (viewGroup.isTransitionGroup()) {
                arrayList.add(viewGroup);
                return;
            }
            int childCount = viewGroup.getChildCount();
            for (int i = 0; i < childCount; i++) {
                m8070f(arrayList, viewGroup.getChildAt(i));
            }
        }
    }

    /* renamed from: g */
    public abstract Object mo2295g(Object obj);

    /* renamed from: i */
    public void m8068i(Map<String, View> map, View view) {
        if (view.getVisibility() == 0) {
            WeakHashMap<View, C3611y> weakHashMap = C3589v.f11780a;
            String m2040k = C3589v.C3598i.m2040k(view);
            if (m2040k != null) {
                map.put(m2040k, view);
            }
            if (!(view instanceof ViewGroup)) {
                return;
            }
            ViewGroup viewGroup = (ViewGroup) view;
            int childCount = viewGroup.getChildCount();
            for (int i = 0; i < childCount; i++) {
                m8068i(map, viewGroup.getChildAt(i));
            }
        }
    }

    /* renamed from: j */
    public void m8067j(View view, Rect rect) {
        WeakHashMap<View, C3611y> weakHashMap = C3589v.f11780a;
        if (!C3589v.C3596g.m2059b(view)) {
            return;
        }
        RectF rectF = new RectF();
        rectF.set(0.0f, 0.0f, view.getWidth(), view.getHeight());
        view.getMatrix().mapRect(rectF);
        rectF.offset(view.getLeft(), view.getTop());
        ViewParent parent = view.getParent();
        while (true) {
            ViewParent viewParent = parent;
            if (!(viewParent instanceof View)) {
                int[] iArr = new int[2];
                view.getRootView().getLocationOnScreen(iArr);
                rectF.offset(iArr[0], iArr[1]);
                rect.set(Math.round(rectF.left), Math.round(rectF.top), Math.round(rectF.right), Math.round(rectF.bottom));
                return;
            }
            View view2 = (View) viewParent;
            rectF.offset(-view2.getScrollX(), -view2.getScrollY());
            view2.getMatrix().mapRect(rectF);
            rectF.offset(view2.getLeft(), view2.getTop());
            parent = view2.getParent();
        }
    }

    /* renamed from: l */
    public abstract Object mo2294l(Object obj, Object obj2, Object obj3);

    /* renamed from: m */
    public abstract Object mo2293m(Object obj, Object obj2, Object obj3);

    /* renamed from: n */
    public ArrayList<String> m8065n(ArrayList<View> arrayList) {
        ArrayList<String> arrayList2 = new ArrayList<>();
        int size = arrayList.size();
        for (int i = 0; i < size; i++) {
            View view = arrayList.get(i);
            WeakHashMap<View, C3611y> weakHashMap = C3589v.f11780a;
            arrayList2.add(C3589v.C3598i.m2040k(view));
            C3589v.C3598i.m2029v(view, null);
        }
        return arrayList2;
    }

    /* renamed from: o */
    public abstract void mo2292o(Object obj, View view);

    /* renamed from: p */
    public abstract void mo2291p(Object obj, ArrayList<View> arrayList, ArrayList<View> arrayList2);

    /* renamed from: q */
    public abstract void mo2290q(Object obj, View view, ArrayList<View> arrayList);

    /* renamed from: r */
    public abstract void mo2289r(Object obj, Object obj2, ArrayList<View> arrayList, Object obj3, ArrayList<View> arrayList2, Object obj4, ArrayList<View> arrayList3);

    /* renamed from: s */
    public abstract void mo2288s(Object obj, Rect rect);

    /* renamed from: t */
    public abstract void mo2287t(Object obj, View view);

    /* renamed from: u */
    public void mo8064u(Fragment fragment, Object obj, C3056b c3056b, Runnable runnable) {
        runnable.run();
    }

    /* renamed from: v */
    public void m8063v(View view, ArrayList<View> arrayList, ArrayList<View> arrayList2, ArrayList<String> arrayList3, Map<String, String> map) {
        int size = arrayList2.size();
        ArrayList arrayList4 = new ArrayList();
        for (int i = 0; i < size; i++) {
            View view2 = arrayList.get(i);
            WeakHashMap<View, C3611y> weakHashMap = C3589v.f11780a;
            String m2040k = C3589v.C3598i.m2040k(view2);
            arrayList4.add(m2040k);
            if (m2040k != null) {
                C3589v.C3598i.m2029v(view2, null);
                String str = (String) ((C4263g) map).getOrDefault(m2040k, null);
                int i2 = 0;
                while (true) {
                    if (i2 >= size) {
                        break;
                    } else if (str.equals(arrayList3.get(i2))) {
                        C3589v.C3598i.m2029v(arrayList2.get(i2), m2040k);
                        break;
                    } else {
                        i2++;
                    }
                }
            }
        }
        ViewTreeObserver$OnPreDrawListenerC3583p.m2126a(view, new RunnableC0472a(this, size, arrayList2, arrayList3, arrayList, arrayList4));
    }

    /* renamed from: w */
    public abstract void mo2286w(Object obj, View view, ArrayList<View> arrayList);

    /* renamed from: x */
    public abstract void mo2285x(Object obj, ArrayList<View> arrayList, ArrayList<View> arrayList2);

    /* renamed from: y */
    public abstract Object mo2284y(Object obj);
}

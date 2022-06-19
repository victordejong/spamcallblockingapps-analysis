package androidx.fragment.app;

import android.annotation.SuppressLint;
import android.graphics.Rect;
import android.graphics.RectF;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewParent;
import androidx.core.p008os.C0623b;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;
import p020b.p041h.p050l.C1679w;
import p020b.p041h.p050l.C1694y;
import p020b.p041h.p050l.ViewTreeObserver$OnPreDrawListenerC1676t;
@SuppressLint({"UnknownNullness"})
/* renamed from: androidx.fragment.app.v */
/* loaded from: classes-dex2jar.jar:androidx/fragment/app/v.class */
public abstract class AbstractC0771v {

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: androidx.fragment.app.v$a */
    /* loaded from: classes-dex2jar.jar:androidx/fragment/app/v$a.class */
    public class RunnableC0772a implements Runnable {

        /* renamed from: d */
        final /* synthetic */ int f3634d;

        /* renamed from: e */
        final /* synthetic */ ArrayList f3635e;

        /* renamed from: f */
        final /* synthetic */ ArrayList f3636f;

        /* renamed from: g */
        final /* synthetic */ ArrayList f3637g;

        /* renamed from: h */
        final /* synthetic */ ArrayList f3638h;

        RunnableC0772a(int i, ArrayList arrayList, ArrayList arrayList2, ArrayList arrayList3, ArrayList arrayList4) {
            AbstractC0771v.this = r4;
            this.f3634d = i;
            this.f3635e = arrayList;
            this.f3636f = arrayList2;
            this.f3637g = arrayList3;
            this.f3638h = arrayList4;
        }

        @Override // java.lang.Runnable
        public void run() {
            for (int i = 0; i < this.f3634d; i++) {
                C1679w.m29331J0((View) this.f3635e.get(i), (String) this.f3636f.get(i));
                C1679w.m29331J0((View) this.f3637g.get(i), (String) this.f3638h.get(i));
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: androidx.fragment.app.v$b */
    /* loaded from: classes-dex2jar.jar:androidx/fragment/app/v$b.class */
    public class RunnableC0773b implements Runnable {

        /* renamed from: d */
        final /* synthetic */ ArrayList f3640d;

        /* renamed from: e */
        final /* synthetic */ Map f3641e;

        RunnableC0773b(ArrayList arrayList, Map map) {
            AbstractC0771v.this = r4;
            this.f3640d = arrayList;
            this.f3641e = map;
        }

        @Override // java.lang.Runnable
        public void run() {
            int size = this.f3640d.size();
            for (int i = 0; i < size; i++) {
                View view = (View) this.f3640d.get(i);
                String m29326M = C1679w.m29326M(view);
                if (m29326M != null) {
                    C1679w.m29331J0(view, AbstractC0771v.m32457i(this.f3641e, m29326M));
                }
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: androidx.fragment.app.v$c */
    /* loaded from: classes-dex2jar.jar:androidx/fragment/app/v$c.class */
    public class RunnableC0774c implements Runnable {

        /* renamed from: d */
        final /* synthetic */ ArrayList f3643d;

        /* renamed from: e */
        final /* synthetic */ Map f3644e;

        RunnableC0774c(ArrayList arrayList, Map map) {
            AbstractC0771v.this = r4;
            this.f3643d = arrayList;
            this.f3644e = map;
        }

        @Override // java.lang.Runnable
        public void run() {
            int size = this.f3643d.size();
            for (int i = 0; i < size; i++) {
                View view = (View) this.f3643d.get(i);
                C1679w.m29331J0(view, (String) this.f3644e.get(C1679w.m29326M(view)));
            }
        }
    }

    /* renamed from: d */
    public static void m32460d(List<View> list, View view) {
        int size = list.size();
        if (m32458h(list, view, size)) {
            return;
        }
        if (C1679w.m29326M(view) != null) {
            list.add(view);
        }
        for (int i = size; i < list.size(); i++) {
            View view2 = list.get(i);
            if (view2 instanceof ViewGroup) {
                ViewGroup viewGroup = (ViewGroup) view2;
                int childCount = viewGroup.getChildCount();
                for (int i2 = 0; i2 < childCount; i2++) {
                    View childAt = viewGroup.getChildAt(i2);
                    if (!m32458h(list, childAt, size) && C1679w.m29326M(childAt) != null) {
                        list.add(childAt);
                    }
                }
            }
        }
    }

    /* renamed from: h */
    private static boolean m32458h(List<View> list, View view, int i) {
        for (int i2 = 0; i2 < i; i2++) {
            if (list.get(i2) == view) {
                return true;
            }
        }
        return false;
    }

    /* renamed from: i */
    static String m32457i(Map<String, String> map, String str) {
        for (Map.Entry<String, String> entry : map.entrySet()) {
            if (str.equals(entry.getValue())) {
                return entry.getKey();
            }
        }
        return null;
    }

    /* renamed from: l */
    public static boolean m32454l(List list) {
        return list == null || list.isEmpty();
    }

    /* renamed from: A */
    public abstract void mo30931A(Object obj, ArrayList<View> arrayList, ArrayList<View> arrayList2);

    /* renamed from: B */
    public abstract Object mo30930B(Object obj);

    /* renamed from: a */
    public abstract void mo30928a(Object obj, View view);

    /* renamed from: b */
    public abstract void mo30927b(Object obj, ArrayList<View> arrayList);

    /* renamed from: c */
    public abstract void mo30926c(ViewGroup viewGroup, Object obj);

    /* renamed from: e */
    public abstract boolean mo30925e(Object obj);

    /* renamed from: f */
    public void m32459f(ArrayList<View> arrayList, View view) {
        if (view.getVisibility() == 0) {
            if (!(view instanceof ViewGroup)) {
                arrayList.add(view);
                return;
            }
            ViewGroup viewGroup = (ViewGroup) view;
            if (C1694y.m29213a(viewGroup)) {
                arrayList.add(viewGroup);
                return;
            }
            int childCount = viewGroup.getChildCount();
            for (int i = 0; i < childCount; i++) {
                m32459f(arrayList, viewGroup.getChildAt(i));
            }
        }
    }

    /* renamed from: g */
    public abstract Object mo30924g(Object obj);

    /* renamed from: j */
    public void m32456j(Map<String, View> map, View view) {
        if (view.getVisibility() == 0) {
            String m29326M = C1679w.m29326M(view);
            if (m29326M != null) {
                map.put(m29326M, view);
            }
            if (!(view instanceof ViewGroup)) {
                return;
            }
            ViewGroup viewGroup = (ViewGroup) view;
            int childCount = viewGroup.getChildCount();
            for (int i = 0; i < childCount; i++) {
                m32456j(map, viewGroup.getChildAt(i));
            }
        }
    }

    /* renamed from: k */
    public void m32455k(View view, Rect rect) {
        if (!C1679w.m29314U(view)) {
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

    /* renamed from: m */
    public abstract Object mo30923m(Object obj, Object obj2, Object obj3);

    /* renamed from: n */
    public abstract Object mo30922n(Object obj, Object obj2, Object obj3);

    /* renamed from: o */
    public ArrayList<String> m32453o(ArrayList<View> arrayList) {
        ArrayList<String> arrayList2 = new ArrayList<>();
        int size = arrayList.size();
        for (int i = 0; i < size; i++) {
            View view = arrayList.get(i);
            arrayList2.add(C1679w.m29326M(view));
            C1679w.m29331J0(view, null);
        }
        return arrayList2;
    }

    /* renamed from: p */
    public abstract void mo30921p(Object obj, View view);

    /* renamed from: q */
    public abstract void mo30920q(Object obj, ArrayList<View> arrayList, ArrayList<View> arrayList2);

    /* renamed from: r */
    public abstract void mo30919r(Object obj, View view, ArrayList<View> arrayList);

    /* renamed from: s */
    public void m32452s(ViewGroup viewGroup, ArrayList<View> arrayList, Map<String, String> map) {
        ViewTreeObserver$OnPreDrawListenerC1676t.m29354a(viewGroup, new RunnableC0774c(arrayList, map));
    }

    /* renamed from: t */
    public abstract void mo30918t(Object obj, Object obj2, ArrayList<View> arrayList, Object obj3, ArrayList<View> arrayList2, Object obj4, ArrayList<View> arrayList3);

    /* renamed from: u */
    public abstract void mo30917u(Object obj, Rect rect);

    /* renamed from: v */
    public abstract void mo30916v(Object obj, View view);

    /* renamed from: w */
    public void mo32451w(Fragment fragment, Object obj, C0623b c0623b, Runnable runnable) {
        runnable.run();
    }

    /* renamed from: x */
    public void m32450x(View view, ArrayList<View> arrayList, Map<String, String> map) {
        ViewTreeObserver$OnPreDrawListenerC1676t.m29354a(view, new RunnableC0773b(arrayList, map));
    }

    /* renamed from: y */
    public void m32449y(View view, ArrayList<View> arrayList, ArrayList<View> arrayList2, ArrayList<String> arrayList3, Map<String, String> map) {
        int size = arrayList2.size();
        ArrayList arrayList4 = new ArrayList();
        for (int i = 0; i < size; i++) {
            View view2 = arrayList.get(i);
            String m29326M = C1679w.m29326M(view2);
            arrayList4.add(m29326M);
            if (m29326M != null) {
                C1679w.m29331J0(view2, null);
                String str = map.get(m29326M);
                int i2 = 0;
                while (true) {
                    if (i2 >= size) {
                        break;
                    } else if (str.equals(arrayList3.get(i2))) {
                        C1679w.m29331J0(arrayList2.get(i2), m29326M);
                        break;
                    } else {
                        i2++;
                    }
                }
            }
        }
        ViewTreeObserver$OnPreDrawListenerC1676t.m29354a(view, new RunnableC0772a(size, arrayList2, arrayList3, arrayList, arrayList4));
    }

    /* renamed from: z */
    public abstract void mo30915z(Object obj, View view, ArrayList<View> arrayList);
}

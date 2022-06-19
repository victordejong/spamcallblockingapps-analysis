package p1727n3.p1859r.p1860a;

import android.graphics.Rect;
import android.graphics.RectF;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewParent;
import androidx.fragment.app.Fragment;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;
import java.util.concurrent.atomic.AtomicInteger;
import p1727n3.p1788g.C26187h;
import p1727n3.p1807k.p1816e.C26508a;
import p1727n3.p1807k.p1821i.C26614s;
import p1727n3.p1807k.p1821i.ViewTreeObserver$OnPreDrawListenerC26612q;
/* renamed from: n3.r.a.o0 */
/* loaded from: classes-dex2jar.jar:n3/r/a/o0.class */
public abstract class AbstractC26949o0 {

    /* renamed from: n3.r.a.o0$a */
    /* loaded from: classes-dex2jar.jar:n3/r/a/o0$a.class */
    public class RunnableC26950a implements Runnable {

        /* renamed from: a */
        public final /* synthetic */ int f75424a;

        /* renamed from: b */
        public final /* synthetic */ ArrayList f75425b;

        /* renamed from: c */
        public final /* synthetic */ ArrayList f75426c;

        /* renamed from: d */
        public final /* synthetic */ ArrayList f75427d;

        /* renamed from: e */
        public final /* synthetic */ ArrayList f75428e;

        public RunnableC26950a(AbstractC26949o0 abstractC26949o0, int i, ArrayList arrayList, ArrayList arrayList2, ArrayList arrayList3, ArrayList arrayList4) {
            this.f75424a = i;
            this.f75425b = arrayList;
            this.f75426c = arrayList2;
            this.f75427d = arrayList3;
            this.f75428e = arrayList4;
        }

        @Override // java.lang.Runnable
        public void run() {
            for (int i = 0; i < this.f75424a; i++) {
                View view = (View) this.f75425b.get(i);
                String str = (String) this.f75426c.get(i);
                AtomicInteger atomicInteger = C26614s.f74505a;
                view.setTransitionName(str);
                ((View) this.f75427d.get(i)).setTransitionName((String) this.f75428e.get(i));
            }
        }
    }

    /* renamed from: d */
    public static void m1094d(List<View> list, View view) {
        int size = list.size();
        if (m1090h(list, view, size)) {
            return;
        }
        AtomicInteger atomicInteger = C26614s.f74505a;
        if (view.getTransitionName() != null) {
            list.add(view);
        }
        for (int i = size; i < list.size(); i++) {
            View view2 = list.get(i);
            if (view2 instanceof ViewGroup) {
                ViewGroup viewGroup = (ViewGroup) view2;
                int childCount = viewGroup.getChildCount();
                for (int i2 = 0; i2 < childCount; i2++) {
                    View childAt = viewGroup.getChildAt(i2);
                    if (!m1090h(list, childAt, size) && childAt.getTransitionName() != null) {
                        list.add(childAt);
                    }
                }
            }
        }
    }

    /* renamed from: h */
    public static boolean m1090h(List<View> list, View view, int i) {
        for (int i2 = 0; i2 < i; i2++) {
            if (list.get(i2) == view) {
                return true;
            }
        }
        return false;
    }

    /* renamed from: k */
    public static boolean m1087k(List list) {
        return list == null || list.isEmpty();
    }

    /* renamed from: a */
    public abstract void mo1097a(Object obj, View view);

    /* renamed from: b */
    public abstract void mo1096b(Object obj, ArrayList<View> arrayList);

    /* renamed from: c */
    public abstract void mo1095c(ViewGroup viewGroup, Object obj);

    /* renamed from: e */
    public abstract boolean mo1093e(Object obj);

    /* renamed from: f */
    public void m1092f(ArrayList<View> arrayList, View view) {
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
                m1092f(arrayList, viewGroup.getChildAt(i));
            }
        }
    }

    /* renamed from: g */
    public abstract Object mo1091g(Object obj);

    /* renamed from: i */
    public void m1089i(Map<String, View> map, View view) {
        if (view.getVisibility() == 0) {
            AtomicInteger atomicInteger = C26614s.f74505a;
            String transitionName = view.getTransitionName();
            if (transitionName != null) {
                map.put(transitionName, view);
            }
            if (!(view instanceof ViewGroup)) {
                return;
            }
            ViewGroup viewGroup = (ViewGroup) view;
            int childCount = viewGroup.getChildCount();
            for (int i = 0; i < childCount; i++) {
                m1089i(map, viewGroup.getChildAt(i));
            }
        }
    }

    /* renamed from: j */
    public void m1088j(View view, Rect rect) {
        AtomicInteger atomicInteger = C26614s.f74505a;
        if (!view.isAttachedToWindow()) {
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
    public abstract Object mo1086l(Object obj, Object obj2, Object obj3);

    /* renamed from: m */
    public abstract Object mo1085m(Object obj, Object obj2, Object obj3);

    /* renamed from: n */
    public ArrayList<String> m1084n(ArrayList<View> arrayList) {
        ArrayList<String> arrayList2 = new ArrayList<>();
        int size = arrayList.size();
        for (int i = 0; i < size; i++) {
            View view = arrayList.get(i);
            AtomicInteger atomicInteger = C26614s.f74505a;
            arrayList2.add(view.getTransitionName());
            view.setTransitionName(null);
        }
        return arrayList2;
    }

    /* renamed from: o */
    public abstract void mo1083o(Object obj, View view);

    /* renamed from: p */
    public abstract void mo1082p(Object obj, ArrayList<View> arrayList, ArrayList<View> arrayList2);

    /* renamed from: q */
    public abstract void mo1081q(Object obj, View view, ArrayList<View> arrayList);

    /* renamed from: r */
    public abstract void mo1080r(Object obj, Object obj2, ArrayList<View> arrayList, Object obj3, ArrayList<View> arrayList2, Object obj4, ArrayList<View> arrayList3);

    /* renamed from: s */
    public abstract void mo1079s(Object obj, Rect rect);

    /* renamed from: t */
    public abstract void mo1078t(Object obj, View view);

    /* renamed from: u */
    public void mo1077u(Fragment fragment, Object obj, C26508a c26508a, Runnable runnable) {
        runnable.run();
    }

    /* renamed from: v */
    public void m1076v(View view, ArrayList<View> arrayList, ArrayList<View> arrayList2, ArrayList<String> arrayList3, Map<String, String> map) {
        int size = arrayList2.size();
        ArrayList arrayList4 = new ArrayList();
        for (int i = 0; i < size; i++) {
            View view2 = arrayList.get(i);
            AtomicInteger atomicInteger = C26614s.f74505a;
            String transitionName = view2.getTransitionName();
            arrayList4.add(transitionName);
            if (transitionName != null) {
                view2.setTransitionName(null);
                String str = (String) ((C26187h) map).getOrDefault(transitionName, null);
                int i2 = 0;
                while (true) {
                    if (i2 >= size) {
                        break;
                    } else if (str.equals(arrayList3.get(i2))) {
                        arrayList2.get(i2).setTransitionName(transitionName);
                        break;
                    } else {
                        i2++;
                    }
                }
            }
        }
        ViewTreeObserver$OnPreDrawListenerC26612q.m1582a(view, new RunnableC26950a(this, size, arrayList2, arrayList3, arrayList, arrayList4));
    }

    /* renamed from: w */
    public abstract void mo1075w(Object obj, View view, ArrayList<View> arrayList);

    /* renamed from: x */
    public abstract void mo1074x(Object obj, ArrayList<View> arrayList, ArrayList<View> arrayList2);

    /* renamed from: y */
    public abstract Object mo1073y(Object obj);
}

package androidx.fragment.app;

import android.graphics.Rect;
import android.graphics.RectF;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewParent;
import androidx.core.p037os.C0856a;
import androidx.core.view.C0926v;
import androidx.core.view.C0938w;
import androidx.core.view.View$OnAttachStateChangeListenerC0923s;
import com.google.android.gms.maps.model.BitmapDescriptorFactory;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;
/* renamed from: androidx.fragment.app.v */
/* loaded from: classes-dex2jar.jar:androidx/fragment/app/v.class */
public abstract class AbstractC1138v {
    /* renamed from: a */
    public static ArrayList<String> m43497a(ArrayList<View> arrayList) {
        ArrayList<String> arrayList2 = new ArrayList<>();
        int size = arrayList.size();
        for (int i = 0; i < size; i++) {
            View view = arrayList.get(i);
            arrayList2.add(C0926v.m44083p(view));
            C0926v.m44115a(view, (String) null);
        }
        return arrayList2;
    }

    /* renamed from: a */
    public static void m43499a(View view, Rect rect) {
        if (!C0926v.m44154E(view)) {
            return;
        }
        RectF rectF = new RectF();
        rectF.set(BitmapDescriptorFactory.HUE_RED, BitmapDescriptorFactory.HUE_RED, view.getWidth(), view.getHeight());
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

    /* renamed from: a */
    public static void m43494a(List<View> list, View view) {
        int size = list.size();
        if (m43493a(list, view, size)) {
            return;
        }
        list.add(view);
        for (int i = size; i < list.size(); i++) {
            View view2 = list.get(i);
            if (view2 instanceof ViewGroup) {
                ViewGroup viewGroup = (ViewGroup) view2;
                int childCount = viewGroup.getChildCount();
                for (int i2 = 0; i2 < childCount; i2++) {
                    View childAt = viewGroup.getChildAt(i2);
                    if (!m43493a(list, childAt, size)) {
                        list.add(childAt);
                    }
                }
            }
        }
    }

    /* renamed from: a */
    public static boolean m43495a(List list) {
        return list == null || list.isEmpty();
    }

    /* renamed from: a */
    private static boolean m43493a(List<View> list, View view, int i) {
        for (int i2 = 0; i2 < i; i2++) {
            if (list.get(i2) == view) {
                return true;
            }
        }
        return false;
    }

    /* renamed from: a */
    public abstract Object mo39711a(Object obj, Object obj2, Object obj3);

    /* renamed from: a */
    public final void m43498a(View view, final ArrayList<View> arrayList, final ArrayList<View> arrayList2, final ArrayList<String> arrayList3, Map<String, String> map) {
        final int size = arrayList2.size();
        final ArrayList arrayList4 = new ArrayList();
        for (int i = 0; i < size; i++) {
            View view2 = arrayList.get(i);
            String m44083p = C0926v.m44083p(view2);
            arrayList4.add(m44083p);
            if (m44083p != null) {
                C0926v.m44115a(view2, (String) null);
                String str = map.get(m44083p);
                int i2 = 0;
                while (true) {
                    if (i2 >= size) {
                        break;
                    } else if (str.equals(arrayList3.get(i2))) {
                        C0926v.m44115a(arrayList2.get(i2), m44083p);
                        break;
                    } else {
                        i2++;
                    }
                }
            }
        }
        View$OnAttachStateChangeListenerC0923s.m44160a(view, new Runnable() { // from class: androidx.fragment.app.v.1
            @Override // java.lang.Runnable
            public final void run() {
                for (int i3 = 0; i3 < size; i3++) {
                    C0926v.m44115a((View) arrayList2.get(i3), (String) arrayList3.get(i3));
                    C0926v.m44115a((View) arrayList.get(i3), (String) arrayList4.get(i3));
                }
            }
        });
    }

    /* renamed from: a */
    public abstract void mo39718a(ViewGroup viewGroup, Object obj);

    /* renamed from: a */
    public abstract void mo39715a(Object obj, Rect rect);

    /* renamed from: a */
    public abstract void mo39714a(Object obj, View view);

    /* renamed from: a */
    public abstract void mo39713a(Object obj, View view, ArrayList<View> arrayList);

    /* renamed from: a */
    public void mo39712a(Object obj, C0856a c0856a, Runnable runnable) {
        runnable.run();
    }

    /* renamed from: a */
    public abstract void mo39710a(Object obj, Object obj2, ArrayList<View> arrayList, Object obj3, ArrayList<View> arrayList2, Object obj4, ArrayList<View> arrayList3);

    /* renamed from: a */
    public abstract void mo39709a(Object obj, ArrayList<View> arrayList);

    /* renamed from: a */
    public abstract void mo39708a(Object obj, ArrayList<View> arrayList, ArrayList<View> arrayList2);

    /* renamed from: a */
    public final void m43496a(ArrayList<View> arrayList, View view) {
        if (view.getVisibility() == 0) {
            if (!(view instanceof ViewGroup)) {
                arrayList.add(view);
                return;
            }
            ViewGroup viewGroup = (ViewGroup) view;
            if (C0938w.m44057a(viewGroup)) {
                arrayList.add(viewGroup);
                return;
            }
            int childCount = viewGroup.getChildCount();
            for (int i = 0; i < childCount; i++) {
                m43496a(arrayList, viewGroup.getChildAt(i));
            }
        }
    }

    /* renamed from: a */
    public final void m43492a(Map<String, View> map, View view) {
        if (view.getVisibility() == 0) {
            String m44083p = C0926v.m44083p(view);
            if (m44083p != null) {
                map.put(m44083p, view);
            }
            if (!(view instanceof ViewGroup)) {
                return;
            }
            ViewGroup viewGroup = (ViewGroup) view;
            int childCount = viewGroup.getChildCount();
            for (int i = 0; i < childCount; i++) {
                m43492a(map, viewGroup.getChildAt(i));
            }
        }
    }

    /* renamed from: a */
    public abstract boolean mo39716a(Object obj);

    /* renamed from: b */
    public abstract Object mo39707b(Object obj);

    /* renamed from: b */
    public abstract Object mo39704b(Object obj, Object obj2, Object obj3);

    /* renamed from: b */
    public abstract void mo39706b(Object obj, View view);

    /* renamed from: b */
    public abstract void mo39705b(Object obj, View view, ArrayList<View> arrayList);

    /* renamed from: b */
    public abstract void mo39703b(Object obj, ArrayList<View> arrayList, ArrayList<View> arrayList2);

    /* renamed from: c */
    public abstract Object mo39702c(Object obj);

    /* renamed from: c */
    public abstract void mo39701c(Object obj, View view);
}

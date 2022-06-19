package androidx.fragment.app;

import android.graphics.Rect;
import android.view.View;
import android.view.ViewGroup;
import androidx.core.p023g.C0552u;
import androidx.core.p023g.C0562w;
import androidx.core.p023g.View$OnAttachStateChangeListenerC0549r;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;
/* renamed from: androidx.fragment.app.o */
/* loaded from: classes-dex2jar.jar:androidx/fragment/app/o.class */
public abstract class AbstractC0751o {
    /* renamed from: a */
    static String m5412a(Map<String, String> map, String str) {
        for (Map.Entry<String, String> entry : map.entrySet()) {
            if (str.equals(entry.getValue())) {
                return entry.getKey();
            }
        }
        return null;
    }

    /* renamed from: a */
    public static void m5415a(List<View> list, View view) {
        int size = list.size();
        if (m5414a(list, view, size)) {
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
                    if (!m5414a(list, childAt, size)) {
                        list.add(childAt);
                    }
                }
            }
        }
    }

    /* renamed from: a */
    public static boolean m5416a(List list) {
        return list == null || list.isEmpty();
    }

    /* renamed from: a */
    private static boolean m5414a(List<View> list, View view, int i) {
        for (int i2 = 0; i2 < i; i2++) {
            if (list.get(i2) == view) {
                return true;
            }
        }
        return false;
    }

    /* renamed from: a */
    public abstract Object mo5277a(Object obj, Object obj2, Object obj3);

    /* renamed from: a */
    public ArrayList<String> m5418a(ArrayList<View> arrayList) {
        ArrayList<String> arrayList2 = new ArrayList<>();
        int size = arrayList.size();
        for (int i = 0; i < size; i++) {
            View view = arrayList.get(i);
            arrayList2.add(C0552u.m6230q(view));
            C0552u.m6263a(view, (String) null);
        }
        return arrayList2;
    }

    /* renamed from: a */
    public void m5422a(View view, Rect rect) {
        int[] iArr = new int[2];
        view.getLocationOnScreen(iArr);
        rect.set(iArr[0], iArr[1], iArr[0] + view.getWidth(), iArr[1] + view.getHeight());
    }

    /* renamed from: a */
    public void m5421a(View view, final ArrayList<View> arrayList, final ArrayList<View> arrayList2, final ArrayList<String> arrayList3, Map<String, String> map) {
        final int size = arrayList2.size();
        final ArrayList arrayList4 = new ArrayList();
        for (int i = 0; i < size; i++) {
            View view2 = arrayList.get(i);
            String m6230q = C0552u.m6230q(view2);
            arrayList4.add(m6230q);
            if (m6230q != null) {
                C0552u.m6263a(view2, (String) null);
                String str = map.get(m6230q);
                int i2 = 0;
                while (true) {
                    if (i2 >= size) {
                        break;
                    } else if (str.equals(arrayList3.get(i2))) {
                        C0552u.m6263a(arrayList2.get(i2), m6230q);
                        break;
                    } else {
                        i2++;
                    }
                }
            }
        }
        View$OnAttachStateChangeListenerC0549r.m6298a(view, new Runnable() { // from class: androidx.fragment.app.o.1
            @Override // java.lang.Runnable
            public void run() {
                for (int i3 = 0; i3 < size; i3++) {
                    C0552u.m6263a((View) arrayList2.get(i3), (String) arrayList3.get(i3));
                    C0552u.m6263a((View) arrayList.get(i3), (String) arrayList4.get(i3));
                }
            }
        });
    }

    /* renamed from: a */
    public void m5420a(View view, final ArrayList<View> arrayList, final Map<String, String> map) {
        View$OnAttachStateChangeListenerC0549r.m6298a(view, new Runnable() { // from class: androidx.fragment.app.o.2
            @Override // java.lang.Runnable
            public void run() {
                int size = arrayList.size();
                for (int i = 0; i < size; i++) {
                    View view2 = (View) arrayList.get(i);
                    String m6230q = C0552u.m6230q(view2);
                    if (m6230q != null) {
                        C0552u.m6263a(view2, AbstractC0751o.m5412a(map, m6230q));
                    }
                }
            }
        });
    }

    /* renamed from: a */
    public abstract void mo5283a(ViewGroup viewGroup, Object obj);

    /* renamed from: a */
    public void m5419a(ViewGroup viewGroup, final ArrayList<View> arrayList, final Map<String, String> map) {
        View$OnAttachStateChangeListenerC0549r.m6298a(viewGroup, new Runnable() { // from class: androidx.fragment.app.o.3
            @Override // java.lang.Runnable
            public void run() {
                int size = arrayList.size();
                for (int i = 0; i < size; i++) {
                    View view = (View) arrayList.get(i);
                    C0552u.m6263a(view, (String) map.get(C0552u.m6230q(view)));
                }
            }
        });
    }

    /* renamed from: a */
    public abstract void mo5280a(Object obj, Rect rect);

    /* renamed from: a */
    public abstract void mo5279a(Object obj, View view);

    /* renamed from: a */
    public abstract void mo5278a(Object obj, View view, ArrayList<View> arrayList);

    /* renamed from: a */
    public abstract void mo5276a(Object obj, Object obj2, ArrayList<View> arrayList, Object obj3, ArrayList<View> arrayList2, Object obj4, ArrayList<View> arrayList3);

    /* renamed from: a */
    public abstract void mo5275a(Object obj, ArrayList<View> arrayList);

    /* renamed from: a */
    public abstract void mo5274a(Object obj, ArrayList<View> arrayList, ArrayList<View> arrayList2);

    /* renamed from: a */
    public void m5417a(ArrayList<View> arrayList, View view) {
        if (view.getVisibility() == 0) {
            if (!(view instanceof ViewGroup)) {
                arrayList.add(view);
                return;
            }
            ViewGroup viewGroup = (ViewGroup) view;
            if (C0562w.m6198a(viewGroup)) {
                arrayList.add(viewGroup);
                return;
            }
            int childCount = viewGroup.getChildCount();
            for (int i = 0; i < childCount; i++) {
                m5417a(arrayList, viewGroup.getChildAt(i));
            }
        }
    }

    /* renamed from: a */
    public void m5413a(Map<String, View> map, View view) {
        if (view.getVisibility() == 0) {
            String m6230q = C0552u.m6230q(view);
            if (m6230q != null) {
                map.put(m6230q, view);
            }
            if (!(view instanceof ViewGroup)) {
                return;
            }
            ViewGroup viewGroup = (ViewGroup) view;
            int childCount = viewGroup.getChildCount();
            for (int i = 0; i < childCount; i++) {
                m5413a(map, viewGroup.getChildAt(i));
            }
        }
    }

    /* renamed from: a */
    public abstract boolean mo5281a(Object obj);

    /* renamed from: b */
    public abstract Object mo5273b(Object obj);

    /* renamed from: b */
    public abstract Object mo5270b(Object obj, Object obj2, Object obj3);

    /* renamed from: b */
    public abstract void mo5272b(Object obj, View view);

    /* renamed from: b */
    public abstract void mo5271b(Object obj, View view, ArrayList<View> arrayList);

    /* renamed from: b */
    public abstract void mo5269b(Object obj, ArrayList<View> arrayList, ArrayList<View> arrayList2);

    /* renamed from: c */
    public abstract Object mo5268c(Object obj);

    /* renamed from: c */
    public abstract void mo5267c(Object obj, View view);
}

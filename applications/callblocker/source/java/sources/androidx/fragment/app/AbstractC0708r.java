package androidx.fragment.app;

import android.annotation.SuppressLint;
import android.graphics.Rect;
import android.view.View;
import android.view.ViewGroup;
import androidx.core.p026h.C0595u;
import androidx.core.p026h.C0605w;
import androidx.core.p026h.View$OnAttachStateChangeListenerC0592r;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
@SuppressLint({"UnknownNullness"})
/* renamed from: androidx.fragment.app.r */
/* loaded from: classes-dex2jar.jar:androidx/fragment/app/r.class */
public abstract class AbstractC0708r {
    /* renamed from: a */
    static String m19605a(Map<String, String> map, String str) {
        String str2;
        Iterator<Map.Entry<String, String>> it = map.entrySet().iterator();
        while (true) {
            if (!it.hasNext()) {
                str2 = null;
                break;
            }
            Map.Entry<String, String> next = it.next();
            if (str.equals(next.getValue())) {
                str2 = next.getKey();
                break;
            }
        }
        return str2;
    }

    /* renamed from: a */
    public static void m19608a(List<View> list, View view) {
        int size = list.size();
        if (m19607a(list, view, size)) {
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
                    if (!m19607a(list, childAt, size)) {
                        list.add(childAt);
                    }
                }
            }
        }
    }

    /* renamed from: a */
    public static boolean m19609a(List list) {
        return list == null || list.isEmpty();
    }

    /* renamed from: a */
    private static boolean m19607a(List<View> list, View view, int i) {
        boolean z;
        int i2 = 0;
        while (true) {
            z = false;
            if (i2 >= i) {
                break;
            } else if (list.get(i2) == view) {
                z = true;
                break;
            } else {
                i2++;
            }
        }
        return z;
    }

    /* renamed from: a */
    public abstract Object mo19442a(Object obj, Object obj2, Object obj3);

    /* renamed from: a */
    public ArrayList<String> m19611a(ArrayList<View> arrayList) {
        ArrayList<String> arrayList2 = new ArrayList<>();
        int size = arrayList.size();
        for (int i = 0; i < size; i++) {
            View view = arrayList.get(i);
            arrayList2.add(C0595u.m20309o(view));
            C0595u.m20339a(view, (String) null);
        }
        return arrayList2;
    }

    /* renamed from: a */
    public void m19615a(View view, Rect rect) {
        int[] iArr = new int[2];
        view.getLocationOnScreen(iArr);
        rect.set(iArr[0], iArr[1], iArr[0] + view.getWidth(), iArr[1] + view.getHeight());
    }

    /* renamed from: a */
    public void m19614a(View view, final ArrayList<View> arrayList, final ArrayList<View> arrayList2, final ArrayList<String> arrayList3, Map<String, String> map) {
        final int size = arrayList2.size();
        final ArrayList arrayList4 = new ArrayList();
        for (int i = 0; i < size; i++) {
            View view2 = arrayList.get(i);
            String m20309o = C0595u.m20309o(view2);
            arrayList4.add(m20309o);
            if (m20309o != null) {
                C0595u.m20339a(view2, (String) null);
                String str = map.get(m20309o);
                int i2 = 0;
                while (true) {
                    if (i2 >= size) {
                        break;
                    } else if (str.equals(arrayList3.get(i2))) {
                        C0595u.m20339a(arrayList2.get(i2), m20309o);
                        break;
                    } else {
                        i2++;
                    }
                }
            }
        }
        View$OnAttachStateChangeListenerC0592r.m20374a(view, new Runnable() { // from class: androidx.fragment.app.r.1
            @Override // java.lang.Runnable
            public void run() {
                for (int i3 = 0; i3 < size; i3++) {
                    C0595u.m20339a((View) arrayList2.get(i3), (String) arrayList3.get(i3));
                    C0595u.m20339a((View) arrayList.get(i3), (String) arrayList4.get(i3));
                }
            }
        });
    }

    /* renamed from: a */
    public void m19613a(View view, final ArrayList<View> arrayList, final Map<String, String> map) {
        View$OnAttachStateChangeListenerC0592r.m20374a(view, new Runnable() { // from class: androidx.fragment.app.r.2
            @Override // java.lang.Runnable
            public void run() {
                int size = arrayList.size();
                for (int i = 0; i < size; i++) {
                    View view2 = (View) arrayList.get(i);
                    String m20309o = C0595u.m20309o(view2);
                    if (m20309o != null) {
                        C0595u.m20339a(view2, AbstractC0708r.m19605a(map, m20309o));
                    }
                }
            }
        });
    }

    /* renamed from: a */
    public abstract void mo19448a(ViewGroup viewGroup, Object obj);

    /* renamed from: a */
    public void m19612a(ViewGroup viewGroup, final ArrayList<View> arrayList, final Map<String, String> map) {
        View$OnAttachStateChangeListenerC0592r.m20374a(viewGroup, new Runnable() { // from class: androidx.fragment.app.r.3
            @Override // java.lang.Runnable
            public void run() {
                int size = arrayList.size();
                for (int i = 0; i < size; i++) {
                    View view = (View) arrayList.get(i);
                    C0595u.m20339a(view, (String) map.get(C0595u.m20309o(view)));
                }
            }
        });
    }

    /* renamed from: a */
    public abstract void mo19445a(Object obj, Rect rect);

    /* renamed from: a */
    public abstract void mo19444a(Object obj, View view);

    /* renamed from: a */
    public abstract void mo19443a(Object obj, View view, ArrayList<View> arrayList);

    /* renamed from: a */
    public abstract void mo19441a(Object obj, Object obj2, ArrayList<View> arrayList, Object obj3, ArrayList<View> arrayList2, Object obj4, ArrayList<View> arrayList3);

    /* renamed from: a */
    public abstract void mo19440a(Object obj, ArrayList<View> arrayList);

    /* renamed from: a */
    public abstract void mo19439a(Object obj, ArrayList<View> arrayList, ArrayList<View> arrayList2);

    /* renamed from: a */
    public void m19610a(ArrayList<View> arrayList, View view) {
        if (view.getVisibility() == 0) {
            if (!(view instanceof ViewGroup)) {
                arrayList.add(view);
                return;
            }
            ViewGroup viewGroup = (ViewGroup) view;
            if (C0605w.m20265a(viewGroup)) {
                arrayList.add(viewGroup);
                return;
            }
            int childCount = viewGroup.getChildCount();
            for (int i = 0; i < childCount; i++) {
                m19610a(arrayList, viewGroup.getChildAt(i));
            }
        }
    }

    /* renamed from: a */
    public void m19606a(Map<String, View> map, View view) {
        if (view.getVisibility() == 0) {
            String m20309o = C0595u.m20309o(view);
            if (m20309o != null) {
                map.put(m20309o, view);
            }
            if (!(view instanceof ViewGroup)) {
                return;
            }
            ViewGroup viewGroup = (ViewGroup) view;
            int childCount = viewGroup.getChildCount();
            for (int i = 0; i < childCount; i++) {
                m19606a(map, viewGroup.getChildAt(i));
            }
        }
    }

    /* renamed from: a */
    public abstract boolean mo19446a(Object obj);

    /* renamed from: b */
    public abstract Object mo19438b(Object obj);

    /* renamed from: b */
    public abstract Object mo19435b(Object obj, Object obj2, Object obj3);

    /* renamed from: b */
    public abstract void mo19437b(Object obj, View view);

    /* renamed from: b */
    public abstract void mo19436b(Object obj, View view, ArrayList<View> arrayList);

    /* renamed from: b */
    public abstract void mo19434b(Object obj, ArrayList<View> arrayList, ArrayList<View> arrayList2);

    /* renamed from: c */
    public abstract Object mo19433c(Object obj);

    /* renamed from: c */
    public abstract void mo19432c(Object obj, View view);
}

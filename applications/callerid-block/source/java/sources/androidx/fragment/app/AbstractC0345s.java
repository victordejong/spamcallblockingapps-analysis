package androidx.fragment.app;

import android.annotation.SuppressLint;
import android.graphics.Rect;
import android.view.View;
import android.view.ViewGroup;
import d.h.i.a;
import d.h.m.q;
import d.h.m.t;
import d.h.m.v;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;
@SuppressLint({"UnknownNullness"})
/* renamed from: androidx.fragment.app.s */
/* loaded from: classes-dex2jar.jar:androidx/fragment/app/s.class */
public abstract class AbstractC0345s {

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: androidx.fragment.app.s$a */
    /* loaded from: classes-dex2jar.jar:androidx/fragment/app/s$a.class */
    public class RunnableC0346a implements Runnable {

        /* renamed from: b */
        final /* synthetic */ int f2015b;

        /* renamed from: c */
        final /* synthetic */ ArrayList f2016c;

        /* renamed from: d */
        final /* synthetic */ ArrayList f2017d;

        /* renamed from: e */
        final /* synthetic */ ArrayList f2018e;

        /* renamed from: f */
        final /* synthetic */ ArrayList f2019f;

        RunnableC0346a(AbstractC0345s abstractC0345s, int i, ArrayList arrayList, ArrayList arrayList2, ArrayList arrayList3, ArrayList arrayList4) {
            this.f2015b = i;
            this.f2016c = arrayList;
            this.f2017d = arrayList2;
            this.f2018e = arrayList3;
            this.f2019f = arrayList4;
        }

        @Override // java.lang.Runnable
        public void run() {
            for (int i = 0; i < this.f2015b; i++) {
                t.F0((View) this.f2016c.get(i), (String) this.f2017d.get(i));
                t.F0((View) this.f2018e.get(i), (String) this.f2019f.get(i));
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: androidx.fragment.app.s$b */
    /* loaded from: classes-dex2jar.jar:androidx/fragment/app/s$b.class */
    public class RunnableC0347b implements Runnable {

        /* renamed from: b */
        final /* synthetic */ ArrayList f2020b;

        /* renamed from: c */
        final /* synthetic */ Map f2021c;

        RunnableC0347b(AbstractC0345s abstractC0345s, ArrayList arrayList, Map map) {
            this.f2020b = arrayList;
            this.f2021c = map;
        }

        @Override // java.lang.Runnable
        public void run() {
            int size = this.f2020b.size();
            for (int i = 0; i < size; i++) {
                View view = (View) this.f2020b.get(i);
                String J = t.J(view);
                if (J != null) {
                    t.F0(view, AbstractC0345s.m13040i(this.f2021c, J));
                }
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: androidx.fragment.app.s$c */
    /* loaded from: classes-dex2jar.jar:androidx/fragment/app/s$c.class */
    public class RunnableC0348c implements Runnable {

        /* renamed from: b */
        final /* synthetic */ ArrayList f2022b;

        /* renamed from: c */
        final /* synthetic */ Map f2023c;

        RunnableC0348c(AbstractC0345s abstractC0345s, ArrayList arrayList, Map map) {
            this.f2022b = arrayList;
            this.f2023c = map;
        }

        @Override // java.lang.Runnable
        public void run() {
            int size = this.f2022b.size();
            for (int i = 0; i < size; i++) {
                View view = (View) this.f2022b.get(i);
                t.F0(view, (String) this.f2023c.get(t.J(view)));
            }
        }
    }

    /* renamed from: d */
    protected static void m13045d(List<View> list, View view) {
        int size = list.size();
        if (m13041h(list, view, size)) {
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
                    if (!m13041h(list, childAt, size)) {
                        list.add(childAt);
                    }
                }
            }
        }
    }

    /* renamed from: h */
    private static boolean m13041h(List<View> list, View view, int i) {
        for (int i2 = 0; i2 < i; i2++) {
            if (list.get(i2) == view) {
                return true;
            }
        }
        return false;
    }

    /* renamed from: i */
    static String m13040i(Map<String, String> map, String str) {
        for (Map.Entry<String, String> entry : map.entrySet()) {
            if (str.equals(entry.getValue())) {
                return entry.getKey();
            }
        }
        return null;
    }

    /* renamed from: l */
    protected static boolean m13037l(List list) {
        return list == null || list.isEmpty();
    }

    /* renamed from: A */
    public abstract void m13050A(Object obj, ArrayList<View> arrayList, ArrayList<View> arrayList2);

    /* renamed from: B */
    public abstract Object m13049B(Object obj);

    /* renamed from: a */
    public abstract void m13048a(Object obj, View view);

    /* renamed from: b */
    public abstract void m13047b(Object obj, ArrayList<View> arrayList);

    /* renamed from: c */
    public abstract void m13046c(ViewGroup viewGroup, Object obj);

    /* renamed from: e */
    public abstract boolean m13044e(Object obj);

    /* renamed from: f */
    public void m13043f(ArrayList<View> arrayList, View view) {
        if (view.getVisibility() == 0) {
            ViewGroup viewGroup = view;
            if (view instanceof ViewGroup) {
                ViewGroup viewGroup2 = (ViewGroup) view;
                boolean a = v.a(viewGroup2);
                viewGroup = viewGroup2;
                if (!a) {
                    int childCount = viewGroup2.getChildCount();
                    for (int i = 0; i < childCount; i++) {
                        m13043f(arrayList, viewGroup2.getChildAt(i));
                    }
                    return;
                }
            }
            arrayList.add(viewGroup);
        }
    }

    /* renamed from: g */
    public abstract Object m13042g(Object obj);

    /* renamed from: j */
    public void m13039j(Map<String, View> map, View view) {
        if (view.getVisibility() == 0) {
            String J = t.J(view);
            if (J != null) {
                map.put(J, view);
            }
            if (!(view instanceof ViewGroup)) {
                return;
            }
            ViewGroup viewGroup = (ViewGroup) view;
            int childCount = viewGroup.getChildCount();
            for (int i = 0; i < childCount; i++) {
                m13039j(map, viewGroup.getChildAt(i));
            }
        }
    }

    /* renamed from: k */
    public void m13038k(View view, Rect rect) {
        int[] iArr = new int[2];
        view.getLocationOnScreen(iArr);
        rect.set(iArr[0], iArr[1], iArr[0] + view.getWidth(), iArr[1] + view.getHeight());
    }

    /* renamed from: m */
    public abstract Object m13036m(Object obj, Object obj2, Object obj3);

    /* renamed from: n */
    public abstract Object m13035n(Object obj, Object obj2, Object obj3);

    /* renamed from: o */
    public ArrayList<String> m13034o(ArrayList<View> arrayList) {
        ArrayList<String> arrayList2 = new ArrayList<>();
        int size = arrayList.size();
        for (int i = 0; i < size; i++) {
            View view = arrayList.get(i);
            arrayList2.add(t.J(view));
            t.F0(view, (String) null);
        }
        return arrayList2;
    }

    /* renamed from: p */
    public abstract void m13033p(Object obj, View view);

    /* renamed from: q */
    public abstract void m13032q(Object obj, ArrayList<View> arrayList, ArrayList<View> arrayList2);

    /* renamed from: r */
    public abstract void m13031r(Object obj, View view, ArrayList<View> arrayList);

    /* renamed from: s */
    public void m13030s(ViewGroup viewGroup, ArrayList<View> arrayList, Map<String, String> map) {
        q.a(viewGroup, new RunnableC0348c(this, arrayList, map));
    }

    /* renamed from: t */
    public abstract void m13029t(Object obj, Object obj2, ArrayList<View> arrayList, Object obj3, ArrayList<View> arrayList2, Object obj4, ArrayList<View> arrayList3);

    /* renamed from: u */
    public abstract void m13028u(Object obj, Rect rect);

    /* renamed from: v */
    public abstract void m13027v(Object obj, View view);

    /* renamed from: w */
    public void m13026w(Fragment fragment, Object obj, a aVar, Runnable runnable) {
        runnable.run();
    }

    /* renamed from: x */
    public void m13025x(View view, ArrayList<View> arrayList, Map<String, String> map) {
        q.a(view, new RunnableC0347b(this, arrayList, map));
    }

    /* renamed from: y */
    public void m13024y(View view, ArrayList<View> arrayList, ArrayList<View> arrayList2, ArrayList<String> arrayList3, Map<String, String> map) {
        int size = arrayList2.size();
        ArrayList arrayList4 = new ArrayList();
        for (int i = 0; i < size; i++) {
            View view2 = arrayList.get(i);
            String J = t.J(view2);
            arrayList4.add(J);
            if (J != null) {
                t.F0(view2, (String) null);
                String str = map.get(J);
                int i2 = 0;
                while (true) {
                    if (i2 >= size) {
                        break;
                    } else if (str.equals(arrayList3.get(i2))) {
                        t.F0(arrayList2.get(i2), J);
                        break;
                    } else {
                        i2++;
                    }
                }
            }
        }
        q.a(view, new RunnableC0346a(this, size, arrayList2, arrayList3, arrayList, arrayList4));
    }

    /* renamed from: z */
    public abstract void m13023z(Object obj, View view, ArrayList<View> arrayList);
}

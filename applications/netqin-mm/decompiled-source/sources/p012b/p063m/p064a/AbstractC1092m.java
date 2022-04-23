package p012b.p063m.p064a;

import android.graphics.Rect;
import android.view.View;
import android.view.ViewGroup;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;
import p012b.p042i.p054p.C1002u;
import p012b.p042i.p054p.C1015w;
import p012b.p042i.p054p.ViewTreeObserver$OnPreDrawListenerC1000s;
/* renamed from: b.m.a.m */
/* loaded from: classes-dex2jar.jar:b/m/a/m.class */
public abstract class AbstractC1092m {

    /* renamed from: b.m.a.m$a */
    /* loaded from: classes-dex2jar.jar:b/m/a/m$a.class */
    public class RunnableC1093a implements Runnable {

        /* renamed from: a */
        public final /* synthetic */ int f4587a;

        /* renamed from: b */
        public final /* synthetic */ ArrayList f4588b;

        /* renamed from: c */
        public final /* synthetic */ ArrayList f4589c;

        /* renamed from: d */
        public final /* synthetic */ ArrayList f4590d;

        /* renamed from: e */
        public final /* synthetic */ ArrayList f4591e;

        public RunnableC1093a(AbstractC1092m mVar, int i, ArrayList arrayList, ArrayList arrayList2, ArrayList arrayList3, ArrayList arrayList4) {
            this.f4587a = i;
            this.f4588b = arrayList;
            this.f4589c = arrayList2;
            this.f4590d = arrayList3;
            this.f4591e = arrayList4;
        }

        @Override // java.lang.Runnable
        public void run() {
            for (int i = 0; i < this.f4587a; i++) {
                C1002u.m35232a((View) this.f4588b.get(i), (String) this.f4589c.get(i));
                C1002u.m35232a((View) this.f4590d.get(i), (String) this.f4591e.get(i));
            }
        }
    }

    /* renamed from: b.m.a.m$b */
    /* loaded from: classes-dex2jar.jar:b/m/a/m$b.class */
    public class RunnableC1094b implements Runnable {

        /* renamed from: a */
        public final /* synthetic */ ArrayList f4592a;

        /* renamed from: b */
        public final /* synthetic */ Map f4593b;

        public RunnableC1094b(AbstractC1092m mVar, ArrayList arrayList, Map map) {
            this.f4592a = arrayList;
            this.f4593b = map;
        }

        @Override // java.lang.Runnable
        public void run() {
            int size = this.f4592a.size();
            for (int i = 0; i < size; i++) {
                View view = (View) this.f4592a.get(i);
                String s = C1002u.m35203s(view);
                if (s != null) {
                    C1002u.m35232a(view, AbstractC1092m.m34690a(this.f4593b, s));
                }
            }
        }
    }

    /* renamed from: b.m.a.m$c */
    /* loaded from: classes-dex2jar.jar:b/m/a/m$c.class */
    public class RunnableC1095c implements Runnable {

        /* renamed from: a */
        public final /* synthetic */ ArrayList f4594a;

        /* renamed from: b */
        public final /* synthetic */ Map f4595b;

        public RunnableC1095c(AbstractC1092m mVar, ArrayList arrayList, Map map) {
            this.f4594a = arrayList;
            this.f4595b = map;
        }

        @Override // java.lang.Runnable
        public void run() {
            int size = this.f4594a.size();
            for (int i = 0; i < size; i++) {
                View view = (View) this.f4594a.get(i);
                C1002u.m35232a(view, (String) this.f4595b.get(C1002u.m35203s(view)));
            }
        }
    }

    /* renamed from: a */
    public static String m34690a(Map<String, String> map, String str) {
        for (Map.Entry<String, String> entry : map.entrySet()) {
            if (str.equals(entry.getValue())) {
                return entry.getKey();
            }
        }
        return null;
    }

    /* renamed from: a */
    public static void m34693a(List<View> list, View view) {
        int size = list.size();
        if (!m34692a(list, view, size)) {
            list.add(view);
            for (int i = size; i < list.size(); i++) {
                View view2 = list.get(i);
                if (view2 instanceof ViewGroup) {
                    ViewGroup viewGroup = (ViewGroup) view2;
                    int childCount = viewGroup.getChildCount();
                    for (int i2 = 0; i2 < childCount; i2++) {
                        View childAt = viewGroup.getChildAt(i2);
                        if (!m34692a(list, childAt, size)) {
                            list.add(childAt);
                        }
                    }
                }
            }
        }
    }

    /* renamed from: a */
    public static boolean m34694a(List list) {
        return list == null || list.isEmpty();
    }

    /* renamed from: a */
    public static boolean m34692a(List<View> list, View view, int i) {
        for (int i2 = 0; i2 < i; i2++) {
            if (list.get(i2) == view) {
                return true;
            }
        }
        return false;
    }

    /* renamed from: a */
    public abstract Object mo34700a(Object obj, Object obj2, Object obj3);

    /* renamed from: a */
    public ArrayList<String> m34696a(ArrayList<View> arrayList) {
        ArrayList<String> arrayList2 = new ArrayList<>();
        int size = arrayList.size();
        for (int i = 0; i < size; i++) {
            View view = arrayList.get(i);
            arrayList2.add(C1002u.m35203s(view));
            C1002u.m35232a(view, (String) null);
        }
        return arrayList2;
    }

    /* renamed from: a */
    public void m34709a(View view, Rect rect) {
        int[] iArr = new int[2];
        view.getLocationOnScreen(iArr);
        rect.set(iArr[0], iArr[1], iArr[0] + view.getWidth(), iArr[1] + view.getHeight());
    }

    /* renamed from: a */
    public void m34708a(View view, ArrayList<View> arrayList, ArrayList<View> arrayList2, ArrayList<String> arrayList3, Map<String, String> map) {
        int size = arrayList2.size();
        ArrayList arrayList4 = new ArrayList();
        for (int i = 0; i < size; i++) {
            View view2 = arrayList.get(i);
            String s = C1002u.m35203s(view2);
            arrayList4.add(s);
            if (s != null) {
                C1002u.m35232a(view2, (String) null);
                String str = map.get(s);
                int i2 = 0;
                while (true) {
                    if (i2 >= size) {
                        break;
                    } else if (str.equals(arrayList3.get(i2))) {
                        C1002u.m35232a(arrayList2.get(i2), s);
                        break;
                    } else {
                        i2++;
                    }
                }
            }
        }
        ViewTreeObserver$OnPreDrawListenerC1000s.m35257a(view, new RunnableC1093a(this, size, arrayList2, arrayList3, arrayList, arrayList4));
    }

    /* renamed from: a */
    public void m34707a(View view, ArrayList<View> arrayList, Map<String, String> map) {
        ViewTreeObserver$OnPreDrawListenerC1000s.m35257a(view, new RunnableC1094b(this, arrayList, map));
    }

    /* renamed from: a */
    public abstract void mo34706a(ViewGroup viewGroup, Object obj);

    /* renamed from: a */
    public void m34705a(ViewGroup viewGroup, ArrayList<View> arrayList, Map<String, String> map) {
        ViewTreeObserver$OnPreDrawListenerC1000s.m35257a(viewGroup, new RunnableC1095c(this, arrayList, map));
    }

    /* renamed from: a */
    public abstract void mo34703a(Object obj, Rect rect);

    /* renamed from: a */
    public abstract void mo34702a(Object obj, View view);

    /* renamed from: a */
    public abstract void mo34701a(Object obj, View view, ArrayList<View> arrayList);

    /* renamed from: a */
    public abstract void mo34699a(Object obj, Object obj2, ArrayList<View> arrayList, Object obj3, ArrayList<View> arrayList2, Object obj4, ArrayList<View> arrayList3);

    /* renamed from: a */
    public abstract void mo34698a(Object obj, ArrayList<View> arrayList);

    /* renamed from: a */
    public abstract void mo34697a(Object obj, ArrayList<View> arrayList, ArrayList<View> arrayList2);

    /* renamed from: a */
    public void m34695a(ArrayList<View> arrayList, View view) {
        if (view.getVisibility() != 0) {
            return;
        }
        if (view instanceof ViewGroup) {
            ViewGroup viewGroup = (ViewGroup) view;
            if (C1015w.m35173a(viewGroup)) {
                arrayList.add(viewGroup);
                return;
            }
            int childCount = viewGroup.getChildCount();
            for (int i = 0; i < childCount; i++) {
                m34695a(arrayList, viewGroup.getChildAt(i));
            }
            return;
        }
        arrayList.add(view);
    }

    /* renamed from: a */
    public void m34691a(Map<String, View> map, View view) {
        if (view.getVisibility() == 0) {
            String s = C1002u.m35203s(view);
            if (s != null) {
                map.put(s, view);
            }
            if (view instanceof ViewGroup) {
                ViewGroup viewGroup = (ViewGroup) view;
                int childCount = viewGroup.getChildCount();
                for (int i = 0; i < childCount; i++) {
                    m34691a(map, viewGroup.getChildAt(i));
                }
            }
        }
    }

    /* renamed from: a */
    public abstract boolean mo34704a(Object obj);

    /* renamed from: b */
    public abstract Object mo34689b(Object obj);

    /* renamed from: b */
    public abstract Object mo34686b(Object obj, Object obj2, Object obj3);

    /* renamed from: b */
    public abstract void mo34688b(Object obj, View view);

    /* renamed from: b */
    public abstract void mo34687b(Object obj, View view, ArrayList<View> arrayList);

    /* renamed from: b */
    public abstract void mo34685b(Object obj, ArrayList<View> arrayList, ArrayList<View> arrayList2);

    /* renamed from: c */
    public abstract Object mo34684c(Object obj);

    /* renamed from: c */
    public abstract void mo34683c(Object obj, View view);
}

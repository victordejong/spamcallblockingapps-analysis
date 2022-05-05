package androidx.fragment.app;

import android.annotation.SuppressLint;
import android.graphics.Rect;
import android.view.View;
import android.view.ViewGroup;
import androidx.annotation.NonNull;
import androidx.annotation.RestrictTo;
import androidx.core.p004os.CancellationSignal;
import androidx.core.view.OneShotPreDrawListener;
import androidx.core.view.ViewCompat;
import androidx.core.view.ViewGroupCompat;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;
@SuppressLint({"UnknownNullness"})
@RestrictTo
/* loaded from: classes-dex2jar.jar:androidx/fragment/app/FragmentTransitionImpl.class */
public abstract class FragmentTransitionImpl {
    /* JADX INFO: Access modifiers changed from: protected */
    /* renamed from: d */
    public static void m18294d(List<View> list, View view) {
        int size = list.size();
        if (!m18292h(list, view, size)) {
            list.add(view);
            for (int i = size; i < list.size(); i++) {
                View view2 = list.get(i);
                if (view2 instanceof ViewGroup) {
                    ViewGroup viewGroup = (ViewGroup) view2;
                    int childCount = viewGroup.getChildCount();
                    for (int i2 = 0; i2 < childCount; i2++) {
                        View childAt = viewGroup.getChildAt(i2);
                        if (!m18292h(list, childAt, size)) {
                            list.add(childAt);
                        }
                    }
                }
            }
        }
    }

    /* renamed from: h */
    private static boolean m18292h(List<View> list, View view, int i) {
        for (int i2 = 0; i2 < i; i2++) {
            if (list.get(i2) == view) {
                return true;
            }
        }
        return false;
    }

    /* renamed from: i */
    static String m18291i(Map<String, String> map, String str) {
        for (Map.Entry<String, String> entry : map.entrySet()) {
            if (str.equals(entry.getValue())) {
                return entry.getKey();
            }
        }
        return null;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    /* renamed from: l */
    public static boolean m18288l(List list) {
        return list == null || list.isEmpty();
    }

    /* renamed from: A */
    public abstract void mo16849A(Object obj, ArrayList<View> arrayList, ArrayList<View> arrayList2);

    /* renamed from: B */
    public abstract Object mo16848B(Object obj);

    /* renamed from: a */
    public abstract void mo16846a(Object obj, View view);

    /* renamed from: b */
    public abstract void mo16845b(Object obj, ArrayList<View> arrayList);

    /* renamed from: c */
    public abstract void mo16844c(ViewGroup viewGroup, Object obj);

    /* renamed from: e */
    public abstract boolean mo16843e(Object obj);

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: f */
    public void m18293f(ArrayList<View> arrayList, View view) {
        if (view.getVisibility() != 0) {
            return;
        }
        if (view instanceof ViewGroup) {
            ViewGroup viewGroup = (ViewGroup) view;
            if (ViewGroupCompat.m19124a(viewGroup)) {
                arrayList.add(viewGroup);
                return;
            }
            int childCount = viewGroup.getChildCount();
            for (int i = 0; i < childCount; i++) {
                m18293f(arrayList, viewGroup.getChildAt(i));
            }
            return;
        }
        arrayList.add(view);
    }

    /* renamed from: g */
    public abstract Object mo16842g(Object obj);

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: j */
    public void m18290j(Map<String, View> map, @NonNull View view) {
        if (view.getVisibility() == 0) {
            String J = ViewCompat.m19227J(view);
            if (J != null) {
                map.put(J, view);
            }
            if (view instanceof ViewGroup) {
                ViewGroup viewGroup = (ViewGroup) view;
                int childCount = viewGroup.getChildCount();
                for (int i = 0; i < childCount; i++) {
                    m18290j(map, viewGroup.getChildAt(i));
                }
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    /* renamed from: k */
    public void m18289k(View view, Rect rect) {
        int[] iArr = new int[2];
        view.getLocationOnScreen(iArr);
        rect.set(iArr[0], iArr[1], iArr[0] + view.getWidth(), iArr[1] + view.getHeight());
    }

    /* renamed from: m */
    public abstract Object mo16841m(Object obj, Object obj2, Object obj3);

    /* renamed from: n */
    public abstract Object mo16840n(Object obj, Object obj2, Object obj3);

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: o */
    public ArrayList<String> m18287o(ArrayList<View> arrayList) {
        ArrayList<String> arrayList2 = new ArrayList<>();
        int size = arrayList.size();
        for (int i = 0; i < size; i++) {
            View view = arrayList.get(i);
            arrayList2.add(ViewCompat.m19227J(view));
            ViewCompat.m19235E0(view, null);
        }
        return arrayList2;
    }

    /* renamed from: p */
    public abstract void mo16839p(Object obj, View view);

    /* renamed from: q */
    public abstract void mo16838q(Object obj, ArrayList<View> arrayList, ArrayList<View> arrayList2);

    /* renamed from: r */
    public abstract void mo16837r(Object obj, View view, ArrayList<View> arrayList);

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: s */
    public void m18286s(ViewGroup viewGroup, final ArrayList<View> arrayList, final Map<String, String> map) {
        OneShotPreDrawListener.m19249a(viewGroup, new Runnable(this) { // from class: androidx.fragment.app.FragmentTransitionImpl.3
            @Override // java.lang.Runnable
            public void run() {
                int size = arrayList.size();
                for (int i = 0; i < size; i++) {
                    View view = (View) arrayList.get(i);
                    ViewCompat.m19235E0(view, (String) map.get(ViewCompat.m19227J(view)));
                }
            }
        });
    }

    /* renamed from: t */
    public abstract void mo16836t(Object obj, Object obj2, ArrayList<View> arrayList, Object obj3, ArrayList<View> arrayList2, Object obj4, ArrayList<View> arrayList3);

    /* renamed from: u */
    public abstract void mo16835u(Object obj, Rect rect);

    /* renamed from: v */
    public abstract void mo16834v(Object obj, View view);

    /* renamed from: w */
    public void mo18285w(@NonNull Fragment fragment, @NonNull Object obj, @NonNull CancellationSignal cancellationSignal, @NonNull Runnable runnable) {
        runnable.run();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: x */
    public void m18284x(View view, final ArrayList<View> arrayList, final Map<String, String> map) {
        OneShotPreDrawListener.m19249a(view, new Runnable(this) { // from class: androidx.fragment.app.FragmentTransitionImpl.2
            @Override // java.lang.Runnable
            public void run() {
                int size = arrayList.size();
                for (int i = 0; i < size; i++) {
                    View view2 = (View) arrayList.get(i);
                    String J = ViewCompat.m19227J(view2);
                    if (J != null) {
                        ViewCompat.m19235E0(view2, FragmentTransitionImpl.m18291i(map, J));
                    }
                }
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: y */
    public void m18283y(View view, final ArrayList<View> arrayList, final ArrayList<View> arrayList2, final ArrayList<String> arrayList3, Map<String, String> map) {
        final int size = arrayList2.size();
        final ArrayList arrayList4 = new ArrayList();
        for (int i = 0; i < size; i++) {
            View view2 = arrayList.get(i);
            String J = ViewCompat.m19227J(view2);
            arrayList4.add(J);
            if (J != null) {
                ViewCompat.m19235E0(view2, null);
                String str = map.get(J);
                int i2 = 0;
                while (true) {
                    if (i2 >= size) {
                        break;
                    } else if (str.equals(arrayList3.get(i2))) {
                        ViewCompat.m19235E0(arrayList2.get(i2), J);
                        break;
                    } else {
                        i2++;
                    }
                }
            }
        }
        OneShotPreDrawListener.m19249a(view, new Runnable(this) { // from class: androidx.fragment.app.FragmentTransitionImpl.1
            @Override // java.lang.Runnable
            public void run() {
                for (int i3 = 0; i3 < size; i3++) {
                    ViewCompat.m19235E0((View) arrayList2.get(i3), (String) arrayList3.get(i3));
                    ViewCompat.m19235E0((View) arrayList.get(i3), (String) arrayList4.get(i3));
                }
            }
        });
    }

    /* renamed from: z */
    public abstract void mo16833z(Object obj, View view, ArrayList<View> arrayList);
}

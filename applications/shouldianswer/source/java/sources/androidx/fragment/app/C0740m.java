package androidx.fragment.app;

import android.graphics.Rect;
import android.os.Build;
import android.util.SparseArray;
import android.view.View;
import android.view.ViewGroup;
import androidx.core.app.AbstractC0457l;
import androidx.core.p023g.C0552u;
import androidx.core.p023g.View$OnAttachStateChangeListenerC0549r;
import androidx.p014c.C0374a;
import java.util.ArrayList;
import java.util.Collection;
import java.util.List;
import java.util.Map;
/* renamed from: androidx.fragment.app.m */
/* loaded from: classes-dex2jar.jar:androidx/fragment/app/m.class */
public class C0740m {

    /* renamed from: a */
    private static final int[] f2443a = {0, 3, 0, 1, 5, 4, 7, 6, 9, 8, 10};

    /* renamed from: b */
    private static final AbstractC0751o f2444b;

    /* renamed from: c */
    private static final AbstractC0751o f2445c;

    /* renamed from: androidx.fragment.app.m$a */
    /* loaded from: classes-dex2jar.jar:androidx/fragment/app/m$a.class */
    public static class C0745a {

        /* renamed from: a */
        public Fragment f2474a;

        /* renamed from: b */
        public boolean f2475b;

        /* renamed from: c */
        public C0708a f2476c;

        /* renamed from: d */
        public Fragment f2477d;

        /* renamed from: e */
        public boolean f2478e;

        /* renamed from: f */
        public C0708a f2479f;

        C0745a() {
        }
    }

    static {
        f2444b = Build.VERSION.SDK_INT >= 21 ? new C0746n() : null;
        f2445c = m5452a();
    }

    /* renamed from: a */
    static View m5449a(C0374a<String, View> c0374a, C0745a c0745a, Object obj, boolean z) {
        C0708a c0708a = c0745a.f2476c;
        if (obj == null || c0374a == null || c0708a.f2431r == null || c0708a.f2431r.isEmpty()) {
            return null;
        }
        return c0374a.get(z ? c0708a.f2431r.get(0) : c0708a.f2432s.get(0));
    }

    /* renamed from: a */
    private static C0374a<String, String> m5451a(int i, ArrayList<C0708a> arrayList, ArrayList<Boolean> arrayList2, int i2, int i3) {
        ArrayList<String> arrayList3;
        ArrayList<String> arrayList4;
        C0374a<String, String> c0374a = new C0374a<>();
        while (true) {
            i3--;
            if (i3 >= i2) {
                C0708a c0708a = arrayList.get(i3);
                if (c0708a.m5685b(i)) {
                    boolean booleanValue = arrayList2.get(i3).booleanValue();
                    if (c0708a.f2431r != null) {
                        int size = c0708a.f2431r.size();
                        if (booleanValue) {
                            arrayList4 = c0708a.f2431r;
                            arrayList3 = c0708a.f2432s;
                        } else {
                            arrayList3 = c0708a.f2431r;
                            arrayList4 = c0708a.f2432s;
                        }
                        for (int i4 = 0; i4 < size; i4++) {
                            String str = arrayList3.get(i4);
                            String str2 = arrayList4.get(i4);
                            String remove = c0374a.remove(str2);
                            if (remove != null) {
                                c0374a.put(str, remove);
                            } else {
                                c0374a.put(str, str2);
                            }
                        }
                    }
                }
            } else {
                return c0374a;
            }
        }
    }

    /* renamed from: a */
    static C0374a<String, View> m5438a(AbstractC0751o abstractC0751o, C0374a<String, String> c0374a, Object obj, C0745a c0745a) {
        AbstractC0457l abstractC0457l;
        ArrayList<String> arrayList;
        String m5448a;
        Fragment fragment = c0745a.f2474a;
        View view = fragment.getView();
        if (c0374a.isEmpty() || obj == null || view == null) {
            c0374a.clear();
            return null;
        }
        C0374a<String, View> c0374a2 = new C0374a<>();
        abstractC0751o.m5413a((Map<String, View>) c0374a2, view);
        C0708a c0708a = c0745a.f2476c;
        if (c0745a.f2475b) {
            abstractC0457l = fragment.getExitTransitionCallback();
            arrayList = c0708a.f2431r;
        } else {
            abstractC0457l = fragment.getEnterTransitionCallback();
            arrayList = c0708a.f2432s;
        }
        if (arrayList != null) {
            c0374a2.m6871a((Collection<?>) arrayList);
            c0374a2.m6871a((Collection<?>) c0374a.values());
        }
        if (abstractC0457l != null) {
            abstractC0457l.m6562a(arrayList, c0374a2);
            for (int size = arrayList.size() - 1; size >= 0; size--) {
                String str = arrayList.get(size);
                View view2 = c0374a2.get(str);
                if (view2 == null) {
                    String m5448a2 = m5448a(c0374a, str);
                    if (m5448a2 != null) {
                        c0374a.remove(m5448a2);
                    }
                } else if (!str.equals(C0552u.m6230q(view2)) && (m5448a = m5448a(c0374a, str)) != null) {
                    c0374a.put(m5448a, C0552u.m6230q(view2));
                }
            }
        } else {
            m5450a(c0374a, c0374a2);
        }
        return c0374a2;
    }

    /* renamed from: a */
    private static C0745a m5441a(C0745a c0745a, SparseArray<C0745a> sparseArray, int i) {
        C0745a c0745a2 = c0745a;
        if (c0745a == null) {
            c0745a2 = new C0745a();
            sparseArray.put(i, c0745a2);
        }
        return c0745a2;
    }

    /* renamed from: a */
    private static AbstractC0751o m5452a() {
        try {
            return (AbstractC0751o) Class.forName("androidx.j.e").getDeclaredConstructor(new Class[0]).newInstance(new Object[0]);
        } catch (Exception e) {
            return null;
        }
    }

    /* renamed from: a */
    private static AbstractC0751o m5447a(Fragment fragment, Fragment fragment2) {
        ArrayList arrayList = new ArrayList();
        if (fragment != null) {
            Object exitTransition = fragment.getExitTransition();
            if (exitTransition != null) {
                arrayList.add(exitTransition);
            }
            Object returnTransition = fragment.getReturnTransition();
            if (returnTransition != null) {
                arrayList.add(returnTransition);
            }
            Object sharedElementReturnTransition = fragment.getSharedElementReturnTransition();
            if (sharedElementReturnTransition != null) {
                arrayList.add(sharedElementReturnTransition);
            }
        }
        if (fragment2 != null) {
            Object enterTransition = fragment2.getEnterTransition();
            if (enterTransition != null) {
                arrayList.add(enterTransition);
            }
            Object reenterTransition = fragment2.getReenterTransition();
            if (reenterTransition != null) {
                arrayList.add(reenterTransition);
            }
            Object sharedElementEnterTransition = fragment2.getSharedElementEnterTransition();
            if (sharedElementEnterTransition != null) {
                arrayList.add(sharedElementEnterTransition);
            }
        }
        if (arrayList.isEmpty()) {
            return null;
        }
        AbstractC0751o abstractC0751o = f2444b;
        if (abstractC0751o != null && m5431a(abstractC0751o, arrayList)) {
            return f2444b;
        }
        AbstractC0751o abstractC0751o2 = f2445c;
        if (abstractC0751o2 != null && m5431a(abstractC0751o2, arrayList)) {
            return f2445c;
        }
        if (f2444b != null || f2445c != null) {
            throw new IllegalArgumentException("Invalid Transition types");
        }
        return null;
    }

    /* renamed from: a */
    private static Object m5440a(final AbstractC0751o abstractC0751o, ViewGroup viewGroup, View view, C0374a<String, String> c0374a, C0745a c0745a, ArrayList<View> arrayList, ArrayList<View> arrayList2, Object obj, Object obj2) {
        Object obj3;
        View view2;
        Rect rect;
        final Fragment fragment = c0745a.f2474a;
        final Fragment fragment2 = c0745a.f2477d;
        if (fragment != null) {
            fragment.requireView().setVisibility(0);
        }
        if (fragment == null || fragment2 == null) {
            return null;
        }
        final boolean z = c0745a.f2475b;
        Object m5437a = c0374a.isEmpty() ? null : m5437a(abstractC0751o, fragment, fragment2, z);
        C0374a<String, View> m5425b = m5425b(abstractC0751o, c0374a, m5437a, c0745a);
        final C0374a<String, View> m5438a = m5438a(abstractC0751o, c0374a, m5437a, c0745a);
        if (c0374a.isEmpty()) {
            if (m5425b != null) {
                m5425b.clear();
            }
            if (m5438a != null) {
                m5438a.clear();
            }
            obj3 = null;
        } else {
            m5429a(arrayList, m5425b, c0374a.keySet());
            m5429a(arrayList2, m5438a, c0374a.values());
            obj3 = m5437a;
        }
        if (obj == null && obj2 == null && obj3 == null) {
            return null;
        }
        m5446a(fragment, fragment2, z, m5425b, true);
        if (obj3 != null) {
            arrayList2.add(view);
            abstractC0751o.mo5278a(obj3, view, arrayList);
            m5433a(abstractC0751o, obj3, obj2, m5425b, c0745a.f2478e, c0745a.f2479f);
            rect = new Rect();
            view2 = m5449a(m5438a, c0745a, obj, z);
            if (view2 != null) {
                abstractC0751o.mo5280a(obj, rect);
            }
        } else {
            view2 = null;
            rect = null;
        }
        final View view3 = view2;
        final Rect rect2 = rect;
        View$OnAttachStateChangeListenerC0549r.m6298a(viewGroup, new Runnable() { // from class: androidx.fragment.app.m.3
            @Override // java.lang.Runnable
            public void run() {
                C0740m.m5446a(fragment, fragment2, z, (C0374a<String, View>) m5438a, false);
                View view4 = view3;
                if (view4 != null) {
                    abstractC0751o.m5422a(view4, rect2);
                }
            }
        });
        return obj3;
    }

    /* renamed from: a */
    private static Object m5437a(AbstractC0751o abstractC0751o, Fragment fragment, Fragment fragment2, boolean z) {
        if (fragment == null || fragment2 == null) {
            return null;
        }
        return abstractC0751o.mo5268c(abstractC0751o.mo5273b(z ? fragment2.getSharedElementReturnTransition() : fragment.getSharedElementEnterTransition()));
    }

    /* renamed from: a */
    private static Object m5436a(AbstractC0751o abstractC0751o, Fragment fragment, boolean z) {
        if (fragment == null) {
            return null;
        }
        return abstractC0751o.mo5273b(z ? fragment.getReenterTransition() : fragment.getEnterTransition());
    }

    /* renamed from: a */
    private static Object m5432a(AbstractC0751o abstractC0751o, Object obj, Object obj2, Object obj3, Fragment fragment, boolean z) {
        return (obj == null || obj2 == null || fragment == null) ? true : z ? fragment.getAllowReturnTransitionOverlap() : fragment.getAllowEnterTransitionOverlap() ? abstractC0751o.mo5277a(obj2, obj, obj3) : abstractC0751o.mo5270b(obj2, obj, obj3);
    }

    /* renamed from: a */
    private static String m5448a(C0374a<String, String> c0374a, String str) {
        int size = c0374a.size();
        for (int i = 0; i < size; i++) {
            if (str.equals(c0374a.m6809c(i))) {
                return c0374a.m6811b(i);
            }
        }
        return null;
    }

    /* renamed from: a */
    static ArrayList<View> m5434a(AbstractC0751o abstractC0751o, Object obj, Fragment fragment, ArrayList<View> arrayList, View view) {
        ArrayList<View> arrayList2;
        if (obj != null) {
            ArrayList<View> arrayList3 = new ArrayList<>();
            View view2 = fragment.getView();
            if (view2 != null) {
                abstractC0751o.m5417a(arrayList3, view2);
            }
            if (arrayList != null) {
                arrayList3.removeAll(arrayList);
            }
            arrayList2 = arrayList3;
            if (!arrayList3.isEmpty()) {
                arrayList3.add(view);
                abstractC0751o.mo5275a(obj, arrayList3);
                arrayList2 = arrayList3;
            }
        } else {
            arrayList2 = null;
        }
        return arrayList2;
    }

    /* renamed from: a */
    private static void m5450a(C0374a<String, String> c0374a, C0374a<String, View> c0374a2) {
        for (int size = c0374a.size() - 1; size >= 0; size--) {
            if (!c0374a2.containsKey(c0374a.m6809c(size))) {
                c0374a.m6808d(size);
            }
        }
    }

    /* renamed from: a */
    static void m5446a(Fragment fragment, Fragment fragment2, boolean z, C0374a<String, View> c0374a, boolean z2) {
        AbstractC0457l enterTransitionCallback = z ? fragment2.getEnterTransitionCallback() : fragment.getEnterTransitionCallback();
        if (enterTransitionCallback != null) {
            ArrayList arrayList = new ArrayList();
            ArrayList arrayList2 = new ArrayList();
            int size = c0374a == null ? 0 : c0374a.size();
            for (int i = 0; i < size; i++) {
                arrayList2.add(c0374a.m6811b(i));
                arrayList.add(c0374a.m6809c(i));
            }
            if (z2) {
                enterTransitionCallback.m6563a(arrayList2, arrayList, null);
            } else {
                enterTransitionCallback.m6561b(arrayList2, arrayList, null);
            }
        }
    }

    /* renamed from: a */
    public static void m5445a(C0708a c0708a, SparseArray<C0745a> sparseArray, boolean z) {
        int size = c0708a.f2417d.size();
        for (int i = 0; i < size; i++) {
            m5444a(c0708a, c0708a.f2417d.get(i), sparseArray, false, z);
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:32:0x0081, code lost:
        if (r0.mAdded != false) goto L70;
     */
    /* JADX WARN: Code restructure failed: missing block: B:56:0x00ee, code lost:
        r14 = true;
     */
    /* JADX WARN: Code restructure failed: missing block: B:69:0x0136, code lost:
        if (r0.mHidden == false) goto L70;
     */
    /* JADX WARN: Code restructure failed: missing block: B:70:0x0139, code lost:
        r15 = true;
     */
    /* JADX WARN: Code restructure failed: missing block: B:97:0x01d8, code lost:
        if (r8.f2477d == null) goto L98;
     */
    /* JADX WARN: Removed duplicated region for block: B:101:0x01fc  */
    /* JADX WARN: Removed duplicated region for block: B:109:? A[ADDED_TO_REGION, RETURN, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:75:0x015f  */
    /* JADX WARN: Removed duplicated region for block: B:78:0x017d  */
    /* JADX WARN: Removed duplicated region for block: B:94:0x01cd  */
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private static void m5444a(androidx.fragment.app.C0708a r7, androidx.fragment.app.AbstractC0738l.C0739a r8, android.util.SparseArray<androidx.fragment.app.C0740m.C0745a> r9, boolean r10, boolean r11) {
        /*
            Method dump skipped, instructions count: 535
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.fragment.app.C0740m.m5444a(androidx.fragment.app.a, androidx.fragment.app.l$a, android.util.SparseArray, boolean, boolean):void");
    }

    /* renamed from: a */
    private static void m5443a(LayoutInflater$Factory2C0720i layoutInflater$Factory2C0720i, int i, C0745a c0745a, View view, C0374a<String, String> c0374a) {
        Fragment fragment;
        Fragment fragment2;
        AbstractC0751o m5447a;
        ViewGroup viewGroup = layoutInflater$Factory2C0720i.f2360o.mo5633a() ? (ViewGroup) layoutInflater$Factory2C0720i.f2360o.mo5632a(i) : null;
        if (viewGroup == null || (m5447a = m5447a((fragment2 = c0745a.f2477d), (fragment = c0745a.f2474a))) == null) {
            return;
        }
        boolean z = c0745a.f2475b;
        boolean z2 = c0745a.f2478e;
        ArrayList<View> arrayList = new ArrayList<>();
        ArrayList<View> arrayList2 = new ArrayList<>();
        Object m5436a = m5436a(m5447a, fragment, z);
        Object m5424b = m5424b(m5447a, fragment2, z2);
        Object m5440a = m5440a(m5447a, viewGroup, view, c0374a, c0745a, arrayList2, arrayList, m5436a, m5424b);
        if (m5436a == null && m5440a == null && m5424b == null) {
            return;
        }
        ArrayList<View> m5434a = m5434a(m5447a, m5424b, fragment2, arrayList2, view);
        ArrayList<View> m5434a2 = m5434a(m5447a, m5436a, fragment, arrayList, view);
        m5430a(m5434a2, 4);
        Object m5432a = m5432a(m5447a, m5436a, m5424b, m5440a, fragment, z);
        if (m5432a == null) {
            return;
        }
        m5435a(m5447a, m5424b, fragment2, m5434a);
        ArrayList<String> m5418a = m5447a.m5418a(arrayList);
        m5447a.mo5276a(m5432a, m5436a, m5434a2, m5424b, m5434a, m5440a, arrayList);
        m5447a.mo5283a(viewGroup, m5432a);
        m5447a.m5421a(viewGroup, arrayList2, arrayList, m5418a, c0374a);
        m5430a(m5434a2, 0);
        m5447a.mo5274a(m5440a, arrayList2, arrayList);
    }

    /* renamed from: a */
    public static void m5442a(LayoutInflater$Factory2C0720i layoutInflater$Factory2C0720i, ArrayList<C0708a> arrayList, ArrayList<Boolean> arrayList2, int i, int i2, boolean z) {
        if (layoutInflater$Factory2C0720i.f2358m < 1) {
            return;
        }
        SparseArray sparseArray = new SparseArray();
        for (int i3 = i; i3 < i2; i3++) {
            C0708a c0708a = arrayList.get(i3);
            if (arrayList2.get(i3).booleanValue()) {
                m5428b(c0708a, sparseArray, z);
            } else {
                m5445a(c0708a, sparseArray, z);
            }
        }
        if (sparseArray.size() == 0) {
            return;
        }
        View view = new View(layoutInflater$Factory2C0720i.f2359n.m5618j());
        int size = sparseArray.size();
        for (int i4 = 0; i4 < size; i4++) {
            int keyAt = sparseArray.keyAt(i4);
            C0374a<String, String> m5451a = m5451a(keyAt, arrayList, arrayList2, i, i2);
            C0745a c0745a = (C0745a) sparseArray.valueAt(i4);
            if (z) {
                m5443a(layoutInflater$Factory2C0720i, keyAt, c0745a, view, m5451a);
            } else {
                m5427b(layoutInflater$Factory2C0720i, keyAt, c0745a, view, m5451a);
            }
        }
    }

    /* renamed from: a */
    private static void m5439a(final AbstractC0751o abstractC0751o, ViewGroup viewGroup, final Fragment fragment, final View view, final ArrayList<View> arrayList, final Object obj, final ArrayList<View> arrayList2, final Object obj2, final ArrayList<View> arrayList3) {
        View$OnAttachStateChangeListenerC0549r.m6298a(viewGroup, new Runnable() { // from class: androidx.fragment.app.m.2
            @Override // java.lang.Runnable
            public void run() {
                Object obj3 = obj;
                if (obj3 != null) {
                    abstractC0751o.mo5267c(obj3, view);
                    arrayList2.addAll(C0740m.m5434a(abstractC0751o, obj, fragment, arrayList, view));
                }
                if (arrayList3 != null) {
                    if (obj2 != null) {
                        ArrayList<View> arrayList4 = new ArrayList<>();
                        arrayList4.add(view);
                        abstractC0751o.mo5269b(obj2, arrayList3, arrayList4);
                    }
                    arrayList3.clear();
                    arrayList3.add(view);
                }
            }
        });
    }

    /* renamed from: a */
    private static void m5435a(AbstractC0751o abstractC0751o, Object obj, Fragment fragment, final ArrayList<View> arrayList) {
        if (fragment == null || obj == null || !fragment.mAdded || !fragment.mHidden || !fragment.mHiddenChanged) {
            return;
        }
        fragment.setHideReplaced(true);
        abstractC0751o.mo5271b(obj, fragment.getView(), arrayList);
        View$OnAttachStateChangeListenerC0549r.m6298a(fragment.mContainer, new Runnable() { // from class: androidx.fragment.app.m.1
            @Override // java.lang.Runnable
            public void run() {
                C0740m.m5430a(arrayList, 4);
            }
        });
    }

    /* renamed from: a */
    private static void m5433a(AbstractC0751o abstractC0751o, Object obj, Object obj2, C0374a<String, View> c0374a, boolean z, C0708a c0708a) {
        if (c0708a.f2431r == null || c0708a.f2431r.isEmpty()) {
            return;
        }
        View view = c0374a.get(z ? c0708a.f2432s.get(0) : c0708a.f2431r.get(0));
        abstractC0751o.mo5279a(obj, view);
        if (obj2 == null) {
            return;
        }
        abstractC0751o.mo5279a(obj2, view);
    }

    /* renamed from: a */
    static void m5430a(ArrayList<View> arrayList, int i) {
        if (arrayList == null) {
            return;
        }
        for (int size = arrayList.size() - 1; size >= 0; size--) {
            arrayList.get(size).setVisibility(i);
        }
    }

    /* renamed from: a */
    private static void m5429a(ArrayList<View> arrayList, C0374a<String, View> c0374a, Collection<String> collection) {
        for (int size = c0374a.size() - 1; size >= 0; size--) {
            View c = c0374a.m6809c(size);
            if (collection.contains(C0552u.m6230q(c))) {
                arrayList.add(c);
            }
        }
    }

    /* renamed from: a */
    private static boolean m5431a(AbstractC0751o abstractC0751o, List<Object> list) {
        int size = list.size();
        for (int i = 0; i < size; i++) {
            if (!abstractC0751o.mo5281a(list.get(i))) {
                return false;
            }
        }
        return true;
    }

    /* renamed from: b */
    private static C0374a<String, View> m5425b(AbstractC0751o abstractC0751o, C0374a<String, String> c0374a, Object obj, C0745a c0745a) {
        AbstractC0457l abstractC0457l;
        ArrayList<String> arrayList;
        if (c0374a.isEmpty() || obj == null) {
            c0374a.clear();
            return null;
        }
        Fragment fragment = c0745a.f2477d;
        C0374a<String, View> c0374a2 = new C0374a<>();
        abstractC0751o.m5413a((Map<String, View>) c0374a2, fragment.requireView());
        C0708a c0708a = c0745a.f2479f;
        if (c0745a.f2478e) {
            abstractC0457l = fragment.getEnterTransitionCallback();
            arrayList = c0708a.f2432s;
        } else {
            abstractC0457l = fragment.getExitTransitionCallback();
            arrayList = c0708a.f2431r;
        }
        c0374a2.m6871a((Collection<?>) arrayList);
        if (abstractC0457l != null) {
            abstractC0457l.m6562a(arrayList, c0374a2);
            for (int size = arrayList.size() - 1; size >= 0; size--) {
                String str = arrayList.get(size);
                View view = c0374a2.get(str);
                if (view == null) {
                    c0374a.remove(str);
                } else if (!str.equals(C0552u.m6230q(view))) {
                    c0374a.put(C0552u.m6230q(view), c0374a.remove(str));
                }
            }
        } else {
            c0374a.m6871a((Collection<?>) c0374a2.keySet());
        }
        return c0374a2;
    }

    /* renamed from: b */
    private static Object m5426b(final AbstractC0751o abstractC0751o, ViewGroup viewGroup, final View view, final C0374a<String, String> c0374a, final C0745a c0745a, final ArrayList<View> arrayList, final ArrayList<View> arrayList2, final Object obj, Object obj2) {
        Rect rect;
        final Fragment fragment = c0745a.f2474a;
        final Fragment fragment2 = c0745a.f2477d;
        if (fragment == null || fragment2 == null) {
            return null;
        }
        final boolean z = c0745a.f2475b;
        Object m5437a = c0374a.isEmpty() ? null : m5437a(abstractC0751o, fragment, fragment2, z);
        C0374a<String, View> m5425b = m5425b(abstractC0751o, c0374a, m5437a, c0745a);
        if (c0374a.isEmpty()) {
            m5437a = null;
        } else {
            arrayList.addAll(m5425b.values());
        }
        if (obj == null && obj2 == null && m5437a == null) {
            return null;
        }
        m5446a(fragment, fragment2, z, m5425b, true);
        if (m5437a != null) {
            Rect rect2 = new Rect();
            abstractC0751o.mo5278a(m5437a, view, arrayList);
            m5433a(abstractC0751o, m5437a, obj2, m5425b, c0745a.f2478e, c0745a.f2479f);
            rect = rect2;
            if (obj != null) {
                abstractC0751o.mo5280a(obj, rect2);
                rect = rect2;
            }
        } else {
            rect = null;
        }
        final Object obj3 = m5437a;
        final Rect rect3 = rect;
        View$OnAttachStateChangeListenerC0549r.m6298a(viewGroup, new Runnable() { // from class: androidx.fragment.app.m.4
            @Override // java.lang.Runnable
            public void run() {
                C0374a<String, View> m5438a = C0740m.m5438a(abstractC0751o, c0374a, obj3, c0745a);
                if (m5438a != null) {
                    arrayList2.addAll(m5438a.values());
                    arrayList2.add(view);
                }
                C0740m.m5446a(fragment, fragment2, z, m5438a, false);
                Object obj4 = obj3;
                if (obj4 != null) {
                    abstractC0751o.mo5274a(obj4, arrayList, arrayList2);
                    View m5449a = C0740m.m5449a(m5438a, c0745a, obj, z);
                    if (m5449a == null) {
                        return;
                    }
                    abstractC0751o.m5422a(m5449a, rect3);
                }
            }
        });
        return m5437a;
    }

    /* renamed from: b */
    private static Object m5424b(AbstractC0751o abstractC0751o, Fragment fragment, boolean z) {
        if (fragment == null) {
            return null;
        }
        return abstractC0751o.mo5273b(z ? fragment.getReturnTransition() : fragment.getExitTransition());
    }

    /* renamed from: b */
    public static void m5428b(C0708a c0708a, SparseArray<C0745a> sparseArray, boolean z) {
        if (!c0708a.f2314a.f2360o.mo5633a()) {
            return;
        }
        for (int size = c0708a.f2417d.size() - 1; size >= 0; size--) {
            m5444a(c0708a, c0708a.f2417d.get(size), sparseArray, true, z);
        }
    }

    /* renamed from: b */
    private static void m5427b(LayoutInflater$Factory2C0720i layoutInflater$Factory2C0720i, int i, C0745a c0745a, View view, C0374a<String, String> c0374a) {
        Fragment fragment;
        Fragment fragment2;
        AbstractC0751o m5447a;
        ViewGroup viewGroup = layoutInflater$Factory2C0720i.f2360o.mo5633a() ? (ViewGroup) layoutInflater$Factory2C0720i.f2360o.mo5632a(i) : null;
        if (viewGroup == null || (m5447a = m5447a((fragment2 = c0745a.f2477d), (fragment = c0745a.f2474a))) == null) {
            return;
        }
        boolean z = c0745a.f2475b;
        boolean z2 = c0745a.f2478e;
        Object m5436a = m5436a(m5447a, fragment, z);
        Object m5424b = m5424b(m5447a, fragment2, z2);
        ArrayList arrayList = new ArrayList();
        ArrayList<View> arrayList2 = new ArrayList<>();
        Object m5426b = m5426b(m5447a, viewGroup, view, c0374a, c0745a, arrayList, arrayList2, m5436a, m5424b);
        if (m5436a == null && m5426b == null && m5424b == null) {
            return;
        }
        ArrayList<View> m5434a = m5434a(m5447a, m5424b, fragment2, arrayList, view);
        if (m5434a == null || m5434a.isEmpty()) {
            m5424b = null;
        }
        m5447a.mo5272b(m5436a, view);
        Object m5432a = m5432a(m5447a, m5436a, m5424b, m5426b, fragment, c0745a.f2475b);
        if (m5432a == null) {
            return;
        }
        ArrayList<View> arrayList3 = new ArrayList<>();
        m5447a.mo5276a(m5432a, m5436a, arrayList3, m5424b, m5434a, m5426b, arrayList2);
        m5439a(m5447a, viewGroup, fragment, view, arrayList2, m5436a, arrayList3, m5424b, m5434a);
        m5447a.m5420a((View) viewGroup, arrayList2, (Map<String, String>) c0374a);
        m5447a.mo5283a(viewGroup, m5432a);
        m5447a.m5419a(viewGroup, arrayList2, (Map<String, String>) c0374a);
    }
}

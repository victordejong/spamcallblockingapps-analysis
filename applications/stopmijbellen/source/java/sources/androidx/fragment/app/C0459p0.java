package androidx.fragment.app;

import android.view.View;
import java.util.ArrayList;
import java.util.Collection;
import java.util.List;
import java.util.WeakHashMap;
import p153l1.C3444d;
import p163m0.C3589v;
import p163m0.C3611y;
import p226s.AbstractC4257f;
import p226s.C4251a;
/* renamed from: androidx.fragment.app.p0 */
/* loaded from: classes-dex2jar.jar:androidx/fragment/app/p0.class */
public class C0459p0 {

    /* renamed from: a */
    public static final int[] f1897a = {0, 3, 0, 1, 5, 4, 7, 6, 9, 8, 10};

    /* renamed from: b */
    public static final AbstractC0471r0 f1898b = new C0464q0();

    /* renamed from: c */
    public static final AbstractC0471r0 f1899c;

    /* renamed from: androidx.fragment.app.p0$a */
    /* loaded from: classes-dex2jar.jar:androidx/fragment/app/p0$a.class */
    public interface AbstractC0460a {
    }

    /* renamed from: androidx.fragment.app.p0$b */
    /* loaded from: classes-dex2jar.jar:androidx/fragment/app/p0$b.class */
    public static class C0461b {

        /* renamed from: a */
        public Fragment f1900a;

        /* renamed from: b */
        public boolean f1901b;

        /* renamed from: c */
        public C0396a f1902c;

        /* renamed from: d */
        public Fragment f1903d;

        /* renamed from: e */
        public boolean f1904e;

        /* renamed from: f */
        public C0396a f1905f;
    }

    static {
        AbstractC0471r0 abstractC0471r0;
        try {
            abstractC0471r0 = (AbstractC0471r0) C3444d.class.getDeclaredConstructor(new Class[0]).newInstance(new Object[0]);
        } catch (Exception e) {
            abstractC0471r0 = null;
        }
        f1899c = abstractC0471r0;
    }

    /* renamed from: a */
    public static void m8089a(ArrayList<View> arrayList, C4251a<String, View> c4251a, Collection<String> collection) {
        for (int i = c4251a.f13365c - 1; i >= 0; i--) {
            View m1192k = c4251a.m1192k(i);
            WeakHashMap<View, C3611y> weakHashMap = C3589v.f11780a;
            if (collection.contains(C3589v.C3598i.m2040k(m1192k))) {
                arrayList.add(m1192k);
            }
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:32:0x0082, code lost:
        if (r0.mAdded != false) goto L70;
     */
    /* JADX WARN: Code restructure failed: missing block: B:60:0x0104, code lost:
        r11 = true;
     */
    /* JADX WARN: Code restructure failed: missing block: B:69:0x013b, code lost:
        if (r0.mHidden == false) goto L70;
     */
    /* JADX WARN: Code restructure failed: missing block: B:70:0x013e, code lost:
        r14 = true;
        r11 = true;
     */
    /* JADX WARN: Code restructure failed: missing block: B:96:0x01ea, code lost:
        if (r5.f1903d == null) goto L97;
     */
    /* JADX WARN: Removed duplicated region for block: B:103:0x021d  */
    /* JADX WARN: Removed duplicated region for block: B:111:? A[ADDED_TO_REGION, RETURN, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:75:0x0168  */
    /* JADX WARN: Removed duplicated region for block: B:81:0x0194  */
    /* JADX WARN: Removed duplicated region for block: B:90:0x01b2  */
    /* JADX WARN: Removed duplicated region for block: B:93:0x01df  */
    /* renamed from: b */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static void m8088b(androidx.fragment.app.C0396a r4, androidx.fragment.app.AbstractC0438i0.C0439a r5, android.util.SparseArray<androidx.fragment.app.C0459p0.C0461b> r6, boolean r7, boolean r8) {
        /*
            Method dump skipped, instructions count: 568
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.fragment.app.C0459p0.m8088b(androidx.fragment.app.a, androidx.fragment.app.i0$a, android.util.SparseArray, boolean, boolean):void");
    }

    /* renamed from: c */
    public static void m8087c(Fragment fragment, Fragment fragment2, boolean z, C4251a<String, View> c4251a, boolean z2) {
        if (z) {
            fragment2.getEnterTransitionCallback();
        } else {
            fragment.getEnterTransitionCallback();
        }
    }

    /* renamed from: d */
    public static boolean m8086d(AbstractC0471r0 abstractC0471r0, List<Object> list) {
        int size = list.size();
        for (int i = 0; i < size; i++) {
            if (!abstractC0471r0.mo2296e(list.get(i))) {
                return false;
            }
        }
        return true;
    }

    /* renamed from: e */
    public static C4251a<String, View> m8085e(AbstractC0471r0 abstractC0471r0, C4251a<String, String> c4251a, Object obj, C0461b c0461b) {
        ArrayList<String> arrayList;
        Fragment fragment = c0461b.f1900a;
        View view = fragment.getView();
        if (c4251a.isEmpty() || obj == null || view == null) {
            c4251a.clear();
            return null;
        }
        C4251a<String, View> c4251a2 = new C4251a<>();
        abstractC0471r0.m8068i(c4251a2, view);
        C0396a c0396a = c0461b.f1902c;
        if (c0461b.f1901b) {
            fragment.getExitTransitionCallback();
            arrayList = c0396a.f1835n;
        } else {
            fragment.getEnterTransitionCallback();
            arrayList = c0396a.f1836o;
        }
        if (arrayList != null) {
            AbstractC4257f.m1205k(c4251a2, arrayList);
            AbstractC4257f.m1205k(c4251a2, c4251a.values());
        }
        m8076n(c4251a, c4251a2);
        return c4251a2;
    }

    /* renamed from: f */
    public static C4251a<String, View> m8084f(AbstractC0471r0 abstractC0471r0, C4251a<String, String> c4251a, Object obj, C0461b c0461b) {
        ArrayList<String> arrayList;
        if (c4251a.isEmpty() || obj == null) {
            c4251a.clear();
            return null;
        }
        Fragment fragment = c0461b.f1903d;
        C4251a<String, View> c4251a2 = new C4251a<>();
        abstractC0471r0.m8068i(c4251a2, fragment.requireView());
        C0396a c0396a = c0461b.f1905f;
        if (c0461b.f1904e) {
            fragment.getEnterTransitionCallback();
            arrayList = c0396a.f1836o;
        } else {
            fragment.getExitTransitionCallback();
            arrayList = c0396a.f1835n;
        }
        if (arrayList != null) {
            AbstractC4257f.m1205k(c4251a2, arrayList);
        }
        AbstractC4257f.m1205k(c4251a, c4251a2.keySet());
        return c4251a2;
    }

    /* renamed from: g */
    public static AbstractC0471r0 m8083g(Fragment fragment, Fragment fragment2) {
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
        AbstractC0471r0 abstractC0471r0 = f1898b;
        if (m8086d(abstractC0471r0, arrayList)) {
            return abstractC0471r0;
        }
        AbstractC0471r0 abstractC0471r02 = f1899c;
        if (abstractC0471r02 != null && m8086d(abstractC0471r02, arrayList)) {
            return abstractC0471r02;
        }
        throw new IllegalArgumentException("Invalid Transition types");
    }

    /* renamed from: h */
    public static ArrayList<View> m8082h(AbstractC0471r0 abstractC0471r0, Object obj, Fragment fragment, ArrayList<View> arrayList, View view) {
        ArrayList<View> arrayList2;
        if (obj != null) {
            ArrayList<View> arrayList3 = new ArrayList<>();
            View view2 = fragment.getView();
            if (view2 != null) {
                abstractC0471r0.m8070f(arrayList3, view2);
            }
            if (arrayList != null) {
                arrayList3.removeAll(arrayList);
            }
            arrayList2 = arrayList3;
            if (!arrayList3.isEmpty()) {
                arrayList3.add(view);
                abstractC0471r0.mo2298b(obj, arrayList3);
                arrayList2 = arrayList3;
            }
        } else {
            arrayList2 = null;
        }
        return arrayList2;
    }

    /* renamed from: i */
    public static Object m8081i(AbstractC0471r0 abstractC0471r0, Fragment fragment, boolean z) {
        if (fragment == null) {
            return null;
        }
        return abstractC0471r0.mo2295g(z ? fragment.getReenterTransition() : fragment.getEnterTransition());
    }

    /* renamed from: j */
    public static Object m8080j(AbstractC0471r0 abstractC0471r0, Fragment fragment, boolean z) {
        if (fragment == null) {
            return null;
        }
        return abstractC0471r0.mo2295g(z ? fragment.getReturnTransition() : fragment.getExitTransition());
    }

    /* renamed from: k */
    public static View m8079k(C4251a<String, View> c4251a, C0461b c0461b, Object obj, boolean z) {
        ArrayList<String> arrayList;
        C0396a c0396a = c0461b.f1902c;
        if (obj == null || c4251a == null || (arrayList = c0396a.f1835n) == null || arrayList.isEmpty()) {
            return null;
        }
        return c4251a.get(z ? c0396a.f1835n.get(0) : c0396a.f1836o.get(0));
    }

    /* renamed from: l */
    public static Object m8078l(AbstractC0471r0 abstractC0471r0, Fragment fragment, Fragment fragment2, boolean z) {
        return abstractC0471r0.mo2284y(abstractC0471r0.mo2295g(z ? fragment2.getSharedElementReturnTransition() : fragment.getSharedElementEnterTransition()));
    }

    /* renamed from: m */
    public static Object m8077m(AbstractC0471r0 abstractC0471r0, Object obj, Object obj2, Object obj3, Fragment fragment, boolean z) {
        return (obj == null || obj2 == null || fragment == null) ? true : z ? fragment.getAllowReturnTransitionOverlap() : fragment.getAllowEnterTransitionOverlap() ? abstractC0471r0.mo2293m(obj2, obj, obj3) : abstractC0471r0.mo2294l(obj2, obj, obj3);
    }

    /* renamed from: n */
    public static void m8076n(C4251a<String, String> c4251a, C4251a<String, View> c4251a2) {
        int i = c4251a.f13365c;
        while (true) {
            int i2 = i - 1;
            if (i2 >= 0) {
                i = i2;
                if (!c4251a2.containsKey(c4251a.m1192k(i2))) {
                    c4251a.m1194i(i2);
                    i = i2;
                }
            } else {
                return;
            }
        }
    }

    /* renamed from: o */
    public static void m8075o(AbstractC0471r0 abstractC0471r0, Object obj, Object obj2, C4251a<String, View> c4251a, boolean z, C0396a c0396a) {
        ArrayList<String> arrayList = c0396a.f1835n;
        if (arrayList == null || arrayList.isEmpty()) {
            return;
        }
        View view = c4251a.get(z ? c0396a.f1836o.get(0) : c0396a.f1835n.get(0));
        abstractC0471r0.mo2287t(obj, view);
        if (obj2 == null) {
            return;
        }
        abstractC0471r0.mo2287t(obj2, view);
    }

    /* renamed from: p */
    public static void m8074p(ArrayList<View> arrayList, int i) {
        if (arrayList == null) {
            return;
        }
        for (int size = arrayList.size() - 1; size >= 0; size--) {
            arrayList.get(size).setVisibility(i);
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:102:0x03dd  */
    /* JADX WARN: Removed duplicated region for block: B:166:0x0691  */
    /* JADX WARN: Removed duplicated region for block: B:176:0x0703 A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:182:0x0703 A[SYNTHETIC] */
    /* renamed from: q */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static void m8073q(android.content.Context r16, androidx.fragment.app.AbstractC0477t r17, java.util.ArrayList<androidx.fragment.app.C0396a> r18, java.util.ArrayList<java.lang.Boolean> r19, int r20, int r21, boolean r22, androidx.fragment.app.C0459p0.AbstractC0460a r23) {
        /*
            Method dump skipped, instructions count: 1802
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.fragment.app.C0459p0.m8073q(android.content.Context, androidx.fragment.app.t, java.util.ArrayList, java.util.ArrayList, int, int, boolean, androidx.fragment.app.p0$a):void");
    }
}

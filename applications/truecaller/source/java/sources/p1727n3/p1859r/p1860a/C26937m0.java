package p1727n3.p1859r.p1860a;

import android.view.View;
import androidx.fragment.app.Fragment;
import java.util.ArrayList;
import java.util.Collection;
import java.util.List;
import java.util.concurrent.atomic.AtomicInteger;
import p1727n3.p1788g.AbstractC26181g;
import p1727n3.p1788g.C26174a;
import p1727n3.p1807k.p1808a.AbstractC26415b0;
import p1727n3.p1807k.p1821i.C26614s;
/* renamed from: n3.r.a.m0 */
/* loaded from: classes-dex2jar.jar:n3/r/a/m0.class */
public class C26937m0 {

    /* renamed from: a */
    public static final int[] f75393a = {0, 3, 0, 1, 5, 4, 7, 6, 9, 8, 10};

    /* renamed from: b */
    public static final AbstractC26949o0 f75394b = new C26942n0();

    /* renamed from: c */
    public static final AbstractC26949o0 f75395c;

    /* renamed from: n3.r.a.m0$a */
    /* loaded from: classes-dex2jar.jar:n3/r/a/m0$a.class */
    public interface AbstractC26938a {
    }

    /* renamed from: n3.r.a.m0$b */
    /* loaded from: classes-dex2jar.jar:n3/r/a/m0$b.class */
    public static class C26939b {

        /* renamed from: a */
        public Fragment f75396a;

        /* renamed from: b */
        public boolean f75397b;

        /* renamed from: c */
        public C26907a f75398c;

        /* renamed from: d */
        public Fragment f75399d;

        /* renamed from: e */
        public boolean f75400e;

        /* renamed from: f */
        public C26907a f75401f;
    }

    static {
        AbstractC26949o0 abstractC26949o0;
        try {
            abstractC26949o0 = (AbstractC26949o0) Class.forName("n3.g0.g").getDeclaredConstructor(new Class[0]).newInstance(new Object[0]);
        } catch (Exception e) {
            abstractC26949o0 = null;
        }
        f75395c = abstractC26949o0;
    }

    /* renamed from: a */
    public static void m1115a(ArrayList<View> arrayList, C26174a<String, View> c26174a, Collection<String> collection) {
        for (int i = c26174a.f73025c - 1; i >= 0; i--) {
            View m2572p = c26174a.m2572p(i);
            AtomicInteger atomicInteger = C26614s.f74505a;
            if (collection.contains(m2572p.getTransitionName())) {
                arrayList.add(m2572p);
            }
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:32:0x0084, code lost:
        if (r0.mAdded != false) goto L70;
     */
    /* JADX WARN: Code restructure failed: missing block: B:60:0x0102, code lost:
        r14 = true;
     */
    /* JADX WARN: Code restructure failed: missing block: B:69:0x0130, code lost:
        if (r0.mHidden == false) goto L70;
     */
    /* JADX WARN: Code restructure failed: missing block: B:70:0x0133, code lost:
        r12 = true;
     */
    /* JADX WARN: Code restructure failed: missing block: B:96:0x01dc, code lost:
        if (r5.f75399d == null) goto L97;
     */
    /* JADX WARN: Removed duplicated region for block: B:103:0x020f  */
    /* JADX WARN: Removed duplicated region for block: B:111:? A[ADDED_TO_REGION, RETURN, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:75:0x015a  */
    /* JADX WARN: Removed duplicated region for block: B:81:0x0186  */
    /* JADX WARN: Removed duplicated region for block: B:90:0x01a4  */
    /* JADX WARN: Removed duplicated region for block: B:93:0x01d1  */
    /* renamed from: b */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static void m1114b(p1727n3.p1859r.p1860a.C26907a r4, p1727n3.p1859r.p1860a.AbstractC26924f0.C26925a r5, android.util.SparseArray<p1727n3.p1859r.p1860a.C26937m0.C26939b> r6, boolean r7, boolean r8) {
        /*
            Method dump skipped, instructions count: 554
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: p1727n3.p1859r.p1860a.C26937m0.m1114b(n3.r.a.a, n3.r.a.f0$a, android.util.SparseArray, boolean, boolean):void");
    }

    /* renamed from: c */
    public static void m1113c(Fragment fragment, Fragment fragment2, boolean z, C26174a<String, View> c26174a, boolean z2) {
        if ((z ? fragment2.getEnterTransitionCallback() : fragment.getEnterTransitionCallback()) != null) {
            ArrayList arrayList = new ArrayList();
            ArrayList arrayList2 = new ArrayList();
            int i = c26174a == null ? 0 : c26174a.f73025c;
            for (int i2 = 0; i2 < i; i2++) {
                arrayList2.add(c26174a.m2576l(i2));
                arrayList.add(c26174a.m2572p(i2));
            }
            if (!z2) {
                throw null;
            }
            throw null;
        }
    }

    /* renamed from: d */
    public static boolean m1112d(AbstractC26949o0 abstractC26949o0, List<Object> list) {
        int size = list.size();
        for (int i = 0; i < size; i++) {
            if (!abstractC26949o0.mo1093e(list.get(i))) {
                return false;
            }
        }
        return true;
    }

    /* renamed from: e */
    public static C26174a<String, View> m1111e(AbstractC26949o0 abstractC26949o0, C26174a<String, String> c26174a, Object obj, C26939b c26939b) {
        AbstractC26415b0 abstractC26415b0;
        ArrayList<String> arrayList;
        Fragment fragment = c26939b.f75396a;
        View view = fragment.getView();
        if (c26174a.isEmpty() || obj == null || view == null) {
            c26174a.clear();
            return null;
        }
        C26174a<String, View> c26174a2 = new C26174a<>();
        abstractC26949o0.m1089i(c26174a2, view);
        C26907a c26907a = c26939b.f75398c;
        if (c26939b.f75397b) {
            abstractC26415b0 = fragment.getExitTransitionCallback();
            arrayList = c26907a.f75330n;
        } else {
            abstractC26415b0 = fragment.getEnterTransitionCallback();
            arrayList = c26907a.f75331o;
        }
        if (arrayList != null) {
            AbstractC26181g.m2586k(c26174a2, arrayList);
            AbstractC26181g.m2586k(c26174a2, c26174a.values());
        }
        if (abstractC26415b0 != null) {
            throw null;
        }
        m1102n(c26174a, c26174a2);
        return c26174a2;
    }

    /* renamed from: f */
    public static C26174a<String, View> m1110f(AbstractC26949o0 abstractC26949o0, C26174a<String, String> c26174a, Object obj, C26939b c26939b) {
        ArrayList<String> arrayList;
        AbstractC26415b0 abstractC26415b0;
        if (c26174a.isEmpty() || obj == null) {
            c26174a.clear();
            return null;
        }
        Fragment fragment = c26939b.f75399d;
        C26174a<String, View> c26174a2 = new C26174a<>();
        abstractC26949o0.m1089i(c26174a2, fragment.requireView());
        C26907a c26907a = c26939b.f75401f;
        if (c26939b.f75400e) {
            abstractC26415b0 = fragment.getEnterTransitionCallback();
            arrayList = c26907a.f75331o;
        } else {
            abstractC26415b0 = fragment.getExitTransitionCallback();
            arrayList = c26907a.f75330n;
        }
        if (arrayList != null) {
            AbstractC26181g.m2586k(c26174a2, arrayList);
        }
        if (abstractC26415b0 != null) {
            throw null;
        }
        AbstractC26181g.m2586k(c26174a, c26174a2.keySet());
        return c26174a2;
    }

    /* renamed from: g */
    public static AbstractC26949o0 m1109g(Fragment fragment, Fragment fragment2) {
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
        AbstractC26949o0 abstractC26949o0 = f75394b;
        if (m1112d(abstractC26949o0, arrayList)) {
            return abstractC26949o0;
        }
        AbstractC26949o0 abstractC26949o02 = f75395c;
        if (abstractC26949o02 != null && m1112d(abstractC26949o02, arrayList)) {
            return abstractC26949o02;
        }
        throw new IllegalArgumentException("Invalid Transition types");
    }

    /* renamed from: h */
    public static ArrayList<View> m1108h(AbstractC26949o0 abstractC26949o0, Object obj, Fragment fragment, ArrayList<View> arrayList, View view) {
        ArrayList<View> arrayList2;
        if (obj != null) {
            ArrayList<View> arrayList3 = new ArrayList<>();
            View view2 = fragment.getView();
            if (view2 != null) {
                abstractC26949o0.m1092f(arrayList3, view2);
            }
            if (arrayList != null) {
                arrayList3.removeAll(arrayList);
            }
            arrayList2 = arrayList3;
            if (!arrayList3.isEmpty()) {
                arrayList3.add(view);
                abstractC26949o0.mo1096b(obj, arrayList3);
                arrayList2 = arrayList3;
            }
        } else {
            arrayList2 = null;
        }
        return arrayList2;
    }

    /* renamed from: i */
    public static Object m1107i(AbstractC26949o0 abstractC26949o0, Fragment fragment, boolean z) {
        if (fragment == null) {
            return null;
        }
        return abstractC26949o0.mo1091g(z ? fragment.getReenterTransition() : fragment.getEnterTransition());
    }

    /* renamed from: j */
    public static Object m1106j(AbstractC26949o0 abstractC26949o0, Fragment fragment, boolean z) {
        if (fragment == null) {
            return null;
        }
        return abstractC26949o0.mo1091g(z ? fragment.getReturnTransition() : fragment.getExitTransition());
    }

    /* renamed from: k */
    public static View m1105k(C26174a<String, View> c26174a, C26939b c26939b, Object obj, boolean z) {
        ArrayList<String> arrayList;
        C26907a c26907a = c26939b.f75398c;
        if (obj == null || c26174a == null || (arrayList = c26907a.f75330n) == null || arrayList.isEmpty()) {
            return null;
        }
        return c26174a.get(z ? c26907a.f75330n.get(0) : c26907a.f75331o.get(0));
    }

    /* renamed from: l */
    public static Object m1104l(AbstractC26949o0 abstractC26949o0, Fragment fragment, Fragment fragment2, boolean z) {
        return abstractC26949o0.mo1073y(abstractC26949o0.mo1091g(z ? fragment2.getSharedElementReturnTransition() : fragment.getSharedElementEnterTransition()));
    }

    /* renamed from: m */
    public static Object m1103m(AbstractC26949o0 abstractC26949o0, Object obj, Object obj2, Object obj3, Fragment fragment, boolean z) {
        return (obj == null || obj2 == null || fragment == null) ? true : z ? fragment.getAllowReturnTransitionOverlap() : fragment.getAllowEnterTransitionOverlap() ? abstractC26949o0.mo1085m(obj2, obj, obj3) : abstractC26949o0.mo1086l(obj2, obj, obj3);
    }

    /* renamed from: n */
    public static void m1102n(C26174a<String, String> c26174a, C26174a<String, View> c26174a2) {
        int i = c26174a.f73025c;
        while (true) {
            int i2 = i - 1;
            if (i2 >= 0) {
                i = i2;
                if (!c26174a2.containsKey(c26174a.m2572p(i2))) {
                    c26174a.m2574n(i2);
                    i = i2;
                }
            } else {
                return;
            }
        }
    }

    /* renamed from: o */
    public static void m1101o(AbstractC26949o0 abstractC26949o0, Object obj, Object obj2, C26174a<String, View> c26174a, boolean z, C26907a c26907a) {
        ArrayList<String> arrayList = c26907a.f75330n;
        if (arrayList == null || arrayList.isEmpty()) {
            return;
        }
        View view = c26174a.get(z ? c26907a.f75331o.get(0) : c26907a.f75330n.get(0));
        abstractC26949o0.mo1078t(obj, view);
        if (obj2 == null) {
            return;
        }
        abstractC26949o0.mo1078t(obj2, view);
    }

    /* renamed from: p */
    public static void m1100p(ArrayList<View> arrayList, int i) {
        if (arrayList == null) {
            return;
        }
        for (int size = arrayList.size() - 1; size >= 0; size--) {
            arrayList.get(size).setVisibility(i);
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:102:0x03dd  */
    /* JADX WARN: Removed duplicated region for block: B:166:0x068c  */
    /* JADX WARN: Removed duplicated region for block: B:176:0x06fd A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:182:0x06fd A[SYNTHETIC] */
    /* renamed from: q */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static void m1099q(android.content.Context r16, p1727n3.p1859r.p1860a.AbstractC26955r r17, java.util.ArrayList<p1727n3.p1859r.p1860a.C26907a> r18, java.util.ArrayList<java.lang.Boolean> r19, int r20, int r21, boolean r22, p1727n3.p1859r.p1860a.C26937m0.AbstractC26938a r23) {
        /*
            Method dump skipped, instructions count: 1796
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: p1727n3.p1859r.p1860a.C26937m0.m1099q(android.content.Context, n3.r.a.r, java.util.ArrayList, java.util.ArrayList, int, int, boolean, n3.r.a.m0$a):void");
    }
}

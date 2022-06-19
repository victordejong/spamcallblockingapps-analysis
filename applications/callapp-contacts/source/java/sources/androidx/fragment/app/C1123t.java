package androidx.fragment.app;

import android.os.Build;
import android.util.SparseArray;
import android.view.View;
import androidx.core.app.AbstractC0766n;
import androidx.core.p037os.C0856a;
import androidx.core.view.C0926v;
import androidx.p023b.AbstractC0435f;
import androidx.p023b.C0428a;
import java.util.ArrayList;
import java.util.Collection;
import java.util.List;
import java.util.Map;
/* renamed from: androidx.fragment.app.t */
/* loaded from: classes-dex2jar.jar:androidx/fragment/app/t.class */
public final class C1123t {

    /* renamed from: a */
    static final AbstractC1138v f4428a;

    /* renamed from: b */
    static final AbstractC1138v f4429b;

    /* renamed from: c */
    private static final int[] f4430c = {0, 3, 0, 1, 5, 4, 7, 6, 9, 8, 10};

    /* renamed from: androidx.fragment.app.t$a */
    /* loaded from: classes-dex2jar.jar:androidx/fragment/app/t$a.class */
    public interface AbstractC1130a {
        /* renamed from: a */
        void mo43502a(Fragment fragment, C0856a c0856a);

        /* renamed from: b */
        void mo43501b(Fragment fragment, C0856a c0856a);
    }

    /* renamed from: androidx.fragment.app.t$b */
    /* loaded from: classes-dex2jar.jar:androidx/fragment/app/t$b.class */
    public static final class C1131b {

        /* renamed from: a */
        public Fragment f4465a;

        /* renamed from: b */
        public boolean f4466b;

        /* renamed from: c */
        public C1071a f4467c;

        /* renamed from: d */
        public Fragment f4468d;

        /* renamed from: e */
        public boolean f4469e;

        /* renamed from: f */
        public C1071a f4470f;

        C1131b() {
        }
    }

    static {
        f4428a = Build.VERSION.SDK_INT >= 21 ? new C1132u() : null;
        f4429b = m43525a();
    }

    private C1123t() {
    }

    /* renamed from: a */
    static View m43521a(C0428a<String, View> c0428a, C1131b c1131b, Object obj, boolean z) {
        C1071a c1071a = c1131b.f4467c;
        if (obj == null || c0428a == null || c1071a.f4416q == null || c1071a.f4416q.isEmpty()) {
            return null;
        }
        return c0428a.get(z ? c1071a.f4416q.get(0) : c1071a.f4417r.get(0));
    }

    /* renamed from: a */
    private static C0428a<String, String> m43524a(int i, ArrayList<C1071a> arrayList, ArrayList<Boolean> arrayList2, int i2, int i3) {
        ArrayList<String> arrayList3;
        ArrayList<String> arrayList4;
        C0428a<String, String> c0428a = new C0428a<>();
        while (true) {
            i3--;
            if (i3 >= i2) {
                C1071a c1071a = arrayList.get(i3);
                if (c1071a.m43645b(i)) {
                    boolean booleanValue = arrayList2.get(i3).booleanValue();
                    if (c1071a.f4416q != null) {
                        int size = c1071a.f4416q.size();
                        if (booleanValue) {
                            arrayList4 = c1071a.f4416q;
                            arrayList3 = c1071a.f4417r;
                        } else {
                            arrayList3 = c1071a.f4416q;
                            arrayList4 = c1071a.f4417r;
                        }
                        for (int i4 = 0; i4 < size; i4++) {
                            String str = arrayList3.get(i4);
                            String str2 = arrayList4.get(i4);
                            String remove = c0428a.remove(str2);
                            if (remove != null) {
                                c0428a.put(str, remove);
                            } else {
                                c0428a.put(str, str2);
                            }
                        }
                    }
                }
            } else {
                return c0428a;
            }
        }
    }

    /* renamed from: a */
    static C0428a<String, View> m43514a(AbstractC1138v abstractC1138v, C0428a<String, String> c0428a, Object obj, C1131b c1131b) {
        AbstractC0766n abstractC0766n;
        ArrayList<String> arrayList;
        String m43520a;
        Fragment fragment = c1131b.f4465a;
        View view = fragment.getView();
        if (c0428a.isEmpty() || obj == null || view == null) {
            c0428a.clear();
            return null;
        }
        C0428a<String, View> c0428a2 = new C0428a<>();
        abstractC1138v.m43492a((Map<String, View>) c0428a2, view);
        C1071a c1071a = c1131b.f4467c;
        if (c1131b.f4466b) {
            abstractC0766n = fragment.getExitTransitionCallback();
            arrayList = c1071a.f4416q;
        } else {
            abstractC0766n = fragment.getEnterTransitionCallback();
            arrayList = c1071a.f4417r;
        }
        if (arrayList != null) {
            AbstractC0435f.m45531a((Map) c0428a2, (Collection<?>) arrayList);
            AbstractC0435f.m45531a((Map) c0428a2, (Collection<?>) c0428a.values());
        }
        if (abstractC0766n != null) {
            for (int size = arrayList.size() - 1; size >= 0; size--) {
                String str = arrayList.get(size);
                View view2 = c0428a2.get(str);
                if (view2 == null) {
                    String m43520a2 = m43520a(c0428a, str);
                    if (m43520a2 != null) {
                        c0428a.remove(m43520a2);
                    }
                } else if (!str.equals(C0926v.m44083p(view2)) && (m43520a = m43520a(c0428a, str)) != null) {
                    c0428a.put(m43520a, C0926v.m44083p(view2));
                }
            }
        } else {
            m43522a(c0428a, c0428a2);
        }
        return c0428a2;
    }

    /* renamed from: a */
    private static C1131b m43515a(C1131b c1131b, SparseArray<C1131b> sparseArray, int i) {
        C1131b c1131b2 = c1131b;
        if (c1131b == null) {
            c1131b2 = new C1131b();
            sparseArray.put(i, c1131b2);
        }
        return c1131b2;
    }

    /* renamed from: a */
    private static AbstractC1138v m43525a() {
        try {
            return (AbstractC1138v) Class.forName("androidx.transition.e").getDeclaredConstructor(new Class[0]).newInstance(new Object[0]);
        } catch (Exception e) {
            return null;
        }
    }

    /* renamed from: a */
    private static AbstractC1138v m43519a(Fragment fragment, Fragment fragment2) {
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
        AbstractC1138v abstractC1138v = f4428a;
        if (abstractC1138v != null && m43508a(abstractC1138v, arrayList)) {
            return abstractC1138v;
        }
        AbstractC1138v abstractC1138v2 = f4429b;
        if (abstractC1138v2 != null && m43508a(abstractC1138v2, arrayList)) {
            return abstractC1138v2;
        }
        if (abstractC1138v != null || abstractC1138v2 != null) {
            throw new IllegalArgumentException("Invalid Transition types");
        }
        return null;
    }

    /* renamed from: a */
    private static Object m43513a(AbstractC1138v abstractC1138v, Fragment fragment, Fragment fragment2, boolean z) {
        if (fragment == null || fragment2 == null) {
            return null;
        }
        return abstractC1138v.mo39702c(abstractC1138v.mo39707b(z ? fragment2.getSharedElementReturnTransition() : fragment.getSharedElementEnterTransition()));
    }

    /* renamed from: a */
    private static Object m43512a(AbstractC1138v abstractC1138v, Fragment fragment, boolean z) {
        if (fragment == null) {
            return null;
        }
        return abstractC1138v.mo39707b(z ? fragment.getReenterTransition() : fragment.getEnterTransition());
    }

    /* renamed from: a */
    private static Object m43509a(AbstractC1138v abstractC1138v, Object obj, Object obj2, Object obj3, Fragment fragment, boolean z) {
        return (obj == null || obj2 == null || fragment == null) ? true : z ? fragment.getAllowReturnTransitionOverlap() : fragment.getAllowEnterTransitionOverlap() ? abstractC1138v.mo39711a(obj2, obj, obj3) : abstractC1138v.mo39704b(obj2, obj, obj3);
    }

    /* renamed from: a */
    public static String m43520a(C0428a<String, String> c0428a, String str) {
        int size = c0428a.size();
        for (int i = 0; i < size; i++) {
            if (str.equals(c0428a.m45515c(i))) {
                return c0428a.m45517b(i);
            }
        }
        return null;
    }

    /* renamed from: a */
    static ArrayList<View> m43511a(AbstractC1138v abstractC1138v, Object obj, Fragment fragment, ArrayList<View> arrayList, View view) {
        ArrayList<View> arrayList2;
        if (obj != null) {
            ArrayList<View> arrayList3 = new ArrayList<>();
            View view2 = fragment.getView();
            if (view2 != null) {
                abstractC1138v.m43496a(arrayList3, view2);
            }
            if (arrayList != null) {
                arrayList3.removeAll(arrayList);
            }
            arrayList2 = arrayList3;
            if (!arrayList3.isEmpty()) {
                arrayList3.add(view);
                abstractC1138v.mo39709a(obj, arrayList3);
                arrayList2 = arrayList3;
            }
        } else {
            arrayList2 = null;
        }
        return arrayList2;
    }

    /* JADX WARN: Removed duplicated region for block: B:76:0x02e3  */
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static void m43523a(android.content.Context r16, androidx.fragment.app.AbstractC1102e r17, java.util.ArrayList<androidx.fragment.app.C1071a> r18, java.util.ArrayList<java.lang.Boolean> r19, int r20, int r21, boolean r22, final androidx.fragment.app.C1123t.AbstractC1130a r23) {
        /*
            Method dump skipped, instructions count: 1597
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.fragment.app.C1123t.m43523a(android.content.Context, androidx.fragment.app.e, java.util.ArrayList, java.util.ArrayList, int, int, boolean, androidx.fragment.app.t$a):void");
    }

    /* renamed from: a */
    public static void m43522a(C0428a<String, String> c0428a, C0428a<String, View> c0428a2) {
        for (int size = c0428a.size() - 1; size >= 0; size--) {
            if (!c0428a2.containsKey(c0428a.m45515c(size))) {
                c0428a.mo37600d(size);
            }
        }
    }

    /* renamed from: a */
    public static void m43518a(Fragment fragment, Fragment fragment2, boolean z, C0428a<String, View> c0428a) {
        if ((z ? fragment2.getEnterTransitionCallback() : fragment.getEnterTransitionCallback()) != null) {
            ArrayList arrayList = new ArrayList();
            ArrayList arrayList2 = new ArrayList();
            int size = c0428a == null ? 0 : c0428a.size();
            for (int i = 0; i < size; i++) {
                arrayList2.add(c0428a.m45517b(i));
                arrayList.add(c0428a.m45515c(i));
            }
        }
    }

    /* renamed from: a */
    private static void m43517a(C1071a c1071a, SparseArray<C1131b> sparseArray, boolean z) {
        int size = c1071a.f4403d.size();
        for (int i = 0; i < size; i++) {
            m43516a(c1071a, c1071a.f4403d.get(i), sparseArray, false, z);
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:33:0x0085, code lost:
        if (r0.mAdded != false) goto L71;
     */
    /* JADX WARN: Code restructure failed: missing block: B:57:0x00f2, code lost:
        r11 = true;
     */
    /* JADX WARN: Code restructure failed: missing block: B:70:0x013e, code lost:
        if (r0.mHidden == false) goto L71;
     */
    /* JADX WARN: Code restructure failed: missing block: B:71:0x0141, code lost:
        r13 = true;
     */
    /* JADX WARN: Code restructure failed: missing block: B:94:0x01d3, code lost:
        if (r5.f4468d == null) goto L95;
     */
    /* JADX WARN: Removed duplicated region for block: B:106:? A[ADDED_TO_REGION, RETURN, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:76:0x0164  */
    /* JADX WARN: Removed duplicated region for block: B:79:0x0182  */
    /* JADX WARN: Removed duplicated region for block: B:88:0x01a0  */
    /* JADX WARN: Removed duplicated region for block: B:91:0x01c8  */
    /* JADX WARN: Removed duplicated region for block: B:98:0x01f7  */
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private static void m43516a(androidx.fragment.app.C1071a r4, androidx.fragment.app.AbstractC1121s.C1122a r5, android.util.SparseArray<androidx.fragment.app.C1123t.C1131b> r6, boolean r7, boolean r8) {
        /*
            Method dump skipped, instructions count: 530
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.fragment.app.C1123t.m43516a(androidx.fragment.app.a, androidx.fragment.app.s$a, android.util.SparseArray, boolean, boolean):void");
    }

    /* renamed from: a */
    private static void m43510a(AbstractC1138v abstractC1138v, Object obj, Object obj2, C0428a<String, View> c0428a, boolean z, C1071a c1071a) {
        if (c1071a.f4416q == null || c1071a.f4416q.isEmpty()) {
            return;
        }
        View view = c0428a.get(z ? c1071a.f4417r.get(0) : c1071a.f4416q.get(0));
        abstractC1138v.mo39714a(obj, view);
        if (obj2 == null) {
            return;
        }
        abstractC1138v.mo39714a(obj2, view);
    }

    /* renamed from: a */
    public static void m43507a(ArrayList<View> arrayList, int i) {
        if (arrayList == null) {
            return;
        }
        for (int size = arrayList.size() - 1; size >= 0; size--) {
            arrayList.get(size).setVisibility(i);
        }
    }

    /* renamed from: a */
    private static void m43506a(ArrayList<View> arrayList, C0428a<String, View> c0428a, Collection<String> collection) {
        for (int size = c0428a.size() - 1; size >= 0; size--) {
            View c = c0428a.m45515c(size);
            if (collection.contains(C0926v.m44083p(c))) {
                arrayList.add(c);
            }
        }
    }

    /* renamed from: a */
    private static boolean m43508a(AbstractC1138v abstractC1138v, List<Object> list) {
        int size = list.size();
        for (int i = 0; i < size; i++) {
            if (!abstractC1138v.mo39716a(list.get(i))) {
                return false;
            }
        }
        return true;
    }

    /* renamed from: b */
    private static C0428a<String, View> m43504b(AbstractC1138v abstractC1138v, C0428a<String, String> c0428a, Object obj, C1131b c1131b) {
        AbstractC0766n abstractC0766n;
        ArrayList<String> arrayList;
        if (c0428a.isEmpty() || obj == null) {
            c0428a.clear();
            return null;
        }
        Fragment fragment = c1131b.f4468d;
        C0428a<String, View> c0428a2 = new C0428a<>();
        abstractC1138v.m43492a((Map<String, View>) c0428a2, fragment.requireView());
        C1071a c1071a = c1131b.f4470f;
        if (c1131b.f4469e) {
            abstractC0766n = fragment.getEnterTransitionCallback();
            arrayList = c1071a.f4417r;
        } else {
            abstractC0766n = fragment.getExitTransitionCallback();
            arrayList = c1071a.f4416q;
        }
        if (arrayList != null) {
            AbstractC0435f.m45531a((Map) c0428a2, (Collection<?>) arrayList);
        }
        if (abstractC0766n != null) {
            for (int size = arrayList.size() - 1; size >= 0; size--) {
                String str = arrayList.get(size);
                View view = c0428a2.get(str);
                if (view == null) {
                    c0428a.remove(str);
                } else if (!str.equals(C0926v.m44083p(view))) {
                    c0428a.put(C0926v.m44083p(view), c0428a.remove(str));
                }
            }
        } else {
            AbstractC0435f.m45531a((Map) c0428a, (Collection<?>) c0428a2.keySet());
        }
        return c0428a2;
    }

    /* renamed from: b */
    private static Object m43503b(AbstractC1138v abstractC1138v, Fragment fragment, boolean z) {
        if (fragment == null) {
            return null;
        }
        return abstractC1138v.mo39707b(z ? fragment.getReturnTransition() : fragment.getExitTransition());
    }

    /* renamed from: b */
    private static void m43505b(C1071a c1071a, SparseArray<C1131b> sparseArray, boolean z) {
        if (!c1071a.f4271a.f4221m.mo43614a()) {
            return;
        }
        for (int size = c1071a.f4403d.size() - 1; size >= 0; size--) {
            m43516a(c1071a, c1071a.f4403d.get(size), sparseArray, true, z);
        }
    }
}

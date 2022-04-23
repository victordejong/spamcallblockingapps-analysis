package androidx.fragment.app;

import android.os.Build;
import android.util.SparseArray;
import android.view.View;
import androidx.b.f;
import androidx.core.app.n;
import androidx.core.view.v;
import java.util.ArrayList;
import java.util.Collection;
import java.util.List;
import java.util.Map;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes-dex2jar.jar:androidx/fragment/app/t.class */
public final class t {

    /* renamed from: a  reason: collision with root package name */
    static final v f2329a;

    /* renamed from: b  reason: collision with root package name */
    static final v f2330b;

    /* renamed from: c  reason: collision with root package name */
    private static final int[] f2331c = {0, 3, 0, 1, 5, 4, 7, 6, 9, 8, 10};

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes-dex2jar.jar:androidx/fragment/app/t$a.class */
    public interface a {
        void a(Fragment fragment, androidx.core.os.a aVar);

        void b(Fragment fragment, androidx.core.os.a aVar);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes-dex2jar.jar:androidx/fragment/app/t$b.class */
    public static final class b {

        /* renamed from: a  reason: collision with root package name */
        public Fragment f2351a;

        /* renamed from: b  reason: collision with root package name */
        public boolean f2352b;

        /* renamed from: c  reason: collision with root package name */
        public androidx.fragment.app.a f2353c;

        /* renamed from: d  reason: collision with root package name */
        public Fragment f2354d;
        public boolean e;
        public androidx.fragment.app.a f;

        b() {
        }
    }

    static {
        f2329a = Build.VERSION.SDK_INT >= 21 ? new u() : null;
        f2330b = a();
    }

    private t() {
    }

    static View a(androidx.b.a<String, View> aVar, b bVar, Object obj, boolean z) {
        androidx.fragment.app.a aVar2 = bVar.f2353c;
        if (obj == null || aVar == null || aVar2.q == null || aVar2.q.isEmpty()) {
            return null;
        }
        return aVar.get(z ? aVar2.q.get(0) : aVar2.r.get(0));
    }

    private static androidx.b.a<String, String> a(int i, ArrayList<androidx.fragment.app.a> arrayList, ArrayList<Boolean> arrayList2, int i2, int i3) {
        ArrayList<String> arrayList3;
        ArrayList<String> arrayList4;
        androidx.b.a<String, String> aVar = new androidx.b.a<>();
        while (true) {
            i3--;
            if (i3 < i2) {
                return aVar;
            }
            androidx.fragment.app.a aVar2 = arrayList.get(i3);
            if (aVar2.b(i)) {
                boolean booleanValue = arrayList2.get(i3).booleanValue();
                if (aVar2.q != null) {
                    int size = aVar2.q.size();
                    if (booleanValue) {
                        arrayList4 = aVar2.q;
                        arrayList3 = aVar2.r;
                    } else {
                        arrayList3 = aVar2.q;
                        arrayList4 = aVar2.r;
                    }
                    for (int i4 = 0; i4 < size; i4++) {
                        String str = arrayList3.get(i4);
                        String str2 = arrayList4.get(i4);
                        String remove = aVar.remove(str2);
                        if (remove != null) {
                            aVar.put(str, remove);
                        } else {
                            aVar.put(str, str2);
                        }
                    }
                }
            }
        }
    }

    static androidx.b.a<String, View> a(v vVar, androidx.b.a<String, String> aVar, Object obj, b bVar) {
        n nVar;
        ArrayList<String> arrayList;
        String a2;
        Fragment fragment = bVar.f2351a;
        View view = fragment.getView();
        if (aVar.isEmpty() || obj == null || view == null) {
            aVar.clear();
            return null;
        }
        androidx.b.a<String, View> aVar2 = new androidx.b.a<>();
        vVar.a((Map<String, View>) aVar2, view);
        androidx.fragment.app.a aVar3 = bVar.f2353c;
        if (bVar.f2352b) {
            nVar = fragment.getExitTransitionCallback();
            arrayList = aVar3.q;
        } else {
            nVar = fragment.getEnterTransitionCallback();
            arrayList = aVar3.r;
        }
        if (arrayList != null) {
            f.a((Map) aVar2, (Collection<?>) arrayList);
            f.a((Map) aVar2, (Collection<?>) aVar.values());
        }
        if (nVar != null) {
            for (int size = arrayList.size() - 1; size >= 0; size--) {
                String str = arrayList.get(size);
                View view2 = aVar2.get(str);
                if (view2 == null) {
                    String a3 = a(aVar, str);
                    if (a3 != null) {
                        aVar.remove(a3);
                    }
                } else if (!str.equals(v.p(view2)) && (a2 = a(aVar, str)) != null) {
                    aVar.put(a2, v.p(view2));
                }
            }
        } else {
            a(aVar, aVar2);
        }
        return aVar2;
    }

    private static b a(b bVar, SparseArray<b> sparseArray, int i) {
        b bVar2 = bVar;
        if (bVar == null) {
            bVar2 = new b();
            sparseArray.put(i, bVar2);
        }
        return bVar2;
    }

    private static v a() {
        try {
            return (v) Class.forName("androidx.transition.e").getDeclaredConstructor(new Class[0]).newInstance(new Object[0]);
        } catch (Exception e) {
            return null;
        }
    }

    private static v a(Fragment fragment, Fragment fragment2) {
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
        v vVar = f2329a;
        if (vVar != null && a(vVar, arrayList)) {
            return vVar;
        }
        v vVar2 = f2330b;
        if (vVar2 != null && a(vVar2, arrayList)) {
            return vVar2;
        }
        if (vVar == null && vVar2 == null) {
            return null;
        }
        throw new IllegalArgumentException("Invalid Transition types");
    }

    private static Object a(v vVar, Fragment fragment, Fragment fragment2, boolean z) {
        if (fragment == null || fragment2 == null) {
            return null;
        }
        return vVar.c(vVar.b(z ? fragment2.getSharedElementReturnTransition() : fragment.getSharedElementEnterTransition()));
    }

    private static Object a(v vVar, Fragment fragment, boolean z) {
        if (fragment == null) {
            return null;
        }
        return vVar.b(z ? fragment.getReenterTransition() : fragment.getEnterTransition());
    }

    private static Object a(v vVar, Object obj, Object obj2, Object obj3, Fragment fragment, boolean z) {
        return (obj == null || obj2 == null || fragment == null) ? true : z ? fragment.getAllowReturnTransitionOverlap() : fragment.getAllowEnterTransitionOverlap() ? vVar.a(obj2, obj, obj3) : vVar.b(obj2, obj, obj3);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static String a(androidx.b.a<String, String> aVar, String str) {
        int size = aVar.size();
        for (int i = 0; i < size; i++) {
            if (str.equals(aVar.c(i))) {
                return aVar.b(i);
            }
        }
        return null;
    }

    static ArrayList<View> a(v vVar, Object obj, Fragment fragment, ArrayList<View> arrayList, View view) {
        ArrayList<View> arrayList2;
        if (obj != null) {
            ArrayList<View> arrayList3 = new ArrayList<>();
            View view2 = fragment.getView();
            if (view2 != null) {
                vVar.a(arrayList3, view2);
            }
            if (arrayList != null) {
                arrayList3.removeAll(arrayList);
            }
            arrayList2 = arrayList3;
            if (!arrayList3.isEmpty()) {
                arrayList3.add(view);
                vVar.a(obj, arrayList3);
                arrayList2 = arrayList3;
            }
        } else {
            arrayList2 = null;
        }
        return arrayList2;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: Removed duplicated region for block: B:76:0x02e3  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static void a(android.content.Context r16, androidx.fragment.app.e r17, java.util.ArrayList<androidx.fragment.app.a> r18, java.util.ArrayList<java.lang.Boolean> r19, int r20, int r21, boolean r22, final androidx.fragment.app.t.a r23) {
        /*
            Method dump skipped, instructions count: 1597
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.fragment.app.t.a(android.content.Context, androidx.fragment.app.e, java.util.ArrayList, java.util.ArrayList, int, int, boolean, androidx.fragment.app.t$a):void");
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static void a(androidx.b.a<String, String> aVar, androidx.b.a<String, View> aVar2) {
        for (int size = aVar.size() - 1; size >= 0; size--) {
            if (!aVar2.containsKey(aVar.c(size))) {
                aVar.d(size);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static void a(Fragment fragment, Fragment fragment2, boolean z, androidx.b.a<String, View> aVar) {
        if ((z ? fragment2.getEnterTransitionCallback() : fragment.getEnterTransitionCallback()) != null) {
            ArrayList arrayList = new ArrayList();
            ArrayList arrayList2 = new ArrayList();
            int size = aVar == null ? 0 : aVar.size();
            for (int i = 0; i < size; i++) {
                arrayList2.add(aVar.b(i));
                arrayList.add(aVar.c(i));
            }
        }
    }

    private static void a(androidx.fragment.app.a aVar, SparseArray<b> sparseArray, boolean z) {
        int size = aVar.f2324d.size();
        for (int i = 0; i < size; i++) {
            a(aVar, aVar.f2324d.get(i), sparseArray, false, z);
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:33:0x0085, code lost:
        if (r0.mAdded != false) goto L_0x0141;
     */
    /* JADX WARN: Code restructure failed: missing block: B:57:0x00f2, code lost:
        r11 = true;
     */
    /* JADX WARN: Code restructure failed: missing block: B:70:0x013e, code lost:
        if (r0.mHidden == false) goto L_0x0141;
     */
    /* JADX WARN: Code restructure failed: missing block: B:71:0x0141, code lost:
        r13 = true;
     */
    /* JADX WARN: Code restructure failed: missing block: B:94:0x01d3, code lost:
        if (r5.f2354d == null) goto L_0x01d6;
     */
    /* JADX WARN: Removed duplicated region for block: B:106:? A[ADDED_TO_REGION, RETURN, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:76:0x0164  */
    /* JADX WARN: Removed duplicated region for block: B:79:0x0182  */
    /* JADX WARN: Removed duplicated region for block: B:88:0x01a0  */
    /* JADX WARN: Removed duplicated region for block: B:91:0x01c8  */
    /* JADX WARN: Removed duplicated region for block: B:98:0x01f7  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private static void a(androidx.fragment.app.a r4, androidx.fragment.app.s.a r5, android.util.SparseArray<androidx.fragment.app.t.b> r6, boolean r7, boolean r8) {
        /*
            Method dump skipped, instructions count: 530
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.fragment.app.t.a(androidx.fragment.app.a, androidx.fragment.app.s$a, android.util.SparseArray, boolean, boolean):void");
    }

    private static void a(v vVar, Object obj, Object obj2, androidx.b.a<String, View> aVar, boolean z, androidx.fragment.app.a aVar2) {
        if (aVar2.q != null && !aVar2.q.isEmpty()) {
            View view = aVar.get(z ? aVar2.r.get(0) : aVar2.q.get(0));
            vVar.a(obj, view);
            if (obj2 != null) {
                vVar.a(obj2, view);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static void a(ArrayList<View> arrayList, int i) {
        if (arrayList != null) {
            for (int size = arrayList.size() - 1; size >= 0; size--) {
                arrayList.get(size).setVisibility(i);
            }
        }
    }

    private static void a(ArrayList<View> arrayList, androidx.b.a<String, View> aVar, Collection<String> collection) {
        for (int size = aVar.size() - 1; size >= 0; size--) {
            View c2 = aVar.c(size);
            if (collection.contains(v.p(c2))) {
                arrayList.add(c2);
            }
        }
    }

    private static boolean a(v vVar, List<Object> list) {
        int size = list.size();
        for (int i = 0; i < size; i++) {
            if (!vVar.a(list.get(i))) {
                return false;
            }
        }
        return true;
    }

    private static androidx.b.a<String, View> b(v vVar, androidx.b.a<String, String> aVar, Object obj, b bVar) {
        n nVar;
        ArrayList<String> arrayList;
        if (aVar.isEmpty() || obj == null) {
            aVar.clear();
            return null;
        }
        Fragment fragment = bVar.f2354d;
        androidx.b.a<String, View> aVar2 = new androidx.b.a<>();
        vVar.a((Map<String, View>) aVar2, fragment.requireView());
        androidx.fragment.app.a aVar3 = bVar.f;
        if (bVar.e) {
            nVar = fragment.getEnterTransitionCallback();
            arrayList = aVar3.r;
        } else {
            nVar = fragment.getExitTransitionCallback();
            arrayList = aVar3.q;
        }
        if (arrayList != null) {
            f.a((Map) aVar2, (Collection<?>) arrayList);
        }
        if (nVar != null) {
            for (int size = arrayList.size() - 1; size >= 0; size--) {
                String str = arrayList.get(size);
                View view = aVar2.get(str);
                if (view == null) {
                    aVar.remove(str);
                } else if (!str.equals(v.p(view))) {
                    aVar.put(v.p(view), aVar.remove(str));
                }
            }
        } else {
            f.a((Map) aVar, (Collection<?>) aVar2.keySet());
        }
        return aVar2;
    }

    private static Object b(v vVar, Fragment fragment, boolean z) {
        if (fragment == null) {
            return null;
        }
        return vVar.b(z ? fragment.getReturnTransition() : fragment.getExitTransition());
    }

    private static void b(androidx.fragment.app.a aVar, SparseArray<b> sparseArray, boolean z) {
        if (aVar.f2222a.m.a()) {
            for (int size = aVar.f2324d.size() - 1; size >= 0; size--) {
                a(aVar, aVar.f2324d.get(size), sparseArray, true, z);
            }
        }
    }
}

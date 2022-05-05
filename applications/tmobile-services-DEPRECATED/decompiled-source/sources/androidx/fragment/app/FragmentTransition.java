package androidx.fragment.app;

import android.graphics.Rect;
import android.os.Build;
import android.util.SparseArray;
import android.view.View;
import android.view.ViewGroup;
import androidx.annotation.NonNull;
import androidx.collection.ArrayMap;
import androidx.core.app.SharedElementCallback;
import androidx.core.p004os.CancellationSignal;
import androidx.core.view.OneShotPreDrawListener;
import androidx.core.view.ViewCompat;
import java.util.ArrayList;
import java.util.Collection;
import java.util.List;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes-dex2jar.jar:androidx/fragment/app/FragmentTransition.class */
public class FragmentTransition {

    /* renamed from: a */
    private static final int[] f3861a = {0, 3, 0, 1, 5, 4, 7, 6, 9, 8, 10};

    /* renamed from: b */
    private static final FragmentTransitionImpl f3862b;

    /* renamed from: c */
    private static final FragmentTransitionImpl f3863c;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes-dex2jar.jar:androidx/fragment/app/FragmentTransition$Callback.class */
    public interface Callback {
        /* renamed from: a */
        void mo18297a(@NonNull Fragment fragment, @NonNull CancellationSignal cancellationSignal);

        /* renamed from: b */
        void mo18296b(@NonNull Fragment fragment, @NonNull CancellationSignal cancellationSignal);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes-dex2jar.jar:androidx/fragment/app/FragmentTransition$FragmentContainerTransition.class */
    public static class FragmentContainerTransition {

        /* renamed from: a */
        public Fragment f3898a;

        /* renamed from: b */
        public boolean f3899b;

        /* renamed from: c */
        public BackStackRecord f3900c;

        /* renamed from: d */
        public Fragment f3901d;

        /* renamed from: e */
        public boolean f3902e;

        /* renamed from: f */
        public BackStackRecord f3903f;

        FragmentContainerTransition() {
        }
    }

    static {
        f3862b = Build.VERSION.SDK_INT >= 21 ? new FragmentTransitionCompat21() : null;
        f3863c = m18300x();
    }

    private FragmentTransition() {
    }

    /* renamed from: A */
    private static void m18326A(FragmentTransitionImpl fragmentTransitionImpl, Object obj, Object obj2, ArrayMap<String, View> arrayMap, boolean z, BackStackRecord backStackRecord) {
        ArrayList<String> arrayList = backStackRecord.f3849n;
        if (arrayList != null && !arrayList.isEmpty()) {
            View view = arrayMap.get(z ? backStackRecord.f3850o.get(0) : backStackRecord.f3849n.get(0));
            fragmentTransitionImpl.mo16834v(obj, view);
            if (obj2 != null) {
                fragmentTransitionImpl.mo16834v(obj2, view);
            }
        }
    }

    /* renamed from: B */
    static void m18325B(ArrayList<View> arrayList, int i) {
        if (arrayList != null) {
            for (int size = arrayList.size() - 1; size >= 0; size--) {
                arrayList.get(size).setVisibility(i);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: C */
    public static void m18324C(FragmentManager fragmentManager, ArrayList<BackStackRecord> arrayList, ArrayList<Boolean> arrayList2, int i, int i2, boolean z, Callback callback) {
        if (fragmentManager.mCurState >= 1) {
            SparseArray sparseArray = new SparseArray();
            for (int i3 = i; i3 < i2; i3++) {
                BackStackRecord backStackRecord = arrayList.get(i3);
                if (arrayList2.get(i3).booleanValue()) {
                    m18319e(backStackRecord, sparseArray, z);
                } else {
                    m18321c(backStackRecord, sparseArray, z);
                }
            }
            if (sparseArray.size() != 0) {
                View view = new View(fragmentManager.mHost.m18463e());
                int size = sparseArray.size();
                for (int i4 = 0; i4 < size; i4++) {
                    int keyAt = sparseArray.keyAt(i4);
                    ArrayMap<String, String> d = m18320d(keyAt, arrayList, arrayList2, i, i2);
                    FragmentContainerTransition fragmentContainerTransition = (FragmentContainerTransition) sparseArray.valueAt(i4);
                    if (z) {
                        m18309o(fragmentManager, keyAt, fragmentContainerTransition, view, d, callback);
                    } else {
                        m18310n(fragmentManager, keyAt, fragmentContainerTransition, view, d, callback);
                    }
                }
            }
        }
    }

    /* renamed from: a */
    private static void m18323a(ArrayList<View> arrayList, ArrayMap<String, View> arrayMap, Collection<String> collection) {
        for (int size = arrayMap.size() - 1; size >= 0; size--) {
            View o = arrayMap.m21005o(size);
            if (collection.contains(ViewCompat.m19227J(o))) {
                arrayList.add(o);
            }
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:33:0x0082, code lost:
        if (r0.mAdded != false) goto L_0x0140;
     */
    /* JADX WARN: Code restructure failed: missing block: B:57:0x00ed, code lost:
        r11 = true;
     */
    /* JADX WARN: Code restructure failed: missing block: B:70:0x013d, code lost:
        if (r0.mHidden == false) goto L_0x0140;
     */
    /* JADX WARN: Code restructure failed: missing block: B:71:0x0140, code lost:
        r13 = true;
     */
    /* JADX WARN: Code restructure failed: missing block: B:98:0x01d8, code lost:
        if (r5.f3901d == null) goto L_0x01db;
     */
    /* JADX WARN: Removed duplicated region for block: B:102:0x01fc  */
    /* JADX WARN: Removed duplicated region for block: B:110:? A[ADDED_TO_REGION, RETURN, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:76:0x0162  */
    /* JADX WARN: Removed duplicated region for block: B:79:0x0180  */
    /* JADX WARN: Removed duplicated region for block: B:95:0x01cd  */
    /* renamed from: b */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private static void m18322b(androidx.fragment.app.BackStackRecord r4, androidx.fragment.app.FragmentTransaction.C0335Op r5, android.util.SparseArray<androidx.fragment.app.FragmentTransition.FragmentContainerTransition> r6, boolean r7, boolean r8) {
        /*
            Method dump skipped, instructions count: 535
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.fragment.app.FragmentTransition.m18322b(androidx.fragment.app.BackStackRecord, androidx.fragment.app.FragmentTransaction$Op, android.util.SparseArray, boolean, boolean):void");
    }

    /* renamed from: c */
    public static void m18321c(BackStackRecord backStackRecord, SparseArray<FragmentContainerTransition> sparseArray, boolean z) {
        int size = backStackRecord.f3836a.size();
        for (int i = 0; i < size; i++) {
            m18322b(backStackRecord, backStackRecord.f3836a.get(i), sparseArray, false, z);
        }
    }

    /* renamed from: d */
    private static ArrayMap<String, String> m18320d(int i, ArrayList<BackStackRecord> arrayList, ArrayList<Boolean> arrayList2, int i2, int i3) {
        ArrayList<String> arrayList3;
        ArrayList<String> arrayList4;
        ArrayMap<String, String> arrayMap = new ArrayMap<>();
        while (true) {
            i3--;
            if (i3 < i2) {
                return arrayMap;
            }
            BackStackRecord backStackRecord = arrayList.get(i3);
            if (backStackRecord.m18518D(i)) {
                boolean booleanValue = arrayList2.get(i3).booleanValue();
                ArrayList<String> arrayList5 = backStackRecord.f3849n;
                if (arrayList5 != null) {
                    int size = arrayList5.size();
                    if (booleanValue) {
                        arrayList3 = backStackRecord.f3849n;
                        arrayList4 = backStackRecord.f3850o;
                    } else {
                        arrayList4 = backStackRecord.f3849n;
                        arrayList3 = backStackRecord.f3850o;
                    }
                    for (int i4 = 0; i4 < size; i4++) {
                        String str = arrayList4.get(i4);
                        String str2 = arrayList3.get(i4);
                        String remove = arrayMap.remove(str2);
                        if (remove != null) {
                            arrayMap.put(str, remove);
                        } else {
                            arrayMap.put(str, str2);
                        }
                    }
                }
            }
        }
    }

    /* renamed from: e */
    public static void m18319e(BackStackRecord backStackRecord, SparseArray<FragmentContainerTransition> sparseArray, boolean z) {
        if (backStackRecord.f3692r.mContainer.mo18465c()) {
            for (int size = backStackRecord.f3836a.size() - 1; size >= 0; size--) {
                m18322b(backStackRecord, backStackRecord.f3836a.get(size), sparseArray, true, z);
            }
        }
    }

    /* renamed from: f */
    static void m18318f(Fragment fragment, Fragment fragment2, boolean z, ArrayMap<String, View> arrayMap, boolean z2) {
        SharedElementCallback enterTransitionCallback = z ? fragment2.getEnterTransitionCallback() : fragment.getEnterTransitionCallback();
        if (enterTransitionCallback != null) {
            ArrayList arrayList = new ArrayList();
            ArrayList arrayList2 = new ArrayList();
            int size = arrayMap == null ? 0 : arrayMap.size();
            for (int i = 0; i < size; i++) {
                arrayList2.add(arrayMap.m21007k(i));
                arrayList.add(arrayMap.m21005o(i));
            }
            if (z2) {
                enterTransitionCallback.m19688g(arrayList2, arrayList, null);
            } else {
                enterTransitionCallback.m19689f(arrayList2, arrayList, null);
            }
        }
    }

    /* renamed from: g */
    private static boolean m18317g(FragmentTransitionImpl fragmentTransitionImpl, List<Object> list) {
        int size = list.size();
        for (int i = 0; i < size; i++) {
            if (!fragmentTransitionImpl.mo16843e(list.get(i))) {
                return false;
            }
        }
        return true;
    }

    /* renamed from: h */
    static ArrayMap<String, View> m18316h(FragmentTransitionImpl fragmentTransitionImpl, ArrayMap<String, String> arrayMap, Object obj, FragmentContainerTransition fragmentContainerTransition) {
        SharedElementCallback sharedElementCallback;
        ArrayList<String> arrayList;
        String q;
        Fragment fragment = fragmentContainerTransition.f3898a;
        View view = fragment.getView();
        if (arrayMap.isEmpty() || obj == null || view == null) {
            arrayMap.clear();
            return null;
        }
        ArrayMap<String, View> arrayMap2 = new ArrayMap<>();
        fragmentTransitionImpl.m18290j(arrayMap2, view);
        BackStackRecord backStackRecord = fragmentContainerTransition.f3900c;
        if (fragmentContainerTransition.f3899b) {
            sharedElementCallback = fragment.getExitTransitionCallback();
            arrayList = backStackRecord.f3849n;
        } else {
            sharedElementCallback = fragment.getEnterTransitionCallback();
            arrayList = backStackRecord.f3850o;
        }
        if (arrayList != null) {
            arrayMap2.mo18657q(arrayList);
            arrayMap2.mo18657q(arrayMap.values());
        }
        if (sharedElementCallback != null) {
            sharedElementCallback.m19691d(arrayList, arrayMap2);
            for (int size = arrayList.size() - 1; size >= 0; size--) {
                String str = arrayList.get(size);
                View view2 = arrayMap2.get(str);
                if (view2 == null) {
                    String q2 = m18307q(arrayMap, str);
                    if (q2 != null) {
                        arrayMap.remove(q2);
                    }
                } else if (!str.equals(ViewCompat.m19227J(view2)) && (q = m18307q(arrayMap, str)) != null) {
                    arrayMap.put(q, ViewCompat.m19227J(view2));
                }
            }
        } else {
            m18299y(arrayMap, arrayMap2);
        }
        return arrayMap2;
    }

    /* renamed from: i */
    private static ArrayMap<String, View> m18315i(FragmentTransitionImpl fragmentTransitionImpl, ArrayMap<String, String> arrayMap, Object obj, FragmentContainerTransition fragmentContainerTransition) {
        SharedElementCallback sharedElementCallback;
        ArrayList<String> arrayList;
        if (arrayMap.isEmpty() || obj == null) {
            arrayMap.clear();
            return null;
        }
        Fragment fragment = fragmentContainerTransition.f3901d;
        ArrayMap<String, View> arrayMap2 = new ArrayMap<>();
        fragmentTransitionImpl.m18290j(arrayMap2, fragment.requireView());
        BackStackRecord backStackRecord = fragmentContainerTransition.f3903f;
        if (fragmentContainerTransition.f3902e) {
            sharedElementCallback = fragment.getEnterTransitionCallback();
            arrayList = backStackRecord.f3850o;
        } else {
            sharedElementCallback = fragment.getExitTransitionCallback();
            arrayList = backStackRecord.f3849n;
        }
        if (arrayList != null) {
            arrayMap2.mo18657q(arrayList);
        }
        if (sharedElementCallback != null) {
            sharedElementCallback.m19691d(arrayList, arrayMap2);
            for (int size = arrayList.size() - 1; size >= 0; size--) {
                String str = arrayList.get(size);
                View view = arrayMap2.get(str);
                if (view == null) {
                    arrayMap.remove(str);
                } else if (!str.equals(ViewCompat.m19227J(view))) {
                    arrayMap.put(ViewCompat.m19227J(view), arrayMap.remove(str));
                }
            }
        } else {
            arrayMap.mo18657q(arrayMap2.keySet());
        }
        return arrayMap2;
    }

    /* renamed from: j */
    private static FragmentTransitionImpl m18314j(Fragment fragment, Fragment fragment2) {
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
        FragmentTransitionImpl fragmentTransitionImpl = f3862b;
        if (fragmentTransitionImpl != null && m18317g(fragmentTransitionImpl, arrayList)) {
            return f3862b;
        }
        FragmentTransitionImpl fragmentTransitionImpl2 = f3863c;
        if (fragmentTransitionImpl2 != null && m18317g(fragmentTransitionImpl2, arrayList)) {
            return f3863c;
        }
        if (f3862b == null && f3863c == null) {
            return null;
        }
        throw new IllegalArgumentException("Invalid Transition types");
    }

    /* renamed from: k */
    static ArrayList<View> m18313k(FragmentTransitionImpl fragmentTransitionImpl, Object obj, Fragment fragment, ArrayList<View> arrayList, View view) {
        ArrayList<View> arrayList2;
        if (obj != null) {
            ArrayList<View> arrayList3 = new ArrayList<>();
            View view2 = fragment.getView();
            if (view2 != null) {
                fragmentTransitionImpl.m18293f(arrayList3, view2);
            }
            if (arrayList != null) {
                arrayList3.removeAll(arrayList);
            }
            arrayList2 = arrayList3;
            if (!arrayList3.isEmpty()) {
                arrayList3.add(view);
                fragmentTransitionImpl.mo16845b(obj, arrayList3);
                arrayList2 = arrayList3;
            }
        } else {
            arrayList2 = null;
        }
        return arrayList2;
    }

    /* renamed from: l */
    private static Object m18312l(final FragmentTransitionImpl fragmentTransitionImpl, ViewGroup viewGroup, final View view, final ArrayMap<String, String> arrayMap, final FragmentContainerTransition fragmentContainerTransition, final ArrayList<View> arrayList, final ArrayList<View> arrayList2, final Object obj, Object obj2) {
        final Rect rect;
        final Fragment fragment = fragmentContainerTransition.f3898a;
        final Fragment fragment2 = fragmentContainerTransition.f3901d;
        if (fragment == null || fragment2 == null) {
            return null;
        }
        final boolean z = fragmentContainerTransition.f3899b;
        final Object u = arrayMap.isEmpty() ? null : m18303u(fragmentTransitionImpl, fragment, fragment2, z);
        ArrayMap<String, View> i = m18315i(fragmentTransitionImpl, arrayMap, u, fragmentContainerTransition);
        if (arrayMap.isEmpty()) {
            u = null;
        } else {
            arrayList.addAll(i.values());
        }
        if (obj == null && obj2 == null && u == null) {
            return null;
        }
        m18318f(fragment, fragment2, z, i, true);
        if (u != null) {
            Rect rect2 = new Rect();
            fragmentTransitionImpl.mo16833z(u, view, arrayList);
            m18326A(fragmentTransitionImpl, u, obj2, i, fragmentContainerTransition.f3902e, fragmentContainerTransition.f3903f);
            rect = rect2;
            if (obj != null) {
                fragmentTransitionImpl.mo16835u(obj, rect2);
                rect = rect2;
            }
        } else {
            rect = null;
        }
        OneShotPreDrawListener.m19249a(viewGroup, new Runnable() { // from class: androidx.fragment.app.FragmentTransition.6
            @Override // java.lang.Runnable
            public void run() {
                ArrayMap<String, View> h = FragmentTransition.m18316h(FragmentTransitionImpl.this, arrayMap, u, fragmentContainerTransition);
                if (h != null) {
                    arrayList2.addAll(h.values());
                    arrayList2.add(view);
                }
                FragmentTransition.m18318f(fragment, fragment2, z, h, false);
                Object obj3 = u;
                if (obj3 != null) {
                    FragmentTransitionImpl.this.mo16849A(obj3, arrayList, arrayList2);
                    View t = FragmentTransition.m18304t(h, fragmentContainerTransition, obj, z);
                    if (t != null) {
                        FragmentTransitionImpl.this.m18289k(t, rect);
                    }
                }
            }
        });
        return u;
    }

    /* renamed from: m */
    private static Object m18311m(final FragmentTransitionImpl fragmentTransitionImpl, ViewGroup viewGroup, View view, ArrayMap<String, String> arrayMap, FragmentContainerTransition fragmentContainerTransition, ArrayList<View> arrayList, ArrayList<View> arrayList2, Object obj, Object obj2) {
        Object obj3;
        final Rect rect;
        final View view2;
        final Fragment fragment = fragmentContainerTransition.f3898a;
        final Fragment fragment2 = fragmentContainerTransition.f3901d;
        if (fragment != null) {
            fragment.requireView().setVisibility(0);
        }
        if (fragment == null || fragment2 == null) {
            return null;
        }
        final boolean z = fragmentContainerTransition.f3899b;
        Object u = arrayMap.isEmpty() ? null : m18303u(fragmentTransitionImpl, fragment, fragment2, z);
        ArrayMap<String, View> i = m18315i(fragmentTransitionImpl, arrayMap, u, fragmentContainerTransition);
        final ArrayMap<String, View> h = m18316h(fragmentTransitionImpl, arrayMap, u, fragmentContainerTransition);
        if (arrayMap.isEmpty()) {
            if (i != null) {
                i.clear();
            }
            if (h != null) {
                h.clear();
            }
            obj3 = null;
        } else {
            m18323a(arrayList, i, arrayMap.keySet());
            m18323a(arrayList2, h, arrayMap.values());
            obj3 = u;
        }
        if (obj == null && obj2 == null && obj3 == null) {
            return null;
        }
        m18318f(fragment, fragment2, z, i, true);
        if (obj3 != null) {
            arrayList2.add(view);
            fragmentTransitionImpl.mo16833z(obj3, view, arrayList);
            m18326A(fragmentTransitionImpl, obj3, obj2, i, fragmentContainerTransition.f3902e, fragmentContainerTransition.f3903f);
            Rect rect2 = new Rect();
            view2 = m18304t(h, fragmentContainerTransition, obj, z);
            if (view2 != null) {
                fragmentTransitionImpl.mo16835u(obj, rect2);
            }
            rect = rect2;
        } else {
            rect = null;
            view2 = null;
        }
        OneShotPreDrawListener.m19249a(viewGroup, new Runnable() { // from class: androidx.fragment.app.FragmentTransition.5
            @Override // java.lang.Runnable
            public void run() {
                FragmentTransition.m18318f(Fragment.this, fragment2, z, h, false);
                View view3 = view2;
                if (view3 != null) {
                    fragmentTransitionImpl.m18289k(view3, rect);
                }
            }
        });
        return obj3;
    }

    /* renamed from: n */
    private static void m18310n(FragmentManager fragmentManager, int i, FragmentContainerTransition fragmentContainerTransition, View view, ArrayMap<String, String> arrayMap, final Callback callback) {
        Fragment fragment;
        final Fragment fragment2;
        FragmentTransitionImpl j;
        ViewGroup viewGroup = fragmentManager.mContainer.mo18465c() ? (ViewGroup) fragmentManager.mContainer.mo18466b(i) : null;
        if (viewGroup != null && (j = m18314j((fragment2 = fragmentContainerTransition.f3901d), (fragment = fragmentContainerTransition.f3898a))) != null) {
            boolean z = fragmentContainerTransition.f3899b;
            boolean z2 = fragmentContainerTransition.f3902e;
            Object r = m18306r(j, fragment, z);
            Object s = m18305s(j, fragment2, z2);
            ArrayList arrayList = new ArrayList();
            ArrayList<View> arrayList2 = new ArrayList<>();
            Object l = m18312l(j, viewGroup, view, arrayMap, fragmentContainerTransition, arrayList, arrayList2, r, s);
            if (r != null || l != null || s != null) {
                ArrayList<View> k = m18313k(j, s, fragment2, arrayList, view);
                if (k == null || k.isEmpty()) {
                    s = null;
                }
                j.mo16846a(r, view);
                Object v = m18302v(j, r, s, l, fragment, fragmentContainerTransition.f3899b);
                if (!(fragment2 == null || k == null || (k.size() <= 0 && arrayList.size() <= 0))) {
                    final CancellationSignal cancellationSignal = new CancellationSignal();
                    callback.mo18296b(fragment2, cancellationSignal);
                    j.mo18285w(fragment2, v, cancellationSignal, new Runnable() { // from class: androidx.fragment.app.FragmentTransition.3
                        @Override // java.lang.Runnable
                        public void run() {
                            Callback.this.mo18297a(fragment2, cancellationSignal);
                        }
                    });
                }
                if (v != null) {
                    ArrayList<View> arrayList3 = new ArrayList<>();
                    j.mo16836t(v, r, arrayList3, s, k, l, arrayList2);
                    m18298z(j, viewGroup, fragment, view, arrayList2, r, arrayList3, s, k);
                    j.m18284x(viewGroup, arrayList2, arrayMap);
                    j.mo16844c(viewGroup, v);
                    j.m18286s(viewGroup, arrayList2, arrayMap);
                }
            }
        }
    }

    /* renamed from: o */
    private static void m18309o(FragmentManager fragmentManager, int i, FragmentContainerTransition fragmentContainerTransition, View view, ArrayMap<String, String> arrayMap, final Callback callback) {
        Fragment fragment;
        final Fragment fragment2;
        FragmentTransitionImpl j;
        ViewGroup viewGroup = fragmentManager.mContainer.mo18465c() ? (ViewGroup) fragmentManager.mContainer.mo18466b(i) : null;
        if (viewGroup != null && (j = m18314j((fragment2 = fragmentContainerTransition.f3901d), (fragment = fragmentContainerTransition.f3898a))) != null) {
            boolean z = fragmentContainerTransition.f3899b;
            boolean z2 = fragmentContainerTransition.f3902e;
            ArrayList<View> arrayList = new ArrayList<>();
            ArrayList<View> arrayList2 = new ArrayList<>();
            Object r = m18306r(j, fragment, z);
            Object s = m18305s(j, fragment2, z2);
            Object m = m18311m(j, viewGroup, view, arrayMap, fragmentContainerTransition, arrayList2, arrayList, r, s);
            if (r != null || m != null || s != null) {
                ArrayList<View> k = m18313k(j, s, fragment2, arrayList2, view);
                ArrayList<View> k2 = m18313k(j, r, fragment, arrayList, view);
                m18325B(k2, 4);
                Object v = m18302v(j, r, s, m, fragment, z);
                if (!(fragment2 == null || k == null || (k.size() <= 0 && arrayList2.size() <= 0))) {
                    final CancellationSignal cancellationSignal = new CancellationSignal();
                    callback.mo18296b(fragment2, cancellationSignal);
                    j.mo18285w(fragment2, v, cancellationSignal, new Runnable() { // from class: androidx.fragment.app.FragmentTransition.1
                        @Override // java.lang.Runnable
                        public void run() {
                            Callback.this.mo18297a(fragment2, cancellationSignal);
                        }
                    });
                }
                if (v != null) {
                    m18301w(j, s, fragment2, k);
                    ArrayList<String> o = j.m18287o(arrayList);
                    j.mo16836t(v, r, k2, s, k, m, arrayList);
                    j.mo16844c(viewGroup, v);
                    j.m18283y(viewGroup, arrayList2, arrayList, o, arrayMap);
                    m18325B(k2, 0);
                    j.mo16849A(m, arrayList2, arrayList);
                }
            }
        }
    }

    /* renamed from: p */
    private static FragmentContainerTransition m18308p(FragmentContainerTransition fragmentContainerTransition, SparseArray<FragmentContainerTransition> sparseArray, int i) {
        FragmentContainerTransition fragmentContainerTransition2 = fragmentContainerTransition;
        if (fragmentContainerTransition == null) {
            fragmentContainerTransition2 = new FragmentContainerTransition();
            sparseArray.put(i, fragmentContainerTransition2);
        }
        return fragmentContainerTransition2;
    }

    /* renamed from: q */
    private static String m18307q(ArrayMap<String, String> arrayMap, String str) {
        int size = arrayMap.size();
        for (int i = 0; i < size; i++) {
            if (str.equals(arrayMap.m21005o(i))) {
                return arrayMap.m21007k(i);
            }
        }
        return null;
    }

    /* renamed from: r */
    private static Object m18306r(FragmentTransitionImpl fragmentTransitionImpl, Fragment fragment, boolean z) {
        if (fragment == null) {
            return null;
        }
        return fragmentTransitionImpl.mo16842g(z ? fragment.getReenterTransition() : fragment.getEnterTransition());
    }

    /* renamed from: s */
    private static Object m18305s(FragmentTransitionImpl fragmentTransitionImpl, Fragment fragment, boolean z) {
        if (fragment == null) {
            return null;
        }
        return fragmentTransitionImpl.mo16842g(z ? fragment.getReturnTransition() : fragment.getExitTransition());
    }

    /* renamed from: t */
    static View m18304t(ArrayMap<String, View> arrayMap, FragmentContainerTransition fragmentContainerTransition, Object obj, boolean z) {
        ArrayList<String> arrayList;
        BackStackRecord backStackRecord = fragmentContainerTransition.f3900c;
        if (obj == null || arrayMap == null || (arrayList = backStackRecord.f3849n) == null || arrayList.isEmpty()) {
            return null;
        }
        return arrayMap.get(z ? backStackRecord.f3849n.get(0) : backStackRecord.f3850o.get(0));
    }

    /* renamed from: u */
    private static Object m18303u(FragmentTransitionImpl fragmentTransitionImpl, Fragment fragment, Fragment fragment2, boolean z) {
        if (fragment == null || fragment2 == null) {
            return null;
        }
        return fragmentTransitionImpl.mo16848B(fragmentTransitionImpl.mo16842g(z ? fragment2.getSharedElementReturnTransition() : fragment.getSharedElementEnterTransition()));
    }

    /* renamed from: v */
    private static Object m18302v(FragmentTransitionImpl fragmentTransitionImpl, Object obj, Object obj2, Object obj3, Fragment fragment, boolean z) {
        return (obj == null || obj2 == null || fragment == null) ? true : z ? fragment.getAllowReturnTransitionOverlap() : fragment.getAllowEnterTransitionOverlap() ? fragmentTransitionImpl.mo16840n(obj2, obj, obj3) : fragmentTransitionImpl.mo16841m(obj2, obj, obj3);
    }

    /* renamed from: w */
    private static void m18301w(FragmentTransitionImpl fragmentTransitionImpl, Object obj, Fragment fragment, final ArrayList<View> arrayList) {
        if (fragment != null && obj != null && fragment.mAdded && fragment.mHidden && fragment.mHiddenChanged) {
            fragment.setHideReplaced(true);
            fragmentTransitionImpl.mo16837r(obj, fragment.getView(), arrayList);
            OneShotPreDrawListener.m19249a(fragment.mContainer, new Runnable() { // from class: androidx.fragment.app.FragmentTransition.2
                @Override // java.lang.Runnable
                public void run() {
                    FragmentTransition.m18325B(arrayList, 4);
                }
            });
        }
    }

    /* renamed from: x */
    private static FragmentTransitionImpl m18300x() {
        try {
            return (FragmentTransitionImpl) Class.forName("androidx.transition.FragmentTransitionSupport").getDeclaredConstructor(new Class[0]).newInstance(new Object[0]);
        } catch (Exception e) {
            return null;
        }
    }

    /* renamed from: y */
    private static void m18299y(ArrayMap<String, String> arrayMap, ArrayMap<String, View> arrayMap2) {
        for (int size = arrayMap.size() - 1; size >= 0; size--) {
            if (!arrayMap2.containsKey(arrayMap.m21005o(size))) {
                arrayMap.mo18659m(size);
            }
        }
    }

    /* renamed from: z */
    private static void m18298z(final FragmentTransitionImpl fragmentTransitionImpl, ViewGroup viewGroup, final Fragment fragment, final View view, final ArrayList<View> arrayList, final Object obj, final ArrayList<View> arrayList2, final Object obj2, final ArrayList<View> arrayList3) {
        OneShotPreDrawListener.m19249a(viewGroup, new Runnable() { // from class: androidx.fragment.app.FragmentTransition.4
            @Override // java.lang.Runnable
            public void run() {
                Object obj3 = obj;
                if (obj3 != null) {
                    fragmentTransitionImpl.mo16839p(obj3, view);
                    arrayList2.addAll(FragmentTransition.m18313k(fragmentTransitionImpl, obj, fragment, arrayList, view));
                }
                if (arrayList3 != null) {
                    if (obj2 != null) {
                        ArrayList<View> arrayList4 = new ArrayList<>();
                        arrayList4.add(view);
                        fragmentTransitionImpl.mo16838q(obj2, arrayList3, arrayList4);
                    }
                    arrayList3.clear();
                    arrayList3.add(view);
                }
            }
        });
    }
}

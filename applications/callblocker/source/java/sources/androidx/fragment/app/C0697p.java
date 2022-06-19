package androidx.fragment.app;

import android.graphics.Rect;
import android.os.Build;
import android.util.SparseArray;
import android.view.View;
import android.view.ViewGroup;
import androidx.core.app.AbstractC0480l;
import androidx.core.p026h.C0595u;
import androidx.core.p026h.View$OnAttachStateChangeListenerC0592r;
import androidx.fragment.app.AbstractC0695o;
import androidx.p013b.C0373a;
import java.util.ArrayList;
import java.util.Collection;
import java.util.List;
import java.util.Map;
/* renamed from: androidx.fragment.app.p */
/* loaded from: classes-dex2jar.jar:androidx/fragment/app/p.class */
public class C0697p {

    /* renamed from: a */
    private static final int[] f2498a = {0, 3, 0, 1, 5, 4, 7, 6, 9, 8, 10};

    /* renamed from: b */
    private static final AbstractC0708r f2499b;

    /* renamed from: c */
    private static final AbstractC0708r f2500c;

    /* renamed from: androidx.fragment.app.p$a */
    /* loaded from: classes-dex2jar.jar:androidx/fragment/app/p$a.class */
    public static class C0702a {

        /* renamed from: a */
        public Fragment f2529a;

        /* renamed from: b */
        public boolean f2530b;

        /* renamed from: c */
        public C0659a f2531c;

        /* renamed from: d */
        public Fragment f2532d;

        /* renamed from: e */
        public boolean f2533e;

        /* renamed from: f */
        public C0659a f2534f;

        C0702a() {
        }
    }

    static {
        f2499b = Build.VERSION.SDK_INT >= 21 ? new C0703q() : null;
        f2500c = m19645a();
    }

    /* renamed from: a */
    static View m19642a(C0373a<String, View> c0373a, C0702a c0702a, Object obj, boolean z) {
        View view;
        C0659a c0659a = c0702a.f2531c;
        if (obj == null || c0373a == null || c0659a.f2486r == null || c0659a.f2486r.isEmpty()) {
            view = null;
        } else {
            view = c0373a.get(z ? c0659a.f2486r.get(0) : c0659a.f2487s.get(0));
        }
        return view;
    }

    /* renamed from: a */
    private static C0373a<String, String> m19644a(int i, ArrayList<C0659a> arrayList, ArrayList<Boolean> arrayList2, int i2, int i3) {
        ArrayList<String> arrayList3;
        ArrayList<String> arrayList4;
        C0373a<String, String> c0373a = new C0373a<>();
        while (true) {
            i3--;
            if (i3 >= i2) {
                C0659a c0659a = arrayList.get(i3);
                if (c0659a.m19905b(i)) {
                    boolean booleanValue = arrayList2.get(i3).booleanValue();
                    if (c0659a.f2486r != null) {
                        int size = c0659a.f2486r.size();
                        if (booleanValue) {
                            arrayList4 = c0659a.f2486r;
                            arrayList3 = c0659a.f2487s;
                        } else {
                            arrayList3 = c0659a.f2486r;
                            arrayList4 = c0659a.f2487s;
                        }
                        for (int i4 = 0; i4 < size; i4++) {
                            String str = arrayList3.get(i4);
                            String str2 = arrayList4.get(i4);
                            String remove = c0373a.remove(str2);
                            if (remove != null) {
                                c0373a.put(str, remove);
                            } else {
                                c0373a.put(str, str2);
                            }
                        }
                    }
                }
            } else {
                return c0373a;
            }
        }
    }

    /* renamed from: a */
    static C0373a<String, View> m19631a(AbstractC0708r abstractC0708r, C0373a<String, String> c0373a, Object obj, C0702a c0702a) {
        C0373a<String, View> c0373a2;
        AbstractC0480l m19966al;
        ArrayList<String> arrayList;
        String m19641a;
        Fragment fragment = c0702a.f2529a;
        View m20016G = fragment.m20016G();
        if (c0373a.isEmpty() || obj == null || m20016G == null) {
            c0373a.clear();
            c0373a2 = null;
        } else {
            C0373a<String, View> c0373a3 = new C0373a<>();
            abstractC0708r.m19606a((Map<String, View>) c0373a3, m20016G);
            C0659a c0659a = c0702a.f2531c;
            if (c0702a.f2530b) {
                m19966al = fragment.m19965am();
                arrayList = c0659a.f2486r;
            } else {
                m19966al = fragment.m19966al();
                arrayList = c0659a.f2487s;
            }
            if (arrayList != null) {
                c0373a3.m21150a((Collection<?>) arrayList);
                c0373a3.m21150a((Collection<?>) c0373a.values());
            }
            if (m19966al != null) {
                m19966al.m20740a(arrayList, c0373a3);
                for (int size = arrayList.size() - 1; size >= 0; size--) {
                    String str = arrayList.get(size);
                    View view = c0373a3.get(str);
                    if (view == null) {
                        String m19641a2 = m19641a(c0373a, str);
                        if (m19641a2 != null) {
                            c0373a.remove(m19641a2);
                        }
                    } else if (!str.equals(C0595u.m20309o(view)) && (m19641a = m19641a(c0373a, str)) != null) {
                        c0373a.put(m19641a, C0595u.m20309o(view));
                    }
                }
            } else {
                m19643a(c0373a, c0373a3);
            }
            c0373a2 = c0373a3;
        }
        return c0373a2;
    }

    /* renamed from: a */
    private static C0702a m19634a(C0702a c0702a, SparseArray<C0702a> sparseArray, int i) {
        C0702a c0702a2 = c0702a;
        if (c0702a == null) {
            c0702a2 = new C0702a();
            sparseArray.put(i, c0702a2);
        }
        return c0702a2;
    }

    /* renamed from: a */
    private static AbstractC0708r m19645a() {
        AbstractC0708r abstractC0708r;
        try {
            abstractC0708r = (AbstractC0708r) Class.forName("androidx.j.e").getDeclaredConstructor(new Class[0]).newInstance(new Object[0]);
        } catch (Exception e) {
            abstractC0708r = null;
        }
        return abstractC0708r;
    }

    /* JADX WARN: Code restructure failed: missing block: B:42:0x00b6, code lost:
        if (androidx.fragment.app.C0697p.f2500c != null) goto L43;
     */
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private static androidx.fragment.app.AbstractC0708r m19640a(androidx.fragment.app.Fragment r4, androidx.fragment.app.Fragment r5) {
        /*
            r0 = 0
            r6 = r0
            java.util.ArrayList r0 = new java.util.ArrayList
            r1 = r0
            r1.<init>()
            r7 = r0
            r0 = r4
            if (r0 == 0) goto L41
            r0 = r4
            java.lang.Object r0 = r0.m20010P()
            r8 = r0
            r0 = r8
            if (r0 == 0) goto L20
            r0 = r7
            r1 = r8
            boolean r0 = r0.add(r1)
        L20:
            r0 = r4
            java.lang.Object r0 = r0.m20011O()
            r8 = r0
            r0 = r8
            if (r0 == 0) goto L32
            r0 = r7
            r1 = r8
            boolean r0 = r0.add(r1)
        L32:
            r0 = r4
            java.lang.Object r0 = r0.m20007S()
            r4 = r0
            r0 = r4
            if (r0 == 0) goto L41
            r0 = r7
            r1 = r4
            boolean r0 = r0.add(r1)
        L41:
            r0 = r5
            if (r0 == 0) goto L72
            r0 = r5
            java.lang.Object r0 = r0.m20012N()
            r4 = r0
            r0 = r4
            if (r0 == 0) goto L54
            r0 = r7
            r1 = r4
            boolean r0 = r0.add(r1)
        L54:
            r0 = r5
            java.lang.Object r0 = r0.m20009Q()
            r4 = r0
            r0 = r4
            if (r0 == 0) goto L63
            r0 = r7
            r1 = r4
            boolean r0 = r0.add(r1)
        L63:
            r0 = r5
            java.lang.Object r0 = r0.m20008R()
            r4 = r0
            r0 = r4
            if (r0 == 0) goto L72
            r0 = r7
            r1 = r4
            boolean r0 = r0.add(r1)
        L72:
            r0 = r7
            boolean r0 = r0.isEmpty()
            if (r0 == 0) goto L7d
            r0 = r6
            r4 = r0
        L7b:
            r0 = r4
            return r0
        L7d:
            androidx.fragment.app.r r0 = androidx.fragment.app.C0697p.f2499b
            if (r0 == 0) goto L94
            androidx.fragment.app.r r0 = androidx.fragment.app.C0697p.f2499b
            r1 = r7
            boolean r0 = m19624a(r0, r1)
            if (r0 == 0) goto L94
            androidx.fragment.app.r r0 = androidx.fragment.app.C0697p.f2499b
            r4 = r0
            goto L7b
        L94:
            androidx.fragment.app.r r0 = androidx.fragment.app.C0697p.f2500c
            if (r0 == 0) goto Lab
            androidx.fragment.app.r r0 = androidx.fragment.app.C0697p.f2500c
            r1 = r7
            boolean r0 = m19624a(r0, r1)
            if (r0 == 0) goto Lab
            androidx.fragment.app.r r0 = androidx.fragment.app.C0697p.f2500c
            r4 = r0
            goto L7b
        Lab:
            androidx.fragment.app.r r0 = androidx.fragment.app.C0697p.f2499b
            if (r0 != 0) goto Lb9
            r0 = r6
            r4 = r0
            androidx.fragment.app.r r0 = androidx.fragment.app.C0697p.f2500c
            if (r0 == 0) goto L7b
        Lb9:
            java.lang.IllegalArgumentException r0 = new java.lang.IllegalArgumentException
            r1 = r0
            java.lang.String r2 = "Invalid Transition types"
            r1.<init>(r2)
            throw r0
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.fragment.app.C0697p.m19640a(androidx.fragment.app.Fragment, androidx.fragment.app.Fragment):androidx.fragment.app.r");
    }

    /* renamed from: a */
    private static Object m19633a(final AbstractC0708r abstractC0708r, ViewGroup viewGroup, View view, C0373a<String, String> c0373a, C0702a c0702a, ArrayList<View> arrayList, ArrayList<View> arrayList2, Object obj, Object obj2) {
        Object obj3;
        Rect rect;
        View view2;
        final Fragment fragment = c0702a.f2529a;
        final Fragment fragment2 = c0702a.f2532d;
        if (fragment != null) {
            fragment.m20015H().setVisibility(0);
        }
        if (fragment == null || fragment2 == null) {
            obj3 = null;
        } else {
            final boolean z = c0702a.f2530b;
            Object m19630a = c0373a.isEmpty() ? null : m19630a(abstractC0708r, fragment, fragment2, z);
            C0373a<String, View> m19618b = m19618b(abstractC0708r, c0373a, m19630a, c0702a);
            final C0373a<String, View> m19631a = m19631a(abstractC0708r, c0373a, m19630a, c0702a);
            if (c0373a.isEmpty()) {
                if (m19618b != null) {
                    m19618b.clear();
                }
                obj3 = null;
                if (m19631a != null) {
                    m19631a.clear();
                    obj3 = null;
                }
            } else {
                m19622a(arrayList, m19618b, c0373a.keySet());
                m19622a(arrayList2, m19631a, c0373a.values());
                obj3 = m19630a;
            }
            if (obj == null && obj2 == null && obj3 == null) {
                obj3 = null;
            } else {
                m19639a(fragment, fragment2, z, m19618b, true);
                if (obj3 != null) {
                    arrayList2.add(view);
                    abstractC0708r.mo19443a(obj3, view, arrayList);
                    m19626a(abstractC0708r, obj3, obj2, m19618b, c0702a.f2533e, c0702a.f2534f);
                    Rect rect2 = new Rect();
                    View m19642a = m19642a(m19631a, c0702a, obj, z);
                    view2 = m19642a;
                    rect = rect2;
                    if (m19642a != null) {
                        abstractC0708r.mo19445a(obj, rect2);
                        rect = rect2;
                        view2 = m19642a;
                    }
                } else {
                    rect = null;
                    view2 = null;
                }
                final View view3 = view2;
                final Rect rect3 = rect;
                View$OnAttachStateChangeListenerC0592r.m20374a(viewGroup, new Runnable() { // from class: androidx.fragment.app.p.3
                    @Override // java.lang.Runnable
                    public void run() {
                        C0697p.m19639a(fragment, fragment2, z, (C0373a<String, View>) m19631a, false);
                        if (view3 != null) {
                            abstractC0708r.m19615a(view3, rect3);
                        }
                    }
                });
            }
        }
        return obj3;
    }

    /* renamed from: a */
    private static Object m19630a(AbstractC0708r abstractC0708r, Fragment fragment, Fragment fragment2, boolean z) {
        Object obj;
        if (fragment == null || fragment2 == null) {
            obj = null;
        } else {
            obj = abstractC0708r.mo19433c(abstractC0708r.mo19438b(z ? fragment2.m20007S() : fragment.m20008R()));
        }
        return obj;
    }

    /* renamed from: a */
    private static Object m19629a(AbstractC0708r abstractC0708r, Fragment fragment, boolean z) {
        Object mo19438b;
        if (fragment == null) {
            mo19438b = null;
        } else {
            mo19438b = abstractC0708r.mo19438b(z ? fragment.m20009Q() : fragment.m20012N());
        }
        return mo19438b;
    }

    /* renamed from: a */
    private static Object m19625a(AbstractC0708r abstractC0708r, Object obj, Object obj2, Object obj3, Fragment fragment, boolean z) {
        boolean z2 = true;
        if (obj != null) {
            z2 = true;
            if (obj2 != null) {
                z2 = true;
                if (fragment != null) {
                    z2 = z ? fragment.m20005U() : fragment.m20006T();
                }
            }
        }
        return z2 ? abstractC0708r.mo19442a(obj2, obj, obj3) : abstractC0708r.mo19435b(obj2, obj, obj3);
    }

    /* renamed from: a */
    private static String m19641a(C0373a<String, String> c0373a, String str) {
        String str2;
        int size = c0373a.size();
        int i = 0;
        while (true) {
            if (i >= size) {
                str2 = null;
                break;
            } else if (str.equals(c0373a.m21083c(i))) {
                str2 = c0373a.m21085b(i);
                break;
            } else {
                i++;
            }
        }
        return str2;
    }

    /* renamed from: a */
    static ArrayList<View> m19627a(AbstractC0708r abstractC0708r, Object obj, Fragment fragment, ArrayList<View> arrayList, View view) {
        ArrayList<View> arrayList2 = null;
        if (obj != null) {
            ArrayList<View> arrayList3 = new ArrayList<>();
            View m20016G = fragment.m20016G();
            if (m20016G != null) {
                abstractC0708r.m19610a(arrayList3, m20016G);
            }
            if (arrayList != null) {
                arrayList3.removeAll(arrayList);
            }
            arrayList2 = arrayList3;
            if (!arrayList3.isEmpty()) {
                arrayList3.add(view);
                abstractC0708r.mo19440a(obj, arrayList3);
                arrayList2 = arrayList3;
            }
        }
        return arrayList2;
    }

    /* renamed from: a */
    private static void m19643a(C0373a<String, String> c0373a, C0373a<String, View> c0373a2) {
        for (int size = c0373a.size() - 1; size >= 0; size--) {
            if (!c0373a2.containsKey(c0373a.m21083c(size))) {
                c0373a.mo17009d(size);
            }
        }
    }

    /* renamed from: a */
    static void m19639a(Fragment fragment, Fragment fragment2, boolean z, C0373a<String, View> c0373a, boolean z2) {
        AbstractC0480l m19966al = z ? fragment2.m19966al() : fragment.m19966al();
        if (m19966al != null) {
            ArrayList arrayList = new ArrayList();
            ArrayList arrayList2 = new ArrayList();
            int size = c0373a == null ? 0 : c0373a.size();
            for (int i = 0; i < size; i++) {
                arrayList2.add(c0373a.m21085b(i));
                arrayList.add(c0373a.m21083c(i));
            }
            if (z2) {
                m19966al.m20741a(arrayList2, arrayList, null);
            } else {
                m19966al.m20739b(arrayList2, arrayList, null);
            }
        }
    }

    /* renamed from: a */
    public static void m19638a(C0659a c0659a, SparseArray<C0702a> sparseArray, boolean z) {
        int size = c0659a.f2472d.size();
        for (int i = 0; i < size; i++) {
            m19637a(c0659a, c0659a.f2472d.get(i), sparseArray, false, z);
        }
    }

    /* renamed from: a */
    private static void m19637a(C0659a c0659a, AbstractC0695o.C0696a c0696a, SparseArray<C0702a> sparseArray, boolean z, boolean z2) {
        int i;
        boolean z3;
        boolean z4;
        boolean z5;
        boolean z6;
        Fragment fragment = c0696a.f2491b;
        if (fragment == null || (i = fragment.f2259F) == 0) {
            return;
        }
        switch (z ? f2498a[c0696a.f2490a] : c0696a.f2490a) {
            case 1:
            case 7:
                z5 = z2 ? fragment.f2274U : !fragment.f2296t && !fragment.f2261H;
                z6 = true;
                z3 = false;
                z4 = false;
                break;
            case 2:
            default:
                z6 = false;
                z3 = false;
                z4 = false;
                z5 = false;
                break;
            case 3:
            case 6:
                z3 = z2 ? !fragment.f2296t && fragment.f2268O != null && fragment.f2268O.getVisibility() == 0 && fragment.f2276W >= 0.0f : fragment.f2296t && !fragment.f2261H;
                z4 = true;
                z5 = false;
                z6 = false;
                break;
            case 4:
                z3 = z2 ? fragment.f2275V && fragment.f2296t && fragment.f2261H : fragment.f2296t && !fragment.f2261H;
                z4 = true;
                z5 = false;
                z6 = false;
                break;
            case 5:
                z5 = z2 ? fragment.f2275V && !fragment.f2261H && fragment.f2296t : fragment.f2261H;
                z6 = true;
                z3 = false;
                z4 = false;
                break;
        }
        C0702a c0702a = sparseArray.get(i);
        if (z5) {
            c0702a = m19634a(c0702a, sparseArray, i);
            c0702a.f2529a = fragment;
            c0702a.f2530b = z;
            c0702a.f2531c = c0659a;
        }
        if (!z2 && z6) {
            if (c0702a != null && c0702a.f2532d == fragment) {
                c0702a.f2532d = null;
            }
            LayoutInflater$Factory2C0673j layoutInflater$Factory2C0673j = c0659a.f2326a;
            if (fragment.f2287k < 1 && layoutInflater$Factory2C0673j.f2396m >= 1 && !c0659a.f2488t) {
                layoutInflater$Factory2C0673j.m19718k(fragment);
                layoutInflater$Factory2C0673j.m19787a(fragment, 1, 0, 0, false);
            }
        }
        if (z3 && (c0702a == null || c0702a.f2532d == null)) {
            c0702a = m19634a(c0702a, sparseArray, i);
            c0702a.f2532d = fragment;
            c0702a.f2533e = z;
            c0702a.f2534f = c0659a;
        }
        if (z2 || !z4 || c0702a == null || c0702a.f2529a != fragment) {
            return;
        }
        c0702a.f2529a = null;
    }

    /* renamed from: a */
    private static void m19636a(LayoutInflater$Factory2C0673j layoutInflater$Factory2C0673j, int i, C0702a c0702a, View view, C0373a<String, String> c0373a) {
        Fragment fragment;
        Fragment fragment2;
        AbstractC0708r m19640a;
        ViewGroup viewGroup = null;
        if (layoutInflater$Factory2C0673j.f2398o.mo19841a()) {
            viewGroup = (ViewGroup) layoutInflater$Factory2C0673j.f2398o.mo19840a(i);
        }
        if (viewGroup == null || (m19640a = m19640a((fragment2 = c0702a.f2532d), (fragment = c0702a.f2529a))) == null) {
            return;
        }
        boolean z = c0702a.f2530b;
        boolean z2 = c0702a.f2533e;
        ArrayList<View> arrayList = new ArrayList<>();
        ArrayList<View> arrayList2 = new ArrayList<>();
        Object m19629a = m19629a(m19640a, fragment, z);
        Object m19617b = m19617b(m19640a, fragment2, z2);
        Object m19633a = m19633a(m19640a, viewGroup, view, c0373a, c0702a, arrayList2, arrayList, m19629a, m19617b);
        if (m19629a == null && m19633a == null && m19617b == null) {
            return;
        }
        ArrayList<View> m19627a = m19627a(m19640a, m19617b, fragment2, arrayList2, view);
        ArrayList<View> m19627a2 = m19627a(m19640a, m19629a, fragment, arrayList, view);
        m19623a(m19627a2, 4);
        Object m19625a = m19625a(m19640a, m19629a, m19617b, m19633a, fragment, z);
        if (m19625a == null) {
            return;
        }
        m19628a(m19640a, m19617b, fragment2, m19627a);
        ArrayList<String> m19611a = m19640a.m19611a(arrayList);
        m19640a.mo19441a(m19625a, m19629a, m19627a2, m19617b, m19627a, m19633a, arrayList);
        m19640a.mo19448a(viewGroup, m19625a);
        m19640a.m19614a(viewGroup, arrayList2, arrayList, m19611a, c0373a);
        m19623a(m19627a2, 0);
        m19640a.mo19439a(m19633a, arrayList2, arrayList);
    }

    /* renamed from: a */
    public static void m19635a(LayoutInflater$Factory2C0673j layoutInflater$Factory2C0673j, ArrayList<C0659a> arrayList, ArrayList<Boolean> arrayList2, int i, int i2, boolean z) {
        if (layoutInflater$Factory2C0673j.f2396m < 1) {
            return;
        }
        SparseArray sparseArray = new SparseArray();
        for (int i3 = i; i3 < i2; i3++) {
            C0659a c0659a = arrayList.get(i3);
            if (arrayList2.get(i3).booleanValue()) {
                m19621b(c0659a, sparseArray, z);
            } else {
                m19638a(c0659a, sparseArray, z);
            }
        }
        if (sparseArray.size() == 0) {
            return;
        }
        View view = new View(layoutInflater$Factory2C0673j.f2397n.m19828l());
        int size = sparseArray.size();
        for (int i4 = 0; i4 < size; i4++) {
            int keyAt = sparseArray.keyAt(i4);
            C0373a<String, String> m19644a = m19644a(keyAt, arrayList, arrayList2, i, i2);
            C0702a c0702a = (C0702a) sparseArray.valueAt(i4);
            if (z) {
                m19636a(layoutInflater$Factory2C0673j, keyAt, c0702a, view, m19644a);
            } else {
                m19620b(layoutInflater$Factory2C0673j, keyAt, c0702a, view, m19644a);
            }
        }
    }

    /* renamed from: a */
    private static void m19632a(final AbstractC0708r abstractC0708r, ViewGroup viewGroup, final Fragment fragment, final View view, final ArrayList<View> arrayList, final Object obj, final ArrayList<View> arrayList2, final Object obj2, final ArrayList<View> arrayList3) {
        View$OnAttachStateChangeListenerC0592r.m20374a(viewGroup, new Runnable() { // from class: androidx.fragment.app.p.2
            @Override // java.lang.Runnable
            public void run() {
                if (obj != null) {
                    abstractC0708r.mo19432c(obj, view);
                    arrayList2.addAll(C0697p.m19627a(abstractC0708r, obj, fragment, arrayList, view));
                }
                if (arrayList3 != null) {
                    if (obj2 != null) {
                        ArrayList<View> arrayList4 = new ArrayList<>();
                        arrayList4.add(view);
                        abstractC0708r.mo19434b(obj2, arrayList3, arrayList4);
                    }
                    arrayList3.clear();
                    arrayList3.add(view);
                }
            }
        });
    }

    /* renamed from: a */
    private static void m19628a(AbstractC0708r abstractC0708r, Object obj, Fragment fragment, final ArrayList<View> arrayList) {
        if (fragment == null || obj == null || !fragment.f2296t || !fragment.f2261H || !fragment.f2275V) {
            return;
        }
        fragment.m19932k(true);
        abstractC0708r.mo19436b(obj, fragment.m20016G(), arrayList);
        View$OnAttachStateChangeListenerC0592r.m20374a(fragment.f2267N, new Runnable() { // from class: androidx.fragment.app.p.1
            @Override // java.lang.Runnable
            public void run() {
                C0697p.m19623a(arrayList, 4);
            }
        });
    }

    /* renamed from: a */
    private static void m19626a(AbstractC0708r abstractC0708r, Object obj, Object obj2, C0373a<String, View> c0373a, boolean z, C0659a c0659a) {
        if (c0659a.f2486r == null || c0659a.f2486r.isEmpty()) {
            return;
        }
        View view = c0373a.get(z ? c0659a.f2487s.get(0) : c0659a.f2486r.get(0));
        abstractC0708r.mo19444a(obj, view);
        if (obj2 == null) {
            return;
        }
        abstractC0708r.mo19444a(obj2, view);
    }

    /* renamed from: a */
    static void m19623a(ArrayList<View> arrayList, int i) {
        if (arrayList == null) {
            return;
        }
        for (int size = arrayList.size() - 1; size >= 0; size--) {
            arrayList.get(size).setVisibility(i);
        }
    }

    /* renamed from: a */
    private static void m19622a(ArrayList<View> arrayList, C0373a<String, View> c0373a, Collection<String> collection) {
        for (int size = c0373a.size() - 1; size >= 0; size--) {
            View c = c0373a.m21083c(size);
            if (collection.contains(C0595u.m20309o(c))) {
                arrayList.add(c);
            }
        }
    }

    /* renamed from: a */
    private static boolean m19624a(AbstractC0708r abstractC0708r, List<Object> list) {
        boolean z = false;
        int size = list.size();
        int i = 0;
        while (true) {
            if (i >= size) {
                z = true;
                break;
            } else if (!abstractC0708r.mo19446a(list.get(i))) {
                break;
            } else {
                i++;
            }
        }
        return z;
    }

    /* renamed from: b */
    private static C0373a<String, View> m19618b(AbstractC0708r abstractC0708r, C0373a<String, String> c0373a, Object obj, C0702a c0702a) {
        C0373a<String, View> c0373a2;
        AbstractC0480l m19965am;
        ArrayList<String> arrayList;
        if (c0373a.isEmpty() || obj == null) {
            c0373a.clear();
            c0373a2 = null;
        } else {
            Fragment fragment = c0702a.f2532d;
            C0373a<String, View> c0373a3 = new C0373a<>();
            abstractC0708r.m19606a((Map<String, View>) c0373a3, fragment.m20015H());
            C0659a c0659a = c0702a.f2534f;
            if (c0702a.f2533e) {
                m19965am = fragment.m19966al();
                arrayList = c0659a.f2487s;
            } else {
                m19965am = fragment.m19965am();
                arrayList = c0659a.f2486r;
            }
            c0373a3.m21150a((Collection<?>) arrayList);
            if (m19965am != null) {
                m19965am.m20740a(arrayList, c0373a3);
                for (int size = arrayList.size() - 1; size >= 0; size--) {
                    String str = arrayList.get(size);
                    View view = c0373a3.get(str);
                    if (view == null) {
                        c0373a.remove(str);
                    } else if (!str.equals(C0595u.m20309o(view))) {
                        c0373a.put(C0595u.m20309o(view), c0373a.remove(str));
                    }
                }
            } else {
                c0373a.m21150a((Collection<?>) c0373a3.keySet());
            }
            c0373a2 = c0373a3;
        }
        return c0373a2;
    }

    /* renamed from: b */
    private static Object m19619b(final AbstractC0708r abstractC0708r, ViewGroup viewGroup, final View view, final C0373a<String, String> c0373a, final C0702a c0702a, final ArrayList<View> arrayList, final ArrayList<View> arrayList2, final Object obj, Object obj2) {
        Object obj3;
        Rect rect;
        final Fragment fragment = c0702a.f2529a;
        final Fragment fragment2 = c0702a.f2532d;
        if (fragment == null || fragment2 == null) {
            obj3 = null;
        } else {
            final boolean z = c0702a.f2530b;
            obj3 = c0373a.isEmpty() ? null : m19630a(abstractC0708r, fragment, fragment2, z);
            C0373a<String, View> m19618b = m19618b(abstractC0708r, c0373a, obj3, c0702a);
            if (c0373a.isEmpty()) {
                obj3 = null;
            } else {
                arrayList.addAll(m19618b.values());
            }
            if (obj == null && obj2 == null && obj3 == null) {
                obj3 = null;
            } else {
                m19639a(fragment, fragment2, z, m19618b, true);
                if (obj3 != null) {
                    Rect rect2 = new Rect();
                    abstractC0708r.mo19443a(obj3, view, arrayList);
                    m19626a(abstractC0708r, obj3, obj2, m19618b, c0702a.f2533e, c0702a.f2534f);
                    rect = rect2;
                    if (obj != null) {
                        abstractC0708r.mo19445a(obj, rect2);
                        rect = rect2;
                    }
                } else {
                    rect = null;
                }
                final Object obj4 = obj3;
                final Rect rect3 = rect;
                View$OnAttachStateChangeListenerC0592r.m20374a(viewGroup, new Runnable() { // from class: androidx.fragment.app.p.4
                    @Override // java.lang.Runnable
                    public void run() {
                        C0373a<String, View> m19631a = C0697p.m19631a(abstractC0708r, c0373a, obj4, c0702a);
                        if (m19631a != null) {
                            arrayList2.addAll(m19631a.values());
                            arrayList2.add(view);
                        }
                        C0697p.m19639a(fragment, fragment2, z, m19631a, false);
                        if (obj4 != null) {
                            abstractC0708r.mo19439a(obj4, arrayList, arrayList2);
                            View m19642a = C0697p.m19642a(m19631a, c0702a, obj, z);
                            if (m19642a == null) {
                                return;
                            }
                            abstractC0708r.m19615a(m19642a, rect3);
                        }
                    }
                });
            }
        }
        return obj3;
    }

    /* renamed from: b */
    private static Object m19617b(AbstractC0708r abstractC0708r, Fragment fragment, boolean z) {
        Object mo19438b;
        if (fragment == null) {
            mo19438b = null;
        } else {
            mo19438b = abstractC0708r.mo19438b(z ? fragment.m20011O() : fragment.m20010P());
        }
        return mo19438b;
    }

    /* renamed from: b */
    public static void m19621b(C0659a c0659a, SparseArray<C0702a> sparseArray, boolean z) {
        if (!c0659a.f2326a.f2398o.mo19841a()) {
            return;
        }
        for (int size = c0659a.f2472d.size() - 1; size >= 0; size--) {
            m19637a(c0659a, c0659a.f2472d.get(size), sparseArray, true, z);
        }
    }

    /* renamed from: b */
    private static void m19620b(LayoutInflater$Factory2C0673j layoutInflater$Factory2C0673j, int i, C0702a c0702a, View view, C0373a<String, String> c0373a) {
        Fragment fragment;
        Fragment fragment2;
        AbstractC0708r m19640a;
        ViewGroup viewGroup = null;
        if (layoutInflater$Factory2C0673j.f2398o.mo19841a()) {
            viewGroup = (ViewGroup) layoutInflater$Factory2C0673j.f2398o.mo19840a(i);
        }
        if (viewGroup == null || (m19640a = m19640a((fragment2 = c0702a.f2532d), (fragment = c0702a.f2529a))) == null) {
            return;
        }
        boolean z = c0702a.f2530b;
        boolean z2 = c0702a.f2533e;
        Object m19629a = m19629a(m19640a, fragment, z);
        Object m19617b = m19617b(m19640a, fragment2, z2);
        ArrayList arrayList = new ArrayList();
        ArrayList<View> arrayList2 = new ArrayList<>();
        Object m19619b = m19619b(m19640a, viewGroup, view, c0373a, c0702a, arrayList, arrayList2, m19629a, m19617b);
        if (m19629a == null && m19619b == null && m19617b == null) {
            return;
        }
        ArrayList<View> m19627a = m19627a(m19640a, m19617b, fragment2, arrayList, view);
        if (m19627a == null || m19627a.isEmpty()) {
            m19617b = null;
        }
        m19640a.mo19437b(m19629a, view);
        Object m19625a = m19625a(m19640a, m19629a, m19617b, m19619b, fragment, c0702a.f2530b);
        if (m19625a == null) {
            return;
        }
        ArrayList<View> arrayList3 = new ArrayList<>();
        m19640a.mo19441a(m19625a, m19629a, arrayList3, m19617b, m19627a, m19619b, arrayList2);
        m19632a(m19640a, viewGroup, fragment, view, arrayList2, m19629a, arrayList3, m19617b, m19627a);
        m19640a.m19613a((View) viewGroup, arrayList2, (Map<String, String>) c0373a);
        m19640a.mo19448a(viewGroup, m19625a);
        m19640a.m19612a(viewGroup, arrayList2, (Map<String, String>) c0373a);
    }
}

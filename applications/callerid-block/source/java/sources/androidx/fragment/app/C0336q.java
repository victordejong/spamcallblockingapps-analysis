package androidx.fragment.app;

import android.graphics.Rect;
import android.os.Build;
import android.util.SparseArray;
import android.view.View;
import android.view.ViewGroup;
import androidx.core.app.AbstractC0261n;
import d.h.i.a;
import d.h.m.q;
import d.h.m.t;
import java.util.ArrayList;
import java.util.Collection;
import java.util.List;
import java.util.Map;
/* renamed from: androidx.fragment.app.q */
/* loaded from: classes-dex2jar.jar:androidx/fragment/app/q.class */
public class C0336q {

    /* renamed from: a */
    private static final int[] f1960a = {0, 3, 0, 1, 5, 4, 7, 6, 9, 8, 10};

    /* renamed from: b */
    private static final AbstractC0345s f1961b;

    /* renamed from: c */
    private static final AbstractC0345s f1962c;

    /* renamed from: androidx.fragment.app.q$a */
    /* loaded from: classes-dex2jar.jar:androidx/fragment/app/q$a.class */
    public static final class RunnableC0337a implements Runnable {

        /* renamed from: b */
        final /* synthetic */ AbstractC0343g f1963b;

        /* renamed from: c */
        final /* synthetic */ Fragment f1964c;

        /* renamed from: d */
        final /* synthetic */ a f1965d;

        RunnableC0337a(AbstractC0343g abstractC0343g, Fragment fragment, a aVar) {
            this.f1963b = abstractC0343g;
            this.f1964c = fragment;
            this.f1965d = aVar;
        }

        @Override // java.lang.Runnable
        public void run() {
            this.f1963b.m13052a(this.f1964c, this.f1965d);
        }
    }

    /* renamed from: androidx.fragment.app.q$b */
    /* loaded from: classes-dex2jar.jar:androidx/fragment/app/q$b.class */
    public static final class RunnableC0338b implements Runnable {

        /* renamed from: b */
        final /* synthetic */ ArrayList f1966b;

        RunnableC0338b(ArrayList arrayList) {
            this.f1966b = arrayList;
        }

        @Override // java.lang.Runnable
        public void run() {
            C0336q.m13080B(this.f1966b, 4);
        }
    }

    /* renamed from: androidx.fragment.app.q$c */
    /* loaded from: classes-dex2jar.jar:androidx/fragment/app/q$c.class */
    public static final class RunnableC0339c implements Runnable {

        /* renamed from: b */
        final /* synthetic */ AbstractC0343g f1967b;

        /* renamed from: c */
        final /* synthetic */ Fragment f1968c;

        /* renamed from: d */
        final /* synthetic */ a f1969d;

        RunnableC0339c(AbstractC0343g abstractC0343g, Fragment fragment, a aVar) {
            this.f1967b = abstractC0343g;
            this.f1968c = fragment;
            this.f1969d = aVar;
        }

        @Override // java.lang.Runnable
        public void run() {
            this.f1967b.m13052a(this.f1968c, this.f1969d);
        }
    }

    /* renamed from: androidx.fragment.app.q$d */
    /* loaded from: classes-dex2jar.jar:androidx/fragment/app/q$d.class */
    public static final class RunnableC0340d implements Runnable {

        /* renamed from: b */
        final /* synthetic */ Object f1970b;

        /* renamed from: c */
        final /* synthetic */ AbstractC0345s f1971c;

        /* renamed from: d */
        final /* synthetic */ View f1972d;

        /* renamed from: e */
        final /* synthetic */ Fragment f1973e;

        /* renamed from: f */
        final /* synthetic */ ArrayList f1974f;

        /* renamed from: g */
        final /* synthetic */ ArrayList f1975g;

        /* renamed from: h */
        final /* synthetic */ ArrayList f1976h;

        /* renamed from: i */
        final /* synthetic */ Object f1977i;

        RunnableC0340d(Object obj, AbstractC0345s abstractC0345s, View view, Fragment fragment, ArrayList arrayList, ArrayList arrayList2, ArrayList arrayList3, Object obj2) {
            this.f1970b = obj;
            this.f1971c = abstractC0345s;
            this.f1972d = view;
            this.f1973e = fragment;
            this.f1974f = arrayList;
            this.f1975g = arrayList2;
            this.f1976h = arrayList3;
            this.f1977i = obj2;
        }

        @Override // java.lang.Runnable
        public void run() {
            Object obj = this.f1970b;
            if (obj != null) {
                this.f1971c.m13033p(obj, this.f1972d);
                this.f1975g.addAll(C0336q.m13068k(this.f1971c, this.f1970b, this.f1973e, this.f1974f, this.f1972d));
            }
            if (this.f1976h != null) {
                if (this.f1977i != null) {
                    ArrayList<View> arrayList = new ArrayList<>();
                    arrayList.add(this.f1972d);
                    this.f1971c.m13032q(this.f1977i, this.f1976h, arrayList);
                }
                this.f1976h.clear();
                this.f1976h.add(this.f1972d);
            }
        }
    }

    /* renamed from: androidx.fragment.app.q$e */
    /* loaded from: classes-dex2jar.jar:androidx/fragment/app/q$e.class */
    public static final class RunnableC0341e implements Runnable {

        /* renamed from: b */
        final /* synthetic */ Fragment f1978b;

        /* renamed from: c */
        final /* synthetic */ Fragment f1979c;

        /* renamed from: d */
        final /* synthetic */ boolean f1980d;

        /* renamed from: e */
        final /* synthetic */ d.e.a f1981e;

        /* renamed from: f */
        final /* synthetic */ View f1982f;

        /* renamed from: g */
        final /* synthetic */ AbstractC0345s f1983g;

        /* renamed from: h */
        final /* synthetic */ Rect f1984h;

        RunnableC0341e(Fragment fragment, Fragment fragment2, boolean z, d.e.a aVar, View view, AbstractC0345s abstractC0345s, Rect rect) {
            this.f1978b = fragment;
            this.f1979c = fragment2;
            this.f1980d = z;
            this.f1981e = aVar;
            this.f1982f = view;
            this.f1983g = abstractC0345s;
            this.f1984h = rect;
        }

        @Override // java.lang.Runnable
        public void run() {
            C0336q.m13073f(this.f1978b, this.f1979c, this.f1980d, this.f1981e, false);
            View view = this.f1982f;
            if (view != null) {
                this.f1983g.m13038k(view, this.f1984h);
            }
        }
    }

    /* renamed from: androidx.fragment.app.q$f */
    /* loaded from: classes-dex2jar.jar:androidx/fragment/app/q$f.class */
    public static final class RunnableC0342f implements Runnable {

        /* renamed from: b */
        final /* synthetic */ AbstractC0345s f1985b;

        /* renamed from: c */
        final /* synthetic */ d.e.a f1986c;

        /* renamed from: d */
        final /* synthetic */ Object f1987d;

        /* renamed from: e */
        final /* synthetic */ C0344h f1988e;

        /* renamed from: f */
        final /* synthetic */ ArrayList f1989f;

        /* renamed from: g */
        final /* synthetic */ View f1990g;

        /* renamed from: h */
        final /* synthetic */ Fragment f1991h;

        /* renamed from: i */
        final /* synthetic */ Fragment f1992i;

        /* renamed from: j */
        final /* synthetic */ boolean f1993j;

        /* renamed from: k */
        final /* synthetic */ ArrayList f1994k;

        /* renamed from: l */
        final /* synthetic */ Object f1995l;

        /* renamed from: m */
        final /* synthetic */ Rect f1996m;

        RunnableC0342f(AbstractC0345s abstractC0345s, d.e.a aVar, Object obj, C0344h c0344h, ArrayList arrayList, View view, Fragment fragment, Fragment fragment2, boolean z, ArrayList arrayList2, Object obj2, Rect rect) {
            this.f1985b = abstractC0345s;
            this.f1986c = aVar;
            this.f1987d = obj;
            this.f1988e = c0344h;
            this.f1989f = arrayList;
            this.f1990g = view;
            this.f1991h = fragment;
            this.f1992i = fragment2;
            this.f1993j = z;
            this.f1994k = arrayList2;
            this.f1995l = obj2;
            this.f1996m = rect;
        }

        @Override // java.lang.Runnable
        public void run() {
            d.e.a<String, View> m13071h = C0336q.m13071h(this.f1985b, this.f1986c, this.f1987d, this.f1988e);
            if (m13071h != null) {
                this.f1989f.addAll(m13071h.values());
                this.f1989f.add(this.f1990g);
            }
            C0336q.m13073f(this.f1991h, this.f1992i, this.f1993j, m13071h, false);
            Object obj = this.f1987d;
            if (obj != null) {
                this.f1985b.m13050A(obj, this.f1994k, this.f1989f);
                View m13059t = C0336q.m13059t(m13071h, this.f1988e, this.f1995l, this.f1993j);
                if (m13059t == null) {
                    return;
                }
                this.f1985b.m13038k(m13059t, this.f1996m);
            }
        }
    }

    /* renamed from: androidx.fragment.app.q$g */
    /* loaded from: classes-dex2jar.jar:androidx/fragment/app/q$g.class */
    public interface AbstractC0343g {
        /* renamed from: a */
        void m13052a(Fragment fragment, a aVar);

        /* renamed from: b */
        void m13051b(Fragment fragment, a aVar);
    }

    /* renamed from: androidx.fragment.app.q$h */
    /* loaded from: classes-dex2jar.jar:androidx/fragment/app/q$h.class */
    public static class C0344h {

        /* renamed from: a */
        public Fragment f1997a;

        /* renamed from: b */
        public boolean f1998b;

        /* renamed from: c */
        public a f1999c;

        /* renamed from: d */
        public Fragment f2000d;

        /* renamed from: e */
        public boolean f2001e;

        /* renamed from: f */
        public a f2002f;

        C0344h() {
        }
    }

    static {
        f1961b = Build.VERSION.SDK_INT >= 21 ? new r() : null;
        f1962c = m13055x();
    }

    /* renamed from: A */
    private static void m13081A(AbstractC0345s abstractC0345s, Object obj, Object obj2, d.e.a<String, View> aVar, boolean z, a aVar2) {
        ArrayList<String> arrayList = aVar2.f1948m;
        if (arrayList == null || arrayList.isEmpty()) {
            return;
        }
        View view = (View) aVar.get((z ? aVar2.f1949n : aVar2.f1948m).get(0));
        abstractC0345s.m13027v(obj, view);
        if (obj2 == null) {
            return;
        }
        abstractC0345s.m13027v(obj2, view);
    }

    /* renamed from: B */
    static void m13080B(ArrayList<View> arrayList, int i) {
        if (arrayList == null) {
            return;
        }
        for (int size = arrayList.size() - 1; size >= 0; size--) {
            arrayList.get(size).setVisibility(i);
        }
    }

    /* renamed from: C */
    public static void m13079C(AbstractC0325j abstractC0325j, ArrayList<a> arrayList, ArrayList<Boolean> arrayList2, int i, int i2, boolean z, AbstractC0343g abstractC0343g) {
        if (abstractC0325j.f1913n < 1) {
            return;
        }
        SparseArray sparseArray = new SparseArray();
        for (int i3 = i; i3 < i2; i3++) {
            a aVar = arrayList.get(i3);
            if (arrayList2.get(i3).booleanValue()) {
                m13074e(aVar, sparseArray, z);
            } else {
                m13076c(aVar, sparseArray, z);
            }
        }
        if (sparseArray.size() == 0) {
            return;
        }
        View view = new View(abstractC0325j.f1914o.h());
        int size = sparseArray.size();
        for (int i4 = 0; i4 < size; i4++) {
            int keyAt = sparseArray.keyAt(i4);
            d.e.a<String, String> m13075d = m13075d(keyAt, arrayList, arrayList2, i, i2);
            C0344h c0344h = (C0344h) sparseArray.valueAt(i4);
            if (z) {
                m13064o(abstractC0325j, keyAt, c0344h, view, m13075d, abstractC0343g);
            } else {
                m13065n(abstractC0325j, keyAt, c0344h, view, m13075d, abstractC0343g);
            }
        }
    }

    /* renamed from: a */
    private static void m13078a(ArrayList<View> arrayList, d.e.a<String, View> aVar, Collection<String> collection) {
        for (int size = aVar.size() - 1; size >= 0; size--) {
            View view = (View) aVar.m(size);
            if (collection.contains(t.J(view))) {
                arrayList.add(view);
            }
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:33:0x0086, code lost:
        if (r0.l != false) goto L71;
     */
    /* JADX WARN: Code restructure failed: missing block: B:57:0x00f5, code lost:
        r11 = true;
     */
    /* JADX WARN: Code restructure failed: missing block: B:70:0x013e, code lost:
        if (r0.z == false) goto L71;
     */
    /* JADX WARN: Code restructure failed: missing block: B:71:0x0141, code lost:
        r12 = true;
     */
    /* JADX WARN: Code restructure failed: missing block: B:98:0x01d9, code lost:
        if (r5.f2000d == null) goto L99;
     */
    /* JADX WARN: Removed duplicated region for block: B:102:0x01fd  */
    /* JADX WARN: Removed duplicated region for block: B:110:? A[ADDED_TO_REGION, RETURN, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:76:0x0163  */
    /* JADX WARN: Removed duplicated region for block: B:79:0x0181  */
    /* JADX WARN: Removed duplicated region for block: B:95:0x01ce  */
    /* renamed from: b */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private static void m13077b(androidx.fragment.app.a r4, androidx.fragment.app.AbstractC0334p.C0335a r5, android.util.SparseArray<androidx.fragment.app.C0336q.C0344h> r6, boolean r7, boolean r8) {
        /*
            Method dump skipped, instructions count: 536
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.fragment.app.C0336q.m13077b(androidx.fragment.app.a, androidx.fragment.app.p$a, android.util.SparseArray, boolean, boolean):void");
    }

    /* renamed from: c */
    public static void m13076c(a aVar, SparseArray<C0344h> sparseArray, boolean z) {
        int size = aVar.f1936a.size();
        for (int i = 0; i < size; i++) {
            m13077b(aVar, aVar.f1936a.get(i), sparseArray, false, z);
        }
    }

    /* renamed from: d */
    private static d.e.a<String, String> m13075d(int i, ArrayList<a> arrayList, ArrayList<Boolean> arrayList2, int i2, int i3) {
        ArrayList<String> arrayList3;
        ArrayList<String> arrayList4;
        d.e.a<String, String> aVar = new d.e.a<>();
        while (true) {
            i3--;
            if (i3 >= i2) {
                a aVar2 = arrayList.get(i3);
                if (aVar2.x(i)) {
                    boolean booleanValue = arrayList2.get(i3).booleanValue();
                    ArrayList<String> arrayList5 = aVar2.f1948m;
                    if (arrayList5 != null) {
                        int size = arrayList5.size();
                        if (booleanValue) {
                            arrayList4 = aVar2.f1948m;
                            arrayList3 = aVar2.f1949n;
                        } else {
                            arrayList3 = aVar2.f1948m;
                            arrayList4 = aVar2.f1949n;
                        }
                        for (int i4 = 0; i4 < size; i4++) {
                            String str = arrayList3.get(i4);
                            String str2 = arrayList4.get(i4);
                            String str3 = (String) aVar.remove(str2);
                            if (str3 != null) {
                                aVar.put(str, str3);
                            } else {
                                aVar.put(str, str2);
                            }
                        }
                    }
                }
            } else {
                return aVar;
            }
        }
    }

    /* renamed from: e */
    public static void m13074e(a aVar, SparseArray<C0344h> sparseArray, boolean z) {
        if (!aVar.q.f1915p.m13297f()) {
            return;
        }
        for (int size = aVar.f1936a.size() - 1; size >= 0; size--) {
            m13077b(aVar, aVar.f1936a.get(size), sparseArray, true, z);
        }
    }

    /* renamed from: f */
    static void m13073f(Fragment fragment, Fragment fragment2, boolean z, d.e.a<String, View> aVar, boolean z2) {
        AbstractC0261n y = z ? fragment2.y() : fragment.y();
        if (y != null) {
            ArrayList arrayList = new ArrayList();
            ArrayList arrayList2 = new ArrayList();
            int size = aVar == null ? 0 : aVar.size();
            for (int i = 0; i < size; i++) {
                arrayList2.add(aVar.i(i));
                arrayList.add(aVar.m(i));
            }
            if (z2) {
                y.m13573c(arrayList2, arrayList, null);
            } else {
                y.m13574b(arrayList2, arrayList, null);
            }
        }
    }

    /* renamed from: g */
    private static boolean m13072g(AbstractC0345s abstractC0345s, List<Object> list) {
        int size = list.size();
        for (int i = 0; i < size; i++) {
            if (!abstractC0345s.m13044e(list.get(i))) {
                return false;
            }
        }
        return true;
    }

    /* renamed from: h */
    static d.e.a<String, View> m13071h(AbstractC0345s abstractC0345s, d.e.a<String, String> aVar, Object obj, C0344h c0344h) {
        AbstractC0261n abstractC0261n;
        ArrayList<String> arrayList;
        String m13062q;
        Fragment fragment = c0344h.f1997a;
        View S = fragment.S();
        if (aVar.isEmpty() || obj == null || S == null) {
            aVar.clear();
            return null;
        }
        Map<String, View> aVar2 = new d.e.a<>();
        abstractC0345s.m13039j(aVar2, S);
        a aVar3 = c0344h.f1999c;
        if (c0344h.f1998b) {
            abstractC0261n = fragment.A();
            arrayList = aVar3.f1948m;
        } else {
            abstractC0261n = fragment.y();
            arrayList = aVar3.f1949n;
        }
        if (arrayList != null) {
            aVar2.o(arrayList);
            aVar2.o(aVar.values());
        }
        if (abstractC0261n != null) {
            abstractC0261n.m13575a(arrayList, aVar2);
            for (int size = arrayList.size() - 1; size >= 0; size--) {
                String str = arrayList.get(size);
                View view = (View) aVar2.get(str);
                if (view == null) {
                    String m13062q2 = m13062q(aVar, str);
                    if (m13062q2 != null) {
                        aVar.remove(m13062q2);
                    }
                } else if (!str.equals(t.J(view)) && (m13062q = m13062q(aVar, str)) != null) {
                    aVar.put(m13062q, t.J(view));
                }
            }
        } else {
            m13054y(aVar, aVar2);
        }
        return aVar2;
    }

    /* renamed from: i */
    private static d.e.a<String, View> m13070i(AbstractC0345s abstractC0345s, d.e.a<String, String> aVar, Object obj, C0344h c0344h) {
        AbstractC0261n abstractC0261n;
        ArrayList<String> arrayList;
        if (aVar.isEmpty() || obj == null) {
            aVar.clear();
            return null;
        }
        Fragment fragment = c0344h.f2000d;
        Map<String, View> aVar2 = new d.e.a<>();
        abstractC0345s.m13039j(aVar2, fragment.m1());
        a aVar3 = c0344h.f2002f;
        if (c0344h.f2001e) {
            abstractC0261n = fragment.y();
            arrayList = aVar3.f1949n;
        } else {
            abstractC0261n = fragment.A();
            arrayList = aVar3.f1948m;
        }
        if (arrayList != null) {
            aVar2.o(arrayList);
        }
        if (abstractC0261n != null) {
            abstractC0261n.m13575a(arrayList, aVar2);
            for (int size = arrayList.size() - 1; size >= 0; size--) {
                String str = arrayList.get(size);
                View view = (View) aVar2.get(str);
                if (view == null) {
                    aVar.remove(str);
                } else if (!str.equals(t.J(view))) {
                    aVar.put(t.J(view), (String) aVar.remove(str));
                }
            }
        } else {
            aVar.o(aVar2.keySet());
        }
        return aVar2;
    }

    /* renamed from: j */
    private static AbstractC0345s m13069j(Fragment fragment, Fragment fragment2) {
        ArrayList arrayList = new ArrayList();
        if (fragment != null) {
            Object z = fragment.z();
            if (z != null) {
                arrayList.add(z);
            }
            Object L = fragment.L();
            if (L != null) {
                arrayList.add(L);
            }
            Object N = fragment.N();
            if (N != null) {
                arrayList.add(N);
            }
        }
        if (fragment2 != null) {
            Object x = fragment2.x();
            if (x != null) {
                arrayList.add(x);
            }
            Object I = fragment2.I();
            if (I != null) {
                arrayList.add(I);
            }
            Object M = fragment2.M();
            if (M != null) {
                arrayList.add(M);
            }
        }
        if (arrayList.isEmpty()) {
            return null;
        }
        AbstractC0345s abstractC0345s = f1961b;
        if (abstractC0345s != null && m13072g(abstractC0345s, arrayList)) {
            return abstractC0345s;
        }
        AbstractC0345s abstractC0345s2 = f1962c;
        if (abstractC0345s2 != null && m13072g(abstractC0345s2, arrayList)) {
            return abstractC0345s2;
        }
        if (abstractC0345s != null || abstractC0345s2 != null) {
            throw new IllegalArgumentException("Invalid Transition types");
        }
        return null;
    }

    /* renamed from: k */
    static ArrayList<View> m13068k(AbstractC0345s abstractC0345s, Object obj, Fragment fragment, ArrayList<View> arrayList, View view) {
        ArrayList<View> arrayList2;
        if (obj != null) {
            ArrayList<View> arrayList3 = new ArrayList<>();
            View S = fragment.S();
            if (S != null) {
                abstractC0345s.m13043f(arrayList3, S);
            }
            if (arrayList != null) {
                arrayList3.removeAll(arrayList);
            }
            arrayList2 = arrayList3;
            if (!arrayList3.isEmpty()) {
                arrayList3.add(view);
                abstractC0345s.m13047b(obj, arrayList3);
                arrayList2 = arrayList3;
            }
        } else {
            arrayList2 = null;
        }
        return arrayList2;
    }

    /* renamed from: l */
    private static Object m13067l(AbstractC0345s abstractC0345s, ViewGroup viewGroup, View view, d.e.a<String, String> aVar, C0344h c0344h, ArrayList<View> arrayList, ArrayList<View> arrayList2, Object obj, Object obj2) {
        Rect rect;
        Fragment fragment = c0344h.f1997a;
        Fragment fragment2 = c0344h.f2000d;
        if (fragment == null || fragment2 == null) {
            return null;
        }
        boolean z = c0344h.f1998b;
        Object m13058u = aVar.isEmpty() ? null : m13058u(abstractC0345s, fragment, fragment2, z);
        d.e.a<String, View> m13070i = m13070i(abstractC0345s, aVar, m13058u, c0344h);
        if (aVar.isEmpty()) {
            m13058u = null;
        } else {
            arrayList.addAll(m13070i.values());
        }
        if (obj == null && obj2 == null && m13058u == null) {
            return null;
        }
        m13073f(fragment, fragment2, z, m13070i, true);
        if (m13058u != null) {
            Rect rect2 = new Rect();
            abstractC0345s.m13023z(m13058u, view, arrayList);
            m13081A(abstractC0345s, m13058u, obj2, m13070i, c0344h.f2001e, c0344h.f2002f);
            rect = rect2;
            if (obj != null) {
                abstractC0345s.m13028u(obj, rect2);
                rect = rect2;
            }
        } else {
            rect = null;
        }
        q.a(viewGroup, new RunnableC0342f(abstractC0345s, aVar, m13058u, c0344h, arrayList2, view, fragment, fragment2, z, arrayList, obj, rect));
        return m13058u;
    }

    /* renamed from: m */
    private static Object m13066m(AbstractC0345s abstractC0345s, ViewGroup viewGroup, View view, d.e.a<String, String> aVar, C0344h c0344h, ArrayList<View> arrayList, ArrayList<View> arrayList2, Object obj, Object obj2) {
        Object obj3;
        View view2;
        Rect rect;
        Fragment fragment = c0344h.f1997a;
        Fragment fragment2 = c0344h.f2000d;
        if (fragment != null) {
            fragment.m1().setVisibility(0);
        }
        if (fragment == null || fragment2 == null) {
            return null;
        }
        boolean z = c0344h.f1998b;
        Object m13058u = aVar.isEmpty() ? null : m13058u(abstractC0345s, fragment, fragment2, z);
        d.e.a<String, View> m13070i = m13070i(abstractC0345s, aVar, m13058u, c0344h);
        d.e.a<String, View> m13071h = m13071h(abstractC0345s, aVar, m13058u, c0344h);
        if (aVar.isEmpty()) {
            if (m13070i != null) {
                m13070i.clear();
            }
            if (m13071h != null) {
                m13071h.clear();
            }
            obj3 = null;
        } else {
            m13078a(arrayList, m13070i, aVar.keySet());
            m13078a(arrayList2, m13071h, aVar.values());
            obj3 = m13058u;
        }
        if (obj == null && obj2 == null && obj3 == null) {
            return null;
        }
        m13073f(fragment, fragment2, z, m13070i, true);
        if (obj3 != null) {
            arrayList2.add(view);
            abstractC0345s.m13023z(obj3, view, arrayList);
            m13081A(abstractC0345s, obj3, obj2, m13070i, c0344h.f2001e, c0344h.f2002f);
            rect = new Rect();
            view2 = m13059t(m13071h, c0344h, obj, z);
            if (view2 != null) {
                abstractC0345s.m13028u(obj, rect);
            }
        } else {
            view2 = null;
            rect = null;
        }
        q.a(viewGroup, new RunnableC0341e(fragment, fragment2, z, m13071h, view2, abstractC0345s, rect));
        return obj3;
    }

    /* renamed from: n */
    private static void m13065n(AbstractC0325j abstractC0325j, int i, C0344h c0344h, View view, d.e.a<String, String> aVar, AbstractC0343g abstractC0343g) {
        Fragment fragment;
        Fragment fragment2;
        AbstractC0345s m13069j;
        ViewGroup viewGroup = abstractC0325j.f1915p.m13297f() ? (ViewGroup) abstractC0325j.f1915p.m13298e(i) : null;
        if (viewGroup == null || (m13069j = m13069j((fragment2 = c0344h.f2000d), (fragment = c0344h.f1997a))) == null) {
            return;
        }
        boolean z = c0344h.f1998b;
        boolean z2 = c0344h.f2001e;
        Object m13061r = m13061r(m13069j, fragment, z);
        Object m13060s = m13060s(m13069j, fragment2, z2);
        ArrayList arrayList = new ArrayList();
        ArrayList<View> arrayList2 = new ArrayList<>();
        Object m13067l = m13067l(m13069j, viewGroup, view, aVar, c0344h, arrayList, arrayList2, m13061r, m13060s);
        if (m13061r == null && m13067l == null && m13060s == null) {
            return;
        }
        ArrayList<View> m13068k = m13068k(m13069j, m13060s, fragment2, arrayList, view);
        if (m13068k == null || m13068k.isEmpty()) {
            m13060s = null;
        }
        m13069j.m13048a(m13061r, view);
        Object m13057v = m13057v(m13069j, m13061r, m13060s, m13067l, fragment, c0344h.f1998b);
        if (fragment2 != null && m13068k != null && (m13068k.size() > 0 || arrayList.size() > 0)) {
            a aVar2 = new a();
            abstractC0343g.m13051b(fragment2, aVar2);
            m13069j.m13026w(fragment2, m13057v, aVar2, new RunnableC0339c(abstractC0343g, fragment2, aVar2));
        }
        if (m13057v == null) {
            return;
        }
        ArrayList<View> arrayList3 = new ArrayList<>();
        m13069j.m13029t(m13057v, m13061r, arrayList3, m13060s, m13068k, m13067l, arrayList2);
        m13053z(m13069j, viewGroup, fragment, view, arrayList2, m13061r, arrayList3, m13060s, m13068k);
        m13069j.m13025x(viewGroup, arrayList2, aVar);
        m13069j.m13046c(viewGroup, m13057v);
        m13069j.m13030s(viewGroup, arrayList2, aVar);
    }

    /* renamed from: o */
    private static void m13064o(AbstractC0325j abstractC0325j, int i, C0344h c0344h, View view, d.e.a<String, String> aVar, AbstractC0343g abstractC0343g) {
        Fragment fragment;
        Fragment fragment2;
        AbstractC0345s m13069j;
        ViewGroup viewGroup = abstractC0325j.f1915p.m13297f() ? (ViewGroup) abstractC0325j.f1915p.m13298e(i) : null;
        if (viewGroup == null || (m13069j = m13069j((fragment2 = c0344h.f2000d), (fragment = c0344h.f1997a))) == null) {
            return;
        }
        boolean z = c0344h.f1998b;
        boolean z2 = c0344h.f2001e;
        ArrayList<View> arrayList = new ArrayList<>();
        ArrayList<View> arrayList2 = new ArrayList<>();
        Object m13061r = m13061r(m13069j, fragment, z);
        Object m13060s = m13060s(m13069j, fragment2, z2);
        Object m13066m = m13066m(m13069j, viewGroup, view, aVar, c0344h, arrayList2, arrayList, m13061r, m13060s);
        if (m13061r == null && m13066m == null && m13060s == null) {
            return;
        }
        ArrayList<View> m13068k = m13068k(m13069j, m13060s, fragment2, arrayList2, view);
        ArrayList<View> m13068k2 = m13068k(m13069j, m13061r, fragment, arrayList, view);
        m13080B(m13068k2, 4);
        Object m13057v = m13057v(m13069j, m13061r, m13060s, m13066m, fragment, z);
        if (fragment2 != null && m13068k != null && (m13068k.size() > 0 || arrayList2.size() > 0)) {
            a aVar2 = new a();
            abstractC0343g.m13051b(fragment2, aVar2);
            m13069j.m13026w(fragment2, m13057v, aVar2, new RunnableC0337a(abstractC0343g, fragment2, aVar2));
        }
        if (m13057v == null) {
            return;
        }
        m13056w(m13069j, m13060s, fragment2, m13068k);
        ArrayList<String> m13034o = m13069j.m13034o(arrayList);
        m13069j.m13029t(m13057v, m13061r, m13068k2, m13060s, m13068k, m13066m, arrayList);
        m13069j.m13046c(viewGroup, m13057v);
        m13069j.m13024y(viewGroup, arrayList2, arrayList, m13034o, aVar);
        m13080B(m13068k2, 0);
        m13069j.m13050A(m13066m, arrayList2, arrayList);
    }

    /* renamed from: p */
    private static C0344h m13063p(C0344h c0344h, SparseArray<C0344h> sparseArray, int i) {
        C0344h c0344h2 = c0344h;
        if (c0344h == null) {
            c0344h2 = new C0344h();
            sparseArray.put(i, c0344h2);
        }
        return c0344h2;
    }

    /* renamed from: q */
    private static String m13062q(d.e.a<String, String> aVar, String str) {
        int size = aVar.size();
        for (int i = 0; i < size; i++) {
            if (str.equals(aVar.m(i))) {
                return (String) aVar.i(i);
            }
        }
        return null;
    }

    /* renamed from: r */
    private static Object m13061r(AbstractC0345s abstractC0345s, Fragment fragment, boolean z) {
        if (fragment == null) {
            return null;
        }
        return abstractC0345s.m13042g(z ? fragment.I() : fragment.x());
    }

    /* renamed from: s */
    private static Object m13060s(AbstractC0345s abstractC0345s, Fragment fragment, boolean z) {
        if (fragment == null) {
            return null;
        }
        return abstractC0345s.m13042g(z ? fragment.L() : fragment.z());
    }

    /* renamed from: t */
    static View m13059t(d.e.a<String, View> aVar, C0344h c0344h, Object obj, boolean z) {
        ArrayList<String> arrayList;
        a aVar2 = c0344h.f1999c;
        if (obj == null || aVar == null || (arrayList = aVar2.f1948m) == null || arrayList.isEmpty()) {
            return null;
        }
        return (View) aVar.get((z ? aVar2.f1948m : aVar2.f1949n).get(0));
    }

    /* renamed from: u */
    private static Object m13058u(AbstractC0345s abstractC0345s, Fragment fragment, Fragment fragment2, boolean z) {
        if (fragment == null || fragment2 == null) {
            return null;
        }
        return abstractC0345s.m13049B(abstractC0345s.m13042g(z ? fragment2.N() : fragment.M()));
    }

    /* renamed from: v */
    private static Object m13057v(AbstractC0345s abstractC0345s, Object obj, Object obj2, Object obj3, Fragment fragment, boolean z) {
        return (obj == null || obj2 == null || fragment == null) ? true : z ? fragment.r() : fragment.o() ? abstractC0345s.m13035n(obj2, obj, obj3) : abstractC0345s.m13036m(obj2, obj, obj3);
    }

    /* renamed from: w */
    private static void m13056w(AbstractC0345s abstractC0345s, Object obj, Fragment fragment, ArrayList<View> arrayList) {
        if (fragment == null || obj == null || !fragment.l || !fragment.z || !fragment.M) {
            return;
        }
        fragment.s1(true);
        abstractC0345s.m13031r(obj, fragment.S(), arrayList);
        q.a(fragment.G, new RunnableC0338b(arrayList));
    }

    /* renamed from: x */
    private static AbstractC0345s m13055x() {
        try {
            return (AbstractC0345s) Class.forName("androidx.transition.e").getDeclaredConstructor(new Class[0]).newInstance(new Object[0]);
        } catch (Exception e) {
            return null;
        }
    }

    /* renamed from: y */
    private static void m13054y(d.e.a<String, String> aVar, d.e.a<String, View> aVar2) {
        for (int size = aVar.size() - 1; size >= 0; size--) {
            if (!aVar2.containsKey((String) aVar.m(size))) {
                aVar.k(size);
            }
        }
    }

    /* renamed from: z */
    private static void m13053z(AbstractC0345s abstractC0345s, ViewGroup viewGroup, Fragment fragment, View view, ArrayList<View> arrayList, Object obj, ArrayList<View> arrayList2, Object obj2, ArrayList<View> arrayList3) {
        q.a(viewGroup, new RunnableC0340d(obj, abstractC0345s, view, fragment, arrayList, arrayList2, arrayList3, obj2));
    }
}

package androidx.fragment.app;

import android.content.Context;
import android.graphics.Rect;
import android.os.Build;
import android.util.SparseArray;
import android.view.View;
import android.view.ViewGroup;
import androidx.core.app.AbstractC0581n;
import androidx.core.p008os.C0623b;
import java.util.ArrayList;
import java.util.Collection;
import java.util.List;
import p020b.p036e.C1489a;
import p020b.p041h.p050l.C1679w;
import p020b.p041h.p050l.ViewTreeObserver$OnPreDrawListenerC1676t;
/* renamed from: androidx.fragment.app.t */
/* loaded from: classes-dex2jar.jar:androidx/fragment/app/t.class */
public class C0756t {

    /* renamed from: a */
    private static final int[] f3575a = {0, 3, 0, 1, 5, 4, 7, 6, 9, 8, 10};

    /* renamed from: b */
    static final AbstractC0771v f3576b;

    /* renamed from: c */
    static final AbstractC0771v f3577c;

    /* renamed from: androidx.fragment.app.t$a */
    /* loaded from: classes-dex2jar.jar:androidx/fragment/app/t$a.class */
    public class RunnableC0757a implements Runnable {

        /* renamed from: d */
        final /* synthetic */ AbstractC0763g f3578d;

        /* renamed from: e */
        final /* synthetic */ Fragment f3579e;

        /* renamed from: f */
        final /* synthetic */ C0623b f3580f;

        RunnableC0757a(AbstractC0763g abstractC0763g, Fragment fragment, C0623b c0623b) {
            this.f3578d = abstractC0763g;
            this.f3579e = fragment;
            this.f3580f = c0623b;
        }

        @Override // java.lang.Runnable
        public void run() {
            this.f3578d.mo32463a(this.f3579e, this.f3580f);
        }
    }

    /* renamed from: androidx.fragment.app.t$b */
    /* loaded from: classes-dex2jar.jar:androidx/fragment/app/t$b.class */
    public class RunnableC0758b implements Runnable {

        /* renamed from: d */
        final /* synthetic */ ArrayList f3581d;

        RunnableC0758b(ArrayList arrayList) {
            this.f3581d = arrayList;
        }

        @Override // java.lang.Runnable
        public void run() {
            C0756t.m32491A(this.f3581d, 4);
        }
    }

    /* renamed from: androidx.fragment.app.t$c */
    /* loaded from: classes-dex2jar.jar:androidx/fragment/app/t$c.class */
    public class RunnableC0759c implements Runnable {

        /* renamed from: d */
        final /* synthetic */ AbstractC0763g f3582d;

        /* renamed from: e */
        final /* synthetic */ Fragment f3583e;

        /* renamed from: f */
        final /* synthetic */ C0623b f3584f;

        RunnableC0759c(AbstractC0763g abstractC0763g, Fragment fragment, C0623b c0623b) {
            this.f3582d = abstractC0763g;
            this.f3583e = fragment;
            this.f3584f = c0623b;
        }

        @Override // java.lang.Runnable
        public void run() {
            this.f3582d.mo32463a(this.f3583e, this.f3584f);
        }
    }

    /* renamed from: androidx.fragment.app.t$d */
    /* loaded from: classes-dex2jar.jar:androidx/fragment/app/t$d.class */
    public class RunnableC0760d implements Runnable {

        /* renamed from: d */
        final /* synthetic */ Object f3585d;

        /* renamed from: e */
        final /* synthetic */ AbstractC0771v f3586e;

        /* renamed from: f */
        final /* synthetic */ View f3587f;

        /* renamed from: g */
        final /* synthetic */ Fragment f3588g;

        /* renamed from: h */
        final /* synthetic */ ArrayList f3589h;

        /* renamed from: i */
        final /* synthetic */ ArrayList f3590i;

        /* renamed from: j */
        final /* synthetic */ ArrayList f3591j;

        /* renamed from: k */
        final /* synthetic */ Object f3592k;

        RunnableC0760d(Object obj, AbstractC0771v abstractC0771v, View view, Fragment fragment, ArrayList arrayList, ArrayList arrayList2, ArrayList arrayList3, Object obj2) {
            this.f3585d = obj;
            this.f3586e = abstractC0771v;
            this.f3587f = view;
            this.f3588g = fragment;
            this.f3589h = arrayList;
            this.f3590i = arrayList2;
            this.f3591j = arrayList3;
            this.f3592k = obj2;
        }

        @Override // java.lang.Runnable
        public void run() {
            Object obj = this.f3585d;
            if (obj != null) {
                this.f3586e.mo30921p(obj, this.f3587f);
                this.f3590i.addAll(C0756t.m32479k(this.f3586e, this.f3585d, this.f3588g, this.f3589h, this.f3587f));
            }
            if (this.f3591j != null) {
                if (this.f3592k != null) {
                    ArrayList<View> arrayList = new ArrayList<>();
                    arrayList.add(this.f3587f);
                    this.f3586e.mo30920q(this.f3592k, this.f3591j, arrayList);
                }
                this.f3591j.clear();
                this.f3591j.add(this.f3587f);
            }
        }
    }

    /* renamed from: androidx.fragment.app.t$e */
    /* loaded from: classes-dex2jar.jar:androidx/fragment/app/t$e.class */
    public class RunnableC0761e implements Runnable {

        /* renamed from: d */
        final /* synthetic */ Fragment f3593d;

        /* renamed from: e */
        final /* synthetic */ Fragment f3594e;

        /* renamed from: f */
        final /* synthetic */ boolean f3595f;

        /* renamed from: g */
        final /* synthetic */ C1489a f3596g;

        /* renamed from: h */
        final /* synthetic */ View f3597h;

        /* renamed from: i */
        final /* synthetic */ AbstractC0771v f3598i;

        /* renamed from: j */
        final /* synthetic */ Rect f3599j;

        RunnableC0761e(Fragment fragment, Fragment fragment2, boolean z, C1489a c1489a, View view, AbstractC0771v abstractC0771v, Rect rect) {
            this.f3593d = fragment;
            this.f3594e = fragment2;
            this.f3595f = z;
            this.f3596g = c1489a;
            this.f3597h = view;
            this.f3598i = abstractC0771v;
            this.f3599j = rect;
        }

        @Override // java.lang.Runnable
        public void run() {
            C0756t.m32484f(this.f3593d, this.f3594e, this.f3595f, this.f3596g, false);
            View view = this.f3597h;
            if (view != null) {
                this.f3598i.m32455k(view, this.f3599j);
            }
        }
    }

    /* renamed from: androidx.fragment.app.t$f */
    /* loaded from: classes-dex2jar.jar:androidx/fragment/app/t$f.class */
    public class RunnableC0762f implements Runnable {

        /* renamed from: d */
        final /* synthetic */ AbstractC0771v f3600d;

        /* renamed from: e */
        final /* synthetic */ C1489a f3601e;

        /* renamed from: f */
        final /* synthetic */ Object f3602f;

        /* renamed from: g */
        final /* synthetic */ C0764h f3603g;

        /* renamed from: h */
        final /* synthetic */ ArrayList f3604h;

        /* renamed from: i */
        final /* synthetic */ View f3605i;

        /* renamed from: j */
        final /* synthetic */ Fragment f3606j;

        /* renamed from: k */
        final /* synthetic */ Fragment f3607k;

        /* renamed from: l */
        final /* synthetic */ boolean f3608l;

        /* renamed from: m */
        final /* synthetic */ ArrayList f3609m;

        /* renamed from: n */
        final /* synthetic */ Object f3610n;

        /* renamed from: o */
        final /* synthetic */ Rect f3611o;

        RunnableC0762f(AbstractC0771v abstractC0771v, C1489a c1489a, Object obj, C0764h c0764h, ArrayList arrayList, View view, Fragment fragment, Fragment fragment2, boolean z, ArrayList arrayList2, Object obj2, Rect rect) {
            this.f3600d = abstractC0771v;
            this.f3601e = c1489a;
            this.f3602f = obj;
            this.f3603g = c0764h;
            this.f3604h = arrayList;
            this.f3605i = view;
            this.f3606j = fragment;
            this.f3607k = fragment2;
            this.f3608l = z;
            this.f3609m = arrayList2;
            this.f3610n = obj2;
            this.f3611o = rect;
        }

        @Override // java.lang.Runnable
        public void run() {
            C1489a<String, View> m32482h = C0756t.m32482h(this.f3600d, this.f3601e, this.f3602f, this.f3603g);
            if (m32482h != null) {
                this.f3604h.addAll(m32482h.values());
                this.f3604h.add(this.f3605i);
            }
            C0756t.m32484f(this.f3606j, this.f3607k, this.f3608l, m32482h, false);
            Object obj = this.f3602f;
            if (obj != null) {
                this.f3600d.mo30931A(obj, this.f3609m, this.f3604h);
                View m32471s = C0756t.m32471s(m32482h, this.f3603g, this.f3610n, this.f3608l);
                if (m32471s == null) {
                    return;
                }
                this.f3600d.m32455k(m32471s, this.f3611o);
            }
        }
    }

    /* renamed from: androidx.fragment.app.t$g */
    /* loaded from: classes-dex2jar.jar:androidx/fragment/app/t$g.class */
    public interface AbstractC0763g {
        /* renamed from: a */
        void mo32463a(Fragment fragment, C0623b c0623b);

        /* renamed from: b */
        void mo32462b(Fragment fragment, C0623b c0623b);
    }

    /* renamed from: androidx.fragment.app.t$h */
    /* loaded from: classes-dex2jar.jar:androidx/fragment/app/t$h.class */
    public static class C0764h {

        /* renamed from: a */
        public Fragment f3612a;

        /* renamed from: b */
        public boolean f3613b;

        /* renamed from: c */
        public C0706a f3614c;

        /* renamed from: d */
        public Fragment f3615d;

        /* renamed from: e */
        public boolean f3616e;

        /* renamed from: f */
        public C0706a f3617f;

        C0764h() {
        }
    }

    static {
        f3576b = Build.VERSION.SDK_INT >= 21 ? new C0765u() : null;
        f3577c = m32467w();
    }

    /* renamed from: A */
    public static void m32491A(ArrayList<View> arrayList, int i) {
        if (arrayList == null) {
            return;
        }
        for (int size = arrayList.size() - 1; size >= 0; size--) {
            arrayList.get(size).setVisibility(i);
        }
    }

    /* renamed from: B */
    public static void m32490B(Context context, AbstractC0735e abstractC0735e, ArrayList<C0706a> arrayList, ArrayList<Boolean> arrayList2, int i, int i2, boolean z, AbstractC0763g abstractC0763g) {
        ViewGroup viewGroup;
        SparseArray sparseArray = new SparseArray();
        for (int i3 = i; i3 < i2; i3++) {
            C0706a c0706a = arrayList.get(i3);
            if (arrayList2.get(i3).booleanValue()) {
                m32485e(c0706a, sparseArray, z);
            } else {
                m32487c(c0706a, sparseArray, z);
            }
        }
        if (sparseArray.size() != 0) {
            View view = new View(context);
            int size = sparseArray.size();
            for (int i4 = 0; i4 < size; i4++) {
                int keyAt = sparseArray.keyAt(i4);
                C1489a<String, String> m32486d = m32486d(keyAt, arrayList, arrayList2, i, i2);
                C0764h c0764h = (C0764h) sparseArray.valueAt(i4);
                if (abstractC0735e.mo32595f() && (viewGroup = (ViewGroup) abstractC0735e.mo32596e(keyAt)) != null) {
                    if (z) {
                        m32475o(viewGroup, c0764h, view, m32486d, abstractC0763g);
                    } else {
                        m32476n(viewGroup, c0764h, view, m32486d, abstractC0763g);
                    }
                }
            }
        }
    }

    /* renamed from: a */
    private static void m32489a(ArrayList<View> arrayList, C1489a<String, View> c1489a, Collection<String> collection) {
        for (int size = c1489a.size() - 1; size >= 0; size--) {
            View m29909m = c1489a.m29909m(size);
            if (collection.contains(C1679w.m29326M(m29909m))) {
                arrayList.add(m29909m);
            }
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:33:0x0085, code lost:
        if (r0.f3231p != false) goto L71;
     */
    /* JADX WARN: Code restructure failed: missing block: B:57:0x00f0, code lost:
        r11 = true;
     */
    /* JADX WARN: Code restructure failed: missing block: B:70:0x013c, code lost:
        if (r0.f3193D == false) goto L71;
     */
    /* JADX WARN: Code restructure failed: missing block: B:71:0x013f, code lost:
        r13 = true;
     */
    /* JADX WARN: Code restructure failed: missing block: B:94:0x01d1, code lost:
        if (r5.f3615d == null) goto L95;
     */
    /* JADX WARN: Removed duplicated region for block: B:106:? A[ADDED_TO_REGION, RETURN, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:76:0x0162  */
    /* JADX WARN: Removed duplicated region for block: B:79:0x0180  */
    /* JADX WARN: Removed duplicated region for block: B:88:0x019e  */
    /* JADX WARN: Removed duplicated region for block: B:91:0x01c6  */
    /* JADX WARN: Removed duplicated region for block: B:98:0x01f5  */
    /* renamed from: b */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private static void m32488b(androidx.fragment.app.C0706a r4, androidx.fragment.app.AbstractC0754s.C0755a r5, android.util.SparseArray<androidx.fragment.app.C0756t.C0764h> r6, boolean r7, boolean r8) {
        /*
            Method dump skipped, instructions count: 528
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.fragment.app.C0756t.m32488b(androidx.fragment.app.a, androidx.fragment.app.s$a, android.util.SparseArray, boolean, boolean):void");
    }

    /* renamed from: c */
    public static void m32487c(C0706a c0706a, SparseArray<C0764h> sparseArray, boolean z) {
        int size = c0706a.f3550c.size();
        for (int i = 0; i < size; i++) {
            m32488b(c0706a, c0706a.f3550c.get(i), sparseArray, false, z);
        }
    }

    /* renamed from: d */
    private static C1489a<String, String> m32486d(int i, ArrayList<C0706a> arrayList, ArrayList<Boolean> arrayList2, int i2, int i3) {
        ArrayList<String> arrayList3;
        ArrayList<String> arrayList4;
        C1489a<String, String> c1489a = new C1489a<>();
        while (true) {
            i3--;
            if (i3 >= i2) {
                C0706a c0706a = arrayList.get(i3);
                if (c0706a.m32681B(i)) {
                    boolean booleanValue = arrayList2.get(i3).booleanValue();
                    ArrayList<String> arrayList5 = c0706a.f3563p;
                    if (arrayList5 != null) {
                        int size = arrayList5.size();
                        if (booleanValue) {
                            arrayList4 = c0706a.f3563p;
                            arrayList3 = c0706a.f3564q;
                        } else {
                            arrayList3 = c0706a.f3563p;
                            arrayList4 = c0706a.f3564q;
                        }
                        for (int i4 = 0; i4 < size; i4++) {
                            String str = arrayList3.get(i4);
                            String str2 = arrayList4.get(i4);
                            String remove = c1489a.remove(str2);
                            if (remove != null) {
                                c1489a.put(str, remove);
                            } else {
                                c1489a.put(str, str2);
                            }
                        }
                    }
                }
            } else {
                return c1489a;
            }
        }
    }

    /* renamed from: e */
    public static void m32485e(C0706a c0706a, SparseArray<C0764h> sparseArray, boolean z) {
        if (!c0706a.f3418t.m32766o0().mo32595f()) {
            return;
        }
        for (int size = c0706a.f3550c.size() - 1; size >= 0; size--) {
            m32488b(c0706a, c0706a.f3550c.get(size), sparseArray, true, z);
        }
    }

    /* renamed from: f */
    public static void m32484f(Fragment fragment, Fragment fragment2, boolean z, C1489a<String, View> c1489a, boolean z2) {
        if ((z ? fragment2.m32989E() : fragment.m32989E()) != null) {
            ArrayList arrayList = new ArrayList();
            ArrayList arrayList2 = new ArrayList();
            int size = c1489a == null ? 0 : c1489a.size();
            for (int i = 0; i < size; i++) {
                arrayList2.add(c1489a.m29910i(i));
                arrayList.add(c1489a.m29909m(i));
            }
            if (!z2) {
                throw null;
            }
            throw null;
        }
    }

    /* renamed from: g */
    private static boolean m32483g(AbstractC0771v abstractC0771v, List<Object> list) {
        int size = list.size();
        for (int i = 0; i < size; i++) {
            if (!abstractC0771v.mo30925e(list.get(i))) {
                return false;
            }
        }
        return true;
    }

    /* renamed from: h */
    static C1489a<String, View> m32482h(AbstractC0771v abstractC0771v, C1489a<String, String> c1489a, Object obj, C0764h c0764h) {
        AbstractC0581n abstractC0581n;
        ArrayList<String> arrayList;
        Fragment fragment = c0764h.f3612a;
        View m32928f0 = fragment.m32928f0();
        if (c1489a.isEmpty() || obj == null || m32928f0 == null) {
            c1489a.clear();
            return null;
        }
        C1489a<String, View> c1489a2 = new C1489a<>();
        abstractC0771v.m32456j(c1489a2, m32928f0);
        C0706a c0706a = c0764h.f3614c;
        if (c0764h.f3613b) {
            abstractC0581n = fragment.m32981H();
            arrayList = c0706a.f3563p;
        } else {
            abstractC0581n = fragment.m32989E();
            arrayList = c0706a.f3564q;
        }
        if (arrayList != null) {
            c1489a2.m29973o(arrayList);
            c1489a2.m29973o(c1489a.values());
        }
        if (abstractC0581n != null) {
            throw null;
        }
        m32466x(c1489a, c1489a2);
        return c1489a2;
    }

    /* renamed from: i */
    private static C1489a<String, View> m32481i(AbstractC0771v abstractC0771v, C1489a<String, String> c1489a, Object obj, C0764h c0764h) {
        ArrayList<String> arrayList;
        AbstractC0581n abstractC0581n;
        if (c1489a.isEmpty() || obj == null) {
            c1489a.clear();
            return null;
        }
        Fragment fragment = c0764h.f3615d;
        C1489a<String, View> c1489a2 = new C1489a<>();
        abstractC0771v.m32456j(c1489a2, fragment.m32987E1());
        C0706a c0706a = c0764h.f3617f;
        if (c0764h.f3616e) {
            abstractC0581n = fragment.m32989E();
            arrayList = c0706a.f3564q;
        } else {
            abstractC0581n = fragment.m32981H();
            arrayList = c0706a.f3563p;
        }
        if (arrayList != null) {
            c1489a2.m29973o(arrayList);
        }
        if (abstractC0581n != null) {
            throw null;
        }
        c1489a.m29973o(c1489a2.keySet());
        return c1489a2;
    }

    /* renamed from: j */
    private static AbstractC0771v m32480j(Fragment fragment, Fragment fragment2) {
        ArrayList arrayList = new ArrayList();
        if (fragment != null) {
            Object m32983G = fragment.m32983G();
            if (m32983G != null) {
                arrayList.add(m32983G);
            }
            Object m32938Y = fragment.m32938Y();
            if (m32938Y != null) {
                arrayList.add(m32938Y);
            }
            Object m32934a0 = fragment.m32934a0();
            if (m32934a0 != null) {
                arrayList.add(m32934a0);
            }
        }
        if (fragment2 != null) {
            Object m32991D = fragment2.m32991D();
            if (m32991D != null) {
                arrayList.add(m32991D);
            }
            Object m32944W = fragment2.m32944W();
            if (m32944W != null) {
                arrayList.add(m32944W);
            }
            Object m32936Z = fragment2.m32936Z();
            if (m32936Z != null) {
                arrayList.add(m32936Z);
            }
        }
        if (arrayList.isEmpty()) {
            return null;
        }
        AbstractC0771v abstractC0771v = f3576b;
        if (abstractC0771v != null && m32483g(abstractC0771v, arrayList)) {
            return abstractC0771v;
        }
        AbstractC0771v abstractC0771v2 = f3577c;
        if (abstractC0771v2 != null && m32483g(abstractC0771v2, arrayList)) {
            return abstractC0771v2;
        }
        if (abstractC0771v != null || abstractC0771v2 != null) {
            throw new IllegalArgumentException("Invalid Transition types");
        }
        return null;
    }

    /* renamed from: k */
    static ArrayList<View> m32479k(AbstractC0771v abstractC0771v, Object obj, Fragment fragment, ArrayList<View> arrayList, View view) {
        ArrayList<View> arrayList2;
        if (obj != null) {
            ArrayList<View> arrayList3 = new ArrayList<>();
            View m32928f0 = fragment.m32928f0();
            if (m32928f0 != null) {
                abstractC0771v.m32459f(arrayList3, m32928f0);
            }
            if (arrayList != null) {
                arrayList3.removeAll(arrayList);
            }
            arrayList2 = arrayList3;
            if (!arrayList3.isEmpty()) {
                arrayList3.add(view);
                abstractC0771v.mo30927b(obj, arrayList3);
                arrayList2 = arrayList3;
            }
        } else {
            arrayList2 = null;
        }
        return arrayList2;
    }

    /* renamed from: l */
    private static Object m32478l(AbstractC0771v abstractC0771v, ViewGroup viewGroup, View view, C1489a<String, String> c1489a, C0764h c0764h, ArrayList<View> arrayList, ArrayList<View> arrayList2, Object obj, Object obj2) {
        Rect rect;
        Fragment fragment = c0764h.f3612a;
        Fragment fragment2 = c0764h.f3615d;
        if (fragment == null || fragment2 == null) {
            return null;
        }
        boolean z = c0764h.f3613b;
        Object m32470t = c1489a.isEmpty() ? null : m32470t(abstractC0771v, fragment, fragment2, z);
        C1489a<String, View> m32481i = m32481i(abstractC0771v, c1489a, m32470t, c0764h);
        if (c1489a.isEmpty()) {
            m32470t = null;
        } else {
            arrayList.addAll(m32481i.values());
        }
        if (obj == null && obj2 == null && m32470t == null) {
            return null;
        }
        m32484f(fragment, fragment2, z, m32481i, true);
        if (m32470t != null) {
            Rect rect2 = new Rect();
            abstractC0771v.mo30915z(m32470t, view, arrayList);
            m32464z(abstractC0771v, m32470t, obj2, m32481i, c0764h.f3616e, c0764h.f3617f);
            rect = rect2;
            if (obj != null) {
                abstractC0771v.mo30917u(obj, rect2);
                rect = rect2;
            }
        } else {
            rect = null;
        }
        ViewTreeObserver$OnPreDrawListenerC1676t.m29354a(viewGroup, new RunnableC0762f(abstractC0771v, c1489a, m32470t, c0764h, arrayList2, view, fragment, fragment2, z, arrayList, obj, rect));
        return m32470t;
    }

    /* renamed from: m */
    private static Object m32477m(AbstractC0771v abstractC0771v, ViewGroup viewGroup, View view, C1489a<String, String> c1489a, C0764h c0764h, ArrayList<View> arrayList, ArrayList<View> arrayList2, Object obj, Object obj2) {
        Object obj3;
        Rect rect;
        View view2;
        Fragment fragment = c0764h.f3612a;
        Fragment fragment2 = c0764h.f3615d;
        if (fragment != null) {
            fragment.m32987E1().setVisibility(0);
        }
        if (fragment == null || fragment2 == null) {
            return null;
        }
        boolean z = c0764h.f3613b;
        Object m32470t = c1489a.isEmpty() ? null : m32470t(abstractC0771v, fragment, fragment2, z);
        C1489a<String, View> m32481i = m32481i(abstractC0771v, c1489a, m32470t, c0764h);
        C1489a<String, View> m32482h = m32482h(abstractC0771v, c1489a, m32470t, c0764h);
        if (c1489a.isEmpty()) {
            if (m32481i != null) {
                m32481i.clear();
            }
            if (m32482h != null) {
                m32482h.clear();
            }
            obj3 = null;
        } else {
            m32489a(arrayList, m32481i, c1489a.keySet());
            m32489a(arrayList2, m32482h, c1489a.values());
            obj3 = m32470t;
        }
        if (obj == null && obj2 == null && obj3 == null) {
            return null;
        }
        m32484f(fragment, fragment2, z, m32481i, true);
        if (obj3 != null) {
            arrayList2.add(view);
            abstractC0771v.mo30915z(obj3, view, arrayList);
            m32464z(abstractC0771v, obj3, obj2, m32481i, c0764h.f3616e, c0764h.f3617f);
            Rect rect2 = new Rect();
            view2 = m32471s(m32482h, c0764h, obj, z);
            if (view2 != null) {
                abstractC0771v.mo30917u(obj, rect2);
            }
            rect = rect2;
        } else {
            rect = null;
            view2 = null;
        }
        ViewTreeObserver$OnPreDrawListenerC1676t.m29354a(viewGroup, new RunnableC0761e(fragment, fragment2, z, m32482h, view2, abstractC0771v, rect));
        return obj3;
    }

    /* renamed from: n */
    private static void m32476n(ViewGroup viewGroup, C0764h c0764h, View view, C1489a<String, String> c1489a, AbstractC0763g abstractC0763g) {
        Fragment fragment = c0764h.f3612a;
        Fragment fragment2 = c0764h.f3615d;
        AbstractC0771v m32480j = m32480j(fragment2, fragment);
        if (m32480j == null) {
            return;
        }
        boolean z = c0764h.f3613b;
        boolean z2 = c0764h.f3616e;
        Object m32473q = m32473q(m32480j, fragment, z);
        Object m32472r = m32472r(m32480j, fragment2, z2);
        ArrayList arrayList = new ArrayList();
        ArrayList<View> arrayList2 = new ArrayList<>();
        Object m32478l = m32478l(m32480j, viewGroup, view, c1489a, c0764h, arrayList, arrayList2, m32473q, m32472r);
        if (m32473q == null && m32478l == null && m32472r == null) {
            return;
        }
        ArrayList<View> m32479k = m32479k(m32480j, m32472r, fragment2, arrayList, view);
        if (m32479k == null || m32479k.isEmpty()) {
            m32472r = null;
        }
        m32480j.mo30928a(m32473q, view);
        Object m32469u = m32469u(m32480j, m32473q, m32472r, m32478l, fragment, c0764h.f3613b);
        if (fragment2 != null && m32479k != null && (m32479k.size() > 0 || arrayList.size() > 0)) {
            C0623b c0623b = new C0623b();
            abstractC0763g.mo32462b(fragment2, c0623b);
            m32480j.mo32451w(fragment2, m32469u, c0623b, new RunnableC0759c(abstractC0763g, fragment2, c0623b));
        }
        if (m32469u == null) {
            return;
        }
        ArrayList<View> arrayList3 = new ArrayList<>();
        m32480j.mo30918t(m32469u, m32473q, arrayList3, m32472r, m32479k, m32478l, arrayList2);
        m32465y(m32480j, viewGroup, fragment, view, arrayList2, m32473q, arrayList3, m32472r, m32479k);
        m32480j.m32450x(viewGroup, arrayList2, c1489a);
        m32480j.mo30926c(viewGroup, m32469u);
        m32480j.m32452s(viewGroup, arrayList2, c1489a);
    }

    /* renamed from: o */
    private static void m32475o(ViewGroup viewGroup, C0764h c0764h, View view, C1489a<String, String> c1489a, AbstractC0763g abstractC0763g) {
        Fragment fragment = c0764h.f3612a;
        Fragment fragment2 = c0764h.f3615d;
        AbstractC0771v m32480j = m32480j(fragment2, fragment);
        if (m32480j == null) {
            return;
        }
        boolean z = c0764h.f3613b;
        boolean z2 = c0764h.f3616e;
        ArrayList<View> arrayList = new ArrayList<>();
        ArrayList<View> arrayList2 = new ArrayList<>();
        Object m32473q = m32473q(m32480j, fragment, z);
        Object m32472r = m32472r(m32480j, fragment2, z2);
        Object m32477m = m32477m(m32480j, viewGroup, view, c1489a, c0764h, arrayList2, arrayList, m32473q, m32472r);
        if (m32473q == null && m32477m == null && m32472r == null) {
            return;
        }
        ArrayList<View> m32479k = m32479k(m32480j, m32472r, fragment2, arrayList2, view);
        ArrayList<View> m32479k2 = m32479k(m32480j, m32473q, fragment, arrayList, view);
        m32491A(m32479k2, 4);
        Object m32469u = m32469u(m32480j, m32473q, m32472r, m32477m, fragment, z);
        if (fragment2 != null && m32479k != null && (m32479k.size() > 0 || arrayList2.size() > 0)) {
            C0623b c0623b = new C0623b();
            abstractC0763g.mo32462b(fragment2, c0623b);
            m32480j.mo32451w(fragment2, m32469u, c0623b, new RunnableC0757a(abstractC0763g, fragment2, c0623b));
        }
        if (m32469u == null) {
            return;
        }
        m32468v(m32480j, m32472r, fragment2, m32479k);
        ArrayList<String> m32453o = m32480j.m32453o(arrayList);
        m32480j.mo30918t(m32469u, m32473q, m32479k2, m32472r, m32479k, m32477m, arrayList);
        m32480j.mo30926c(viewGroup, m32469u);
        m32480j.m32449y(viewGroup, arrayList2, arrayList, m32453o, c1489a);
        m32491A(m32479k2, 0);
        m32480j.mo30931A(m32477m, arrayList2, arrayList);
    }

    /* renamed from: p */
    private static C0764h m32474p(C0764h c0764h, SparseArray<C0764h> sparseArray, int i) {
        C0764h c0764h2 = c0764h;
        if (c0764h == null) {
            c0764h2 = new C0764h();
            sparseArray.put(i, c0764h2);
        }
        return c0764h2;
    }

    /* renamed from: q */
    private static Object m32473q(AbstractC0771v abstractC0771v, Fragment fragment, boolean z) {
        if (fragment == null) {
            return null;
        }
        return abstractC0771v.mo30924g(z ? fragment.m32944W() : fragment.m32991D());
    }

    /* renamed from: r */
    private static Object m32472r(AbstractC0771v abstractC0771v, Fragment fragment, boolean z) {
        if (fragment == null) {
            return null;
        }
        return abstractC0771v.mo30924g(z ? fragment.m32938Y() : fragment.m32983G());
    }

    /* renamed from: s */
    static View m32471s(C1489a<String, View> c1489a, C0764h c0764h, Object obj, boolean z) {
        ArrayList<String> arrayList;
        C0706a c0706a = c0764h.f3614c;
        if (obj == null || c1489a == null || (arrayList = c0706a.f3563p) == null || arrayList.isEmpty()) {
            return null;
        }
        return c1489a.get(z ? c0706a.f3563p.get(0) : c0706a.f3564q.get(0));
    }

    /* renamed from: t */
    private static Object m32470t(AbstractC0771v abstractC0771v, Fragment fragment, Fragment fragment2, boolean z) {
        if (fragment == null || fragment2 == null) {
            return null;
        }
        return abstractC0771v.mo30930B(abstractC0771v.mo30924g(z ? fragment2.m32934a0() : fragment.m32936Z()));
    }

    /* renamed from: u */
    private static Object m32469u(AbstractC0771v abstractC0771v, Object obj, Object obj2, Object obj3, Fragment fragment, boolean z) {
        return (obj == null || obj2 == null || fragment == null) ? true : z ? fragment.m32891w() : fragment.m32893v() ? abstractC0771v.mo30922n(obj2, obj, obj3) : abstractC0771v.mo30923m(obj2, obj, obj3);
    }

    /* renamed from: v */
    private static void m32468v(AbstractC0771v abstractC0771v, Object obj, Fragment fragment, ArrayList<View> arrayList) {
        if (fragment == null || obj == null || !fragment.f3231p || !fragment.f3193D || !fragment.f3207R) {
            return;
        }
        fragment.m32967N1(true);
        abstractC0771v.mo30919r(obj, fragment.m32928f0(), arrayList);
        ViewTreeObserver$OnPreDrawListenerC1676t.m29354a(fragment.f3200K, new RunnableC0758b(arrayList));
    }

    /* renamed from: w */
    private static AbstractC0771v m32467w() {
        try {
            return (AbstractC0771v) Class.forName("androidx.transition.e").getDeclaredConstructor(new Class[0]).newInstance(new Object[0]);
        } catch (Exception e) {
            return null;
        }
    }

    /* renamed from: x */
    public static void m32466x(C1489a<String, String> c1489a, C1489a<String, View> c1489a2) {
        for (int size = c1489a.size() - 1; size >= 0; size--) {
            if (!c1489a2.containsKey(c1489a.m29909m(size))) {
                c1489a.mo22746k(size);
            }
        }
    }

    /* renamed from: y */
    private static void m32465y(AbstractC0771v abstractC0771v, ViewGroup viewGroup, Fragment fragment, View view, ArrayList<View> arrayList, Object obj, ArrayList<View> arrayList2, Object obj2, ArrayList<View> arrayList3) {
        ViewTreeObserver$OnPreDrawListenerC1676t.m29354a(viewGroup, new RunnableC0760d(obj, abstractC0771v, view, fragment, arrayList, arrayList2, arrayList3, obj2));
    }

    /* renamed from: z */
    private static void m32464z(AbstractC0771v abstractC0771v, Object obj, Object obj2, C1489a<String, View> c1489a, boolean z, C0706a c0706a) {
        ArrayList<String> arrayList = c0706a.f3563p;
        if (arrayList == null || arrayList.isEmpty()) {
            return;
        }
        View view = c1489a.get(z ? c0706a.f3564q.get(0) : c0706a.f3563p.get(0));
        abstractC0771v.mo30916v(obj, view);
        if (obj2 == null) {
            return;
        }
        abstractC0771v.mo30916v(obj2, view);
    }
}

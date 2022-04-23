package android.support.v4.app;

import android.graphics.Rect;
import android.os.Build;
import android.support.v4.app.r;
import android.support.v4.b.g;
import android.transition.Transition;
import android.transition.TransitionManager;
import android.transition.TransitionSet;
import android.util.Log;
import android.util.SparseArray;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewTreeObserver;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Map;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes-dex2jar.jar:android/support/v4/app/d.class */
public final class d extends q implements Runnable {

    /* renamed from: a  reason: collision with root package name */
    static final boolean f56a;

    /* renamed from: b  reason: collision with root package name */
    final n f57b;
    a c;
    a d;
    int e;
    int f;
    int g;
    int h;
    int i;
    int j;
    int k;
    boolean l;
    String n;
    boolean o;
    int q;
    CharSequence r;
    int s;
    CharSequence t;
    ArrayList<String> u;
    ArrayList<String> v;
    boolean m = true;
    int p = -1;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes-dex2jar.jar:android/support/v4/app/d$a.class */
    public static final class a {

        /* renamed from: a  reason: collision with root package name */
        a f64a;

        /* renamed from: b  reason: collision with root package name */
        a f65b;
        int c;
        Fragment d;
        int e;
        int f;
        int g;
        int h;
        ArrayList<Fragment> i;
    }

    /* loaded from: classes-dex2jar.jar:android/support/v4/app/d$b.class */
    public final class b {

        /* renamed from: a  reason: collision with root package name */
        public android.support.v4.b.a<String, String> f66a = new android.support.v4.b.a<>();

        /* renamed from: b  reason: collision with root package name */
        public ArrayList<View> f67b = new ArrayList<>();
        public r.a c = new r.a();
        public View d;

        public b() {
        }
    }

    static {
        f56a = Build.VERSION.SDK_INT >= 21;
    }

    public d(n nVar) {
        this.f57b = nVar;
    }

    private int a(boolean z) {
        if (this.o) {
            throw new IllegalStateException("commit already called");
        }
        if (n.f78a) {
            Log.v("FragmentManager", "Commit: " + this);
            a("  ", new PrintWriter(new android.support.v4.b.d("FragmentManager")));
        }
        this.o = true;
        if (this.l) {
            this.p = this.f57b.a(this);
        } else {
            this.p = -1;
        }
        this.f57b.a(this, z);
        return this.p;
    }

    private b a(SparseArray<Fragment> sparseArray, SparseArray<Fragment> sparseArray2, boolean z) {
        boolean z2;
        b bVar = new b();
        bVar.d = new View(this.f57b.o.c);
        int i = 0;
        boolean z3 = false;
        while (true) {
            z2 = z3;
            if (i < sparseArray.size()) {
                if (a(sparseArray.keyAt(i), bVar, z, sparseArray, sparseArray2)) {
                    z3 = true;
                }
                i++;
            }
        }
        for (int i2 = 0; i2 < sparseArray2.size(); i2++) {
            int keyAt = sparseArray2.keyAt(i2);
            z2 = z2;
            if (sparseArray.get(keyAt) == null) {
                z2 = z2;
                if (a(keyAt, bVar, z, sparseArray, sparseArray2)) {
                    z2 = true;
                }
            }
        }
        b bVar2 = bVar;
        if (!z2) {
            bVar2 = null;
        }
        return bVar2;
    }

    private android.support.v4.b.a<String, View> a(b bVar, Fragment fragment, boolean z) {
        android.support.v4.b.a<String, View> aVar = new android.support.v4.b.a<>();
        android.support.v4.b.a<String, View> aVar2 = aVar;
        if (this.u != null) {
            r.a((Map<String, View>) aVar, fragment.getView());
            if (z) {
                g.a((Map) aVar, (Collection<?>) this.v);
                aVar2 = aVar;
            } else {
                aVar2 = a(this.u, this.v, aVar);
            }
        }
        if (z) {
            if (fragment.ag != null) {
                ai aiVar = fragment.ag;
            }
            a(bVar, aVar2, false);
        } else {
            if (fragment.ah != null) {
                ai aiVar2 = fragment.ah;
            }
            b(bVar, aVar2, false);
        }
        return aVar2;
    }

    static /* synthetic */ android.support.v4.b.a a(d dVar, b bVar, boolean z, Fragment fragment) {
        android.support.v4.b.a<String, View> aVar = new android.support.v4.b.a<>();
        View view = fragment.getView();
        android.support.v4.b.a<String, View> aVar2 = aVar;
        if (view != null) {
            aVar2 = aVar;
            if (dVar.u != null) {
                r.a((Map<String, View>) aVar, view);
                if (z) {
                    aVar2 = a(dVar.u, dVar.v, aVar);
                } else {
                    g.a((Map) aVar, (Collection<?>) dVar.v);
                    aVar2 = aVar;
                }
            }
        }
        if (z) {
            if (fragment.ah != null) {
                ai aiVar = fragment.ah;
            }
            dVar.a(bVar, aVar2, true);
        } else {
            if (fragment.ag != null) {
                ai aiVar2 = fragment.ag;
            }
            b(bVar, aVar2, true);
        }
        return aVar2;
    }

    private static android.support.v4.b.a<String, View> a(ArrayList<String> arrayList, ArrayList<String> arrayList2, android.support.v4.b.a<String, View> aVar) {
        android.support.v4.b.a<String, View> aVar2;
        if (aVar.isEmpty()) {
            aVar2 = aVar;
        } else {
            android.support.v4.b.a<String, View> aVar3 = new android.support.v4.b.a<>();
            int size = arrayList.size();
            for (int i = 0; i < size; i++) {
                View view = aVar.get(arrayList.get(i));
                if (view != null) {
                    aVar3.put(arrayList2.get(i), view);
                }
            }
            aVar2 = aVar3;
        }
        return aVar2;
    }

    private static Object a(Object obj, Fragment fragment, ArrayList<View> arrayList, android.support.v4.b.a<String, View> aVar, View view) {
        Object obj2 = obj;
        if (obj != null) {
            View view2 = fragment.getView();
            obj2 = obj;
            if (obj != null) {
                r.a(arrayList, view2);
                if (aVar != null) {
                    arrayList.removeAll(aVar.values());
                }
                if (arrayList.isEmpty()) {
                    obj2 = null;
                } else {
                    arrayList.add(view);
                    r.b((Transition) obj, arrayList);
                    obj2 = obj;
                }
            }
        }
        return obj2;
    }

    static /* synthetic */ void a(Fragment fragment, Fragment fragment2, boolean z, android.support.v4.b.a aVar) {
        if ((z ? fragment2.ag : fragment.ag) != null) {
            new ArrayList(aVar.keySet());
            new ArrayList(aVar.values());
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a(b bVar, int i, Object obj) {
        if (this.f57b.g != null) {
            for (int i2 = 0; i2 < this.f57b.g.size(); i2++) {
                Fragment fragment = this.f57b.g.get(i2);
                if (!(fragment.R == null || fragment.Q == null || fragment.G != i)) {
                    if (!fragment.I) {
                        r.a(obj, fragment.R, false);
                        bVar.f67b.remove(fragment.R);
                    } else if (!bVar.f67b.contains(fragment.R)) {
                        r.a(obj, fragment.R, true);
                        bVar.f67b.add(fragment.R);
                    }
                }
            }
        }
    }

    private void a(b bVar, android.support.v4.b.a<String, View> aVar, boolean z) {
        int size = this.v == null ? 0 : this.v.size();
        for (int i = 0; i < size; i++) {
            String str = this.u.get(i);
            View view = aVar.get(this.v.get(i));
            if (view != null) {
                String transitionName = view.getTransitionName();
                if (z) {
                    a(bVar.f66a, str, transitionName);
                } else {
                    a(bVar.f66a, transitionName, str);
                }
            }
        }
    }

    private static void a(b bVar, ArrayList<String> arrayList, ArrayList<String> arrayList2) {
        if (arrayList != null) {
            for (int i = 0; i < arrayList.size(); i++) {
                a(bVar.f66a, arrayList.get(i), arrayList2.get(i));
            }
        }
    }

    static /* synthetic */ void a(d dVar, android.support.v4.b.a aVar, b bVar) {
        View view;
        if (dVar.v != null && !aVar.isEmpty() && (view = (View) aVar.get(dVar.v.get(0))) != null) {
            bVar.c.f101a = view;
        }
    }

    private static void a(android.support.v4.b.a<String, String> aVar, String str, String str2) {
        if (!(str == null || str2 == null)) {
            for (int i = 0; i < aVar.size(); i++) {
                if (str.equals(aVar.c(i))) {
                    aVar.a(i, (int) str2);
                    return;
                }
            }
            aVar.put(str, str2);
        }
    }

    private static void a(SparseArray<Fragment> sparseArray, SparseArray<Fragment> sparseArray2, Fragment fragment) {
        int i;
        if (fragment != null && (i = fragment.G) != 0 && !fragment.isHidden()) {
            if (fragment.isAdded() && fragment.getView() != null && sparseArray.get(i) == null) {
                sparseArray.put(i, fragment);
            }
            if (sparseArray2.get(i) == fragment) {
                sparseArray2.remove(i);
            }
        }
    }

    private boolean a(final int i, final b bVar, final boolean z, SparseArray<Fragment> sparseArray, SparseArray<Fragment> sparseArray2) {
        Object a2;
        final TransitionSet transitionSet;
        Object a3;
        android.support.v4.b.a<String, View> aVar;
        TransitionSet transitionSet2;
        TransitionSet transitionSet3;
        final TransitionSet transitionSet4;
        boolean z2;
        View view;
        final ViewGroup viewGroup = (ViewGroup) this.f57b.p.a(i);
        if (viewGroup == null) {
            z2 = false;
        } else {
            final Fragment fragment = sparseArray2.get(i);
            final Fragment fragment2 = sparseArray.get(i);
            if (fragment == null) {
                a2 = null;
            } else {
                a2 = r.a(z ? fragment.getReenterTransition() : fragment.getEnterTransition());
            }
            if (fragment == null || fragment2 == null) {
                transitionSet = null;
            } else {
                Object sharedElementReturnTransition = z ? fragment2.getSharedElementReturnTransition() : fragment.getSharedElementEnterTransition();
                if (sharedElementReturnTransition == null) {
                    transitionSet = null;
                } else {
                    Transition transition = (Transition) sharedElementReturnTransition;
                    if (transition == null) {
                        transitionSet = null;
                    } else {
                        transitionSet = new TransitionSet();
                        transitionSet.addTransition(transition);
                    }
                }
            }
            if (fragment2 == null) {
                a3 = null;
            } else {
                a3 = r.a(z ? fragment2.getReturnTransition() : fragment2.getExitTransition());
            }
            final ArrayList arrayList = new ArrayList();
            if (transitionSet != null) {
                aVar = a(bVar, fragment2, z);
                if (aVar.isEmpty()) {
                    aVar = null;
                    transitionSet2 = null;
                } else {
                    if ((z ? fragment2.ag : fragment.ag) != null) {
                        new ArrayList(aVar.keySet());
                        new ArrayList(aVar.values());
                    }
                    viewGroup.getViewTreeObserver().addOnPreDrawListener(new ViewTreeObserver.OnPreDrawListener() { // from class: android.support.v4.app.d.2
                        @Override // android.view.ViewTreeObserver.OnPreDrawListener
                        public final boolean onPreDraw() {
                            viewGroup.getViewTreeObserver().removeOnPreDrawListener(this);
                            if (transitionSet == null) {
                                return true;
                            }
                            r.a(transitionSet, arrayList);
                            arrayList.clear();
                            android.support.v4.b.a a4 = d.a(d.this, bVar, z, fragment);
                            r.a(transitionSet, bVar.d, a4, arrayList);
                            d.a(d.this, a4, bVar);
                            d.a(fragment, fragment2, z, a4);
                            return true;
                        }
                    });
                    transitionSet2 = transitionSet;
                }
            } else {
                aVar = null;
                transitionSet2 = transitionSet;
            }
            if (a2 == null && transitionSet2 == null && a3 == null) {
                z2 = false;
            } else {
                final ArrayList arrayList2 = new ArrayList();
                Object a4 = a(a3, fragment2, arrayList2, aVar, bVar.d);
                if (!(this.v == null || aVar == null || (view = aVar.get(this.v.get(0))) == null)) {
                    if (a4 != null) {
                        r.a(a4, view);
                    }
                    if (transitionSet2 != null) {
                        r.a(transitionSet2, view);
                    }
                }
                final r.b bVar2 = new r.b() { // from class: android.support.v4.app.d.1
                    @Override // android.support.v4.app.r.b
                    public final View a() {
                        return fragment.getView();
                    }
                };
                final ArrayList arrayList3 = new ArrayList();
                final android.support.v4.b.a aVar2 = new android.support.v4.b.a();
                boolean allowReturnTransitionOverlap = fragment != null ? z ? fragment.getAllowReturnTransitionOverlap() : fragment.getAllowEnterTransitionOverlap() : true;
                Transition transition2 = (Transition) a2;
                Transition transition3 = (Transition) a4;
                TransitionSet transitionSet5 = transitionSet2;
                if (transition2 == null || transition3 == null) {
                    allowReturnTransitionOverlap = true;
                }
                if (allowReturnTransitionOverlap) {
                    TransitionSet transitionSet6 = new TransitionSet();
                    if (transition2 != null) {
                        transitionSet6.addTransition(transition2);
                    }
                    if (transition3 != null) {
                        transitionSet6.addTransition(transition3);
                    }
                    transitionSet4 = transitionSet6;
                    if (transitionSet5 != null) {
                        transitionSet6.addTransition(transitionSet5);
                        transitionSet4 = transitionSet6;
                    }
                } else {
                    if (transition3 != null && transition2 != null) {
                        transitionSet3 = new TransitionSet().addTransition(transition3).addTransition(transition2).setOrdering(1);
                    } else if (transition3 != null) {
                        transitionSet3 = transition3;
                    } else {
                        transitionSet3 = transition2;
                        if (transition2 == null) {
                            transitionSet3 = null;
                        }
                    }
                    transitionSet4 = transitionSet3;
                    if (transitionSet5 != null) {
                        TransitionSet transitionSet7 = new TransitionSet();
                        if (transitionSet3 != null) {
                            transitionSet7.addTransition(transitionSet3);
                        }
                        transitionSet7.addTransition(transitionSet5);
                        transitionSet4 = transitionSet7;
                    }
                }
                if (transitionSet4 != null) {
                    final View view2 = bVar.d;
                    final r.a aVar3 = bVar.c;
                    final android.support.v4.b.a<String, String> aVar4 = bVar.f66a;
                    if (!(a2 == null && transitionSet2 == null)) {
                        final Transition transition4 = (Transition) a2;
                        if (transition4 != null) {
                            transition4.addTarget(view2);
                        }
                        if (transitionSet2 != null) {
                            r.a(transitionSet2, view2, aVar, arrayList);
                        }
                        viewGroup.getViewTreeObserver().addOnPreDrawListener(new ViewTreeObserver.OnPreDrawListener() { // from class: android.support.v4.app.r.2
                            @Override // android.view.ViewTreeObserver.OnPreDrawListener
                            public final boolean onPreDraw() {
                                viewGroup.getViewTreeObserver().removeOnPreDrawListener(this);
                                if (transition4 != null) {
                                    transition4.removeTarget(view2);
                                }
                                View a5 = bVar2.a();
                                if (a5 == null) {
                                    return true;
                                }
                                if (!aVar4.isEmpty()) {
                                    r.a((Map<String, View>) aVar2, a5);
                                    aVar2.keySet().retainAll(aVar4.values());
                                    for (Map.Entry entry : aVar4.entrySet()) {
                                        View view3 = (View) aVar2.get((String) entry.getValue());
                                        if (view3 != null) {
                                            view3.setTransitionName((String) entry.getKey());
                                        }
                                    }
                                }
                                if (transition4 == null) {
                                    return true;
                                }
                                r.a((ArrayList<View>) arrayList3, a5);
                                arrayList3.removeAll(aVar2.values());
                                arrayList3.add(view2);
                                r.b(transition4, arrayList3);
                                return true;
                            }
                        });
                        if (transition4 != null) {
                            transition4.setEpicenterCallback(new Transition.EpicenterCallback() { // from class: android.support.v4.app.r.3

                                /* renamed from: b */
                                private Rect f98b;

                                @Override // android.transition.Transition.EpicenterCallback
                                public final Rect onGetEpicenter(Transition transition5) {
                                    if (this.f98b == null && aVar3.f101a != null) {
                                        this.f98b = r.a(aVar3.f101a);
                                    }
                                    return this.f98b;
                                }
                            });
                        }
                    }
                    viewGroup.getViewTreeObserver().addOnPreDrawListener(new ViewTreeObserver.OnPreDrawListener() { // from class: android.support.v4.app.d.3
                        @Override // android.view.ViewTreeObserver.OnPreDrawListener
                        public final boolean onPreDraw() {
                            viewGroup.getViewTreeObserver().removeOnPreDrawListener(this);
                            d.this.a(bVar, i, transitionSet4);
                            return true;
                        }
                    });
                    r.a((Object) transitionSet4, bVar.d, true);
                    a(bVar, i, transitionSet4);
                    TransitionManager.beginDelayedTransition(viewGroup, transitionSet4);
                    final View view3 = bVar.d;
                    final ArrayList<View> arrayList4 = bVar.f67b;
                    final Transition transition5 = (Transition) a2;
                    final Transition transition6 = (Transition) a4;
                    final TransitionSet transitionSet8 = transitionSet2;
                    final Transition transition7 = transitionSet4;
                    if (transition7 != null) {
                        viewGroup.getViewTreeObserver().addOnPreDrawListener(new ViewTreeObserver.OnPreDrawListener() { // from class: android.support.v4.app.r.4
                            @Override // android.view.ViewTreeObserver.OnPreDrawListener
                            public final boolean onPreDraw() {
                                viewGroup.getViewTreeObserver().removeOnPreDrawListener(this);
                                if (transition5 != null) {
                                    r.a(transition5, arrayList3);
                                }
                                if (transition6 != null) {
                                    r.a(transition6, arrayList2);
                                }
                                if (transitionSet8 != null) {
                                    r.a(transitionSet8, arrayList);
                                }
                                for (Map.Entry entry : aVar2.entrySet()) {
                                    ((View) entry.getValue()).setTransitionName((String) entry.getKey());
                                }
                                int size = arrayList4.size();
                                for (int i2 = 0; i2 < size; i2++) {
                                    transition7.excludeTarget((View) arrayList4.get(i2), false);
                                }
                                transition7.excludeTarget(view3, false);
                                return true;
                            }
                        });
                    }
                }
                z2 = transitionSet4 != null;
            }
        }
        return z2;
    }

    private void b(int i, Fragment fragment, String str) {
        fragment.B = this.f57b;
        if (str != null) {
            if (fragment.H == null || str.equals(fragment.H)) {
                fragment.H = str;
            } else {
                throw new IllegalStateException("Can't change tag of fragment " + fragment + ": was " + fragment.H + " now " + str);
            }
        }
        if (i != 0) {
            if (fragment.F == 0 || fragment.F == i) {
                fragment.F = i;
                fragment.G = i;
            } else {
                throw new IllegalStateException("Can't change container ID of fragment " + fragment + ": was " + fragment.F + " now " + i);
            }
        }
        a aVar = new a();
        aVar.c = 1;
        aVar.d = fragment;
        a(aVar);
    }

    private static void b(b bVar, android.support.v4.b.a<String, View> aVar, boolean z) {
        int size = aVar.size();
        for (int i = 0; i < size; i++) {
            String b2 = aVar.b(i);
            String transitionName = aVar.c(i).getTransitionName();
            if (z) {
                a(bVar.f66a, b2, transitionName);
            } else {
                a(bVar.f66a, transitionName, b2);
            }
        }
    }

    private void b(SparseArray<Fragment> sparseArray, SparseArray<Fragment> sparseArray2) {
        if (this.f57b.p.a()) {
            for (a aVar = this.c; aVar != null; aVar = aVar.f64a) {
                switch (aVar.c) {
                    case 1:
                        b(sparseArray, sparseArray2, aVar.d);
                        break;
                    case 2:
                        Fragment fragment = aVar.d;
                        if (this.f57b.g != null) {
                            for (int i = 0; i < this.f57b.g.size(); i++) {
                                Fragment fragment2 = this.f57b.g.get(i);
                                if (fragment != null) {
                                    fragment = fragment;
                                    if (fragment2.G != fragment.G) {
                                    }
                                }
                                if (fragment2 == fragment) {
                                    fragment = null;
                                    sparseArray2.remove(fragment2.G);
                                } else {
                                    a(sparseArray, sparseArray2, fragment2);
                                    fragment = fragment;
                                }
                            }
                        }
                        b(sparseArray, sparseArray2, aVar.d);
                        break;
                    case 3:
                        a(sparseArray, sparseArray2, aVar.d);
                        break;
                    case 4:
                        a(sparseArray, sparseArray2, aVar.d);
                        break;
                    case 5:
                        b(sparseArray, sparseArray2, aVar.d);
                        break;
                    case 6:
                        a(sparseArray, sparseArray2, aVar.d);
                        break;
                    case 7:
                        b(sparseArray, sparseArray2, aVar.d);
                        break;
                }
            }
        }
    }

    private void b(SparseArray<Fragment> sparseArray, SparseArray<Fragment> sparseArray2, Fragment fragment) {
        if (fragment != null) {
            int i = fragment.G;
            if (i != 0) {
                if (!fragment.isAdded()) {
                    sparseArray2.put(i, fragment);
                }
                if (sparseArray.get(i) == fragment) {
                    sparseArray.remove(i);
                }
            }
            if (fragment.k <= 0 && this.f57b.n > 0) {
                this.f57b.c(fragment);
                this.f57b.a(fragment, 1, 0, 0, false);
            }
        }
    }

    @Override // android.support.v4.app.q
    public final int a() {
        return a(false);
    }

    /* JADX WARN: Code restructure failed: missing block: B:14:0x005c, code lost:
        if (r12.size() != 0) goto L_0x005f;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final android.support.v4.app.d.b a(boolean r9, android.support.v4.app.d.b r10, android.util.SparseArray<android.support.v4.app.Fragment> r11, android.util.SparseArray<android.support.v4.app.Fragment> r12) {
        /*
            Method dump skipped, instructions count: 684
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: android.support.v4.app.d.a(boolean, android.support.v4.app.d$b, android.util.SparseArray, android.util.SparseArray):android.support.v4.app.d$b");
    }

    @Override // android.support.v4.app.q
    public final q a(int i, Fragment fragment) {
        b(i, fragment, (String) null);
        return this;
    }

    @Override // android.support.v4.app.q
    public final q a(int i, Fragment fragment, String str) {
        b(i, fragment, str);
        return this;
    }

    @Override // android.support.v4.app.q
    public final q a(Fragment fragment) {
        a aVar = new a();
        aVar.c = 3;
        aVar.d = fragment;
        a(aVar);
        return this;
    }

    @Override // android.support.v4.app.q
    public final q a(Fragment fragment, String str) {
        b(0, fragment, str);
        return this;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final void a(int i) {
        if (this.l) {
            if (n.f78a) {
                Log.v("FragmentManager", "Bump nesting in " + this + " by " + i);
            }
            for (a aVar = this.c; aVar != null; aVar = aVar.f64a) {
                if (aVar.d != null) {
                    aVar.d.A += i;
                    if (n.f78a) {
                        Log.v("FragmentManager", "Bump nesting of " + aVar.d + " to " + aVar.d.A);
                    }
                }
                if (aVar.i != null) {
                    for (int size = aVar.i.size() - 1; size >= 0; size--) {
                        Fragment fragment = aVar.i.get(size);
                        fragment.A += i;
                        if (n.f78a) {
                            Log.v("FragmentManager", "Bump nesting of " + fragment + " to " + fragment.A);
                        }
                    }
                }
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final void a(a aVar) {
        if (this.c == null) {
            this.d = aVar;
            this.c = aVar;
        } else {
            aVar.f65b = this.d;
            this.d.f64a = aVar;
            this.d = aVar;
        }
        aVar.e = this.f;
        aVar.f = this.g;
        aVar.g = this.h;
        aVar.h = this.i;
        this.e++;
    }

    public final void a(SparseArray<Fragment> sparseArray, SparseArray<Fragment> sparseArray2) {
        if (this.f57b.p.a()) {
            for (a aVar = this.d; aVar != null; aVar = aVar.f65b) {
                switch (aVar.c) {
                    case 1:
                        a(sparseArray, sparseArray2, aVar.d);
                        break;
                    case 2:
                        if (aVar.i != null) {
                            for (int size = aVar.i.size() - 1; size >= 0; size--) {
                                b(sparseArray, sparseArray2, aVar.i.get(size));
                            }
                        }
                        a(sparseArray, sparseArray2, aVar.d);
                        break;
                    case 3:
                        b(sparseArray, sparseArray2, aVar.d);
                        break;
                    case 4:
                        b(sparseArray, sparseArray2, aVar.d);
                        break;
                    case 5:
                        a(sparseArray, sparseArray2, aVar.d);
                        break;
                    case 6:
                        b(sparseArray, sparseArray2, aVar.d);
                        break;
                    case 7:
                        a(sparseArray, sparseArray2, aVar.d);
                        break;
                }
            }
        }
    }

    public final void a(String str, PrintWriter printWriter) {
        a(str, printWriter, true);
    }

    public final void a(String str, PrintWriter printWriter, boolean z) {
        String str2;
        if (z) {
            printWriter.print(str);
            printWriter.print("mName=");
            printWriter.print(this.n);
            printWriter.print(" mIndex=");
            printWriter.print(this.p);
            printWriter.print(" mCommitted=");
            printWriter.println(this.o);
            if (this.j != 0) {
                printWriter.print(str);
                printWriter.print("mTransition=#");
                printWriter.print(Integer.toHexString(this.j));
                printWriter.print(" mTransitionStyle=#");
                printWriter.println(Integer.toHexString(this.k));
            }
            if (!(this.f == 0 && this.g == 0)) {
                printWriter.print(str);
                printWriter.print("mEnterAnim=#");
                printWriter.print(Integer.toHexString(this.f));
                printWriter.print(" mExitAnim=#");
                printWriter.println(Integer.toHexString(this.g));
            }
            if (!(this.h == 0 && this.i == 0)) {
                printWriter.print(str);
                printWriter.print("mPopEnterAnim=#");
                printWriter.print(Integer.toHexString(this.h));
                printWriter.print(" mPopExitAnim=#");
                printWriter.println(Integer.toHexString(this.i));
            }
            if (!(this.q == 0 && this.r == null)) {
                printWriter.print(str);
                printWriter.print("mBreadCrumbTitleRes=#");
                printWriter.print(Integer.toHexString(this.q));
                printWriter.print(" mBreadCrumbTitleText=");
                printWriter.println(this.r);
            }
            if (!(this.s == 0 && this.t == null)) {
                printWriter.print(str);
                printWriter.print("mBreadCrumbShortTitleRes=#");
                printWriter.print(Integer.toHexString(this.s));
                printWriter.print(" mBreadCrumbShortTitleText=");
                printWriter.println(this.t);
            }
        }
        if (this.c != null) {
            printWriter.print(str);
            printWriter.println("Operations:");
            String str3 = str + "    ";
            a aVar = this.c;
            int i = 0;
            while (aVar != null) {
                switch (aVar.c) {
                    case 0:
                        str2 = "NULL";
                        break;
                    case 1:
                        str2 = "ADD";
                        break;
                    case 2:
                        str2 = "REPLACE";
                        break;
                    case 3:
                        str2 = "REMOVE";
                        break;
                    case 4:
                        str2 = "HIDE";
                        break;
                    case 5:
                        str2 = "SHOW";
                        break;
                    case 6:
                        str2 = "DETACH";
                        break;
                    case 7:
                        str2 = "ATTACH";
                        break;
                    default:
                        str2 = "cmd=" + aVar.c;
                        break;
                }
                printWriter.print(str);
                printWriter.print("  Op #");
                printWriter.print(i);
                printWriter.print(": ");
                printWriter.print(str2);
                printWriter.print(" ");
                printWriter.println(aVar.d);
                if (z) {
                    if (!(aVar.e == 0 && aVar.f == 0)) {
                        printWriter.print(str);
                        printWriter.print("enterAnim=#");
                        printWriter.print(Integer.toHexString(aVar.e));
                        printWriter.print(" exitAnim=#");
                        printWriter.println(Integer.toHexString(aVar.f));
                    }
                    if (!(aVar.g == 0 && aVar.h == 0)) {
                        printWriter.print(str);
                        printWriter.print("popEnterAnim=#");
                        printWriter.print(Integer.toHexString(aVar.g));
                        printWriter.print(" popExitAnim=#");
                        printWriter.println(Integer.toHexString(aVar.h));
                    }
                }
                if (aVar.i != null && aVar.i.size() > 0) {
                    for (int i2 = 0; i2 < aVar.i.size(); i2++) {
                        printWriter.print(str3);
                        if (aVar.i.size() == 1) {
                            printWriter.print("Removed: ");
                        } else {
                            if (i2 == 0) {
                                printWriter.println("Removed:");
                            }
                            printWriter.print(str3);
                            printWriter.print("  #");
                            printWriter.print(i2);
                            printWriter.print(": ");
                        }
                        printWriter.println(aVar.i.get(i2));
                    }
                }
                aVar = aVar.f64a;
                i++;
            }
        }
    }

    @Override // android.support.v4.app.q
    public final int b() {
        return a(true);
    }

    @Override // android.support.v4.app.q
    public final q b(Fragment fragment) {
        a aVar = new a();
        aVar.c = 6;
        aVar.d = fragment;
        a(aVar);
        return this;
    }

    @Override // android.support.v4.app.q
    public final q c(Fragment fragment) {
        a aVar = new a();
        aVar.c = 7;
        aVar.d = fragment;
        a(aVar);
        return this;
    }

    @Override // java.lang.Runnable
    public final void run() {
        b bVar;
        if (n.f78a) {
            Log.v("FragmentManager", "Run: " + this);
        }
        if (!this.l || this.p >= 0) {
            a(1);
            if (!f56a || this.f57b.n <= 0) {
                bVar = null;
            } else {
                SparseArray<Fragment> sparseArray = new SparseArray<>();
                SparseArray<Fragment> sparseArray2 = new SparseArray<>();
                b(sparseArray, sparseArray2);
                bVar = a(sparseArray, sparseArray2, false);
            }
            int i = bVar != null ? 0 : this.k;
            int i2 = bVar != null ? 0 : this.j;
            for (a aVar = this.c; aVar != null; aVar = aVar.f64a) {
                int i3 = bVar != null ? 0 : aVar.e;
                int i4 = bVar != null ? 0 : aVar.f;
                switch (aVar.c) {
                    case 1:
                        Fragment fragment = aVar.d;
                        fragment.P = i3;
                        this.f57b.a(fragment, false);
                        break;
                    case 2:
                        Fragment fragment2 = aVar.d;
                        int i5 = fragment2.G;
                        Fragment fragment3 = fragment2;
                        if (this.f57b.g != null) {
                            int size = this.f57b.g.size() - 1;
                            while (true) {
                                fragment3 = fragment2;
                                if (size >= 0) {
                                    Fragment fragment4 = this.f57b.g.get(size);
                                    if (n.f78a) {
                                        Log.v("FragmentManager", "OP_REPLACE: adding=" + fragment2 + " old=" + fragment4);
                                    }
                                    if (fragment4.G == i5) {
                                        if (fragment4 == fragment2) {
                                            fragment2 = null;
                                            aVar.d = null;
                                        } else {
                                            if (aVar.i == null) {
                                                aVar.i = new ArrayList<>();
                                            }
                                            aVar.i.add(fragment4);
                                            fragment4.P = i4;
                                            if (this.l) {
                                                fragment4.A++;
                                                if (n.f78a) {
                                                    Log.v("FragmentManager", "Bump nesting of " + fragment4 + " to " + fragment4.A);
                                                }
                                            }
                                            this.f57b.a(fragment4, i2, i);
                                        }
                                    }
                                    size--;
                                }
                            }
                        }
                        if (fragment3 != null) {
                            fragment3.P = i3;
                            this.f57b.a(fragment3, false);
                            break;
                        } else {
                            break;
                        }
                    case 3:
                        Fragment fragment5 = aVar.d;
                        fragment5.P = i4;
                        this.f57b.a(fragment5, i2, i);
                        break;
                    case 4:
                        Fragment fragment6 = aVar.d;
                        fragment6.P = i4;
                        this.f57b.b(fragment6, i2, i);
                        break;
                    case 5:
                        Fragment fragment7 = aVar.d;
                        fragment7.P = i3;
                        this.f57b.c(fragment7, i2, i);
                        break;
                    case 6:
                        Fragment fragment8 = aVar.d;
                        fragment8.P = i4;
                        this.f57b.d(fragment8, i2, i);
                        break;
                    case 7:
                        Fragment fragment9 = aVar.d;
                        fragment9.P = i3;
                        this.f57b.e(fragment9, i2, i);
                        break;
                    default:
                        throw new IllegalArgumentException("Unknown cmd: " + aVar.c);
                }
            }
            this.f57b.a(this.f57b.n, i2, i, true);
            if (this.l) {
                n nVar = this.f57b;
                if (nVar.i == null) {
                    nVar.i = new ArrayList<>();
                }
                nVar.i.add(this);
                nVar.e();
                return;
            }
            return;
        }
        throw new IllegalStateException("addToBackStack() called after commit()");
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder(128);
        sb.append("BackStackEntry{");
        sb.append(Integer.toHexString(System.identityHashCode(this)));
        if (this.p >= 0) {
            sb.append(" #");
            sb.append(this.p);
        }
        if (this.n != null) {
            sb.append(" ");
            sb.append(this.n);
        }
        sb.append("}");
        return sb.toString();
    }
}

package p1727n3.p1789g0;

import android.animation.Animator;
import android.animation.TimeInterpolator;
import android.graphics.Path;
import android.graphics.Rect;
import android.util.SparseIntArray;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ListView;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.Objects;
import java.util.concurrent.atomic.AtomicInteger;
import p1727n3.p1788g.C26174a;
import p1727n3.p1788g.C26178d;
import p1727n3.p1788g.C26179e;
import p1727n3.p1807k.p1821i.C26614s;
/* renamed from: n3.g0.m */
/* loaded from: classes-dex2jar.jar:n3/g0/m.class */
public abstract class AbstractC26214m implements Cloneable {

    /* renamed from: v */
    public static final int[] f73078v = {2, 1, 3, 4};

    /* renamed from: w */
    public static final AbstractC26205h f73079w = new C26215a();

    /* renamed from: x */
    public static ThreadLocal<C26174a<Animator, C26216b>> f73080x = new ThreadLocal<>();

    /* renamed from: k */
    public ArrayList<C26227u> f73091k;

    /* renamed from: l */
    public ArrayList<C26227u> f73092l;

    /* renamed from: s */
    public AbstractC26224r f73099s;

    /* renamed from: t */
    public AbstractC26217c f73100t;

    /* renamed from: a */
    public String f73081a = getClass().getName();

    /* renamed from: b */
    public long f73082b = -1;

    /* renamed from: c */
    public long f73083c = -1;

    /* renamed from: d */
    public TimeInterpolator f73084d = null;

    /* renamed from: e */
    public ArrayList<Integer> f73085e = new ArrayList<>();

    /* renamed from: f */
    public ArrayList<View> f73086f = new ArrayList<>();

    /* renamed from: g */
    public C26228v f73087g = new C26228v();

    /* renamed from: h */
    public C26228v f73088h = new C26228v();

    /* renamed from: i */
    public C26225s f73089i = null;

    /* renamed from: j */
    public int[] f73090j = f73078v;

    /* renamed from: m */
    public ArrayList<Animator> f73093m = new ArrayList<>();

    /* renamed from: n */
    public int f73094n = 0;

    /* renamed from: o */
    public boolean f73095o = false;

    /* renamed from: p */
    public boolean f73096p = false;

    /* renamed from: q */
    public ArrayList<AbstractC26218d> f73097q = null;

    /* renamed from: r */
    public ArrayList<Animator> f73098r = new ArrayList<>();

    /* renamed from: u */
    public AbstractC26205h f73101u = f73079w;

    /* renamed from: n3.g0.m$a */
    /* loaded from: classes-dex2jar.jar:n3/g0/m$a.class */
    public static final class C26215a extends AbstractC26205h {
        @Override // p1727n3.p1789g0.AbstractC26205h
        /* renamed from: a */
        public Path mo2525a(float f, float f2, float f3, float f4) {
            Path path = new Path();
            path.moveTo(f, f2);
            path.lineTo(f3, f4);
            return path;
        }
    }

    /* renamed from: n3.g0.m$b */
    /* loaded from: classes-dex2jar.jar:n3/g0/m$b.class */
    public static class C26216b {

        /* renamed from: a */
        public View f73102a;

        /* renamed from: b */
        public String f73103b;

        /* renamed from: c */
        public C26227u f73104c;

        /* renamed from: d */
        public AbstractC26213k0 f73105d;

        /* renamed from: e */
        public AbstractC26214m f73106e;

        public C26216b(View view, String str, AbstractC26214m abstractC26214m, AbstractC26213k0 abstractC26213k0, C26227u c26227u) {
            this.f73102a = view;
            this.f73103b = str;
            this.f73104c = c26227u;
            this.f73105d = abstractC26213k0;
            this.f73106e = abstractC26214m;
        }
    }

    /* renamed from: n3.g0.m$c */
    /* loaded from: classes-dex2jar.jar:n3/g0/m$c.class */
    public static abstract class AbstractC26217c {
        /* renamed from: a */
        public abstract Rect mo2524a(AbstractC26214m abstractC26214m);
    }

    /* renamed from: n3.g0.m$d */
    /* loaded from: classes-dex2jar.jar:n3/g0/m$d.class */
    public interface AbstractC26218d {
        /* renamed from: a */
        void mo2494a(AbstractC26214m abstractC26214m);

        /* renamed from: b */
        void mo2493b(AbstractC26214m abstractC26214m);

        /* renamed from: c */
        void mo2492c(AbstractC26214m abstractC26214m);

        /* renamed from: d */
        void mo2491d(AbstractC26214m abstractC26214m);

        /* renamed from: e */
        void mo2490e(AbstractC26214m abstractC26214m);
    }

    /* renamed from: e */
    public static void m2539e(C26228v c26228v, View view, C26227u c26227u) {
        c26228v.f73126a.put(view, c26227u);
        int id = view.getId();
        if (id >= 0) {
            if (c26228v.f73127b.indexOfKey(id) >= 0) {
                c26228v.f73127b.put(id, null);
            } else {
                c26228v.f73127b.put(id, view);
            }
        }
        AtomicInteger atomicInteger = C26614s.f74505a;
        String transitionName = view.getTransitionName();
        if (transitionName != null) {
            if (c26228v.f73129d.m2579i(transitionName) >= 0) {
                c26228v.f73129d.put(transitionName, null);
            } else {
                c26228v.f73129d.put(transitionName, view);
            }
        }
        if (view.getParent() instanceof ListView) {
            ListView listView = (ListView) view.getParent();
            if (!listView.getAdapter().hasStableIds()) {
                return;
            }
            long itemIdAtPosition = listView.getItemIdAtPosition(listView.getPositionForView(view));
            C26179e<View> c26179e = c26228v.f73128c;
            if (c26179e.f73000a) {
                c26179e.m2605f();
            }
            if (C26178d.m2614b(c26179e.f73001b, c26179e.f73003d, itemIdAtPosition) < 0) {
                view.setHasTransientState(true);
                c26228v.f73128c.m2600k(itemIdAtPosition, view);
                return;
            }
            View m2604g = c26228v.f73128c.m2604g(itemIdAtPosition);
            if (m2604g == null) {
                return;
            }
            m2604g.setHasTransientState(false);
            c26228v.f73128c.m2600k(itemIdAtPosition, null);
        }
    }

    /* renamed from: r */
    public static C26174a<Animator, C26216b> m2531r() {
        C26174a<Animator, C26216b> c26174a = f73080x.get();
        C26174a<Animator, C26216b> c26174a2 = c26174a;
        if (c26174a == null) {
            c26174a2 = new C26174a<>();
            f73080x.set(c26174a2);
        }
        return c26174a2;
    }

    /* renamed from: w */
    public static boolean m2526w(C26227u c26227u, C26227u c26227u2, String str) {
        boolean z;
        Object obj = c26227u.f73123a.get(str);
        Object obj2 = c26227u2.f73123a.get(str);
        if (obj == null && obj2 == null) {
            z = false;
        } else {
            z = true;
            if (obj != null) {
                z = obj2 == null ? true : true ^ obj.equals(obj2);
            }
        }
        return z;
    }

    /* renamed from: A */
    public void mo2520A(View view) {
        if (this.f73095o) {
            if (!this.f73096p) {
                C26174a<Animator, C26216b> m2531r = m2531r();
                int i = m2531r.f73025c;
                C26200f0 c26200f0 = C26233z.f73143a;
                C26212j0 c26212j0 = new C26212j0(view);
                while (true) {
                    i--;
                    if (i < 0) {
                        break;
                    }
                    C26216b m2572p = m2531r.m2572p(i);
                    if (m2572p.f73102a != null && c26212j0.equals(m2572p.f73105d)) {
                        m2531r.m2576l(i).resume();
                    }
                }
                ArrayList<AbstractC26218d> arrayList = this.f73097q;
                if (arrayList != null && arrayList.size() > 0) {
                    ArrayList arrayList2 = (ArrayList) this.f73097q.clone();
                    int size = arrayList2.size();
                    for (int i2 = 0; i2 < size; i2++) {
                        ((AbstractC26218d) arrayList2.get(i2)).mo2494a(this);
                    }
                }
            }
            this.f73095o = false;
        }
    }

    /* renamed from: B */
    public void mo2519B() {
        m2540J();
        C26174a<Animator, C26216b> m2531r = m2531r();
        Iterator<Animator> it = this.f73098r.iterator();
        while (it.hasNext()) {
            Animator next = it.next();
            if (m2531r.containsKey(next)) {
                m2540J();
                if (next != null) {
                    next.addListener(new C26219n(this, m2531r));
                    long j = this.f73083c;
                    if (j >= 0) {
                        next.setDuration(j);
                    }
                    long j2 = this.f73082b;
                    if (j2 >= 0) {
                        next.setStartDelay(next.getStartDelay() + j2);
                    }
                    TimeInterpolator timeInterpolator = this.f73084d;
                    if (timeInterpolator != null) {
                        next.setInterpolator(timeInterpolator);
                    }
                    next.addListener(new C26220o(this));
                    next.start();
                }
            }
        }
        this.f73098r.clear();
        m2534o();
    }

    /* renamed from: C */
    public AbstractC26214m mo2518C(long j) {
        this.f73083c = j;
        return this;
    }

    /* renamed from: D */
    public void mo2517D(AbstractC26217c abstractC26217c) {
        this.f73100t = abstractC26217c;
    }

    /* renamed from: E */
    public AbstractC26214m mo2516E(TimeInterpolator timeInterpolator) {
        this.f73084d = timeInterpolator;
        return this;
    }

    /* renamed from: F */
    public void mo2515F(AbstractC26205h abstractC26205h) {
        if (abstractC26205h == null) {
            this.f73101u = f73079w;
        } else {
            this.f73101u = abstractC26205h;
        }
    }

    /* renamed from: G */
    public void mo2514G(AbstractC26224r abstractC26224r) {
        this.f73099s = abstractC26224r;
    }

    /* renamed from: H */
    public AbstractC26214m mo2513H(long j) {
        this.f73082b = j;
        return this;
    }

    /* renamed from: J */
    public void m2540J() {
        if (this.f73094n == 0) {
            ArrayList<AbstractC26218d> arrayList = this.f73097q;
            if (arrayList != null && arrayList.size() > 0) {
                ArrayList arrayList2 = (ArrayList) this.f73097q.clone();
                int size = arrayList2.size();
                for (int i = 0; i < size; i++) {
                    ((AbstractC26218d) arrayList2.get(i)).mo2493b(this);
                }
            }
            this.f73096p = false;
        }
        this.f73094n++;
    }

    /* JADX WARN: Code restructure failed: missing block: B:14:0x00aa, code lost:
        if (r5.f73086f.size() > 0) goto L15;
     */
    /* renamed from: K */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public java.lang.String mo2512K(java.lang.String r6) {
        /*
            Method dump skipped, instructions count: 337
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: p1727n3.p1789g0.AbstractC26214m.mo2512K(java.lang.String):java.lang.String");
    }

    /* renamed from: a */
    public AbstractC26214m mo2506a(AbstractC26218d abstractC26218d) {
        if (this.f73097q == null) {
            this.f73097q = new ArrayList<>();
        }
        this.f73097q.add(abstractC26218d);
        return this;
    }

    /* renamed from: b */
    public AbstractC26214m mo2505b(int i) {
        if (i != 0) {
            this.f73085e.add(Integer.valueOf(i));
        }
        return this;
    }

    /* renamed from: c */
    public AbstractC26214m mo2504c(View view) {
        this.f73086f.add(view);
        return this;
    }

    /* renamed from: f */
    public abstract void mo2503f(C26227u c26227u);

    /* renamed from: g */
    public final void m2538g(View view, boolean z) {
        if (view == null) {
            return;
        }
        view.getId();
        if (view.getParent() instanceof ViewGroup) {
            C26227u c26227u = new C26227u(view);
            if (z) {
                mo2501i(c26227u);
            } else {
                mo2503f(c26227u);
            }
            c26227u.f73125c.add(this);
            mo2502h(c26227u);
            if (z) {
                m2539e(this.f73087g, view, c26227u);
            } else {
                m2539e(this.f73088h, view, c26227u);
            }
        }
        if (!(view instanceof ViewGroup)) {
            return;
        }
        ViewGroup viewGroup = (ViewGroup) view;
        for (int i = 0; i < viewGroup.getChildCount(); i++) {
            m2538g(viewGroup.getChildAt(i), z);
        }
    }

    /* renamed from: h */
    public void mo2502h(C26227u c26227u) {
        boolean z;
        if (this.f73099s == null || c26227u.f73123a.isEmpty()) {
            return;
        }
        Objects.requireNonNull(this.f73099s);
        String[] strArr = AbstractC26210i0.f73076a;
        int i = 0;
        while (true) {
            if (i >= strArr.length) {
                z = true;
                break;
            } else if (!c26227u.f73123a.containsKey(strArr[i])) {
                z = false;
                break;
            } else {
                i++;
            }
        }
        if (z) {
            return;
        }
        Objects.requireNonNull((AbstractC26210i0) this.f73099s);
        View view = c26227u.f73124b;
        Integer num = (Integer) c26227u.f73123a.get("android:visibility:visibility");
        Integer num2 = num;
        if (num == null) {
            num2 = Integer.valueOf(view.getVisibility());
        }
        c26227u.f73123a.put("android:visibilityPropagation:visibility", num2);
        view.getLocationOnScreen(r0);
        int[] iArr = {Math.round(view.getTranslationX()) + iArr[0]};
        iArr[0] = (view.getWidth() / 2) + iArr[0];
        iArr[1] = Math.round(view.getTranslationY()) + iArr[1];
        iArr[1] = (view.getHeight() / 2) + iArr[1];
        c26227u.f73123a.put("android:visibilityPropagation:center", iArr);
    }

    /* renamed from: i */
    public abstract void mo2501i(C26227u c26227u);

    /* renamed from: j */
    public void m2537j(ViewGroup viewGroup, boolean z) {
        int i;
        m2536k(z);
        if (this.f73085e.size() <= 0 && this.f73086f.size() <= 0) {
            m2538g(viewGroup, z);
            return;
        }
        int i2 = 0;
        while (true) {
            if (i2 < this.f73085e.size()) {
                View findViewById = viewGroup.findViewById(this.f73085e.get(i2).intValue());
                if (findViewById != null) {
                    C26227u c26227u = new C26227u(findViewById);
                    if (z) {
                        mo2501i(c26227u);
                    } else {
                        mo2503f(c26227u);
                    }
                    c26227u.f73125c.add(this);
                    mo2502h(c26227u);
                    if (z) {
                        m2539e(this.f73087g, findViewById, c26227u);
                    } else {
                        m2539e(this.f73088h, findViewById, c26227u);
                    }
                }
                i2++;
            }
        }
        for (i = 0; i < this.f73086f.size(); i++) {
            View view = this.f73086f.get(i);
            C26227u c26227u2 = new C26227u(view);
            if (z) {
                mo2501i(c26227u2);
            } else {
                mo2503f(c26227u2);
            }
            c26227u2.f73125c.add(this);
            mo2502h(c26227u2);
            if (z) {
                m2539e(this.f73087g, view, c26227u2);
            } else {
                m2539e(this.f73088h, view, c26227u2);
            }
        }
    }

    /* renamed from: k */
    public void m2536k(boolean z) {
        if (z) {
            this.f73087g.f73126a.clear();
            this.f73087g.f73127b.clear();
            this.f73087g.f73128c.m2608b();
            return;
        }
        this.f73088h.f73126a.clear();
        this.f73088h.f73127b.clear();
        this.f73088h.f73128c.m2608b();
    }

    /* renamed from: l */
    public AbstractC26214m clone() {
        try {
            AbstractC26214m abstractC26214m = (AbstractC26214m) super.clone();
            abstractC26214m.f73098r = new ArrayList<>();
            abstractC26214m.f73087g = new C26228v();
            abstractC26214m.f73088h = new C26228v();
            abstractC26214m.f73091k = null;
            abstractC26214m.f73092l = null;
            return abstractC26214m;
        } catch (CloneNotSupportedException e) {
            return null;
        }
    }

    /* renamed from: m */
    public Animator mo2535m(ViewGroup viewGroup, C26227u c26227u, C26227u c26227u2) {
        return null;
    }

    /* JADX WARN: Type inference failed for: r0v61, types: [long] */
    /* renamed from: n */
    public void mo2499n(ViewGroup viewGroup, C26228v c26228v, C26228v c26228v2, ArrayList<C26227u> arrayList, ArrayList<C26227u> arrayList2) {
        int i;
        char c;
        Animator animator;
        C26227u c26227u;
        View view;
        C26174a<Animator, C26216b> m2531r = m2531r();
        SparseIntArray sparseIntArray = new SparseIntArray();
        int size = arrayList.size();
        char c2 = 65535;
        int i2 = 0;
        while (i2 < size) {
            C26227u c26227u2 = arrayList.get(i2);
            C26227u c26227u3 = arrayList2.get(i2);
            C26227u c26227u4 = c26227u2;
            if (c26227u2 != null) {
                c26227u4 = c26227u2;
                if (!c26227u2.f73125c.contains(this)) {
                    c26227u4 = null;
                }
            }
            C26227u c26227u5 = c26227u3;
            if (c26227u3 != null) {
                c26227u5 = c26227u3;
                if (!c26227u3.f73125c.contains(this)) {
                    c26227u5 = null;
                }
            }
            if (c26227u4 != null || c26227u5 != null) {
                if (c26227u4 == null || c26227u5 == null || mo2528u(c26227u4, c26227u5)) {
                    Animator mo2535m = mo2535m(viewGroup, c26227u4, c26227u5);
                    if (mo2535m != null) {
                        if (c26227u5 != null) {
                            View view2 = c26227u5.f73124b;
                            String[] mo2530s = mo2530s();
                            if (mo2530s != null && mo2530s.length > 0) {
                                C26227u c26227u6 = new C26227u(view2);
                                C26227u c26227u7 = c26228v2.f73126a.get(view2);
                                int i3 = i2;
                                if (c26227u7 != null) {
                                    int i4 = 0;
                                    while (true) {
                                        i3 = i2;
                                        if (i4 >= mo2530s.length) {
                                            break;
                                        }
                                        c26227u6.f73123a.put(mo2530s[i4], c26227u7.f73123a.get(mo2530s[i4]));
                                        i4++;
                                    }
                                }
                                i2 = i3;
                                int i5 = m2531r.f73025c;
                                int i6 = 0;
                                while (true) {
                                    if (i6 >= i5) {
                                        c26227u = c26227u6;
                                        break;
                                    }
                                    C26216b c26216b = m2531r.get(m2531r.m2576l(i6));
                                    if (c26216b.f73104c != null && c26216b.f73102a == view2 && c26216b.f73103b.equals(this.f73081a) && c26216b.f73104c.equals(c26227u6)) {
                                        mo2535m = null;
                                        c26227u = c26227u6;
                                        break;
                                    }
                                    i6++;
                                }
                            } else {
                                c26227u = null;
                            }
                            animator = mo2535m;
                            view = view2;
                        } else {
                            animator = mo2535m;
                            c26227u = null;
                            view = c26227u4.f73124b;
                        }
                        c = c2;
                        i = i2;
                        if (animator != null) {
                            AbstractC26224r abstractC26224r = this.f73099s;
                            c = c2;
                            if (abstractC26224r != null) {
                                long m2521a = abstractC26224r.m2521a(viewGroup, this, c26227u4, c26227u5);
                                sparseIntArray.put(this.f73098r.size(), (int) m2521a);
                                c = Math.min(m2521a, (long) c2);
                            }
                            String str = this.f73081a;
                            C26200f0 c26200f0 = C26233z.f73143a;
                            m2531r.put(animator, new C26216b(view, str, this, new C26212j0(viewGroup), c26227u));
                            this.f73098r.add(animator);
                            i = i2;
                        }
                        i2 = i + 1;
                        c2 = c;
                    }
                }
            }
            c = c2;
            i = i2;
            i2 = i + 1;
            c2 = c;
        }
        if (sparseIntArray.size() != 0) {
            for (int i7 = 0; i7 < sparseIntArray.size(); i7++) {
                Animator animator2 = this.f73098r.get(sparseIntArray.keyAt(i7));
                animator2.setStartDelay(animator2.getStartDelay() + (sparseIntArray.valueAt(i7) - c2));
            }
        }
    }

    /* renamed from: o */
    public void m2534o() {
        int i = this.f73094n - 1;
        this.f73094n = i;
        if (i == 0) {
            ArrayList<AbstractC26218d> arrayList = this.f73097q;
            if (arrayList != null && arrayList.size() > 0) {
                ArrayList arrayList2 = (ArrayList) this.f73097q.clone();
                int size = arrayList2.size();
                for (int i2 = 0; i2 < size; i2++) {
                    ((AbstractC26218d) arrayList2.get(i2)).mo2491d(this);
                }
            }
            for (int i3 = 0; i3 < this.f73087g.f73128c.m2598m(); i3++) {
                View m2597n = this.f73087g.f73128c.m2597n(i3);
                if (m2597n != null) {
                    AtomicInteger atomicInteger = C26614s.f74505a;
                    m2597n.setHasTransientState(false);
                }
            }
            for (int i4 = 0; i4 < this.f73088h.f73128c.m2598m(); i4++) {
                View m2597n2 = this.f73088h.f73128c.m2597n(i4);
                if (m2597n2 != null) {
                    AtomicInteger atomicInteger2 = C26614s.f74505a;
                    m2597n2.setHasTransientState(false);
                }
            }
            this.f73096p = true;
        }
    }

    /* renamed from: p */
    public Rect m2533p() {
        AbstractC26217c abstractC26217c = this.f73100t;
        if (abstractC26217c == null) {
            return null;
        }
        return abstractC26217c.mo2524a(this);
    }

    /* renamed from: q */
    public C26227u m2532q(View view, boolean z) {
        int i;
        C26225s c26225s = this.f73089i;
        if (c26225s != null) {
            return c26225s.m2532q(view, z);
        }
        ArrayList<C26227u> arrayList = z ? this.f73091k : this.f73092l;
        if (arrayList == null) {
            return null;
        }
        int size = arrayList.size();
        int i2 = 0;
        while (true) {
            i = -1;
            if (i2 >= size) {
                break;
            }
            C26227u c26227u = arrayList.get(i2);
            if (c26227u == null) {
                return null;
            }
            if (c26227u.f73124b == view) {
                i = i2;
                break;
            }
            i2++;
        }
        C26227u c26227u2 = null;
        if (i >= 0) {
            c26227u2 = (z ? this.f73092l : this.f73091k).get(i);
        }
        return c26227u2;
    }

    /* renamed from: s */
    public String[] mo2530s() {
        return null;
    }

    /* renamed from: t */
    public C26227u m2529t(View view, boolean z) {
        C26225s c26225s = this.f73089i;
        if (c26225s != null) {
            return c26225s.m2529t(view, z);
        }
        return (z ? this.f73087g : this.f73088h).f73126a.getOrDefault(view, null);
    }

    public String toString() {
        return mo2512K("");
    }

    /* renamed from: u */
    public boolean mo2528u(C26227u c26227u, C26227u c26227u2) {
        boolean z = false;
        if (c26227u != null) {
            z = false;
            if (c26227u2 != null) {
                String[] mo2530s = mo2530s();
                if (mo2530s != null) {
                    int length = mo2530s.length;
                    int i = 0;
                    while (true) {
                        z = false;
                        if (i >= length) {
                            break;
                        } else if (m2526w(c26227u, c26227u2, mo2530s[i])) {
                            break;
                        } else {
                            i++;
                        }
                    }
                } else {
                    Iterator<String> it = c26227u.f73123a.keySet().iterator();
                    do {
                        z = false;
                        if (!it.hasNext()) {
                            break;
                        }
                    } while (!m2526w(c26227u, c26227u2, it.next()));
                    z = true;
                }
            }
        }
        return z;
    }

    /* renamed from: v */
    public boolean m2527v(View view) {
        return (this.f73085e.size() == 0 && this.f73086f.size() == 0) || this.f73085e.contains(Integer.valueOf(view.getId())) || this.f73086f.contains(view);
    }

    /* renamed from: x */
    public void mo2498x(View view) {
        if (!this.f73096p) {
            C26174a<Animator, C26216b> m2531r = m2531r();
            int i = m2531r.f73025c;
            C26200f0 c26200f0 = C26233z.f73143a;
            C26212j0 c26212j0 = new C26212j0(view);
            while (true) {
                i--;
                if (i < 0) {
                    break;
                }
                C26216b m2572p = m2531r.m2572p(i);
                if (m2572p.f73102a != null && c26212j0.equals(m2572p.f73105d)) {
                    m2531r.m2576l(i).pause();
                }
            }
            ArrayList<AbstractC26218d> arrayList = this.f73097q;
            if (arrayList != null && arrayList.size() > 0) {
                ArrayList arrayList2 = (ArrayList) this.f73097q.clone();
                int size = arrayList2.size();
                for (int i2 = 0; i2 < size; i2++) {
                    ((AbstractC26218d) arrayList2.get(i2)).mo2492c(this);
                }
            }
            this.f73095o = true;
        }
    }

    /* renamed from: y */
    public AbstractC26214m mo2497y(AbstractC26218d abstractC26218d) {
        ArrayList<AbstractC26218d> arrayList = this.f73097q;
        if (arrayList == null) {
            return this;
        }
        arrayList.remove(abstractC26218d);
        if (this.f73097q.size() == 0) {
            this.f73097q = null;
        }
        return this;
    }

    /* renamed from: z */
    public AbstractC26214m mo2496z(View view) {
        this.f73086f.remove(view);
        return this;
    }
}

package androidx.p045j;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.animation.TimeInterpolator;
import android.graphics.Path;
import android.util.SparseArray;
import android.util.SparseIntArray;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ListView;
import androidx.core.p026h.C0595u;
import androidx.p013b.C0373a;
import androidx.p013b.C0378d;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
/* renamed from: androidx.j.m */
/* loaded from: classes-dex2jar.jar:androidx/j/m.class */
public abstract class AbstractC0807m implements Cloneable {

    /* renamed from: H */
    private AbstractC0812b f2769H;

    /* renamed from: I */
    private C0373a<String, String> f2770I;

    /* renamed from: g */
    AbstractC0818p f2778g;

    /* renamed from: y */
    private ArrayList<C0823s> f2794y;

    /* renamed from: z */
    private ArrayList<C0823s> f2795z;

    /* renamed from: h */
    private static final int[] f2761h = {2, 1, 3, 4};

    /* renamed from: i */
    private static final AbstractC0800g f2762i = new AbstractC0800g() { // from class: androidx.j.m.1
        @Override // androidx.p045j.AbstractC0800g
        /* renamed from: a */
        public Path mo19390a(float f, float f2, float f3, float f4) {
            Path path = new Path();
            path.moveTo(f, f2);
            path.lineTo(f3, f4);
            return path;
        }
    };

    /* renamed from: A */
    private static ThreadLocal<C0373a<Animator, C0811a>> f2760A = new ThreadLocal<>();

    /* renamed from: j */
    private String f2779j = getClass().getName();

    /* renamed from: k */
    private long f2780k = -1;

    /* renamed from: a */
    long f2772a = -1;

    /* renamed from: l */
    private TimeInterpolator f2781l = null;

    /* renamed from: b */
    ArrayList<Integer> f2773b = new ArrayList<>();

    /* renamed from: c */
    ArrayList<View> f2774c = new ArrayList<>();

    /* renamed from: m */
    private ArrayList<String> f2782m = null;

    /* renamed from: n */
    private ArrayList<Class<?>> f2783n = null;

    /* renamed from: o */
    private ArrayList<Integer> f2784o = null;

    /* renamed from: p */
    private ArrayList<View> f2785p = null;

    /* renamed from: q */
    private ArrayList<Class<?>> f2786q = null;

    /* renamed from: r */
    private ArrayList<String> f2787r = null;

    /* renamed from: s */
    private ArrayList<Integer> f2788s = null;

    /* renamed from: t */
    private ArrayList<View> f2789t = null;

    /* renamed from: u */
    private ArrayList<Class<?>> f2790u = null;

    /* renamed from: v */
    private C0824t f2791v = new C0824t();

    /* renamed from: w */
    private C0824t f2792w = new C0824t();

    /* renamed from: d */
    C0819q f2775d = null;

    /* renamed from: x */
    private int[] f2793x = f2761h;

    /* renamed from: B */
    private ViewGroup f2763B = null;

    /* renamed from: e */
    boolean f2776e = false;

    /* renamed from: f */
    ArrayList<Animator> f2777f = new ArrayList<>();

    /* renamed from: C */
    private int f2764C = 0;

    /* renamed from: D */
    private boolean f2765D = false;

    /* renamed from: E */
    private boolean f2766E = false;

    /* renamed from: F */
    private ArrayList<AbstractC0813c> f2767F = null;

    /* renamed from: G */
    private ArrayList<Animator> f2768G = new ArrayList<>();

    /* renamed from: J */
    private AbstractC0800g f2771J = f2762i;

    /* renamed from: androidx.j.m$a */
    /* loaded from: classes-dex2jar.jar:androidx/j/m$a.class */
    public static class C0811a {

        /* renamed from: a */
        View f2799a;

        /* renamed from: b */
        String f2800b;

        /* renamed from: c */
        C0823s f2801c;

        /* renamed from: d */
        AbstractC0777am f2802d;

        /* renamed from: e */
        AbstractC0807m f2803e;

        C0811a(View view, String str, AbstractC0807m abstractC0807m, AbstractC0777am abstractC0777am, C0823s c0823s) {
            this.f2799a = view;
            this.f2800b = str;
            this.f2801c = c0823s;
            this.f2802d = abstractC0777am;
            this.f2803e = abstractC0807m;
        }
    }

    /* renamed from: androidx.j.m$b */
    /* loaded from: classes-dex2jar.jar:androidx/j/m$b.class */
    public static abstract class AbstractC0812b {
    }

    /* renamed from: androidx.j.m$c */
    /* loaded from: classes-dex2jar.jar:androidx/j/m$c.class */
    public interface AbstractC0813c {
        /* renamed from: a */
        void mo19389a(AbstractC0807m abstractC0807m);

        /* renamed from: b */
        void mo19347b(AbstractC0807m abstractC0807m);

        /* renamed from: c */
        void mo19388c(AbstractC0807m abstractC0807m);

        /* renamed from: d */
        void mo19387d(AbstractC0807m abstractC0807m);

        /* renamed from: e */
        void mo19346e(AbstractC0807m abstractC0807m);
    }

    /* renamed from: a */
    private void m19421a(Animator animator, final C0373a<Animator, C0811a> c0373a) {
        if (animator != null) {
            animator.addListener(new AnimatorListenerAdapter() { // from class: androidx.j.m.2
                @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
                public void onAnimationEnd(Animator animator2) {
                    c0373a.remove(animator2);
                    AbstractC0807m.this.f2777f.remove(animator2);
                }

                @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
                public void onAnimationStart(Animator animator2) {
                    AbstractC0807m.this.f2777f.add(animator2);
                }
            });
            m19422a(animator);
        }
    }

    /* renamed from: a */
    private void m19416a(C0373a<View, C0823s> c0373a, C0373a<View, C0823s> c0373a2) {
        C0823s remove;
        for (int size = c0373a.size() - 1; size >= 0; size--) {
            View b = c0373a.m21085b(size);
            if (b != null && m19420a(b) && (remove = c0373a2.remove(b)) != null && m19420a(remove.f2823b)) {
                this.f2794y.add(c0373a.mo17009d(size));
                this.f2795z.add(remove);
            }
        }
    }

    /* renamed from: a */
    private void m19415a(C0373a<View, C0823s> c0373a, C0373a<View, C0823s> c0373a2, SparseArray<View> sparseArray, SparseArray<View> sparseArray2) {
        View view;
        int size = sparseArray.size();
        for (int i = 0; i < size; i++) {
            View valueAt = sparseArray.valueAt(i);
            if (valueAt != null && m19420a(valueAt) && (view = sparseArray2.get(sparseArray.keyAt(i))) != null && m19420a(view)) {
                C0823s c0823s = c0373a.get(valueAt);
                C0823s c0823s2 = c0373a2.get(view);
                if (c0823s != null && c0823s2 != null) {
                    this.f2794y.add(c0823s);
                    this.f2795z.add(c0823s2);
                    c0373a.remove(valueAt);
                    c0373a2.remove(view);
                }
            }
        }
    }

    /* renamed from: a */
    private void m19414a(C0373a<View, C0823s> c0373a, C0373a<View, C0823s> c0373a2, C0373a<String, View> c0373a3, C0373a<String, View> c0373a4) {
        View view;
        int size = c0373a3.size();
        for (int i = 0; i < size; i++) {
            View c = c0373a3.m21083c(i);
            if (c != null && m19420a(c) && (view = c0373a4.get(c0373a3.m21085b(i))) != null && m19420a(view)) {
                C0823s c0823s = c0373a.get(c);
                C0823s c0823s2 = c0373a2.get(view);
                if (c0823s != null && c0823s2 != null) {
                    this.f2794y.add(c0823s);
                    this.f2795z.add(c0823s2);
                    c0373a.remove(c);
                    c0373a2.remove(view);
                }
            }
        }
    }

    /* renamed from: a */
    private void m19413a(C0373a<View, C0823s> c0373a, C0373a<View, C0823s> c0373a2, C0378d<View> c0378d, C0378d<View> c0378d2) {
        View m21131a;
        int m21129b = c0378d.m21129b();
        for (int i = 0; i < m21129b; i++) {
            View m21124c = c0378d.m21124c(i);
            if (m21124c != null && m19420a(m21124c) && (m21131a = c0378d2.m21131a(c0378d.m21128b(i))) != null && m19420a(m21131a)) {
                C0823s c0823s = c0373a.get(m21124c);
                C0823s c0823s2 = c0373a2.get(m21131a);
                if (c0823s != null && c0823s2 != null) {
                    this.f2794y.add(c0823s);
                    this.f2795z.add(c0823s2);
                    c0373a.remove(m21124c);
                    c0373a2.remove(m21131a);
                }
            }
        }
    }

    /* renamed from: a */
    private static void m19410a(C0824t c0824t, View view, C0823s c0823s) {
        c0824t.f2825a.put(view, c0823s);
        int id = view.getId();
        if (id >= 0) {
            if (c0824t.f2826b.indexOfKey(id) >= 0) {
                c0824t.f2826b.put(id, null);
            } else {
                c0824t.f2826b.put(id, view);
            }
        }
        String m20309o = C0595u.m20309o(view);
        if (m20309o != null) {
            if (c0824t.f2828d.containsKey(m20309o)) {
                c0824t.f2828d.put(m20309o, null);
            } else {
                c0824t.f2828d.put(m20309o, view);
            }
        }
        if (view.getParent() instanceof ListView) {
            ListView listView = (ListView) view.getParent();
            if (!listView.getAdapter().hasStableIds()) {
                return;
            }
            long itemIdAtPosition = listView.getItemIdAtPosition(listView.getPositionForView(view));
            if (c0824t.f2827c.m21120d(itemIdAtPosition) < 0) {
                C0595u.m20338a(view, true);
                c0824t.f2827c.m21126b(itemIdAtPosition, view);
                return;
            }
            View m21131a = c0824t.f2827c.m21131a(itemIdAtPosition);
            if (m21131a == null) {
                return;
            }
            C0595u.m20338a(m21131a, false);
            c0824t.f2827c.m21126b(itemIdAtPosition, null);
        }
    }

    /* renamed from: a */
    private void m19409a(C0824t c0824t, C0824t c0824t2) {
        C0373a<View, C0823s> c0373a = new C0373a<>(c0824t.f2825a);
        C0373a<View, C0823s> c0373a2 = new C0373a<>(c0824t2.f2825a);
        for (int i = 0; i < this.f2793x.length; i++) {
            switch (this.f2793x[i]) {
                case 1:
                    m19416a(c0373a, c0373a2);
                    break;
                case 2:
                    m19414a(c0373a, c0373a2, c0824t.f2828d, c0824t2.f2828d);
                    break;
                case 3:
                    m19415a(c0373a, c0373a2, c0824t.f2826b, c0824t2.f2826b);
                    break;
                case 4:
                    m19413a(c0373a, c0373a2, c0824t.f2827c, c0824t2.f2827c);
                    break;
            }
        }
        m19405b(c0373a, c0373a2);
    }

    /* renamed from: a */
    private static boolean m19411a(C0823s c0823s, C0823s c0823s2, String str) {
        boolean z;
        Object obj = c0823s.f2822a.get(str);
        Object obj2 = c0823s2.f2822a.get(str);
        if (obj == null && obj2 == null) {
            z = false;
        } else {
            z = true;
            if (obj != null) {
                z = true;
                if (obj2 != null) {
                    z = true;
                    if (obj.equals(obj2)) {
                        z = false;
                    }
                }
            }
        }
        return z;
    }

    /* renamed from: b */
    private void m19405b(C0373a<View, C0823s> c0373a, C0373a<View, C0823s> c0373a2) {
        int i;
        int i2 = 0;
        while (true) {
            if (i2 < c0373a.size()) {
                C0823s c = c0373a.m21083c(i2);
                if (m19420a(c.f2823b)) {
                    this.f2794y.add(c);
                    this.f2795z.add(null);
                }
                i2++;
            }
        }
        for (i = 0; i < c0373a2.size(); i++) {
            C0823s c2 = c0373a2.m21083c(i);
            if (m19420a(c2.f2823b)) {
                this.f2795z.add(c2);
                this.f2794y.add(null);
            }
        }
    }

    /* renamed from: c */
    private void m19403c(View view, boolean z) {
        if (view == null) {
            return;
        }
        int id = view.getId();
        if (this.f2784o != null && this.f2784o.contains(Integer.valueOf(id))) {
            return;
        }
        if (this.f2785p != null && this.f2785p.contains(view)) {
            return;
        }
        if (this.f2786q != null) {
            int size = this.f2786q.size();
            for (int i = 0; i < size; i++) {
                if (this.f2786q.get(i).isInstance(view)) {
                    return;
                }
            }
        }
        if (view.getParent() instanceof ViewGroup) {
            C0823s c0823s = new C0823s(view);
            if (z) {
                mo2831a(c0823s);
            } else {
                mo2830b(c0823s);
            }
            c0823s.f2824c.add(this);
            mo19359c(c0823s);
            if (z) {
                m19410a(this.f2791v, view, c0823s);
            } else {
                m19410a(this.f2792w, view, c0823s);
            }
        }
        if (!(view instanceof ViewGroup)) {
            return;
        }
        if (this.f2788s != null && this.f2788s.contains(Integer.valueOf(id))) {
            return;
        }
        if (this.f2789t != null && this.f2789t.contains(view)) {
            return;
        }
        if (this.f2790u != null) {
            int size2 = this.f2790u.size();
            for (int i2 = 0; i2 < size2; i2++) {
                if (this.f2790u.get(i2).isInstance(view)) {
                    return;
                }
            }
        }
        ViewGroup viewGroup = (ViewGroup) view;
        for (int i3 = 0; i3 < viewGroup.getChildCount(); i3++) {
            m19403c(viewGroup.getChildAt(i3), z);
        }
    }

    /* renamed from: r */
    private static C0373a<Animator, C0811a> m19391r() {
        C0373a<Animator, C0811a> c0373a = f2760A.get();
        C0373a<Animator, C0811a> c0373a2 = c0373a;
        if (c0373a == null) {
            c0373a2 = new C0373a<>();
            f2760A.set(c0373a2);
        }
        return c0373a2;
    }

    /* renamed from: a */
    public Animator mo2832a(ViewGroup viewGroup, C0823s c0823s, C0823s c0823s2) {
        return null;
    }

    /* renamed from: a */
    public AbstractC0807m mo19377a(long j) {
        this.f2772a = j;
        return this;
    }

    /* renamed from: a */
    public AbstractC0807m mo19376a(TimeInterpolator timeInterpolator) {
        this.f2781l = timeInterpolator;
        return this;
    }

    /* renamed from: a */
    public AbstractC0807m mo19372a(AbstractC0813c abstractC0813c) {
        if (this.f2767F == null) {
            this.f2767F = new ArrayList<>();
        }
        this.f2767F.add(abstractC0813c);
        return this;
    }

    /* renamed from: a */
    public C0823s m19419a(View view, boolean z) {
        C0823s c0823s;
        if (this.f2775d != null) {
            c0823s = this.f2775d.m19419a(view, z);
        } else {
            c0823s = (z ? this.f2791v : this.f2792w).f2825a.get(view);
        }
        return c0823s;
    }

    /* JADX WARN: Code restructure failed: missing block: B:14:0x00cd, code lost:
        if (r5.f2774c.size() > 0) goto L15;
     */
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public java.lang.String mo19369a(java.lang.String r6) {
        /*
            Method dump skipped, instructions count: 432
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.p045j.AbstractC0807m.mo19369a(java.lang.String):java.lang.String");
    }

    /* renamed from: a */
    protected void m19422a(Animator animator) {
        if (animator == null) {
            m19396k();
            return;
        }
        if (m19407b() >= 0) {
            animator.setDuration(m19407b());
        }
        if (m19404c() >= 0) {
            animator.setStartDelay(m19404c() + animator.getStartDelay());
        }
        if (m19402d() != null) {
            animator.setInterpolator(m19402d());
        }
        animator.addListener(new AnimatorListenerAdapter() { // from class: androidx.j.m.3
            @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
            public void onAnimationEnd(Animator animator2) {
                AbstractC0807m.this.m19396k();
                animator2.removeListener(this);
            }
        });
        animator.start();
    }

    /* renamed from: a */
    public void m19418a(ViewGroup viewGroup) {
        C0811a c0811a;
        this.f2794y = new ArrayList<>();
        this.f2795z = new ArrayList<>();
        m19409a(this.f2791v, this.f2792w);
        C0373a<Animator, C0811a> m19391r = m19391r();
        int size = m19391r.size();
        AbstractC0777am m19495b = C0762ac.m19495b(viewGroup);
        while (true) {
            size--;
            if (size < 0) {
                mo19375a(viewGroup, this.f2791v, this.f2792w, this.f2794y, this.f2795z);
                mo19355e();
                return;
            }
            Animator b = m19391r.m21085b(size);
            if (b != null && (c0811a = m19391r.get(b)) != null && c0811a.f2799a != null && m19495b.equals(c0811a.f2802d)) {
                C0823s c0823s = c0811a.f2801c;
                View view = c0811a.f2799a;
                C0823s m19419a = m19419a(view, true);
                C0823s m19406b = m19406b(view, true);
                C0823s c0823s2 = m19406b;
                if (m19419a == null) {
                    c0823s2 = m19406b;
                    if (m19406b == null) {
                        c0823s2 = this.f2792w.f2825a.get(view);
                    }
                }
                if (!(m19419a == null && c0823s2 == null) && c0811a.f2803e.mo19412a(c0823s, c0823s2)) {
                    if (b.isRunning() || b.isStarted()) {
                        b.cancel();
                    } else {
                        m19391r.remove(b);
                    }
                }
            }
        }
    }

    /* JADX WARN: Type inference failed for: r0v57, types: [long] */
    /* renamed from: a */
    public void mo19375a(ViewGroup viewGroup, C0824t c0824t, C0824t c0824t2, ArrayList<C0823s> arrayList, ArrayList<C0823s> arrayList2) {
        char c;
        View view;
        C0823s c0823s;
        Animator animator;
        C0373a<Animator, C0811a> m19391r = m19391r();
        char c2 = 65535;
        SparseIntArray sparseIntArray = new SparseIntArray();
        int size = arrayList.size();
        int i = 0;
        while (i < size) {
            C0823s c0823s2 = arrayList.get(i);
            C0823s c0823s3 = arrayList2.get(i);
            if (c0823s2 != null && !c0823s2.f2824c.contains(this)) {
                c0823s2 = null;
            }
            if (c0823s3 != null && !c0823s3.f2824c.contains(this)) {
                c0823s3 = null;
            }
            if (c0823s2 == null && c0823s3 == null) {
                c = c2;
            } else {
                c = c2;
                if (c0823s2 == null || c0823s3 == null || mo19412a(c0823s2, c0823s3)) {
                    Animator mo2832a = mo2832a(viewGroup, c0823s2, c0823s3);
                    c = c2;
                    if (mo2832a != null) {
                        if (c0823s3 != null) {
                            View view2 = c0823s3.f2823b;
                            String[] mo19423a = mo19423a();
                            C0823s c0823s4 = null;
                            Animator animator2 = mo2832a;
                            if (mo19423a != null) {
                                c0823s4 = null;
                                animator2 = mo2832a;
                                if (mo19423a.length > 0) {
                                    c0823s4 = new C0823s(view2);
                                    C0823s c0823s5 = c0824t2.f2825a.get(view2);
                                    if (c0823s5 != null) {
                                        for (int i2 = 0; i2 < mo19423a.length; i2++) {
                                            c0823s4.f2822a.put(mo19423a[i2], c0823s5.f2822a.get(mo19423a[i2]));
                                        }
                                    }
                                    int size2 = m19391r.size();
                                    int i3 = 0;
                                    while (true) {
                                        if (i3 >= size2) {
                                            animator2 = mo2832a;
                                            break;
                                        }
                                        C0811a c0811a = m19391r.get(m19391r.m21085b(i3));
                                        if (c0811a.f2801c != null && c0811a.f2799a == view2 && c0811a.f2800b.equals(m19392q()) && c0811a.f2801c.equals(c0823s4)) {
                                            animator2 = null;
                                            break;
                                        }
                                        i3++;
                                    }
                                }
                            }
                            c0823s = c0823s4;
                            animator = animator2;
                            view = view2;
                        } else {
                            view = c0823s2.f2823b;
                            c0823s = null;
                            animator = mo2832a;
                        }
                        c = c2;
                        if (animator != null) {
                            c = c2;
                            if (this.f2778g != null) {
                                long m19380a = this.f2778g.m19380a(viewGroup, this, c0823s2, c0823s3);
                                sparseIntArray.put(this.f2768G.size(), (int) m19380a);
                                c = Math.min(m19380a, (long) c2);
                            }
                            m19391r.put(animator, new C0811a(view, m19392q(), this, C0762ac.m19495b(viewGroup), c0823s));
                            this.f2768G.add(animator);
                        }
                    }
                }
            }
            i++;
            c2 = c;
        }
        if (sparseIntArray.size() != 0) {
            for (int i4 = 0; i4 < sparseIntArray.size(); i4++) {
                Animator animator3 = this.f2768G.get(sparseIntArray.keyAt(i4));
                animator3.setStartDelay((sparseIntArray.valueAt(i4) - c2) + animator3.getStartDelay());
            }
        }
    }

    /* renamed from: a */
    public void m19417a(ViewGroup viewGroup, boolean z) {
        int i;
        m19408a(z);
        if ((this.f2773b.size() > 0 || this.f2774c.size() > 0) && ((this.f2782m == null || this.f2782m.isEmpty()) && (this.f2783n == null || this.f2783n.isEmpty()))) {
            for (int i2 = 0; i2 < this.f2773b.size(); i2++) {
                View findViewById = viewGroup.findViewById(this.f2773b.get(i2).intValue());
                if (findViewById != null) {
                    C0823s c0823s = new C0823s(findViewById);
                    if (z) {
                        mo2831a(c0823s);
                    } else {
                        mo2830b(c0823s);
                    }
                    c0823s.f2824c.add(this);
                    mo19359c(c0823s);
                    if (z) {
                        m19410a(this.f2791v, findViewById, c0823s);
                    } else {
                        m19410a(this.f2792w, findViewById, c0823s);
                    }
                }
            }
            for (int i3 = 0; i3 < this.f2774c.size(); i3++) {
                View view = this.f2774c.get(i3);
                C0823s c0823s2 = new C0823s(view);
                if (z) {
                    mo2831a(c0823s2);
                } else {
                    mo2830b(c0823s2);
                }
                c0823s2.f2824c.add(this);
                mo19359c(c0823s2);
                if (z) {
                    m19410a(this.f2791v, view, c0823s2);
                } else {
                    m19410a(this.f2792w, view, c0823s2);
                }
            }
        } else {
            m19403c(viewGroup, z);
        }
        if (z || this.f2770I == null) {
            return;
        }
        int size = this.f2770I.size();
        ArrayList arrayList = new ArrayList(size);
        int i4 = 0;
        while (true) {
            if (i4 < size) {
                arrayList.add(this.f2791v.f2828d.remove(this.f2770I.m21085b(i4)));
                i4++;
            }
        }
        for (i = 0; i < size; i++) {
            View view2 = (View) arrayList.get(i);
            if (view2 != null) {
                this.f2791v.f2828d.put(this.f2770I.m21083c(i), view2);
            }
        }
    }

    /* renamed from: a */
    public void mo19374a(AbstractC0800g abstractC0800g) {
        if (abstractC0800g == null) {
            this.f2771J = f2762i;
        } else {
            this.f2771J = abstractC0800g;
        }
    }

    /* renamed from: a */
    public void mo19373a(AbstractC0812b abstractC0812b) {
        this.f2769H = abstractC0812b;
    }

    /* renamed from: a */
    public void mo19370a(AbstractC0818p abstractC0818p) {
        this.f2778g = abstractC0818p;
    }

    /* renamed from: a */
    public abstract void mo2831a(C0823s c0823s);

    /* renamed from: a */
    public void m19408a(boolean z) {
        if (z) {
            this.f2791v.f2825a.clear();
            this.f2791v.f2826b.clear();
            this.f2791v.f2827c.m21121d();
            return;
        }
        this.f2792w.f2825a.clear();
        this.f2792w.f2826b.clear();
        this.f2792w.f2827c.m21121d();
    }

    /* JADX WARN: Code restructure failed: missing block: B:12:0x0034, code lost:
        if (r3.f2785p.contains(r4) == false) goto L13;
     */
    /* JADX WARN: Code restructure failed: missing block: B:26:0x0089, code lost:
        if (r3.f2787r.contains(androidx.core.p026h.C0595u.m20309o(r4)) == false) goto L27;
     */
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public boolean m19420a(android.view.View r4) {
        /*
            Method dump skipped, instructions count: 317
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.p045j.AbstractC0807m.m19420a(android.view.View):boolean");
    }

    /* renamed from: a */
    public boolean mo19412a(C0823s c0823s, C0823s c0823s2) {
        boolean z = false;
        if (c0823s != null) {
            z = false;
            if (c0823s2 != null) {
                String[] mo19423a = mo19423a();
                if (mo19423a == null) {
                    Iterator<String> it = c0823s.f2822a.keySet().iterator();
                    while (true) {
                        z = false;
                        if (it.hasNext()) {
                            if (m19411a(c0823s, c0823s2, it.next())) {
                                z = true;
                                break;
                            }
                        } else {
                            break;
                        }
                    }
                } else {
                    int length = mo19423a.length;
                    int i = 0;
                    while (true) {
                        if (i >= length) {
                            z = false;
                            break;
                        } else if (m19411a(c0823s, c0823s2, mo19423a[i])) {
                            z = true;
                            break;
                        } else {
                            i++;
                        }
                    }
                }
            }
        }
        return z;
    }

    /* renamed from: a */
    public String[] mo19423a() {
        return null;
    }

    /* renamed from: b */
    public long m19407b() {
        return this.f2772a;
    }

    /* renamed from: b */
    public AbstractC0807m mo19367b(long j) {
        this.f2780k = j;
        return this;
    }

    /* renamed from: b */
    public AbstractC0807m mo19365b(View view) {
        this.f2774c.add(view);
        return this;
    }

    /* renamed from: b */
    public AbstractC0807m mo19364b(AbstractC0813c abstractC0813c) {
        if (this.f2767F != null) {
            this.f2767F.remove(abstractC0813c);
            if (this.f2767F.size() == 0) {
                this.f2767F = null;
            }
        }
        return this;
    }

    /* JADX WARN: Code restructure failed: missing block: B:20:0x0059, code lost:
        if (r11 < 0) goto L29;
     */
    /* JADX WARN: Code restructure failed: missing block: B:22:0x005d, code lost:
        if (r6 == false) goto L28;
     */
    /* JADX WARN: Code restructure failed: missing block: B:23:0x0060, code lost:
        r5 = r4.f2795z;
     */
    /* JADX WARN: Code restructure failed: missing block: B:24:0x0065, code lost:
        r5 = r5.get(r11);
     */
    /* JADX WARN: Code restructure failed: missing block: B:25:0x006f, code lost:
        r8 = r5;
     */
    /* JADX WARN: Code restructure failed: missing block: B:28:0x0084, code lost:
        r5 = r4.f2794y;
     */
    /* JADX WARN: Code restructure failed: missing block: B:29:0x008c, code lost:
        r5 = null;
     */
    /* renamed from: b */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public androidx.p045j.C0823s m19406b(android.view.View r5, boolean r6) {
        /*
            r4 = this;
            r0 = 0
            r7 = r0
            r0 = r4
            androidx.j.q r0 = r0.f2775d
            if (r0 == 0) goto L17
            r0 = r4
            androidx.j.q r0 = r0.f2775d
            r1 = r5
            r2 = r6
            androidx.j.s r0 = r0.m19406b(r1, r2)
            r8 = r0
        L14:
            r0 = r8
            return r0
        L17:
            r0 = r6
            if (r0 == 0) goto L75
            r0 = r4
            java.util.ArrayList<androidx.j.s> r0 = r0.f2794y
            r9 = r0
        L21:
            r0 = r7
            r8 = r0
            r0 = r9
            if (r0 == 0) goto L14
            r0 = r9
            int r0 = r0.size()
            r10 = r0
            r0 = 0
            r11 = r0
        L33:
            r0 = r11
            r1 = r10
            if (r0 >= r1) goto L91
            r0 = r9
            r1 = r11
            java.lang.Object r0 = r0.get(r1)
            androidx.j.s r0 = (androidx.p045j.C0823s) r0
            r12 = r0
            r0 = r7
            r8 = r0
            r0 = r12
            if (r0 == 0) goto L14
            r0 = r12
            android.view.View r0 = r0.f2823b
            r1 = r5
            if (r0 != r1) goto L7e
        L57:
            r0 = r11
            if (r0 < 0) goto L8c
            r0 = r6
            if (r0 == 0) goto L84
            r0 = r4
            java.util.ArrayList<androidx.j.s> r0 = r0.f2795z
            r5 = r0
        L65:
            r0 = r5
            r1 = r11
            java.lang.Object r0 = r0.get(r1)
            androidx.j.s r0 = (androidx.p045j.C0823s) r0
            r5 = r0
        L6f:
            r0 = r5
            r8 = r0
            goto L14
        L75:
            r0 = r4
            java.util.ArrayList<androidx.j.s> r0 = r0.f2795z
            r9 = r0
            goto L21
        L7e:
            int r11 = r11 + 1
            goto L33
        L84:
            r0 = r4
            java.util.ArrayList<androidx.j.s> r0 = r0.f2794y
            r5 = r0
            goto L65
        L8c:
            r0 = 0
            r5 = r0
            goto L6f
        L91:
            r0 = -1
            r11 = r0
            goto L57
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.p045j.AbstractC0807m.m19406b(android.view.View, boolean):androidx.j.s");
    }

    /* renamed from: b */
    public abstract void mo2830b(C0823s c0823s);

    /* renamed from: c */
    public long m19404c() {
        return this.f2780k;
    }

    /* renamed from: c */
    public AbstractC0807m mo19361c(View view) {
        this.f2774c.remove(view);
        return this;
    }

    /* renamed from: c */
    public void mo19359c(C0823s c0823s) {
        String[] m19381a;
        boolean z;
        if (this.f2778g == null || c0823s.f2822a.isEmpty() || (m19381a = this.f2778g.m19381a()) == null) {
            return;
        }
        int i = 0;
        while (true) {
            if (i >= m19381a.length) {
                z = true;
                break;
            } else if (!c0823s.f2822a.containsKey(m19381a[i])) {
                z = false;
                break;
            } else {
                i++;
            }
        }
        if (z) {
            return;
        }
        this.f2778g.m19379a(c0823s);
    }

    /* renamed from: d */
    public TimeInterpolator m19402d() {
        return this.f2781l;
    }

    /* renamed from: d */
    public void mo19357d(View view) {
        if (!this.f2766E) {
            C0373a<Animator, C0811a> m19391r = m19391r();
            int size = m19391r.size();
            AbstractC0777am m19495b = C0762ac.m19495b(view);
            while (true) {
                size--;
                if (size < 0) {
                    break;
                }
                C0811a c = m19391r.m21083c(size);
                if (c.f2799a != null && m19495b.equals(c.f2802d)) {
                    C0758a.m19503a(m19391r.m21085b(size));
                }
            }
            if (this.f2767F != null && this.f2767F.size() > 0) {
                ArrayList arrayList = (ArrayList) this.f2767F.clone();
                int size2 = arrayList.size();
                for (int i = 0; i < size2; i++) {
                    ((AbstractC0813c) arrayList.get(i)).mo19388c(this);
                }
            }
            this.f2765D = true;
        }
    }

    /* renamed from: e */
    public void mo19355e() {
        m19397j();
        C0373a<Animator, C0811a> m19391r = m19391r();
        Iterator<Animator> it = this.f2768G.iterator();
        while (it.hasNext()) {
            Animator next = it.next();
            if (m19391r.containsKey(next)) {
                m19397j();
                m19421a(next, m19391r);
            }
        }
        this.f2768G.clear();
        m19396k();
    }

    /* renamed from: e */
    public void mo19354e(View view) {
        if (this.f2765D) {
            if (!this.f2766E) {
                C0373a<Animator, C0811a> m19391r = m19391r();
                int size = m19391r.size();
                AbstractC0777am m19495b = C0762ac.m19495b(view);
                while (true) {
                    size--;
                    if (size < 0) {
                        break;
                    }
                    C0811a c = m19391r.m21083c(size);
                    if (c.f2799a != null && m19495b.equals(c.f2802d)) {
                        C0758a.m19501b(m19391r.m21085b(size));
                    }
                }
                if (this.f2767F != null && this.f2767F.size() > 0) {
                    ArrayList arrayList = (ArrayList) this.f2767F.clone();
                    int size2 = arrayList.size();
                    for (int i = 0; i < size2; i++) {
                        ((AbstractC0813c) arrayList.get(i)).mo19387d(this);
                    }
                }
            }
            this.f2765D = false;
        }
    }

    /* renamed from: f */
    public List<Integer> m19401f() {
        return this.f2773b;
    }

    /* renamed from: g */
    public List<View> m19400g() {
        return this.f2774c;
    }

    /* renamed from: h */
    public List<String> m19399h() {
        return this.f2782m;
    }

    /* renamed from: i */
    public List<Class<?>> m19398i() {
        return this.f2783n;
    }

    /* renamed from: j */
    public void m19397j() {
        if (this.f2764C == 0) {
            if (this.f2767F != null && this.f2767F.size() > 0) {
                ArrayList arrayList = (ArrayList) this.f2767F.clone();
                int size = arrayList.size();
                for (int i = 0; i < size; i++) {
                    ((AbstractC0813c) arrayList.get(i)).mo19346e(this);
                }
            }
            this.f2766E = false;
        }
        this.f2764C++;
    }

    /* renamed from: k */
    public void m19396k() {
        this.f2764C--;
        if (this.f2764C == 0) {
            if (this.f2767F != null && this.f2767F.size() > 0) {
                ArrayList arrayList = (ArrayList) this.f2767F.clone();
                int size = arrayList.size();
                for (int i = 0; i < size; i++) {
                    ((AbstractC0813c) arrayList.get(i)).mo19347b(this);
                }
            }
            for (int i2 = 0; i2 < this.f2791v.f2827c.m21129b(); i2++) {
                View m21124c = this.f2791v.f2827c.m21124c(i2);
                if (m21124c != null) {
                    C0595u.m20338a(m21124c, false);
                }
            }
            for (int i3 = 0; i3 < this.f2792w.f2827c.m21129b(); i3++) {
                View m21124c2 = this.f2792w.f2827c.m21124c(i3);
                if (m21124c2 != null) {
                    C0595u.m20338a(m21124c2, false);
                }
            }
            this.f2766E = true;
        }
    }

    /* renamed from: l */
    public void mo19351l() {
        for (int size = this.f2777f.size() - 1; size >= 0; size--) {
            this.f2777f.get(size).cancel();
        }
        if (this.f2767F == null || this.f2767F.size() <= 0) {
            return;
        }
        ArrayList arrayList = (ArrayList) this.f2767F.clone();
        int size2 = arrayList.size();
        for (int i = 0; i < size2; i++) {
            ((AbstractC0813c) arrayList.get(i)).mo19389a(this);
        }
    }

    /* renamed from: m */
    public AbstractC0800g m19395m() {
        return this.f2771J;
    }

    /* renamed from: n */
    public AbstractC0812b m19394n() {
        return this.f2769H;
    }

    /* renamed from: o */
    public AbstractC0818p m19393o() {
        return this.f2778g;
    }

    /* renamed from: p */
    public AbstractC0807m clone() {
        AbstractC0807m abstractC0807m;
        try {
            abstractC0807m = (AbstractC0807m) super.clone();
            abstractC0807m.f2768G = new ArrayList<>();
            abstractC0807m.f2791v = new C0824t();
            abstractC0807m.f2792w = new C0824t();
            abstractC0807m.f2794y = null;
            abstractC0807m.f2795z = null;
        } catch (CloneNotSupportedException e) {
            abstractC0807m = null;
        }
        return abstractC0807m;
    }

    /* renamed from: q */
    public String m19392q() {
        return this.f2779j;
    }

    public String toString() {
        return mo19369a("");
    }
}

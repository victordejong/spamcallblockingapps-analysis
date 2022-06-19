package androidx.transition;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.animation.TimeInterpolator;
import android.annotation.SuppressLint;
import android.content.Context;
import android.content.res.TypedArray;
import android.content.res.XmlResourceParser;
import android.graphics.Rect;
import android.util.AttributeSet;
import android.util.SparseArray;
import android.util.SparseIntArray;
import android.view.InflateException;
import android.view.View;
import android.view.ViewGroup;
import android.view.animation.AnimationUtils;
import android.widget.ListView;
import androidx.core.content.p003c.C0282g;
import com.callerid.block.bean.EZBlackList;
import d.e.a;
import d.e.d;
import d.h.m.t;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.StringTokenizer;
/* loaded from: classes-dex2jar.jar:androidx/transition/Transition.class */
public abstract class Transition implements Cloneable {

    /* renamed from: H */
    private static final int[] f2667H = {2, 1, 3, 4};

    /* renamed from: I */
    private static final PathMotion f2668I = new a();

    /* renamed from: J */
    private static ThreadLocal<a<Animator, C0482d>> f2669J = new ThreadLocal<>();

    /* renamed from: D */
    AbstractC0514w f2673D;

    /* renamed from: E */
    private AbstractC0483e f2674E;

    /* renamed from: F */
    private a<String, String> f2675F;

    /* renamed from: u */
    private ArrayList<C0517y> f2696u;

    /* renamed from: v */
    private ArrayList<C0517y> f2697v;

    /* renamed from: b */
    private String f2677b = getClass().getName();

    /* renamed from: c */
    private long f2678c = -1;

    /* renamed from: d */
    long f2679d = -1;

    /* renamed from: e */
    private TimeInterpolator f2680e = null;

    /* renamed from: f */
    ArrayList<Integer> f2681f = new ArrayList<>();

    /* renamed from: g */
    ArrayList<View> f2682g = new ArrayList<>();

    /* renamed from: h */
    private ArrayList<String> f2683h = null;

    /* renamed from: i */
    private ArrayList<Class<?>> f2684i = null;

    /* renamed from: j */
    private ArrayList<Integer> f2685j = null;

    /* renamed from: k */
    private ArrayList<View> f2686k = null;

    /* renamed from: l */
    private ArrayList<Class<?>> f2687l = null;

    /* renamed from: m */
    private ArrayList<String> f2688m = null;

    /* renamed from: n */
    private ArrayList<Integer> f2689n = null;

    /* renamed from: o */
    private ArrayList<View> f2690o = null;

    /* renamed from: p */
    private ArrayList<Class<?>> f2691p = null;

    /* renamed from: q */
    private C0518z f2692q = new C0518z();

    /* renamed from: r */
    private C0518z f2693r = new C0518z();

    /* renamed from: s */
    TransitionSet f2694s = null;

    /* renamed from: t */
    private int[] f2695t = f2667H;

    /* renamed from: w */
    boolean f2698w = false;

    /* renamed from: x */
    ArrayList<Animator> f2699x = new ArrayList<>();

    /* renamed from: y */
    private int f2700y = 0;

    /* renamed from: z */
    private boolean f2701z = false;

    /* renamed from: A */
    private boolean f2670A = false;

    /* renamed from: B */
    private ArrayList<AbstractC0484f> f2671B = null;

    /* renamed from: C */
    private ArrayList<Animator> f2672C = new ArrayList<>();

    /* renamed from: G */
    private PathMotion f2676G = f2668I;

    /* renamed from: androidx.transition.Transition$b */
    /* loaded from: classes-dex2jar.jar:androidx/transition/Transition$b.class */
    public class C0480b extends AnimatorListenerAdapter {

        /* renamed from: a */
        final /* synthetic */ a f2702a;

        C0480b(a aVar) {
            Transition.this = r4;
            this.f2702a = aVar;
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public void onAnimationEnd(Animator animator) {
            this.f2702a.remove(animator);
            Transition.this.f2699x.remove(animator);
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public void onAnimationStart(Animator animator) {
            Transition.this.f2699x.add(animator);
        }
    }

    /* renamed from: androidx.transition.Transition$c */
    /* loaded from: classes-dex2jar.jar:androidx/transition/Transition$c.class */
    public class C0481c extends AnimatorListenerAdapter {
        C0481c() {
            Transition.this = r4;
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public void onAnimationEnd(Animator animator) {
            Transition.this.m12068r();
            animator.removeListener(this);
        }
    }

    /* renamed from: androidx.transition.Transition$d */
    /* loaded from: classes-dex2jar.jar:androidx/transition/Transition$d.class */
    public static class C0482d {

        /* renamed from: a */
        View f2705a;

        /* renamed from: b */
        String f2706b;

        /* renamed from: c */
        C0517y f2707c;

        /* renamed from: d */
        AbstractC0511t0 f2708d;

        /* renamed from: e */
        Transition f2709e;

        C0482d(View view, String str, Transition transition, AbstractC0511t0 abstractC0511t0, C0517y c0517y) {
            this.f2705a = view;
            this.f2706b = str;
            this.f2707c = c0517y;
            this.f2708d = abstractC0511t0;
            this.f2709e = transition;
        }
    }

    /* renamed from: androidx.transition.Transition$e */
    /* loaded from: classes-dex2jar.jar:androidx/transition/Transition$e.class */
    public static abstract class AbstractC0483e {
        /* renamed from: a */
        public abstract Rect m12060a(Transition transition);
    }

    /* renamed from: androidx.transition.Transition$f */
    /* loaded from: classes-dex2jar.jar:androidx/transition/Transition$f.class */
    public interface AbstractC0484f {
        /* renamed from: a */
        void m12059a(Transition transition);

        /* renamed from: b */
        void m12058b(Transition transition);

        /* renamed from: c */
        void m12057c(Transition transition);

        /* renamed from: d */
        void m12056d(Transition transition);

        /* renamed from: e */
        void m12055e(Transition transition);
    }

    public Transition() {
    }

    @SuppressLint({"RestrictedApi"})
    public Transition(Context context, AttributeSet attributeSet) {
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, C0510t.f2757a);
        XmlResourceParser xmlResourceParser = (XmlResourceParser) attributeSet;
        long m13484g = C0282g.m13484g(obtainStyledAttributes, xmlResourceParser, "duration", 1, -1);
        if (m13484g >= 0) {
            m12086g0(m13484g);
        }
        long m13484g2 = C0282g.m13484g(obtainStyledAttributes, xmlResourceParser, "startDelay", 2, -1);
        if (m13484g2 > 0) {
            m12074m0(m13484g2);
        }
        int m13483h = C0282g.m13483h(obtainStyledAttributes, xmlResourceParser, "interpolator", 0, 0);
        if (m13483h > 0) {
            m12082i0(AnimationUtils.loadInterpolator(context, m13483h));
        }
        String m13482i = C0282g.m13482i(obtainStyledAttributes, xmlResourceParser, "matchOrder", 3);
        if (m13482i != null) {
            m12080j0(m12100Y(m13482i));
        }
        obtainStyledAttributes.recycle();
    }

    /* renamed from: D */
    private static a<Animator, C0482d> m12117D() {
        a<Animator, C0482d> aVar = f2669J.get();
        a<Animator, C0482d> aVar2 = aVar;
        if (aVar == null) {
            aVar2 = new a<>();
            f2669J.set(aVar2);
        }
        return aVar2;
    }

    /* renamed from: P */
    private static boolean m12108P(int i) {
        boolean z = true;
        if (i < 1 || i > 4) {
            z = false;
        }
        return z;
    }

    /* renamed from: R */
    private static boolean m12106R(C0517y c0517y, C0517y c0517y2, String str) {
        boolean z;
        Object obj = c0517y.f2777a.get(str);
        Object obj2 = c0517y2.f2777a.get(str);
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

    /* renamed from: S */
    private void m12105S(a<View, C0517y> aVar, a<View, C0517y> aVar2, SparseArray<View> sparseArray, SparseArray<View> sparseArray2) {
        View view;
        int size = sparseArray.size();
        for (int i = 0; i < size; i++) {
            View valueAt = sparseArray.valueAt(i);
            if (valueAt != null && m12107Q(valueAt) && (view = sparseArray2.get(sparseArray.keyAt(i))) != null && m12107Q(view)) {
                C0517y c0517y = (C0517y) aVar.get(valueAt);
                C0517y c0517y2 = (C0517y) aVar2.get(view);
                if (c0517y != null && c0517y2 != null) {
                    this.f2696u.add(c0517y);
                    this.f2697v.add(c0517y2);
                    aVar.remove(valueAt);
                    aVar2.remove(view);
                }
            }
        }
    }

    /* renamed from: T */
    private void m12104T(a<View, C0517y> aVar, a<View, C0517y> aVar2) {
        C0517y c0517y;
        for (int size = aVar.size() - 1; size >= 0; size--) {
            View view = (View) aVar.i(size);
            if (view != null && m12107Q(view) && (c0517y = (C0517y) aVar2.remove(view)) != null && m12107Q(c0517y.f2778b)) {
                this.f2696u.add((C0517y) aVar.k(size));
                this.f2697v.add(c0517y);
            }
        }
    }

    /* renamed from: V */
    private void m12103V(a<View, C0517y> aVar, a<View, C0517y> aVar2, d<View> dVar, d<View> dVar2) {
        View view;
        int m = dVar.m();
        for (int i = 0; i < m; i++) {
            View view2 = (View) dVar.n(i);
            if (view2 != null && m12107Q(view2) && (view = (View) dVar2.f(dVar.i(i))) != null && m12107Q(view)) {
                C0517y c0517y = (C0517y) aVar.get(view2);
                C0517y c0517y2 = (C0517y) aVar2.get(view);
                if (c0517y != null && c0517y2 != null) {
                    this.f2696u.add(c0517y);
                    this.f2697v.add(c0517y2);
                    aVar.remove(view2);
                    aVar2.remove(view);
                }
            }
        }
    }

    /* renamed from: W */
    private void m12102W(a<View, C0517y> aVar, a<View, C0517y> aVar2, a<String, View> aVar3, a<String, View> aVar4) {
        View view;
        int size = aVar3.size();
        for (int i = 0; i < size; i++) {
            View view2 = (View) aVar3.m(i);
            if (view2 != null && m12107Q(view2) && (view = (View) aVar4.get(aVar3.i(i))) != null && m12107Q(view)) {
                C0517y c0517y = (C0517y) aVar.get(view2);
                C0517y c0517y2 = (C0517y) aVar2.get(view);
                if (c0517y != null && c0517y2 != null) {
                    this.f2696u.add(c0517y);
                    this.f2697v.add(c0517y2);
                    aVar.remove(view2);
                    aVar2.remove(view);
                }
            }
        }
    }

    /* renamed from: X */
    private void m12101X(C0518z c0518z, C0518z c0518z2) {
        a<View, C0517y> aVar = new a<>(c0518z.f2780a);
        a<View, C0517y> aVar2 = new a<>(c0518z2.f2780a);
        int i = 0;
        while (true) {
            int[] iArr = this.f2695t;
            if (i >= iArr.length) {
                m12093d(aVar, aVar2);
                return;
            }
            int i2 = iArr[i];
            if (i2 == 1) {
                m12104T(aVar, aVar2);
            } else if (i2 == 2) {
                m12102W(aVar, aVar2, c0518z.f2783d, c0518z2.f2783d);
            } else if (i2 == 3) {
                m12105S(aVar, aVar2, c0518z.f2781b, c0518z2.f2781b);
            } else if (i2 == 4) {
                m12103V(aVar, aVar2, c0518z.f2782c, c0518z2.f2782c);
            }
            i++;
        }
    }

    /* renamed from: Y */
    private static int[] m12100Y(String str) {
        StringTokenizer stringTokenizer = new StringTokenizer(str, ",");
        int[] iArr = new int[stringTokenizer.countTokens()];
        int i = 0;
        while (stringTokenizer.hasMoreTokens()) {
            String trim = stringTokenizer.nextToken().trim();
            if ("id".equalsIgnoreCase(trim)) {
                iArr[i] = 3;
            } else if ("instance".equalsIgnoreCase(trim)) {
                iArr[i] = 1;
            } else if (EZBlackList.NAME.equalsIgnoreCase(trim)) {
                iArr[i] = 2;
            } else if ("itemId".equalsIgnoreCase(trim)) {
                iArr[i] = 4;
            } else if (!trim.isEmpty()) {
                throw new InflateException("Unknown match type in matchOrder: '" + trim + "'");
            } else {
                int[] iArr2 = new int[iArr.length - 1];
                System.arraycopy(iArr, 0, iArr2, 0, i);
                i--;
                iArr = iArr2;
            }
            i++;
        }
        return iArr;
    }

    /* renamed from: d */
    private void m12093d(a<View, C0517y> aVar, a<View, C0517y> aVar2) {
        int i;
        int i2 = 0;
        while (true) {
            if (i2 < aVar.size()) {
                C0517y c0517y = (C0517y) aVar.m(i2);
                if (m12107Q(c0517y.f2778b)) {
                    this.f2696u.add(c0517y);
                    this.f2697v.add(null);
                }
                i2++;
            }
        }
        for (i = 0; i < aVar2.size(); i++) {
            C0517y c0517y2 = (C0517y) aVar2.m(i);
            if (m12107Q(c0517y2.f2778b)) {
                this.f2697v.add(c0517y2);
                this.f2696u.add(null);
            }
        }
    }

    /* renamed from: e */
    private static void m12091e(C0518z c0518z, View view, C0517y c0517y) {
        c0518z.f2780a.put(view, c0517y);
        int id = view.getId();
        if (id >= 0) {
            if (c0518z.f2781b.indexOfKey(id) >= 0) {
                c0518z.f2781b.put(id, null);
            } else {
                c0518z.f2781b.put(id, view);
            }
        }
        String J = t.J(view);
        if (J != null) {
            if (c0518z.f2783d.containsKey(J)) {
                c0518z.f2783d.put(J, (Object) null);
            } else {
                c0518z.f2783d.put(J, view);
            }
        }
        if (view.getParent() instanceof ListView) {
            ListView listView = (ListView) view.getParent();
            if (!listView.getAdapter().hasStableIds()) {
                return;
            }
            long itemIdAtPosition = listView.getItemIdAtPosition(listView.getPositionForView(view));
            if (c0518z.f2782c.h(itemIdAtPosition) < 0) {
                t.w0(view, true);
                c0518z.f2782c.j(itemIdAtPosition, view);
                return;
            }
            View view2 = (View) c0518z.f2782c.f(itemIdAtPosition);
            if (view2 == null) {
                return;
            }
            t.w0(view2, false);
            c0518z.f2782c.j(itemIdAtPosition, (Object) null);
        }
    }

    /* renamed from: e0 */
    private void m12090e0(Animator animator, a<Animator, C0482d> aVar) {
        if (animator != null) {
            animator.addListener(new C0480b(aVar));
            m12087g(animator);
        }
    }

    /* renamed from: f */
    private static boolean m12089f(int[] iArr, int i) {
        int i2 = iArr[i];
        for (int i3 = 0; i3 < i; i3++) {
            if (iArr[i3] == i2) {
                return true;
            }
        }
        return false;
    }

    /* renamed from: i */
    private void m12083i(View view, boolean z) {
        if (view == null) {
            return;
        }
        int id = view.getId();
        ArrayList<Integer> arrayList = this.f2685j;
        if (arrayList != null && arrayList.contains(Integer.valueOf(id))) {
            return;
        }
        ArrayList<View> arrayList2 = this.f2686k;
        if (arrayList2 != null && arrayList2.contains(view)) {
            return;
        }
        ArrayList<Class<?>> arrayList3 = this.f2687l;
        if (arrayList3 != null) {
            int size = arrayList3.size();
            for (int i = 0; i < size; i++) {
                if (this.f2687l.get(i).isInstance(view)) {
                    return;
                }
            }
        }
        if (view.getParent() instanceof ViewGroup) {
            C0517y c0517y = new C0517y(view);
            if (z) {
                m12079k(c0517y);
            } else {
                m12085h(c0517y);
            }
            c0517y.f2779c.add(this);
            m12081j(c0517y);
            m12091e(z ? this.f2692q : this.f2693r, view, c0517y);
        }
        if (!(view instanceof ViewGroup)) {
            return;
        }
        ArrayList<Integer> arrayList4 = this.f2689n;
        if (arrayList4 != null && arrayList4.contains(Integer.valueOf(id))) {
            return;
        }
        ArrayList<View> arrayList5 = this.f2690o;
        if (arrayList5 != null && arrayList5.contains(view)) {
            return;
        }
        ArrayList<Class<?>> arrayList6 = this.f2691p;
        if (arrayList6 != null) {
            int size2 = arrayList6.size();
            for (int i2 = 0; i2 < size2; i2++) {
                if (this.f2691p.get(i2).isInstance(view)) {
                    return;
                }
            }
        }
        ViewGroup viewGroup = (ViewGroup) view;
        for (int i3 = 0; i3 < viewGroup.getChildCount(); i3++) {
            m12083i(viewGroup.getChildAt(i3), z);
        }
    }

    /* renamed from: A */
    public AbstractC0514w m12118A() {
        return this.f2673D;
    }

    /* renamed from: E */
    public long m12116E() {
        return this.f2678c;
    }

    /* renamed from: G */
    public List<Integer> m12115G() {
        return this.f2681f;
    }

    /* renamed from: H */
    public List<String> m12114H() {
        return this.f2683h;
    }

    /* renamed from: I */
    public List<Class<?>> m12113I() {
        return this.f2684i;
    }

    /* renamed from: J */
    public List<View> m12112J() {
        return this.f2682g;
    }

    /* renamed from: L */
    public String[] m12111L() {
        return null;
    }

    /* renamed from: M */
    public C0517y m12110M(View view, boolean z) {
        TransitionSet transitionSet = this.f2694s;
        if (transitionSet != null) {
            return transitionSet.m12110M(view, z);
        }
        return (C0517y) (z ? this.f2692q : this.f2693r).f2780a.get(view);
    }

    /* renamed from: N */
    public boolean m12109N(C0517y c0517y, C0517y c0517y2) {
        boolean z = false;
        if (c0517y != null) {
            z = false;
            if (c0517y2 != null) {
                String[] m12111L = m12111L();
                if (m12111L != null) {
                    int length = m12111L.length;
                    int i = 0;
                    while (true) {
                        z = false;
                        if (i >= length) {
                            break;
                        } else if (m12106R(c0517y, c0517y2, m12111L[i])) {
                            break;
                        } else {
                            i++;
                        }
                    }
                } else {
                    Iterator<String> it = c0517y.f2777a.keySet().iterator();
                    do {
                        z = false;
                        if (!it.hasNext()) {
                            break;
                        }
                    } while (!m12106R(c0517y, c0517y2, it.next()));
                    z = true;
                }
            }
        }
        return z;
    }

    /* renamed from: Q */
    boolean m12107Q(View view) {
        ArrayList<Class<?>> arrayList;
        ArrayList<String> arrayList2;
        int id = view.getId();
        ArrayList<Integer> arrayList3 = this.f2685j;
        if (arrayList3 == null || !arrayList3.contains(Integer.valueOf(id))) {
            ArrayList<View> arrayList4 = this.f2686k;
            if (arrayList4 != null && arrayList4.contains(view)) {
                return false;
            }
            ArrayList<Class<?>> arrayList5 = this.f2687l;
            if (arrayList5 != null) {
                int size = arrayList5.size();
                for (int i = 0; i < size; i++) {
                    if (this.f2687l.get(i).isInstance(view)) {
                        return false;
                    }
                }
            }
            if (this.f2688m != null && t.J(view) != null && this.f2688m.contains(t.J(view))) {
                return false;
            }
            if ((this.f2681f.size() == 0 && this.f2682g.size() == 0 && (((arrayList = this.f2684i) == null || arrayList.isEmpty()) && ((arrayList2 = this.f2683h) == null || arrayList2.isEmpty()))) || this.f2681f.contains(Integer.valueOf(id)) || this.f2682g.contains(view)) {
                return true;
            }
            ArrayList<String> arrayList6 = this.f2683h;
            if (arrayList6 != null && arrayList6.contains(t.J(view))) {
                return true;
            }
            if (this.f2684i == null) {
                return false;
            }
            for (int i2 = 0; i2 < this.f2684i.size(); i2++) {
                if (this.f2684i.get(i2).isInstance(view)) {
                    return true;
                }
            }
            return false;
        }
        return false;
    }

    /* renamed from: Z */
    public void m12099Z(View view) {
        if (!this.f2670A) {
            a<Animator, C0482d> m12117D = m12117D();
            int size = m12117D.size();
            AbstractC0511t0 m12020d = C0497j0.m12020d(view);
            while (true) {
                size--;
                if (size < 0) {
                    break;
                }
                C0482d c0482d = (C0482d) m12117D.m(size);
                if (c0482d.f2705a != null && m12020d.equals(c0482d.f2708d)) {
                    C0485a.m12053b((Animator) m12117D.i(size));
                }
            }
            ArrayList<AbstractC0484f> arrayList = this.f2671B;
            if (arrayList != null && arrayList.size() > 0) {
                ArrayList arrayList2 = (ArrayList) this.f2671B.clone();
                int size2 = arrayList2.size();
                for (int i = 0; i < size2; i++) {
                    ((AbstractC0484f) arrayList2.get(i)).m12057c(this);
                }
            }
            this.f2701z = true;
        }
    }

    /* renamed from: a0 */
    public void m12098a0(ViewGroup viewGroup) {
        C0482d c0482d;
        this.f2696u = new ArrayList<>();
        this.f2697v = new ArrayList<>();
        m12101X(this.f2692q, this.f2693r);
        a<Animator, C0482d> m12117D = m12117D();
        int size = m12117D.size();
        AbstractC0511t0 m12020d = C0497j0.m12020d(viewGroup);
        while (true) {
            size--;
            if (size < 0) {
                m12069q(viewGroup, this.f2692q, this.f2693r, this.f2696u, this.f2697v);
                m12088f0();
                return;
            }
            Animator animator = (Animator) m12117D.i(size);
            if (animator != null && (c0482d = (C0482d) m12117D.get(animator)) != null && c0482d.f2705a != null && m12020d.equals(c0482d.f2708d)) {
                C0517y c0517y = c0482d.f2707c;
                View view = c0482d.f2705a;
                C0517y m12110M = m12110M(view, true);
                C0517y m12063w = m12063w(view, true);
                C0517y c0517y2 = m12063w;
                if (m12110M == null) {
                    c0517y2 = m12063w;
                    if (m12063w == null) {
                        c0517y2 = (C0517y) this.f2693r.f2780a.get(view);
                    }
                }
                if (!(m12110M == null && c0517y2 == null) && c0482d.f2709e.m12109N(c0517y, c0517y2)) {
                    if (animator.isRunning() || animator.isStarted()) {
                        animator.cancel();
                    } else {
                        m12117D.remove(animator);
                    }
                }
            }
        }
    }

    /* renamed from: b */
    public Transition m12097b(AbstractC0484f abstractC0484f) {
        if (this.f2671B == null) {
            this.f2671B = new ArrayList<>();
        }
        this.f2671B.add(abstractC0484f);
        return this;
    }

    /* renamed from: b0 */
    public Transition m12096b0(AbstractC0484f abstractC0484f) {
        ArrayList<AbstractC0484f> arrayList = this.f2671B;
        if (arrayList == null) {
            return this;
        }
        arrayList.remove(abstractC0484f);
        if (this.f2671B.size() == 0) {
            this.f2671B = null;
        }
        return this;
    }

    /* renamed from: c */
    public Transition m12095c(View view) {
        this.f2682g.add(view);
        return this;
    }

    /* renamed from: c0 */
    public Transition m12094c0(View view) {
        this.f2682g.remove(view);
        return this;
    }

    protected void cancel() {
        for (int size = this.f2699x.size() - 1; size >= 0; size--) {
            this.f2699x.get(size).cancel();
        }
        ArrayList<AbstractC0484f> arrayList = this.f2671B;
        if (arrayList == null || arrayList.size() <= 0) {
            return;
        }
        ArrayList arrayList2 = (ArrayList) this.f2671B.clone();
        int size2 = arrayList2.size();
        for (int i = 0; i < size2; i++) {
            ((AbstractC0484f) arrayList2.get(i)).m12058b(this);
        }
    }

    /* renamed from: d0 */
    public void m12092d0(View view) {
        if (this.f2701z) {
            if (!this.f2670A) {
                a<Animator, C0482d> m12117D = m12117D();
                int size = m12117D.size();
                AbstractC0511t0 m12020d = C0497j0.m12020d(view);
                while (true) {
                    size--;
                    if (size < 0) {
                        break;
                    }
                    C0482d c0482d = (C0482d) m12117D.m(size);
                    if (c0482d.f2705a != null && m12020d.equals(c0482d.f2708d)) {
                        C0485a.m12052c((Animator) m12117D.i(size));
                    }
                }
                ArrayList<AbstractC0484f> arrayList = this.f2671B;
                if (arrayList != null && arrayList.size() > 0) {
                    ArrayList arrayList2 = (ArrayList) this.f2671B.clone();
                    int size2 = arrayList2.size();
                    for (int i = 0; i < size2; i++) {
                        ((AbstractC0484f) arrayList2.get(i)).m12056d(this);
                    }
                }
            }
            this.f2701z = false;
        }
    }

    /* renamed from: f0 */
    protected void m12088f0() {
        m12072n0();
        a<Animator, C0482d> m12117D = m12117D();
        Iterator<Animator> it = this.f2672C.iterator();
        while (it.hasNext()) {
            Animator next = it.next();
            if (m12117D.containsKey(next)) {
                m12072n0();
                m12090e0(next, m12117D);
            }
        }
        this.f2672C.clear();
        m12068r();
    }

    /* renamed from: g */
    protected void m12087g(Animator animator) {
        if (animator == null) {
            m12068r();
            return;
        }
        if (m12067s() >= 0) {
            animator.setDuration(m12067s());
        }
        if (m12116E() >= 0) {
            animator.setStartDelay(m12116E() + animator.getStartDelay());
        }
        if (m12064v() != null) {
            animator.setInterpolator(m12064v());
        }
        animator.addListener(new C0481c());
        animator.start();
    }

    /* renamed from: g0 */
    public Transition m12086g0(long j) {
        this.f2679d = j;
        return this;
    }

    /* renamed from: h */
    public abstract void m12085h(C0517y c0517y);

    /* renamed from: h0 */
    public void m12084h0(AbstractC0483e abstractC0483e) {
        this.f2674E = abstractC0483e;
    }

    /* renamed from: i0 */
    public Transition m12082i0(TimeInterpolator timeInterpolator) {
        this.f2680e = timeInterpolator;
        return this;
    }

    /* renamed from: j */
    void m12081j(C0517y c0517y) {
        String[] m11980b;
        boolean z;
        if (this.f2673D == null || c0517y.f2777a.isEmpty() || (m11980b = this.f2673D.m11980b()) == null) {
            return;
        }
        int i = 0;
        while (true) {
            if (i >= m11980b.length) {
                z = true;
                break;
            } else if (!c0517y.f2777a.containsKey(m11980b[i])) {
                z = false;
                break;
            } else {
                i++;
            }
        }
        if (z) {
            return;
        }
        this.f2673D.m11981a(c0517y);
    }

    /* renamed from: j0 */
    public void m12080j0(int... iArr) {
        if (iArr == null || iArr.length == 0) {
            this.f2695t = f2667H;
            return;
        }
        for (int i = 0; i < iArr.length; i++) {
            if (!m12108P(iArr[i])) {
                throw new IllegalArgumentException("matches contains invalid value");
            }
            if (m12089f(iArr, i)) {
                throw new IllegalArgumentException("matches contains a duplicate value");
            }
        }
        this.f2695t = (int[]) iArr.clone();
    }

    /* renamed from: k */
    public abstract void m12079k(C0517y c0517y);

    /* renamed from: k0 */
    public void m12078k0(PathMotion pathMotion) {
        PathMotion pathMotion2 = pathMotion;
        if (pathMotion == null) {
            pathMotion2 = f2668I;
        }
        this.f2676G = pathMotion2;
    }

    /* renamed from: l */
    public void m12077l(ViewGroup viewGroup, boolean z) {
        a<String, String> aVar;
        int i;
        ArrayList<String> arrayList;
        ArrayList<Class<?>> arrayList2;
        m12075m(z);
        if ((this.f2681f.size() > 0 || this.f2682g.size() > 0) && (((arrayList = this.f2683h) == null || arrayList.isEmpty()) && ((arrayList2 = this.f2684i) == null || arrayList2.isEmpty()))) {
            for (int i2 = 0; i2 < this.f2681f.size(); i2++) {
                View findViewById = viewGroup.findViewById(this.f2681f.get(i2).intValue());
                if (findViewById != null) {
                    C0517y c0517y = new C0517y(findViewById);
                    if (z) {
                        m12079k(c0517y);
                    } else {
                        m12085h(c0517y);
                    }
                    c0517y.f2779c.add(this);
                    m12081j(c0517y);
                    m12091e(z ? this.f2692q : this.f2693r, findViewById, c0517y);
                }
            }
            for (int i3 = 0; i3 < this.f2682g.size(); i3++) {
                View view = this.f2682g.get(i3);
                C0517y c0517y2 = new C0517y(view);
                if (z) {
                    m12079k(c0517y2);
                } else {
                    m12085h(c0517y2);
                }
                c0517y2.f2779c.add(this);
                m12081j(c0517y2);
                m12091e(z ? this.f2692q : this.f2693r, view, c0517y2);
            }
        } else {
            m12083i(viewGroup, z);
        }
        if (z || (aVar = this.f2675F) == null) {
            return;
        }
        int size = aVar.size();
        ArrayList arrayList3 = new ArrayList(size);
        int i4 = 0;
        while (true) {
            if (i4 < size) {
                arrayList3.add(this.f2692q.f2783d.remove((String) this.f2675F.i(i4)));
                i4++;
            }
        }
        for (i = 0; i < size; i++) {
            View view2 = (View) arrayList3.get(i);
            if (view2 != null) {
                this.f2692q.f2783d.put((String) this.f2675F.m(i), view2);
            }
        }
    }

    /* renamed from: l0 */
    public void m12076l0(AbstractC0514w abstractC0514w) {
        this.f2673D = abstractC0514w;
    }

    /* renamed from: m */
    public void m12075m(boolean z) {
        C0518z c0518z;
        if (z) {
            this.f2692q.f2780a.clear();
            this.f2692q.f2781b.clear();
            c0518z = this.f2692q;
        } else {
            this.f2693r.f2780a.clear();
            this.f2693r.f2781b.clear();
            c0518z = this.f2693r;
        }
        c0518z.f2782c.c();
    }

    /* renamed from: m0 */
    public Transition m12074m0(long j) {
        this.f2678c = j;
        return this;
    }

    /* renamed from: n */
    public Transition clone() {
        try {
            Transition transition = (Transition) super.clone();
            transition.f2672C = new ArrayList<>();
            transition.f2692q = new C0518z();
            transition.f2693r = new C0518z();
            transition.f2696u = null;
            transition.f2697v = null;
            return transition;
        } catch (CloneNotSupportedException e) {
            return null;
        }
    }

    /* renamed from: n0 */
    protected void m12072n0() {
        if (this.f2700y == 0) {
            ArrayList<AbstractC0484f> arrayList = this.f2671B;
            if (arrayList != null && arrayList.size() > 0) {
                ArrayList arrayList2 = (ArrayList) this.f2671B.clone();
                int size = arrayList2.size();
                for (int i = 0; i < size; i++) {
                    ((AbstractC0484f) arrayList2.get(i)).m12059a(this);
                }
            }
            this.f2670A = false;
        }
        this.f2700y++;
    }

    /* renamed from: o */
    public Animator m12071o(ViewGroup viewGroup, C0517y c0517y, C0517y c0517y2) {
        return null;
    }

    /* JADX WARN: Code restructure failed: missing block: B:14:0x00f5, code lost:
        if (r5.f2682g.size() > 0) goto L15;
     */
    /* renamed from: o0 */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    java.lang.String m12070o0(java.lang.String r6) {
        /*
            Method dump skipped, instructions count: 506
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.transition.Transition.m12070o0(java.lang.String):java.lang.String");
    }

    /* JADX WARN: Type inference failed for: r0v55, types: [long] */
    /* renamed from: q */
    protected void m12069q(ViewGroup viewGroup, C0518z c0518z, C0518z c0518z2, ArrayList<C0517y> arrayList, ArrayList<C0517y> arrayList2) {
        int i;
        char c;
        Animator animator;
        C0517y c0517y;
        View view;
        a<Animator, C0482d> m12117D = m12117D();
        SparseIntArray sparseIntArray = new SparseIntArray();
        int size = arrayList.size();
        char c2 = 65535;
        int i2 = 0;
        while (i2 < size) {
            C0517y c0517y2 = arrayList.get(i2);
            C0517y c0517y3 = arrayList2.get(i2);
            C0517y c0517y4 = c0517y2;
            if (c0517y2 != null) {
                c0517y4 = c0517y2;
                if (!c0517y2.f2779c.contains(this)) {
                    c0517y4 = null;
                }
            }
            C0517y c0517y5 = c0517y3;
            if (c0517y3 != null) {
                c0517y5 = c0517y3;
                if (!c0517y3.f2779c.contains(this)) {
                    c0517y5 = null;
                }
            }
            if (c0517y4 != null || c0517y5 != null) {
                if (c0517y4 == null || c0517y5 == null || m12109N(c0517y4, c0517y5)) {
                    Animator m12071o = m12071o(viewGroup, c0517y4, c0517y5);
                    if (m12071o != null) {
                        if (c0517y5 != null) {
                            View view2 = c0517y5.f2778b;
                            String[] m12111L = m12111L();
                            if (m12111L != null && m12111L.length > 0) {
                                C0517y c0517y6 = new C0517y(view2);
                                C0517y c0517y7 = (C0517y) c0518z2.f2780a.get(view2);
                                int i3 = i2;
                                if (c0517y7 != null) {
                                    int i4 = 0;
                                    while (true) {
                                        i3 = i2;
                                        if (i4 >= m12111L.length) {
                                            break;
                                        }
                                        c0517y6.f2777a.put(m12111L[i4], c0517y7.f2777a.get(m12111L[i4]));
                                        i4++;
                                    }
                                }
                                i2 = i3;
                                int size2 = m12117D.size();
                                int i5 = 0;
                                while (true) {
                                    if (i5 >= size2) {
                                        c0517y = c0517y6;
                                        break;
                                    }
                                    C0482d c0482d = (C0482d) m12117D.get((Animator) m12117D.i(i5));
                                    if (c0482d.f2707c != null && c0482d.f2705a == view2 && c0482d.f2706b.equals(m12062y()) && c0482d.f2707c.equals(c0517y6)) {
                                        m12071o = null;
                                        c0517y = c0517y6;
                                        break;
                                    }
                                    i5++;
                                }
                            } else {
                                c0517y = null;
                            }
                            animator = m12071o;
                            view = view2;
                        } else {
                            animator = m12071o;
                            c0517y = null;
                            view = c0517y4.f2778b;
                        }
                        c = c2;
                        i = i2;
                        if (animator != null) {
                            AbstractC0514w abstractC0514w = this.f2673D;
                            c = c2;
                            if (abstractC0514w != null) {
                                long m11979c = abstractC0514w.m11979c(viewGroup, this, c0517y4, c0517y5);
                                sparseIntArray.put(this.f2672C.size(), (int) m11979c);
                                c = Math.min(m11979c, (long) c2);
                            }
                            m12117D.put(animator, new C0482d(view, m12062y(), this, C0497j0.m12020d(viewGroup), c0517y));
                            this.f2672C.add(animator);
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
            for (int i6 = 0; i6 < sparseIntArray.size(); i6++) {
                Animator animator2 = this.f2672C.get(sparseIntArray.keyAt(i6));
                animator2.setStartDelay((sparseIntArray.valueAt(i6) - c2) + animator2.getStartDelay());
            }
        }
    }

    /* renamed from: r */
    protected void m12068r() {
        int i = this.f2700y - 1;
        this.f2700y = i;
        if (i == 0) {
            ArrayList<AbstractC0484f> arrayList = this.f2671B;
            if (arrayList != null && arrayList.size() > 0) {
                ArrayList arrayList2 = (ArrayList) this.f2671B.clone();
                int size = arrayList2.size();
                for (int i2 = 0; i2 < size; i2++) {
                    ((AbstractC0484f) arrayList2.get(i2)).m12055e(this);
                }
            }
            for (int i3 = 0; i3 < this.f2692q.f2782c.m(); i3++) {
                View view = (View) this.f2692q.f2782c.n(i3);
                if (view != null) {
                    t.w0(view, false);
                }
            }
            for (int i4 = 0; i4 < this.f2693r.f2782c.m(); i4++) {
                View view2 = (View) this.f2693r.f2782c.n(i4);
                if (view2 != null) {
                    t.w0(view2, false);
                }
            }
            this.f2670A = true;
        }
    }

    /* renamed from: s */
    public long m12067s() {
        return this.f2679d;
    }

    /* renamed from: t */
    public Rect m12066t() {
        AbstractC0483e abstractC0483e = this.f2674E;
        if (abstractC0483e == null) {
            return null;
        }
        return abstractC0483e.m12060a(this);
    }

    public String toString() {
        return m12070o0("");
    }

    /* renamed from: u */
    public AbstractC0483e m12065u() {
        return this.f2674E;
    }

    /* renamed from: v */
    public TimeInterpolator m12064v() {
        return this.f2680e;
    }

    /* renamed from: w */
    C0517y m12063w(View view, boolean z) {
        int i;
        TransitionSet transitionSet = this.f2694s;
        if (transitionSet != null) {
            return transitionSet.m12063w(view, z);
        }
        ArrayList<C0517y> arrayList = z ? this.f2696u : this.f2697v;
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
            C0517y c0517y = arrayList.get(i2);
            if (c0517y == null) {
                return null;
            }
            if (c0517y.f2778b == view) {
                i = i2;
                break;
            }
            i2++;
        }
        C0517y c0517y2 = null;
        if (i >= 0) {
            c0517y2 = (z ? this.f2697v : this.f2696u).get(i);
        }
        return c0517y2;
    }

    /* renamed from: y */
    public String m12062y() {
        return this.f2677b;
    }

    /* renamed from: z */
    public PathMotion m12061z() {
        return this.f2676G;
    }
}

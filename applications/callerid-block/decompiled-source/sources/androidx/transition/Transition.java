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

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: androidx.transition.Transition$b */
    /* loaded from: classes-dex2jar.jar:androidx/transition/Transition$b.class */
    public class C0480b extends AnimatorListenerAdapter {

        /* renamed from: a */
        final /* synthetic */ a f2702a;

        C0480b(a aVar) {
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

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: androidx.transition.Transition$c */
    /* loaded from: classes-dex2jar.jar:androidx/transition/Transition$c.class */
    public class C0481c extends AnimatorListenerAdapter {
        C0481c() {
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public void onAnimationEnd(Animator animator) {
            Transition.this.m12068r();
            animator.removeListener(this);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
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

        C0482d(View view, String str, Transition transition, AbstractC0511t0 t0Var, C0517y yVar) {
            this.f2705a = view;
            this.f2706b = str;
            this.f2707c = yVar;
            this.f2708d = t0Var;
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
        long g = C0282g.m13484g(obtainStyledAttributes, xmlResourceParser, "duration", 1, -1);
        if (g >= 0) {
            m12086g0(g);
        }
        long g2 = C0282g.m13484g(obtainStyledAttributes, xmlResourceParser, "startDelay", 2, -1);
        if (g2 > 0) {
            m12074m0(g2);
        }
        int h = C0282g.m13483h(obtainStyledAttributes, xmlResourceParser, "interpolator", 0, 0);
        if (h > 0) {
            m12082i0(AnimationUtils.loadInterpolator(context, h));
        }
        String i = C0282g.m13482i(obtainStyledAttributes, xmlResourceParser, "matchOrder", 3);
        if (i != null) {
            m12080j0(m12100Y(i));
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
    private static boolean m12106R(C0517y yVar, C0517y yVar2, String str) {
        boolean z;
        Object obj = yVar.f2777a.get(str);
        Object obj2 = yVar2.f2777a.get(str);
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
                C0517y yVar = (C0517y) aVar.get(valueAt);
                C0517y yVar2 = (C0517y) aVar2.get(view);
                if (!(yVar == null || yVar2 == null)) {
                    this.f2696u.add(yVar);
                    this.f2697v.add(yVar2);
                    aVar.remove(valueAt);
                    aVar2.remove(view);
                }
            }
        }
    }

    /* renamed from: T */
    private void m12104T(a<View, C0517y> aVar, a<View, C0517y> aVar2) {
        C0517y yVar;
        for (int size = aVar.size() - 1; size >= 0; size--) {
            View view = (View) aVar.i(size);
            if (view != null && m12107Q(view) && (yVar = (C0517y) aVar2.remove(view)) != null && m12107Q(yVar.f2778b)) {
                this.f2696u.add((C0517y) aVar.k(size));
                this.f2697v.add(yVar);
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
                C0517y yVar = (C0517y) aVar.get(view2);
                C0517y yVar2 = (C0517y) aVar2.get(view);
                if (!(yVar == null || yVar2 == null)) {
                    this.f2696u.add(yVar);
                    this.f2697v.add(yVar2);
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
                C0517y yVar = (C0517y) aVar.get(view2);
                C0517y yVar2 = (C0517y) aVar2.get(view);
                if (!(yVar == null || yVar2 == null)) {
                    this.f2696u.add(yVar);
                    this.f2697v.add(yVar2);
                    aVar.remove(view2);
                    aVar2.remove(view);
                }
            }
        }
    }

    /* renamed from: X */
    private void m12101X(C0518z zVar, C0518z zVar2) {
        a<View, C0517y> aVar = new a<>(zVar.f2780a);
        a<View, C0517y> aVar2 = new a<>(zVar2.f2780a);
        int i = 0;
        while (true) {
            int[] iArr = this.f2695t;
            if (i < iArr.length) {
                int i2 = iArr[i];
                if (i2 == 1) {
                    m12104T(aVar, aVar2);
                } else if (i2 == 2) {
                    m12102W(aVar, aVar2, zVar.f2783d, zVar2.f2783d);
                } else if (i2 == 3) {
                    m12105S(aVar, aVar2, zVar.f2781b, zVar2.f2781b);
                } else if (i2 == 4) {
                    m12103V(aVar, aVar2, zVar.f2782c, zVar2.f2782c);
                }
                i++;
            } else {
                m12093d(aVar, aVar2);
                return;
            }
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
            } else if (trim.isEmpty()) {
                int[] iArr2 = new int[iArr.length - 1];
                System.arraycopy(iArr, 0, iArr2, 0, i);
                i--;
                iArr = iArr2;
            } else {
                throw new InflateException("Unknown match type in matchOrder: '" + trim + "'");
            }
            i++;
        }
        return iArr;
    }

    /* renamed from: d */
    private void m12093d(a<View, C0517y> aVar, a<View, C0517y> aVar2) {
        for (int i = 0; i < aVar.size(); i++) {
            C0517y yVar = (C0517y) aVar.m(i);
            if (m12107Q(yVar.f2778b)) {
                this.f2696u.add(yVar);
                this.f2697v.add(null);
            }
        }
        for (int i2 = 0; i2 < aVar2.size(); i2++) {
            C0517y yVar2 = (C0517y) aVar2.m(i2);
            if (m12107Q(yVar2.f2778b)) {
                this.f2697v.add(yVar2);
                this.f2696u.add(null);
            }
        }
    }

    /* renamed from: e */
    private static void m12091e(C0518z zVar, View view, C0517y yVar) {
        zVar.f2780a.put(view, yVar);
        int id = view.getId();
        if (id >= 0) {
            if (zVar.f2781b.indexOfKey(id) >= 0) {
                zVar.f2781b.put(id, null);
            } else {
                zVar.f2781b.put(id, view);
            }
        }
        String J = t.J(view);
        if (J != null) {
            if (zVar.f2783d.containsKey(J)) {
                zVar.f2783d.put(J, (Object) null);
            } else {
                zVar.f2783d.put(J, view);
            }
        }
        if (view.getParent() instanceof ListView) {
            ListView listView = (ListView) view.getParent();
            if (listView.getAdapter().hasStableIds()) {
                long itemIdAtPosition = listView.getItemIdAtPosition(listView.getPositionForView(view));
                if (zVar.f2782c.h(itemIdAtPosition) >= 0) {
                    View view2 = (View) zVar.f2782c.f(itemIdAtPosition);
                    if (view2 != null) {
                        t.w0(view2, false);
                        zVar.f2782c.j(itemIdAtPosition, (Object) null);
                        return;
                    }
                    return;
                }
                t.w0(view, true);
                zVar.f2782c.j(itemIdAtPosition, view);
            }
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
        if (view != null) {
            int id = view.getId();
            ArrayList<Integer> arrayList = this.f2685j;
            if (arrayList == null || !arrayList.contains(Integer.valueOf(id))) {
                ArrayList<View> arrayList2 = this.f2686k;
                if (arrayList2 == null || !arrayList2.contains(view)) {
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
                        C0517y yVar = new C0517y(view);
                        if (z) {
                            m12079k(yVar);
                        } else {
                            m12085h(yVar);
                        }
                        yVar.f2779c.add(this);
                        m12081j(yVar);
                        m12091e(z ? this.f2692q : this.f2693r, view, yVar);
                    }
                    if (view instanceof ViewGroup) {
                        ArrayList<Integer> arrayList4 = this.f2689n;
                        if (arrayList4 == null || !arrayList4.contains(Integer.valueOf(id))) {
                            ArrayList<View> arrayList5 = this.f2690o;
                            if (arrayList5 == null || !arrayList5.contains(view)) {
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
                        }
                    }
                }
            }
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
    public boolean m12109N(C0517y yVar, C0517y yVar2) {
        boolean z = false;
        if (yVar != null) {
            z = false;
            if (yVar2 != null) {
                String[] L = m12111L();
                if (L != null) {
                    int length = L.length;
                    int i = 0;
                    while (true) {
                        z = false;
                        if (i >= length) {
                            break;
                        } else if (m12106R(yVar, yVar2, L[i])) {
                            break;
                        } else {
                            i++;
                        }
                    }
                } else {
                    Iterator<String> it = yVar.f2777a.keySet().iterator();
                    do {
                        z = false;
                        if (!it.hasNext()) {
                            break;
                        }
                    } while (!m12106R(yVar, yVar2, it.next()));
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
        if (arrayList3 != null && arrayList3.contains(Integer.valueOf(id))) {
            return false;
        }
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
        if (!(this.f2688m == null || t.J(view) == null || !this.f2688m.contains(t.J(view)))) {
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

    /* renamed from: Z */
    public void m12099Z(View view) {
        if (!this.f2670A) {
            a<Animator, C0482d> D = m12117D();
            int size = D.size();
            AbstractC0511t0 d = C0497j0.m12020d(view);
            while (true) {
                size--;
                if (size < 0) {
                    break;
                }
                C0482d dVar = (C0482d) D.m(size);
                if (dVar.f2705a != null && d.equals(dVar.f2708d)) {
                    C0485a.m12053b((Animator) D.i(size));
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

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: a0 */
    public void m12098a0(ViewGroup viewGroup) {
        C0482d dVar;
        this.f2696u = new ArrayList<>();
        this.f2697v = new ArrayList<>();
        m12101X(this.f2692q, this.f2693r);
        a<Animator, C0482d> D = m12117D();
        int size = D.size();
        AbstractC0511t0 d = C0497j0.m12020d(viewGroup);
        while (true) {
            size--;
            if (size >= 0) {
                Animator animator = (Animator) D.i(size);
                if (!(animator == null || (dVar = (C0482d) D.get(animator)) == null || dVar.f2705a == null || !d.equals(dVar.f2708d))) {
                    C0517y yVar = dVar.f2707c;
                    View view = dVar.f2705a;
                    C0517y M = m12110M(view, true);
                    C0517y w = m12063w(view, true);
                    C0517y yVar2 = w;
                    if (M == null) {
                        yVar2 = w;
                        if (w == null) {
                            yVar2 = (C0517y) this.f2693r.f2780a.get(view);
                        }
                    }
                    if (!(M == null && yVar2 == null) && dVar.f2709e.m12109N(yVar, yVar2)) {
                        if (animator.isRunning() || animator.isStarted()) {
                            animator.cancel();
                        } else {
                            D.remove(animator);
                        }
                    }
                }
            } else {
                m12069q(viewGroup, this.f2692q, this.f2693r, this.f2696u, this.f2697v);
                m12088f0();
                return;
            }
        }
    }

    /* renamed from: b */
    public Transition m12097b(AbstractC0484f fVar) {
        if (this.f2671B == null) {
            this.f2671B = new ArrayList<>();
        }
        this.f2671B.add(fVar);
        return this;
    }

    /* renamed from: b0 */
    public Transition m12096b0(AbstractC0484f fVar) {
        ArrayList<AbstractC0484f> arrayList = this.f2671B;
        if (arrayList == null) {
            return this;
        }
        arrayList.remove(fVar);
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
        if (arrayList != null && arrayList.size() > 0) {
            ArrayList arrayList2 = (ArrayList) this.f2671B.clone();
            int size2 = arrayList2.size();
            for (int i = 0; i < size2; i++) {
                ((AbstractC0484f) arrayList2.get(i)).m12058b(this);
            }
        }
    }

    /* renamed from: d0 */
    public void m12092d0(View view) {
        if (this.f2701z) {
            if (!this.f2670A) {
                a<Animator, C0482d> D = m12117D();
                int size = D.size();
                AbstractC0511t0 d = C0497j0.m12020d(view);
                while (true) {
                    size--;
                    if (size < 0) {
                        break;
                    }
                    C0482d dVar = (C0482d) D.m(size);
                    if (dVar.f2705a != null && d.equals(dVar.f2708d)) {
                        C0485a.m12052c((Animator) D.i(size));
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
        a<Animator, C0482d> D = m12117D();
        Iterator<Animator> it = this.f2672C.iterator();
        while (it.hasNext()) {
            Animator next = it.next();
            if (D.containsKey(next)) {
                m12072n0();
                m12090e0(next, D);
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
    public abstract void m12085h(C0517y yVar);

    /* renamed from: h0 */
    public void m12084h0(AbstractC0483e eVar) {
        this.f2674E = eVar;
    }

    /* renamed from: i0 */
    public Transition m12082i0(TimeInterpolator timeInterpolator) {
        this.f2680e = timeInterpolator;
        return this;
    }

    /* renamed from: j */
    void m12081j(C0517y yVar) {
        String[] b;
        if (this.f2673D != null && !yVar.f2777a.isEmpty() && (b = this.f2673D.m11980b()) != null) {
            boolean z = false;
            int i = 0;
            while (true) {
                if (i >= b.length) {
                    z = true;
                    break;
                } else if (!yVar.f2777a.containsKey(b[i])) {
                    break;
                } else {
                    i++;
                }
            }
            if (!z) {
                this.f2673D.m11981a(yVar);
            }
        }
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
            } else if (m12089f(iArr, i)) {
                throw new IllegalArgumentException("matches contains a duplicate value");
            }
        }
        this.f2695t = (int[]) iArr.clone();
    }

    /* renamed from: k */
    public abstract void m12079k(C0517y yVar);

    /* renamed from: k0 */
    public void m12078k0(PathMotion pathMotion) {
        PathMotion pathMotion2 = pathMotion;
        if (pathMotion == null) {
            pathMotion2 = f2668I;
        }
        this.f2676G = pathMotion2;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: l */
    public void m12077l(ViewGroup viewGroup, boolean z) {
        a<String, String> aVar;
        ArrayList<String> arrayList;
        ArrayList<Class<?>> arrayList2;
        m12075m(z);
        if ((this.f2681f.size() > 0 || this.f2682g.size() > 0) && (((arrayList = this.f2683h) == null || arrayList.isEmpty()) && ((arrayList2 = this.f2684i) == null || arrayList2.isEmpty()))) {
            for (int i = 0; i < this.f2681f.size(); i++) {
                View findViewById = viewGroup.findViewById(this.f2681f.get(i).intValue());
                if (findViewById != null) {
                    C0517y yVar = new C0517y(findViewById);
                    if (z) {
                        m12079k(yVar);
                    } else {
                        m12085h(yVar);
                    }
                    yVar.f2779c.add(this);
                    m12081j(yVar);
                    m12091e(z ? this.f2692q : this.f2693r, findViewById, yVar);
                }
            }
            for (int i2 = 0; i2 < this.f2682g.size(); i2++) {
                View view = this.f2682g.get(i2);
                C0517y yVar2 = new C0517y(view);
                if (z) {
                    m12079k(yVar2);
                } else {
                    m12085h(yVar2);
                }
                yVar2.f2779c.add(this);
                m12081j(yVar2);
                m12091e(z ? this.f2692q : this.f2693r, view, yVar2);
            }
        } else {
            m12083i(viewGroup, z);
        }
        if (!(z || (aVar = this.f2675F) == null)) {
            int size = aVar.size();
            ArrayList arrayList3 = new ArrayList(size);
            for (int i3 = 0; i3 < size; i3++) {
                arrayList3.add(this.f2692q.f2783d.remove((String) this.f2675F.i(i3)));
            }
            for (int i4 = 0; i4 < size; i4++) {
                View view2 = (View) arrayList3.get(i4);
                if (view2 != null) {
                    this.f2692q.f2783d.put((String) this.f2675F.m(i4), view2);
                }
            }
        }
    }

    /* renamed from: l0 */
    public void m12076l0(AbstractC0514w wVar) {
        this.f2673D = wVar;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: m */
    public void m12075m(boolean z) {
        C0518z zVar;
        if (z) {
            this.f2692q.f2780a.clear();
            this.f2692q.f2781b.clear();
            zVar = this.f2692q;
        } else {
            this.f2693r.f2780a.clear();
            this.f2693r.f2781b.clear();
            zVar = this.f2693r;
        }
        zVar.f2782c.c();
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
    public Animator m12071o(ViewGroup viewGroup, C0517y yVar, C0517y yVar2) {
        return null;
    }

    /* JADX WARN: Code restructure failed: missing block: B:14:0x00f5, code lost:
        if (r5.f2682g.size() > 0) goto L_0x00f8;
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

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r19v0 */
    /* JADX WARN: Type inference failed for: r19v1, types: [long] */
    /* JADX WARN: Type inference failed for: r19v2 */
    /* JADX WARN: Type inference failed for: r19v3 */
    /* JADX WARN: Type inference failed for: r25v1 */
    /* JADX WARN: Type inference failed for: r25v2 */
    /* JADX WARN: Type inference failed for: r25v3 */
    /* JADX WARN: Type inference failed for: r25v6 */
    /* JADX WARN: Type inference failed for: r25v7 */
    /* JADX WARN: Unknown variable types count: 2 */
    /* renamed from: q */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    protected void m12069q(android.view.ViewGroup r11, androidx.transition.C0518z r12, androidx.transition.C0518z r13, java.util.ArrayList<androidx.transition.C0517y> r14, java.util.ArrayList<androidx.transition.C0517y> r15) {
        /*
            Method dump skipped, instructions count: 625
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.transition.Transition.m12069q(android.view.ViewGroup, androidx.transition.z, androidx.transition.z, java.util.ArrayList, java.util.ArrayList):void");
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
        AbstractC0483e eVar = this.f2674E;
        if (eVar == null) {
            return null;
        }
        return eVar.m12060a(this);
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
        TransitionSet transitionSet = this.f2694s;
        if (transitionSet != null) {
            return transitionSet.m12063w(view, z);
        }
        ArrayList<C0517y> arrayList = z ? this.f2696u : this.f2697v;
        C0517y yVar = null;
        if (arrayList == null) {
            return null;
        }
        int size = arrayList.size();
        int i = -1;
        int i2 = 0;
        while (true) {
            if (i2 >= size) {
                break;
            }
            C0517y yVar2 = arrayList.get(i2);
            if (yVar2 == null) {
                return null;
            }
            if (yVar2.f2778b == view) {
                i = i2;
                break;
            }
            i2++;
        }
        if (i >= 0) {
            yVar = (z ? this.f2697v : this.f2696u).get(i);
        }
        return yVar;
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

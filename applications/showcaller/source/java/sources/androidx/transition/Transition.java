package androidx.transition;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.animation.TimeInterpolator;
import android.annotation.SuppressLint;
import android.content.Context;
import android.content.res.TypedArray;
import android.content.res.XmlResourceParser;
import android.graphics.Path;
import android.graphics.Rect;
import android.util.AttributeSet;
import android.util.SparseArray;
import android.util.SparseIntArray;
import android.view.InflateException;
import android.view.View;
import android.view.ViewGroup;
import android.view.animation.AnimationUtils;
import android.widget.ListView;
import androidx.core.content.p007d.C0614g;
import com.allinone.callerid.bean.ShortCut;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.StringTokenizer;
import p020b.p036e.C1489a;
import p020b.p036e.C1494d;
import p020b.p041h.p050l.C1679w;
/* loaded from: classes-dex2jar.jar:androidx/transition/Transition.class */
public abstract class Transition implements Cloneable {

    /* renamed from: d */
    private static final int[] f4808d = {2, 1, 3, 4};

    /* renamed from: e */
    private static final PathMotion f4809e = new C1105a();

    /* renamed from: f */
    private static ThreadLocal<C1489a<Animator, C1108d>> f4810f = new ThreadLocal<>();

    /* renamed from: A */
    private ArrayList<C1175y> f4811A;

    /* renamed from: J */
    AbstractC1172w f4820J;

    /* renamed from: K */
    private AbstractC1109e f4821K;

    /* renamed from: L */
    private C1489a<String, String> f4822L;

    /* renamed from: z */
    private ArrayList<C1175y> f4843z;

    /* renamed from: g */
    private String f4824g = getClass().getName();

    /* renamed from: h */
    private long f4825h = -1;

    /* renamed from: i */
    long f4826i = -1;

    /* renamed from: j */
    private TimeInterpolator f4827j = null;

    /* renamed from: k */
    ArrayList<Integer> f4828k = new ArrayList<>();

    /* renamed from: l */
    ArrayList<View> f4829l = new ArrayList<>();

    /* renamed from: m */
    private ArrayList<String> f4830m = null;

    /* renamed from: n */
    private ArrayList<Class<?>> f4831n = null;

    /* renamed from: o */
    private ArrayList<Integer> f4832o = null;

    /* renamed from: p */
    private ArrayList<View> f4833p = null;

    /* renamed from: q */
    private ArrayList<Class<?>> f4834q = null;

    /* renamed from: r */
    private ArrayList<String> f4835r = null;

    /* renamed from: s */
    private ArrayList<Integer> f4836s = null;

    /* renamed from: t */
    private ArrayList<View> f4837t = null;

    /* renamed from: u */
    private ArrayList<Class<?>> f4838u = null;

    /* renamed from: v */
    private C1176z f4839v = new C1176z();

    /* renamed from: w */
    private C1176z f4840w = new C1176z();

    /* renamed from: x */
    TransitionSet f4841x = null;

    /* renamed from: y */
    private int[] f4842y = f4808d;

    /* renamed from: B */
    private ViewGroup f4812B = null;

    /* renamed from: C */
    boolean f4813C = false;

    /* renamed from: D */
    ArrayList<Animator> f4814D = new ArrayList<>();

    /* renamed from: E */
    private int f4815E = 0;

    /* renamed from: F */
    private boolean f4816F = false;

    /* renamed from: G */
    private boolean f4817G = false;

    /* renamed from: H */
    private ArrayList<AbstractC1110f> f4818H = null;

    /* renamed from: I */
    private ArrayList<Animator> f4819I = new ArrayList<>();

    /* renamed from: M */
    private PathMotion f4823M = f4809e;

    /* renamed from: androidx.transition.Transition$a */
    /* loaded from: classes-dex2jar.jar:androidx/transition/Transition$a.class */
    static final class C1105a extends PathMotion {
        C1105a() {
        }

        @Override // androidx.transition.PathMotion
        /* renamed from: a */
        public Path mo30984a(float f, float f2, float f3, float f4) {
            Path path = new Path();
            path.moveTo(f, f2);
            path.lineTo(f3, f4);
            return path;
        }
    }

    /* renamed from: androidx.transition.Transition$b */
    /* loaded from: classes-dex2jar.jar:androidx/transition/Transition$b.class */
    public class C1106b extends AnimatorListenerAdapter {

        /* renamed from: a */
        final /* synthetic */ C1489a f4844a;

        C1106b(C1489a c1489a) {
            Transition.this = r4;
            this.f4844a = c1489a;
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public void onAnimationEnd(Animator animator) {
            this.f4844a.remove(animator);
            Transition.this.f4814D.remove(animator);
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public void onAnimationStart(Animator animator) {
            Transition.this.f4814D.add(animator);
        }
    }

    /* renamed from: androidx.transition.Transition$c */
    /* loaded from: classes-dex2jar.jar:androidx/transition/Transition$c.class */
    public class C1107c extends AnimatorListenerAdapter {
        C1107c() {
            Transition.this = r4;
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public void onAnimationEnd(Animator animator) {
            Transition.this.m30990s();
            animator.removeListener(this);
        }
    }

    /* renamed from: androidx.transition.Transition$d */
    /* loaded from: classes-dex2jar.jar:androidx/transition/Transition$d.class */
    public static class C1108d {

        /* renamed from: a */
        View f4847a;

        /* renamed from: b */
        String f4848b;

        /* renamed from: c */
        C1175y f4849c;

        /* renamed from: d */
        AbstractC1167t0 f4850d;

        /* renamed from: e */
        Transition f4851e;

        C1108d(View view, String str, Transition transition, AbstractC1167t0 abstractC1167t0, C1175y c1175y) {
            this.f4847a = view;
            this.f4848b = str;
            this.f4849c = c1175y;
            this.f4850d = abstractC1167t0;
            this.f4851e = transition;
        }
    }

    /* renamed from: androidx.transition.Transition$e */
    /* loaded from: classes-dex2jar.jar:androidx/transition/Transition$e.class */
    public static abstract class AbstractC1109e {
        /* renamed from: a */
        public abstract Rect mo30914a(Transition transition);
    }

    /* renamed from: androidx.transition.Transition$f */
    /* loaded from: classes-dex2jar.jar:androidx/transition/Transition$f.class */
    public interface AbstractC1110f {
        /* renamed from: a */
        void mo30830a(Transition transition);

        /* renamed from: b */
        void mo30829b(Transition transition);

        /* renamed from: c */
        void mo30821c(Transition transition);

        /* renamed from: d */
        void mo30828d(Transition transition);

        /* renamed from: e */
        void mo30827e(Transition transition);
    }

    public Transition() {
    }

    @SuppressLint({"RestrictedApi"})
    public Transition(Context context, AttributeSet attributeSet) {
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, C1166t.f4973c);
        XmlResourceParser xmlResourceParser = (XmlResourceParser) attributeSet;
        long m33253g = C0614g.m33253g(obtainStyledAttributes, xmlResourceParser, "duration", 1, -1);
        if (m33253g >= 0) {
            mo30976d0(m33253g);
        }
        long m33253g2 = C0614g.m33253g(obtainStyledAttributes, xmlResourceParser, "startDelay", 2, -1);
        if (m33253g2 > 0) {
            mo30971j0(m33253g2);
        }
        int m33252h = C0614g.m33252h(obtainStyledAttributes, xmlResourceParser, "interpolator", 0, 0);
        if (m33252h > 0) {
            mo30974f0(AnimationUtils.loadInterpolator(context, m33252h));
        }
        String m33251i = C0614g.m33251i(obtainStyledAttributes, xmlResourceParser, "matchOrder", 3);
        if (m33251i != null) {
            m30996g0(m31002V(m33251i));
        }
        obtainStyledAttributes.recycle();
    }

    /* renamed from: D */
    private static C1489a<Animator, C1108d> m31017D() {
        C1489a<Animator, C1108d> c1489a = f4810f.get();
        C1489a<Animator, C1108d> c1489a2 = c1489a;
        if (c1489a == null) {
            c1489a2 = new C1489a<>();
            f4810f.set(c1489a2);
        }
        return c1489a2;
    }

    /* renamed from: M */
    private static boolean m31010M(int i) {
        boolean z = true;
        if (i < 1 || i > 4) {
            z = false;
        }
        return z;
    }

    /* renamed from: O */
    private static boolean m31008O(C1175y c1175y, C1175y c1175y2, String str) {
        boolean z;
        Object obj = c1175y.f4995a.get(str);
        Object obj2 = c1175y2.f4995a.get(str);
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

    /* renamed from: Q */
    private void m31007Q(C1489a<View, C1175y> c1489a, C1489a<View, C1175y> c1489a2, SparseArray<View> sparseArray, SparseArray<View> sparseArray2) {
        View view;
        int size = sparseArray.size();
        for (int i = 0; i < size; i++) {
            View valueAt = sparseArray.valueAt(i);
            if (valueAt != null && m31009N(valueAt) && (view = sparseArray2.get(sparseArray.keyAt(i))) != null && m31009N(view)) {
                C1175y c1175y = c1489a.get(valueAt);
                C1175y c1175y2 = c1489a2.get(view);
                if (c1175y != null && c1175y2 != null) {
                    this.f4843z.add(c1175y);
                    this.f4811A.add(c1175y2);
                    c1489a.remove(valueAt);
                    c1489a2.remove(view);
                }
            }
        }
    }

    /* renamed from: R */
    private void m31006R(C1489a<View, C1175y> c1489a, C1489a<View, C1175y> c1489a2) {
        C1175y remove;
        for (int size = c1489a.size() - 1; size >= 0; size--) {
            View m29910i = c1489a.m29910i(size);
            if (m29910i != null && m31009N(m29910i) && (remove = c1489a2.remove(m29910i)) != null && m31009N(remove.f4996b)) {
                this.f4843z.add(c1489a.mo22746k(size));
                this.f4811A.add(remove);
            }
        }
    }

    /* renamed from: S */
    private void m31005S(C1489a<View, C1175y> c1489a, C1489a<View, C1175y> c1489a2, C1494d<View> c1494d, C1494d<View> c1494d2) {
        View m29954g;
        int m29947o = c1494d.m29947o();
        for (int i = 0; i < m29947o; i++) {
            View m29946p = c1494d.m29946p(i);
            if (m29946p != null && m31009N(m29946p) && (m29954g = c1494d2.m29954g(c1494d.m29951j(i))) != null && m31009N(m29954g)) {
                C1175y c1175y = c1489a.get(m29946p);
                C1175y c1175y2 = c1489a2.get(m29954g);
                if (c1175y != null && c1175y2 != null) {
                    this.f4843z.add(c1175y);
                    this.f4811A.add(c1175y2);
                    c1489a.remove(m29946p);
                    c1489a2.remove(m29954g);
                }
            }
        }
    }

    /* renamed from: T */
    private void m31004T(C1489a<View, C1175y> c1489a, C1489a<View, C1175y> c1489a2, C1489a<String, View> c1489a3, C1489a<String, View> c1489a4) {
        View view;
        int size = c1489a3.size();
        for (int i = 0; i < size; i++) {
            View m29909m = c1489a3.m29909m(i);
            if (m29909m != null && m31009N(m29909m) && (view = c1489a4.get(c1489a3.m29910i(i))) != null && m31009N(view)) {
                C1175y c1175y = c1489a.get(m29909m);
                C1175y c1175y2 = c1489a2.get(view);
                if (c1175y != null && c1175y2 != null) {
                    this.f4843z.add(c1175y);
                    this.f4811A.add(c1175y2);
                    c1489a.remove(m29909m);
                    c1489a2.remove(view);
                }
            }
        }
    }

    /* renamed from: U */
    private void m31003U(C1176z c1176z, C1176z c1176z2) {
        C1489a<View, C1175y> c1489a = new C1489a<>(c1176z.f4998a);
        C1489a<View, C1175y> c1489a2 = new C1489a<>(c1176z2.f4998a);
        int i = 0;
        while (true) {
            int[] iArr = this.f4842y;
            if (i >= iArr.length) {
                m30999c(c1489a, c1489a2);
                return;
            }
            int i2 = iArr[i];
            if (i2 == 1) {
                m31006R(c1489a, c1489a2);
            } else if (i2 == 2) {
                m31004T(c1489a, c1489a2, c1176z.f5001d, c1176z2.f5001d);
            } else if (i2 == 3) {
                m31007Q(c1489a, c1489a2, c1176z.f4999b, c1176z2.f4999b);
            } else if (i2 == 4) {
                m31005S(c1489a, c1489a2, c1176z.f5000c, c1176z2.f5000c);
            }
            i++;
        }
    }

    /* renamed from: V */
    private static int[] m31002V(String str) {
        StringTokenizer stringTokenizer = new StringTokenizer(str, ",");
        int[] iArr = new int[stringTokenizer.countTokens()];
        int i = 0;
        while (stringTokenizer.hasMoreTokens()) {
            String trim = stringTokenizer.nextToken().trim();
            if ("id".equalsIgnoreCase(trim)) {
                iArr[i] = 3;
            } else if ("instance".equalsIgnoreCase(trim)) {
                iArr[i] = 1;
            } else if (ShortCut.NAME.equalsIgnoreCase(trim)) {
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

    /* renamed from: b0 */
    private void m31000b0(Animator animator, C1489a<Animator, C1108d> c1489a) {
        if (animator != null) {
            animator.addListener(new C1106b(c1489a));
            m30995h(animator);
        }
    }

    /* renamed from: c */
    private void m30999c(C1489a<View, C1175y> c1489a, C1489a<View, C1175y> c1489a2) {
        int i;
        int i2 = 0;
        while (true) {
            if (i2 < c1489a.size()) {
                C1175y m29909m = c1489a.m29909m(i2);
                if (m31009N(m29909m.f4996b)) {
                    this.f4843z.add(m29909m);
                    this.f4811A.add(null);
                }
                i2++;
            }
        }
        for (i = 0; i < c1489a2.size(); i++) {
            C1175y m29909m2 = c1489a2.m29909m(i);
            if (m31009N(m29909m2.f4996b)) {
                this.f4811A.add(m29909m2);
                this.f4843z.add(null);
            }
        }
    }

    /* renamed from: d */
    private static void m30998d(C1176z c1176z, View view, C1175y c1175y) {
        c1176z.f4998a.put(view, c1175y);
        int id = view.getId();
        if (id >= 0) {
            if (c1176z.f4999b.indexOfKey(id) >= 0) {
                c1176z.f4999b.put(id, null);
            } else {
                c1176z.f4999b.put(id, view);
            }
        }
        String m29326M = C1679w.m29326M(view);
        if (m29326M != null) {
            if (c1176z.f5001d.containsKey(m29326M)) {
                c1176z.f5001d.put(m29326M, null);
            } else {
                c1176z.f5001d.put(m29326M, view);
            }
        }
        if (view.getParent() instanceof ListView) {
            ListView listView = (ListView) view.getParent();
            if (!listView.getAdapter().hasStableIds()) {
                return;
            }
            long itemIdAtPosition = listView.getItemIdAtPosition(listView.getPositionForView(view));
            if (c1176z.f5000c.m29952i(itemIdAtPosition) < 0) {
                C1679w.m29349A0(view, true);
                c1176z.f5000c.m29950l(itemIdAtPosition, view);
                return;
            }
            View m29954g = c1176z.f5000c.m29954g(itemIdAtPosition);
            if (m29954g == null) {
                return;
            }
            C1679w.m29349A0(m29954g, false);
            c1176z.f5000c.m29950l(itemIdAtPosition, null);
        }
    }

    /* renamed from: g */
    private static boolean m30997g(int[] iArr, int i) {
        int i2 = iArr[i];
        for (int i3 = 0; i3 < i; i3++) {
            if (iArr[i3] == i2) {
                return true;
            }
        }
        return false;
    }

    /* renamed from: j */
    private void m30994j(View view, boolean z) {
        if (view == null) {
            return;
        }
        int id = view.getId();
        ArrayList<Integer> arrayList = this.f4832o;
        if (arrayList != null && arrayList.contains(Integer.valueOf(id))) {
            return;
        }
        ArrayList<View> arrayList2 = this.f4833p;
        if (arrayList2 != null && arrayList2.contains(view)) {
            return;
        }
        ArrayList<Class<?>> arrayList3 = this.f4834q;
        if (arrayList3 != null) {
            int size = arrayList3.size();
            for (int i = 0; i < size; i++) {
                if (this.f4834q.get(i).isInstance(view)) {
                    return;
                }
            }
        }
        if (view.getParent() instanceof ViewGroup) {
            C1175y c1175y = new C1175y(view);
            if (z) {
                mo4472m(c1175y);
            } else {
                mo4473i(c1175y);
            }
            c1175y.f4997c.add(this);
            mo30970l(c1175y);
            if (z) {
                m30998d(this.f4839v, view, c1175y);
            } else {
                m30998d(this.f4840w, view, c1175y);
            }
        }
        if (!(view instanceof ViewGroup)) {
            return;
        }
        ArrayList<Integer> arrayList4 = this.f4836s;
        if (arrayList4 != null && arrayList4.contains(Integer.valueOf(id))) {
            return;
        }
        ArrayList<View> arrayList5 = this.f4837t;
        if (arrayList5 != null && arrayList5.contains(view)) {
            return;
        }
        ArrayList<Class<?>> arrayList6 = this.f4838u;
        if (arrayList6 != null) {
            int size2 = arrayList6.size();
            for (int i2 = 0; i2 < size2; i2++) {
                if (this.f4838u.get(i2).isInstance(view)) {
                    return;
                }
            }
        }
        ViewGroup viewGroup = (ViewGroup) view;
        for (int i3 = 0; i3 < viewGroup.getChildCount(); i3++) {
            m30994j(viewGroup.getChildAt(i3), z);
        }
    }

    /* renamed from: A */
    public String m31020A() {
        return this.f4824g;
    }

    /* renamed from: B */
    public PathMotion m31019B() {
        return this.f4823M;
    }

    /* renamed from: C */
    public AbstractC1172w m31018C() {
        return this.f4820J;
    }

    /* renamed from: E */
    public long m31016E() {
        return this.f4825h;
    }

    /* renamed from: F */
    public List<Integer> m31015F() {
        return this.f4828k;
    }

    /* renamed from: G */
    public List<String> m31014G() {
        return this.f4830m;
    }

    /* renamed from: H */
    public List<Class<?>> m31013H() {
        return this.f4831n;
    }

    /* renamed from: I */
    public List<View> m31012I() {
        return this.f4829l;
    }

    /* renamed from: J */
    public String[] mo30953J() {
        return null;
    }

    /* renamed from: K */
    public C1175y m31011K(View view, boolean z) {
        TransitionSet transitionSet = this.f4841x;
        if (transitionSet != null) {
            return transitionSet.m31011K(view, z);
        }
        return (z ? this.f4839v : this.f4840w).f4998a.get(view);
    }

    /* renamed from: L */
    public boolean mo30952L(C1175y c1175y, C1175y c1175y2) {
        boolean z = false;
        if (c1175y != null) {
            z = false;
            if (c1175y2 != null) {
                String[] mo30953J = mo30953J();
                if (mo30953J != null) {
                    int length = mo30953J.length;
                    int i = 0;
                    while (true) {
                        z = false;
                        if (i >= length) {
                            break;
                        } else if (m31008O(c1175y, c1175y2, mo30953J[i])) {
                            break;
                        } else {
                            i++;
                        }
                    }
                } else {
                    Iterator<String> it = c1175y.f4995a.keySet().iterator();
                    do {
                        z = false;
                        if (!it.hasNext()) {
                            break;
                        }
                    } while (!m31008O(c1175y, c1175y2, it.next()));
                    z = true;
                }
            }
        }
        return z;
    }

    /* renamed from: N */
    public boolean m31009N(View view) {
        ArrayList<Class<?>> arrayList;
        ArrayList<String> arrayList2;
        int id = view.getId();
        ArrayList<Integer> arrayList3 = this.f4832o;
        if (arrayList3 == null || !arrayList3.contains(Integer.valueOf(id))) {
            ArrayList<View> arrayList4 = this.f4833p;
            if (arrayList4 != null && arrayList4.contains(view)) {
                return false;
            }
            ArrayList<Class<?>> arrayList5 = this.f4834q;
            if (arrayList5 != null) {
                int size = arrayList5.size();
                for (int i = 0; i < size; i++) {
                    if (this.f4834q.get(i).isInstance(view)) {
                        return false;
                    }
                }
            }
            if (this.f4835r != null && C1679w.m29326M(view) != null && this.f4835r.contains(C1679w.m29326M(view))) {
                return false;
            }
            if ((this.f4828k.size() == 0 && this.f4829l.size() == 0 && (((arrayList = this.f4831n) == null || arrayList.isEmpty()) && ((arrayList2 = this.f4830m) == null || arrayList2.isEmpty()))) || this.f4828k.contains(Integer.valueOf(id)) || this.f4829l.contains(view)) {
                return true;
            }
            ArrayList<String> arrayList6 = this.f4830m;
            if (arrayList6 != null && arrayList6.contains(C1679w.m29326M(view))) {
                return true;
            }
            if (this.f4831n == null) {
                return false;
            }
            for (int i2 = 0; i2 < this.f4831n.size(); i2++) {
                if (this.f4831n.get(i2).isInstance(view)) {
                    return true;
                }
            }
            return false;
        }
        return false;
    }

    /* renamed from: W */
    public void mo30983W(View view) {
        if (!this.f4817G) {
            C1489a<Animator, C1108d> m31017D = m31017D();
            int size = m31017D.size();
            AbstractC1167t0 m30871d = C1144j0.m30871d(view);
            while (true) {
                size--;
                if (size < 0) {
                    break;
                }
                C1108d m29909m = m31017D.m29909m(size);
                if (m29909m.f4847a != null && m30871d.equals(m29909m.f4850d)) {
                    C1116a.m30940b(m31017D.m29910i(size));
                }
            }
            ArrayList<AbstractC1110f> arrayList = this.f4818H;
            if (arrayList != null && arrayList.size() > 0) {
                ArrayList arrayList2 = (ArrayList) this.f4818H.clone();
                int size2 = arrayList2.size();
                for (int i = 0; i < size2; i++) {
                    ((AbstractC1110f) arrayList2.get(i)).mo30829b(this);
                }
            }
            this.f4816F = true;
        }
    }

    /* renamed from: X */
    public void m31001X(ViewGroup viewGroup) {
        C1108d c1108d;
        this.f4843z = new ArrayList<>();
        this.f4811A = new ArrayList<>();
        m31003U(this.f4839v, this.f4840w);
        C1489a<Animator, C1108d> m31017D = m31017D();
        int size = m31017D.size();
        AbstractC1167t0 m30871d = C1144j0.m30871d(viewGroup);
        while (true) {
            size--;
            if (size < 0) {
                mo30962r(viewGroup, this.f4839v, this.f4840w, this.f4843z, this.f4811A);
                mo30977c0();
                return;
            }
            Animator m29910i = m31017D.m29910i(size);
            if (m29910i != null && (c1108d = m31017D.get(m29910i)) != null && c1108d.f4847a != null && m30871d.equals(c1108d.f4850d)) {
                C1175y c1175y = c1108d.f4849c;
                View view = c1108d.f4847a;
                C1175y m31011K = m31011K(view, true);
                C1175y m30985y = m30985y(view, true);
                C1175y c1175y2 = m30985y;
                if (m31011K == null) {
                    c1175y2 = m30985y;
                    if (m30985y == null) {
                        c1175y2 = this.f4840w.f4998a.get(view);
                    }
                }
                if (!(m31011K == null && c1175y2 == null) && c1108d.f4851e.mo30952L(c1175y, c1175y2)) {
                    if (m29910i.isRunning() || m29910i.isStarted()) {
                        m29910i.cancel();
                    } else {
                        m31017D.remove(m29910i);
                    }
                }
            }
        }
    }

    /* renamed from: Y */
    public Transition mo30982Y(AbstractC1110f abstractC1110f) {
        ArrayList<AbstractC1110f> arrayList = this.f4818H;
        if (arrayList == null) {
            return this;
        }
        arrayList.remove(abstractC1110f);
        if (this.f4818H.size() == 0) {
            this.f4818H = null;
        }
        return this;
    }

    /* renamed from: Z */
    public Transition mo30981Z(View view) {
        this.f4829l.remove(view);
        return this;
    }

    /* renamed from: a */
    public Transition mo30980a(AbstractC1110f abstractC1110f) {
        if (this.f4818H == null) {
            this.f4818H = new ArrayList<>();
        }
        this.f4818H.add(abstractC1110f);
        return this;
    }

    /* renamed from: a0 */
    public void mo30979a0(View view) {
        if (this.f4816F) {
            if (!this.f4817G) {
                C1489a<Animator, C1108d> m31017D = m31017D();
                int size = m31017D.size();
                AbstractC1167t0 m30871d = C1144j0.m30871d(view);
                while (true) {
                    size--;
                    if (size < 0) {
                        break;
                    }
                    C1108d m29909m = m31017D.m29909m(size);
                    if (m29909m.f4847a != null && m30871d.equals(m29909m.f4850d)) {
                        C1116a.m30939c(m31017D.m29910i(size));
                    }
                }
                ArrayList<AbstractC1110f> arrayList = this.f4818H;
                if (arrayList != null && arrayList.size() > 0) {
                    ArrayList arrayList2 = (ArrayList) this.f4818H.clone();
                    int size2 = arrayList2.size();
                    for (int i = 0; i < size2; i++) {
                        ((AbstractC1110f) arrayList2.get(i)).mo30827e(this);
                    }
                }
            }
            this.f4816F = false;
        }
    }

    /* renamed from: b */
    public Transition mo30978b(View view) {
        this.f4829l.add(view);
        return this;
    }

    /* renamed from: c0 */
    public void mo30977c0() {
        m30993k0();
        C1489a<Animator, C1108d> m31017D = m31017D();
        Iterator<Animator> it = this.f4819I.iterator();
        while (it.hasNext()) {
            Animator next = it.next();
            if (m31017D.containsKey(next)) {
                m30993k0();
                m31000b0(next, m31017D);
            }
        }
        this.f4819I.clear();
        m30990s();
    }

    public void cancel() {
        for (int size = this.f4814D.size() - 1; size >= 0; size--) {
            this.f4814D.get(size).cancel();
        }
        ArrayList<AbstractC1110f> arrayList = this.f4818H;
        if (arrayList == null || arrayList.size() <= 0) {
            return;
        }
        ArrayList arrayList2 = (ArrayList) this.f4818H.clone();
        int size2 = arrayList2.size();
        for (int i = 0; i < size2; i++) {
            ((AbstractC1110f) arrayList2.get(i)).mo30828d(this);
        }
    }

    /* renamed from: d0 */
    public Transition mo30976d0(long j) {
        this.f4826i = j;
        return this;
    }

    /* renamed from: e0 */
    public void mo30975e0(AbstractC1109e abstractC1109e) {
        this.f4821K = abstractC1109e;
    }

    /* renamed from: f0 */
    public Transition mo30974f0(TimeInterpolator timeInterpolator) {
        this.f4827j = timeInterpolator;
        return this;
    }

    /* renamed from: g0 */
    public void m30996g0(int... iArr) {
        if (iArr == null || iArr.length == 0) {
            this.f4842y = f4808d;
            return;
        }
        for (int i = 0; i < iArr.length; i++) {
            if (!m31010M(iArr[i])) {
                throw new IllegalArgumentException("matches contains invalid value");
            }
            if (m30997g(iArr, i)) {
                throw new IllegalArgumentException("matches contains a duplicate value");
            }
        }
        this.f4842y = (int[]) iArr.clone();
    }

    /* renamed from: h */
    protected void m30995h(Animator animator) {
        if (animator == null) {
            m30990s();
            return;
        }
        if (m30989t() >= 0) {
            animator.setDuration(m30989t());
        }
        if (m31016E() >= 0) {
            animator.setStartDelay(m31016E() + animator.getStartDelay());
        }
        if (m30986x() != null) {
            animator.setInterpolator(m30986x());
        }
        animator.addListener(new C1107c());
        animator.start();
    }

    /* renamed from: h0 */
    public void mo30973h0(PathMotion pathMotion) {
        if (pathMotion == null) {
            this.f4823M = f4809e;
        } else {
            this.f4823M = pathMotion;
        }
    }

    /* renamed from: i */
    public abstract void mo4473i(C1175y c1175y);

    /* renamed from: i0 */
    public void mo30972i0(AbstractC1172w abstractC1172w) {
        this.f4820J = abstractC1172w;
    }

    /* renamed from: j0 */
    public Transition mo30971j0(long j) {
        this.f4825h = j;
        return this;
    }

    /* renamed from: k0 */
    public void m30993k0() {
        if (this.f4815E == 0) {
            ArrayList<AbstractC1110f> arrayList = this.f4818H;
            if (arrayList != null && arrayList.size() > 0) {
                ArrayList arrayList2 = (ArrayList) this.f4818H.clone();
                int size = arrayList2.size();
                for (int i = 0; i < size; i++) {
                    ((AbstractC1110f) arrayList2.get(i)).mo30830a(this);
                }
            }
            this.f4817G = false;
        }
        this.f4815E++;
    }

    /* renamed from: l */
    public void mo30970l(C1175y c1175y) {
        String[] mo30819b;
        boolean z;
        if (this.f4820J == null || c1175y.f4995a.isEmpty() || (mo30819b = this.f4820J.mo30819b()) == null) {
            return;
        }
        int i = 0;
        while (true) {
            if (i >= mo30819b.length) {
                z = true;
                break;
            } else if (!c1175y.f4995a.containsKey(mo30819b[i])) {
                z = false;
                break;
            } else {
                i++;
            }
        }
        if (z) {
            return;
        }
        this.f4820J.mo30820a(c1175y);
    }

    /* JADX WARN: Code restructure failed: missing block: B:14:0x00f5, code lost:
        if (r5.f4829l.size() > 0) goto L15;
     */
    /* renamed from: l0 */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public java.lang.String mo30969l0(java.lang.String r6) {
        /*
            Method dump skipped, instructions count: 511
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.transition.Transition.mo30969l0(java.lang.String):java.lang.String");
    }

    /* renamed from: m */
    public abstract void mo4472m(C1175y c1175y);

    /* renamed from: n */
    public void m30992n(ViewGroup viewGroup, boolean z) {
        C1489a<String, String> c1489a;
        int i;
        ArrayList<String> arrayList;
        ArrayList<Class<?>> arrayList2;
        m30991o(z);
        if ((this.f4828k.size() > 0 || this.f4829l.size() > 0) && (((arrayList = this.f4830m) == null || arrayList.isEmpty()) && ((arrayList2 = this.f4831n) == null || arrayList2.isEmpty()))) {
            for (int i2 = 0; i2 < this.f4828k.size(); i2++) {
                View findViewById = viewGroup.findViewById(this.f4828k.get(i2).intValue());
                if (findViewById != null) {
                    C1175y c1175y = new C1175y(findViewById);
                    if (z) {
                        mo4472m(c1175y);
                    } else {
                        mo4473i(c1175y);
                    }
                    c1175y.f4997c.add(this);
                    mo30970l(c1175y);
                    if (z) {
                        m30998d(this.f4839v, findViewById, c1175y);
                    } else {
                        m30998d(this.f4840w, findViewById, c1175y);
                    }
                }
            }
            for (int i3 = 0; i3 < this.f4829l.size(); i3++) {
                View view = this.f4829l.get(i3);
                C1175y c1175y2 = new C1175y(view);
                if (z) {
                    mo4472m(c1175y2);
                } else {
                    mo4473i(c1175y2);
                }
                c1175y2.f4997c.add(this);
                mo30970l(c1175y2);
                if (z) {
                    m30998d(this.f4839v, view, c1175y2);
                } else {
                    m30998d(this.f4840w, view, c1175y2);
                }
            }
        } else {
            m30994j(viewGroup, z);
        }
        if (z || (c1489a = this.f4822L) == null) {
            return;
        }
        int size = c1489a.size();
        ArrayList arrayList3 = new ArrayList(size);
        int i4 = 0;
        while (true) {
            if (i4 < size) {
                arrayList3.add(this.f4839v.f5001d.remove(this.f4822L.m29910i(i4)));
                i4++;
            }
        }
        for (i = 0; i < size; i++) {
            View view2 = (View) arrayList3.get(i);
            if (view2 != null) {
                this.f4839v.f5001d.put(this.f4822L.m29909m(i), view2);
            }
        }
    }

    /* renamed from: o */
    public void m30991o(boolean z) {
        if (z) {
            this.f4839v.f4998a.clear();
            this.f4839v.f4999b.clear();
            this.f4839v.f5000c.m29957b();
            return;
        }
        this.f4840w.f4998a.clear();
        this.f4840w.f4999b.clear();
        this.f4840w.f5000c.m29957b();
    }

    /* renamed from: p */
    public Transition clone() {
        try {
            Transition transition = (Transition) super.clone();
            transition.f4819I = new ArrayList<>();
            transition.f4839v = new C1176z();
            transition.f4840w = new C1176z();
            transition.f4843z = null;
            transition.f4811A = null;
            return transition;
        } catch (CloneNotSupportedException e) {
            return null;
        }
    }

    /* renamed from: q */
    public Animator mo4470q(ViewGroup viewGroup, C1175y c1175y, C1175y c1175y2) {
        return null;
    }

    /* JADX WARN: Type inference failed for: r0v55, types: [long] */
    /* renamed from: r */
    public void mo30962r(ViewGroup viewGroup, C1176z c1176z, C1176z c1176z2, ArrayList<C1175y> arrayList, ArrayList<C1175y> arrayList2) {
        int i;
        char c;
        View view;
        C1175y c1175y;
        C1489a<Animator, C1108d> m31017D = m31017D();
        SparseIntArray sparseIntArray = new SparseIntArray();
        int size = arrayList.size();
        char c2 = 65535;
        int i2 = 0;
        while (i2 < size) {
            C1175y c1175y2 = arrayList.get(i2);
            C1175y c1175y3 = arrayList2.get(i2);
            C1175y c1175y4 = c1175y2;
            if (c1175y2 != null) {
                c1175y4 = c1175y2;
                if (!c1175y2.f4997c.contains(this)) {
                    c1175y4 = null;
                }
            }
            C1175y c1175y5 = c1175y3;
            if (c1175y3 != null) {
                c1175y5 = c1175y3;
                if (!c1175y3.f4997c.contains(this)) {
                    c1175y5 = null;
                }
            }
            if (c1175y4 != null || c1175y5 != null) {
                if (c1175y4 == null || c1175y5 == null || mo30952L(c1175y4, c1175y5)) {
                    Animator mo4470q = mo4470q(viewGroup, c1175y4, c1175y5);
                    if (mo4470q != null) {
                        if (c1175y5 != null) {
                            view = c1175y5.f4996b;
                            String[] mo30953J = mo30953J();
                            if (mo30953J != null && mo30953J.length > 0) {
                                C1175y c1175y6 = new C1175y(view);
                                C1175y c1175y7 = c1176z2.f4998a.get(view);
                                int i3 = i2;
                                if (c1175y7 != null) {
                                    int i4 = 0;
                                    while (true) {
                                        i3 = i2;
                                        if (i4 >= mo30953J.length) {
                                            break;
                                        }
                                        c1175y6.f4995a.put(mo30953J[i4], c1175y7.f4995a.get(mo30953J[i4]));
                                        i4++;
                                    }
                                }
                                i2 = i3;
                                int size2 = m31017D.size();
                                int i5 = 0;
                                while (true) {
                                    if (i5 >= size2) {
                                        c1175y = c1175y6;
                                        break;
                                    }
                                    C1108d c1108d = m31017D.get(m31017D.m29910i(i5));
                                    if (c1108d.f4849c != null && c1108d.f4847a == view && c1108d.f4848b.equals(m31020A()) && c1108d.f4849c.equals(c1175y6)) {
                                        mo4470q = null;
                                        c1175y = c1175y6;
                                        break;
                                    }
                                    i5++;
                                }
                            } else {
                                c1175y = null;
                            }
                        } else {
                            view = c1175y4.f4996b;
                            c1175y = null;
                        }
                        c = c2;
                        i = i2;
                        if (mo4470q != null) {
                            AbstractC1172w abstractC1172w = this.f4820J;
                            c = c2;
                            if (abstractC1172w != null) {
                                long mo30818c = abstractC1172w.mo30818c(viewGroup, this, c1175y4, c1175y5);
                                sparseIntArray.put(this.f4819I.size(), (int) mo30818c);
                                c = Math.min(mo30818c, (long) c2);
                            }
                            m31017D.put(mo4470q, new C1108d(view, m31020A(), this, C1144j0.m30871d(viewGroup), c1175y));
                            this.f4819I.add(mo4470q);
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
                Animator animator = this.f4819I.get(sparseIntArray.keyAt(i6));
                animator.setStartDelay((sparseIntArray.valueAt(i6) - c2) + animator.getStartDelay());
            }
        }
    }

    /* renamed from: s */
    public void m30990s() {
        int i = this.f4815E - 1;
        this.f4815E = i;
        if (i == 0) {
            ArrayList<AbstractC1110f> arrayList = this.f4818H;
            if (arrayList != null && arrayList.size() > 0) {
                ArrayList arrayList2 = (ArrayList) this.f4818H.clone();
                int size = arrayList2.size();
                for (int i2 = 0; i2 < size; i2++) {
                    ((AbstractC1110f) arrayList2.get(i2)).mo30821c(this);
                }
            }
            for (int i3 = 0; i3 < this.f4839v.f5000c.m29947o(); i3++) {
                View m29946p = this.f4839v.f5000c.m29946p(i3);
                if (m29946p != null) {
                    C1679w.m29349A0(m29946p, false);
                }
            }
            for (int i4 = 0; i4 < this.f4840w.f5000c.m29947o(); i4++) {
                View m29946p2 = this.f4840w.f5000c.m29946p(i4);
                if (m29946p2 != null) {
                    C1679w.m29349A0(m29946p2, false);
                }
            }
            this.f4817G = true;
        }
    }

    /* renamed from: t */
    public long m30989t() {
        return this.f4826i;
    }

    public String toString() {
        return mo30969l0("");
    }

    /* renamed from: v */
    public Rect m30988v() {
        AbstractC1109e abstractC1109e = this.f4821K;
        if (abstractC1109e == null) {
            return null;
        }
        return abstractC1109e.mo30914a(this);
    }

    /* renamed from: w */
    public AbstractC1109e m30987w() {
        return this.f4821K;
    }

    /* renamed from: x */
    public TimeInterpolator m30986x() {
        return this.f4827j;
    }

    /* renamed from: y */
    public C1175y m30985y(View view, boolean z) {
        int i;
        TransitionSet transitionSet = this.f4841x;
        if (transitionSet != null) {
            return transitionSet.m30985y(view, z);
        }
        ArrayList<C1175y> arrayList = z ? this.f4843z : this.f4811A;
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
            C1175y c1175y = arrayList.get(i2);
            if (c1175y == null) {
                return null;
            }
            if (c1175y.f4996b == view) {
                i = i2;
                break;
            }
            i2++;
        }
        C1175y c1175y2 = null;
        if (i >= 0) {
            c1175y2 = (z ? this.f4811A : this.f4843z).get(i);
        }
        return c1175y2;
    }
}

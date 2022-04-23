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
import android.view.InflateException;
import android.view.View;
import android.view.ViewGroup;
import android.view.animation.AnimationUtils;
import android.widget.ListView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.RestrictTo;
import androidx.collection.ArrayMap;
import androidx.collection.LongSparseArray;
import androidx.core.content.res.TypedArrayUtils;
import androidx.core.view.ViewCompat;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.StringTokenizer;
import org.simpleframework.xml.strategy.Name;
/* loaded from: classes-dex2jar.jar:androidx/transition/Transition.class */
public abstract class Transition implements Cloneable {

    /* renamed from: L */
    private static final int[] f5208L = {2, 1, 3, 4};

    /* renamed from: M */
    private static final PathMotion f5209M = new PathMotion() { // from class: androidx.transition.Transition.1
        @Override // androidx.transition.PathMotion
        /* renamed from: a */
        public Path mo8631a(float f, float f2, float f3, float f4) {
            Path path = new Path();
            path.moveTo(f, f2);
            path.lineTo(f3, f4);
            return path;
        }
    };

    /* renamed from: N */
    private static ThreadLocal<ArrayMap<Animator, AnimationInfo>> f5210N = new ThreadLocal<>();

    /* renamed from: H */
    TransitionPropagation f5218H;

    /* renamed from: I */
    private EpicenterCallback f5219I;

    /* renamed from: J */
    private ArrayMap<String, String> f5220J;

    /* renamed from: y */
    private ArrayList<TransitionValues> f5241y;

    /* renamed from: z */
    private ArrayList<TransitionValues> f5242z;

    /* renamed from: f */
    private String f5222f = getClass().getName();

    /* renamed from: g */
    private long f5223g = -1;

    /* renamed from: h */
    long f5224h = -1;

    /* renamed from: i */
    private TimeInterpolator f5225i = null;

    /* renamed from: j */
    ArrayList<Integer> f5226j = new ArrayList<>();

    /* renamed from: k */
    ArrayList<View> f5227k = new ArrayList<>();

    /* renamed from: l */
    private ArrayList<String> f5228l = null;

    /* renamed from: m */
    private ArrayList<Class<?>> f5229m = null;

    /* renamed from: n */
    private ArrayList<Integer> f5230n = null;

    /* renamed from: o */
    private ArrayList<View> f5231o = null;

    /* renamed from: p */
    private ArrayList<Class<?>> f5232p = null;

    /* renamed from: q */
    private ArrayList<String> f5233q = null;

    /* renamed from: r */
    private ArrayList<Integer> f5234r = null;

    /* renamed from: s */
    private ArrayList<View> f5235s = null;

    /* renamed from: t */
    private ArrayList<Class<?>> f5236t = null;

    /* renamed from: u */
    private TransitionValuesMaps f5237u = new TransitionValuesMaps();

    /* renamed from: v */
    private TransitionValuesMaps f5238v = new TransitionValuesMaps();

    /* renamed from: w */
    TransitionSet f5239w = null;

    /* renamed from: x */
    private int[] f5240x = f5208L;

    /* renamed from: A */
    boolean f5211A = false;

    /* renamed from: B */
    ArrayList<Animator> f5212B = new ArrayList<>();

    /* renamed from: C */
    private int f5213C = 0;

    /* renamed from: D */
    private boolean f5214D = false;

    /* renamed from: E */
    private boolean f5215E = false;

    /* renamed from: F */
    private ArrayList<TransitionListener> f5216F = null;

    /* renamed from: G */
    private ArrayList<Animator> f5217G = new ArrayList<>();

    /* renamed from: K */
    private PathMotion f5221K = f5209M;

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes-dex2jar.jar:androidx/transition/Transition$AnimationInfo.class */
    public static class AnimationInfo {

        /* renamed from: a */
        View f5246a;

        /* renamed from: b */
        String f5247b;

        /* renamed from: c */
        TransitionValues f5248c;

        /* renamed from: d */
        WindowIdImpl f5249d;

        /* renamed from: e */
        Transition f5250e;

        AnimationInfo(View view, String str, Transition transition, WindowIdImpl windowIdImpl, TransitionValues transitionValues) {
            this.f5246a = view;
            this.f5247b = str;
            this.f5248c = transitionValues;
            this.f5249d = windowIdImpl;
            this.f5250e = transition;
        }
    }

    /* loaded from: classes-dex2jar.jar:androidx/transition/Transition$ArrayListManager.class */
    private static class ArrayListManager {
        private ArrayListManager() {
        }
    }

    /* loaded from: classes-dex2jar.jar:androidx/transition/Transition$EpicenterCallback.class */
    public static abstract class EpicenterCallback {
        /* renamed from: a */
        public abstract Rect mo16753a(@NonNull Transition transition);
    }

    @Retention(RetentionPolicy.SOURCE)
    @RestrictTo
    /* loaded from: classes-dex2jar.jar:androidx/transition/Transition$MatchOrder.class */
    public @interface MatchOrder {
    }

    /* loaded from: classes-dex2jar.jar:androidx/transition/Transition$TransitionListener.class */
    public interface TransitionListener {
        /* renamed from: a */
        void mo8575a(@NonNull Transition transition);

        /* renamed from: b */
        void mo8574b(@NonNull Transition transition);

        /* renamed from: c */
        void mo8573c(@NonNull Transition transition);

        /* renamed from: d */
        void mo8572d(@NonNull Transition transition);

        /* renamed from: e */
        void mo8571e(@NonNull Transition transition);
    }

    public Transition() {
    }

    @SuppressLint({"RestrictedApi"})
    public Transition(Context context, AttributeSet attributeSet) {
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, Styleable.f5199a);
        XmlResourceParser xmlResourceParser = (XmlResourceParser) attributeSet;
        long g = TypedArrayUtils.m19596g(obtainStyledAttributes, xmlResourceParser, "duration", 1, -1);
        if (g >= 0) {
            mo16737f0(g);
        }
        long g2 = TypedArrayUtils.m19596g(obtainStyledAttributes, xmlResourceParser, "startDelay", 2, -1);
        if (g2 > 0) {
            mo16731m0(g2);
        }
        int h = TypedArrayUtils.m19595h(obtainStyledAttributes, xmlResourceParser, "interpolator", 0, 0);
        if (h > 0) {
            mo16735h0(AnimationUtils.loadInterpolator(context, h));
        }
        String i = TypedArrayUtils.m19594i(obtainStyledAttributes, xmlResourceParser, "matchOrder", 3);
        if (i != null) {
            m16766i0(m16773U(i));
        }
        obtainStyledAttributes.recycle();
    }

    /* renamed from: C */
    private static ArrayMap<Animator, AnimationInfo> m16788C() {
        ArrayMap<Animator, AnimationInfo> arrayMap = f5210N.get();
        ArrayMap<Animator, AnimationInfo> arrayMap2 = arrayMap;
        if (arrayMap == null) {
            arrayMap2 = new ArrayMap<>();
            f5210N.set(arrayMap2);
        }
        return arrayMap2;
    }

    /* renamed from: M */
    private static boolean m16781M(int i) {
        boolean z = true;
        if (i < 1 || i > 4) {
            z = false;
        }
        return z;
    }

    /* renamed from: O */
    private static boolean m16779O(TransitionValues transitionValues, TransitionValues transitionValues2, String str) {
        boolean z;
        Object obj = transitionValues.f5271a.get(str);
        Object obj2 = transitionValues2.f5271a.get(str);
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

    /* renamed from: P */
    private void m16778P(ArrayMap<View, TransitionValues> arrayMap, ArrayMap<View, TransitionValues> arrayMap2, SparseArray<View> sparseArray, SparseArray<View> sparseArray2) {
        View view;
        int size = sparseArray.size();
        for (int i = 0; i < size; i++) {
            View valueAt = sparseArray.valueAt(i);
            if (valueAt != null && m16780N(valueAt) && (view = sparseArray2.get(sparseArray.keyAt(i))) != null && m16780N(view)) {
                TransitionValues transitionValues = arrayMap.get(valueAt);
                TransitionValues transitionValues2 = arrayMap2.get(view);
                if (!(transitionValues == null || transitionValues2 == null)) {
                    this.f5241y.add(transitionValues);
                    this.f5242z.add(transitionValues2);
                    arrayMap.remove(valueAt);
                    arrayMap2.remove(view);
                }
            }
        }
    }

    /* renamed from: Q */
    private void m16777Q(ArrayMap<View, TransitionValues> arrayMap, ArrayMap<View, TransitionValues> arrayMap2) {
        TransitionValues remove;
        for (int size = arrayMap.size() - 1; size >= 0; size--) {
            View k = arrayMap.m21007k(size);
            if (k != null && m16780N(k) && (remove = arrayMap2.remove(k)) != null && m16780N(remove.f5272b)) {
                this.f5241y.add(arrayMap.mo18659m(size));
                this.f5242z.add(remove);
            }
        }
    }

    /* renamed from: R */
    private void m16776R(ArrayMap<View, TransitionValues> arrayMap, ArrayMap<View, TransitionValues> arrayMap2, LongSparseArray<View> longSparseArray, LongSparseArray<View> longSparseArray2) {
        View g;
        int q = longSparseArray.m21037q();
        for (int i = 0; i < q; i++) {
            View r = longSparseArray.m21036r(i);
            if (r != null && m16780N(r) && (g = longSparseArray2.m21045g(longSparseArray.m21041m(i))) != null && m16780N(g)) {
                TransitionValues transitionValues = arrayMap.get(r);
                TransitionValues transitionValues2 = arrayMap2.get(g);
                if (!(transitionValues == null || transitionValues2 == null)) {
                    this.f5241y.add(transitionValues);
                    this.f5242z.add(transitionValues2);
                    arrayMap.remove(r);
                    arrayMap2.remove(g);
                }
            }
        }
    }

    /* renamed from: S */
    private void m16775S(ArrayMap<View, TransitionValues> arrayMap, ArrayMap<View, TransitionValues> arrayMap2, ArrayMap<String, View> arrayMap3, ArrayMap<String, View> arrayMap4) {
        View view;
        int size = arrayMap3.size();
        for (int i = 0; i < size; i++) {
            View o = arrayMap3.m21005o(i);
            if (o != null && m16780N(o) && (view = arrayMap4.get(arrayMap3.m21007k(i))) != null && m16780N(view)) {
                TransitionValues transitionValues = arrayMap.get(o);
                TransitionValues transitionValues2 = arrayMap2.get(view);
                if (!(transitionValues == null || transitionValues2 == null)) {
                    this.f5241y.add(transitionValues);
                    this.f5242z.add(transitionValues2);
                    arrayMap.remove(o);
                    arrayMap2.remove(view);
                }
            }
        }
    }

    /* renamed from: T */
    private void m16774T(TransitionValuesMaps transitionValuesMaps, TransitionValuesMaps transitionValuesMaps2) {
        ArrayMap<View, TransitionValues> arrayMap = new ArrayMap<>(transitionValuesMaps.f5274a);
        ArrayMap<View, TransitionValues> arrayMap2 = new ArrayMap<>(transitionValuesMaps2.f5274a);
        int i = 0;
        while (true) {
            int[] iArr = this.f5240x;
            if (i < iArr.length) {
                int i2 = iArr[i];
                if (i2 == 1) {
                    m16777Q(arrayMap, arrayMap2);
                } else if (i2 == 2) {
                    m16775S(arrayMap, arrayMap2, transitionValuesMaps.f5277d, transitionValuesMaps2.f5277d);
                } else if (i2 == 3) {
                    m16778P(arrayMap, arrayMap2, transitionValuesMaps.f5275b, transitionValuesMaps2.f5275b);
                } else if (i2 == 4) {
                    m16776R(arrayMap, arrayMap2, transitionValuesMaps.f5276c, transitionValuesMaps2.f5276c);
                }
                i++;
            } else {
                m16771c(arrayMap, arrayMap2);
                return;
            }
        }
    }

    /* renamed from: U */
    private static int[] m16773U(String str) {
        StringTokenizer stringTokenizer = new StringTokenizer(str, ",");
        int[] iArr = new int[stringTokenizer.countTokens()];
        int i = 0;
        while (stringTokenizer.hasMoreTokens()) {
            String trim = stringTokenizer.nextToken().trim();
            if (Name.MARK.equalsIgnoreCase(trim)) {
                iArr[i] = 3;
            } else if ("instance".equalsIgnoreCase(trim)) {
                iArr[i] = 1;
            } else if ("name".equalsIgnoreCase(trim)) {
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

    /* renamed from: c */
    private void m16771c(ArrayMap<View, TransitionValues> arrayMap, ArrayMap<View, TransitionValues> arrayMap2) {
        for (int i = 0; i < arrayMap.size(); i++) {
            TransitionValues o = arrayMap.m21005o(i);
            if (m16780N(o.f5272b)) {
                this.f5241y.add(o);
                this.f5242z.add(null);
            }
        }
        for (int i2 = 0; i2 < arrayMap2.size(); i2++) {
            TransitionValues o2 = arrayMap2.m21005o(i2);
            if (m16780N(o2.f5272b)) {
                this.f5242z.add(o2);
                this.f5241y.add(null);
            }
        }
    }

    /* renamed from: c0 */
    private void m16770c0(Animator animator, final ArrayMap<Animator, AnimationInfo> arrayMap) {
        if (animator != null) {
            animator.addListener(new AnimatorListenerAdapter() { // from class: androidx.transition.Transition.2
                @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
                public void onAnimationEnd(Animator animator2) {
                    arrayMap.remove(animator2);
                    Transition.this.f5212B.remove(animator2);
                }

                @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
                public void onAnimationStart(Animator animator2) {
                    Transition.this.f5212B.add(animator2);
                }
            });
            m16767g(animator);
        }
    }

    /* renamed from: d */
    private static void m16769d(TransitionValuesMaps transitionValuesMaps, View view, TransitionValues transitionValues) {
        transitionValuesMaps.f5274a.put(view, transitionValues);
        int id = view.getId();
        if (id >= 0) {
            if (transitionValuesMaps.f5275b.indexOfKey(id) >= 0) {
                transitionValuesMaps.f5275b.put(id, null);
            } else {
                transitionValuesMaps.f5275b.put(id, view);
            }
        }
        String J = ViewCompat.m19227J(view);
        if (J != null) {
            if (transitionValuesMaps.f5277d.containsKey(J)) {
                transitionValuesMaps.f5277d.put(J, null);
            } else {
                transitionValuesMaps.f5277d.put(J, view);
            }
        }
        if (view.getParent() instanceof ListView) {
            ListView listView = (ListView) view.getParent();
            if (listView.getAdapter().hasStableIds()) {
                long itemIdAtPosition = listView.getItemIdAtPosition(listView.getPositionForView(view));
                if (transitionValuesMaps.f5276c.m21043j(itemIdAtPosition) >= 0) {
                    View g = transitionValuesMaps.f5276c.m21045g(itemIdAtPosition);
                    if (g != null) {
                        ViewCompat.m19165w0(g, false);
                        transitionValuesMaps.f5276c.m21040n(itemIdAtPosition, null);
                        return;
                    }
                    return;
                }
                ViewCompat.m19165w0(view, true);
                transitionValuesMaps.f5276c.m21040n(itemIdAtPosition, view);
            }
        }
    }

    /* renamed from: f */
    private static boolean m16768f(int[] iArr, int i) {
        int i2 = iArr[i];
        for (int i3 = 0; i3 < i; i3++) {
            if (iArr[i3] == i2) {
                return true;
            }
        }
        return false;
    }

    /* renamed from: j */
    private void m16765j(View view, boolean z) {
        if (view != null) {
            int id = view.getId();
            ArrayList<Integer> arrayList = this.f5230n;
            if (arrayList == null || !arrayList.contains(Integer.valueOf(id))) {
                ArrayList<View> arrayList2 = this.f5231o;
                if (arrayList2 == null || !arrayList2.contains(view)) {
                    ArrayList<Class<?>> arrayList3 = this.f5232p;
                    if (arrayList3 != null) {
                        int size = arrayList3.size();
                        for (int i = 0; i < size; i++) {
                            if (this.f5232p.get(i).isInstance(view)) {
                                return;
                            }
                        }
                    }
                    if (view.getParent() instanceof ViewGroup) {
                        TransitionValues transitionValues = new TransitionValues(view);
                        if (z) {
                            mo8627m(transitionValues);
                        } else {
                            mo8628i(transitionValues);
                        }
                        transitionValues.f5273c.add(this);
                        mo16733l(transitionValues);
                        if (z) {
                            m16769d(this.f5237u, view, transitionValues);
                        } else {
                            m16769d(this.f5238v, view, transitionValues);
                        }
                    }
                    if (view instanceof ViewGroup) {
                        ArrayList<Integer> arrayList4 = this.f5234r;
                        if (arrayList4 == null || !arrayList4.contains(Integer.valueOf(id))) {
                            ArrayList<View> arrayList5 = this.f5235s;
                            if (arrayList5 == null || !arrayList5.contains(view)) {
                                ArrayList<Class<?>> arrayList6 = this.f5236t;
                                if (arrayList6 != null) {
                                    int size2 = arrayList6.size();
                                    for (int i2 = 0; i2 < size2; i2++) {
                                        if (this.f5236t.get(i2).isInstance(view)) {
                                            return;
                                        }
                                    }
                                }
                                ViewGroup viewGroup = (ViewGroup) view;
                                for (int i3 = 0; i3 < viewGroup.getChildCount(); i3++) {
                                    m16765j(viewGroup.getChildAt(i3), z);
                                }
                            }
                        }
                    }
                }
            }
        }
    }

    @Nullable
    /* renamed from: A */
    public TransitionPropagation m16789A() {
        return this.f5218H;
    }

    /* renamed from: D */
    public long m16787D() {
        return this.f5223g;
    }

    @NonNull
    /* renamed from: E */
    public List<Integer> m16786E() {
        return this.f5226j;
    }

    @Nullable
    /* renamed from: F */
    public List<String> m16785F() {
        return this.f5228l;
    }

    @Nullable
    /* renamed from: G */
    public List<Class<?>> m16784G() {
        return this.f5229m;
    }

    @NonNull
    /* renamed from: H */
    public List<View> m16783H() {
        return this.f5227k;
    }

    @Nullable
    /* renamed from: J */
    public String[] mo8629J() {
        return null;
    }

    @Nullable
    /* renamed from: K */
    public TransitionValues m16782K(@NonNull View view, boolean z) {
        TransitionSet transitionSet = this.f5239w;
        if (transitionSet != null) {
            return transitionSet.m16782K(view, z);
        }
        return (z ? this.f5237u : this.f5238v).f5274a.get(view);
    }

    /* renamed from: L */
    public boolean mo16666L(@Nullable TransitionValues transitionValues, @Nullable TransitionValues transitionValues2) {
        boolean z = false;
        if (transitionValues != null) {
            z = false;
            if (transitionValues2 != null) {
                String[] J = mo8629J();
                if (J != null) {
                    int length = J.length;
                    int i = 0;
                    while (true) {
                        z = false;
                        if (i >= length) {
                            break;
                        } else if (m16779O(transitionValues, transitionValues2, J[i])) {
                            break;
                        } else {
                            i++;
                        }
                    }
                } else {
                    Iterator<String> it = transitionValues.f5271a.keySet().iterator();
                    do {
                        z = false;
                        if (!it.hasNext()) {
                            break;
                        }
                    } while (!m16779O(transitionValues, transitionValues2, it.next()));
                    z = true;
                }
            }
        }
        return z;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: N */
    public boolean m16780N(View view) {
        ArrayList<Class<?>> arrayList;
        ArrayList<String> arrayList2;
        int id = view.getId();
        ArrayList<Integer> arrayList3 = this.f5230n;
        if (arrayList3 != null && arrayList3.contains(Integer.valueOf(id))) {
            return false;
        }
        ArrayList<View> arrayList4 = this.f5231o;
        if (arrayList4 != null && arrayList4.contains(view)) {
            return false;
        }
        ArrayList<Class<?>> arrayList5 = this.f5232p;
        if (arrayList5 != null) {
            int size = arrayList5.size();
            for (int i = 0; i < size; i++) {
                if (this.f5232p.get(i).isInstance(view)) {
                    return false;
                }
            }
        }
        if (!(this.f5233q == null || ViewCompat.m19227J(view) == null || !this.f5233q.contains(ViewCompat.m19227J(view)))) {
            return false;
        }
        if ((this.f5226j.size() == 0 && this.f5227k.size() == 0 && (((arrayList = this.f5229m) == null || arrayList.isEmpty()) && ((arrayList2 = this.f5228l) == null || arrayList2.isEmpty()))) || this.f5226j.contains(Integer.valueOf(id)) || this.f5227k.contains(view)) {
            return true;
        }
        ArrayList<String> arrayList6 = this.f5228l;
        if (arrayList6 != null && arrayList6.contains(ViewCompat.m19227J(view))) {
            return true;
        }
        if (this.f5229m == null) {
            return false;
        }
        for (int i2 = 0; i2 < this.f5229m.size(); i2++) {
            if (this.f5229m.get(i2).isInstance(view)) {
                return true;
            }
        }
        return false;
    }

    @RestrictTo
    /* renamed from: V */
    public void mo16744V(View view) {
        if (!this.f5215E) {
            ArrayMap<Animator, AnimationInfo> C = m16788C();
            int size = C.size();
            WindowIdImpl d = ViewUtils.m16688d(view);
            while (true) {
                size--;
                if (size < 0) {
                    break;
                }
                AnimationInfo o = C.m21005o(size);
                if (o.f5246a != null && d.equals(o.f5249d)) {
                    AnimatorUtils.m16911b(C.m21007k(size));
                }
            }
            ArrayList<TransitionListener> arrayList = this.f5216F;
            if (arrayList != null && arrayList.size() > 0) {
                ArrayList arrayList2 = (ArrayList) this.f5216F.clone();
                int size2 = arrayList2.size();
                for (int i = 0; i < size2; i++) {
                    ((TransitionListener) arrayList2.get(i)).mo8574b(this);
                }
            }
            this.f5214D = true;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: X */
    public void m16772X(ViewGroup viewGroup) {
        AnimationInfo animationInfo;
        this.f5241y = new ArrayList<>();
        this.f5242z = new ArrayList<>();
        m16774T(this.f5237u, this.f5238v);
        ArrayMap<Animator, AnimationInfo> C = m16788C();
        int size = C.size();
        WindowIdImpl d = ViewUtils.m16688d(viewGroup);
        while (true) {
            size--;
            if (size >= 0) {
                Animator k = C.m21007k(size);
                if (!(k == null || (animationInfo = C.get(k)) == null || animationInfo.f5246a == null || !d.equals(animationInfo.f5249d))) {
                    TransitionValues transitionValues = animationInfo.f5248c;
                    View view = animationInfo.f5246a;
                    TransitionValues K = m16782K(view, true);
                    TransitionValues x = m16756x(view, true);
                    TransitionValues transitionValues2 = x;
                    if (K == null) {
                        transitionValues2 = x;
                        if (x == null) {
                            transitionValues2 = this.f5238v.f5274a.get(view);
                        }
                    }
                    if (!(K == null && transitionValues2 == null) && animationInfo.f5250e.mo16666L(transitionValues, transitionValues2)) {
                        if (k.isRunning() || k.isStarted()) {
                            k.cancel();
                        } else {
                            C.remove(k);
                        }
                    }
                }
            } else {
                mo16726r(viewGroup, this.f5237u, this.f5238v, this.f5241y, this.f5242z);
                mo16738e0();
                return;
            }
        }
    }

    @NonNull
    /* renamed from: Z */
    public Transition mo16743Z(@NonNull TransitionListener transitionListener) {
        ArrayList<TransitionListener> arrayList = this.f5216F;
        if (arrayList == null) {
            return this;
        }
        arrayList.remove(transitionListener);
        if (this.f5216F.size() == 0) {
            this.f5216F = null;
        }
        return this;
    }

    @NonNull
    /* renamed from: a */
    public Transition mo16742a(@NonNull TransitionListener transitionListener) {
        if (this.f5216F == null) {
            this.f5216F = new ArrayList<>();
        }
        this.f5216F.add(transitionListener);
        return this;
    }

    @NonNull
    /* renamed from: a0 */
    public Transition mo16741a0(@NonNull View view) {
        this.f5227k.remove(view);
        return this;
    }

    @NonNull
    /* renamed from: b */
    public Transition mo16740b(@NonNull View view) {
        this.f5227k.add(view);
        return this;
    }

    @RestrictTo
    /* renamed from: b0 */
    public void mo16739b0(View view) {
        if (this.f5214D) {
            if (!this.f5215E) {
                ArrayMap<Animator, AnimationInfo> C = m16788C();
                int size = C.size();
                WindowIdImpl d = ViewUtils.m16688d(view);
                while (true) {
                    size--;
                    if (size < 0) {
                        break;
                    }
                    AnimationInfo o = C.m21005o(size);
                    if (o.f5246a != null && d.equals(o.f5249d)) {
                        AnimatorUtils.m16910c(C.m21007k(size));
                    }
                }
                ArrayList<TransitionListener> arrayList = this.f5216F;
                if (arrayList != null && arrayList.size() > 0) {
                    ArrayList arrayList2 = (ArrayList) this.f5216F.clone();
                    int size2 = arrayList2.size();
                    for (int i = 0; i < size2; i++) {
                        ((TransitionListener) arrayList2.get(i)).mo8571e(this);
                    }
                }
            }
            this.f5214D = false;
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @RestrictTo
    public void cancel() {
        for (int size = this.f5212B.size() - 1; size >= 0; size--) {
            this.f5212B.get(size).cancel();
        }
        ArrayList<TransitionListener> arrayList = this.f5216F;
        if (arrayList != null && arrayList.size() > 0) {
            ArrayList arrayList2 = (ArrayList) this.f5216F.clone();
            int size2 = arrayList2.size();
            for (int i = 0; i < size2; i++) {
                ((TransitionListener) arrayList2.get(i)).mo8572d(this);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @RestrictTo
    /* renamed from: e0 */
    public void mo16738e0() {
        m16763n0();
        ArrayMap<Animator, AnimationInfo> C = m16788C();
        Iterator<Animator> it = this.f5217G.iterator();
        while (it.hasNext()) {
            Animator next = it.next();
            if (C.containsKey(next)) {
                m16763n0();
                m16770c0(next, C);
            }
        }
        this.f5217G.clear();
        m16761s();
    }

    @NonNull
    /* renamed from: f0 */
    public Transition mo16737f0(long j) {
        this.f5224h = j;
        return this;
    }

    @RestrictTo
    /* renamed from: g */
    protected void m16767g(Animator animator) {
        if (animator == null) {
            m16761s();
            return;
        }
        if (m16760t() >= 0) {
            animator.setDuration(m16760t());
        }
        if (m16787D() >= 0) {
            animator.setStartDelay(m16787D() + animator.getStartDelay());
        }
        if (m16757w() != null) {
            animator.setInterpolator(m16757w());
        }
        animator.addListener(new AnimatorListenerAdapter() { // from class: androidx.transition.Transition.3
            @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
            public void onAnimationEnd(Animator animator2) {
                Transition.this.m16761s();
                animator2.removeListener(this);
            }
        });
        animator.start();
    }

    /* renamed from: g0 */
    public void mo16736g0(@Nullable EpicenterCallback epicenterCallback) {
        this.f5219I = epicenterCallback;
    }

    @NonNull
    /* renamed from: h0 */
    public Transition mo16735h0(@Nullable TimeInterpolator timeInterpolator) {
        this.f5225i = timeInterpolator;
        return this;
    }

    /* renamed from: i */
    public abstract void mo8628i(@NonNull TransitionValues transitionValues);

    /* renamed from: i0 */
    public void m16766i0(int... iArr) {
        if (iArr == null || iArr.length == 0) {
            this.f5240x = f5208L;
            return;
        }
        for (int i = 0; i < iArr.length; i++) {
            if (!m16781M(iArr[i])) {
                throw new IllegalArgumentException("matches contains invalid value");
            } else if (m16768f(iArr, i)) {
                throw new IllegalArgumentException("matches contains a duplicate value");
            }
        }
        this.f5240x = (int[]) iArr.clone();
    }

    /* renamed from: k0 */
    public void mo16734k0(@Nullable PathMotion pathMotion) {
        if (pathMotion == null) {
            this.f5221K = f5209M;
        } else {
            this.f5221K = pathMotion;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: l */
    public void mo16733l(TransitionValues transitionValues) {
        String[] b;
        if (this.f5218H != null && !transitionValues.f5271a.isEmpty() && (b = this.f5218H.mo16656b()) != null) {
            boolean z = false;
            int i = 0;
            while (true) {
                if (i >= b.length) {
                    z = true;
                    break;
                } else if (!transitionValues.f5271a.containsKey(b[i])) {
                    break;
                } else {
                    i++;
                }
            }
            if (!z) {
                this.f5218H.mo16657a(transitionValues);
            }
        }
    }

    /* renamed from: l0 */
    public void mo16732l0(@Nullable TransitionPropagation transitionPropagation) {
        this.f5218H = transitionPropagation;
    }

    /* renamed from: m */
    public abstract void mo8627m(@NonNull TransitionValues transitionValues);

    @NonNull
    /* renamed from: m0 */
    public Transition mo16731m0(long j) {
        this.f5223g = j;
        return this;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: n */
    public void m16764n(ViewGroup viewGroup, boolean z) {
        ArrayMap<String, String> arrayMap;
        ArrayList<String> arrayList;
        ArrayList<Class<?>> arrayList2;
        m16762o(z);
        if ((this.f5226j.size() > 0 || this.f5227k.size() > 0) && (((arrayList = this.f5228l) == null || arrayList.isEmpty()) && ((arrayList2 = this.f5229m) == null || arrayList2.isEmpty()))) {
            for (int i = 0; i < this.f5226j.size(); i++) {
                View findViewById = viewGroup.findViewById(this.f5226j.get(i).intValue());
                if (findViewById != null) {
                    TransitionValues transitionValues = new TransitionValues(findViewById);
                    if (z) {
                        mo8627m(transitionValues);
                    } else {
                        mo8628i(transitionValues);
                    }
                    transitionValues.f5273c.add(this);
                    mo16733l(transitionValues);
                    if (z) {
                        m16769d(this.f5237u, findViewById, transitionValues);
                    } else {
                        m16769d(this.f5238v, findViewById, transitionValues);
                    }
                }
            }
            for (int i2 = 0; i2 < this.f5227k.size(); i2++) {
                View view = this.f5227k.get(i2);
                TransitionValues transitionValues2 = new TransitionValues(view);
                if (z) {
                    mo8627m(transitionValues2);
                } else {
                    mo8628i(transitionValues2);
                }
                transitionValues2.f5273c.add(this);
                mo16733l(transitionValues2);
                if (z) {
                    m16769d(this.f5237u, view, transitionValues2);
                } else {
                    m16769d(this.f5238v, view, transitionValues2);
                }
            }
        } else {
            m16765j(viewGroup, z);
        }
        if (!(z || (arrayMap = this.f5220J) == null)) {
            int size = arrayMap.size();
            ArrayList arrayList3 = new ArrayList(size);
            for (int i3 = 0; i3 < size; i3++) {
                arrayList3.add(this.f5237u.f5277d.remove(this.f5220J.m21007k(i3)));
            }
            for (int i4 = 0; i4 < size; i4++) {
                View view2 = (View) arrayList3.get(i4);
                if (view2 != null) {
                    this.f5237u.f5277d.put(this.f5220J.m21005o(i4), view2);
                }
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @RestrictTo
    /* renamed from: n0 */
    public void m16763n0() {
        if (this.f5213C == 0) {
            ArrayList<TransitionListener> arrayList = this.f5216F;
            if (arrayList != null && arrayList.size() > 0) {
                ArrayList arrayList2 = (ArrayList) this.f5216F.clone();
                int size = arrayList2.size();
                for (int i = 0; i < size; i++) {
                    ((TransitionListener) arrayList2.get(i)).mo8575a(this);
                }
            }
            this.f5215E = false;
        }
        this.f5213C++;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: o */
    public void m16762o(boolean z) {
        if (z) {
            this.f5237u.f5274a.clear();
            this.f5237u.f5275b.clear();
            this.f5237u.f5276c.m21049b();
            return;
        }
        this.f5238v.f5274a.clear();
        this.f5238v.f5275b.clear();
        this.f5238v.f5276c.m21049b();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: Code restructure failed: missing block: B:14:0x00f5, code lost:
        if (r5.f5227k.size() > 0) goto L_0x00f8;
     */
    /* renamed from: o0 */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public java.lang.String mo16730o0(java.lang.String r6) {
        /*
            Method dump skipped, instructions count: 511
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.transition.Transition.mo16730o0(java.lang.String):java.lang.String");
    }

    /* renamed from: p */
    public Transition clone() {
        try {
            Transition transition = (Transition) super.clone();
            transition.f5217G = new ArrayList<>();
            transition.f5237u = new TransitionValuesMaps();
            transition.f5238v = new TransitionValuesMaps();
            transition.f5241y = null;
            transition.f5242z = null;
            return transition;
        } catch (CloneNotSupportedException e) {
            return null;
        }
    }

    @Nullable
    /* renamed from: q */
    public Animator mo8625q(@NonNull ViewGroup viewGroup, @Nullable TransitionValues transitionValues, @Nullable TransitionValues transitionValues2) {
        return null;
    }

    /* JADX INFO: Access modifiers changed from: protected */
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
    @androidx.annotation.RestrictTo
    /* renamed from: r */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void mo16726r(android.view.ViewGroup r11, androidx.transition.TransitionValuesMaps r12, androidx.transition.TransitionValuesMaps r13, java.util.ArrayList<androidx.transition.TransitionValues> r14, java.util.ArrayList<androidx.transition.TransitionValues> r15) {
        /*
            Method dump skipped, instructions count: 629
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.transition.Transition.mo16726r(android.view.ViewGroup, androidx.transition.TransitionValuesMaps, androidx.transition.TransitionValuesMaps, java.util.ArrayList, java.util.ArrayList):void");
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @RestrictTo
    /* renamed from: s */
    public void m16761s() {
        int i = this.f5213C - 1;
        this.f5213C = i;
        if (i == 0) {
            ArrayList<TransitionListener> arrayList = this.f5216F;
            if (arrayList != null && arrayList.size() > 0) {
                ArrayList arrayList2 = (ArrayList) this.f5216F.clone();
                int size = arrayList2.size();
                for (int i2 = 0; i2 < size; i2++) {
                    ((TransitionListener) arrayList2.get(i2)).mo8573c(this);
                }
            }
            for (int i3 = 0; i3 < this.f5237u.f5276c.m21037q(); i3++) {
                View r = this.f5237u.f5276c.m21036r(i3);
                if (r != null) {
                    ViewCompat.m19165w0(r, false);
                }
            }
            for (int i4 = 0; i4 < this.f5238v.f5276c.m21037q(); i4++) {
                View r2 = this.f5238v.f5276c.m21036r(i4);
                if (r2 != null) {
                    ViewCompat.m19165w0(r2, false);
                }
            }
            this.f5215E = true;
        }
    }

    /* renamed from: t */
    public long m16760t() {
        return this.f5224h;
    }

    public String toString() {
        return mo16730o0("");
    }

    @Nullable
    /* renamed from: u */
    public Rect m16759u() {
        EpicenterCallback epicenterCallback = this.f5219I;
        if (epicenterCallback == null) {
            return null;
        }
        return epicenterCallback.mo16753a(this);
    }

    @Nullable
    /* renamed from: v */
    public EpicenterCallback m16758v() {
        return this.f5219I;
    }

    @Nullable
    /* renamed from: w */
    public TimeInterpolator m16757w() {
        return this.f5225i;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: x */
    public TransitionValues m16756x(View view, boolean z) {
        TransitionSet transitionSet = this.f5239w;
        if (transitionSet != null) {
            return transitionSet.m16756x(view, z);
        }
        ArrayList<TransitionValues> arrayList = z ? this.f5241y : this.f5242z;
        TransitionValues transitionValues = null;
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
            TransitionValues transitionValues2 = arrayList.get(i2);
            if (transitionValues2 == null) {
                return null;
            }
            if (transitionValues2.f5272b == view) {
                i = i2;
                break;
            }
            i2++;
        }
        if (i >= 0) {
            transitionValues = (z ? this.f5242z : this.f5241y).get(i);
        }
        return transitionValues;
    }

    @NonNull
    /* renamed from: y */
    public String m16755y() {
        return this.f5222f;
    }

    @NonNull
    /* renamed from: z */
    public PathMotion m16754z() {
        return this.f5221K;
    }
}

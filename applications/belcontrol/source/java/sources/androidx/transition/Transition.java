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
import com.mopub.mobileads.VastIconXmlManager;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.StringTokenizer;
/* loaded from: classes-dex2jar.jar:androidx/transition/Transition.class */
public abstract class Transition implements Cloneable {
    public static final boolean DBG = false;
    private static final String LOG_TAG = "Transition";
    private static final int MATCH_FIRST = 1;
    public static final int MATCH_ID = 3;
    private static final String MATCH_ID_STR = "id";
    public static final int MATCH_INSTANCE = 1;
    private static final String MATCH_INSTANCE_STR = "instance";
    public static final int MATCH_ITEM_ID = 4;
    private static final String MATCH_ITEM_ID_STR = "itemId";
    private static final int MATCH_LAST = 4;
    public static final int MATCH_NAME = 2;
    private static final String MATCH_NAME_STR = "name";
    private ArrayList<x20> mEndValuesList;
    private AbstractC0198f mEpicenterCallback;
    private b4<String, String> mNameOverrides;
    public v20 mPropagation;
    private ArrayList<x20> mStartValuesList;
    private static final int[] DEFAULT_MATCH_ORDER = {2, 1, 3, 4};
    private static final PathMotion STRAIGHT_PATH_MOTION = new a();
    private static ThreadLocal<b4<Animator, C0196d>> sRunningAnimators = new ThreadLocal<>();
    private String mName = getClass().getName();
    private long mStartDelay = -1;
    public long mDuration = -1;
    private TimeInterpolator mInterpolator = null;
    public ArrayList<Integer> mTargetIds = new ArrayList<>();
    public ArrayList<View> mTargets = new ArrayList<>();
    private ArrayList<String> mTargetNames = null;
    private ArrayList<Class<?>> mTargetTypes = null;
    private ArrayList<Integer> mTargetIdExcludes = null;
    private ArrayList<View> mTargetExcludes = null;
    private ArrayList<Class<?>> mTargetTypeExcludes = null;
    private ArrayList<String> mTargetNameExcludes = null;
    private ArrayList<Integer> mTargetIdChildExcludes = null;
    private ArrayList<View> mTargetChildExcludes = null;
    private ArrayList<Class<?>> mTargetTypeChildExcludes = null;
    private y20 mStartValues = new y20();
    private y20 mEndValues = new y20();
    public TransitionSet mParent = null;
    private int[] mMatchOrder = DEFAULT_MATCH_ORDER;
    private ViewGroup mSceneRoot = null;
    public boolean mCanRemoveViews = false;
    public ArrayList<Animator> mCurrentAnimators = new ArrayList<>();
    private int mNumInstances = 0;
    private boolean mPaused = false;
    private boolean mEnded = false;
    private ArrayList<AbstractC0199g> mListeners = null;
    private ArrayList<Animator> mAnimators = new ArrayList<>();
    private PathMotion mPathMotion = STRAIGHT_PATH_MOTION;

    /* renamed from: androidx.transition.Transition$b */
    /* loaded from: classes-dex2jar.jar:androidx/transition/Transition$b.class */
    public class C0194b extends AnimatorListenerAdapter {

        /* renamed from: a */
        public final /* synthetic */ b4 f1525a;

        public C0194b(b4 b4Var) {
            Transition.this = r4;
            this.f1525a = b4Var;
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public void onAnimationEnd(Animator animator) {
            this.f1525a.remove(animator);
            Transition.this.mCurrentAnimators.remove(animator);
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public void onAnimationStart(Animator animator) {
            Transition.this.mCurrentAnimators.add(animator);
        }
    }

    /* renamed from: androidx.transition.Transition$c */
    /* loaded from: classes-dex2jar.jar:androidx/transition/Transition$c.class */
    public class C0195c extends AnimatorListenerAdapter {
        public C0195c() {
            Transition.this = r4;
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public void onAnimationEnd(Animator animator) {
            Transition.this.end();
            animator.removeListener(this);
        }
    }

    /* renamed from: androidx.transition.Transition$d */
    /* loaded from: classes-dex2jar.jar:androidx/transition/Transition$d.class */
    public static class C0196d {

        /* renamed from: a */
        public View f1528a;

        /* renamed from: b */
        public String f1529b;

        /* renamed from: c */
        public x20 f1530c;

        /* renamed from: d */
        public s30 f1531d;

        /* renamed from: e */
        public Transition f1532e;

        public C0196d(View view, String str, Transition transition, s30 s30Var, x20 x20Var) {
            this.f1528a = view;
            this.f1529b = str;
            this.f1530c = x20Var;
            this.f1531d = s30Var;
            this.f1532e = transition;
        }
    }

    /* renamed from: androidx.transition.Transition$e */
    /* loaded from: classes-dex2jar.jar:androidx/transition/Transition$e.class */
    public static class C0197e {
        /* renamed from: a */
        public static <T> ArrayList<T> m5994a(ArrayList<T> arrayList, T t) {
            ArrayList<T> arrayList2 = arrayList;
            if (arrayList == null) {
                arrayList2 = new ArrayList<>();
            }
            if (!arrayList2.contains(t)) {
                arrayList2.add(t);
            }
            return arrayList2;
        }

        /* renamed from: b */
        public static <T> ArrayList<T> m5993b(ArrayList<T> arrayList, T t) {
            ArrayList<T> arrayList2 = arrayList;
            if (arrayList != null) {
                arrayList.remove(t);
                arrayList2 = arrayList;
                if (arrayList.isEmpty()) {
                    arrayList2 = null;
                }
            }
            return arrayList2;
        }
    }

    /* renamed from: androidx.transition.Transition$f */
    /* loaded from: classes-dex2jar.jar:androidx/transition/Transition$f.class */
    public static abstract class AbstractC0198f {
        /* renamed from: a */
        public abstract Rect m5992a(Transition transition);
    }

    /* renamed from: androidx.transition.Transition$g */
    /* loaded from: classes-dex2jar.jar:androidx/transition/Transition$g.class */
    public interface AbstractC0199g {
        void onTransitionCancel(Transition transition);

        void onTransitionEnd(Transition transition);

        void onTransitionPause(Transition transition);

        void onTransitionResume(Transition transition);

        void onTransitionStart(Transition transition);
    }

    public Transition() {
    }

    @SuppressLint({"RestrictedApi"})
    public Transition(Context context, AttributeSet attributeSet) {
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, s20.a);
        XmlResourceParser xmlResourceParser = (XmlResourceParser) attributeSet;
        long g = o8.g(obtainStyledAttributes, xmlResourceParser, VastIconXmlManager.DURATION, 1, -1);
        if (g >= 0) {
            setDuration(g);
        }
        long g2 = o8.g(obtainStyledAttributes, xmlResourceParser, "startDelay", 2, -1);
        if (g2 > 0) {
            setStartDelay(g2);
        }
        int h = o8.h(obtainStyledAttributes, xmlResourceParser, "interpolator", 0, 0);
        if (h > 0) {
            setInterpolator(AnimationUtils.loadInterpolator(context, h));
        }
        String i = o8.i(obtainStyledAttributes, xmlResourceParser, "matchOrder", 3);
        if (i != null) {
            setMatchOrder(parseMatchOrder(i));
        }
        obtainStyledAttributes.recycle();
    }

    private void addUnmatched(b4<View, x20> b4Var, b4<View, x20> b4Var2) {
        int i;
        int i2 = 0;
        while (true) {
            if (i2 < b4Var.size()) {
                x20 x20Var = (x20) b4Var.m(i2);
                if (isValidTarget(x20Var.b)) {
                    this.mStartValuesList.add(x20Var);
                    this.mEndValuesList.add(null);
                }
                i2++;
            }
        }
        for (i = 0; i < b4Var2.size(); i++) {
            x20 x20Var2 = (x20) b4Var2.m(i);
            if (isValidTarget(x20Var2.b)) {
                this.mEndValuesList.add(x20Var2);
                this.mStartValuesList.add(null);
            }
        }
    }

    private static void addViewValues(y20 y20Var, View view, x20 x20Var) {
        y20Var.a.put(view, x20Var);
        int id = view.getId();
        if (id >= 0) {
            if (y20Var.b.indexOfKey(id) >= 0) {
                y20Var.b.put(id, null);
            } else {
                y20Var.b.put(id, view);
            }
        }
        String J = jb.J(view);
        if (J != null) {
            if (y20Var.d.containsKey(J)) {
                y20Var.d.put(J, (Object) null);
            } else {
                y20Var.d.put(J, view);
            }
        }
        if (view.getParent() instanceof ListView) {
            ListView listView = (ListView) view.getParent();
            if (!listView.getAdapter().hasStableIds()) {
                return;
            }
            long itemIdAtPosition = listView.getItemIdAtPosition(listView.getPositionForView(view));
            if (y20Var.c.m2253j(itemIdAtPosition) < 0) {
                jb.w0(view, true);
                y20Var.c.m2251l(itemIdAtPosition, view);
                return;
            }
            View view2 = (View) y20Var.c.m2255h(itemIdAtPosition);
            if (view2 == null) {
                return;
            }
            jb.w0(view2, false);
            y20Var.c.m2251l(itemIdAtPosition, null);
        }
    }

    private static boolean alreadyContains(int[] iArr, int i) {
        int i2 = iArr[i];
        for (int i3 = 0; i3 < i; i3++) {
            if (iArr[i3] == i2) {
                return true;
            }
        }
        return false;
    }

    private void captureHierarchy(View view, boolean z) {
        if (view == null) {
            return;
        }
        int id = view.getId();
        ArrayList<Integer> arrayList = this.mTargetIdExcludes;
        if (arrayList != null && arrayList.contains(Integer.valueOf(id))) {
            return;
        }
        ArrayList<View> arrayList2 = this.mTargetExcludes;
        if (arrayList2 != null && arrayList2.contains(view)) {
            return;
        }
        ArrayList<Class<?>> arrayList3 = this.mTargetTypeExcludes;
        if (arrayList3 != null) {
            int size = arrayList3.size();
            for (int i = 0; i < size; i++) {
                if (this.mTargetTypeExcludes.get(i).isInstance(view)) {
                    return;
                }
            }
        }
        if (view.getParent() instanceof ViewGroup) {
            x20 x20Var = new x20(view);
            if (z) {
                captureStartValues(x20Var);
            } else {
                captureEndValues(x20Var);
            }
            x20Var.c.add(this);
            capturePropagationValues(x20Var);
            addViewValues(z ? this.mStartValues : this.mEndValues, view, x20Var);
        }
        if (!(view instanceof ViewGroup)) {
            return;
        }
        ArrayList<Integer> arrayList4 = this.mTargetIdChildExcludes;
        if (arrayList4 != null && arrayList4.contains(Integer.valueOf(id))) {
            return;
        }
        ArrayList<View> arrayList5 = this.mTargetChildExcludes;
        if (arrayList5 != null && arrayList5.contains(view)) {
            return;
        }
        ArrayList<Class<?>> arrayList6 = this.mTargetTypeChildExcludes;
        if (arrayList6 != null) {
            int size2 = arrayList6.size();
            for (int i2 = 0; i2 < size2; i2++) {
                if (this.mTargetTypeChildExcludes.get(i2).isInstance(view)) {
                    return;
                }
            }
        }
        ViewGroup viewGroup = (ViewGroup) view;
        for (int i3 = 0; i3 < viewGroup.getChildCount(); i3++) {
            captureHierarchy(viewGroup.getChildAt(i3), z);
        }
    }

    private ArrayList<Integer> excludeId(ArrayList<Integer> arrayList, int i, boolean z) {
        ArrayList<Integer> arrayList2 = arrayList;
        if (i > 0) {
            Integer valueOf = Integer.valueOf(i);
            arrayList2 = z ? C0197e.m5994a(arrayList, valueOf) : C0197e.m5993b(arrayList, valueOf);
        }
        return arrayList2;
    }

    private static <T> ArrayList<T> excludeObject(ArrayList<T> arrayList, T t, boolean z) {
        ArrayList<T> arrayList2 = arrayList;
        if (t != null) {
            arrayList2 = z ? C0197e.m5994a(arrayList, t) : C0197e.m5993b(arrayList, t);
        }
        return arrayList2;
    }

    private ArrayList<Class<?>> excludeType(ArrayList<Class<?>> arrayList, Class<?> cls, boolean z) {
        ArrayList<Class<?>> arrayList2 = arrayList;
        if (cls != null) {
            arrayList2 = z ? C0197e.m5994a(arrayList, cls) : C0197e.m5993b(arrayList, cls);
        }
        return arrayList2;
    }

    private ArrayList<View> excludeView(ArrayList<View> arrayList, View view, boolean z) {
        ArrayList<View> arrayList2 = arrayList;
        if (view != null) {
            arrayList2 = z ? C0197e.m5994a(arrayList, view) : C0197e.m5993b(arrayList, view);
        }
        return arrayList2;
    }

    private static b4<Animator, C0196d> getRunningAnimators() {
        b4<Animator, C0196d> b4Var = sRunningAnimators.get();
        b4<Animator, C0196d> b4Var2 = b4Var;
        if (b4Var == null) {
            b4Var2 = new b4<>();
            sRunningAnimators.set(b4Var2);
        }
        return b4Var2;
    }

    private static boolean isValidMatch(int i) {
        boolean z = true;
        if (i < 1 || i > 4) {
            z = false;
        }
        return z;
    }

    private static boolean isValueChanged(x20 x20Var, x20 x20Var2, String str) {
        boolean z;
        Object obj = x20Var.a.get(str);
        Object obj2 = x20Var2.a.get(str);
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

    private void matchIds(b4<View, x20> b4Var, b4<View, x20> b4Var2, SparseArray<View> sparseArray, SparseArray<View> sparseArray2) {
        View view;
        int size = sparseArray.size();
        for (int i = 0; i < size; i++) {
            View valueAt = sparseArray.valueAt(i);
            if (valueAt != null && isValidTarget(valueAt) && (view = sparseArray2.get(sparseArray.keyAt(i))) != null && isValidTarget(view)) {
                x20 x20Var = (x20) b4Var.get(valueAt);
                x20 x20Var2 = (x20) b4Var2.get(view);
                if (x20Var != null && x20Var2 != null) {
                    this.mStartValuesList.add(x20Var);
                    this.mEndValuesList.add(x20Var2);
                    b4Var.remove(valueAt);
                    b4Var2.remove(view);
                }
            }
        }
    }

    private void matchInstances(b4<View, x20> b4Var, b4<View, x20> b4Var2) {
        x20 x20Var;
        for (int size = b4Var.size() - 1; size >= 0; size--) {
            View view = (View) b4Var.i(size);
            if (view != null && isValidTarget(view) && (x20Var = (x20) b4Var2.remove(view)) != null && isValidTarget(x20Var.b)) {
                this.mStartValuesList.add((x20) b4Var.k(size));
                this.mEndValuesList.add(x20Var);
            }
        }
    }

    private void matchItemIds(b4<View, x20> b4Var, b4<View, x20> b4Var2, C1344e4<View> c1344e4, C1344e4<View> c1344e42) {
        View m2255h;
        int m2248o = c1344e4.m2248o();
        for (int i = 0; i < m2248o; i++) {
            View m2247p = c1344e4.m2247p(i);
            if (m2247p != null && isValidTarget(m2247p) && (m2255h = c1344e42.m2255h(c1344e4.m2252k(i))) != null && isValidTarget(m2255h)) {
                x20 x20Var = (x20) b4Var.get(m2247p);
                x20 x20Var2 = (x20) b4Var2.get(m2255h);
                if (x20Var != null && x20Var2 != null) {
                    this.mStartValuesList.add(x20Var);
                    this.mEndValuesList.add(x20Var2);
                    b4Var.remove(m2247p);
                    b4Var2.remove(m2255h);
                }
            }
        }
    }

    private void matchNames(b4<View, x20> b4Var, b4<View, x20> b4Var2, b4<String, View> b4Var3, b4<String, View> b4Var4) {
        View view;
        int size = b4Var3.size();
        for (int i = 0; i < size; i++) {
            View view2 = (View) b4Var3.m(i);
            if (view2 != null && isValidTarget(view2) && (view = (View) b4Var4.get(b4Var3.i(i))) != null && isValidTarget(view)) {
                x20 x20Var = (x20) b4Var.get(view2);
                x20 x20Var2 = (x20) b4Var2.get(view);
                if (x20Var != null && x20Var2 != null) {
                    this.mStartValuesList.add(x20Var);
                    this.mEndValuesList.add(x20Var2);
                    b4Var.remove(view2);
                    b4Var2.remove(view);
                }
            }
        }
    }

    private void matchStartAndEnd(y20 y20Var, y20 y20Var2) {
        b4<View, x20> b4Var = new b4<>(y20Var.a);
        b4<View, x20> b4Var2 = new b4<>(y20Var2.a);
        int i = 0;
        while (true) {
            int[] iArr = this.mMatchOrder;
            if (i >= iArr.length) {
                addUnmatched(b4Var, b4Var2);
                return;
            }
            int i2 = iArr[i];
            if (i2 == 1) {
                matchInstances(b4Var, b4Var2);
            } else if (i2 == 2) {
                matchNames(b4Var, b4Var2, y20Var.d, y20Var2.d);
            } else if (i2 == 3) {
                matchIds(b4Var, b4Var2, y20Var.b, y20Var2.b);
            } else if (i2 == 4) {
                matchItemIds(b4Var, b4Var2, y20Var.c, y20Var2.c);
            }
            i++;
        }
    }

    private static int[] parseMatchOrder(String str) {
        StringTokenizer stringTokenizer = new StringTokenizer(str, ",");
        int[] iArr = new int[stringTokenizer.countTokens()];
        int i = 0;
        while (stringTokenizer.hasMoreTokens()) {
            String trim = stringTokenizer.nextToken().trim();
            if ("id".equalsIgnoreCase(trim)) {
                iArr[i] = 3;
            } else if (MATCH_INSTANCE_STR.equalsIgnoreCase(trim)) {
                iArr[i] = 1;
            } else if (MATCH_NAME_STR.equalsIgnoreCase(trim)) {
                iArr[i] = 2;
            } else if (MATCH_ITEM_ID_STR.equalsIgnoreCase(trim)) {
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

    private void runAnimator(Animator animator, b4<Animator, C0196d> b4Var) {
        if (animator != null) {
            animator.addListener(new C0194b(b4Var));
            animate(animator);
        }
    }

    public Transition addListener(AbstractC0199g abstractC0199g) {
        if (this.mListeners == null) {
            this.mListeners = new ArrayList<>();
        }
        this.mListeners.add(abstractC0199g);
        return this;
    }

    public Transition addTarget(int i) {
        if (i != 0) {
            this.mTargetIds.add(Integer.valueOf(i));
        }
        return this;
    }

    public Transition addTarget(View view) {
        this.mTargets.add(view);
        return this;
    }

    public Transition addTarget(Class<?> cls) {
        if (this.mTargetTypes == null) {
            this.mTargetTypes = new ArrayList<>();
        }
        this.mTargetTypes.add(cls);
        return this;
    }

    public Transition addTarget(String str) {
        if (this.mTargetNames == null) {
            this.mTargetNames = new ArrayList<>();
        }
        this.mTargetNames.add(str);
        return this;
    }

    public void animate(Animator animator) {
        if (animator == null) {
            end();
            return;
        }
        if (getDuration() >= 0) {
            animator.setDuration(getDuration());
        }
        if (getStartDelay() >= 0) {
            animator.setStartDelay(getStartDelay() + animator.getStartDelay());
        }
        if (getInterpolator() != null) {
            animator.setInterpolator(getInterpolator());
        }
        animator.addListener(new C0195c());
        animator.start();
    }

    public void cancel() {
        for (int size = this.mCurrentAnimators.size() - 1; size >= 0; size--) {
            this.mCurrentAnimators.get(size).cancel();
        }
        ArrayList<AbstractC0199g> arrayList = this.mListeners;
        if (arrayList == null || arrayList.size() <= 0) {
            return;
        }
        ArrayList arrayList2 = (ArrayList) this.mListeners.clone();
        int size2 = arrayList2.size();
        for (int i = 0; i < size2; i++) {
            ((AbstractC0199g) arrayList2.get(i)).onTransitionCancel(this);
        }
    }

    public abstract void captureEndValues(x20 x20Var);

    public void capturePropagationValues(x20 x20Var) {
        String[] b;
        boolean z;
        if (this.mPropagation == null || x20Var.a.isEmpty() || (b = this.mPropagation.b()) == null) {
            return;
        }
        int i = 0;
        while (true) {
            if (i >= b.length) {
                z = true;
                break;
            } else if (!x20Var.a.containsKey(b[i])) {
                z = false;
                break;
            } else {
                i++;
            }
        }
        if (z) {
            return;
        }
        this.mPropagation.a(x20Var);
    }

    public abstract void captureStartValues(x20 x20Var);

    public void captureValues(ViewGroup viewGroup, boolean z) {
        b4<String, String> b4Var;
        int i;
        ArrayList<String> arrayList;
        ArrayList<Class<?>> arrayList2;
        clearValues(z);
        if ((this.mTargetIds.size() > 0 || this.mTargets.size() > 0) && (((arrayList = this.mTargetNames) == null || arrayList.isEmpty()) && ((arrayList2 = this.mTargetTypes) == null || arrayList2.isEmpty()))) {
            for (int i2 = 0; i2 < this.mTargetIds.size(); i2++) {
                View findViewById = viewGroup.findViewById(this.mTargetIds.get(i2).intValue());
                if (findViewById != null) {
                    x20 x20Var = new x20(findViewById);
                    if (z) {
                        captureStartValues(x20Var);
                    } else {
                        captureEndValues(x20Var);
                    }
                    x20Var.c.add(this);
                    capturePropagationValues(x20Var);
                    addViewValues(z ? this.mStartValues : this.mEndValues, findViewById, x20Var);
                }
            }
            for (int i3 = 0; i3 < this.mTargets.size(); i3++) {
                View view = this.mTargets.get(i3);
                x20 x20Var2 = new x20(view);
                if (z) {
                    captureStartValues(x20Var2);
                } else {
                    captureEndValues(x20Var2);
                }
                x20Var2.c.add(this);
                capturePropagationValues(x20Var2);
                addViewValues(z ? this.mStartValues : this.mEndValues, view, x20Var2);
            }
        } else {
            captureHierarchy(viewGroup, z);
        }
        if (z || (b4Var = this.mNameOverrides) == null) {
            return;
        }
        int size = b4Var.size();
        ArrayList arrayList3 = new ArrayList(size);
        int i4 = 0;
        while (true) {
            if (i4 < size) {
                arrayList3.add(this.mStartValues.d.remove((String) this.mNameOverrides.i(i4)));
                i4++;
            }
        }
        for (i = 0; i < size; i++) {
            View view2 = (View) arrayList3.get(i);
            if (view2 != null) {
                this.mStartValues.d.put((String) this.mNameOverrides.m(i), view2);
            }
        }
    }

    public void clearValues(boolean z) {
        y20 y20Var;
        if (z) {
            this.mStartValues.a.clear();
            this.mStartValues.b.clear();
            y20Var = this.mStartValues;
        } else {
            this.mEndValues.a.clear();
            this.mEndValues.b.clear();
            y20Var = this.mEndValues;
        }
        y20Var.c.m2259c();
    }

    public Transition clone() {
        try {
            Transition transition = (Transition) super.clone();
            transition.mAnimators = new ArrayList<>();
            transition.mStartValues = new y20();
            transition.mEndValues = new y20();
            transition.mStartValuesList = null;
            transition.mEndValuesList = null;
            return transition;
        } catch (CloneNotSupportedException e) {
            return null;
        }
    }

    public Animator createAnimator(ViewGroup viewGroup, x20 x20Var, x20 x20Var2) {
        return null;
    }

    /* JADX WARN: Type inference failed for: r0v55, types: [long] */
    public void createAnimators(ViewGroup viewGroup, y20 y20Var, y20 y20Var2, ArrayList<x20> arrayList, ArrayList<x20> arrayList2) {
        int i;
        char c;
        Animator animator;
        x20 x20Var;
        View view;
        b4<Animator, C0196d> runningAnimators = getRunningAnimators();
        SparseIntArray sparseIntArray = new SparseIntArray();
        int size = arrayList.size();
        char c2 = 65535;
        int i2 = 0;
        while (i2 < size) {
            x20 x20Var2 = arrayList.get(i2);
            x20 x20Var3 = arrayList2.get(i2);
            x20 x20Var4 = x20Var2;
            if (x20Var2 != null) {
                x20Var4 = x20Var2;
                if (!x20Var2.c.contains(this)) {
                    x20Var4 = null;
                }
            }
            x20 x20Var5 = x20Var3;
            if (x20Var3 != null) {
                x20Var5 = x20Var3;
                if (!x20Var3.c.contains(this)) {
                    x20Var5 = null;
                }
            }
            if (x20Var4 != null || x20Var5 != null) {
                if (x20Var4 == null || x20Var5 == null || isTransitionRequired(x20Var4, x20Var5)) {
                    Animator createAnimator = createAnimator(viewGroup, x20Var4, x20Var5);
                    if (createAnimator != null) {
                        if (x20Var5 != null) {
                            View view2 = x20Var5.b;
                            String[] transitionProperties = getTransitionProperties();
                            if (transitionProperties != null && transitionProperties.length > 0) {
                                x20 x20Var6 = new x20(view2);
                                x20 x20Var7 = (x20) y20Var2.a.get(view2);
                                int i3 = i2;
                                if (x20Var7 != null) {
                                    int i4 = 0;
                                    while (true) {
                                        i3 = i2;
                                        if (i4 >= transitionProperties.length) {
                                            break;
                                        }
                                        x20Var6.a.put(transitionProperties[i4], x20Var7.a.get(transitionProperties[i4]));
                                        i4++;
                                    }
                                }
                                i2 = i3;
                                int size2 = runningAnimators.size();
                                int i5 = 0;
                                while (true) {
                                    if (i5 >= size2) {
                                        x20Var = x20Var6;
                                        break;
                                    }
                                    C0196d c0196d = (C0196d) runningAnimators.get((Animator) runningAnimators.i(i5));
                                    if (c0196d.f1530c != null && c0196d.f1528a == view2 && c0196d.f1529b.equals(getName()) && c0196d.f1530c.equals(x20Var6)) {
                                        createAnimator = null;
                                        x20Var = x20Var6;
                                        break;
                                    }
                                    i5++;
                                }
                            } else {
                                x20Var = null;
                            }
                            animator = createAnimator;
                            view = view2;
                        } else {
                            animator = createAnimator;
                            x20Var = null;
                            view = x20Var4.b;
                        }
                        c = c2;
                        i = i2;
                        if (animator != null) {
                            v20 v20Var = this.mPropagation;
                            c = c2;
                            if (v20Var != null) {
                                long c3 = v20Var.c(viewGroup, this, x20Var4, x20Var5);
                                sparseIntArray.put(this.mAnimators.size(), (int) c3);
                                c = Math.min(c3, (long) c2);
                            }
                            runningAnimators.put(animator, new C0196d(view, getName(), this, i30.d(viewGroup), x20Var));
                            this.mAnimators.add(animator);
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
                Animator animator2 = this.mAnimators.get(sparseIntArray.keyAt(i6));
                animator2.setStartDelay((sparseIntArray.valueAt(i6) - c2) + animator2.getStartDelay());
            }
        }
    }

    public void end() {
        int i = this.mNumInstances - 1;
        this.mNumInstances = i;
        if (i == 0) {
            ArrayList<AbstractC0199g> arrayList = this.mListeners;
            if (arrayList != null && arrayList.size() > 0) {
                ArrayList arrayList2 = (ArrayList) this.mListeners.clone();
                int size = arrayList2.size();
                for (int i2 = 0; i2 < size; i2++) {
                    ((AbstractC0199g) arrayList2.get(i2)).onTransitionEnd(this);
                }
            }
            for (int i3 = 0; i3 < this.mStartValues.c.m2248o(); i3++) {
                View view = (View) this.mStartValues.c.m2247p(i3);
                if (view != null) {
                    jb.w0(view, false);
                }
            }
            for (int i4 = 0; i4 < this.mEndValues.c.m2248o(); i4++) {
                View view2 = (View) this.mEndValues.c.m2247p(i4);
                if (view2 != null) {
                    jb.w0(view2, false);
                }
            }
            this.mEnded = true;
        }
    }

    public Transition excludeChildren(int i, boolean z) {
        this.mTargetIdChildExcludes = excludeId(this.mTargetIdChildExcludes, i, z);
        return this;
    }

    public Transition excludeChildren(View view, boolean z) {
        this.mTargetChildExcludes = excludeView(this.mTargetChildExcludes, view, z);
        return this;
    }

    public Transition excludeChildren(Class<?> cls, boolean z) {
        this.mTargetTypeChildExcludes = excludeType(this.mTargetTypeChildExcludes, cls, z);
        return this;
    }

    public Transition excludeTarget(int i, boolean z) {
        this.mTargetIdExcludes = excludeId(this.mTargetIdExcludes, i, z);
        return this;
    }

    public Transition excludeTarget(View view, boolean z) {
        this.mTargetExcludes = excludeView(this.mTargetExcludes, view, z);
        return this;
    }

    public Transition excludeTarget(Class<?> cls, boolean z) {
        this.mTargetTypeExcludes = excludeType(this.mTargetTypeExcludes, cls, z);
        return this;
    }

    public Transition excludeTarget(String str, boolean z) {
        this.mTargetNameExcludes = excludeObject(this.mTargetNameExcludes, str, z);
        return this;
    }

    public void forceToEnd(ViewGroup viewGroup) {
        b4<Animator, C0196d> runningAnimators = getRunningAnimators();
        int size = runningAnimators.size();
        if (viewGroup == null || size == 0) {
            return;
        }
        s30 d = i30.d(viewGroup);
        b4 b4Var = new b4(runningAnimators);
        runningAnimators.clear();
        while (true) {
            size--;
            if (size < 0) {
                return;
            }
            C0196d c0196d = (C0196d) b4Var.m(size);
            if (c0196d.f1528a != null && d != null && d.equals(c0196d.f1531d)) {
                ((Animator) b4Var.i(size)).end();
            }
        }
    }

    public long getDuration() {
        return this.mDuration;
    }

    public Rect getEpicenter() {
        AbstractC0198f abstractC0198f = this.mEpicenterCallback;
        if (abstractC0198f == null) {
            return null;
        }
        return abstractC0198f.m5992a(this);
    }

    public AbstractC0198f getEpicenterCallback() {
        return this.mEpicenterCallback;
    }

    public TimeInterpolator getInterpolator() {
        return this.mInterpolator;
    }

    public x20 getMatchedTransitionValues(View view, boolean z) {
        int i;
        TransitionSet transitionSet = this.mParent;
        if (transitionSet != null) {
            return transitionSet.getMatchedTransitionValues(view, z);
        }
        ArrayList<x20> arrayList = z ? this.mStartValuesList : this.mEndValuesList;
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
            x20 x20Var = arrayList.get(i2);
            if (x20Var == null) {
                return null;
            }
            if (x20Var.b == view) {
                i = i2;
                break;
            }
            i2++;
        }
        x20 x20Var2 = null;
        if (i >= 0) {
            x20Var2 = (z ? this.mEndValuesList : this.mStartValuesList).get(i);
        }
        return x20Var2;
    }

    public String getName() {
        return this.mName;
    }

    public PathMotion getPathMotion() {
        return this.mPathMotion;
    }

    public v20 getPropagation() {
        return this.mPropagation;
    }

    public long getStartDelay() {
        return this.mStartDelay;
    }

    public List<Integer> getTargetIds() {
        return this.mTargetIds;
    }

    public List<String> getTargetNames() {
        return this.mTargetNames;
    }

    public List<Class<?>> getTargetTypes() {
        return this.mTargetTypes;
    }

    public List<View> getTargets() {
        return this.mTargets;
    }

    public String[] getTransitionProperties() {
        return null;
    }

    public x20 getTransitionValues(View view, boolean z) {
        TransitionSet transitionSet = this.mParent;
        if (transitionSet != null) {
            return transitionSet.getTransitionValues(view, z);
        }
        return (x20) (z ? this.mStartValues : this.mEndValues).a.get(view);
    }

    public boolean isTransitionRequired(x20 x20Var, x20 x20Var2) {
        boolean z = false;
        if (x20Var != null) {
            z = false;
            if (x20Var2 != null) {
                String[] transitionProperties = getTransitionProperties();
                if (transitionProperties != null) {
                    int length = transitionProperties.length;
                    int i = 0;
                    while (true) {
                        z = false;
                        if (i >= length) {
                            break;
                        } else if (isValueChanged(x20Var, x20Var2, transitionProperties[i])) {
                            break;
                        } else {
                            i++;
                        }
                    }
                } else {
                    Iterator it = x20Var.a.keySet().iterator();
                    do {
                        z = false;
                        if (!it.hasNext()) {
                            break;
                        }
                    } while (!isValueChanged(x20Var, x20Var2, (String) it.next()));
                    z = true;
                }
            }
        }
        return z;
    }

    public boolean isValidTarget(View view) {
        ArrayList<Class<?>> arrayList;
        ArrayList<String> arrayList2;
        int id = view.getId();
        ArrayList<Integer> arrayList3 = this.mTargetIdExcludes;
        if (arrayList3 == null || !arrayList3.contains(Integer.valueOf(id))) {
            ArrayList<View> arrayList4 = this.mTargetExcludes;
            if (arrayList4 != null && arrayList4.contains(view)) {
                return false;
            }
            ArrayList<Class<?>> arrayList5 = this.mTargetTypeExcludes;
            if (arrayList5 != null) {
                int size = arrayList5.size();
                for (int i = 0; i < size; i++) {
                    if (this.mTargetTypeExcludes.get(i).isInstance(view)) {
                        return false;
                    }
                }
            }
            if (this.mTargetNameExcludes != null && jb.J(view) != null && this.mTargetNameExcludes.contains(jb.J(view))) {
                return false;
            }
            if ((this.mTargetIds.size() == 0 && this.mTargets.size() == 0 && (((arrayList = this.mTargetTypes) == null || arrayList.isEmpty()) && ((arrayList2 = this.mTargetNames) == null || arrayList2.isEmpty()))) || this.mTargetIds.contains(Integer.valueOf(id)) || this.mTargets.contains(view)) {
                return true;
            }
            ArrayList<String> arrayList6 = this.mTargetNames;
            if (arrayList6 != null && arrayList6.contains(jb.J(view))) {
                return true;
            }
            if (this.mTargetTypes == null) {
                return false;
            }
            for (int i2 = 0; i2 < this.mTargetTypes.size(); i2++) {
                if (this.mTargetTypes.get(i2).isInstance(view)) {
                    return true;
                }
            }
            return false;
        }
        return false;
    }

    public void pause(View view) {
        if (!this.mEnded) {
            b4<Animator, C0196d> runningAnimators = getRunningAnimators();
            int size = runningAnimators.size();
            s30 d = i30.d(view);
            while (true) {
                size--;
                if (size < 0) {
                    break;
                }
                C0196d c0196d = (C0196d) runningAnimators.m(size);
                if (c0196d.f1528a != null && d.equals(c0196d.f1531d)) {
                    z10.b((Animator) runningAnimators.i(size));
                }
            }
            ArrayList<AbstractC0199g> arrayList = this.mListeners;
            if (arrayList != null && arrayList.size() > 0) {
                ArrayList arrayList2 = (ArrayList) this.mListeners.clone();
                int size2 = arrayList2.size();
                for (int i = 0; i < size2; i++) {
                    ((AbstractC0199g) arrayList2.get(i)).onTransitionPause(this);
                }
            }
            this.mPaused = true;
        }
    }

    public void playTransition(ViewGroup viewGroup) {
        C0196d c0196d;
        this.mStartValuesList = new ArrayList<>();
        this.mEndValuesList = new ArrayList<>();
        matchStartAndEnd(this.mStartValues, this.mEndValues);
        b4<Animator, C0196d> runningAnimators = getRunningAnimators();
        int size = runningAnimators.size();
        s30 d = i30.d(viewGroup);
        while (true) {
            size--;
            if (size < 0) {
                createAnimators(viewGroup, this.mStartValues, this.mEndValues, this.mStartValuesList, this.mEndValuesList);
                runAnimators();
                return;
            }
            Animator animator = (Animator) runningAnimators.i(size);
            if (animator != null && (c0196d = (C0196d) runningAnimators.get(animator)) != null && c0196d.f1528a != null && d.equals(c0196d.f1531d)) {
                x20 x20Var = c0196d.f1530c;
                View view = c0196d.f1528a;
                x20 transitionValues = getTransitionValues(view, true);
                x20 matchedTransitionValues = getMatchedTransitionValues(view, true);
                x20 x20Var2 = matchedTransitionValues;
                if (transitionValues == null) {
                    x20Var2 = matchedTransitionValues;
                    if (matchedTransitionValues == null) {
                        x20Var2 = (x20) this.mEndValues.a.get(view);
                    }
                }
                if (!(transitionValues == null && x20Var2 == null) && c0196d.f1532e.isTransitionRequired(x20Var, x20Var2)) {
                    if (animator.isRunning() || animator.isStarted()) {
                        animator.cancel();
                    } else {
                        runningAnimators.remove(animator);
                    }
                }
            }
        }
    }

    public Transition removeListener(AbstractC0199g abstractC0199g) {
        ArrayList<AbstractC0199g> arrayList = this.mListeners;
        if (arrayList == null) {
            return this;
        }
        arrayList.remove(abstractC0199g);
        if (this.mListeners.size() == 0) {
            this.mListeners = null;
        }
        return this;
    }

    public Transition removeTarget(int i) {
        if (i != 0) {
            this.mTargetIds.remove(Integer.valueOf(i));
        }
        return this;
    }

    public Transition removeTarget(View view) {
        this.mTargets.remove(view);
        return this;
    }

    public Transition removeTarget(Class<?> cls) {
        ArrayList<Class<?>> arrayList = this.mTargetTypes;
        if (arrayList != null) {
            arrayList.remove(cls);
        }
        return this;
    }

    public Transition removeTarget(String str) {
        ArrayList<String> arrayList = this.mTargetNames;
        if (arrayList != null) {
            arrayList.remove(str);
        }
        return this;
    }

    public void resume(View view) {
        if (this.mPaused) {
            if (!this.mEnded) {
                b4<Animator, C0196d> runningAnimators = getRunningAnimators();
                int size = runningAnimators.size();
                s30 d = i30.d(view);
                while (true) {
                    size--;
                    if (size < 0) {
                        break;
                    }
                    C0196d c0196d = (C0196d) runningAnimators.m(size);
                    if (c0196d.f1528a != null && d.equals(c0196d.f1531d)) {
                        z10.c((Animator) runningAnimators.i(size));
                    }
                }
                ArrayList<AbstractC0199g> arrayList = this.mListeners;
                if (arrayList != null && arrayList.size() > 0) {
                    ArrayList arrayList2 = (ArrayList) this.mListeners.clone();
                    int size2 = arrayList2.size();
                    for (int i = 0; i < size2; i++) {
                        ((AbstractC0199g) arrayList2.get(i)).onTransitionResume(this);
                    }
                }
            }
            this.mPaused = false;
        }
    }

    public void runAnimators() {
        start();
        b4<Animator, C0196d> runningAnimators = getRunningAnimators();
        Iterator<Animator> it = this.mAnimators.iterator();
        while (it.hasNext()) {
            Animator next = it.next();
            if (runningAnimators.containsKey(next)) {
                start();
                runAnimator(next, runningAnimators);
            }
        }
        this.mAnimators.clear();
        end();
    }

    public void setCanRemoveViews(boolean z) {
        this.mCanRemoveViews = z;
    }

    public Transition setDuration(long j) {
        this.mDuration = j;
        return this;
    }

    public void setEpicenterCallback(AbstractC0198f abstractC0198f) {
        this.mEpicenterCallback = abstractC0198f;
    }

    public Transition setInterpolator(TimeInterpolator timeInterpolator) {
        this.mInterpolator = timeInterpolator;
        return this;
    }

    public void setMatchOrder(int... iArr) {
        if (iArr == null || iArr.length == 0) {
            this.mMatchOrder = DEFAULT_MATCH_ORDER;
            return;
        }
        for (int i = 0; i < iArr.length; i++) {
            if (!isValidMatch(iArr[i])) {
                throw new IllegalArgumentException("matches contains invalid value");
            }
            if (alreadyContains(iArr, i)) {
                throw new IllegalArgumentException("matches contains a duplicate value");
            }
        }
        this.mMatchOrder = (int[]) iArr.clone();
    }

    public void setPathMotion(PathMotion pathMotion) {
        PathMotion pathMotion2 = pathMotion;
        if (pathMotion == null) {
            pathMotion2 = STRAIGHT_PATH_MOTION;
        }
        this.mPathMotion = pathMotion2;
    }

    public void setPropagation(v20 v20Var) {
        this.mPropagation = v20Var;
    }

    public Transition setSceneRoot(ViewGroup viewGroup) {
        this.mSceneRoot = viewGroup;
        return this;
    }

    public Transition setStartDelay(long j) {
        this.mStartDelay = j;
        return this;
    }

    public void start() {
        if (this.mNumInstances == 0) {
            ArrayList<AbstractC0199g> arrayList = this.mListeners;
            if (arrayList != null && arrayList.size() > 0) {
                ArrayList arrayList2 = (ArrayList) this.mListeners.clone();
                int size = arrayList2.size();
                for (int i = 0; i < size; i++) {
                    ((AbstractC0199g) arrayList2.get(i)).onTransitionStart(this);
                }
            }
            this.mEnded = false;
        }
        this.mNumInstances++;
    }

    public String toString() {
        return toString("");
    }

    /* JADX WARN: Code restructure failed: missing block: B:14:0x00f5, code lost:
        if (r5.mTargets.size() > 0) goto L15;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public java.lang.String toString(java.lang.String r6) {
        /*
            Method dump skipped, instructions count: 506
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.transition.Transition.toString(java.lang.String):java.lang.String");
    }
}

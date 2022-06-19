package androidx.p045j;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.animation.TimeInterpolator;
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
import androidx.core.p015a.p016a.C0424g;
import androidx.core.p023g.C0552u;
import androidx.p014c.C0374a;
import androidx.p014c.C0379d;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.StringTokenizer;
import org.xmlpull.v1.XmlPullParser;
/* renamed from: androidx.j.n */
/* loaded from: classes-dex2jar.jar:androidx/j/n.class */
public abstract class AbstractC0838n implements Cloneable {
    static final boolean DBG = false;
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
    private ArrayList<C0855t> mEndValuesList;
    private AbstractC0844c mEpicenterCallback;
    private C0374a<String, String> mNameOverrides;
    AbstractC0850q mPropagation;
    private ArrayList<C0855t> mStartValuesList;
    private static final int[] DEFAULT_MATCH_ORDER = {2, 1, 3, 4};
    private static final AbstractC0830g STRAIGHT_PATH_MOTION = new AbstractC0830g() { // from class: androidx.j.n.1
        @Override // androidx.p045j.AbstractC0830g
        /* renamed from: a */
        public Path mo5258a(float f, float f2, float f3, float f4) {
            Path path = new Path();
            path.moveTo(f, f2);
            path.lineTo(f3, f4);
            return path;
        }
    };
    private static ThreadLocal<C0374a<Animator, C0842a>> sRunningAnimators = new ThreadLocal<>();
    private String mName = getClass().getName();
    private long mStartDelay = -1;
    long mDuration = -1;
    private TimeInterpolator mInterpolator = null;
    ArrayList<Integer> mTargetIds = new ArrayList<>();
    ArrayList<View> mTargets = new ArrayList<>();
    private ArrayList<String> mTargetNames = null;
    private ArrayList<Class> mTargetTypes = null;
    private ArrayList<Integer> mTargetIdExcludes = null;
    private ArrayList<View> mTargetExcludes = null;
    private ArrayList<Class> mTargetTypeExcludes = null;
    private ArrayList<String> mTargetNameExcludes = null;
    private ArrayList<Integer> mTargetIdChildExcludes = null;
    private ArrayList<View> mTargetChildExcludes = null;
    private ArrayList<Class> mTargetTypeChildExcludes = null;
    private C0856u mStartValues = new C0856u();
    private C0856u mEndValues = new C0856u();
    C0851r mParent = null;
    private int[] mMatchOrder = DEFAULT_MATCH_ORDER;
    private ViewGroup mSceneRoot = null;
    boolean mCanRemoveViews = false;
    ArrayList<Animator> mCurrentAnimators = new ArrayList<>();
    private int mNumInstances = 0;
    private boolean mPaused = false;
    private boolean mEnded = false;
    private ArrayList<AbstractC0845d> mListeners = null;
    private ArrayList<Animator> mAnimators = new ArrayList<>();
    private AbstractC0830g mPathMotion = STRAIGHT_PATH_MOTION;

    /* renamed from: androidx.j.n$a */
    /* loaded from: classes-dex2jar.jar:androidx/j/n$a.class */
    public static class C0842a {

        /* renamed from: a */
        View f2674a;

        /* renamed from: b */
        String f2675b;

        /* renamed from: c */
        C0855t f2676c;

        /* renamed from: d */
        AbstractC0807am f2677d;

        /* renamed from: e */
        AbstractC0838n f2678e;

        C0842a(View view, String str, AbstractC0838n abstractC0838n, AbstractC0807am abstractC0807am, C0855t c0855t) {
            this.f2674a = view;
            this.f2675b = str;
            this.f2676c = c0855t;
            this.f2677d = abstractC0807am;
            this.f2678e = abstractC0838n;
        }
    }

    /* renamed from: androidx.j.n$b */
    /* loaded from: classes-dex2jar.jar:androidx/j/n$b.class */
    public static class C0843b {
        /* renamed from: a */
        static <T> ArrayList<T> m5257a(ArrayList<T> arrayList, T t) {
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
        static <T> ArrayList<T> m5256b(ArrayList<T> arrayList, T t) {
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

    /* renamed from: androidx.j.n$c */
    /* loaded from: classes-dex2jar.jar:androidx/j/n$c.class */
    public static abstract class AbstractC0844c {
        /* renamed from: a */
        public abstract Rect mo5255a(AbstractC0838n abstractC0838n);
    }

    /* renamed from: androidx.j.n$d */
    /* loaded from: classes-dex2jar.jar:androidx/j/n$d.class */
    public interface AbstractC0845d {
        /* renamed from: a */
        void mo5254a(AbstractC0838n abstractC0838n);

        /* renamed from: b */
        void mo5224b(AbstractC0838n abstractC0838n);

        /* renamed from: c */
        void mo5253c(AbstractC0838n abstractC0838n);

        /* renamed from: d */
        void mo5252d(AbstractC0838n abstractC0838n);

        /* renamed from: e */
        void mo5223e(AbstractC0838n abstractC0838n);
    }

    public AbstractC0838n() {
    }

    public AbstractC0838n(Context context, AttributeSet attributeSet) {
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, C0837m.f2662c);
        XmlResourceParser xmlResourceParser = (XmlResourceParser) attributeSet;
        long m6691a = C0424g.m6691a(obtainStyledAttributes, (XmlPullParser) xmlResourceParser, "duration", 1, -1);
        if (m6691a >= 0) {
            setDuration(m6691a);
        }
        long m6691a2 = C0424g.m6691a(obtainStyledAttributes, (XmlPullParser) xmlResourceParser, "startDelay", 2, -1);
        if (m6691a2 > 0) {
            setStartDelay(m6691a2);
        }
        int m6685c = C0424g.m6685c(obtainStyledAttributes, xmlResourceParser, "interpolator", 0, 0);
        if (m6685c > 0) {
            setInterpolator(AnimationUtils.loadInterpolator(context, m6685c));
        }
        String m6693a = C0424g.m6693a(obtainStyledAttributes, xmlResourceParser, "matchOrder", 3);
        if (m6693a != null) {
            setMatchOrder(parseMatchOrder(m6693a));
        }
        obtainStyledAttributes.recycle();
    }

    private void addUnmatched(C0374a<View, C0855t> c0374a, C0374a<View, C0855t> c0374a2) {
        int i;
        int i2 = 0;
        while (true) {
            if (i2 < c0374a.size()) {
                C0855t c = c0374a.m6809c(i2);
                if (isValidTarget(c.f2698b)) {
                    this.mStartValuesList.add(c);
                    this.mEndValuesList.add(null);
                }
                i2++;
            }
        }
        for (i = 0; i < c0374a2.size(); i++) {
            C0855t c2 = c0374a2.m6809c(i);
            if (isValidTarget(c2.f2698b)) {
                this.mEndValuesList.add(c2);
                this.mStartValuesList.add(null);
            }
        }
    }

    private static void addViewValues(C0856u c0856u, View view, C0855t c0855t) {
        c0856u.f2700a.put(view, c0855t);
        int id = view.getId();
        if (id >= 0) {
            if (c0856u.f2701b.indexOfKey(id) >= 0) {
                c0856u.f2701b.put(id, null);
            } else {
                c0856u.f2701b.put(id, view);
            }
        }
        String m6230q = C0552u.m6230q(view);
        if (m6230q != null) {
            if (c0856u.f2703d.containsKey(m6230q)) {
                c0856u.f2703d.put(m6230q, null);
            } else {
                c0856u.f2703d.put(m6230q, view);
            }
        }
        if (view.getParent() instanceof ListView) {
            ListView listView = (ListView) view.getParent();
            if (!listView.getAdapter().hasStableIds()) {
                return;
            }
            long itemIdAtPosition = listView.getItemIdAtPosition(listView.getPositionForView(view));
            if (c0856u.f2702c.m6841d(itemIdAtPosition) < 0) {
                C0552u.m6262a(view, true);
                c0856u.f2702c.m6847b(itemIdAtPosition, view);
                return;
            }
            View m6852a = c0856u.f2702c.m6852a(itemIdAtPosition);
            if (m6852a == null) {
                return;
            }
            C0552u.m6262a(m6852a, false);
            c0856u.f2702c.m6847b(itemIdAtPosition, null);
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
        ArrayList<Class> arrayList3 = this.mTargetTypeExcludes;
        if (arrayList3 != null) {
            int size = arrayList3.size();
            for (int i = 0; i < size; i++) {
                if (this.mTargetTypeExcludes.get(i).isInstance(view)) {
                    return;
                }
            }
        }
        if (view.getParent() instanceof ViewGroup) {
            C0855t c0855t = new C0855t();
            c0855t.f2698b = view;
            if (z) {
                captureStartValues(c0855t);
            } else {
                captureEndValues(c0855t);
            }
            c0855t.f2699c.add(this);
            capturePropagationValues(c0855t);
            if (z) {
                addViewValues(this.mStartValues, view, c0855t);
            } else {
                addViewValues(this.mEndValues, view, c0855t);
            }
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
        ArrayList<Class> arrayList6 = this.mTargetTypeChildExcludes;
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
            arrayList2 = z ? C0843b.m5257a(arrayList, Integer.valueOf(i)) : C0843b.m5256b(arrayList, Integer.valueOf(i));
        }
        return arrayList2;
    }

    private static <T> ArrayList<T> excludeObject(ArrayList<T> arrayList, T t, boolean z) {
        ArrayList<T> arrayList2 = arrayList;
        if (t != null) {
            arrayList2 = z ? C0843b.m5257a(arrayList, t) : C0843b.m5256b(arrayList, t);
        }
        return arrayList2;
    }

    private ArrayList<Class> excludeType(ArrayList<Class> arrayList, Class cls, boolean z) {
        ArrayList<Class> arrayList2 = arrayList;
        if (cls != null) {
            arrayList2 = z ? C0843b.m5257a(arrayList, cls) : C0843b.m5256b(arrayList, cls);
        }
        return arrayList2;
    }

    private ArrayList<View> excludeView(ArrayList<View> arrayList, View view, boolean z) {
        ArrayList<View> arrayList2 = arrayList;
        if (view != null) {
            arrayList2 = z ? C0843b.m5257a(arrayList, view) : C0843b.m5256b(arrayList, view);
        }
        return arrayList2;
    }

    private static C0374a<Animator, C0842a> getRunningAnimators() {
        C0374a<Animator, C0842a> c0374a = sRunningAnimators.get();
        C0374a<Animator, C0842a> c0374a2 = c0374a;
        if (c0374a == null) {
            c0374a2 = new C0374a<>();
            sRunningAnimators.set(c0374a2);
        }
        return c0374a2;
    }

    private static boolean isValidMatch(int i) {
        boolean z = true;
        if (i < 1 || i > 4) {
            z = false;
        }
        return z;
    }

    private static boolean isValueChanged(C0855t c0855t, C0855t c0855t2, String str) {
        boolean z;
        Object obj = c0855t.f2697a.get(str);
        Object obj2 = c0855t2.f2697a.get(str);
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

    private void matchIds(C0374a<View, C0855t> c0374a, C0374a<View, C0855t> c0374a2, SparseArray<View> sparseArray, SparseArray<View> sparseArray2) {
        View view;
        int size = sparseArray.size();
        for (int i = 0; i < size; i++) {
            View valueAt = sparseArray.valueAt(i);
            if (valueAt != null && isValidTarget(valueAt) && (view = sparseArray2.get(sparseArray.keyAt(i))) != null && isValidTarget(view)) {
                C0855t c0855t = c0374a.get(valueAt);
                C0855t c0855t2 = c0374a2.get(view);
                if (c0855t != null && c0855t2 != null) {
                    this.mStartValuesList.add(c0855t);
                    this.mEndValuesList.add(c0855t2);
                    c0374a.remove(valueAt);
                    c0374a2.remove(view);
                }
            }
        }
    }

    private void matchInstances(C0374a<View, C0855t> c0374a, C0374a<View, C0855t> c0374a2) {
        C0855t remove;
        for (int size = c0374a.size() - 1; size >= 0; size--) {
            View b = c0374a.m6811b(size);
            if (b != null && isValidTarget(b) && (remove = c0374a2.remove(b)) != null && remove.f2698b != null && isValidTarget(remove.f2698b)) {
                this.mStartValuesList.add(c0374a.m6808d(size));
                this.mEndValuesList.add(remove);
            }
        }
    }

    private void matchItemIds(C0374a<View, C0855t> c0374a, C0374a<View, C0855t> c0374a2, C0379d<View> c0379d, C0379d<View> c0379d2) {
        View m6852a;
        int m6850b = c0379d.m6850b();
        for (int i = 0; i < m6850b; i++) {
            View m6845c = c0379d.m6845c(i);
            if (m6845c != null && isValidTarget(m6845c) && (m6852a = c0379d2.m6852a(c0379d.m6849b(i))) != null && isValidTarget(m6852a)) {
                C0855t c0855t = c0374a.get(m6845c);
                C0855t c0855t2 = c0374a2.get(m6852a);
                if (c0855t != null && c0855t2 != null) {
                    this.mStartValuesList.add(c0855t);
                    this.mEndValuesList.add(c0855t2);
                    c0374a.remove(m6845c);
                    c0374a2.remove(m6852a);
                }
            }
        }
    }

    private void matchNames(C0374a<View, C0855t> c0374a, C0374a<View, C0855t> c0374a2, C0374a<String, View> c0374a3, C0374a<String, View> c0374a4) {
        View view;
        int size = c0374a3.size();
        for (int i = 0; i < size; i++) {
            View c = c0374a3.m6809c(i);
            if (c != null && isValidTarget(c) && (view = c0374a4.get(c0374a3.m6811b(i))) != null && isValidTarget(view)) {
                C0855t c0855t = c0374a.get(c);
                C0855t c0855t2 = c0374a2.get(view);
                if (c0855t != null && c0855t2 != null) {
                    this.mStartValuesList.add(c0855t);
                    this.mEndValuesList.add(c0855t2);
                    c0374a.remove(c);
                    c0374a2.remove(view);
                }
            }
        }
    }

    private void matchStartAndEnd(C0856u c0856u, C0856u c0856u2) {
        C0374a<View, C0855t> c0374a = new C0374a<>(c0856u.f2700a);
        C0374a<View, C0855t> c0374a2 = new C0374a<>(c0856u2.f2700a);
        int i = 0;
        while (true) {
            int[] iArr = this.mMatchOrder;
            if (i >= iArr.length) {
                addUnmatched(c0374a, c0374a2);
                return;
            }
            int i2 = iArr[i];
            if (i2 == 1) {
                matchInstances(c0374a, c0374a2);
            } else if (i2 == 2) {
                matchNames(c0374a, c0374a2, c0856u.f2703d, c0856u2.f2703d);
            } else if (i2 == 3) {
                matchIds(c0374a, c0374a2, c0856u.f2701b, c0856u2.f2701b);
            } else if (i2 == 4) {
                matchItemIds(c0374a, c0374a2, c0856u.f2702c, c0856u2.f2702c);
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
            if (MATCH_ID_STR.equalsIgnoreCase(trim)) {
                iArr[i] = 3;
            } else if (MATCH_INSTANCE_STR.equalsIgnoreCase(trim)) {
                iArr[i] = 1;
            } else if ("name".equalsIgnoreCase(trim)) {
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

    private void runAnimator(Animator animator, final C0374a<Animator, C0842a> c0374a) {
        if (animator != null) {
            animator.addListener(new AnimatorListenerAdapter() { // from class: androidx.j.n.2
                @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
                public void onAnimationEnd(Animator animator2) {
                    c0374a.remove(animator2);
                    AbstractC0838n.this.mCurrentAnimators.remove(animator2);
                }

                @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
                public void onAnimationStart(Animator animator2) {
                    AbstractC0838n.this.mCurrentAnimators.add(animator2);
                }
            });
            animate(animator);
        }
    }

    public AbstractC0838n addListener(AbstractC0845d abstractC0845d) {
        if (this.mListeners == null) {
            this.mListeners = new ArrayList<>();
        }
        this.mListeners.add(abstractC0845d);
        return this;
    }

    public AbstractC0838n addTarget(int i) {
        if (i != 0) {
            this.mTargetIds.add(Integer.valueOf(i));
        }
        return this;
    }

    public AbstractC0838n addTarget(View view) {
        this.mTargets.add(view);
        return this;
    }

    public AbstractC0838n addTarget(Class cls) {
        if (this.mTargetTypes == null) {
            this.mTargetTypes = new ArrayList<>();
        }
        this.mTargetTypes.add(cls);
        return this;
    }

    public AbstractC0838n addTarget(String str) {
        if (this.mTargetNames == null) {
            this.mTargetNames = new ArrayList<>();
        }
        this.mTargetNames.add(str);
        return this;
    }

    protected void animate(Animator animator) {
        if (animator == null) {
            end();
            return;
        }
        if (getDuration() >= 0) {
            animator.setDuration(getDuration());
        }
        if (getStartDelay() >= 0) {
            animator.setStartDelay(getStartDelay());
        }
        if (getInterpolator() != null) {
            animator.setInterpolator(getInterpolator());
        }
        animator.addListener(new AnimatorListenerAdapter() { // from class: androidx.j.n.3
            @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
            public void onAnimationEnd(Animator animator2) {
                AbstractC0838n.this.end();
                animator2.removeListener(this);
            }
        });
        animator.start();
    }

    public void cancel() {
        for (int size = this.mCurrentAnimators.size() - 1; size >= 0; size--) {
            this.mCurrentAnimators.get(size).cancel();
        }
        ArrayList<AbstractC0845d> arrayList = this.mListeners;
        if (arrayList == null || arrayList.size() <= 0) {
            return;
        }
        ArrayList arrayList2 = (ArrayList) this.mListeners.clone();
        int size2 = arrayList2.size();
        for (int i = 0; i < size2; i++) {
            ((AbstractC0845d) arrayList2.get(i)).mo5254a(this);
        }
    }

    public abstract void captureEndValues(C0855t c0855t);

    public void capturePropagationValues(C0855t c0855t) {
        String[] m5246a;
        boolean z;
        if (this.mPropagation == null || c0855t.f2697a.isEmpty() || (m5246a = this.mPropagation.m5246a()) == null) {
            return;
        }
        int i = 0;
        while (true) {
            if (i >= m5246a.length) {
                z = true;
                break;
            } else if (!c0855t.f2697a.containsKey(m5246a[i])) {
                z = false;
                break;
            } else {
                i++;
            }
        }
        if (z) {
            return;
        }
        this.mPropagation.m5244a(c0855t);
    }

    public abstract void captureStartValues(C0855t c0855t);

    public void captureValues(ViewGroup viewGroup, boolean z) {
        C0374a<String, String> c0374a;
        int i;
        ArrayList<String> arrayList;
        ArrayList<Class> arrayList2;
        clearValues(z);
        if ((this.mTargetIds.size() > 0 || this.mTargets.size() > 0) && (((arrayList = this.mTargetNames) == null || arrayList.isEmpty()) && ((arrayList2 = this.mTargetTypes) == null || arrayList2.isEmpty()))) {
            for (int i2 = 0; i2 < this.mTargetIds.size(); i2++) {
                View findViewById = viewGroup.findViewById(this.mTargetIds.get(i2).intValue());
                if (findViewById != null) {
                    C0855t c0855t = new C0855t();
                    c0855t.f2698b = findViewById;
                    if (z) {
                        captureStartValues(c0855t);
                    } else {
                        captureEndValues(c0855t);
                    }
                    c0855t.f2699c.add(this);
                    capturePropagationValues(c0855t);
                    if (z) {
                        addViewValues(this.mStartValues, findViewById, c0855t);
                    } else {
                        addViewValues(this.mEndValues, findViewById, c0855t);
                    }
                }
            }
            for (int i3 = 0; i3 < this.mTargets.size(); i3++) {
                View view = this.mTargets.get(i3);
                C0855t c0855t2 = new C0855t();
                c0855t2.f2698b = view;
                if (z) {
                    captureStartValues(c0855t2);
                } else {
                    captureEndValues(c0855t2);
                }
                c0855t2.f2699c.add(this);
                capturePropagationValues(c0855t2);
                if (z) {
                    addViewValues(this.mStartValues, view, c0855t2);
                } else {
                    addViewValues(this.mEndValues, view, c0855t2);
                }
            }
        } else {
            captureHierarchy(viewGroup, z);
        }
        if (z || (c0374a = this.mNameOverrides) == null) {
            return;
        }
        int size = c0374a.size();
        ArrayList arrayList3 = new ArrayList(size);
        int i4 = 0;
        while (true) {
            if (i4 < size) {
                arrayList3.add(this.mStartValues.f2703d.remove(this.mNameOverrides.m6811b(i4)));
                i4++;
            }
        }
        for (i = 0; i < size; i++) {
            View view2 = (View) arrayList3.get(i);
            if (view2 != null) {
                this.mStartValues.f2703d.put(this.mNameOverrides.m6809c(i), view2);
            }
        }
    }

    public void clearValues(boolean z) {
        if (z) {
            this.mStartValues.f2700a.clear();
            this.mStartValues.f2701b.clear();
            this.mStartValues.f2702c.m6846c();
            return;
        }
        this.mEndValues.f2700a.clear();
        this.mEndValues.f2701b.clear();
        this.mEndValues.f2702c.m6846c();
    }

    public AbstractC0838n clone() {
        try {
            AbstractC0838n abstractC0838n = (AbstractC0838n) super.clone();
            abstractC0838n.mAnimators = new ArrayList<>();
            abstractC0838n.mStartValues = new C0856u();
            abstractC0838n.mEndValues = new C0856u();
            abstractC0838n.mStartValuesList = null;
            abstractC0838n.mEndValuesList = null;
            return abstractC0838n;
        } catch (CloneNotSupportedException e) {
            return null;
        }
    }

    public Animator createAnimator(ViewGroup viewGroup, C0855t c0855t, C0855t c0855t2) {
        return null;
    }

    /* JADX WARN: Type inference failed for: r0v55, types: [long] */
    public void createAnimators(ViewGroup viewGroup, C0856u c0856u, C0856u c0856u2, ArrayList<C0855t> arrayList, ArrayList<C0855t> arrayList2) {
        int i;
        char c;
        Animator animator;
        C0855t c0855t;
        View view;
        C0374a<Animator, C0842a> runningAnimators = getRunningAnimators();
        SparseIntArray sparseIntArray = new SparseIntArray();
        int size = arrayList.size();
        char c2 = 65535;
        int i2 = 0;
        while (i2 < size) {
            C0855t c0855t2 = arrayList.get(i2);
            C0855t c0855t3 = arrayList2.get(i2);
            C0855t c0855t4 = c0855t2;
            if (c0855t2 != null) {
                c0855t4 = c0855t2;
                if (!c0855t2.f2699c.contains(this)) {
                    c0855t4 = null;
                }
            }
            C0855t c0855t5 = c0855t3;
            if (c0855t3 != null) {
                c0855t5 = c0855t3;
                if (!c0855t3.f2699c.contains(this)) {
                    c0855t5 = null;
                }
            }
            if (c0855t4 != null || c0855t5 != null) {
                if (c0855t4 == null || c0855t5 == null || isTransitionRequired(c0855t4, c0855t5)) {
                    Animator createAnimator = createAnimator(viewGroup, c0855t4, c0855t5);
                    if (createAnimator != null) {
                        if (c0855t5 != null) {
                            View view2 = c0855t5.f2698b;
                            String[] transitionProperties = getTransitionProperties();
                            if (view2 == null || transitionProperties == null || transitionProperties.length <= 0) {
                                c0855t = null;
                            } else {
                                C0855t c0855t6 = new C0855t();
                                c0855t6.f2698b = view2;
                                C0855t c0855t7 = c0856u2.f2700a.get(view2);
                                int i3 = i2;
                                if (c0855t7 != null) {
                                    int i4 = 0;
                                    while (true) {
                                        i3 = i2;
                                        if (i4 >= transitionProperties.length) {
                                            break;
                                        }
                                        c0855t6.f2697a.put(transitionProperties[i4], c0855t7.f2697a.get(transitionProperties[i4]));
                                        i4++;
                                    }
                                }
                                i2 = i3;
                                int size2 = runningAnimators.size();
                                int i5 = 0;
                                while (true) {
                                    if (i5 >= size2) {
                                        c0855t = c0855t6;
                                        break;
                                    }
                                    C0842a c0842a = runningAnimators.get(runningAnimators.m6811b(i5));
                                    if (c0842a.f2676c != null && c0842a.f2674a == view2 && c0842a.f2675b.equals(getName()) && c0842a.f2676c.equals(c0855t6)) {
                                        createAnimator = null;
                                        c0855t = c0855t6;
                                        break;
                                    }
                                    i5++;
                                }
                            }
                            animator = createAnimator;
                            view = view2;
                        } else {
                            animator = createAnimator;
                            c0855t = null;
                            view = c0855t4.f2698b;
                        }
                        c = c2;
                        i = i2;
                        if (animator != null) {
                            AbstractC0850q abstractC0850q = this.mPropagation;
                            c = c2;
                            if (abstractC0850q != null) {
                                long m5245a = abstractC0850q.m5245a(viewGroup, this, c0855t4, c0855t5);
                                sparseIntArray.put(this.mAnimators.size(), (int) m5245a);
                                c = Math.min(m5245a, (long) c2);
                            }
                            runningAnimators.put(animator, new C0842a(view, getName(), this, C0794ae.m5333b(viewGroup), c0855t));
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
        if (c2 != 0) {
            for (int i6 = 0; i6 < sparseIntArray.size(); i6++) {
                Animator animator2 = this.mAnimators.get(sparseIntArray.keyAt(i6));
                animator2.setStartDelay((sparseIntArray.valueAt(i6) - c2) + animator2.getStartDelay());
            }
        }
    }

    public void end() {
        this.mNumInstances--;
        if (this.mNumInstances == 0) {
            ArrayList<AbstractC0845d> arrayList = this.mListeners;
            if (arrayList != null && arrayList.size() > 0) {
                ArrayList arrayList2 = (ArrayList) this.mListeners.clone();
                int size = arrayList2.size();
                for (int i = 0; i < size; i++) {
                    ((AbstractC0845d) arrayList2.get(i)).mo5224b(this);
                }
            }
            for (int i2 = 0; i2 < this.mStartValues.f2702c.m6850b(); i2++) {
                View m6845c = this.mStartValues.f2702c.m6845c(i2);
                if (m6845c != null) {
                    C0552u.m6262a(m6845c, false);
                }
            }
            for (int i3 = 0; i3 < this.mEndValues.f2702c.m6850b(); i3++) {
                View m6845c2 = this.mEndValues.f2702c.m6845c(i3);
                if (m6845c2 != null) {
                    C0552u.m6262a(m6845c2, false);
                }
            }
            this.mEnded = true;
        }
    }

    public AbstractC0838n excludeChildren(int i, boolean z) {
        this.mTargetIdChildExcludes = excludeId(this.mTargetIdChildExcludes, i, z);
        return this;
    }

    public AbstractC0838n excludeChildren(View view, boolean z) {
        this.mTargetChildExcludes = excludeView(this.mTargetChildExcludes, view, z);
        return this;
    }

    public AbstractC0838n excludeChildren(Class cls, boolean z) {
        this.mTargetTypeChildExcludes = excludeType(this.mTargetTypeChildExcludes, cls, z);
        return this;
    }

    public AbstractC0838n excludeTarget(int i, boolean z) {
        this.mTargetIdExcludes = excludeId(this.mTargetIdExcludes, i, z);
        return this;
    }

    public AbstractC0838n excludeTarget(View view, boolean z) {
        this.mTargetExcludes = excludeView(this.mTargetExcludes, view, z);
        return this;
    }

    public AbstractC0838n excludeTarget(Class cls, boolean z) {
        this.mTargetTypeExcludes = excludeType(this.mTargetTypeExcludes, cls, z);
        return this;
    }

    public AbstractC0838n excludeTarget(String str, boolean z) {
        this.mTargetNameExcludes = excludeObject(this.mTargetNameExcludes, str, z);
        return this;
    }

    public void forceToEnd(ViewGroup viewGroup) {
        C0374a<Animator, C0842a> runningAnimators = getRunningAnimators();
        int size = runningAnimators.size();
        if (viewGroup != null) {
            AbstractC0807am m5333b = C0794ae.m5333b(viewGroup);
            while (true) {
                size--;
                if (size < 0) {
                    return;
                }
                C0842a c = runningAnimators.m6809c(size);
                if (c.f2674a != null && m5333b != null && m5333b.equals(c.f2677d)) {
                    runningAnimators.m6811b(size).end();
                }
            }
        }
    }

    public long getDuration() {
        return this.mDuration;
    }

    public Rect getEpicenter() {
        AbstractC0844c abstractC0844c = this.mEpicenterCallback;
        if (abstractC0844c == null) {
            return null;
        }
        return abstractC0844c.mo5255a(this);
    }

    public AbstractC0844c getEpicenterCallback() {
        return this.mEpicenterCallback;
    }

    public TimeInterpolator getInterpolator() {
        return this.mInterpolator;
    }

    public C0855t getMatchedTransitionValues(View view, boolean z) {
        int i;
        C0851r c0851r = this.mParent;
        if (c0851r != null) {
            return c0851r.getMatchedTransitionValues(view, z);
        }
        ArrayList<C0855t> arrayList = z ? this.mStartValuesList : this.mEndValuesList;
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
            C0855t c0855t = arrayList.get(i2);
            if (c0855t == null) {
                return null;
            }
            if (c0855t.f2698b == view) {
                i = i2;
                break;
            }
            i2++;
        }
        C0855t c0855t2 = null;
        if (i >= 0) {
            c0855t2 = (z ? this.mEndValuesList : this.mStartValuesList).get(i);
        }
        return c0855t2;
    }

    public String getName() {
        return this.mName;
    }

    public AbstractC0830g getPathMotion() {
        return this.mPathMotion;
    }

    public AbstractC0850q getPropagation() {
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

    public List<Class> getTargetTypes() {
        return this.mTargetTypes;
    }

    public List<View> getTargets() {
        return this.mTargets;
    }

    public String[] getTransitionProperties() {
        return null;
    }

    public C0855t getTransitionValues(View view, boolean z) {
        C0851r c0851r = this.mParent;
        if (c0851r != null) {
            return c0851r.getTransitionValues(view, z);
        }
        return (z ? this.mStartValues : this.mEndValues).f2700a.get(view);
    }

    public boolean isTransitionRequired(C0855t c0855t, C0855t c0855t2) {
        boolean z = false;
        if (c0855t != null) {
            z = false;
            if (c0855t2 != null) {
                String[] transitionProperties = getTransitionProperties();
                if (transitionProperties != null) {
                    int length = transitionProperties.length;
                    int i = 0;
                    while (true) {
                        z = false;
                        if (i >= length) {
                            break;
                        } else if (isValueChanged(c0855t, c0855t2, transitionProperties[i])) {
                            break;
                        } else {
                            i++;
                        }
                    }
                } else {
                    Iterator<String> it = c0855t.f2697a.keySet().iterator();
                    do {
                        z = false;
                        if (!it.hasNext()) {
                            break;
                        }
                    } while (!isValueChanged(c0855t, c0855t2, it.next()));
                    z = true;
                }
            }
        }
        return z;
    }

    public boolean isValidTarget(View view) {
        ArrayList<Class> arrayList;
        ArrayList<String> arrayList2;
        int id = view.getId();
        ArrayList<Integer> arrayList3 = this.mTargetIdExcludes;
        if (arrayList3 == null || !arrayList3.contains(Integer.valueOf(id))) {
            ArrayList<View> arrayList4 = this.mTargetExcludes;
            if (arrayList4 != null && arrayList4.contains(view)) {
                return false;
            }
            ArrayList<Class> arrayList5 = this.mTargetTypeExcludes;
            if (arrayList5 != null) {
                int size = arrayList5.size();
                for (int i = 0; i < size; i++) {
                    if (this.mTargetTypeExcludes.get(i).isInstance(view)) {
                        return false;
                    }
                }
            }
            if (this.mTargetNameExcludes != null && C0552u.m6230q(view) != null && this.mTargetNameExcludes.contains(C0552u.m6230q(view))) {
                return false;
            }
            if ((this.mTargetIds.size() == 0 && this.mTargets.size() == 0 && (((arrayList = this.mTargetTypes) == null || arrayList.isEmpty()) && ((arrayList2 = this.mTargetNames) == null || arrayList2.isEmpty()))) || this.mTargetIds.contains(Integer.valueOf(id)) || this.mTargets.contains(view)) {
                return true;
            }
            ArrayList<String> arrayList6 = this.mTargetNames;
            if (arrayList6 != null && arrayList6.contains(C0552u.m6230q(view))) {
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
            C0374a<Animator, C0842a> runningAnimators = getRunningAnimators();
            int size = runningAnimators.size();
            AbstractC0807am m5333b = C0794ae.m5333b(view);
            while (true) {
                size--;
                if (size < 0) {
                    break;
                }
                C0842a c = runningAnimators.m6809c(size);
                if (c.f2674a != null && m5333b.equals(c.f2677d)) {
                    C0787a.m5352a(runningAnimators.m6811b(size));
                }
            }
            ArrayList<AbstractC0845d> arrayList = this.mListeners;
            if (arrayList != null && arrayList.size() > 0) {
                ArrayList arrayList2 = (ArrayList) this.mListeners.clone();
                int size2 = arrayList2.size();
                for (int i = 0; i < size2; i++) {
                    ((AbstractC0845d) arrayList2.get(i)).mo5253c(this);
                }
            }
            this.mPaused = true;
        }
    }

    public void playTransition(ViewGroup viewGroup) {
        C0842a c0842a;
        this.mStartValuesList = new ArrayList<>();
        this.mEndValuesList = new ArrayList<>();
        matchStartAndEnd(this.mStartValues, this.mEndValues);
        C0374a<Animator, C0842a> runningAnimators = getRunningAnimators();
        int size = runningAnimators.size();
        AbstractC0807am m5333b = C0794ae.m5333b(viewGroup);
        while (true) {
            size--;
            if (size < 0) {
                createAnimators(viewGroup, this.mStartValues, this.mEndValues, this.mStartValuesList, this.mEndValuesList);
                runAnimators();
                return;
            }
            Animator b = runningAnimators.m6811b(size);
            if (b != null && (c0842a = runningAnimators.get(b)) != null && c0842a.f2674a != null && m5333b.equals(c0842a.f2677d)) {
                C0855t c0855t = c0842a.f2676c;
                View view = c0842a.f2674a;
                C0855t transitionValues = getTransitionValues(view, true);
                C0855t matchedTransitionValues = getMatchedTransitionValues(view, true);
                if (!(transitionValues == null && matchedTransitionValues == null) && c0842a.f2678e.isTransitionRequired(c0855t, matchedTransitionValues)) {
                    if (b.isRunning() || b.isStarted()) {
                        b.cancel();
                    } else {
                        runningAnimators.remove(b);
                    }
                }
            }
        }
    }

    public AbstractC0838n removeListener(AbstractC0845d abstractC0845d) {
        ArrayList<AbstractC0845d> arrayList = this.mListeners;
        if (arrayList == null) {
            return this;
        }
        arrayList.remove(abstractC0845d);
        if (this.mListeners.size() == 0) {
            this.mListeners = null;
        }
        return this;
    }

    public AbstractC0838n removeTarget(int i) {
        if (i != 0) {
            this.mTargetIds.remove(Integer.valueOf(i));
        }
        return this;
    }

    public AbstractC0838n removeTarget(View view) {
        this.mTargets.remove(view);
        return this;
    }

    public AbstractC0838n removeTarget(Class cls) {
        ArrayList<Class> arrayList = this.mTargetTypes;
        if (arrayList != null) {
            arrayList.remove(cls);
        }
        return this;
    }

    public AbstractC0838n removeTarget(String str) {
        ArrayList<String> arrayList = this.mTargetNames;
        if (arrayList != null) {
            arrayList.remove(str);
        }
        return this;
    }

    public void resume(View view) {
        if (this.mPaused) {
            if (!this.mEnded) {
                C0374a<Animator, C0842a> runningAnimators = getRunningAnimators();
                int size = runningAnimators.size();
                AbstractC0807am m5333b = C0794ae.m5333b(view);
                while (true) {
                    size--;
                    if (size < 0) {
                        break;
                    }
                    C0842a c = runningAnimators.m6809c(size);
                    if (c.f2674a != null && m5333b.equals(c.f2677d)) {
                        C0787a.m5350b(runningAnimators.m6811b(size));
                    }
                }
                ArrayList<AbstractC0845d> arrayList = this.mListeners;
                if (arrayList != null && arrayList.size() > 0) {
                    ArrayList arrayList2 = (ArrayList) this.mListeners.clone();
                    int size2 = arrayList2.size();
                    for (int i = 0; i < size2; i++) {
                        ((AbstractC0845d) arrayList2.get(i)).mo5252d(this);
                    }
                }
            }
            this.mPaused = false;
        }
    }

    public void runAnimators() {
        start();
        C0374a<Animator, C0842a> runningAnimators = getRunningAnimators();
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

    public AbstractC0838n setDuration(long j) {
        this.mDuration = j;
        return this;
    }

    public void setEpicenterCallback(AbstractC0844c abstractC0844c) {
        this.mEpicenterCallback = abstractC0844c;
    }

    public AbstractC0838n setInterpolator(TimeInterpolator timeInterpolator) {
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

    public void setPathMotion(AbstractC0830g abstractC0830g) {
        if (abstractC0830g == null) {
            this.mPathMotion = STRAIGHT_PATH_MOTION;
        } else {
            this.mPathMotion = abstractC0830g;
        }
    }

    public void setPropagation(AbstractC0850q abstractC0850q) {
        this.mPropagation = abstractC0850q;
    }

    public AbstractC0838n setSceneRoot(ViewGroup viewGroup) {
        this.mSceneRoot = viewGroup;
        return this;
    }

    public AbstractC0838n setStartDelay(long j) {
        this.mStartDelay = j;
        return this;
    }

    public void start() {
        if (this.mNumInstances == 0) {
            ArrayList<AbstractC0845d> arrayList = this.mListeners;
            if (arrayList != null && arrayList.size() > 0) {
                ArrayList arrayList2 = (ArrayList) this.mListeners.clone();
                int size = arrayList2.size();
                for (int i = 0; i < size; i++) {
                    ((AbstractC0845d) arrayList2.get(i)).mo5223e(this);
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
        throw new UnsupportedOperationException("Method not decompiled: androidx.p045j.AbstractC0838n.toString(java.lang.String):java.lang.String");
    }
}

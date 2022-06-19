package androidx.core.widget;

import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.Rect;
import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable;
import android.util.AttributeSet;
import android.util.Log;
import android.util.TypedValue;
import android.view.FocusFinder;
import android.view.KeyEvent;
import android.view.MotionEvent;
import android.view.VelocityTracker;
import android.view.View;
import android.view.ViewConfiguration;
import android.view.ViewGroup;
import android.view.ViewParent;
import android.view.accessibility.AccessibilityEvent;
import android.view.animation.AnimationUtils;
import android.widget.EdgeEffect;
import android.widget.FrameLayout;
import android.widget.OverScroller;
import android.widget.ScrollView;
import java.util.ArrayList;
import p020b.p041h.C1518a;
import p020b.p041h.p050l.AbstractC1667k;
import p020b.p041h.p050l.AbstractC1670n;
import p020b.p041h.p050l.C1599a;
import p020b.p041h.p050l.C1668l;
import p020b.p041h.p050l.C1672p;
import p020b.p041h.p050l.C1679w;
import p020b.p041h.p050l.p051f0.C1634c;
import p020b.p041h.p050l.p051f0.C1643e;
/* loaded from: classes-dex2jar.jar:androidx/core/widget/NestedScrollView.class */
public class NestedScrollView extends FrameLayout implements AbstractC1670n, AbstractC1667k {

    /* renamed from: d */
    private static final C0635a f3036d = new C0635a();

    /* renamed from: e */
    private static final int[] f3037e = {16843130};

    /* renamed from: A */
    private SavedState f3038A;

    /* renamed from: B */
    private final C1672p f3039B;

    /* renamed from: C */
    private final C1668l f3040C;

    /* renamed from: D */
    private float f3041D;

    /* renamed from: E */
    private AbstractC0636b f3042E;

    /* renamed from: f */
    private long f3043f;

    /* renamed from: g */
    private final Rect f3044g;

    /* renamed from: h */
    private OverScroller f3045h;

    /* renamed from: i */
    private EdgeEffect f3046i;

    /* renamed from: j */
    private EdgeEffect f3047j;

    /* renamed from: k */
    private int f3048k;

    /* renamed from: l */
    private boolean f3049l;

    /* renamed from: m */
    private boolean f3050m;

    /* renamed from: n */
    private View f3051n;

    /* renamed from: o */
    private boolean f3052o;

    /* renamed from: p */
    private VelocityTracker f3053p;

    /* renamed from: q */
    private boolean f3054q;

    /* renamed from: r */
    private boolean f3055r;

    /* renamed from: s */
    private int f3056s;

    /* renamed from: t */
    private int f3057t;

    /* renamed from: u */
    private int f3058u;

    /* renamed from: v */
    private int f3059v;

    /* renamed from: w */
    private final int[] f3060w;

    /* renamed from: x */
    private final int[] f3061x;

    /* renamed from: y */
    private int f3062y;

    /* renamed from: z */
    private int f3063z;

    /* loaded from: classes-dex2jar.jar:androidx/core/widget/NestedScrollView$SavedState.class */
    public static class SavedState extends View.BaseSavedState {
        public static final Parcelable.Creator<SavedState> CREATOR = new C0634a();

        /* renamed from: d */
        public int f3064d;

        /* renamed from: androidx.core.widget.NestedScrollView$SavedState$a */
        /* loaded from: classes-dex2jar.jar:androidx/core/widget/NestedScrollView$SavedState$a.class */
        class C0634a implements Parcelable.Creator<SavedState> {
            C0634a() {
            }

            /* renamed from: a */
            public SavedState createFromParcel(Parcel parcel) {
                return new SavedState(parcel);
            }

            /* renamed from: b */
            public SavedState[] newArray(int i) {
                return new SavedState[i];
            }
        }

        SavedState(Parcel parcel) {
            super(parcel);
            this.f3064d = parcel.readInt();
        }

        SavedState(Parcelable parcelable) {
            super(parcelable);
        }

        public String toString() {
            return "HorizontalScrollView.SavedState{" + Integer.toHexString(System.identityHashCode(this)) + " scrollPosition=" + this.f3064d + "}";
        }

        @Override // android.view.View.BaseSavedState, android.view.AbsSavedState, android.os.Parcelable
        public void writeToParcel(Parcel parcel, int i) {
            super.writeToParcel(parcel, i);
            parcel.writeInt(this.f3064d);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: androidx.core.widget.NestedScrollView$a */
    /* loaded from: classes-dex2jar.jar:androidx/core/widget/NestedScrollView$a.class */
    public static class C0635a extends C1599a {
        C0635a() {
        }

        @Override // p020b.p041h.p050l.C1599a
        /* renamed from: f */
        public void mo4650f(View view, AccessibilityEvent accessibilityEvent) {
            super.mo4650f(view, accessibilityEvent);
            NestedScrollView nestedScrollView = (NestedScrollView) view;
            accessibilityEvent.setClassName(ScrollView.class.getName());
            accessibilityEvent.setScrollable(nestedScrollView.getScrollRange() > 0);
            accessibilityEvent.setScrollX(nestedScrollView.getScrollX());
            accessibilityEvent.setScrollY(nestedScrollView.getScrollY());
            C1643e.m29431a(accessibilityEvent, nestedScrollView.getScrollX());
            C1643e.m29430b(accessibilityEvent, nestedScrollView.getScrollRange());
        }

        @Override // p020b.p041h.p050l.C1599a
        /* renamed from: g */
        public void mo3869g(View view, C1634c c1634c) {
            int scrollRange;
            super.mo3869g(view, c1634c);
            NestedScrollView nestedScrollView = (NestedScrollView) view;
            c1634c.m29489c0(ScrollView.class.getName());
            if (!nestedScrollView.isEnabled() || (scrollRange = nestedScrollView.getScrollRange()) <= 0) {
                return;
            }
            c1634c.m29447x0(true);
            if (nestedScrollView.getScrollY() > 0) {
                c1634c.m29492b(C1634c.C1635a.f6295n);
                c1634c.m29492b(C1634c.C1635a.f6306y);
            }
            if (nestedScrollView.getScrollY() >= scrollRange) {
                return;
            }
            c1634c.m29492b(C1634c.C1635a.f6294m);
            c1634c.m29492b(C1634c.C1635a.f6269A);
        }

        @Override // p020b.p041h.p050l.C1599a
        /* renamed from: j */
        public boolean mo29646j(View view, int i, Bundle bundle) {
            if (super.mo29646j(view, i, bundle)) {
                return true;
            }
            NestedScrollView nestedScrollView = (NestedScrollView) view;
            if (!nestedScrollView.isEnabled()) {
                return false;
            }
            if (i != 4096) {
                if (i == 8192 || i == 16908344) {
                    int height = nestedScrollView.getHeight();
                    int paddingBottom = nestedScrollView.getPaddingBottom();
                    int max = Math.max(nestedScrollView.getScrollY() - ((height - paddingBottom) - nestedScrollView.getPaddingTop()), 0);
                    if (max == nestedScrollView.getScrollY()) {
                        return false;
                    }
                    nestedScrollView.m33164O(0, max, true);
                    return true;
                } else if (i != 16908346) {
                    return false;
                }
            }
            int height2 = nestedScrollView.getHeight();
            int paddingBottom2 = nestedScrollView.getPaddingBottom();
            int min = Math.min(nestedScrollView.getScrollY() + ((height2 - paddingBottom2) - nestedScrollView.getPaddingTop()), nestedScrollView.getScrollRange());
            if (min == nestedScrollView.getScrollY()) {
                return false;
            }
            nestedScrollView.m33164O(0, min, true);
            return true;
        }
    }

    /* renamed from: androidx.core.widget.NestedScrollView$b */
    /* loaded from: classes-dex2jar.jar:androidx/core/widget/NestedScrollView$b.class */
    public interface AbstractC0636b {
        /* renamed from: a */
        void mo26923a(NestedScrollView nestedScrollView, int i, int i2, int i3, int i4);
    }

    public NestedScrollView(Context context) {
        this(context, null);
    }

    public NestedScrollView(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, C1518a.nestedScrollViewStyle);
    }

    public NestedScrollView(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        this.f3044g = new Rect();
        this.f3049l = true;
        this.f3050m = false;
        this.f3051n = null;
        this.f3052o = false;
        this.f3055r = true;
        this.f3059v = -1;
        this.f3060w = new int[2];
        this.f3061x = new int[2];
        m33144x();
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, f3037e, i, 0);
        setFillViewport(obtainStyledAttributes.getBoolean(0, false));
        obtainStyledAttributes.recycle();
        this.f3039B = new C1672p(this);
        this.f3040C = new C1668l(this);
        setNestedScrollingEnabled(true);
        C1679w.m29273r0(this, f3036d);
    }

    /* renamed from: A */
    private static boolean m33178A(View view, View view2) {
        boolean z = true;
        if (view == view2) {
            return true;
        }
        ViewParent parent = view.getParent();
        if (!(parent instanceof ViewGroup) || !m33178A((View) parent, view2)) {
            z = false;
        }
        return z;
    }

    /* renamed from: B */
    private boolean m33177B(View view, int i, int i2) {
        view.getDrawingRect(this.f3044g);
        offsetDescendantRectToMyCoords(view, this.f3044g);
        return this.f3044g.bottom + i >= getScrollY() && this.f3044g.top - i <= getScrollY() + i2;
    }

    /* renamed from: C */
    private void m33176C(int i, int i2, int[] iArr) {
        int scrollY = getScrollY();
        scrollBy(0, i);
        int scrollY2 = getScrollY() - scrollY;
        if (iArr != null) {
            iArr[1] = iArr[1] + scrollY2;
        }
        this.f3040C.m29380e(0, scrollY2, 0, i - scrollY2, null, i2, iArr);
    }

    /* renamed from: D */
    private void m33175D(MotionEvent motionEvent) {
        int actionIndex = motionEvent.getActionIndex();
        if (motionEvent.getPointerId(actionIndex) == this.f3059v) {
            int i = actionIndex == 0 ? 1 : 0;
            this.f3048k = (int) motionEvent.getY(i);
            this.f3059v = motionEvent.getPointerId(i);
            VelocityTracker velocityTracker = this.f3053p;
            if (velocityTracker == null) {
                return;
            }
            velocityTracker.clear();
        }
    }

    /* renamed from: G */
    private void m33172G() {
        VelocityTracker velocityTracker = this.f3053p;
        if (velocityTracker != null) {
            velocityTracker.recycle();
            this.f3053p = null;
        }
    }

    /* renamed from: H */
    private void m33171H(boolean z) {
        if (z) {
            m33163P(2, 1);
        } else {
            m33162Q(1);
        }
        this.f3063z = getScrollY();
        C1679w.m29293h0(this);
    }

    /* renamed from: I */
    private boolean m33170I(int i, int i2, int i3) {
        boolean z;
        int height = getHeight();
        int scrollY = getScrollY();
        int i4 = height + scrollY;
        boolean z2 = i == 33;
        View m33150r = m33150r(z2, i2, i3);
        View view = m33150r;
        if (m33150r == null) {
            view = this;
        }
        if (i2 < scrollY || i3 > i4) {
            m33154n(z2 ? i2 - scrollY : i3 - i4);
            z = true;
        } else {
            z = false;
        }
        if (view != findFocus()) {
            view.requestFocus(i);
        }
        return z;
    }

    /* renamed from: J */
    private void m33169J(View view) {
        view.getDrawingRect(this.f3044g);
        offsetDescendantRectToMyCoords(view, this.f3044g);
        int m33157e = m33157e(this.f3044g);
        if (m33157e != 0) {
            scrollBy(0, m33157e);
        }
    }

    /* renamed from: K */
    private boolean m33168K(Rect rect, boolean z) {
        int m33157e = m33157e(rect);
        boolean z2 = m33157e != 0;
        if (z2) {
            if (z) {
                scrollBy(0, m33157e);
            } else {
                m33167L(0, m33157e);
            }
        }
        return z2;
    }

    /* renamed from: M */
    private void m33166M(int i, int i2, int i3, boolean z) {
        if (getChildCount() == 0) {
            return;
        }
        if (AnimationUtils.currentAnimationTimeMillis() - this.f3043f > 250) {
            View childAt = getChildAt(0);
            FrameLayout.LayoutParams layoutParams = (FrameLayout.LayoutParams) childAt.getLayoutParams();
            int height = childAt.getHeight();
            int i4 = layoutParams.topMargin;
            int i5 = layoutParams.bottomMargin;
            int height2 = getHeight();
            int paddingTop = getPaddingTop();
            int paddingBottom = getPaddingBottom();
            int scrollY = getScrollY();
            this.f3045h.startScroll(getScrollX(), scrollY, 0, Math.max(0, Math.min(i2 + scrollY, Math.max(0, ((height + i4) + i5) - ((height2 - paddingTop) - paddingBottom)))) - scrollY, i3);
            m33171H(z);
        } else {
            if (!this.f3045h.isFinished()) {
                m33161a();
            }
            scrollBy(i, i2);
        }
        this.f3043f = AnimationUtils.currentAnimationTimeMillis();
    }

    /* renamed from: a */
    private void m33161a() {
        this.f3045h.abortAnimation();
        m33162Q(1);
    }

    /* renamed from: c */
    private boolean m33159c() {
        boolean z = false;
        if (getChildCount() > 0) {
            View childAt = getChildAt(0);
            FrameLayout.LayoutParams layoutParams = (FrameLayout.LayoutParams) childAt.getLayoutParams();
            z = false;
            if (childAt.getHeight() + layoutParams.topMargin + layoutParams.bottomMargin > (getHeight() - getPaddingTop()) - getPaddingBottom()) {
                z = true;
            }
        }
        return z;
    }

    /* renamed from: d */
    private static int m33158d(int i, int i2, int i3) {
        if (i2 >= i3 || i < 0) {
            return 0;
        }
        return i2 + i > i3 ? i3 - i2 : i;
    }

    private float getVerticalScrollFactorCompat() {
        if (this.f3041D == 0.0f) {
            TypedValue typedValue = new TypedValue();
            Context context = getContext();
            if (!context.getTheme().resolveAttribute(16842829, typedValue, true)) {
                throw new IllegalStateException("Expected theme to define listPreferredItemHeight.");
            }
            this.f3041D = typedValue.getDimension(context.getResources().getDisplayMetrics());
        }
        return this.f3041D;
    }

    /* renamed from: n */
    private void m33154n(int i) {
        if (i != 0) {
            if (this.f3055r) {
                m33167L(0, i);
            } else {
                scrollBy(0, i);
            }
        }
    }

    /* renamed from: o */
    private void m33153o() {
        this.f3052o = false;
        m33172G();
        m33162Q(0);
        EdgeEffect edgeEffect = this.f3046i;
        if (edgeEffect != null) {
            edgeEffect.onRelease();
            this.f3047j.onRelease();
        }
    }

    /* renamed from: p */
    private void m33152p() {
        if (getOverScrollMode() == 2) {
            this.f3046i = null;
            this.f3047j = null;
        } else if (this.f3046i != null) {
        } else {
            Context context = getContext();
            this.f3046i = new EdgeEffect(context);
            this.f3047j = new EdgeEffect(context);
        }
    }

    /* renamed from: r */
    private View m33150r(boolean z, int i, int i2) {
        ArrayList focusables = getFocusables(2);
        int size = focusables.size();
        View view = null;
        int i3 = 0;
        boolean z2 = false;
        while (true) {
            boolean z3 = z2;
            if (i3 < size) {
                View view2 = (View) focusables.get(i3);
                int top = view2.getTop();
                int bottom = view2.getBottom();
                View view3 = view;
                boolean z4 = z3;
                if (i < bottom) {
                    view3 = view;
                    z4 = z3;
                    if (top < i2) {
                        boolean z5 = i < top && bottom < i2;
                        if (view == null) {
                            view3 = view2;
                            z4 = z5;
                        } else {
                            boolean z6 = (z && top < view.getTop()) || (!z && bottom > view.getBottom());
                            if (z3) {
                                view3 = view;
                                z4 = z3;
                                if (z5) {
                                    view3 = view;
                                    z4 = z3;
                                    if (!z6) {
                                    }
                                    view3 = view2;
                                    z4 = z3;
                                }
                            } else if (z5) {
                                view3 = view2;
                                z4 = true;
                            } else {
                                view3 = view;
                                z4 = z3;
                                if (!z6) {
                                }
                                view3 = view2;
                                z4 = z3;
                            }
                        }
                    }
                }
                i3++;
                view = view3;
                z2 = z4;
            } else {
                return view;
            }
        }
    }

    /* renamed from: v */
    private boolean m33146v(int i, int i2) {
        boolean z = false;
        if (getChildCount() > 0) {
            int scrollY = getScrollY();
            View childAt = getChildAt(0);
            z = false;
            if (i2 >= childAt.getTop() - scrollY) {
                z = false;
                if (i2 < childAt.getBottom() - scrollY) {
                    z = false;
                    if (i >= childAt.getLeft()) {
                        z = false;
                        if (i < childAt.getRight()) {
                            z = true;
                        }
                    }
                }
            }
        }
        return z;
    }

    /* renamed from: w */
    private void m33145w() {
        VelocityTracker velocityTracker = this.f3053p;
        if (velocityTracker == null) {
            this.f3053p = VelocityTracker.obtain();
        } else {
            velocityTracker.clear();
        }
    }

    /* renamed from: x */
    private void m33144x() {
        this.f3045h = new OverScroller(getContext());
        setFocusable(true);
        setDescendantFocusability(262144);
        setWillNotDraw(false);
        ViewConfiguration viewConfiguration = ViewConfiguration.get(getContext());
        this.f3056s = viewConfiguration.getScaledTouchSlop();
        this.f3057t = viewConfiguration.getScaledMinimumFlingVelocity();
        this.f3058u = viewConfiguration.getScaledMaximumFlingVelocity();
    }

    /* renamed from: y */
    private void m33143y() {
        if (this.f3053p == null) {
            this.f3053p = VelocityTracker.obtain();
        }
    }

    /* renamed from: z */
    private boolean m33142z(View view) {
        return !m33177B(view, 0, getHeight());
    }

    /* JADX WARN: Code restructure failed: missing block: B:57:0x011c, code lost:
        if (r22 != false) goto L58;
     */
    /* JADX WARN: Removed duplicated region for block: B:43:0x00cd  */
    /* JADX WARN: Removed duplicated region for block: B:45:0x00d6  */
    /* JADX WARN: Removed duplicated region for block: B:51:0x00ee  */
    /* JADX WARN: Removed duplicated region for block: B:56:0x0116  */
    /* renamed from: E */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    boolean m33174E(int r9, int r10, int r11, int r12, int r13, int r14, int r15, int r16, boolean r17) {
        /*
            Method dump skipped, instructions count: 293
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.core.widget.NestedScrollView.m33174E(int, int, int, int, int, int, int, int, boolean):boolean");
    }

    /* renamed from: F */
    public boolean m33173F(int i) {
        boolean z = i == 130;
        int height = getHeight();
        if (z) {
            this.f3044g.top = getScrollY() + height;
            int childCount = getChildCount();
            if (childCount > 0) {
                View childAt = getChildAt(childCount - 1);
                int bottom = childAt.getBottom() + ((FrameLayout.LayoutParams) childAt.getLayoutParams()).bottomMargin + getPaddingBottom();
                Rect rect = this.f3044g;
                if (rect.top + height > bottom) {
                    rect.top = bottom - height;
                }
            }
        } else {
            this.f3044g.top = getScrollY() - height;
            Rect rect2 = this.f3044g;
            if (rect2.top < 0) {
                rect2.top = 0;
            }
        }
        Rect rect3 = this.f3044g;
        int i2 = rect3.top;
        int i3 = height + i2;
        rect3.bottom = i3;
        return m33170I(i, i2, i3);
    }

    /* renamed from: L */
    public final void m33167L(int i, int i2) {
        m33166M(i, i2, 250, false);
    }

    /* renamed from: N */
    void m33165N(int i, int i2, int i3, boolean z) {
        m33166M(i - getScrollX(), i2 - getScrollY(), i3, z);
    }

    /* renamed from: O */
    void m33164O(int i, int i2, boolean z) {
        m33165N(i, i2, 250, z);
    }

    /* renamed from: P */
    public boolean m33163P(int i, int i2) {
        return this.f3040C.m29369p(i, i2);
    }

    /* renamed from: Q */
    public void m33162Q(int i) {
        this.f3040C.m29367r(i);
    }

    @Override // android.view.ViewGroup
    public void addView(View view) {
        if (getChildCount() <= 0) {
            super.addView(view);
            return;
        }
        throw new IllegalStateException("ScrollView can host only one direct child");
    }

    @Override // android.view.ViewGroup
    public void addView(View view, int i) {
        if (getChildCount() <= 0) {
            super.addView(view, i);
            return;
        }
        throw new IllegalStateException("ScrollView can host only one direct child");
    }

    @Override // android.view.ViewGroup
    public void addView(View view, int i, ViewGroup.LayoutParams layoutParams) {
        if (getChildCount() <= 0) {
            super.addView(view, i, layoutParams);
            return;
        }
        throw new IllegalStateException("ScrollView can host only one direct child");
    }

    @Override // android.view.ViewGroup, android.view.ViewManager
    public void addView(View view, ViewGroup.LayoutParams layoutParams) {
        if (getChildCount() <= 0) {
            super.addView(view, layoutParams);
            return;
        }
        throw new IllegalStateException("ScrollView can host only one direct child");
    }

    /* renamed from: b */
    public boolean m33160b(int i) {
        int i2;
        View findFocus = findFocus();
        View view = findFocus;
        if (findFocus == this) {
            view = null;
        }
        View findNextFocus = FocusFinder.getInstance().findNextFocus(this, view, i);
        int maxScrollAmount = getMaxScrollAmount();
        if (findNextFocus == null || !m33177B(findNextFocus, maxScrollAmount, getHeight())) {
            if (i != 33 || getScrollY() >= maxScrollAmount) {
                i2 = maxScrollAmount;
                if (i == 130) {
                    i2 = maxScrollAmount;
                    if (getChildCount() > 0) {
                        View childAt = getChildAt(0);
                        i2 = Math.min((childAt.getBottom() + ((FrameLayout.LayoutParams) childAt.getLayoutParams()).bottomMargin) - ((getScrollY() + getHeight()) - getPaddingBottom()), maxScrollAmount);
                    }
                }
            } else {
                i2 = getScrollY();
            }
            if (i2 == 0) {
                return false;
            }
            if (i != 130) {
                i2 = -i2;
            }
            m33154n(i2);
        } else {
            findNextFocus.getDrawingRect(this.f3044g);
            offsetDescendantRectToMyCoords(findNextFocus, this.f3044g);
            m33154n(m33157e(this.f3044g));
            findNextFocus.requestFocus(i);
        }
        if (view == null || !view.isFocused() || !m33142z(view)) {
            return true;
        }
        int descendantFocusability = getDescendantFocusability();
        setDescendantFocusability(131072);
        requestFocus();
        setDescendantFocusability(descendantFocusability);
        return true;
    }

    @Override // android.view.View
    public int computeHorizontalScrollExtent() {
        return super.computeHorizontalScrollExtent();
    }

    @Override // android.view.View
    public int computeHorizontalScrollOffset() {
        return super.computeHorizontalScrollOffset();
    }

    @Override // android.view.View
    public int computeHorizontalScrollRange() {
        return super.computeHorizontalScrollRange();
    }

    /* JADX WARN: Code restructure failed: missing block: B:15:0x00b1, code lost:
        if (r0 > 0) goto L16;
     */
    /* JADX WARN: Removed duplicated region for block: B:19:0x00ba  */
    @Override // android.view.View
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void computeScroll() {
        /*
            Method dump skipped, instructions count: 274
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.core.widget.NestedScrollView.computeScroll():void");
    }

    @Override // android.view.View
    public int computeVerticalScrollExtent() {
        return super.computeVerticalScrollExtent();
    }

    @Override // android.view.View
    public int computeVerticalScrollOffset() {
        return Math.max(0, super.computeVerticalScrollOffset());
    }

    @Override // android.view.View
    public int computeVerticalScrollRange() {
        int i;
        int childCount = getChildCount();
        int height = (getHeight() - getPaddingBottom()) - getPaddingTop();
        if (childCount == 0) {
            return height;
        }
        View childAt = getChildAt(0);
        int bottom = childAt.getBottom() + ((FrameLayout.LayoutParams) childAt.getLayoutParams()).bottomMargin;
        int scrollY = getScrollY();
        int max = Math.max(0, bottom - height);
        if (scrollY < 0) {
            i = bottom - scrollY;
        } else {
            i = bottom;
            if (scrollY > max) {
                i = bottom + (scrollY - max);
            }
        }
        return i;
    }

    @Override // android.view.ViewGroup, android.view.View
    public boolean dispatchKeyEvent(KeyEvent keyEvent) {
        return super.dispatchKeyEvent(keyEvent) || m33151q(keyEvent);
    }

    @Override // android.view.View
    public boolean dispatchNestedFling(float f, float f2, boolean z) {
        return this.f3040C.m29384a(f, f2, z);
    }

    @Override // android.view.View
    public boolean dispatchNestedPreFling(float f, float f2) {
        return this.f3040C.m29383b(f, f2);
    }

    @Override // android.view.View
    public boolean dispatchNestedPreScroll(int i, int i2, int[] iArr, int[] iArr2) {
        return m33156f(i, i2, iArr, iArr2, 0);
    }

    @Override // android.view.View
    public boolean dispatchNestedScroll(int i, int i2, int i3, int i4, int[] iArr) {
        return this.f3040C.m29379f(i, i2, i3, i4, iArr);
    }

    /* JADX WARN: Code restructure failed: missing block: B:26:0x0109, code lost:
        if (getClipToPadding() != false) goto L27;
     */
    @Override // android.view.View
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void draw(android.graphics.Canvas r6) {
        /*
            Method dump skipped, instructions count: 399
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.core.widget.NestedScrollView.draw(android.graphics.Canvas):void");
    }

    /* renamed from: e */
    protected int m33157e(Rect rect) {
        int i;
        if (getChildCount() == 0) {
            return 0;
        }
        int height = getHeight();
        int scrollY = getScrollY();
        int i2 = scrollY + height;
        int verticalFadingEdgeLength = getVerticalFadingEdgeLength();
        int i3 = scrollY;
        if (rect.top > 0) {
            i3 = scrollY + verticalFadingEdgeLength;
        }
        View childAt = getChildAt(0);
        FrameLayout.LayoutParams layoutParams = (FrameLayout.LayoutParams) childAt.getLayoutParams();
        int i4 = rect.bottom < (childAt.getHeight() + layoutParams.topMargin) + layoutParams.bottomMargin ? i2 - verticalFadingEdgeLength : i2;
        int i5 = rect.bottom;
        if (i5 <= i4 || rect.top <= i3) {
            i = 0;
            if (rect.top < i3) {
                i = 0;
                if (i5 < i4) {
                    i = Math.max(rect.height() > height ? 0 - (i4 - rect.bottom) : 0 - (i3 - rect.top), -getScrollY());
                }
            }
        } else {
            i = Math.min((rect.height() > height ? rect.top - i3 : rect.bottom - i4) + 0, (childAt.getBottom() + layoutParams.bottomMargin) - i2);
        }
        return i;
    }

    /* renamed from: f */
    public boolean m33156f(int i, int i2, int[] iArr, int[] iArr2, int i3) {
        return this.f3040C.m29381d(i, i2, iArr, iArr2, i3);
    }

    /* renamed from: g */
    public void m33155g(int i, int i2, int i3, int i4, int[] iArr, int i5, int[] iArr2) {
        this.f3040C.m29380e(i, i2, i3, i4, iArr, i5, iArr2);
    }

    @Override // android.view.View
    protected float getBottomFadingEdgeStrength() {
        if (getChildCount() == 0) {
            return 0.0f;
        }
        View childAt = getChildAt(0);
        FrameLayout.LayoutParams layoutParams = (FrameLayout.LayoutParams) childAt.getLayoutParams();
        int verticalFadingEdgeLength = getVerticalFadingEdgeLength();
        int bottom = ((childAt.getBottom() + layoutParams.bottomMargin) - getScrollY()) - (getHeight() - getPaddingBottom());
        if (bottom >= verticalFadingEdgeLength) {
            return 1.0f;
        }
        return bottom / verticalFadingEdgeLength;
    }

    public int getMaxScrollAmount() {
        return (int) (getHeight() * 0.5f);
    }

    @Override // android.view.ViewGroup
    public int getNestedScrollAxes() {
        return this.f3039B.m29360a();
    }

    int getScrollRange() {
        int i = 0;
        if (getChildCount() > 0) {
            View childAt = getChildAt(0);
            FrameLayout.LayoutParams layoutParams = (FrameLayout.LayoutParams) childAt.getLayoutParams();
            i = Math.max(0, ((childAt.getHeight() + layoutParams.topMargin) + layoutParams.bottomMargin) - ((getHeight() - getPaddingTop()) - getPaddingBottom()));
        }
        return i;
    }

    @Override // android.view.View
    protected float getTopFadingEdgeStrength() {
        if (getChildCount() == 0) {
            return 0.0f;
        }
        int verticalFadingEdgeLength = getVerticalFadingEdgeLength();
        int scrollY = getScrollY();
        if (scrollY >= verticalFadingEdgeLength) {
            return 1.0f;
        }
        return scrollY / verticalFadingEdgeLength;
    }

    @Override // p020b.p041h.p050l.AbstractC1670n
    /* renamed from: h */
    public void mo29361h(View view, int i, int i2, int i3, int i4, int i5, int[] iArr) {
        m33176C(i4, i5, iArr);
    }

    @Override // android.view.View
    public boolean hasNestedScrollingParent() {
        return m33147u(0);
    }

    @Override // p020b.p041h.p050l.AbstractC1669m
    /* renamed from: i */
    public void mo29366i(View view, int i, int i2, int i3, int i4, int i5) {
        m33176C(i4, i5, null);
    }

    @Override // android.view.View, p020b.p041h.p050l.AbstractC1667k
    public boolean isNestedScrollingEnabled() {
        return this.f3040C.m29373l();
    }

    @Override // p020b.p041h.p050l.AbstractC1669m
    /* renamed from: j */
    public boolean mo29365j(View view, View view2, int i, int i2) {
        return (i & 2) != 0;
    }

    @Override // p020b.p041h.p050l.AbstractC1669m
    /* renamed from: k */
    public void mo29364k(View view, View view2, int i, int i2) {
        this.f3039B.m29358c(view, view2, i, i2);
        m33163P(2, i2);
    }

    @Override // p020b.p041h.p050l.AbstractC1669m
    /* renamed from: l */
    public void mo29363l(View view, int i) {
        this.f3039B.m29356e(view, i);
        m33162Q(i);
    }

    @Override // p020b.p041h.p050l.AbstractC1669m
    /* renamed from: m */
    public void mo29362m(View view, int i, int i2, int[] iArr, int i3) {
        m33156f(i, i2, iArr, null, i3);
    }

    @Override // android.view.ViewGroup
    protected void measureChild(View view, int i, int i2) {
        view.measure(FrameLayout.getChildMeasureSpec(i, getPaddingLeft() + getPaddingRight(), view.getLayoutParams().width), View.MeasureSpec.makeMeasureSpec(0, 0));
    }

    @Override // android.view.ViewGroup
    protected void measureChildWithMargins(View view, int i, int i2, int i3, int i4) {
        ViewGroup.MarginLayoutParams marginLayoutParams = (ViewGroup.MarginLayoutParams) view.getLayoutParams();
        view.measure(FrameLayout.getChildMeasureSpec(i, getPaddingLeft() + getPaddingRight() + marginLayoutParams.leftMargin + marginLayoutParams.rightMargin + i2, marginLayoutParams.width), View.MeasureSpec.makeMeasureSpec(marginLayoutParams.topMargin + marginLayoutParams.bottomMargin, 0));
    }

    @Override // android.view.ViewGroup, android.view.View
    public void onAttachedToWindow() {
        super.onAttachedToWindow();
        this.f3050m = false;
    }

    @Override // android.view.View
    public boolean onGenericMotionEvent(MotionEvent motionEvent) {
        if ((motionEvent.getSource() & 2) == 0 || motionEvent.getAction() != 8 || this.f3052o) {
            return false;
        }
        float axisValue = motionEvent.getAxisValue(9);
        if (axisValue == 0.0f) {
            return false;
        }
        int verticalScrollFactorCompat = (int) (axisValue * getVerticalScrollFactorCompat());
        int scrollRange = getScrollRange();
        int scrollY = getScrollY();
        int i = scrollY - verticalScrollFactorCompat;
        if (i < 0) {
            scrollRange = 0;
        } else if (i <= scrollRange) {
            scrollRange = i;
        }
        if (scrollRange == scrollY) {
            return false;
        }
        super.scrollTo(getScrollX(), scrollRange);
        return true;
    }

    @Override // android.view.ViewGroup
    public boolean onInterceptTouchEvent(MotionEvent motionEvent) {
        int action = motionEvent.getAction();
        if (action != 2 || !this.f3052o) {
            int i = action & 255;
            if (i != 0) {
                if (i != 1) {
                    if (i == 2) {
                        int i2 = this.f3059v;
                        if (i2 != -1) {
                            int findPointerIndex = motionEvent.findPointerIndex(i2);
                            if (findPointerIndex == -1) {
                                Log.e("NestedScrollView", "Invalid pointerId=" + i2 + " in onInterceptTouchEvent");
                            } else {
                                int y = (int) motionEvent.getY(findPointerIndex);
                                if (Math.abs(y - this.f3048k) > this.f3056s && (2 & getNestedScrollAxes()) == 0) {
                                    this.f3052o = true;
                                    this.f3048k = y;
                                    m33143y();
                                    this.f3053p.addMovement(motionEvent);
                                    this.f3062y = 0;
                                    ViewParent parent = getParent();
                                    if (parent != null) {
                                        parent.requestDisallowInterceptTouchEvent(true);
                                    }
                                }
                            }
                        }
                    } else if (i != 3) {
                        if (i == 6) {
                            m33175D(motionEvent);
                        }
                    }
                }
                this.f3052o = false;
                this.f3059v = -1;
                m33172G();
                if (this.f3045h.springBack(getScrollX(), getScrollY(), 0, 0, 0, getScrollRange())) {
                    C1679w.m29293h0(this);
                }
                m33162Q(0);
            } else {
                int y2 = (int) motionEvent.getY();
                if (!m33146v((int) motionEvent.getX(), y2)) {
                    this.f3052o = false;
                    m33172G();
                } else {
                    this.f3048k = y2;
                    this.f3059v = motionEvent.getPointerId(0);
                    m33145w();
                    this.f3053p.addMovement(motionEvent);
                    this.f3045h.computeScrollOffset();
                    this.f3052o = !this.f3045h.isFinished();
                    m33163P(2, 0);
                }
            }
            return this.f3052o;
        }
        return true;
    }

    @Override // android.widget.FrameLayout, android.view.ViewGroup, android.view.View
    protected void onLayout(boolean z, int i, int i2, int i3, int i4) {
        super.onLayout(z, i, i2, i3, i4);
        int i5 = 0;
        this.f3049l = false;
        View view = this.f3051n;
        if (view != null && m33178A(view, this)) {
            m33169J(this.f3051n);
        }
        this.f3051n = null;
        if (!this.f3050m) {
            if (this.f3038A != null) {
                scrollTo(getScrollX(), this.f3038A.f3064d);
                this.f3038A = null;
            }
            if (getChildCount() > 0) {
                View childAt = getChildAt(0);
                FrameLayout.LayoutParams layoutParams = (FrameLayout.LayoutParams) childAt.getLayoutParams();
                i5 = childAt.getMeasuredHeight() + layoutParams.topMargin + layoutParams.bottomMargin;
            }
            int paddingTop = getPaddingTop();
            int paddingBottom = getPaddingBottom();
            int scrollY = getScrollY();
            int m33158d = m33158d(scrollY, ((i4 - i2) - paddingTop) - paddingBottom, i5);
            if (m33158d != scrollY) {
                scrollTo(getScrollX(), m33158d);
            }
        }
        scrollTo(getScrollX(), getScrollY());
        this.f3050m = true;
    }

    @Override // android.widget.FrameLayout, android.view.View
    protected void onMeasure(int i, int i2) {
        super.onMeasure(i, i2);
        if (this.f3054q && View.MeasureSpec.getMode(i2) != 0 && getChildCount() > 0) {
            View childAt = getChildAt(0);
            FrameLayout.LayoutParams layoutParams = (FrameLayout.LayoutParams) childAt.getLayoutParams();
            int measuredHeight = childAt.getMeasuredHeight();
            int measuredHeight2 = (((getMeasuredHeight() - getPaddingTop()) - getPaddingBottom()) - layoutParams.topMargin) - layoutParams.bottomMargin;
            if (measuredHeight >= measuredHeight2) {
                return;
            }
            childAt.measure(FrameLayout.getChildMeasureSpec(i, getPaddingLeft() + getPaddingRight() + layoutParams.leftMargin + layoutParams.rightMargin, layoutParams.width), View.MeasureSpec.makeMeasureSpec(measuredHeight2, 1073741824));
        }
    }

    @Override // android.view.ViewGroup, android.view.ViewParent, p020b.p041h.p050l.AbstractC1671o
    public boolean onNestedFling(View view, float f, float f2, boolean z) {
        if (!z) {
            dispatchNestedFling(0.0f, f2, true);
            m33149s((int) f2);
            return true;
        }
        return false;
    }

    @Override // android.view.ViewGroup, android.view.ViewParent, p020b.p041h.p050l.AbstractC1671o
    public boolean onNestedPreFling(View view, float f, float f2) {
        return dispatchNestedPreFling(f, f2);
    }

    @Override // android.view.ViewGroup, android.view.ViewParent, p020b.p041h.p050l.AbstractC1671o
    public void onNestedPreScroll(View view, int i, int i2, int[] iArr) {
        mo29362m(view, i, i2, iArr, 0);
    }

    @Override // android.view.ViewGroup, android.view.ViewParent, p020b.p041h.p050l.AbstractC1671o
    public void onNestedScroll(View view, int i, int i2, int i3, int i4) {
        m33176C(i4, 0, null);
    }

    @Override // android.view.ViewGroup, android.view.ViewParent, p020b.p041h.p050l.AbstractC1671o
    public void onNestedScrollAccepted(View view, View view2, int i) {
        mo29364k(view, view2, i, 0);
    }

    @Override // android.view.View
    protected void onOverScrolled(int i, int i2, boolean z, boolean z2) {
        super.scrollTo(i, i2);
    }

    @Override // android.view.ViewGroup
    protected boolean onRequestFocusInDescendants(int i, Rect rect) {
        int i2;
        if (i == 2) {
            i2 = 130;
        } else {
            i2 = i;
            if (i == 1) {
                i2 = 33;
            }
        }
        View findNextFocus = rect == null ? FocusFinder.getInstance().findNextFocus(this, null, i2) : FocusFinder.getInstance().findNextFocusFromRect(this, rect, i2);
        if (findNextFocus != null && !m33142z(findNextFocus)) {
            return findNextFocus.requestFocus(i2, rect);
        }
        return false;
    }

    @Override // android.view.View
    protected void onRestoreInstanceState(Parcelable parcelable) {
        if (!(parcelable instanceof SavedState)) {
            super.onRestoreInstanceState(parcelable);
            return;
        }
        SavedState savedState = (SavedState) parcelable;
        super.onRestoreInstanceState(savedState.getSuperState());
        this.f3038A = savedState;
        requestLayout();
    }

    @Override // android.view.View
    protected Parcelable onSaveInstanceState() {
        SavedState savedState = new SavedState(super.onSaveInstanceState());
        savedState.f3064d = getScrollY();
        return savedState;
    }

    @Override // android.view.View
    protected void onScrollChanged(int i, int i2, int i3, int i4) {
        super.onScrollChanged(i, i2, i3, i4);
        AbstractC0636b abstractC0636b = this.f3042E;
        if (abstractC0636b != null) {
            abstractC0636b.mo26923a(this, i, i2, i3, i4);
        }
    }

    @Override // android.view.View
    protected void onSizeChanged(int i, int i2, int i3, int i4) {
        super.onSizeChanged(i, i2, i3, i4);
        View findFocus = findFocus();
        if (findFocus == null || this == findFocus || !m33177B(findFocus, 0, i4)) {
            return;
        }
        findFocus.getDrawingRect(this.f3044g);
        offsetDescendantRectToMyCoords(findFocus, this.f3044g);
        m33154n(m33157e(this.f3044g));
    }

    @Override // android.view.ViewGroup, android.view.ViewParent, p020b.p041h.p050l.AbstractC1671o
    public boolean onStartNestedScroll(View view, View view2, int i) {
        return mo29365j(view, view2, i, 0);
    }

    @Override // android.view.ViewGroup, android.view.ViewParent, p020b.p041h.p050l.AbstractC1671o
    public void onStopNestedScroll(View view) {
        mo29363l(view, 0);
    }

    @Override // android.view.View
    public boolean onTouchEvent(MotionEvent motionEvent) {
        ViewParent parent;
        m33143y();
        int actionMasked = motionEvent.getActionMasked();
        if (actionMasked == 0) {
            this.f3062y = 0;
        }
        MotionEvent obtain = MotionEvent.obtain(motionEvent);
        obtain.offsetLocation(0.0f, this.f3062y);
        if (actionMasked != 0) {
            if (actionMasked == 1) {
                VelocityTracker velocityTracker = this.f3053p;
                velocityTracker.computeCurrentVelocity(1000, this.f3058u);
                int yVelocity = (int) velocityTracker.getYVelocity(this.f3059v);
                if (Math.abs(yVelocity) >= this.f3057t) {
                    int i = -yVelocity;
                    float f = i;
                    if (!dispatchNestedPreFling(0.0f, f)) {
                        dispatchNestedFling(0.0f, f, true);
                        m33149s(i);
                    }
                } else if (this.f3045h.springBack(getScrollX(), getScrollY(), 0, 0, 0, getScrollRange())) {
                    C1679w.m29293h0(this);
                }
                this.f3059v = -1;
                m33153o();
            } else if (actionMasked == 2) {
                int findPointerIndex = motionEvent.findPointerIndex(this.f3059v);
                if (findPointerIndex == -1) {
                    Log.e("NestedScrollView", "Invalid pointerId=" + this.f3059v + " in onTouchEvent");
                } else {
                    int y = (int) motionEvent.getY(findPointerIndex);
                    int i2 = this.f3048k - y;
                    int i3 = i2;
                    if (!this.f3052o) {
                        i3 = i2;
                        if (Math.abs(i2) > this.f3056s) {
                            ViewParent parent2 = getParent();
                            if (parent2 != null) {
                                parent2.requestDisallowInterceptTouchEvent(true);
                            }
                            this.f3052o = true;
                            i3 = i2 > 0 ? i2 - this.f3056s : i2 + this.f3056s;
                        }
                    }
                    int i4 = i3;
                    if (this.f3052o) {
                        int i5 = i4;
                        if (m33156f(0, i4, this.f3061x, this.f3060w, 0)) {
                            i5 = i4 - this.f3061x[1];
                            this.f3062y += this.f3060w[1];
                        }
                        this.f3048k = y - this.f3060w[1];
                        int scrollY = getScrollY();
                        int scrollRange = getScrollRange();
                        int overScrollMode = getOverScrollMode();
                        boolean z = overScrollMode == 0 || (overScrollMode == 1 && scrollRange > 0);
                        if (m33174E(0, i5, 0, getScrollY(), 0, scrollRange, 0, 0, true) && !m33147u(0)) {
                            this.f3053p.clear();
                        }
                        int scrollY2 = getScrollY() - scrollY;
                        int[] iArr = this.f3061x;
                        iArr[1] = 0;
                        m33155g(0, scrollY2, 0, i5 - scrollY2, this.f3060w, 0, iArr);
                        int i6 = this.f3048k;
                        int[] iArr2 = this.f3060w;
                        this.f3048k = i6 - iArr2[1];
                        this.f3062y += iArr2[1];
                        if (z) {
                            int i7 = i5 - this.f3061x[1];
                            m33152p();
                            int i8 = scrollY + i7;
                            if (i8 < 0) {
                                C0644f.m33103a(this.f3046i, i7 / getHeight(), motionEvent.getX(findPointerIndex) / getWidth());
                                if (!this.f3047j.isFinished()) {
                                    this.f3047j.onRelease();
                                }
                            } else if (i8 > scrollRange) {
                                C0644f.m33103a(this.f3047j, i7 / getHeight(), 1.0f - (motionEvent.getX(findPointerIndex) / getWidth()));
                                if (!this.f3046i.isFinished()) {
                                    this.f3046i.onRelease();
                                }
                            }
                            EdgeEffect edgeEffect = this.f3046i;
                            if (edgeEffect != null && (!edgeEffect.isFinished() || !this.f3047j.isFinished())) {
                                C1679w.m29293h0(this);
                            }
                        }
                    }
                }
            } else if (actionMasked == 3) {
                if (this.f3052o && getChildCount() > 0 && this.f3045h.springBack(getScrollX(), getScrollY(), 0, 0, 0, getScrollRange())) {
                    C1679w.m29293h0(this);
                }
                this.f3059v = -1;
                m33153o();
            } else if (actionMasked == 5) {
                int actionIndex = motionEvent.getActionIndex();
                this.f3048k = (int) motionEvent.getY(actionIndex);
                this.f3059v = motionEvent.getPointerId(actionIndex);
            } else if (actionMasked == 6) {
                m33175D(motionEvent);
                this.f3048k = (int) motionEvent.getY(motionEvent.findPointerIndex(this.f3059v));
            }
        } else if (getChildCount() == 0) {
            return false;
        } else {
            boolean z2 = !this.f3045h.isFinished();
            this.f3052o = z2;
            if (z2 && (parent = getParent()) != null) {
                parent.requestDisallowInterceptTouchEvent(true);
            }
            if (!this.f3045h.isFinished()) {
                m33161a();
            }
            this.f3048k = (int) motionEvent.getY();
            this.f3059v = motionEvent.getPointerId(0);
            m33163P(2, 0);
        }
        VelocityTracker velocityTracker2 = this.f3053p;
        if (velocityTracker2 != null) {
            velocityTracker2.addMovement(obtain);
        }
        obtain.recycle();
        return true;
    }

    /* renamed from: q */
    public boolean m33151q(KeyEvent keyEvent) {
        this.f3044g.setEmpty();
        int i = 130;
        if (m33159c()) {
            boolean z = false;
            if (keyEvent.getAction() == 0) {
                int keyCode = keyEvent.getKeyCode();
                if (keyCode == 19) {
                    z = !keyEvent.isAltPressed() ? m33160b(33) : m33148t(33);
                } else if (keyCode == 20) {
                    z = !keyEvent.isAltPressed() ? m33160b(130) : m33148t(130);
                } else if (keyCode != 62) {
                    z = false;
                } else {
                    if (keyEvent.isShiftPressed()) {
                        i = 33;
                    }
                    m33173F(i);
                    z = false;
                }
            }
            return z;
        }
        boolean z2 = false;
        if (isFocused()) {
            z2 = false;
            if (keyEvent.getKeyCode() != 4) {
                View findFocus = findFocus();
                View view = findFocus;
                if (findFocus == this) {
                    view = null;
                }
                View findNextFocus = FocusFinder.getInstance().findNextFocus(this, view, 130);
                z2 = false;
                if (findNextFocus != null) {
                    z2 = false;
                    if (findNextFocus != this) {
                        z2 = false;
                        if (findNextFocus.requestFocus(130)) {
                            z2 = true;
                        }
                    }
                }
            }
        }
        return z2;
    }

    @Override // android.view.ViewGroup, android.view.ViewParent
    public void requestChildFocus(View view, View view2) {
        if (!this.f3049l) {
            m33169J(view2);
        } else {
            this.f3051n = view2;
        }
        super.requestChildFocus(view, view2);
    }

    @Override // android.view.ViewGroup, android.view.ViewParent
    public boolean requestChildRectangleOnScreen(View view, Rect rect, boolean z) {
        rect.offset(view.getLeft() - view.getScrollX(), view.getTop() - view.getScrollY());
        return m33168K(rect, z);
    }

    @Override // android.view.ViewGroup, android.view.ViewParent
    public void requestDisallowInterceptTouchEvent(boolean z) {
        if (z) {
            m33172G();
        }
        super.requestDisallowInterceptTouchEvent(z);
    }

    @Override // android.view.View, android.view.ViewParent
    public void requestLayout() {
        this.f3049l = true;
        super.requestLayout();
    }

    /* renamed from: s */
    public void m33149s(int i) {
        if (getChildCount() > 0) {
            this.f3045h.fling(getScrollX(), getScrollY(), 0, i, 0, 0, Integer.MIN_VALUE, Integer.MAX_VALUE, 0, 0);
            m33171H(true);
        }
    }

    @Override // android.view.View
    public void scrollTo(int i, int i2) {
        if (getChildCount() > 0) {
            View childAt = getChildAt(0);
            FrameLayout.LayoutParams layoutParams = (FrameLayout.LayoutParams) childAt.getLayoutParams();
            int width = getWidth();
            int paddingLeft = getPaddingLeft();
            int paddingRight = getPaddingRight();
            int width2 = childAt.getWidth();
            int i3 = layoutParams.leftMargin;
            int i4 = layoutParams.rightMargin;
            int height = getHeight();
            int paddingTop = getPaddingTop();
            int paddingBottom = getPaddingBottom();
            int height2 = childAt.getHeight();
            int i5 = layoutParams.topMargin;
            int i6 = layoutParams.bottomMargin;
            int m33158d = m33158d(i, (width - paddingLeft) - paddingRight, width2 + i3 + i4);
            int m33158d2 = m33158d(i2, (height - paddingTop) - paddingBottom, height2 + i5 + i6);
            if (m33158d == getScrollX() && m33158d2 == getScrollY()) {
                return;
            }
            super.scrollTo(m33158d, m33158d2);
        }
    }

    public void setFillViewport(boolean z) {
        if (z != this.f3054q) {
            this.f3054q = z;
            requestLayout();
        }
    }

    @Override // android.view.View
    public void setNestedScrollingEnabled(boolean z) {
        this.f3040C.m29372m(z);
    }

    public void setOnScrollChangeListener(AbstractC0636b abstractC0636b) {
        this.f3042E = abstractC0636b;
    }

    public void setSmoothScrollingEnabled(boolean z) {
        this.f3055r = z;
    }

    @Override // android.widget.FrameLayout, android.view.ViewGroup
    public boolean shouldDelayChildPressedState() {
        return true;
    }

    @Override // android.view.View
    public boolean startNestedScroll(int i) {
        return m33163P(i, 0);
    }

    @Override // android.view.View, p020b.p041h.p050l.AbstractC1667k
    public void stopNestedScroll() {
        m33162Q(0);
    }

    /* renamed from: t */
    public boolean m33148t(int i) {
        int childCount;
        boolean z = i == 130;
        int height = getHeight();
        Rect rect = this.f3044g;
        rect.top = 0;
        rect.bottom = height;
        if (z && (childCount = getChildCount()) > 0) {
            View childAt = getChildAt(childCount - 1);
            this.f3044g.bottom = childAt.getBottom() + ((FrameLayout.LayoutParams) childAt.getLayoutParams()).bottomMargin + getPaddingBottom();
            Rect rect2 = this.f3044g;
            rect2.top = rect2.bottom - height;
        }
        Rect rect3 = this.f3044g;
        return m33170I(i, rect3.top, rect3.bottom);
    }

    /* renamed from: u */
    public boolean m33147u(int i) {
        return this.f3040C.m29374k(i);
    }
}

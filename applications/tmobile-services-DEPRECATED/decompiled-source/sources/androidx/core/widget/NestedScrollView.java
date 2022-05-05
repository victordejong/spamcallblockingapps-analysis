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
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.RestrictTo;
import androidx.core.view.AccessibilityDelegateCompat;
import androidx.core.view.NestedScrollingChild3;
import androidx.core.view.NestedScrollingChildHelper;
import androidx.core.view.NestedScrollingParent3;
import androidx.core.view.NestedScrollingParentHelper;
import androidx.core.view.ScrollingView;
import androidx.core.view.ViewCompat;
import androidx.core.view.accessibility.AccessibilityNodeInfoCompat;
import androidx.core.view.accessibility.AccessibilityRecordCompat;
import com.google.android.gms.common.api.Api;
import java.util.ArrayList;
/* loaded from: classes-dex2jar.jar:androidx/core/widget/NestedScrollView.class */
public class NestedScrollView extends FrameLayout implements NestedScrollingParent3, NestedScrollingChild3, ScrollingView {

    /* renamed from: F */
    private static final AccessibilityDelegate f3401F = new AccessibilityDelegate();

    /* renamed from: G */
    private static final int[] f3402G = {16843130};

    /* renamed from: A */
    private SavedState f3403A;

    /* renamed from: B */
    private final NestedScrollingParentHelper f3404B;

    /* renamed from: C */
    private final NestedScrollingChildHelper f3405C;

    /* renamed from: D */
    private float f3406D;

    /* renamed from: E */
    private OnScrollChangeListener f3407E;

    /* renamed from: f */
    private long f3408f;

    /* renamed from: g */
    private final Rect f3409g;

    /* renamed from: h */
    private OverScroller f3410h;

    /* renamed from: i */
    private EdgeEffect f3411i;

    /* renamed from: j */
    private EdgeEffect f3412j;

    /* renamed from: k */
    private int f3413k;

    /* renamed from: l */
    private boolean f3414l;

    /* renamed from: m */
    private boolean f3415m;

    /* renamed from: n */
    private View f3416n;

    /* renamed from: o */
    private boolean f3417o;

    /* renamed from: p */
    private VelocityTracker f3418p;

    /* renamed from: q */
    private boolean f3419q;

    /* renamed from: r */
    private boolean f3420r;

    /* renamed from: s */
    private int f3421s;

    /* renamed from: t */
    private int f3422t;

    /* renamed from: u */
    private int f3423u;

    /* renamed from: v */
    private int f3424v;

    /* renamed from: w */
    private final int[] f3425w;

    /* renamed from: x */
    private final int[] f3426x;

    /* renamed from: y */
    private int f3427y;

    /* renamed from: z */
    private int f3428z;

    /* loaded from: classes-dex2jar.jar:androidx/core/widget/NestedScrollView$AccessibilityDelegate.class */
    static class AccessibilityDelegate extends AccessibilityDelegateCompat {
        AccessibilityDelegate() {
        }

        @Override // androidx.core.view.AccessibilityDelegateCompat
        public void onInitializeAccessibilityEvent(View view, AccessibilityEvent accessibilityEvent) {
            super.onInitializeAccessibilityEvent(view, accessibilityEvent);
            NestedScrollView nestedScrollView = (NestedScrollView) view;
            accessibilityEvent.setClassName(ScrollView.class.getName());
            accessibilityEvent.setScrollable(nestedScrollView.getScrollRange() > 0);
            accessibilityEvent.setScrollX(nestedScrollView.getScrollX());
            accessibilityEvent.setScrollY(nestedScrollView.getScrollY());
            AccessibilityRecordCompat.m18968b(accessibilityEvent, nestedScrollView.getScrollX());
            AccessibilityRecordCompat.m18966d(accessibilityEvent, nestedScrollView.getScrollRange());
        }

        @Override // androidx.core.view.AccessibilityDelegateCompat
        public void onInitializeAccessibilityNodeInfo(View view, AccessibilityNodeInfoCompat accessibilityNodeInfoCompat) {
            int scrollRange;
            super.onInitializeAccessibilityNodeInfo(view, accessibilityNodeInfoCompat);
            NestedScrollView nestedScrollView = (NestedScrollView) view;
            accessibilityNodeInfoCompat.m19026c0(ScrollView.class.getName());
            if (nestedScrollView.isEnabled() && (scrollRange = nestedScrollView.getScrollRange()) > 0) {
                accessibilityNodeInfoCompat.m18982y0(true);
                if (nestedScrollView.getScrollY() > 0) {
                    accessibilityNodeInfoCompat.m19029b(AccessibilityNodeInfoCompat.AccessibilityActionCompat.f3334i);
                    accessibilityNodeInfoCompat.m19029b(AccessibilityNodeInfoCompat.AccessibilityActionCompat.f3338m);
                }
                if (nestedScrollView.getScrollY() < scrollRange) {
                    accessibilityNodeInfoCompat.m19029b(AccessibilityNodeInfoCompat.AccessibilityActionCompat.f3333h);
                    accessibilityNodeInfoCompat.m19029b(AccessibilityNodeInfoCompat.AccessibilityActionCompat.f3339n);
                }
            }
        }

        @Override // androidx.core.view.AccessibilityDelegateCompat
        public boolean performAccessibilityAction(View view, int i, Bundle bundle) {
            if (super.performAccessibilityAction(view, i, bundle)) {
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
                    nestedScrollView.m18878O(0, max, true);
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
            nestedScrollView.m18878O(0, min, true);
            return true;
        }
    }

    /* loaded from: classes-dex2jar.jar:androidx/core/widget/NestedScrollView$OnScrollChangeListener.class */
    public interface OnScrollChangeListener {
        /* renamed from: a */
        void mo6899a(NestedScrollView nestedScrollView, int i, int i2, int i3, int i4);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes-dex2jar.jar:androidx/core/widget/NestedScrollView$SavedState.class */
    public static class SavedState extends View.BaseSavedState {
        public static final Parcelable.Creator<SavedState> CREATOR = new Parcelable.Creator<SavedState>() { // from class: androidx.core.widget.NestedScrollView.SavedState.1
            /* renamed from: a */
            public SavedState createFromParcel(Parcel parcel) {
                return new SavedState(parcel);
            }

            /* renamed from: b */
            public SavedState[] newArray(int i) {
                return new SavedState[i];
            }
        };

        /* renamed from: f */
        public int f3429f;

        SavedState(Parcel parcel) {
            super(parcel);
            this.f3429f = parcel.readInt();
        }

        SavedState(Parcelable parcelable) {
            super(parcelable);
        }

        @NonNull
        public String toString() {
            return "HorizontalScrollView.SavedState{" + Integer.toHexString(System.identityHashCode(this)) + " scrollPosition=" + this.f3429f + "}";
        }

        @Override // android.view.View.BaseSavedState, android.view.AbsSavedState, android.os.Parcelable
        public void writeToParcel(Parcel parcel, int i) {
            super.writeToParcel(parcel, i);
            parcel.writeInt(this.f3429f);
        }
    }

    public NestedScrollView(@NonNull Context context) {
        this(context, null);
    }

    public NestedScrollView(@NonNull Context context, @Nullable AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    public NestedScrollView(@NonNull Context context, @Nullable AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        this.f3409g = new Rect();
        this.f3414l = true;
        this.f3415m = false;
        this.f3416n = null;
        this.f3417o = false;
        this.f3420r = true;
        this.f3424v = -1;
        this.f3425w = new int[2];
        this.f3426x = new int[2];
        m18852x();
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, f3402G, i, 0);
        setFillViewport(obtainStyledAttributes.getBoolean(0, false));
        obtainStyledAttributes.recycle();
        this.f3404B = new NestedScrollingParentHelper(this);
        this.f3405C = new NestedScrollingChildHelper(this);
        setNestedScrollingEnabled(true);
        ViewCompat.m19183n0(this, f3401F);
    }

    /* renamed from: A */
    private static boolean m18892A(View view, View view2) {
        boolean z = true;
        if (view == view2) {
            return true;
        }
        ViewParent parent = view.getParent();
        if (!(parent instanceof ViewGroup) || !m18892A((View) parent, view2)) {
            z = false;
        }
        return z;
    }

    /* renamed from: B */
    private boolean m18891B(View view, int i, int i2) {
        view.getDrawingRect(this.f3409g);
        offsetDescendantRectToMyCoords(view, this.f3409g);
        return this.f3409g.bottom + i >= getScrollY() && this.f3409g.top - i <= getScrollY() + i2;
    }

    /* renamed from: C */
    private void m18890C(int i, int i2, @Nullable int[] iArr) {
        int scrollY = getScrollY();
        scrollBy(0, i);
        int scrollY2 = getScrollY() - scrollY;
        if (iArr != null) {
            iArr[1] = iArr[1] + scrollY2;
        }
        this.f3405C.m19268e(0, scrollY2, 0, i - scrollY2, null, i2, iArr);
    }

    /* renamed from: D */
    private void m18889D(MotionEvent motionEvent) {
        int actionIndex = motionEvent.getActionIndex();
        if (motionEvent.getPointerId(actionIndex) == this.f3424v) {
            int i = actionIndex == 0 ? 1 : 0;
            this.f3413k = (int) motionEvent.getY(i);
            this.f3424v = motionEvent.getPointerId(i);
            VelocityTracker velocityTracker = this.f3418p;
            if (velocityTracker != null) {
                velocityTracker.clear();
            }
        }
    }

    /* renamed from: G */
    private void m18886G() {
        VelocityTracker velocityTracker = this.f3418p;
        if (velocityTracker != null) {
            velocityTracker.recycle();
            this.f3418p = null;
        }
    }

    /* renamed from: H */
    private void m18885H(boolean z) {
        if (z) {
            m18877P(2, 1);
        } else {
            m18876Q(1);
        }
        this.f3428z = getScrollY();
        ViewCompat.m19203d0(this);
    }

    /* renamed from: I */
    private boolean m18884I(int i, int i2, int i3) {
        int height = getHeight();
        int scrollY = getScrollY();
        int i4 = height + scrollY;
        boolean z = false;
        boolean z2 = i == 33;
        View r = m18858r(z2, i2, i3);
        View view = r;
        if (r == null) {
            view = this;
        }
        if (i2 < scrollY || i3 > i4) {
            m18868h(z2 ? i2 - scrollY : i3 - i4);
            z = true;
        }
        if (view != findFocus()) {
            view.requestFocus(i);
        }
        return z;
    }

    /* renamed from: J */
    private void m18883J(View view) {
        view.getDrawingRect(this.f3409g);
        offsetDescendantRectToMyCoords(view, this.f3409g);
        int e = m18871e(this.f3409g);
        if (e != 0) {
            scrollBy(0, e);
        }
    }

    /* renamed from: K */
    private boolean m18882K(Rect rect, boolean z) {
        int e = m18871e(rect);
        boolean z2 = e != 0;
        if (z2) {
            if (z) {
                scrollBy(0, e);
            } else {
                m18881L(0, e);
            }
        }
        return z2;
    }

    /* renamed from: M */
    private void m18880M(int i, int i2, int i3, boolean z) {
        if (getChildCount() != 0) {
            if (AnimationUtils.currentAnimationTimeMillis() - this.f3408f > 250) {
                View childAt = getChildAt(0);
                FrameLayout.LayoutParams layoutParams = (FrameLayout.LayoutParams) childAt.getLayoutParams();
                int height = childAt.getHeight();
                int i4 = layoutParams.topMargin;
                int i5 = layoutParams.bottomMargin;
                int height2 = getHeight();
                int paddingTop = getPaddingTop();
                int paddingBottom = getPaddingBottom();
                int scrollY = getScrollY();
                this.f3410h.startScroll(getScrollX(), scrollY, 0, Math.max(0, Math.min(i2 + scrollY, Math.max(0, ((height + i4) + i5) - ((height2 - paddingTop) - paddingBottom)))) - scrollY, i3);
                m18885H(z);
            } else {
                if (!this.f3410h.isFinished()) {
                    m18875a();
                }
                scrollBy(i, i2);
            }
            this.f3408f = AnimationUtils.currentAnimationTimeMillis();
        }
    }

    /* renamed from: a */
    private void m18875a() {
        this.f3410h.abortAnimation();
        m18876Q(1);
    }

    /* renamed from: c */
    private boolean m18873c() {
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
    private static int m18872d(int i, int i2, int i3) {
        if (i2 >= i3 || i < 0) {
            return 0;
        }
        return i2 + i > i3 ? i3 - i2 : i;
    }

    private float getVerticalScrollFactorCompat() {
        if (this.f3406D == 0.0f) {
            TypedValue typedValue = new TypedValue();
            Context context = getContext();
            if (context.getTheme().resolveAttribute(16842829, typedValue, true)) {
                this.f3406D = typedValue.getDimension(context.getResources().getDisplayMetrics());
            } else {
                throw new IllegalStateException("Expected theme to define listPreferredItemHeight.");
            }
        }
        return this.f3406D;
    }

    /* renamed from: h */
    private void m18868h(int i) {
        if (i == 0) {
            return;
        }
        if (this.f3420r) {
            m18881L(0, i);
        } else {
            scrollBy(0, i);
        }
    }

    /* renamed from: o */
    private void m18861o() {
        this.f3417o = false;
        m18886G();
        m18876Q(0);
        EdgeEffect edgeEffect = this.f3411i;
        if (edgeEffect != null) {
            edgeEffect.onRelease();
            this.f3412j.onRelease();
        }
    }

    /* renamed from: p */
    private void m18860p() {
        if (getOverScrollMode() == 2) {
            this.f3411i = null;
            this.f3412j = null;
        } else if (this.f3411i == null) {
            Context context = getContext();
            this.f3411i = new EdgeEffect(context);
            this.f3412j = new EdgeEffect(context);
        }
    }

    /* renamed from: r */
    private View m18858r(boolean z, int i, int i2) {
        ArrayList focusables = getFocusables(2);
        int size = focusables.size();
        View view = null;
        boolean z2 = false;
        for (int i3 = 0; i3 < size; i3++) {
            View view2 = (View) focusables.get(i3);
            int top = view2.getTop();
            int bottom = view2.getBottom();
            view = view;
            z2 = z2;
            if (i < bottom) {
                view = view;
                z2 = z2;
                if (top < i2) {
                    boolean z3 = i < top && bottom < i2;
                    if (view == null) {
                        view = view2;
                        z2 = z3;
                    } else {
                        boolean z4 = (z && top < view.getTop()) || (!z && bottom > view.getBottom());
                        if (z2) {
                            view = view;
                            z2 = z2;
                            if (z3) {
                                view = view;
                                z2 = z2;
                                if (!z4) {
                                }
                                view = view2;
                                z2 = z2;
                            }
                        } else if (z3) {
                            view = view2;
                            z2 = true;
                        } else {
                            view = view;
                            z2 = z2;
                            if (!z4) {
                            }
                            view = view2;
                            z2 = z2;
                        }
                    }
                }
            }
        }
        return view;
    }

    /* renamed from: v */
    private boolean m18854v(int i, int i2) {
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
    private void m18853w() {
        VelocityTracker velocityTracker = this.f3418p;
        if (velocityTracker == null) {
            this.f3418p = VelocityTracker.obtain();
        } else {
            velocityTracker.clear();
        }
    }

    /* renamed from: x */
    private void m18852x() {
        this.f3410h = new OverScroller(getContext());
        setFocusable(true);
        setDescendantFocusability(262144);
        setWillNotDraw(false);
        ViewConfiguration viewConfiguration = ViewConfiguration.get(getContext());
        this.f3421s = viewConfiguration.getScaledTouchSlop();
        this.f3422t = viewConfiguration.getScaledMinimumFlingVelocity();
        this.f3423u = viewConfiguration.getScaledMaximumFlingVelocity();
    }

    /* renamed from: y */
    private void m18851y() {
        if (this.f3418p == null) {
            this.f3418p = VelocityTracker.obtain();
        }
    }

    /* renamed from: z */
    private boolean m18850z(View view) {
        return !m18891B(view, 0, getHeight());
    }

    /* JADX WARN: Removed duplicated region for block: B:43:0x00cd  */
    /* JADX WARN: Removed duplicated region for block: B:45:0x00d6  */
    /* JADX WARN: Removed duplicated region for block: B:51:0x00ee  */
    /* JADX WARN: Removed duplicated region for block: B:56:0x0116  */
    /* renamed from: E */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    boolean m18888E(int r9, int r10, int r11, int r12, int r13, int r14, int r15, int r16, boolean r17) {
        /*
            Method dump skipped, instructions count: 293
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.core.widget.NestedScrollView.m18888E(int, int, int, int, int, int, int, int, boolean):boolean");
    }

    /* renamed from: F */
    public boolean m18887F(int i) {
        boolean z = i == 130;
        int height = getHeight();
        if (z) {
            this.f3409g.top = getScrollY() + height;
            int childCount = getChildCount();
            if (childCount > 0) {
                View childAt = getChildAt(childCount - 1);
                int bottom = childAt.getBottom() + ((FrameLayout.LayoutParams) childAt.getLayoutParams()).bottomMargin + getPaddingBottom();
                Rect rect = this.f3409g;
                if (rect.top + height > bottom) {
                    rect.top = bottom - height;
                }
            }
        } else {
            this.f3409g.top = getScrollY() - height;
            Rect rect2 = this.f3409g;
            if (rect2.top < 0) {
                rect2.top = 0;
            }
        }
        Rect rect3 = this.f3409g;
        int i2 = rect3.top;
        int i3 = height + i2;
        rect3.bottom = i3;
        return m18884I(i, i2, i3);
    }

    /* renamed from: L */
    public final void m18881L(int i, int i2) {
        m18880M(i, i2, 250, false);
    }

    /* renamed from: N */
    void m18879N(int i, int i2, int i3, boolean z) {
        m18880M(i - getScrollX(), i2 - getScrollY(), i3, z);
    }

    /* renamed from: O */
    void m18878O(int i, int i2, boolean z) {
        m18879N(i, i2, 250, z);
    }

    /* renamed from: P */
    public boolean m18877P(int i, int i2) {
        return this.f3405C.m19257p(i, i2);
    }

    /* renamed from: Q */
    public void m18876Q(int i) {
        this.f3405C.m19255r(i);
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
    public boolean m18874b(int i) {
        int i2;
        View findFocus = findFocus();
        View view = findFocus;
        if (findFocus == this) {
            view = null;
        }
        View findNextFocus = FocusFinder.getInstance().findNextFocus(this, view, i);
        int maxScrollAmount = getMaxScrollAmount();
        if (findNextFocus == null || !m18891B(findNextFocus, maxScrollAmount, getHeight())) {
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
            m18868h(i2);
        } else {
            findNextFocus.getDrawingRect(this.f3409g);
            offsetDescendantRectToMyCoords(findNextFocus, this.f3409g);
            m18868h(m18871e(this.f3409g));
            findNextFocus.requestFocus(i);
        }
        if (view == null || !view.isFocused() || !m18850z(view)) {
            return true;
        }
        int descendantFocusability = getDescendantFocusability();
        setDescendantFocusability(131072);
        requestFocus();
        setDescendantFocusability(descendantFocusability);
        return true;
    }

    @Override // android.view.View
    @RestrictTo
    public int computeHorizontalScrollExtent() {
        return super.computeHorizontalScrollExtent();
    }

    @Override // android.view.View
    @RestrictTo
    public int computeHorizontalScrollOffset() {
        return super.computeHorizontalScrollOffset();
    }

    @Override // android.view.View
    @RestrictTo
    public int computeHorizontalScrollRange() {
        return super.computeHorizontalScrollRange();
    }

    /* JADX WARN: Code restructure failed: missing block: B:15:0x00b1, code lost:
        if (r0 > 0) goto L_0x00b4;
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
    @RestrictTo
    public int computeVerticalScrollExtent() {
        return super.computeVerticalScrollExtent();
    }

    @Override // android.view.View
    @RestrictTo
    public int computeVerticalScrollOffset() {
        return Math.max(0, super.computeVerticalScrollOffset());
    }

    @Override // android.view.View
    @RestrictTo
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
        return super.dispatchKeyEvent(keyEvent) || m18859q(keyEvent);
    }

    @Override // android.view.View
    public boolean dispatchNestedFling(float f, float f2, boolean z) {
        return this.f3405C.m19272a(f, f2, z);
    }

    @Override // android.view.View
    public boolean dispatchNestedPreFling(float f, float f2) {
        return this.f3405C.m19271b(f, f2);
    }

    @Override // android.view.View
    public boolean dispatchNestedPreScroll(int i, int i2, int[] iArr, int[] iArr2) {
        return m18870f(i, i2, iArr, iArr2, 0);
    }

    @Override // android.view.View
    public boolean dispatchNestedScroll(int i, int i2, int i3, int i4, int[] iArr) {
        return this.f3405C.m19267f(i, i2, i3, i4, iArr);
    }

    /* JADX WARN: Code restructure failed: missing block: B:26:0x0104, code lost:
        if (getClipToPadding() != false) goto L_0x0107;
     */
    @Override // android.view.View
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void draw(android.graphics.Canvas r6) {
        /*
            Method dump skipped, instructions count: 396
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.core.widget.NestedScrollView.draw(android.graphics.Canvas):void");
    }

    /* renamed from: e */
    protected int m18871e(Rect rect) {
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
        if (rect.bottom <= i4 || rect.top <= i3) {
            i = 0;
            if (rect.top < i3) {
                i = 0;
                if (rect.bottom < i4) {
                    i = Math.max(rect.height() > height ? 0 - (i4 - rect.bottom) : 0 - (i3 - rect.top), -getScrollY());
                }
            }
        } else {
            i = Math.min((rect.height() > height ? rect.top - i3 : rect.bottom - i4) + 0, (childAt.getBottom() + layoutParams.bottomMargin) - i2);
        }
        return i;
    }

    /* renamed from: f */
    public boolean m18870f(int i, int i2, int[] iArr, int[] iArr2, int i3) {
        return this.f3405C.m19269d(i, i2, iArr, iArr2, i3);
    }

    /* renamed from: g */
    public void m18869g(int i, int i2, int i3, int i4, @Nullable int[] iArr, int i5, @NonNull int[] iArr2) {
        this.f3405C.m19268e(i, i2, i3, i4, iArr, i5, iArr2);
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
        if (bottom < verticalFadingEdgeLength) {
            return bottom / verticalFadingEdgeLength;
        }
        return 1.0f;
    }

    public int getMaxScrollAmount() {
        return (int) (getHeight() * 0.5f);
    }

    @Override // android.view.ViewGroup
    public int getNestedScrollAxes() {
        return this.f3404B.m19254a();
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
        if (scrollY < verticalFadingEdgeLength) {
            return scrollY / verticalFadingEdgeLength;
        }
        return 1.0f;
    }

    @Override // android.view.View
    public boolean hasNestedScrollingParent() {
        return m18855u(0);
    }

    @Override // androidx.core.view.NestedScrollingParent3
    /* renamed from: i */
    public void mo18867i(@NonNull View view, int i, int i2, int i3, int i4, int i5, @NonNull int[] iArr) {
        m18890C(i4, i5, iArr);
    }

    @Override // android.view.View, androidx.core.view.NestedScrollingChild
    public boolean isNestedScrollingEnabled() {
        return this.f3405C.m19261l();
    }

    @Override // androidx.core.view.NestedScrollingParent2
    /* renamed from: j */
    public void mo18866j(@NonNull View view, int i, int i2, int i3, int i4, int i5) {
        m18890C(i4, i5, null);
    }

    @Override // androidx.core.view.NestedScrollingParent2
    /* renamed from: k */
    public boolean mo18865k(@NonNull View view, @NonNull View view2, int i, int i2) {
        return (i & 2) != 0;
    }

    @Override // androidx.core.view.NestedScrollingParent2
    /* renamed from: l */
    public void mo18864l(@NonNull View view, @NonNull View view2, int i, int i2) {
        this.f3404B.m19252c(view, view2, i, i2);
        m18877P(2, i2);
    }

    @Override // androidx.core.view.NestedScrollingParent2
    /* renamed from: m */
    public void mo18863m(@NonNull View view, int i) {
        this.f3404B.m19250e(view, i);
        m18876Q(i);
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

    @Override // androidx.core.view.NestedScrollingParent2
    /* renamed from: n */
    public void mo18862n(@NonNull View view, int i, int i2, @NonNull int[] iArr, int i3) {
        m18870f(i, i2, iArr, null, i3);
    }

    @Override // android.view.ViewGroup, android.view.View
    public void onAttachedToWindow() {
        super.onAttachedToWindow();
        this.f3415m = false;
    }

    @Override // android.view.View
    public boolean onGenericMotionEvent(MotionEvent motionEvent) {
        if ((motionEvent.getSource() & 2) == 0 || motionEvent.getAction() != 8 || this.f3417o) {
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
        if (action == 2 && this.f3417o) {
            return true;
        }
        int i = action & 255;
        if (i != 0) {
            if (i != 1) {
                if (i == 2) {
                    int i2 = this.f3424v;
                    if (i2 != -1) {
                        int findPointerIndex = motionEvent.findPointerIndex(i2);
                        if (findPointerIndex == -1) {
                            Log.e("NestedScrollView", "Invalid pointerId=" + i2 + " in onInterceptTouchEvent");
                        } else {
                            int y = (int) motionEvent.getY(findPointerIndex);
                            if (Math.abs(y - this.f3413k) > this.f3421s && (2 & getNestedScrollAxes()) == 0) {
                                this.f3417o = true;
                                this.f3413k = y;
                                m18851y();
                                this.f3418p.addMovement(motionEvent);
                                this.f3427y = 0;
                                ViewParent parent = getParent();
                                if (parent != null) {
                                    parent.requestDisallowInterceptTouchEvent(true);
                                }
                            }
                        }
                    }
                } else if (i != 3) {
                    if (i == 6) {
                        m18889D(motionEvent);
                    }
                }
            }
            this.f3417o = false;
            this.f3424v = -1;
            m18886G();
            if (this.f3410h.springBack(getScrollX(), getScrollY(), 0, 0, 0, getScrollRange())) {
                ViewCompat.m19203d0(this);
            }
            m18876Q(0);
        } else {
            int y2 = (int) motionEvent.getY();
            if (!m18854v((int) motionEvent.getX(), y2)) {
                this.f3417o = false;
                m18886G();
            } else {
                this.f3413k = y2;
                this.f3424v = motionEvent.getPointerId(0);
                m18853w();
                this.f3418p.addMovement(motionEvent);
                this.f3410h.computeScrollOffset();
                this.f3417o = !this.f3410h.isFinished();
                m18877P(2, 0);
            }
        }
        return this.f3417o;
    }

    @Override // android.widget.FrameLayout, android.view.ViewGroup, android.view.View
    protected void onLayout(boolean z, int i, int i2, int i3, int i4) {
        super.onLayout(z, i, i2, i3, i4);
        int i5 = 0;
        this.f3414l = false;
        View view = this.f3416n;
        if (view != null && m18892A(view, this)) {
            m18883J(this.f3416n);
        }
        this.f3416n = null;
        if (!this.f3415m) {
            if (this.f3403A != null) {
                scrollTo(getScrollX(), this.f3403A.f3429f);
                this.f3403A = null;
            }
            if (getChildCount() > 0) {
                View childAt = getChildAt(0);
                FrameLayout.LayoutParams layoutParams = (FrameLayout.LayoutParams) childAt.getLayoutParams();
                i5 = childAt.getMeasuredHeight() + layoutParams.topMargin + layoutParams.bottomMargin;
            }
            int paddingTop = getPaddingTop();
            int paddingBottom = getPaddingBottom();
            int scrollY = getScrollY();
            int d = m18872d(scrollY, ((i4 - i2) - paddingTop) - paddingBottom, i5);
            if (d != scrollY) {
                scrollTo(getScrollX(), d);
            }
        }
        scrollTo(getScrollX(), getScrollY());
        this.f3415m = true;
    }

    @Override // android.widget.FrameLayout, android.view.View
    protected void onMeasure(int i, int i2) {
        super.onMeasure(i, i2);
        if (this.f3419q && View.MeasureSpec.getMode(i2) != 0 && getChildCount() > 0) {
            View childAt = getChildAt(0);
            FrameLayout.LayoutParams layoutParams = (FrameLayout.LayoutParams) childAt.getLayoutParams();
            int measuredHeight = childAt.getMeasuredHeight();
            int measuredHeight2 = (((getMeasuredHeight() - getPaddingTop()) - getPaddingBottom()) - layoutParams.topMargin) - layoutParams.bottomMargin;
            if (measuredHeight < measuredHeight2) {
                childAt.measure(FrameLayout.getChildMeasureSpec(i, getPaddingLeft() + getPaddingRight() + layoutParams.leftMargin + layoutParams.rightMargin, layoutParams.width), View.MeasureSpec.makeMeasureSpec(measuredHeight2, 1073741824));
            }
        }
    }

    @Override // android.view.ViewGroup, android.view.ViewParent, androidx.core.view.NestedScrollingParent
    public boolean onNestedFling(@NonNull View view, float f, float f2, boolean z) {
        if (z) {
            return false;
        }
        dispatchNestedFling(0.0f, f2, true);
        m18857s((int) f2);
        return true;
    }

    @Override // android.view.ViewGroup, android.view.ViewParent, androidx.core.view.NestedScrollingParent
    public boolean onNestedPreFling(@NonNull View view, float f, float f2) {
        return dispatchNestedPreFling(f, f2);
    }

    @Override // android.view.ViewGroup, android.view.ViewParent, androidx.core.view.NestedScrollingParent
    public void onNestedPreScroll(@NonNull View view, int i, int i2, @NonNull int[] iArr) {
        mo18862n(view, i, i2, iArr, 0);
    }

    @Override // android.view.ViewGroup, android.view.ViewParent, androidx.core.view.NestedScrollingParent
    public void onNestedScroll(@NonNull View view, int i, int i2, int i3, int i4) {
        m18890C(i4, 0, null);
    }

    @Override // android.view.ViewGroup, android.view.ViewParent, androidx.core.view.NestedScrollingParent
    public void onNestedScrollAccepted(@NonNull View view, @NonNull View view2, int i) {
        mo18864l(view, view2, i, 0);
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
        if (findNextFocus != null && !m18850z(findNextFocus)) {
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
        this.f3403A = savedState;
        requestLayout();
    }

    @Override // android.view.View
    protected Parcelable onSaveInstanceState() {
        SavedState savedState = new SavedState(super.onSaveInstanceState());
        savedState.f3429f = getScrollY();
        return savedState;
    }

    @Override // android.view.View
    protected void onScrollChanged(int i, int i2, int i3, int i4) {
        super.onScrollChanged(i, i2, i3, i4);
        OnScrollChangeListener onScrollChangeListener = this.f3407E;
        if (onScrollChangeListener != null) {
            onScrollChangeListener.mo6899a(this, i, i2, i3, i4);
        }
    }

    @Override // android.view.View
    protected void onSizeChanged(int i, int i2, int i3, int i4) {
        super.onSizeChanged(i, i2, i3, i4);
        View findFocus = findFocus();
        if (findFocus != null && this != findFocus && m18891B(findFocus, 0, i4)) {
            findFocus.getDrawingRect(this.f3409g);
            offsetDescendantRectToMyCoords(findFocus, this.f3409g);
            m18868h(m18871e(this.f3409g));
        }
    }

    @Override // android.view.ViewGroup, android.view.ViewParent, androidx.core.view.NestedScrollingParent
    public boolean onStartNestedScroll(@NonNull View view, @NonNull View view2, int i) {
        return mo18865k(view, view2, i, 0);
    }

    @Override // android.view.ViewGroup, android.view.ViewParent, androidx.core.view.NestedScrollingParent
    public void onStopNestedScroll(@NonNull View view) {
        mo18863m(view, 0);
    }

    @Override // android.view.View
    public boolean onTouchEvent(MotionEvent motionEvent) {
        ViewParent parent;
        m18851y();
        int actionMasked = motionEvent.getActionMasked();
        if (actionMasked == 0) {
            this.f3427y = 0;
        }
        MotionEvent obtain = MotionEvent.obtain(motionEvent);
        obtain.offsetLocation(0.0f, this.f3427y);
        if (actionMasked != 0) {
            if (actionMasked == 1) {
                VelocityTracker velocityTracker = this.f3418p;
                velocityTracker.computeCurrentVelocity(1000, this.f3423u);
                int yVelocity = (int) velocityTracker.getYVelocity(this.f3424v);
                if (Math.abs(yVelocity) >= this.f3422t) {
                    int i = -yVelocity;
                    float f = i;
                    if (!dispatchNestedPreFling(0.0f, f)) {
                        dispatchNestedFling(0.0f, f, true);
                        m18857s(i);
                    }
                } else if (this.f3410h.springBack(getScrollX(), getScrollY(), 0, 0, 0, getScrollRange())) {
                    ViewCompat.m19203d0(this);
                }
                this.f3424v = -1;
                m18861o();
            } else if (actionMasked == 2) {
                int findPointerIndex = motionEvent.findPointerIndex(this.f3424v);
                if (findPointerIndex == -1) {
                    Log.e("NestedScrollView", "Invalid pointerId=" + this.f3424v + " in onTouchEvent");
                } else {
                    int y = (int) motionEvent.getY(findPointerIndex);
                    int i2 = this.f3413k - y;
                    int i3 = i2;
                    if (!this.f3417o) {
                        i3 = i2;
                        if (Math.abs(i2) > this.f3421s) {
                            ViewParent parent2 = getParent();
                            if (parent2 != null) {
                                parent2.requestDisallowInterceptTouchEvent(true);
                            }
                            this.f3417o = true;
                            i3 = i2 > 0 ? i2 - this.f3421s : i2 + this.f3421s;
                        }
                    }
                    if (this.f3417o) {
                        int i4 = i3;
                        if (m18870f(0, i3, this.f3426x, this.f3425w, 0)) {
                            i4 = i3 - this.f3426x[1];
                            this.f3427y += this.f3425w[1];
                        }
                        this.f3413k = y - this.f3425w[1];
                        int scrollY = getScrollY();
                        int scrollRange = getScrollRange();
                        int overScrollMode = getOverScrollMode();
                        boolean z = overScrollMode == 0 || (overScrollMode == 1 && scrollRange > 0);
                        if (m18888E(0, i4, 0, getScrollY(), 0, scrollRange, 0, 0, true) && !m18855u(0)) {
                            this.f3418p.clear();
                        }
                        int scrollY2 = getScrollY() - scrollY;
                        int[] iArr = this.f3426x;
                        iArr[1] = 0;
                        m18869g(0, scrollY2, 0, i4 - scrollY2, this.f3425w, 0, iArr);
                        int i5 = this.f3413k;
                        int[] iArr2 = this.f3425w;
                        this.f3413k = i5 - iArr2[1];
                        this.f3427y += iArr2[1];
                        if (z) {
                            int i6 = i4 - this.f3426x[1];
                            m18860p();
                            int i7 = scrollY + i6;
                            if (i7 < 0) {
                                EdgeEffectCompat.m18905d(this.f3411i, i6 / getHeight(), motionEvent.getX(findPointerIndex) / getWidth());
                                if (!this.f3412j.isFinished()) {
                                    this.f3412j.onRelease();
                                }
                            } else if (i7 > scrollRange) {
                                EdgeEffectCompat.m18905d(this.f3412j, i6 / getHeight(), 1.0f - (motionEvent.getX(findPointerIndex) / getWidth()));
                                if (!this.f3411i.isFinished()) {
                                    this.f3411i.onRelease();
                                }
                            }
                            EdgeEffect edgeEffect = this.f3411i;
                            if (edgeEffect != null && (!edgeEffect.isFinished() || !this.f3412j.isFinished())) {
                                ViewCompat.m19203d0(this);
                            }
                        }
                    }
                }
            } else if (actionMasked == 3) {
                if (this.f3417o && getChildCount() > 0 && this.f3410h.springBack(getScrollX(), getScrollY(), 0, 0, 0, getScrollRange())) {
                    ViewCompat.m19203d0(this);
                }
                this.f3424v = -1;
                m18861o();
            } else if (actionMasked == 5) {
                int actionIndex = motionEvent.getActionIndex();
                this.f3413k = (int) motionEvent.getY(actionIndex);
                this.f3424v = motionEvent.getPointerId(actionIndex);
            } else if (actionMasked == 6) {
                m18889D(motionEvent);
                this.f3413k = (int) motionEvent.getY(motionEvent.findPointerIndex(this.f3424v));
            }
        } else if (getChildCount() == 0) {
            return false;
        } else {
            boolean z2 = !this.f3410h.isFinished();
            this.f3417o = z2;
            if (z2 && (parent = getParent()) != null) {
                parent.requestDisallowInterceptTouchEvent(true);
            }
            if (!this.f3410h.isFinished()) {
                m18875a();
            }
            this.f3413k = (int) motionEvent.getY();
            this.f3424v = motionEvent.getPointerId(0);
            m18877P(2, 0);
        }
        VelocityTracker velocityTracker2 = this.f3418p;
        if (velocityTracker2 != null) {
            velocityTracker2.addMovement(obtain);
        }
        obtain.recycle();
        return true;
    }

    /* renamed from: q */
    public boolean m18859q(@NonNull KeyEvent keyEvent) {
        this.f3409g.setEmpty();
        int i = 130;
        if (!m18873c()) {
            boolean z = false;
            if (isFocused()) {
                z = false;
                if (keyEvent.getKeyCode() != 4) {
                    View findFocus = findFocus();
                    View view = findFocus;
                    if (findFocus == this) {
                        view = null;
                    }
                    View findNextFocus = FocusFinder.getInstance().findNextFocus(this, view, 130);
                    z = false;
                    if (findNextFocus != null) {
                        z = false;
                        if (findNextFocus != this) {
                            z = false;
                            if (findNextFocus.requestFocus(130)) {
                                z = true;
                            }
                        }
                    }
                }
            }
            return z;
        }
        boolean z2 = false;
        if (keyEvent.getAction() == 0) {
            int keyCode = keyEvent.getKeyCode();
            if (keyCode == 19) {
                z2 = !keyEvent.isAltPressed() ? m18874b(33) : m18856t(33);
            } else if (keyCode == 20) {
                z2 = !keyEvent.isAltPressed() ? m18874b(130) : m18856t(130);
            } else if (keyCode != 62) {
                z2 = false;
            } else {
                if (keyEvent.isShiftPressed()) {
                    i = 33;
                }
                m18887F(i);
                z2 = false;
            }
        }
        return z2;
    }

    @Override // android.view.ViewGroup, android.view.ViewParent
    public void requestChildFocus(View view, View view2) {
        if (!this.f3414l) {
            m18883J(view2);
        } else {
            this.f3416n = view2;
        }
        super.requestChildFocus(view, view2);
    }

    @Override // android.view.ViewGroup, android.view.ViewParent
    public boolean requestChildRectangleOnScreen(View view, Rect rect, boolean z) {
        rect.offset(view.getLeft() - view.getScrollX(), view.getTop() - view.getScrollY());
        return m18882K(rect, z);
    }

    @Override // android.view.ViewGroup, android.view.ViewParent
    public void requestDisallowInterceptTouchEvent(boolean z) {
        if (z) {
            m18886G();
        }
        super.requestDisallowInterceptTouchEvent(z);
    }

    @Override // android.view.View, android.view.ViewParent
    public void requestLayout() {
        this.f3414l = true;
        super.requestLayout();
    }

    /* renamed from: s */
    public void m18857s(int i) {
        if (getChildCount() > 0) {
            this.f3410h.fling(getScrollX(), getScrollY(), 0, i, 0, 0, Integer.MIN_VALUE, Api.BaseClientBuilder.API_PRIORITY_OTHER, 0, 0);
            m18885H(true);
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
            int d = m18872d(i, (width - paddingLeft) - paddingRight, width2 + i3 + i4);
            int d2 = m18872d(i2, (height - paddingTop) - paddingBottom, height2 + i5 + i6);
            if (d != getScrollX() || d2 != getScrollY()) {
                super.scrollTo(d, d2);
            }
        }
    }

    public void setFillViewport(boolean z) {
        if (z != this.f3419q) {
            this.f3419q = z;
            requestLayout();
        }
    }

    @Override // android.view.View
    public void setNestedScrollingEnabled(boolean z) {
        this.f3405C.m19260m(z);
    }

    public void setOnScrollChangeListener(@Nullable OnScrollChangeListener onScrollChangeListener) {
        this.f3407E = onScrollChangeListener;
    }

    public void setSmoothScrollingEnabled(boolean z) {
        this.f3420r = z;
    }

    @Override // android.widget.FrameLayout, android.view.ViewGroup
    public boolean shouldDelayChildPressedState() {
        return true;
    }

    @Override // android.view.View
    public boolean startNestedScroll(int i) {
        return m18877P(i, 0);
    }

    @Override // android.view.View, androidx.core.view.NestedScrollingChild
    public void stopNestedScroll() {
        m18876Q(0);
    }

    /* renamed from: t */
    public boolean m18856t(int i) {
        int childCount;
        boolean z = i == 130;
        int height = getHeight();
        Rect rect = this.f3409g;
        rect.top = 0;
        rect.bottom = height;
        if (z && (childCount = getChildCount()) > 0) {
            View childAt = getChildAt(childCount - 1);
            this.f3409g.bottom = childAt.getBottom() + ((FrameLayout.LayoutParams) childAt.getLayoutParams()).bottomMargin + getPaddingBottom();
            Rect rect2 = this.f3409g;
            rect2.top = rect2.bottom - height;
        }
        Rect rect3 = this.f3409g;
        return m18884I(i, rect3.top, rect3.bottom);
    }

    /* renamed from: u */
    public boolean m18855u(int i) {
        return this.f3405C.m19262k(i);
    }
}

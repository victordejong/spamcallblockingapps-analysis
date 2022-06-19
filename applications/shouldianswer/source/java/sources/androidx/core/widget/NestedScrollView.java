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
import androidx.core.p023g.AbstractC0542k;
import androidx.core.p023g.AbstractC0546o;
import androidx.core.p023g.C0503a;
import androidx.core.p023g.C0543l;
import androidx.core.p023g.C0547p;
import androidx.core.p023g.C0552u;
import androidx.core.p023g.p024a.C0510d;
import androidx.core.p023g.p024a.C0517f;
import androidx.customview.p026a.AbstractC0610a;
import com.crashlytics.android.core.CodedOutputStream;
import com.google.android.flexbox.FlexItem;
import com.google.android.gms.common.api.Api;
import java.util.ArrayList;
/* loaded from: classes-dex2jar.jar:androidx/core/widget/NestedScrollView.class */
public class NestedScrollView extends FrameLayout implements AbstractC0542k, AbstractC0546o {

    /* renamed from: w */
    private static final C0593a f1968w = new C0593a();

    /* renamed from: x */
    private static final int[] f1969x = {16843130};

    /* renamed from: A */
    private float f1970A;

    /* renamed from: B */
    private AbstractC0594b f1971B;

    /* renamed from: a */
    private long f1972a;

    /* renamed from: b */
    private final Rect f1973b;

    /* renamed from: c */
    private OverScroller f1974c;

    /* renamed from: d */
    private EdgeEffect f1975d;

    /* renamed from: e */
    private EdgeEffect f1976e;

    /* renamed from: f */
    private int f1977f;

    /* renamed from: g */
    private boolean f1978g;

    /* renamed from: h */
    private boolean f1979h;

    /* renamed from: i */
    private View f1980i;

    /* renamed from: j */
    private boolean f1981j;

    /* renamed from: k */
    private VelocityTracker f1982k;

    /* renamed from: l */
    private boolean f1983l;

    /* renamed from: m */
    private boolean f1984m;

    /* renamed from: n */
    private int f1985n;

    /* renamed from: o */
    private int f1986o;

    /* renamed from: p */
    private int f1987p;

    /* renamed from: q */
    private int f1988q;

    /* renamed from: r */
    private final int[] f1989r;

    /* renamed from: s */
    private final int[] f1990s;

    /* renamed from: t */
    private int f1991t;

    /* renamed from: u */
    private int f1992u;

    /* renamed from: v */
    private SavedState f1993v;

    /* renamed from: y */
    private final C0547p f1994y;

    /* renamed from: z */
    private final C0543l f1995z;

    /* loaded from: classes-dex2jar.jar:androidx/core/widget/NestedScrollView$SavedState.class */
    public static class SavedState extends View.BaseSavedState {
        public static final Parcelable.Creator<SavedState> CREATOR = new Parcelable.Creator<SavedState>() { // from class: androidx.core.widget.NestedScrollView.SavedState.1
            /* renamed from: a */
            public SavedState createFromParcel(Parcel parcel) {
                return new SavedState(parcel);
            }

            /* renamed from: a */
            public SavedState[] newArray(int i) {
                return new SavedState[i];
            }
        };

        /* renamed from: a */
        public int f1996a;

        SavedState(Parcel parcel) {
            super(parcel);
            this.f1996a = parcel.readInt();
        }

        SavedState(Parcelable parcelable) {
            super(parcelable);
        }

        public String toString() {
            return "HorizontalScrollView.SavedState{" + Integer.toHexString(System.identityHashCode(this)) + " scrollPosition=" + this.f1996a + "}";
        }

        @Override // android.view.View.BaseSavedState, android.view.AbsSavedState, android.os.Parcelable
        public void writeToParcel(Parcel parcel, int i) {
            super.writeToParcel(parcel, i);
            parcel.writeInt(this.f1996a);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: androidx.core.widget.NestedScrollView$a */
    /* loaded from: classes-dex2jar.jar:androidx/core/widget/NestedScrollView$a.class */
    public static class C0593a extends C0503a {
        C0593a() {
        }

        @Override // androidx.core.p023g.C0503a
        public void onInitializeAccessibilityEvent(View view, AccessibilityEvent accessibilityEvent) {
            super.onInitializeAccessibilityEvent(view, accessibilityEvent);
            NestedScrollView nestedScrollView = (NestedScrollView) view;
            accessibilityEvent.setClassName(ScrollView.class.getName());
            accessibilityEvent.setScrollable(nestedScrollView.getScrollRange() > 0);
            accessibilityEvent.setScrollX(nestedScrollView.getScrollX());
            accessibilityEvent.setScrollY(nestedScrollView.getScrollY());
            C0517f.m6373a(accessibilityEvent, nestedScrollView.getScrollX());
            C0517f.m6371b(accessibilityEvent, nestedScrollView.getScrollRange());
        }

        @Override // androidx.core.p023g.C0503a
        public void onInitializeAccessibilityNodeInfo(View view, C0510d c0510d) {
            int scrollRange;
            super.onInitializeAccessibilityNodeInfo(view, c0510d);
            NestedScrollView nestedScrollView = (NestedScrollView) view;
            c0510d.m6433b((CharSequence) ScrollView.class.getName());
            if (!nestedScrollView.isEnabled() || (scrollRange = nestedScrollView.getScrollRange()) <= 0) {
                return;
            }
            c0510d.m6399k(true);
            if (nestedScrollView.getScrollY() > 0) {
                c0510d.m6455a(8192);
            }
            if (nestedScrollView.getScrollY() >= scrollRange) {
                return;
            }
            c0510d.m6455a(CodedOutputStream.DEFAULT_BUFFER_SIZE);
        }

        @Override // androidx.core.p023g.C0503a
        public boolean performAccessibilityAction(View view, int i, Bundle bundle) {
            if (super.performAccessibilityAction(view, i, bundle)) {
                return true;
            }
            NestedScrollView nestedScrollView = (NestedScrollView) view;
            if (!nestedScrollView.isEnabled()) {
                return false;
            }
            if (i == 4096) {
                int height = nestedScrollView.getHeight();
                int paddingBottom = nestedScrollView.getPaddingBottom();
                int min = Math.min(nestedScrollView.getScrollY() + ((height - paddingBottom) - nestedScrollView.getPaddingTop()), nestedScrollView.getScrollRange());
                if (min == nestedScrollView.getScrollY()) {
                    return false;
                }
                nestedScrollView.m6041c(0, min);
                return true;
            } else if (i != 8192) {
                return false;
            } else {
                int height2 = nestedScrollView.getHeight();
                int paddingBottom2 = nestedScrollView.getPaddingBottom();
                int max = Math.max(nestedScrollView.getScrollY() - ((height2 - paddingBottom2) - nestedScrollView.getPaddingTop()), 0);
                if (max == nestedScrollView.getScrollY()) {
                    return false;
                }
                nestedScrollView.m6041c(0, max);
                return true;
            }
        }
    }

    /* renamed from: androidx.core.widget.NestedScrollView$b */
    /* loaded from: classes-dex2jar.jar:androidx/core/widget/NestedScrollView$b.class */
    public interface AbstractC0594b {
        /* renamed from: a */
        void mo6029a(NestedScrollView nestedScrollView, int i, int i2, int i3, int i4);
    }

    public NestedScrollView(Context context) {
        this(context, null);
    }

    public NestedScrollView(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    public NestedScrollView(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        this.f1973b = new Rect();
        this.f1978g = true;
        this.f1979h = false;
        this.f1980i = null;
        this.f1981j = false;
        this.f1984m = true;
        this.f1988q = -1;
        this.f1989r = new int[2];
        this.f1990s = new int[2];
        m6066a();
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, f1969x, i, 0);
        setFillViewport(obtainStyledAttributes.getBoolean(0, false));
        obtainStyledAttributes.recycle();
        this.f1994y = new C0547p(this);
        this.f1995z = new C0543l(this);
        setNestedScrollingEnabled(true);
        C0552u.m6269a(this, f1968w);
    }

    /* renamed from: a */
    private View m6049a(boolean z, int i, int i2) {
        ArrayList focusables = getFocusables(2);
        int size = focusables.size();
        boolean z2 = false;
        View view = null;
        int i3 = 0;
        while (i3 < size) {
            View view2 = (View) focusables.get(i3);
            int top = view2.getTop();
            int bottom = view2.getBottom();
            View view3 = view;
            boolean z3 = z2;
            if (i < bottom) {
                view3 = view;
                z3 = z2;
                if (top < i2) {
                    boolean z4 = i < top && bottom < i2;
                    if (view == null) {
                        view3 = view2;
                        z3 = z4;
                    } else {
                        boolean z5 = (z && top < view.getTop()) || (!z && bottom > view.getBottom());
                        if (z2) {
                            view3 = view;
                            z3 = z2;
                            if (z4) {
                                view3 = view;
                                z3 = z2;
                                if (!z5) {
                                }
                                view3 = view2;
                                z3 = z2;
                            }
                        } else if (z4) {
                            view3 = view2;
                            z3 = true;
                        } else {
                            view3 = view;
                            z3 = z2;
                            if (!z5) {
                            }
                            view3 = view2;
                            z3 = z2;
                        }
                    }
                }
            }
            i3++;
            view = view3;
            z2 = z3;
        }
        return view;
    }

    /* renamed from: a */
    private void m6066a() {
        this.f1974c = new OverScroller(getContext());
        setFocusable(true);
        setDescendantFocusability(262144);
        setWillNotDraw(false);
        ViewConfiguration viewConfiguration = ViewConfiguration.get(getContext());
        this.f1985n = viewConfiguration.getScaledTouchSlop();
        this.f1986o = viewConfiguration.getScaledMinimumFlingVelocity();
        this.f1987p = viewConfiguration.getScaledMaximumFlingVelocity();
    }

    /* renamed from: a */
    private void m6060a(int i, int i2, int[] iArr) {
        int scrollY = getScrollY();
        scrollBy(0, i);
        int scrollY2 = getScrollY() - scrollY;
        if (iArr != null) {
            iArr[1] = iArr[1] + scrollY2;
        }
        this.f1995z.m6315a(0, scrollY2, 0, i - scrollY2, null, i2, iArr);
    }

    /* renamed from: a */
    private void m6055a(MotionEvent motionEvent) {
        int actionIndex = motionEvent.getActionIndex();
        if (motionEvent.getPointerId(actionIndex) == this.f1988q) {
            int i = actionIndex == 0 ? 1 : 0;
            this.f1977f = (int) motionEvent.getY(i);
            this.f1988q = motionEvent.getPointerId(i);
            VelocityTracker velocityTracker = this.f1982k;
            if (velocityTracker == null) {
                return;
            }
            velocityTracker.clear();
        }
    }

    /* renamed from: a */
    private void m6050a(boolean z) {
        if (z) {
            m6064a(2, 1);
        } else {
            stopNestedScroll(1);
        }
        this.f1992u = getScrollY();
        C0552u.m6249d(this);
    }

    /* renamed from: a */
    private boolean m6063a(int i, int i2, int i3) {
        boolean z;
        int height = getHeight();
        int scrollY = getScrollY();
        int i4 = height + scrollY;
        boolean z2 = i == 33;
        View m6049a = m6049a(z2, i2, i3);
        View view = m6049a;
        if (m6049a == null) {
            view = this;
        }
        if (i2 < scrollY || i3 > i4) {
            m6034f(z2 ? i2 - scrollY : i3 - i4);
            z = true;
        } else {
            z = false;
        }
        if (view != findFocus()) {
            view.requestFocus(i);
        }
        return z;
    }

    /* renamed from: a */
    private boolean m6057a(Rect rect, boolean z) {
        int m6058a = m6058a(rect);
        boolean z2 = m6058a != 0;
        if (z2) {
            if (z) {
                scrollBy(0, m6058a);
            } else {
                m6046b(0, m6058a);
            }
        }
        return z2;
    }

    /* renamed from: a */
    private boolean m6054a(View view) {
        return !m6053a(view, 0, getHeight());
    }

    /* renamed from: a */
    private boolean m6053a(View view, int i, int i2) {
        view.getDrawingRect(this.f1973b);
        offsetDescendantRectToMyCoords(view, this.f1973b);
        return this.f1973b.bottom + i >= getScrollY() && this.f1973b.top - i <= getScrollY() + i2;
    }

    /* renamed from: a */
    private static boolean m6051a(View view, View view2) {
        boolean z = true;
        if (view == view2) {
            return true;
        }
        ViewParent parent = view.getParent();
        if (!(parent instanceof ViewGroup) || !m6051a((View) parent, view2)) {
            z = false;
        }
        return z;
    }

    /* renamed from: b */
    private static int m6045b(int i, int i2, int i3) {
        if (i2 >= i3 || i < 0) {
            return 0;
        }
        return i2 + i > i3 ? i3 - i2 : i;
    }

    /* renamed from: b */
    private void m6044b(View view) {
        view.getDrawingRect(this.f1973b);
        offsetDescendantRectToMyCoords(view, this.f1973b);
        int m6058a = m6058a(this.f1973b);
        if (m6058a != 0) {
            scrollBy(0, m6058a);
        }
    }

    /* renamed from: b */
    private boolean m6048b() {
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

    /* renamed from: c */
    private void m6043c() {
        VelocityTracker velocityTracker = this.f1982k;
        if (velocityTracker == null) {
            this.f1982k = VelocityTracker.obtain();
        } else {
            velocityTracker.clear();
        }
    }

    /* renamed from: d */
    private void m6040d() {
        if (this.f1982k == null) {
            this.f1982k = VelocityTracker.obtain();
        }
    }

    /* renamed from: d */
    private boolean m6038d(int i, int i2) {
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

    /* renamed from: e */
    private void m6037e() {
        VelocityTracker velocityTracker = this.f1982k;
        if (velocityTracker != null) {
            velocityTracker.recycle();
            this.f1982k = null;
        }
    }

    /* renamed from: f */
    private void m6035f() {
        this.f1974c.abortAnimation();
        stopNestedScroll(1);
    }

    /* renamed from: f */
    private void m6034f(int i) {
        if (i != 0) {
            if (this.f1984m) {
                m6046b(0, i);
            } else {
                scrollBy(0, i);
            }
        }
    }

    /* renamed from: g */
    private void m6033g() {
        this.f1981j = false;
        m6037e();
        stopNestedScroll(0);
        EdgeEffect edgeEffect = this.f1975d;
        if (edgeEffect != null) {
            edgeEffect.onRelease();
            this.f1976e.onRelease();
        }
    }

    private float getVerticalScrollFactorCompat() {
        if (this.f1970A == FlexItem.FLEX_GROW_DEFAULT) {
            TypedValue typedValue = new TypedValue();
            Context context = getContext();
            if (!context.getTheme().resolveAttribute(16842829, typedValue, true)) {
                throw new IllegalStateException("Expected theme to define listPreferredItemHeight.");
            }
            this.f1970A = typedValue.getDimension(context.getResources().getDisplayMetrics());
        }
        return this.f1970A;
    }

    /* renamed from: h */
    private void m6032h() {
        if (getOverScrollMode() == 2) {
            this.f1975d = null;
            this.f1976e = null;
        } else if (this.f1975d != null) {
        } else {
            Context context = getContext();
            this.f1975d = new EdgeEffect(context);
            this.f1976e = new EdgeEffect(context);
        }
    }

    /* renamed from: a */
    protected int m6058a(Rect rect) {
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

    /* renamed from: a */
    public void m6061a(int i, int i2, int i3, int i4, int[] iArr, int i5, int[] iArr2) {
        this.f1995z.m6315a(i, i2, i3, i4, iArr, i5, iArr2);
    }

    @Override // androidx.core.p023g.AbstractC0546o
    /* renamed from: a */
    public void mo6052a(View view, int i, int i2, int i3, int i4, int i5, int[] iArr) {
        m6060a(i4, i5, iArr);
    }

    /* renamed from: a */
    public boolean m6065a(int i) {
        return this.f1995z.m6319a(i);
    }

    /* renamed from: a */
    public boolean m6064a(int i, int i2) {
        return this.f1995z.m6318a(i, i2);
    }

    /* JADX WARN: Code restructure failed: missing block: B:56:0x011f, code lost:
        if (r17 != false) goto L57;
     */
    /* JADX WARN: Removed duplicated region for block: B:43:0x00cd  */
    /* JADX WARN: Removed duplicated region for block: B:44:0x00d6  */
    /* JADX WARN: Removed duplicated region for block: B:55:0x0119  */
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    boolean m6062a(int r9, int r10, int r11, int r12, int r13, int r14, int r15, int r16, boolean r17) {
        /*
            Method dump skipped, instructions count: 296
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.core.widget.NestedScrollView.m6062a(int, int, int, int, int, int, int, int, boolean):boolean");
    }

    /* renamed from: a */
    public boolean m6059a(int i, int i2, int[] iArr, int[] iArr2, int i3) {
        return this.f1995z.m6313a(i, i2, iArr, iArr2, i3);
    }

    /* renamed from: a */
    public boolean m6056a(KeyEvent keyEvent) {
        this.f1973b.setEmpty();
        int i = 130;
        if (m6048b()) {
            boolean z = false;
            if (keyEvent.getAction() == 0) {
                int keyCode = keyEvent.getKeyCode();
                if (keyCode == 19) {
                    z = !keyEvent.isAltPressed() ? m6039d(33) : m6042c(33);
                } else if (keyCode == 20) {
                    z = !keyEvent.isAltPressed() ? m6039d(130) : m6042c(130);
                } else if (keyCode != 62) {
                    z = false;
                } else {
                    if (keyEvent.isShiftPressed()) {
                        i = 33;
                    }
                    m6047b(i);
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
    public final void m6046b(int i, int i2) {
        if (getChildCount() == 0) {
            return;
        }
        if (AnimationUtils.currentAnimationTimeMillis() - this.f1972a > 250) {
            View childAt = getChildAt(0);
            FrameLayout.LayoutParams layoutParams = (FrameLayout.LayoutParams) childAt.getLayoutParams();
            int height = childAt.getHeight();
            int i3 = layoutParams.topMargin;
            int i4 = layoutParams.bottomMargin;
            int height2 = getHeight();
            int paddingTop = getPaddingTop();
            int paddingBottom = getPaddingBottom();
            int scrollY = getScrollY();
            this.f1974c.startScroll(getScrollX(), scrollY, 0, Math.max(0, Math.min(i2 + scrollY, Math.max(0, ((height + i3) + i4) - ((height2 - paddingTop) - paddingBottom)))) - scrollY);
            m6050a(false);
        } else {
            if (!this.f1974c.isFinished()) {
                m6035f();
            }
            scrollBy(i, i2);
        }
        this.f1972a = AnimationUtils.currentAnimationTimeMillis();
    }

    /* renamed from: b */
    public boolean m6047b(int i) {
        boolean z = i == 130;
        int height = getHeight();
        if (z) {
            this.f1973b.top = getScrollY() + height;
            int childCount = getChildCount();
            if (childCount > 0) {
                View childAt = getChildAt(childCount - 1);
                int bottom = childAt.getBottom() + ((FrameLayout.LayoutParams) childAt.getLayoutParams()).bottomMargin + getPaddingBottom();
                if (this.f1973b.top + height > bottom) {
                    this.f1973b.top = bottom - height;
                }
            }
        } else {
            this.f1973b.top = getScrollY() - height;
            if (this.f1973b.top < 0) {
                this.f1973b.top = 0;
            }
        }
        Rect rect = this.f1973b;
        rect.bottom = rect.top + height;
        return m6063a(i, this.f1973b.top, this.f1973b.bottom);
    }

    /* renamed from: c */
    public final void m6041c(int i, int i2) {
        m6046b(i - getScrollX(), i2 - getScrollY());
    }

    /* renamed from: c */
    public boolean m6042c(int i) {
        int childCount;
        boolean z = i == 130;
        int height = getHeight();
        Rect rect = this.f1973b;
        rect.top = 0;
        rect.bottom = height;
        if (z && (childCount = getChildCount()) > 0) {
            View childAt = getChildAt(childCount - 1);
            this.f1973b.bottom = childAt.getBottom() + ((FrameLayout.LayoutParams) childAt.getLayoutParams()).bottomMargin + getPaddingBottom();
            Rect rect2 = this.f1973b;
            rect2.top = rect2.bottom - height;
        }
        return m6063a(i, this.f1973b.top, this.f1973b.bottom);
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
            Method dump skipped, instructions count: 266
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

    /* renamed from: d */
    public boolean m6039d(int i) {
        int i2;
        View findFocus = findFocus();
        View view = findFocus;
        if (findFocus == this) {
            view = null;
        }
        View findNextFocus = FocusFinder.getInstance().findNextFocus(this, view, i);
        int maxScrollAmount = getMaxScrollAmount();
        if (findNextFocus == null || !m6053a(findNextFocus, maxScrollAmount, getHeight())) {
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
            m6034f(i2);
        } else {
            findNextFocus.getDrawingRect(this.f1973b);
            offsetDescendantRectToMyCoords(findNextFocus, this.f1973b);
            m6034f(m6058a(this.f1973b));
            findNextFocus.requestFocus(i);
        }
        if (view == null || !view.isFocused() || !m6054a(view)) {
            return true;
        }
        int descendantFocusability = getDescendantFocusability();
        setDescendantFocusability(131072);
        requestFocus();
        setDescendantFocusability(descendantFocusability);
        return true;
    }

    @Override // android.view.ViewGroup, android.view.View
    public boolean dispatchKeyEvent(KeyEvent keyEvent) {
        return super.dispatchKeyEvent(keyEvent) || m6056a(keyEvent);
    }

    @Override // android.view.View
    public boolean dispatchNestedFling(float f, float f2, boolean z) {
        return this.f1995z.m6320a(f, f2, z);
    }

    @Override // android.view.View
    public boolean dispatchNestedPreFling(float f, float f2) {
        return this.f1995z.m6321a(f, f2);
    }

    @Override // android.view.View
    public boolean dispatchNestedPreScroll(int i, int i2, int[] iArr, int[] iArr2) {
        return m6059a(i, i2, iArr, iArr2, 0);
    }

    @Override // android.view.View
    public boolean dispatchNestedScroll(int i, int i2, int i3, int i4, int[] iArr) {
        return this.f1995z.m6317a(i, i2, i3, i4, iArr);
    }

    /* JADX WARN: Code restructure failed: missing block: B:26:0x0104, code lost:
        if (getClipToPadding() != false) goto L27;
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
    public void m6036e(int i) {
        if (getChildCount() > 0) {
            this.f1974c.fling(getScrollX(), getScrollY(), 0, i, 0, 0, AbstractC0610a.INVALID_ID, Api.BaseClientBuilder.API_PRIORITY_OTHER, 0, 0);
            m6050a(true);
        }
    }

    @Override // android.view.View
    protected float getBottomFadingEdgeStrength() {
        if (getChildCount() == 0) {
            return FlexItem.FLEX_GROW_DEFAULT;
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
        return this.f1994y.m6303a();
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
            return FlexItem.FLEX_GROW_DEFAULT;
        }
        int verticalFadingEdgeLength = getVerticalFadingEdgeLength();
        int scrollY = getScrollY();
        if (scrollY >= verticalFadingEdgeLength) {
            return 1.0f;
        }
        return scrollY / verticalFadingEdgeLength;
    }

    @Override // android.view.View
    public boolean hasNestedScrollingParent() {
        return m6065a(0);
    }

    @Override // android.view.View, androidx.core.p023g.AbstractC0540i
    public boolean isNestedScrollingEnabled() {
        return this.f1995z.m6322a();
    }

    @Override // android.view.ViewGroup
    protected void measureChild(View view, int i, int i2) {
        view.measure(getChildMeasureSpec(i, getPaddingLeft() + getPaddingRight(), view.getLayoutParams().width), View.MeasureSpec.makeMeasureSpec(0, 0));
    }

    @Override // android.view.ViewGroup
    protected void measureChildWithMargins(View view, int i, int i2, int i3, int i4) {
        ViewGroup.MarginLayoutParams marginLayoutParams = (ViewGroup.MarginLayoutParams) view.getLayoutParams();
        view.measure(getChildMeasureSpec(i, getPaddingLeft() + getPaddingRight() + marginLayoutParams.leftMargin + marginLayoutParams.rightMargin + i2, marginLayoutParams.width), View.MeasureSpec.makeMeasureSpec(marginLayoutParams.topMargin + marginLayoutParams.bottomMargin, 0));
    }

    @Override // android.view.ViewGroup, android.view.View
    public void onAttachedToWindow() {
        super.onAttachedToWindow();
        this.f1979h = false;
    }

    @Override // android.view.View
    public boolean onGenericMotionEvent(MotionEvent motionEvent) {
        int i;
        if ((motionEvent.getSource() & 2) == 0 || motionEvent.getAction() != 8 || this.f1981j) {
            return false;
        }
        float axisValue = motionEvent.getAxisValue(9);
        if (axisValue == FlexItem.FLEX_GROW_DEFAULT) {
            return false;
        }
        int verticalScrollFactorCompat = (int) (axisValue * getVerticalScrollFactorCompat());
        int scrollRange = getScrollRange();
        int scrollY = getScrollY();
        int i2 = scrollY - verticalScrollFactorCompat;
        if (i2 < 0) {
            i = 0;
        } else {
            i = i2;
            if (i2 > scrollRange) {
                i = scrollRange;
            }
        }
        if (i == scrollY) {
            return false;
        }
        super.scrollTo(getScrollX(), i);
        return true;
    }

    @Override // android.view.ViewGroup
    public boolean onInterceptTouchEvent(MotionEvent motionEvent) {
        int action = motionEvent.getAction();
        if (action != 2 || !this.f1981j) {
            int i = action & 255;
            if (i != 0) {
                if (i != 1) {
                    if (i == 2) {
                        int i2 = this.f1988q;
                        if (i2 != -1) {
                            int findPointerIndex = motionEvent.findPointerIndex(i2);
                            if (findPointerIndex == -1) {
                                Log.e("NestedScrollView", "Invalid pointerId=" + i2 + " in onInterceptTouchEvent");
                            } else {
                                int y = (int) motionEvent.getY(findPointerIndex);
                                if (Math.abs(y - this.f1977f) > this.f1985n && (2 & getNestedScrollAxes()) == 0) {
                                    this.f1981j = true;
                                    this.f1977f = y;
                                    m6040d();
                                    this.f1982k.addMovement(motionEvent);
                                    this.f1991t = 0;
                                    ViewParent parent = getParent();
                                    if (parent != null) {
                                        parent.requestDisallowInterceptTouchEvent(true);
                                    }
                                }
                            }
                        }
                    } else if (i != 3) {
                        if (i == 6) {
                            m6055a(motionEvent);
                        }
                    }
                }
                this.f1981j = false;
                this.f1988q = -1;
                m6037e();
                if (this.f1974c.springBack(getScrollX(), getScrollY(), 0, 0, 0, getScrollRange())) {
                    C0552u.m6249d(this);
                }
                stopNestedScroll(0);
            } else {
                int y2 = (int) motionEvent.getY();
                if (!m6038d((int) motionEvent.getX(), y2)) {
                    this.f1981j = false;
                    m6037e();
                } else {
                    this.f1977f = y2;
                    this.f1988q = motionEvent.getPointerId(0);
                    m6043c();
                    this.f1982k.addMovement(motionEvent);
                    this.f1974c.computeScrollOffset();
                    this.f1981j = !this.f1974c.isFinished();
                    m6064a(2, 0);
                }
            }
            return this.f1981j;
        }
        return true;
    }

    @Override // android.widget.FrameLayout, android.view.ViewGroup, android.view.View
    protected void onLayout(boolean z, int i, int i2, int i3, int i4) {
        super.onLayout(z, i, i2, i3, i4);
        int i5 = 0;
        this.f1978g = false;
        View view = this.f1980i;
        if (view != null && m6051a(view, this)) {
            m6044b(this.f1980i);
        }
        this.f1980i = null;
        if (!this.f1979h) {
            if (this.f1993v != null) {
                scrollTo(getScrollX(), this.f1993v.f1996a);
                this.f1993v = null;
            }
            if (getChildCount() > 0) {
                View childAt = getChildAt(0);
                FrameLayout.LayoutParams layoutParams = (FrameLayout.LayoutParams) childAt.getLayoutParams();
                i5 = childAt.getMeasuredHeight() + layoutParams.topMargin + layoutParams.bottomMargin;
            }
            int paddingTop = getPaddingTop();
            int paddingBottom = getPaddingBottom();
            int scrollY = getScrollY();
            int m6045b = m6045b(scrollY, ((i4 - i2) - paddingTop) - paddingBottom, i5);
            if (m6045b != scrollY) {
                scrollTo(getScrollX(), m6045b);
            }
        }
        scrollTo(getScrollX(), getScrollY());
        this.f1979h = true;
    }

    @Override // android.widget.FrameLayout, android.view.View
    protected void onMeasure(int i, int i2) {
        super.onMeasure(i, i2);
        if (this.f1983l && View.MeasureSpec.getMode(i2) != 0 && getChildCount() > 0) {
            View childAt = getChildAt(0);
            FrameLayout.LayoutParams layoutParams = (FrameLayout.LayoutParams) childAt.getLayoutParams();
            int measuredHeight = childAt.getMeasuredHeight();
            int measuredHeight2 = (((getMeasuredHeight() - getPaddingTop()) - getPaddingBottom()) - layoutParams.topMargin) - layoutParams.bottomMargin;
            if (measuredHeight >= measuredHeight2) {
                return;
            }
            childAt.measure(getChildMeasureSpec(i, getPaddingLeft() + getPaddingRight() + layoutParams.leftMargin + layoutParams.rightMargin, layoutParams.width), View.MeasureSpec.makeMeasureSpec(measuredHeight2, 1073741824));
        }
    }

    @Override // android.view.ViewGroup, android.view.ViewParent, androidx.core.p023g.AbstractC0544m
    public boolean onNestedFling(View view, float f, float f2, boolean z) {
        if (!z) {
            dispatchNestedFling(FlexItem.FLEX_GROW_DEFAULT, f2, true);
            m6036e((int) f2);
            return true;
        }
        return false;
    }

    @Override // android.view.ViewGroup, android.view.ViewParent, androidx.core.p023g.AbstractC0544m
    public boolean onNestedPreFling(View view, float f, float f2) {
        return dispatchNestedPreFling(f, f2);
    }

    @Override // android.view.ViewGroup, android.view.ViewParent, androidx.core.p023g.AbstractC0544m
    public void onNestedPreScroll(View view, int i, int i2, int[] iArr) {
        onNestedPreScroll(view, i, i2, iArr, 0);
    }

    @Override // androidx.core.p023g.AbstractC0545n
    public void onNestedPreScroll(View view, int i, int i2, int[] iArr, int i3) {
        m6059a(i, i2, iArr, null, i3);
    }

    @Override // android.view.ViewGroup, android.view.ViewParent, androidx.core.p023g.AbstractC0544m
    public void onNestedScroll(View view, int i, int i2, int i3, int i4) {
        m6060a(i4, 0, (int[]) null);
    }

    @Override // androidx.core.p023g.AbstractC0545n
    public void onNestedScroll(View view, int i, int i2, int i3, int i4, int i5) {
        m6060a(i4, i5, (int[]) null);
    }

    @Override // android.view.ViewGroup, android.view.ViewParent, androidx.core.p023g.AbstractC0544m
    public void onNestedScrollAccepted(View view, View view2, int i) {
        onNestedScrollAccepted(view, view2, i, 0);
    }

    @Override // androidx.core.p023g.AbstractC0545n
    public void onNestedScrollAccepted(View view, View view2, int i, int i2) {
        this.f1994y.m6300a(view, view2, i, i2);
        m6064a(2, i2);
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
        if (findNextFocus != null && !m6054a(findNextFocus)) {
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
        this.f1993v = savedState;
        requestLayout();
    }

    @Override // android.view.View
    protected Parcelable onSaveInstanceState() {
        SavedState savedState = new SavedState(super.onSaveInstanceState());
        savedState.f1996a = getScrollY();
        return savedState;
    }

    @Override // android.view.View
    protected void onScrollChanged(int i, int i2, int i3, int i4) {
        super.onScrollChanged(i, i2, i3, i4);
        AbstractC0594b abstractC0594b = this.f1971B;
        if (abstractC0594b != null) {
            abstractC0594b.mo6029a(this, i, i2, i3, i4);
        }
    }

    @Override // android.view.View
    protected void onSizeChanged(int i, int i2, int i3, int i4) {
        super.onSizeChanged(i, i2, i3, i4);
        View findFocus = findFocus();
        if (findFocus == null || this == findFocus || !m6053a(findFocus, 0, i4)) {
            return;
        }
        findFocus.getDrawingRect(this.f1973b);
        offsetDescendantRectToMyCoords(findFocus, this.f1973b);
        m6034f(m6058a(this.f1973b));
    }

    @Override // android.view.ViewGroup, android.view.ViewParent, androidx.core.p023g.AbstractC0544m
    public boolean onStartNestedScroll(View view, View view2, int i) {
        return onStartNestedScroll(view, view2, i, 0);
    }

    @Override // androidx.core.p023g.AbstractC0545n
    public boolean onStartNestedScroll(View view, View view2, int i, int i2) {
        return (i & 2) != 0;
    }

    @Override // android.view.ViewGroup, android.view.ViewParent, androidx.core.p023g.AbstractC0544m
    public void onStopNestedScroll(View view) {
        onStopNestedScroll(view, 0);
    }

    @Override // androidx.core.p023g.AbstractC0545n
    public void onStopNestedScroll(View view, int i) {
        this.f1994y.m6302a(view, i);
        stopNestedScroll(i);
    }

    @Override // android.view.View
    public boolean onTouchEvent(MotionEvent motionEvent) {
        ViewParent parent;
        m6040d();
        int actionMasked = motionEvent.getActionMasked();
        if (actionMasked == 0) {
            this.f1991t = 0;
        }
        MotionEvent obtain = MotionEvent.obtain(motionEvent);
        obtain.offsetLocation(FlexItem.FLEX_GROW_DEFAULT, this.f1991t);
        if (actionMasked != 0) {
            if (actionMasked == 1) {
                VelocityTracker velocityTracker = this.f1982k;
                velocityTracker.computeCurrentVelocity(1000, this.f1987p);
                int yVelocity = (int) velocityTracker.getYVelocity(this.f1988q);
                if (Math.abs(yVelocity) > this.f1986o) {
                    int i = -yVelocity;
                    float f = i;
                    if (!dispatchNestedPreFling(FlexItem.FLEX_GROW_DEFAULT, f)) {
                        dispatchNestedFling(FlexItem.FLEX_GROW_DEFAULT, f, true);
                        m6036e(i);
                    }
                } else if (this.f1974c.springBack(getScrollX(), getScrollY(), 0, 0, 0, getScrollRange())) {
                    C0552u.m6249d(this);
                }
                this.f1988q = -1;
                m6033g();
            } else if (actionMasked == 2) {
                int findPointerIndex = motionEvent.findPointerIndex(this.f1988q);
                if (findPointerIndex == -1) {
                    Log.e("NestedScrollView", "Invalid pointerId=" + this.f1988q + " in onTouchEvent");
                } else {
                    int y = (int) motionEvent.getY(findPointerIndex);
                    int i2 = this.f1977f - y;
                    int i3 = i2;
                    if (m6059a(0, i2, this.f1990s, this.f1989r, 0)) {
                        i3 = i2 - this.f1990s[1];
                        this.f1991t += this.f1989r[1];
                    }
                    int i4 = i3;
                    if (!this.f1981j) {
                        i4 = i3;
                        if (Math.abs(i3) > this.f1985n) {
                            ViewParent parent2 = getParent();
                            if (parent2 != null) {
                                parent2.requestDisallowInterceptTouchEvent(true);
                            }
                            this.f1981j = true;
                            i4 = i3 > 0 ? i3 - this.f1985n : i3 + this.f1985n;
                        }
                    }
                    if (this.f1981j) {
                        this.f1977f = y - this.f1989r[1];
                        int scrollY = getScrollY();
                        int scrollRange = getScrollRange();
                        int overScrollMode = getOverScrollMode();
                        boolean z = overScrollMode == 0 || (overScrollMode == 1 && scrollRange > 0);
                        if (m6062a(0, i4, 0, getScrollY(), 0, scrollRange, 0, 0, true) && !m6065a(0)) {
                            this.f1982k.clear();
                        }
                        int scrollY2 = getScrollY() - scrollY;
                        int[] iArr = this.f1990s;
                        iArr[1] = 0;
                        m6061a(0, scrollY2, 0, i4 - scrollY2, this.f1989r, 0, iArr);
                        int i5 = this.f1977f;
                        int[] iArr2 = this.f1989r;
                        this.f1977f = i5 - iArr2[1];
                        this.f1991t += iArr2[1];
                        if (z) {
                            int i6 = i4 - this.f1990s[1];
                            m6032h();
                            int i7 = scrollY + i6;
                            if (i7 < 0) {
                                C0600d.m5993a(this.f1975d, i6 / getHeight(), motionEvent.getX(findPointerIndex) / getWidth());
                                if (!this.f1976e.isFinished()) {
                                    this.f1976e.onRelease();
                                }
                            } else if (i7 > scrollRange) {
                                C0600d.m5993a(this.f1976e, i6 / getHeight(), 1.0f - (motionEvent.getX(findPointerIndex) / getWidth()));
                                if (!this.f1975d.isFinished()) {
                                    this.f1975d.onRelease();
                                }
                            }
                            EdgeEffect edgeEffect = this.f1975d;
                            if (edgeEffect != null && (!edgeEffect.isFinished() || !this.f1976e.isFinished())) {
                                C0552u.m6249d(this);
                            }
                        }
                    }
                }
            } else if (actionMasked == 3) {
                if (this.f1981j && getChildCount() > 0 && this.f1974c.springBack(getScrollX(), getScrollY(), 0, 0, 0, getScrollRange())) {
                    C0552u.m6249d(this);
                }
                this.f1988q = -1;
                m6033g();
            } else if (actionMasked == 5) {
                int actionIndex = motionEvent.getActionIndex();
                this.f1977f = (int) motionEvent.getY(actionIndex);
                this.f1988q = motionEvent.getPointerId(actionIndex);
            } else if (actionMasked == 6) {
                m6055a(motionEvent);
                this.f1977f = (int) motionEvent.getY(motionEvent.findPointerIndex(this.f1988q));
            }
        } else if (getChildCount() == 0) {
            return false;
        } else {
            boolean z2 = !this.f1974c.isFinished();
            this.f1981j = z2;
            if (z2 && (parent = getParent()) != null) {
                parent.requestDisallowInterceptTouchEvent(true);
            }
            if (!this.f1974c.isFinished()) {
                m6035f();
            }
            this.f1977f = (int) motionEvent.getY();
            this.f1988q = motionEvent.getPointerId(0);
            m6064a(2, 0);
        }
        VelocityTracker velocityTracker2 = this.f1982k;
        if (velocityTracker2 != null) {
            velocityTracker2.addMovement(obtain);
        }
        obtain.recycle();
        return true;
    }

    @Override // android.view.ViewGroup, android.view.ViewParent
    public void requestChildFocus(View view, View view2) {
        if (!this.f1978g) {
            m6044b(view2);
        } else {
            this.f1980i = view2;
        }
        super.requestChildFocus(view, view2);
    }

    @Override // android.view.ViewGroup, android.view.ViewParent
    public boolean requestChildRectangleOnScreen(View view, Rect rect, boolean z) {
        rect.offset(view.getLeft() - view.getScrollX(), view.getTop() - view.getScrollY());
        return m6057a(rect, z);
    }

    @Override // android.view.ViewGroup, android.view.ViewParent
    public void requestDisallowInterceptTouchEvent(boolean z) {
        if (z) {
            m6037e();
        }
        super.requestDisallowInterceptTouchEvent(z);
    }

    @Override // android.view.View, android.view.ViewParent
    public void requestLayout() {
        this.f1978g = true;
        super.requestLayout();
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
            int m6045b = m6045b(i, (width - paddingLeft) - paddingRight, width2 + i3 + i4);
            int m6045b2 = m6045b(i2, (height - paddingTop) - paddingBottom, height2 + i5 + i6);
            if (m6045b == getScrollX() && m6045b2 == getScrollY()) {
                return;
            }
            super.scrollTo(m6045b, m6045b2);
        }
    }

    public void setFillViewport(boolean z) {
        if (z != this.f1983l) {
            this.f1983l = z;
            requestLayout();
        }
    }

    @Override // android.view.View
    public void setNestedScrollingEnabled(boolean z) {
        this.f1995z.m6311a(z);
    }

    public void setOnScrollChangeListener(AbstractC0594b abstractC0594b) {
        this.f1971B = abstractC0594b;
    }

    public void setSmoothScrollingEnabled(boolean z) {
        this.f1984m = z;
    }

    @Override // android.widget.FrameLayout, android.view.ViewGroup
    public boolean shouldDelayChildPressedState() {
        return true;
    }

    @Override // android.view.View
    public boolean startNestedScroll(int i) {
        return m6064a(i, 0);
    }

    @Override // android.view.View, androidx.core.p023g.AbstractC0540i
    public void stopNestedScroll() {
        stopNestedScroll(0);
    }

    @Override // androidx.core.p023g.AbstractC0541j
    public void stopNestedScroll(int i) {
        this.f1995z.m6306c(i);
    }
}

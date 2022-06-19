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
import androidx.core.p026h.AbstractC0585k;
import androidx.core.p026h.AbstractC0589o;
import androidx.core.p026h.C0549a;
import androidx.core.p026h.C0586l;
import androidx.core.p026h.C0590p;
import androidx.core.p026h.C0595u;
import androidx.core.p026h.p027a.C0553c;
import androidx.core.p026h.p027a.C0560e;
import androidx.recyclerview.widget.RecyclerView;
import java.util.ArrayList;
/* loaded from: classes-dex2jar.jar:androidx/core/widget/NestedScrollView.class */
public class NestedScrollView extends FrameLayout implements AbstractC0585k, AbstractC0589o {

    /* renamed from: w */
    private static final C0614a f2125w = new C0614a();

    /* renamed from: x */
    private static final int[] f2126x = {16843130};

    /* renamed from: A */
    private float f2127A;

    /* renamed from: B */
    private AbstractC0615b f2128B;

    /* renamed from: a */
    private long f2129a;

    /* renamed from: b */
    private final Rect f2130b;

    /* renamed from: c */
    private OverScroller f2131c;

    /* renamed from: d */
    private EdgeEffect f2132d;

    /* renamed from: e */
    private EdgeEffect f2133e;

    /* renamed from: f */
    private int f2134f;

    /* renamed from: g */
    private boolean f2135g;

    /* renamed from: h */
    private boolean f2136h;

    /* renamed from: i */
    private View f2137i;

    /* renamed from: j */
    private boolean f2138j;

    /* renamed from: k */
    private VelocityTracker f2139k;

    /* renamed from: l */
    private boolean f2140l;

    /* renamed from: m */
    private boolean f2141m;

    /* renamed from: n */
    private int f2142n;

    /* renamed from: o */
    private int f2143o;

    /* renamed from: p */
    private int f2144p;

    /* renamed from: q */
    private int f2145q;

    /* renamed from: r */
    private final int[] f2146r;

    /* renamed from: s */
    private final int[] f2147s;

    /* renamed from: t */
    private int f2148t;

    /* renamed from: u */
    private int f2149u;

    /* renamed from: v */
    private C0616c f2150v;

    /* renamed from: y */
    private final C0590p f2151y;

    /* renamed from: z */
    private final C0586l f2152z;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: androidx.core.widget.NestedScrollView$a */
    /* loaded from: classes-dex2jar.jar:androidx/core/widget/NestedScrollView$a.class */
    public static class C0614a extends C0549a {
        C0614a() {
        }

        @Override // androidx.core.p026h.C0549a
        /* renamed from: a */
        public void mo2272a(View view, C0553c c0553c) {
            int scrollRange;
            super.mo2272a(view, c0553c);
            NestedScrollView nestedScrollView = (NestedScrollView) view;
            c0553c.m20504b((CharSequence) ScrollView.class.getName());
            if (!nestedScrollView.isEnabled() || (scrollRange = nestedScrollView.getScrollRange()) <= 0) {
                return;
            }
            c0553c.m20475i(true);
            if (nestedScrollView.getScrollY() > 0) {
                c0553c.m20525a(8192);
            }
            if (nestedScrollView.getScrollY() >= scrollRange) {
                return;
            }
            c0553c.m20525a(4096);
        }

        @Override // androidx.core.p026h.C0549a
        /* renamed from: a */
        public boolean mo2512a(View view, int i, Bundle bundle) {
            boolean z = true;
            if (!super.mo2512a(view, i, bundle)) {
                NestedScrollView nestedScrollView = (NestedScrollView) view;
                if (nestedScrollView.isEnabled()) {
                    switch (i) {
                        case 4096:
                            int min = Math.min(((nestedScrollView.getHeight() - nestedScrollView.getPaddingBottom()) - nestedScrollView.getPaddingTop()) + nestedScrollView.getScrollY(), nestedScrollView.getScrollRange());
                            if (min == nestedScrollView.getScrollY()) {
                                z = false;
                                break;
                            } else {
                                nestedScrollView.m20209c(0, min);
                                break;
                            }
                        case 8192:
                            int max = Math.max(nestedScrollView.getScrollY() - ((nestedScrollView.getHeight() - nestedScrollView.getPaddingBottom()) - nestedScrollView.getPaddingTop()), 0);
                            if (max == nestedScrollView.getScrollY()) {
                                z = false;
                                break;
                            } else {
                                nestedScrollView.m20209c(0, max);
                                break;
                            }
                        default:
                            z = false;
                            break;
                    }
                } else {
                    z = false;
                }
            }
            return z;
        }

        @Override // androidx.core.p026h.C0549a
        /* renamed from: d */
        public void mo2915d(View view, AccessibilityEvent accessibilityEvent) {
            super.mo2915d(view, accessibilityEvent);
            NestedScrollView nestedScrollView = (NestedScrollView) view;
            accessibilityEvent.setClassName(ScrollView.class.getName());
            accessibilityEvent.setScrollable(nestedScrollView.getScrollRange() > 0);
            accessibilityEvent.setScrollX(nestedScrollView.getScrollX());
            accessibilityEvent.setScrollY(nestedScrollView.getScrollY());
            C0560e.m20447a(accessibilityEvent, nestedScrollView.getScrollX());
            C0560e.m20445b(accessibilityEvent, nestedScrollView.getScrollRange());
        }
    }

    /* renamed from: androidx.core.widget.NestedScrollView$b */
    /* loaded from: classes-dex2jar.jar:androidx/core/widget/NestedScrollView$b.class */
    public interface AbstractC0615b {
        /* renamed from: a */
        void mo20198a(NestedScrollView nestedScrollView, int i, int i2, int i3, int i4);
    }

    /* renamed from: androidx.core.widget.NestedScrollView$c */
    /* loaded from: classes-dex2jar.jar:androidx/core/widget/NestedScrollView$c.class */
    public static class C0616c extends View.BaseSavedState {
        public static final Parcelable.Creator<C0616c> CREATOR = new Parcelable.Creator<C0616c>() { // from class: androidx.core.widget.NestedScrollView.c.1
            /* renamed from: a */
            public C0616c createFromParcel(Parcel parcel) {
                return new C0616c(parcel);
            }

            /* renamed from: a */
            public C0616c[] newArray(int i) {
                return new C0616c[i];
            }
        };

        /* renamed from: a */
        public int f2153a;

        C0616c(Parcel parcel) {
            super(parcel);
            this.f2153a = parcel.readInt();
        }

        C0616c(Parcelable parcelable) {
            super(parcelable);
        }

        public String toString() {
            return "HorizontalScrollView.SavedState{" + Integer.toHexString(System.identityHashCode(this)) + " scrollPosition=" + this.f2153a + "}";
        }

        @Override // android.view.View.BaseSavedState, android.view.AbsSavedState, android.os.Parcelable
        public void writeToParcel(Parcel parcel, int i) {
            super.writeToParcel(parcel, i);
            parcel.writeInt(this.f2153a);
        }
    }

    public NestedScrollView(Context context) {
        this(context, null);
    }

    public NestedScrollView(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    public NestedScrollView(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        this.f2130b = new Rect();
        this.f2135g = true;
        this.f2136h = false;
        this.f2137i = null;
        this.f2138j = false;
        this.f2141m = true;
        this.f2145q = -1;
        this.f2146r = new int[2];
        this.f2147s = new int[2];
        m20239a();
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, f2126x, i, 0);
        setFillViewport(obtainStyledAttributes.getBoolean(0, false));
        obtainStyledAttributes.recycle();
        this.f2151y = new C0590p(this);
        this.f2152z = new C0586l(this);
        setNestedScrollingEnabled(true);
        C0595u.m20345a(this, f2125w);
    }

    /* renamed from: a */
    private View m20218a(boolean z, int i, int i2) {
        ArrayList focusables = getFocusables(2);
        View view = null;
        int size = focusables.size();
        boolean z2 = false;
        for (int i3 = 0; i3 < size; i3++) {
            View view2 = (View) focusables.get(i3);
            int top = view2.getTop();
            int bottom = view2.getBottom();
            if (i < bottom && top < i2) {
                boolean z3 = i < top && bottom < i2;
                if (view == null) {
                    z2 = z3;
                    view = view2;
                } else {
                    boolean z4 = (z && top < view.getTop()) || (!z && bottom > view.getBottom());
                    if (z2) {
                        if (z3 && z4) {
                            view = view2;
                        }
                    } else if (z3) {
                        z2 = true;
                        view = view2;
                    } else if (z4) {
                        view = view2;
                    }
                }
            }
        }
        return view;
    }

    /* renamed from: a */
    private void m20239a() {
        this.f2131c = new OverScroller(getContext());
        setFocusable(true);
        setDescendantFocusability(262144);
        setWillNotDraw(false);
        ViewConfiguration viewConfiguration = ViewConfiguration.get(getContext());
        this.f2142n = viewConfiguration.getScaledTouchSlop();
        this.f2143o = viewConfiguration.getScaledMinimumFlingVelocity();
        this.f2144p = viewConfiguration.getScaledMaximumFlingVelocity();
    }

    /* renamed from: a */
    private void m20233a(int i, int i2, int[] iArr) {
        int scrollY = getScrollY();
        scrollBy(0, i);
        int scrollY2 = getScrollY() - scrollY;
        if (iArr != null) {
            iArr[1] = iArr[1] + scrollY2;
        }
        this.f2152z.m20392a(0, scrollY2, 0, i - scrollY2, null, i2, iArr);
    }

    /* renamed from: a */
    private void m20228a(MotionEvent motionEvent) {
        int actionIndex = motionEvent.getActionIndex();
        if (motionEvent.getPointerId(actionIndex) == this.f2145q) {
            int i = actionIndex == 0 ? 1 : 0;
            this.f2134f = (int) motionEvent.getY(i);
            this.f2145q = motionEvent.getPointerId(i);
            if (this.f2139k == null) {
                return;
            }
            this.f2139k.clear();
        }
    }

    /* renamed from: a */
    private void m20219a(boolean z) {
        if (z) {
            m20237a(2, 1);
        } else {
            m20238a(1);
        }
        this.f2149u = getScrollY();
        C0595u.m20324e(this);
    }

    /* renamed from: a */
    private boolean m20236a(int i, int i2, int i3) {
        boolean z;
        int height = getHeight();
        int scrollY = getScrollY();
        int i4 = scrollY + height;
        boolean z2 = i == 33;
        View m20218a = m20218a(z2, i2, i3);
        View view = m20218a;
        if (m20218a == null) {
            view = this;
        }
        if (i2 < scrollY || i3 > i4) {
            m20200g(z2 ? i2 - scrollY : i3 - i4);
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
    private boolean m20230a(Rect rect, boolean z) {
        int m20231a = m20231a(rect);
        boolean z2 = m20231a != 0;
        if (z2) {
            if (z) {
                scrollBy(0, m20231a);
            } else {
                m20215b(0, m20231a);
            }
        }
        return z2;
    }

    /* renamed from: a */
    private boolean m20227a(View view) {
        boolean z = false;
        if (!m20225a(view, 0, getHeight())) {
            z = true;
        }
        return z;
    }

    /* renamed from: a */
    private boolean m20225a(View view, int i, int i2) {
        view.getDrawingRect(this.f2130b);
        offsetDescendantRectToMyCoords(view, this.f2130b);
        return this.f2130b.bottom + i >= getScrollY() && this.f2130b.top - i <= getScrollY() + i2;
    }

    /* renamed from: a */
    private static boolean m20221a(View view, View view2) {
        boolean z = true;
        if (view != view2) {
            ViewParent parent = view.getParent();
            z = (parent instanceof ViewGroup) && m20221a((View) parent, view2);
        }
        return z;
    }

    /* renamed from: b */
    private static int m20214b(int i, int i2, int i3) {
        int i4;
        if (i2 >= i3 || i < 0) {
            i4 = 0;
        } else {
            i4 = i;
            if (i2 + i > i3) {
                i4 = i3 - i2;
            }
        }
        return i4;
    }

    /* renamed from: b */
    private void m20213b(View view) {
        view.getDrawingRect(this.f2130b);
        offsetDescendantRectToMyCoords(view, this.f2130b);
        int m20231a = m20231a(this.f2130b);
        if (m20231a != 0) {
            scrollBy(0, m20231a);
        }
    }

    /* renamed from: b */
    private boolean m20217b() {
        boolean z;
        if (getChildCount() > 0) {
            View childAt = getChildAt(0);
            FrameLayout.LayoutParams layoutParams = (FrameLayout.LayoutParams) childAt.getLayoutParams();
            z = layoutParams.bottomMargin + (childAt.getHeight() + layoutParams.topMargin) > (getHeight() - getPaddingTop()) - getPaddingBottom();
        } else {
            z = false;
        }
        return z;
    }

    /* renamed from: c */
    private void m20211c() {
        if (this.f2139k == null) {
            this.f2139k = VelocityTracker.obtain();
        } else {
            this.f2139k.clear();
        }
    }

    /* renamed from: d */
    private void m20208d() {
        if (this.f2139k == null) {
            this.f2139k = VelocityTracker.obtain();
        }
    }

    /* renamed from: d */
    private boolean m20206d(int i, int i2) {
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
    private void m20205e() {
        if (this.f2139k != null) {
            this.f2139k.recycle();
            this.f2139k = null;
        }
    }

    /* renamed from: f */
    private void m20203f() {
        this.f2131c.abortAnimation();
        m20238a(1);
    }

    /* renamed from: g */
    private void m20201g() {
        this.f2138j = false;
        m20205e();
        m20238a(0);
        if (this.f2132d != null) {
            this.f2132d.onRelease();
            this.f2133e.onRelease();
        }
    }

    /* renamed from: g */
    private void m20200g(int i) {
        if (i != 0) {
            if (this.f2141m) {
                m20215b(0, i);
            } else {
                scrollBy(0, i);
            }
        }
    }

    private float getVerticalScrollFactorCompat() {
        if (this.f2127A == 0.0f) {
            TypedValue typedValue = new TypedValue();
            Context context = getContext();
            if (!context.getTheme().resolveAttribute(16842829, typedValue, true)) {
                throw new IllegalStateException("Expected theme to define listPreferredItemHeight.");
            }
            this.f2127A = typedValue.getDimension(context.getResources().getDisplayMetrics());
        }
        return this.f2127A;
    }

    /* renamed from: h */
    private void m20199h() {
        if (getOverScrollMode() == 2) {
            this.f2132d = null;
            this.f2133e = null;
        } else if (this.f2132d != null) {
        } else {
            Context context = getContext();
            this.f2132d = new EdgeEffect(context);
            this.f2133e = new EdgeEffect(context);
        }
    }

    /* renamed from: a */
    protected int m20231a(Rect rect) {
        int i = 0;
        if (getChildCount() != 0) {
            int height = getHeight();
            int scrollY = getScrollY();
            int i2 = scrollY + height;
            int verticalFadingEdgeLength = getVerticalFadingEdgeLength();
            if (rect.top > 0) {
                scrollY += verticalFadingEdgeLength;
            }
            View childAt = getChildAt(0);
            FrameLayout.LayoutParams layoutParams = (FrameLayout.LayoutParams) childAt.getLayoutParams();
            int i3 = rect.bottom < (childAt.getHeight() + layoutParams.topMargin) + layoutParams.bottomMargin ? i2 - verticalFadingEdgeLength : i2;
            if (rect.bottom > i3 && rect.top > scrollY) {
                i = Math.min(rect.height() > height ? (rect.top - scrollY) + 0 : (rect.bottom - i3) + 0, (layoutParams.bottomMargin + childAt.getBottom()) - i2);
            } else if (rect.top >= scrollY || rect.bottom >= i3) {
                i = 0;
            } else {
                i = Math.max(rect.height() > height ? 0 - (i3 - rect.bottom) : 0 - (scrollY - rect.top), -getScrollY());
            }
        }
        return i;
    }

    /* renamed from: a */
    public void m20238a(int i) {
        this.f2152z.m20383c(i);
    }

    /* renamed from: a */
    public void m20234a(int i, int i2, int i3, int i4, int[] iArr, int i5, int[] iArr2) {
        this.f2152z.m20392a(i, i2, i3, i4, iArr, i5, iArr2);
    }

    @Override // androidx.core.p026h.AbstractC0588n
    /* renamed from: a */
    public void mo20226a(View view, int i) {
        this.f2151y.m20378a(view, i);
        m20238a(i);
    }

    @Override // androidx.core.p026h.AbstractC0588n
    /* renamed from: a */
    public void mo20224a(View view, int i, int i2, int i3, int i4, int i5) {
        m20233a(i4, i5, (int[]) null);
    }

    @Override // androidx.core.p026h.AbstractC0589o
    /* renamed from: a */
    public void mo20223a(View view, int i, int i2, int i3, int i4, int i5, int[] iArr) {
        m20233a(i4, i5, iArr);
    }

    @Override // androidx.core.p026h.AbstractC0588n
    /* renamed from: a */
    public void mo20222a(View view, int i, int i2, int[] iArr, int i3) {
        m20232a(i, i2, iArr, (int[]) null, i3);
    }

    /* renamed from: a */
    public boolean m20237a(int i, int i2) {
        return this.f2152z.m20395a(i, i2);
    }

    /* renamed from: a */
    boolean m20235a(int i, int i2, int i3, int i4, int i5, int i6, int i7, int i8, boolean z) {
        boolean z2;
        boolean z3;
        int overScrollMode = getOverScrollMode();
        boolean z4 = computeHorizontalScrollRange() > computeHorizontalScrollExtent();
        boolean z5 = computeVerticalScrollRange() > computeVerticalScrollExtent();
        boolean z6 = overScrollMode == 0 || (overScrollMode == 1 && z4);
        boolean z7 = overScrollMode == 0 || (overScrollMode == 1 && z5);
        int i9 = i3 + i;
        if (!z6) {
            i7 = 0;
        }
        int i10 = i4 + i2;
        if (!z7) {
            i8 = 0;
        }
        int i11 = -i7;
        int i12 = i7 + i5;
        int i13 = -i8;
        int i14 = i8 + i6;
        if (i9 > i12) {
            z2 = true;
            i9 = i12;
        } else if (i9 < i11) {
            z2 = true;
            i9 = i11;
        } else {
            z2 = false;
        }
        if (i10 > i14) {
            z3 = true;
            i10 = i14;
        } else if (i10 < i13) {
            z3 = true;
            i10 = i13;
        } else {
            z3 = false;
        }
        if (z3 && !m20216b(1)) {
            this.f2131c.springBack(i9, i10, 0, 0, 0, getScrollRange());
        }
        onOverScrolled(i9, i10, z2, z3);
        return z2 || z3;
    }

    /* renamed from: a */
    public boolean m20232a(int i, int i2, int[] iArr, int[] iArr2, int i3) {
        return this.f2152z.m20390a(i, i2, iArr, iArr2, i3);
    }

    /* renamed from: a */
    public boolean m20229a(KeyEvent keyEvent) {
        boolean z;
        int i = 33;
        this.f2130b.setEmpty();
        if (m20217b()) {
            z = false;
            if (keyEvent.getAction() == 0) {
                switch (keyEvent.getKeyCode()) {
                    case 19:
                        if (keyEvent.isAltPressed()) {
                            z = m20207d(33);
                            break;
                        } else {
                            z = m20204e(33);
                            break;
                        }
                    case 20:
                        if (keyEvent.isAltPressed()) {
                            z = m20207d(130);
                            break;
                        } else {
                            z = m20204e(130);
                            break;
                        }
                    case 62:
                        if (!keyEvent.isShiftPressed()) {
                            i = 130;
                        }
                        m20210c(i);
                        z = false;
                        break;
                    default:
                        z = false;
                        break;
                }
            }
        } else {
            z = false;
            if (isFocused()) {
                z = false;
                if (keyEvent.getKeyCode() != 4) {
                    View findFocus = findFocus();
                    View view = findFocus;
                    if (findFocus == this) {
                        view = null;
                    }
                    View findNextFocus = FocusFinder.getInstance().findNextFocus(this, view, 130);
                    z = (findNextFocus == null || findNextFocus == this || !findNextFocus.requestFocus(130)) ? false : true;
                }
            }
        }
        return z;
    }

    @Override // androidx.core.p026h.AbstractC0588n
    /* renamed from: a */
    public boolean mo20220a(View view, View view2, int i, int i2) {
        return (i & 2) != 0;
    }

    @Override // android.view.ViewGroup
    public void addView(View view) {
        if (getChildCount() > 0) {
            throw new IllegalStateException("ScrollView can host only one direct child");
        }
        super.addView(view);
    }

    @Override // android.view.ViewGroup
    public void addView(View view, int i) {
        if (getChildCount() > 0) {
            throw new IllegalStateException("ScrollView can host only one direct child");
        }
        super.addView(view, i);
    }

    @Override // android.view.ViewGroup
    public void addView(View view, int i, ViewGroup.LayoutParams layoutParams) {
        if (getChildCount() > 0) {
            throw new IllegalStateException("ScrollView can host only one direct child");
        }
        super.addView(view, i, layoutParams);
    }

    @Override // android.view.ViewGroup, android.view.ViewManager
    public void addView(View view, ViewGroup.LayoutParams layoutParams) {
        if (getChildCount() > 0) {
            throw new IllegalStateException("ScrollView can host only one direct child");
        }
        super.addView(view, layoutParams);
    }

    /* renamed from: b */
    public final void m20215b(int i, int i2) {
        if (getChildCount() == 0) {
            return;
        }
        if (AnimationUtils.currentAnimationTimeMillis() - this.f2129a > 250) {
            View childAt = getChildAt(0);
            FrameLayout.LayoutParams layoutParams = (FrameLayout.LayoutParams) childAt.getLayoutParams();
            int height = childAt.getHeight();
            int i3 = layoutParams.topMargin;
            int i4 = layoutParams.bottomMargin;
            int height2 = getHeight();
            int paddingTop = getPaddingTop();
            int paddingBottom = getPaddingBottom();
            int scrollY = getScrollY();
            this.f2131c.startScroll(getScrollX(), scrollY, 0, Math.max(0, Math.min(scrollY + i2, Math.max(0, (i4 + (height + i3)) - ((height2 - paddingTop) - paddingBottom)))) - scrollY);
            m20219a(false);
        } else {
            if (!this.f2131c.isFinished()) {
                m20203f();
            }
            scrollBy(i, i2);
        }
        this.f2129a = AnimationUtils.currentAnimationTimeMillis();
    }

    @Override // androidx.core.p026h.AbstractC0588n
    /* renamed from: b */
    public void mo20212b(View view, View view2, int i, int i2) {
        this.f2151y.m20376a(view, view2, i, i2);
        m20237a(2, i2);
    }

    /* renamed from: b */
    public boolean m20216b(int i) {
        return this.f2152z.m20396a(i);
    }

    /* renamed from: c */
    public final void m20209c(int i, int i2) {
        m20215b(i - getScrollX(), i2 - getScrollY());
    }

    /* renamed from: c */
    public boolean m20210c(int i) {
        boolean z = i == 130;
        int height = getHeight();
        if (z) {
            this.f2130b.top = getScrollY() + height;
            int childCount = getChildCount();
            if (childCount > 0) {
                View childAt = getChildAt(childCount - 1);
                int bottom = ((FrameLayout.LayoutParams) childAt.getLayoutParams()).bottomMargin + childAt.getBottom() + getPaddingBottom();
                if (this.f2130b.top + height > bottom) {
                    this.f2130b.top = bottom - height;
                }
            }
        } else {
            this.f2130b.top = getScrollY() - height;
            if (this.f2130b.top < 0) {
                this.f2130b.top = 0;
            }
        }
        this.f2130b.bottom = this.f2130b.top + height;
        return m20236a(i, this.f2130b.top, this.f2130b.bottom);
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

    @Override // android.view.View
    public void computeScroll() {
        if (this.f2131c.isFinished()) {
            return;
        }
        this.f2131c.computeScrollOffset();
        int currY = this.f2131c.getCurrY();
        int i = currY - this.f2149u;
        this.f2149u = currY;
        this.f2147s[1] = 0;
        m20232a(0, i, this.f2147s, (int[]) null, 1);
        int i2 = i - this.f2147s[1];
        int scrollRange = getScrollRange();
        int i3 = i2;
        if (i2 != 0) {
            int scrollY = getScrollY();
            m20235a(0, i2, getScrollX(), scrollY, 0, scrollRange, 0, 0, false);
            int scrollY2 = getScrollY() - scrollY;
            int i4 = i2 - scrollY2;
            this.f2147s[1] = 0;
            m20234a(0, scrollY2, 0, i4, this.f2146r, 1, this.f2147s);
            i3 = i4 - this.f2147s[1];
        }
        if (i3 != 0) {
            int overScrollMode = getOverScrollMode();
            if (overScrollMode == 0 || (overScrollMode == 1 && scrollRange > 0)) {
                m20199h();
                if (i3 < 0) {
                    if (this.f2132d.isFinished()) {
                        this.f2132d.onAbsorb((int) this.f2131c.getCurrVelocity());
                    }
                } else if (this.f2133e.isFinished()) {
                    this.f2133e.onAbsorb((int) this.f2131c.getCurrVelocity());
                }
            }
            m20203f();
        }
        if (this.f2131c.isFinished()) {
            return;
        }
        C0595u.m20324e(this);
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
        int childCount = getChildCount();
        int height = (getHeight() - getPaddingBottom()) - getPaddingTop();
        if (childCount != 0) {
            View childAt = getChildAt(0);
            FrameLayout.LayoutParams layoutParams = (FrameLayout.LayoutParams) childAt.getLayoutParams();
            int bottom = layoutParams.bottomMargin + childAt.getBottom();
            int scrollY = getScrollY();
            int max = Math.max(0, bottom - height);
            if (scrollY < 0) {
                height = bottom - scrollY;
            } else {
                height = bottom;
                if (scrollY > max) {
                    height = bottom + (scrollY - max);
                }
            }
        }
        return height;
    }

    /* renamed from: d */
    public boolean m20207d(int i) {
        int childCount;
        boolean z = i == 130;
        int height = getHeight();
        this.f2130b.top = 0;
        this.f2130b.bottom = height;
        if (z && (childCount = getChildCount()) > 0) {
            View childAt = getChildAt(childCount - 1);
            this.f2130b.bottom = ((FrameLayout.LayoutParams) childAt.getLayoutParams()).bottomMargin + childAt.getBottom() + getPaddingBottom();
            this.f2130b.top = this.f2130b.bottom - height;
        }
        return m20236a(i, this.f2130b.top, this.f2130b.bottom);
    }

    @Override // android.view.ViewGroup, android.view.View
    public boolean dispatchKeyEvent(KeyEvent keyEvent) {
        return super.dispatchKeyEvent(keyEvent) || m20229a(keyEvent);
    }

    @Override // android.view.View
    public boolean dispatchNestedFling(float f, float f2, boolean z) {
        return this.f2152z.m20397a(f, f2, z);
    }

    @Override // android.view.View
    public boolean dispatchNestedPreFling(float f, float f2) {
        return this.f2152z.m20398a(f, f2);
    }

    @Override // android.view.View
    public boolean dispatchNestedPreScroll(int i, int i2, int[] iArr, int[] iArr2) {
        return m20232a(i, i2, iArr, iArr2, 0);
    }

    @Override // android.view.View
    public boolean dispatchNestedScroll(int i, int i2, int i3, int i4, int[] iArr) {
        return this.f2152z.m20394a(i, i2, i3, i4, iArr);
    }

    /* JADX WARN: Code restructure failed: missing block: B:25:0x00f7, code lost:
        if (getClipToPadding() != false) goto L26;
     */
    @Override // android.view.View
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void draw(android.graphics.Canvas r6) {
        /*
            Method dump skipped, instructions count: 389
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.core.widget.NestedScrollView.draw(android.graphics.Canvas):void");
    }

    /* renamed from: e */
    public boolean m20204e(int i) {
        boolean z;
        View findFocus = findFocus();
        if (findFocus == this) {
            findFocus = null;
        }
        View findNextFocus = FocusFinder.getInstance().findNextFocus(this, findFocus, i);
        int maxScrollAmount = getMaxScrollAmount();
        if (findNextFocus == null || !m20225a(findNextFocus, maxScrollAmount, getHeight())) {
            if (i == 33 && getScrollY() < maxScrollAmount) {
                maxScrollAmount = getScrollY();
            } else if (i == 130 && getChildCount() > 0) {
                View childAt = getChildAt(0);
                maxScrollAmount = Math.min((((FrameLayout.LayoutParams) childAt.getLayoutParams()).bottomMargin + childAt.getBottom()) - ((getScrollY() + getHeight()) - getPaddingBottom()), maxScrollAmount);
            }
            if (maxScrollAmount == 0) {
                z = false;
                return z;
            }
            if (i != 130) {
                maxScrollAmount = -maxScrollAmount;
            }
            m20200g(maxScrollAmount);
        } else {
            findNextFocus.getDrawingRect(this.f2130b);
            offsetDescendantRectToMyCoords(findNextFocus, this.f2130b);
            m20200g(m20231a(this.f2130b));
            findNextFocus.requestFocus(i);
        }
        if (findFocus != null && findFocus.isFocused() && m20227a(findFocus)) {
            int descendantFocusability = getDescendantFocusability();
            setDescendantFocusability(131072);
            requestFocus();
            setDescendantFocusability(descendantFocusability);
        }
        z = true;
        return z;
    }

    /* renamed from: f */
    public void m20202f(int i) {
        if (getChildCount() > 0) {
            this.f2131c.fling(getScrollX(), getScrollY(), 0, i, 0, 0, RecyclerView.UNDEFINED_DURATION, Integer.MAX_VALUE, 0, 0);
            m20219a(true);
        }
    }

    @Override // android.view.View
    protected float getBottomFadingEdgeStrength() {
        float f;
        if (getChildCount() == 0) {
            f = 0.0f;
        } else {
            View childAt = getChildAt(0);
            FrameLayout.LayoutParams layoutParams = (FrameLayout.LayoutParams) childAt.getLayoutParams();
            int verticalFadingEdgeLength = getVerticalFadingEdgeLength();
            int bottom = ((layoutParams.bottomMargin + childAt.getBottom()) - getScrollY()) - (getHeight() - getPaddingBottom());
            f = bottom < verticalFadingEdgeLength ? bottom / verticalFadingEdgeLength : 1.0f;
        }
        return f;
    }

    public int getMaxScrollAmount() {
        return (int) (0.5f * getHeight());
    }

    @Override // android.view.ViewGroup
    public int getNestedScrollAxes() {
        return this.f2151y.m20380a();
    }

    int getScrollRange() {
        int i;
        if (getChildCount() > 0) {
            View childAt = getChildAt(0);
            FrameLayout.LayoutParams layoutParams = (FrameLayout.LayoutParams) childAt.getLayoutParams();
            i = Math.max(0, (layoutParams.bottomMargin + (childAt.getHeight() + layoutParams.topMargin)) - ((getHeight() - getPaddingTop()) - getPaddingBottom()));
        } else {
            i = 0;
        }
        return i;
    }

    @Override // android.view.View
    protected float getTopFadingEdgeStrength() {
        float f;
        if (getChildCount() == 0) {
            f = 0.0f;
        } else {
            int verticalFadingEdgeLength = getVerticalFadingEdgeLength();
            int scrollY = getScrollY();
            f = scrollY < verticalFadingEdgeLength ? scrollY / verticalFadingEdgeLength : 1.0f;
        }
        return f;
    }

    @Override // android.view.View
    public boolean hasNestedScrollingParent() {
        return m20216b(0);
    }

    @Override // android.view.View, androidx.core.p026h.AbstractC0583i
    public boolean isNestedScrollingEnabled() {
        return this.f2152z.m20399a();
    }

    @Override // android.view.ViewGroup
    protected void measureChild(View view, int i, int i2) {
        view.measure(getChildMeasureSpec(i, getPaddingLeft() + getPaddingRight(), view.getLayoutParams().width), View.MeasureSpec.makeMeasureSpec(0, 0));
    }

    @Override // android.view.ViewGroup
    protected void measureChildWithMargins(View view, int i, int i2, int i3, int i4) {
        ViewGroup.MarginLayoutParams marginLayoutParams = (ViewGroup.MarginLayoutParams) view.getLayoutParams();
        view.measure(getChildMeasureSpec(i, getPaddingLeft() + getPaddingRight() + marginLayoutParams.leftMargin + marginLayoutParams.rightMargin + i2, marginLayoutParams.width), View.MeasureSpec.makeMeasureSpec(marginLayoutParams.bottomMargin + marginLayoutParams.topMargin, 0));
    }

    @Override // android.view.ViewGroup, android.view.View
    public void onAttachedToWindow() {
        super.onAttachedToWindow();
        this.f2136h = false;
    }

    @Override // android.view.View
    public boolean onGenericMotionEvent(MotionEvent motionEvent) {
        int i;
        boolean z = false;
        if ((motionEvent.getSource() & 2) != 0) {
            switch (motionEvent.getAction()) {
                case 8:
                    z = false;
                    if (!this.f2138j) {
                        float axisValue = motionEvent.getAxisValue(9);
                        z = false;
                        if (axisValue != 0.0f) {
                            int verticalScrollFactorCompat = (int) (axisValue * getVerticalScrollFactorCompat());
                            int scrollRange = getScrollRange();
                            int scrollY = getScrollY();
                            int i2 = scrollY - verticalScrollFactorCompat;
                            if (i2 < 0) {
                                i = 0;
                            } else {
                                i = scrollRange;
                                if (i2 <= scrollRange) {
                                    i = i2;
                                }
                            }
                            z = false;
                            if (i != scrollY) {
                                super.scrollTo(getScrollX(), i);
                                z = true;
                                break;
                            }
                        }
                    }
                    break;
                default:
                    z = false;
                    break;
            }
        }
        return z;
    }

    @Override // android.view.ViewGroup
    public boolean onInterceptTouchEvent(MotionEvent motionEvent) {
        boolean z = true;
        int action = motionEvent.getAction();
        if (action != 2 || !this.f2138j) {
            switch (action & 255) {
                case 0:
                    int y = (int) motionEvent.getY();
                    if (m20206d((int) motionEvent.getX(), y)) {
                        this.f2134f = y;
                        this.f2145q = motionEvent.getPointerId(0);
                        m20211c();
                        this.f2139k.addMovement(motionEvent);
                        this.f2131c.computeScrollOffset();
                        this.f2138j = !this.f2131c.isFinished();
                        m20237a(2, 0);
                        break;
                    } else {
                        this.f2138j = false;
                        m20205e();
                        break;
                    }
                case 1:
                case 3:
                    this.f2138j = false;
                    this.f2145q = -1;
                    m20205e();
                    if (this.f2131c.springBack(getScrollX(), getScrollY(), 0, 0, 0, getScrollRange())) {
                        C0595u.m20324e(this);
                    }
                    m20238a(0);
                    break;
                case 2:
                    int i = this.f2145q;
                    if (i != -1) {
                        int findPointerIndex = motionEvent.findPointerIndex(i);
                        if (findPointerIndex != -1) {
                            int y2 = (int) motionEvent.getY(findPointerIndex);
                            if (Math.abs(y2 - this.f2134f) > this.f2142n && (getNestedScrollAxes() & 2) == 0) {
                                this.f2138j = true;
                                this.f2134f = y2;
                                m20208d();
                                this.f2139k.addMovement(motionEvent);
                                this.f2148t = 0;
                                ViewParent parent = getParent();
                                if (parent != null) {
                                    parent.requestDisallowInterceptTouchEvent(true);
                                    break;
                                }
                            }
                        } else {
                            Log.e("NestedScrollView", "Invalid pointerId=" + i + " in onInterceptTouchEvent");
                            break;
                        }
                    }
                    break;
                case 6:
                    m20228a(motionEvent);
                    break;
            }
            z = this.f2138j;
        }
        return z;
    }

    @Override // android.widget.FrameLayout, android.view.ViewGroup, android.view.View
    protected void onLayout(boolean z, int i, int i2, int i3, int i4) {
        super.onLayout(z, i, i2, i3, i4);
        this.f2135g = false;
        if (this.f2137i != null && m20221a(this.f2137i, this)) {
            m20213b(this.f2137i);
        }
        this.f2137i = null;
        if (!this.f2136h) {
            if (this.f2150v != null) {
                scrollTo(getScrollX(), this.f2150v.f2153a);
                this.f2150v = null;
            }
            int i5 = 0;
            if (getChildCount() > 0) {
                View childAt = getChildAt(0);
                FrameLayout.LayoutParams layoutParams = (FrameLayout.LayoutParams) childAt.getLayoutParams();
                i5 = layoutParams.bottomMargin + childAt.getMeasuredHeight() + layoutParams.topMargin;
            }
            int paddingTop = getPaddingTop();
            int paddingBottom = getPaddingBottom();
            int scrollY = getScrollY();
            int m20214b = m20214b(scrollY, ((i4 - i2) - paddingTop) - paddingBottom, i5);
            if (m20214b != scrollY) {
                scrollTo(getScrollX(), m20214b);
            }
        }
        scrollTo(getScrollX(), getScrollY());
        this.f2136h = true;
    }

    @Override // android.widget.FrameLayout, android.view.View
    protected void onMeasure(int i, int i2) {
        super.onMeasure(i, i2);
        if (this.f2140l && View.MeasureSpec.getMode(i2) != 0 && getChildCount() > 0) {
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

    @Override // android.view.ViewGroup, android.view.ViewParent, androidx.core.p026h.AbstractC0587m
    public boolean onNestedFling(View view, float f, float f2, boolean z) {
        boolean z2;
        if (!z) {
            dispatchNestedFling(0.0f, f2, true);
            m20202f((int) f2);
            z2 = true;
        } else {
            z2 = false;
        }
        return z2;
    }

    @Override // android.view.ViewGroup, android.view.ViewParent, androidx.core.p026h.AbstractC0587m
    public boolean onNestedPreFling(View view, float f, float f2) {
        return dispatchNestedPreFling(f, f2);
    }

    @Override // android.view.ViewGroup, android.view.ViewParent, androidx.core.p026h.AbstractC0587m
    public void onNestedPreScroll(View view, int i, int i2, int[] iArr) {
        mo20222a(view, i, i2, iArr, 0);
    }

    @Override // android.view.ViewGroup, android.view.ViewParent, androidx.core.p026h.AbstractC0587m
    public void onNestedScroll(View view, int i, int i2, int i3, int i4) {
        m20233a(i4, 0, (int[]) null);
    }

    @Override // android.view.ViewGroup, android.view.ViewParent, androidx.core.p026h.AbstractC0587m
    public void onNestedScrollAccepted(View view, View view2, int i) {
        mo20212b(view, view2, i, 0);
    }

    @Override // android.view.View
    protected void onOverScrolled(int i, int i2, boolean z, boolean z2) {
        super.scrollTo(i, i2);
    }

    @Override // android.view.ViewGroup
    protected boolean onRequestFocusInDescendants(int i, Rect rect) {
        int i2;
        boolean z = false;
        if (i == 2) {
            i2 = 130;
        } else {
            i2 = i;
            if (i == 1) {
                i2 = 33;
            }
        }
        View findNextFocus = rect == null ? FocusFinder.getInstance().findNextFocus(this, null, i2) : FocusFinder.getInstance().findNextFocusFromRect(this, rect, i2);
        if (findNextFocus != null && !m20227a(findNextFocus)) {
            z = findNextFocus.requestFocus(i2, rect);
        }
        return z;
    }

    @Override // android.view.View
    protected void onRestoreInstanceState(Parcelable parcelable) {
        if (!(parcelable instanceof C0616c)) {
            super.onRestoreInstanceState(parcelable);
            return;
        }
        C0616c c0616c = (C0616c) parcelable;
        super.onRestoreInstanceState(c0616c.getSuperState());
        this.f2150v = c0616c;
        requestLayout();
    }

    @Override // android.view.View
    protected Parcelable onSaveInstanceState() {
        C0616c c0616c = new C0616c(super.onSaveInstanceState());
        c0616c.f2153a = getScrollY();
        return c0616c;
    }

    @Override // android.view.View
    protected void onScrollChanged(int i, int i2, int i3, int i4) {
        super.onScrollChanged(i, i2, i3, i4);
        if (this.f2128B != null) {
            this.f2128B.mo20198a(this, i, i2, i3, i4);
        }
    }

    @Override // android.view.View
    protected void onSizeChanged(int i, int i2, int i3, int i4) {
        super.onSizeChanged(i, i2, i3, i4);
        View findFocus = findFocus();
        if (findFocus == null || this == findFocus || !m20225a(findFocus, 0, i4)) {
            return;
        }
        findFocus.getDrawingRect(this.f2130b);
        offsetDescendantRectToMyCoords(findFocus, this.f2130b);
        m20200g(m20231a(this.f2130b));
    }

    @Override // android.view.ViewGroup, android.view.ViewParent, androidx.core.p026h.AbstractC0587m
    public boolean onStartNestedScroll(View view, View view2, int i) {
        return mo20220a(view, view2, i, 0);
    }

    @Override // android.view.ViewGroup, android.view.ViewParent, androidx.core.p026h.AbstractC0587m
    public void onStopNestedScroll(View view) {
        mo20226a(view, 0);
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Removed duplicated region for block: B:9:0x0053  */
    @Override // android.view.View
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public boolean onTouchEvent(android.view.MotionEvent r12) {
        /*
            Method dump skipped, instructions count: 940
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.core.widget.NestedScrollView.onTouchEvent(android.view.MotionEvent):boolean");
    }

    @Override // android.view.ViewGroup, android.view.ViewParent
    public void requestChildFocus(View view, View view2) {
        if (!this.f2135g) {
            m20213b(view2);
        } else {
            this.f2137i = view2;
        }
        super.requestChildFocus(view, view2);
    }

    @Override // android.view.ViewGroup, android.view.ViewParent
    public boolean requestChildRectangleOnScreen(View view, Rect rect, boolean z) {
        rect.offset(view.getLeft() - view.getScrollX(), view.getTop() - view.getScrollY());
        return m20230a(rect, z);
    }

    @Override // android.view.ViewGroup, android.view.ViewParent
    public void requestDisallowInterceptTouchEvent(boolean z) {
        if (z) {
            m20205e();
        }
        super.requestDisallowInterceptTouchEvent(z);
    }

    @Override // android.view.View, android.view.ViewParent
    public void requestLayout() {
        this.f2135g = true;
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
            int m20214b = m20214b(i, (width - paddingLeft) - paddingRight, width2 + i3 + i4);
            int m20214b2 = m20214b(i2, (height - paddingTop) - paddingBottom, i6 + height2 + i5);
            if (m20214b == getScrollX() && m20214b2 == getScrollY()) {
                return;
            }
            super.scrollTo(m20214b, m20214b2);
        }
    }

    public void setFillViewport(boolean z) {
        if (z != this.f2140l) {
            this.f2140l = z;
            requestLayout();
        }
    }

    @Override // android.view.View
    public void setNestedScrollingEnabled(boolean z) {
        this.f2152z.m20388a(z);
    }

    public void setOnScrollChangeListener(AbstractC0615b abstractC0615b) {
        this.f2128B = abstractC0615b;
    }

    public void setSmoothScrollingEnabled(boolean z) {
        this.f2141m = z;
    }

    @Override // android.widget.FrameLayout, android.view.ViewGroup
    public boolean shouldDelayChildPressedState() {
        return true;
    }

    @Override // android.view.View
    public boolean startNestedScroll(int i) {
        return m20237a(i, 0);
    }

    @Override // android.view.View, androidx.core.p026h.AbstractC0583i
    public void stopNestedScroll() {
        m20238a(0);
    }
}

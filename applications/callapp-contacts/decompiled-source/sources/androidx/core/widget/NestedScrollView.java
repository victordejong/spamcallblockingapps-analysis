package androidx.core.widget;

import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.Rect;
import android.os.Build;
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
import androidx.core.view.a.c;
import androidx.core.view.l;
import androidx.core.view.m;
import androidx.core.view.p;
import androidx.core.view.q;
import androidx.core.view.v;
import com.callapp.contacts.activity.base.BaseViewTypeData;
import com.google.android.gms.maps.model.BitmapDescriptorFactory;
import java.util.ArrayList;
/* loaded from: classes-dex2jar.jar:androidx/core/widget/NestedScrollView.class */
public class NestedScrollView extends FrameLayout implements l, p {
    private static final a w = new a();
    private static final int[] x = {16843130};
    private float A;
    private b B;

    /* renamed from: a  reason: collision with root package name */
    private long f2045a;

    /* renamed from: b  reason: collision with root package name */
    private final Rect f2046b;

    /* renamed from: c  reason: collision with root package name */
    private OverScroller f2047c;

    /* renamed from: d  reason: collision with root package name */
    private EdgeEffect f2048d;
    private EdgeEffect e;
    private int f;
    private boolean g;
    private boolean h;
    private View i;
    private boolean j;
    private VelocityTracker k;
    private boolean l;
    private boolean m;
    private int n;
    private int o;
    private int p;
    private int q;
    private final int[] r;
    private final int[] s;
    private int t;
    private int u;
    private SavedState v;
    private final q y;
    private final m z;

    /* loaded from: classes-dex2jar.jar:androidx/core/widget/NestedScrollView$SavedState.class */
    static class SavedState extends View.BaseSavedState {
        public static final Parcelable.Creator<SavedState> CREATOR = new Parcelable.Creator<SavedState>() { // from class: androidx.core.widget.NestedScrollView.SavedState.1
            @Override // android.os.Parcelable.Creator
            public final /* synthetic */ SavedState createFromParcel(Parcel parcel) {
                return new SavedState(parcel);
            }

            @Override // android.os.Parcelable.Creator
            public final /* bridge */ /* synthetic */ SavedState[] newArray(int i) {
                return new SavedState[i];
            }
        };
        public int scrollPosition;

        SavedState(Parcel parcel) {
            super(parcel);
            this.scrollPosition = parcel.readInt();
        }

        SavedState(Parcelable parcelable) {
            super(parcelable);
        }

        public String toString() {
            return "HorizontalScrollView.SavedState{" + Integer.toHexString(System.identityHashCode(this)) + " scrollPosition=" + this.scrollPosition + "}";
        }

        @Override // android.view.View.BaseSavedState, android.view.AbsSavedState, android.os.Parcelable
        public void writeToParcel(Parcel parcel, int i) {
            super.writeToParcel(parcel, i);
            parcel.writeInt(this.scrollPosition);
        }
    }

    /* loaded from: classes-dex2jar.jar:androidx/core/widget/NestedScrollView$a.class */
    static final class a extends androidx.core.view.a {
        a() {
        }

        @Override // androidx.core.view.a
        public final void a(View view, c cVar) {
            int a2;
            super.a(view, cVar);
            NestedScrollView nestedScrollView = (NestedScrollView) view;
            cVar.b((CharSequence) ScrollView.class.getName());
            if (nestedScrollView.isEnabled() && (a2 = nestedScrollView.a()) > 0) {
                cVar.j(true);
                if (nestedScrollView.getScrollY() > 0) {
                    cVar.a(c.a.n);
                    cVar.a(c.a.y);
                }
                if (nestedScrollView.getScrollY() < a2) {
                    cVar.a(c.a.m);
                    cVar.a(c.a.A);
                }
            }
        }

        @Override // androidx.core.view.a
        public final boolean a(View view, int i, Bundle bundle) {
            if (super.a(view, i, bundle)) {
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
                    nestedScrollView.b(max);
                    return true;
                } else if (i != 16908346) {
                    return false;
                }
            }
            int height2 = nestedScrollView.getHeight();
            int paddingBottom2 = nestedScrollView.getPaddingBottom();
            int min = Math.min(nestedScrollView.getScrollY() + ((height2 - paddingBottom2) - nestedScrollView.getPaddingTop()), nestedScrollView.a());
            if (min == nestedScrollView.getScrollY()) {
                return false;
            }
            nestedScrollView.b(min);
            return true;
        }

        @Override // androidx.core.view.a
        public final void d(View view, AccessibilityEvent accessibilityEvent) {
            super.d(view, accessibilityEvent);
            NestedScrollView nestedScrollView = (NestedScrollView) view;
            accessibilityEvent.setClassName(ScrollView.class.getName());
            accessibilityEvent.setScrollable(nestedScrollView.a() > 0);
            accessibilityEvent.setScrollX(nestedScrollView.getScrollX());
            accessibilityEvent.setScrollY(nestedScrollView.getScrollY());
            int scrollX = nestedScrollView.getScrollX();
            if (Build.VERSION.SDK_INT >= 15) {
                accessibilityEvent.setMaxScrollX(scrollX);
            }
            int a2 = nestedScrollView.a();
            if (Build.VERSION.SDK_INT >= 15) {
                accessibilityEvent.setMaxScrollY(a2);
            }
        }
    }

    /* loaded from: classes-dex2jar.jar:androidx/core/widget/NestedScrollView$b.class */
    public interface b {
        void a(NestedScrollView nestedScrollView);
    }

    public NestedScrollView(Context context) {
        this(context, null);
    }

    public NestedScrollView(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    public NestedScrollView(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        this.f2046b = new Rect();
        this.g = true;
        this.h = false;
        this.i = null;
        this.j = false;
        this.m = true;
        this.q = -1;
        this.r = new int[2];
        this.s = new int[2];
        this.f2047c = new OverScroller(getContext());
        setFocusable(true);
        setDescendantFocusability(262144);
        setWillNotDraw(false);
        ViewConfiguration viewConfiguration = ViewConfiguration.get(getContext());
        this.n = viewConfiguration.getScaledTouchSlop();
        this.o = viewConfiguration.getScaledMinimumFlingVelocity();
        this.p = viewConfiguration.getScaledMaximumFlingVelocity();
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, x, i, 0);
        setFillViewport(obtainStyledAttributes.getBoolean(0, false));
        obtainStyledAttributes.recycle();
        this.y = new q(this);
        this.z = new m(this);
        setNestedScrollingEnabled(true);
        v.a(this, w);
    }

    private int a(Rect rect) {
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

    private View a(boolean z, int i, int i2) {
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

    private void a(int i, int i2, int i3, boolean z) {
        if (getChildCount() != 0) {
            if (AnimationUtils.currentAnimationTimeMillis() - this.f2045a > 250) {
                View childAt = getChildAt(0);
                FrameLayout.LayoutParams layoutParams = (FrameLayout.LayoutParams) childAt.getLayoutParams();
                int height = childAt.getHeight();
                int i4 = layoutParams.topMargin;
                int i5 = layoutParams.bottomMargin;
                int height2 = getHeight();
                int paddingTop = getPaddingTop();
                int paddingBottom = getPaddingBottom();
                int scrollY = getScrollY();
                this.f2047c.startScroll(getScrollX(), scrollY, 0, Math.max(0, Math.min(i2 + scrollY, Math.max(0, ((height + i4) + i5) - ((height2 - paddingTop) - paddingBottom)))) - scrollY, 250);
                a(z);
            } else {
                if (!this.f2047c.isFinished()) {
                    f();
                }
                scrollBy(i, i2);
            }
            this.f2045a = AnimationUtils.currentAnimationTimeMillis();
        }
    }

    private void a(int i, int i2, int[] iArr) {
        int scrollY = getScrollY();
        scrollBy(0, i);
        int scrollY2 = getScrollY() - scrollY;
        if (iArr != null) {
            iArr[1] = iArr[1] + scrollY2;
        }
        this.z.a(0, scrollY2, 0, i - scrollY2, null, i2, iArr);
    }

    private void a(int i, int i2, int[] iArr, int i3, int[] iArr2) {
        this.z.a(0, i, 0, i2, iArr, i3, iArr2);
    }

    private void a(MotionEvent motionEvent) {
        int actionIndex = motionEvent.getActionIndex();
        if (motionEvent.getPointerId(actionIndex) == this.q) {
            int i = actionIndex == 0 ? 1 : 0;
            this.f = (int) motionEvent.getY(i);
            this.q = motionEvent.getPointerId(i);
            VelocityTracker velocityTracker = this.k;
            if (velocityTracker != null) {
                velocityTracker.clear();
            }
        }
    }

    private void a(boolean z) {
        if (z) {
            a(2, 1);
        } else {
            a(1);
        }
        this.u = getScrollY();
        v.d(this);
    }

    private boolean a(int i, int i2) {
        return this.z.a(i, i2);
    }

    private boolean a(int i, int i2, int i3) {
        int height = getHeight();
        int scrollY = getScrollY();
        int i4 = height + scrollY;
        boolean z = false;
        boolean z2 = i == 33;
        View a2 = a(z2, i2, i3);
        View view = a2;
        if (a2 == null) {
            view = this;
        }
        if (i2 < scrollY || i3 > i4) {
            g(z2 ? i2 - scrollY : i3 - i4);
            z = true;
        }
        if (view != findFocus()) {
            view.requestFocus(i);
        }
        return z;
    }

    private boolean a(int i, int i2, int i3, int i4) {
        boolean z;
        boolean z2;
        getOverScrollMode();
        computeHorizontalScrollRange();
        computeHorizontalScrollExtent();
        computeVerticalScrollRange();
        computeVerticalScrollExtent();
        int i5 = i2 + 0;
        int i6 = i3 + i;
        int i7 = i4 + 0;
        if (i5 <= 0 && i5 >= 0) {
            z = false;
        } else {
            i5 = 0;
            z = true;
        }
        if (i6 > i7) {
            i6 = i7;
        } else if (i6 < 0) {
            i6 = 0;
        } else {
            z2 = false;
            if (z2 && !c(1)) {
                this.f2047c.springBack(i5, i6, 0, 0, 0, a());
            }
            onOverScrolled(i5, i6, z, z2);
            return z || z2;
        }
        z2 = true;
        if (z2) {
            this.f2047c.springBack(i5, i6, 0, 0, 0, a());
        }
        onOverScrolled(i5, i6, z, z2);
        if (z) {
            return true;
        }
    }

    private boolean a(int i, int i2, int[] iArr, int[] iArr2, int i3) {
        return this.z.a(i, i2, iArr, iArr2, i3);
    }

    private boolean a(View view) {
        return !a(view, 0, getHeight());
    }

    private boolean a(View view, int i, int i2) {
        view.getDrawingRect(this.f2046b);
        offsetDescendantRectToMyCoords(view, this.f2046b);
        return this.f2046b.bottom + i >= getScrollY() && this.f2046b.top - i <= getScrollY() + i2;
    }

    private static boolean a(View view, View view2) {
        if (view == view2) {
            return true;
        }
        ViewParent parent = view.getParent();
        return (parent instanceof ViewGroup) && a((View) parent, view2);
    }

    private int b() {
        return (int) (getHeight() * 0.5f);
    }

    private static int b(int i, int i2, int i3) {
        if (i2 >= i3 || i < 0) {
            return 0;
        }
        return i2 + i > i3 ? i3 - i2 : i;
    }

    private void b(View view) {
        view.getDrawingRect(this.f2046b);
        offsetDescendantRectToMyCoords(view, this.f2046b);
        int a2 = a(this.f2046b);
        if (a2 != 0) {
            scrollBy(0, a2);
        }
    }

    private boolean c() {
        if (getChildCount() <= 0) {
            return false;
        }
        View childAt = getChildAt(0);
        FrameLayout.LayoutParams layoutParams = (FrameLayout.LayoutParams) childAt.getLayoutParams();
        return (childAt.getHeight() + layoutParams.topMargin) + layoutParams.bottomMargin > (getHeight() - getPaddingTop()) - getPaddingBottom();
    }

    private boolean c(int i) {
        return this.z.a(i);
    }

    private void d() {
        if (this.k == null) {
            this.k = VelocityTracker.obtain();
        }
    }

    private boolean d(int i) {
        boolean z = i == 130;
        int height = getHeight();
        if (z) {
            this.f2046b.top = getScrollY() + height;
            int childCount = getChildCount();
            if (childCount > 0) {
                View childAt = getChildAt(childCount - 1);
                int bottom = childAt.getBottom() + ((FrameLayout.LayoutParams) childAt.getLayoutParams()).bottomMargin + getPaddingBottom();
                if (this.f2046b.top + height > bottom) {
                    this.f2046b.top = bottom - height;
                }
            }
        } else {
            this.f2046b.top = getScrollY() - height;
            if (this.f2046b.top < 0) {
                this.f2046b.top = 0;
            }
        }
        Rect rect = this.f2046b;
        rect.bottom = rect.top + height;
        return a(i, this.f2046b.top, this.f2046b.bottom);
    }

    private void e() {
        VelocityTracker velocityTracker = this.k;
        if (velocityTracker != null) {
            velocityTracker.recycle();
            this.k = null;
        }
    }

    private boolean e(int i) {
        int childCount;
        boolean z = i == 130;
        int height = getHeight();
        this.f2046b.top = 0;
        this.f2046b.bottom = height;
        if (z && (childCount = getChildCount()) > 0) {
            View childAt = getChildAt(childCount - 1);
            this.f2046b.bottom = childAt.getBottom() + ((FrameLayout.LayoutParams) childAt.getLayoutParams()).bottomMargin + getPaddingBottom();
            Rect rect = this.f2046b;
            rect.top = rect.bottom - height;
        }
        return a(i, this.f2046b.top, this.f2046b.bottom);
    }

    private void f() {
        this.f2047c.abortAnimation();
        a(1);
    }

    private boolean f(int i) {
        int i2;
        View findFocus = findFocus();
        View view = findFocus;
        if (findFocus == this) {
            view = null;
        }
        View findNextFocus = FocusFinder.getInstance().findNextFocus(this, view, i);
        int b2 = b();
        if (findNextFocus == null || !a(findNextFocus, b2, getHeight())) {
            if (i != 33 || getScrollY() >= b2) {
                i2 = b2;
                if (i == 130) {
                    i2 = b2;
                    if (getChildCount() > 0) {
                        View childAt = getChildAt(0);
                        i2 = Math.min((childAt.getBottom() + ((FrameLayout.LayoutParams) childAt.getLayoutParams()).bottomMargin) - ((getScrollY() + getHeight()) - getPaddingBottom()), b2);
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
            g(i2);
        } else {
            findNextFocus.getDrawingRect(this.f2046b);
            offsetDescendantRectToMyCoords(findNextFocus, this.f2046b);
            g(a(this.f2046b));
            findNextFocus.requestFocus(i);
        }
        if (view == null || !view.isFocused() || !a(view)) {
            return true;
        }
        int descendantFocusability = getDescendantFocusability();
        setDescendantFocusability(131072);
        requestFocus();
        setDescendantFocusability(descendantFocusability);
        return true;
    }

    private void g() {
        this.j = false;
        e();
        a(0);
        EdgeEffect edgeEffect = this.f2048d;
        if (edgeEffect != null) {
            edgeEffect.onRelease();
            this.e.onRelease();
        }
    }

    private void g(int i) {
        if (i == 0) {
            return;
        }
        if (this.m) {
            h(i);
        } else {
            scrollBy(0, i);
        }
    }

    private void h() {
        if (getOverScrollMode() == 2) {
            this.f2048d = null;
            this.e = null;
        } else if (this.f2048d == null) {
            Context context = getContext();
            this.f2048d = new EdgeEffect(context);
            this.e = new EdgeEffect(context);
        }
    }

    private void h(int i) {
        a(0, i, 250, false);
    }

    private void i(int i) {
        if (getChildCount() > 0) {
            this.f2047c.fling(getScrollX(), getScrollY(), 0, i, 0, 0, BaseViewTypeData.VIEW_TYPE_EMPTY_VIEW, Integer.MAX_VALUE, 0, 0);
            a(true);
        }
    }

    final int a() {
        int i = 0;
        if (getChildCount() > 0) {
            View childAt = getChildAt(0);
            FrameLayout.LayoutParams layoutParams = (FrameLayout.LayoutParams) childAt.getLayoutParams();
            i = Math.max(0, ((childAt.getHeight() + layoutParams.topMargin) + layoutParams.bottomMargin) - ((getHeight() - getPaddingTop()) - getPaddingBottom()));
        }
        return i;
    }

    @Override // androidx.core.view.k
    public final void a(int i) {
        this.z.b(i);
    }

    @Override // androidx.core.view.o
    public final void a(View view, int i) {
        this.y.a(i);
        a(i);
    }

    @Override // androidx.core.view.o
    public final void a(View view, int i, int i2, int i3, int i4, int i5) {
        a(i4, i5, (int[]) null);
    }

    @Override // androidx.core.view.p
    public final void a(View view, int i, int i2, int i3, int i4, int i5, int[] iArr) {
        a(i4, i5, iArr);
    }

    @Override // androidx.core.view.o
    public final void a(View view, int i, int i2, int[] iArr, int i3) {
        a(i, i2, iArr, (int[]) null, i3);
    }

    public final boolean a(KeyEvent keyEvent) {
        this.f2046b.setEmpty();
        int i = 130;
        if (c()) {
            boolean z = false;
            if (keyEvent.getAction() == 0) {
                int keyCode = keyEvent.getKeyCode();
                if (keyCode == 19) {
                    z = !keyEvent.isAltPressed() ? f(33) : e(33);
                } else if (keyCode == 20) {
                    z = !keyEvent.isAltPressed() ? f(130) : e(130);
                } else if (keyCode != 62) {
                    z = false;
                } else {
                    if (keyEvent.isShiftPressed()) {
                        i = 33;
                    }
                    d(i);
                    z = false;
                }
            }
            return z;
        } else if (!isFocused() || keyEvent.getKeyCode() == 4) {
            return false;
        } else {
            View findFocus = findFocus();
            View view = findFocus;
            if (findFocus == this) {
                view = null;
            }
            View findNextFocus = FocusFinder.getInstance().findNextFocus(this, view, 130);
            return (findNextFocus == null || findNextFocus == this || !findNextFocus.requestFocus(130)) ? false : true;
        }
    }

    @Override // androidx.core.view.o
    public final boolean a(View view, View view2, int i, int i2) {
        return (i & 2) != 0;
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

    final void b(int i) {
        a(0 - getScrollX(), i - getScrollY(), 250, true);
    }

    @Override // androidx.core.view.o
    public final void b(View view, View view2, int i, int i2) {
        this.y.a(i, i2);
        a(2, i2);
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

    /* JADX WARN: Code restructure failed: missing block: B:15:0x00aa, code lost:
        if (r0 > 0) goto L_0x00ad;
     */
    /* JADX WARN: Removed duplicated region for block: B:19:0x00b3  */
    @Override // android.view.View
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void computeScroll() {
        /*
            Method dump skipped, instructions count: 265
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
        return super.dispatchKeyEvent(keyEvent) || a(keyEvent);
    }

    @Override // android.view.View
    public boolean dispatchNestedFling(float f, float f2, boolean z) {
        return this.z.a(f, f2, z);
    }

    @Override // android.view.View
    public boolean dispatchNestedPreFling(float f, float f2) {
        return this.z.a(f, f2);
    }

    @Override // android.view.View
    public boolean dispatchNestedPreScroll(int i, int i2, int[] iArr, int[] iArr2) {
        return a(i, i2, iArr, iArr2, 0);
    }

    @Override // android.view.View
    public boolean dispatchNestedScroll(int i, int i2, int i3, int i4, int[] iArr) {
        return this.z.a(i, i2, i3, i4, iArr);
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

    @Override // android.view.View
    protected float getBottomFadingEdgeStrength() {
        if (getChildCount() == 0) {
            return BitmapDescriptorFactory.HUE_RED;
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

    @Override // android.view.ViewGroup
    public int getNestedScrollAxes() {
        return this.y.a();
    }

    @Override // android.view.View
    protected float getTopFadingEdgeStrength() {
        if (getChildCount() == 0) {
            return BitmapDescriptorFactory.HUE_RED;
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
        return c(0);
    }

    @Override // android.view.View, androidx.core.view.j
    public boolean isNestedScrollingEnabled() {
        return this.z.f2004a;
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
        this.h = false;
    }

    @Override // android.view.View
    public boolean onGenericMotionEvent(MotionEvent motionEvent) {
        if ((motionEvent.getSource() & 2) == 0 || motionEvent.getAction() != 8 || this.j) {
            return false;
        }
        float axisValue = motionEvent.getAxisValue(9);
        if (axisValue == BitmapDescriptorFactory.HUE_RED) {
            return false;
        }
        if (this.A == BitmapDescriptorFactory.HUE_RED) {
            TypedValue typedValue = new TypedValue();
            Context context = getContext();
            if (context.getTheme().resolveAttribute(16842829, typedValue, true)) {
                this.A = typedValue.getDimension(context.getResources().getDisplayMetrics());
            } else {
                throw new IllegalStateException("Expected theme to define listPreferredItemHeight.");
            }
        }
        int i = (int) (axisValue * this.A);
        int a2 = a();
        int scrollY = getScrollY();
        int i2 = scrollY - i;
        if (i2 < 0) {
            a2 = 0;
        } else if (i2 <= a2) {
            a2 = i2;
        }
        if (a2 == scrollY) {
            return false;
        }
        super.scrollTo(getScrollX(), a2);
        return true;
    }

    /* JADX WARN: Removed duplicated region for block: B:48:0x014f  */
    /* JADX WARN: Removed duplicated region for block: B:49:0x015b  */
    @Override // android.view.ViewGroup
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public boolean onInterceptTouchEvent(android.view.MotionEvent r9) {
        /*
            Method dump skipped, instructions count: 428
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.core.widget.NestedScrollView.onInterceptTouchEvent(android.view.MotionEvent):boolean");
    }

    @Override // android.widget.FrameLayout, android.view.ViewGroup, android.view.View
    protected void onLayout(boolean z, int i, int i2, int i3, int i4) {
        super.onLayout(z, i, i2, i3, i4);
        int i5 = 0;
        this.g = false;
        View view = this.i;
        if (view != null && a(view, this)) {
            b(this.i);
        }
        this.i = null;
        if (!this.h) {
            if (this.v != null) {
                scrollTo(getScrollX(), this.v.scrollPosition);
                this.v = null;
            }
            if (getChildCount() > 0) {
                View childAt = getChildAt(0);
                FrameLayout.LayoutParams layoutParams = (FrameLayout.LayoutParams) childAt.getLayoutParams();
                i5 = childAt.getMeasuredHeight() + layoutParams.topMargin + layoutParams.bottomMargin;
            }
            int paddingTop = getPaddingTop();
            int paddingBottom = getPaddingBottom();
            int scrollY = getScrollY();
            int b2 = b(scrollY, ((i4 - i2) - paddingTop) - paddingBottom, i5);
            if (b2 != scrollY) {
                scrollTo(getScrollX(), b2);
            }
        }
        scrollTo(getScrollX(), getScrollY());
        this.h = true;
    }

    @Override // android.widget.FrameLayout, android.view.View
    protected void onMeasure(int i, int i2) {
        super.onMeasure(i, i2);
        if (this.l && View.MeasureSpec.getMode(i2) != 0 && getChildCount() > 0) {
            View childAt = getChildAt(0);
            FrameLayout.LayoutParams layoutParams = (FrameLayout.LayoutParams) childAt.getLayoutParams();
            int measuredHeight = childAt.getMeasuredHeight();
            int measuredHeight2 = (((getMeasuredHeight() - getPaddingTop()) - getPaddingBottom()) - layoutParams.topMargin) - layoutParams.bottomMargin;
            if (measuredHeight < measuredHeight2) {
                childAt.measure(getChildMeasureSpec(i, getPaddingLeft() + getPaddingRight() + layoutParams.leftMargin + layoutParams.rightMargin, layoutParams.width), View.MeasureSpec.makeMeasureSpec(measuredHeight2, 1073741824));
            }
        }
    }

    @Override // android.view.ViewGroup, android.view.ViewParent, androidx.core.view.n
    public boolean onNestedFling(View view, float f, float f2, boolean z) {
        if (z) {
            return false;
        }
        dispatchNestedFling(BitmapDescriptorFactory.HUE_RED, f2, true);
        i((int) f2);
        return true;
    }

    @Override // android.view.ViewGroup, android.view.ViewParent, androidx.core.view.n
    public boolean onNestedPreFling(View view, float f, float f2) {
        return dispatchNestedPreFling(f, f2);
    }

    @Override // android.view.ViewGroup, android.view.ViewParent, androidx.core.view.n
    public void onNestedPreScroll(View view, int i, int i2, int[] iArr) {
        a(view, i, i2, iArr, 0);
    }

    @Override // android.view.ViewGroup, android.view.ViewParent, androidx.core.view.n
    public void onNestedScroll(View view, int i, int i2, int i3, int i4) {
        a(i4, 0, (int[]) null);
    }

    @Override // android.view.ViewGroup, android.view.ViewParent, androidx.core.view.n
    public void onNestedScrollAccepted(View view, View view2, int i) {
        b(view, view2, i, 0);
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
        if (findNextFocus != null && !a(findNextFocus)) {
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
        this.v = savedState;
        requestLayout();
    }

    @Override // android.view.View
    protected Parcelable onSaveInstanceState() {
        SavedState savedState = new SavedState(super.onSaveInstanceState());
        savedState.scrollPosition = getScrollY();
        return savedState;
    }

    @Override // android.view.View
    protected void onScrollChanged(int i, int i2, int i3, int i4) {
        super.onScrollChanged(i, i2, i3, i4);
        b bVar = this.B;
        if (bVar != null) {
            bVar.a(this);
        }
    }

    @Override // android.view.View
    protected void onSizeChanged(int i, int i2, int i3, int i4) {
        super.onSizeChanged(i, i2, i3, i4);
        View findFocus = findFocus();
        if (findFocus != null && this != findFocus && a(findFocus, 0, i4)) {
            findFocus.getDrawingRect(this.f2046b);
            offsetDescendantRectToMyCoords(findFocus, this.f2046b);
            g(a(this.f2046b));
        }
    }

    @Override // android.view.ViewGroup, android.view.ViewParent, androidx.core.view.n
    public boolean onStartNestedScroll(View view, View view2, int i) {
        return a(view, view2, i, 0);
    }

    @Override // android.view.ViewGroup, android.view.ViewParent, androidx.core.view.n
    public void onStopNestedScroll(View view) {
        a(view, 0);
    }

    @Override // android.view.View
    public boolean onTouchEvent(MotionEvent motionEvent) {
        ViewParent parent;
        d();
        int actionMasked = motionEvent.getActionMasked();
        if (actionMasked == 0) {
            this.t = 0;
        }
        MotionEvent obtain = MotionEvent.obtain(motionEvent);
        obtain.offsetLocation(BitmapDescriptorFactory.HUE_RED, this.t);
        if (actionMasked != 0) {
            if (actionMasked == 1) {
                VelocityTracker velocityTracker = this.k;
                velocityTracker.computeCurrentVelocity(1000, this.p);
                int yVelocity = (int) velocityTracker.getYVelocity(this.q);
                if (Math.abs(yVelocity) >= this.o) {
                    int i = -yVelocity;
                    float f = i;
                    if (!dispatchNestedPreFling(BitmapDescriptorFactory.HUE_RED, f)) {
                        dispatchNestedFling(BitmapDescriptorFactory.HUE_RED, f, true);
                        i(i);
                    }
                } else if (this.f2047c.springBack(getScrollX(), getScrollY(), 0, 0, 0, a())) {
                    v.d(this);
                }
                this.q = -1;
                g();
            } else if (actionMasked == 2) {
                int findPointerIndex = motionEvent.findPointerIndex(this.q);
                if (findPointerIndex == -1) {
                    Log.e("NestedScrollView", "Invalid pointerId=" + this.q + " in onTouchEvent");
                } else {
                    int y = (int) motionEvent.getY(findPointerIndex);
                    int i2 = this.f - y;
                    int i3 = i2;
                    if (!this.j) {
                        i3 = i2;
                        if (Math.abs(i2) > this.n) {
                            ViewParent parent2 = getParent();
                            if (parent2 != null) {
                                parent2.requestDisallowInterceptTouchEvent(true);
                            }
                            this.j = true;
                            i3 = i2 > 0 ? i2 - this.n : i2 + this.n;
                        }
                    }
                    if (this.j) {
                        int i4 = i3;
                        if (a(0, i3, this.s, this.r, 0)) {
                            i4 = i3 - this.s[1];
                            this.t += this.r[1];
                        }
                        this.f = y - this.r[1];
                        int scrollY = getScrollY();
                        int a2 = a();
                        int overScrollMode = getOverScrollMode();
                        boolean z = overScrollMode == 0 || (overScrollMode == 1 && a2 > 0);
                        if (a(i4, 0, getScrollY(), a2) && !c(0)) {
                            this.k.clear();
                        }
                        int scrollY2 = getScrollY() - scrollY;
                        int[] iArr = this.s;
                        iArr[1] = 0;
                        a(scrollY2, i4 - scrollY2, this.r, 0, iArr);
                        int i5 = this.f;
                        int[] iArr2 = this.r;
                        this.f = i5 - iArr2[1];
                        this.t += iArr2[1];
                        if (z) {
                            int i6 = i4 - this.s[1];
                            h();
                            int i7 = scrollY + i6;
                            if (i7 < 0) {
                                d.a(this.f2048d, i6 / getHeight(), motionEvent.getX(findPointerIndex) / getWidth());
                                if (!this.e.isFinished()) {
                                    this.e.onRelease();
                                }
                            } else if (i7 > a2) {
                                d.a(this.e, i6 / getHeight(), 1.0f - (motionEvent.getX(findPointerIndex) / getWidth()));
                                if (!this.f2048d.isFinished()) {
                                    this.f2048d.onRelease();
                                }
                            }
                            EdgeEffect edgeEffect = this.f2048d;
                            if (edgeEffect != null && (!edgeEffect.isFinished() || !this.e.isFinished())) {
                                v.d(this);
                            }
                        }
                    }
                }
            } else if (actionMasked == 3) {
                if (this.j && getChildCount() > 0 && this.f2047c.springBack(getScrollX(), getScrollY(), 0, 0, 0, a())) {
                    v.d(this);
                }
                this.q = -1;
                g();
            } else if (actionMasked == 5) {
                int actionIndex = motionEvent.getActionIndex();
                this.f = (int) motionEvent.getY(actionIndex);
                this.q = motionEvent.getPointerId(actionIndex);
            } else if (actionMasked == 6) {
                a(motionEvent);
                this.f = (int) motionEvent.getY(motionEvent.findPointerIndex(this.q));
            }
        } else if (getChildCount() == 0) {
            return false;
        } else {
            boolean z2 = !this.f2047c.isFinished();
            this.j = z2;
            if (z2 && (parent = getParent()) != null) {
                parent.requestDisallowInterceptTouchEvent(true);
            }
            if (!this.f2047c.isFinished()) {
                f();
            }
            this.f = (int) motionEvent.getY();
            this.q = motionEvent.getPointerId(0);
            a(2, 0);
        }
        VelocityTracker velocityTracker2 = this.k;
        if (velocityTracker2 != null) {
            velocityTracker2.addMovement(obtain);
        }
        obtain.recycle();
        return true;
    }

    @Override // android.view.ViewGroup, android.view.ViewParent
    public void requestChildFocus(View view, View view2) {
        if (!this.g) {
            b(view2);
        } else {
            this.i = view2;
        }
        super.requestChildFocus(view, view2);
    }

    @Override // android.view.ViewGroup, android.view.ViewParent
    public boolean requestChildRectangleOnScreen(View view, Rect rect, boolean z) {
        rect.offset(view.getLeft() - view.getScrollX(), view.getTop() - view.getScrollY());
        int a2 = a(rect);
        boolean z2 = a2 != 0;
        if (z2) {
            if (z) {
                scrollBy(0, a2);
            } else {
                h(a2);
            }
        }
        return z2;
    }

    @Override // android.view.ViewGroup, android.view.ViewParent
    public void requestDisallowInterceptTouchEvent(boolean z) {
        if (z) {
            e();
        }
        super.requestDisallowInterceptTouchEvent(z);
    }

    @Override // android.view.View, android.view.ViewParent
    public void requestLayout() {
        this.g = true;
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
            int b2 = b(i, (width - paddingLeft) - paddingRight, width2 + i3 + i4);
            int b3 = b(i2, (height - paddingTop) - paddingBottom, height2 + i5 + i6);
            if (b2 != getScrollX() || b3 != getScrollY()) {
                super.scrollTo(b2, b3);
            }
        }
    }

    public void setFillViewport(boolean z) {
        if (z != this.l) {
            this.l = z;
            requestLayout();
        }
    }

    @Override // android.view.View
    public void setNestedScrollingEnabled(boolean z) {
        this.z.a(z);
    }

    public void setOnScrollChangeListener(b bVar) {
        this.B = bVar;
    }

    public void setSmoothScrollingEnabled(boolean z) {
        this.m = z;
    }

    @Override // android.widget.FrameLayout, android.view.ViewGroup
    public boolean shouldDelayChildPressedState() {
        return true;
    }

    @Override // android.view.View
    public boolean startNestedScroll(int i) {
        return a(i, 0);
    }

    @Override // android.view.View, androidx.core.view.j
    public void stopNestedScroll() {
        a(0);
    }
}

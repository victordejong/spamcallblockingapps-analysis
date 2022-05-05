package android.support.v4.widget;

import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.Canvas;
import android.graphics.Rect;
import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable;
import android.support.v4.view.a.f;
import android.support.v4.view.j;
import android.support.v4.view.k;
import android.support.v4.view.l;
import android.support.v4.view.m;
import android.support.v4.view.n;
import android.support.v4.view.r;
import android.support.v4.view.t;
import android.util.AttributeSet;
import android.util.Log;
import android.util.TypedValue;
import android.view.FocusFinder;
import android.view.MotionEvent;
import android.view.VelocityTracker;
import android.view.View;
import android.view.ViewConfiguration;
import android.view.ViewGroup;
import android.view.ViewParent;
import android.view.accessibility.AccessibilityEvent;
import android.view.animation.AnimationUtils;
import android.widget.FrameLayout;
import android.widget.ScrollView;
import java.util.ArrayList;
/* loaded from: classes-dex2jar.jar:android/support/v4/widget/NestedScrollView.class */
public class NestedScrollView extends FrameLayout implements k, m, r {
    private static final a v = new a();
    private static final int[] w = {16843130};
    private b A;

    /* renamed from: a  reason: collision with root package name */
    private long f264a;

    /* renamed from: b  reason: collision with root package name */
    private final Rect f265b;
    private g c;
    private d d;
    private d e;
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
    private SavedState u;
    private final n x;
    private final l y;
    private float z;

    /* loaded from: classes-dex2jar.jar:android/support/v4/widget/NestedScrollView$SavedState.class */
    static class SavedState extends View.BaseSavedState {
        public static final Parcelable.Creator<SavedState> CREATOR = new Parcelable.Creator<SavedState>() { // from class: android.support.v4.widget.NestedScrollView.SavedState.1
            @Override // android.os.Parcelable.Creator
            public final /* synthetic */ SavedState createFromParcel(Parcel parcel) {
                return new SavedState(parcel);
            }

            @Override // android.os.Parcelable.Creator
            public final /* bridge */ /* synthetic */ SavedState[] newArray(int i) {
                return new SavedState[i];
            }
        };

        /* renamed from: a  reason: collision with root package name */
        public int f266a;

        public SavedState(Parcel parcel) {
            super(parcel);
            this.f266a = parcel.readInt();
        }

        SavedState(Parcelable parcelable) {
            super(parcelable);
        }

        public String toString() {
            return "HorizontalScrollView.SavedState{" + Integer.toHexString(System.identityHashCode(this)) + " scrollPosition=" + this.f266a + "}";
        }

        @Override // android.view.View.BaseSavedState, android.view.AbsSavedState, android.os.Parcelable
        public void writeToParcel(Parcel parcel, int i) {
            super.writeToParcel(parcel, i);
            parcel.writeInt(this.f266a);
        }
    }

    /* loaded from: classes-dex2jar.jar:android/support/v4/widget/NestedScrollView$a.class */
    static final class a extends android.support.v4.view.a {
        a() {
        }

        @Override // android.support.v4.view.a
        public final void a(View view, android.support.v4.view.a.b bVar) {
            int c;
            super.a(view, bVar);
            NestedScrollView nestedScrollView = (NestedScrollView) view;
            bVar.b(ScrollView.class.getName());
            if (nestedScrollView.isEnabled() && (c = nestedScrollView.c()) > 0) {
                bVar.i(true);
                if (nestedScrollView.getScrollY() > 0) {
                    bVar.a(8192);
                }
                if (nestedScrollView.getScrollY() < c) {
                    bVar.a(4096);
                }
            }
        }

        @Override // android.support.v4.view.a
        public final boolean a(View view, int i, Bundle bundle) {
            boolean z = true;
            if (!super.a(view, i, bundle)) {
                NestedScrollView nestedScrollView = (NestedScrollView) view;
                if (nestedScrollView.isEnabled()) {
                    switch (i) {
                        case 4096:
                            int min = Math.min(((nestedScrollView.getHeight() - nestedScrollView.getPaddingBottom()) - nestedScrollView.getPaddingTop()) + nestedScrollView.getScrollY(), nestedScrollView.c());
                            if (min == nestedScrollView.getScrollY()) {
                                z = false;
                                break;
                            } else {
                                nestedScrollView.a(min);
                                break;
                            }
                        case 8192:
                            int height = nestedScrollView.getHeight();
                            int paddingBottom = nestedScrollView.getPaddingBottom();
                            int max = Math.max(nestedScrollView.getScrollY() - ((height - paddingBottom) - nestedScrollView.getPaddingTop()), 0);
                            if (max == nestedScrollView.getScrollY()) {
                                z = false;
                                break;
                            } else {
                                nestedScrollView.a(max);
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

        @Override // android.support.v4.view.a
        public final void d(View view, AccessibilityEvent accessibilityEvent) {
            super.d(view, accessibilityEvent);
            NestedScrollView nestedScrollView = (NestedScrollView) view;
            accessibilityEvent.setClassName(ScrollView.class.getName());
            f a2 = android.support.v4.view.a.a.a(accessibilityEvent);
            a2.a(nestedScrollView.c() > 0);
            f.f219a.c(a2.f220b, nestedScrollView.getScrollX());
            f.f219a.d(a2.f220b, nestedScrollView.getScrollY());
            f.f219a.f(a2.f220b, nestedScrollView.getScrollX());
            f.f219a.g(a2.f220b, nestedScrollView.c());
        }
    }

    /* loaded from: classes-dex2jar.jar:android/support/v4/widget/NestedScrollView$b.class */
    public interface b {
    }

    public NestedScrollView(Context context) {
        this(context, null);
    }

    public NestedScrollView(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    public NestedScrollView(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        this.f265b = new Rect();
        this.g = true;
        this.h = false;
        this.i = null;
        this.j = false;
        this.m = true;
        this.q = -1;
        this.r = new int[2];
        this.s = new int[2];
        this.c = g.a(getContext(), null);
        setFocusable(true);
        setDescendantFocusability(262144);
        setWillNotDraw(false);
        ViewConfiguration viewConfiguration = ViewConfiguration.get(getContext());
        this.n = viewConfiguration.getScaledTouchSlop();
        this.o = viewConfiguration.getScaledMinimumFlingVelocity();
        this.p = viewConfiguration.getScaledMaximumFlingVelocity();
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, w, i, 0);
        setFillViewport(obtainStyledAttributes.getBoolean(0, false));
        obtainStyledAttributes.recycle();
        this.x = new n(this);
        this.y = new l(this);
        setNestedScrollingEnabled(true);
        t.a(this, v);
    }

    private int a(Rect rect) {
        int i = 0;
        if (getChildCount() != 0) {
            int height = getHeight();
            int scrollY = getScrollY();
            int i2 = scrollY + height;
            int verticalFadingEdgeLength = getVerticalFadingEdgeLength();
            int i3 = scrollY;
            if (rect.top > 0) {
                i3 = scrollY + verticalFadingEdgeLength;
            }
            int i4 = i2;
            if (rect.bottom < getChildAt(0).getHeight()) {
                i4 = i2 - verticalFadingEdgeLength;
            }
            if (rect.bottom > i4 && rect.top > i3) {
                i = Math.min(rect.height() > height ? (rect.top - i3) + 0 : (rect.bottom - i4) + 0, getChildAt(0).getBottom() - i4);
            } else if (rect.top >= i3 || rect.bottom >= i4) {
                i = 0;
            } else {
                i = Math.max(rect.height() > height ? 0 - (i4 - rect.bottom) : 0 - (i3 - rect.top), -getScrollY());
            }
        }
        return i;
    }

    private void a() {
        if (this.k == null) {
            this.k = VelocityTracker.obtain();
        }
    }

    private void a(int i, int i2) {
        if (getChildCount() != 0) {
            if (AnimationUtils.currentAnimationTimeMillis() - this.f264a > 250) {
                int height = getHeight();
                int paddingBottom = getPaddingBottom();
                int max = Math.max(0, getChildAt(0).getHeight() - ((height - paddingBottom) - getPaddingTop()));
                int scrollY = getScrollY();
                int max2 = Math.max(0, Math.min(scrollY + i2, max));
                g gVar = this.c;
                gVar.f306b.a(gVar.f305a, getScrollX(), scrollY, max2 - scrollY);
                t.c(this);
            } else {
                if (!this.c.a()) {
                    this.c.f();
                }
                scrollBy(i, i2);
            }
            this.f264a = AnimationUtils.currentAnimationTimeMillis();
        }
    }

    private void a(MotionEvent motionEvent) {
        int action = (motionEvent.getAction() & 65280) >> 8;
        if (j.b(motionEvent, action) == this.q) {
            int i = action == 0 ? 1 : 0;
            this.f = (int) j.d(motionEvent, i);
            this.q = j.b(motionEvent, i);
            if (this.k != null) {
                this.k.clear();
            }
        }
    }

    private boolean a(int i, int i2, int i3) {
        boolean z;
        int height = getHeight();
        int scrollY = getScrollY();
        int i4 = scrollY + height;
        boolean z2 = i == 33;
        ArrayList focusables = getFocusables(2);
        View view = null;
        boolean z3 = false;
        int size = focusables.size();
        for (int i5 = 0; i5 < size; i5++) {
            View view2 = (View) focusables.get(i5);
            int top = view2.getTop();
            int bottom = view2.getBottom();
            if (i2 < bottom && top < i3) {
                boolean z4 = i2 < top && bottom < i3;
                if (view == null) {
                    z3 = z4;
                    view = view2;
                } else {
                    boolean z5 = (z2 && top < view.getTop()) || (!z2 && bottom > view.getBottom());
                    if (z3) {
                        if (z4 && z5) {
                            view = view2;
                        }
                    } else if (z4) {
                        z3 = true;
                        view = view2;
                    } else if (z5) {
                        view = view2;
                    }
                }
            }
        }
        View view3 = view;
        if (view == null) {
            view3 = this;
        }
        if (i2 < scrollY || i3 > i4) {
            d(z2 ? i2 - scrollY : i3 - i4);
            z = true;
        } else {
            z = false;
        }
        if (view3 != findFocus()) {
            view3.requestFocus(i);
        }
        return z;
    }

    private boolean a(int i, int i2, int i3, int i4, int i5) {
        boolean z;
        boolean z2;
        boolean z3 = false;
        t.b(this);
        computeHorizontalScrollRange();
        computeHorizontalScrollExtent();
        computeVerticalScrollRange();
        computeVerticalScrollExtent();
        int i6 = i3 + i;
        int i7 = i4 + i2;
        int i8 = i5 + 0;
        if (i6 > 0) {
            z = true;
            i6 = 0;
        } else if (i6 < 0) {
            z = true;
            i6 = 0;
        } else {
            z = false;
        }
        if (i7 > i8) {
            z2 = true;
            i7 = i8;
        } else if (i7 < 0) {
            z2 = true;
            i7 = 0;
        } else {
            z2 = false;
        }
        if (z2) {
            this.c.a(i6, i7, c());
        }
        onOverScrolled(i6, i7, z, z2);
        if (z || z2) {
            z3 = true;
        }
        return z3;
    }

    private boolean a(View view) {
        boolean z = false;
        if (!a(view, 0, getHeight())) {
            z = true;
        }
        return z;
    }

    private boolean a(View view, int i, int i2) {
        view.getDrawingRect(this.f265b);
        offsetDescendantRectToMyCoords(view, this.f265b);
        return this.f265b.bottom + i >= getScrollY() && this.f265b.top - i <= getScrollY() + i2;
    }

    private static boolean a(View view, View view2) {
        boolean z;
        if (view == view2) {
            z = true;
        } else {
            ViewParent parent = view.getParent();
            z = (parent instanceof ViewGroup) && a((View) parent, view2);
        }
        return z;
    }

    private static int b(int i, int i2, int i3) {
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

    private void b() {
        if (this.k != null) {
            this.k.recycle();
            this.k = null;
        }
    }

    private void b(View view) {
        view.getDrawingRect(this.f265b);
        offsetDescendantRectToMyCoords(view, this.f265b);
        int a2 = a(this.f265b);
        if (a2 != 0) {
            scrollBy(0, a2);
        }
    }

    private boolean b(int i) {
        int childCount;
        boolean z = i == 130;
        int height = getHeight();
        this.f265b.top = 0;
        this.f265b.bottom = height;
        if (z && (childCount = getChildCount()) > 0) {
            this.f265b.bottom = getChildAt(childCount - 1).getBottom() + getPaddingBottom();
            this.f265b.top = this.f265b.bottom - height;
        }
        return a(i, this.f265b.top, this.f265b.bottom);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public int c() {
        int i = 0;
        if (getChildCount() > 0) {
            i = Math.max(0, getChildAt(0).getHeight() - ((getHeight() - getPaddingBottom()) - getPaddingTop()));
        }
        return i;
    }

    private boolean c(int i) {
        int i2;
        boolean z;
        View findFocus = findFocus();
        View view = findFocus;
        if (findFocus == this) {
            view = null;
        }
        View findNextFocus = FocusFinder.getInstance().findNextFocus(this, view, i);
        int height = (int) (0.5f * getHeight());
        if (findNextFocus == null || !a(findNextFocus, height, getHeight())) {
            if (i != 33 || getScrollY() >= height) {
                i2 = height;
                if (i == 130) {
                    i2 = height;
                    if (getChildCount() > 0) {
                        int bottom = getChildAt(0).getBottom();
                        int scrollY = (getScrollY() + getHeight()) - getPaddingBottom();
                        i2 = height;
                        if (bottom - scrollY < height) {
                            i2 = bottom - scrollY;
                        }
                    }
                }
            } else {
                i2 = getScrollY();
            }
            if (i2 == 0) {
                z = false;
                return z;
            }
            if (i != 130) {
                i2 = -i2;
            }
            d(i2);
        } else {
            findNextFocus.getDrawingRect(this.f265b);
            offsetDescendantRectToMyCoords(findNextFocus, this.f265b);
            d(a(this.f265b));
            findNextFocus.requestFocus(i);
        }
        if (view != null && view.isFocused() && a(view)) {
            int descendantFocusability = getDescendantFocusability();
            setDescendantFocusability(131072);
            requestFocus();
            setDescendantFocusability(descendantFocusability);
        }
        z = true;
        return z;
    }

    private void d() {
        this.j = false;
        b();
        stopNestedScroll();
        if (this.d != null) {
            this.d.c();
            this.e.c();
        }
    }

    private void d(int i) {
        if (i == 0) {
            return;
        }
        if (this.m) {
            a(0, i);
        } else {
            scrollBy(0, i);
        }
    }

    private void e() {
        if (t.b(this) == 2) {
            this.d = null;
            this.e = null;
        } else if (this.d == null) {
            Context context = getContext();
            this.d = new d(context);
            this.e = new d(context);
        }
    }

    private void e(int i) {
        int scrollY = getScrollY();
        boolean z = (scrollY > 0 || i > 0) && (scrollY < c() || i < 0);
        if (!dispatchNestedPreFling(0.0f, i)) {
            dispatchNestedFling(0.0f, i, z);
            if (z && getChildCount() > 0) {
                int height = (getHeight() - getPaddingBottom()) - getPaddingTop();
                int height2 = getChildAt(0).getHeight();
                g gVar = this.c;
                gVar.f306b.b(gVar.f305a, getScrollX(), getScrollY(), i, Math.max(0, height2 - height), height / 2);
                t.c(this);
            }
        }
    }

    public final void a(int i) {
        a(0 - getScrollX(), i - getScrollY());
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

    @Override // android.view.View, android.support.v4.view.r
    public int computeHorizontalScrollExtent() {
        return super.computeHorizontalScrollExtent();
    }

    @Override // android.view.View, android.support.v4.view.r
    public int computeHorizontalScrollOffset() {
        return super.computeHorizontalScrollOffset();
    }

    @Override // android.view.View, android.support.v4.view.r
    public int computeHorizontalScrollRange() {
        return super.computeHorizontalScrollRange();
    }

    @Override // android.view.View
    public void computeScroll() {
        if (this.c.e()) {
            int scrollX = getScrollX();
            int scrollY = getScrollY();
            int b2 = this.c.b();
            int c = this.c.c();
            if (scrollX != b2 || scrollY != c) {
                int c2 = c();
                int b3 = t.b(this);
                boolean z = b3 == 0 || (b3 == 1 && c2 > 0);
                a(b2 - scrollX, c - scrollY, scrollX, scrollY, c2);
                if (z) {
                    e();
                    if (c <= 0 && scrollY > 0) {
                        this.d.a((int) this.c.d());
                    } else if (c >= c2 && scrollY < c2) {
                        this.e.a((int) this.c.d());
                    }
                }
            }
        }
    }

    @Override // android.view.View, android.support.v4.view.r
    public int computeVerticalScrollExtent() {
        return super.computeVerticalScrollExtent();
    }

    @Override // android.view.View, android.support.v4.view.r
    public int computeVerticalScrollOffset() {
        return Math.max(0, super.computeVerticalScrollOffset());
    }

    @Override // android.view.View, android.support.v4.view.r
    public int computeVerticalScrollRange() {
        int childCount = getChildCount();
        int height = (getHeight() - getPaddingBottom()) - getPaddingTop();
        if (childCount != 0) {
            int bottom = getChildAt(0).getBottom();
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

    /* JADX WARN: Code restructure failed: missing block: B:26:0x007d, code lost:
        if (r10 != false) goto L_0x0080;
     */
    @Override // android.view.ViewGroup, android.view.View
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public boolean dispatchKeyEvent(android.view.KeyEvent r6) {
        /*
            Method dump skipped, instructions count: 454
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: android.support.v4.widget.NestedScrollView.dispatchKeyEvent(android.view.KeyEvent):boolean");
    }

    @Override // android.view.View
    public boolean dispatchNestedFling(float f, float f2, boolean z) {
        return this.y.a(f, f2, z);
    }

    @Override // android.view.View
    public boolean dispatchNestedPreFling(float f, float f2) {
        return this.y.a(f, f2);
    }

    @Override // android.view.View
    public boolean dispatchNestedPreScroll(int i, int i2, int[] iArr, int[] iArr2) {
        return this.y.a(i, i2, iArr, iArr2);
    }

    @Override // android.view.View
    public boolean dispatchNestedScroll(int i, int i2, int i3, int i4, int[] iArr) {
        return this.y.a(i, i2, i3, i4, iArr);
    }

    @Override // android.view.View
    public void draw(Canvas canvas) {
        super.draw(canvas);
        if (this.d != null) {
            int scrollY = getScrollY();
            if (!this.d.a()) {
                int save = canvas.save();
                int width = getWidth();
                int paddingLeft = getPaddingLeft();
                int paddingRight = getPaddingRight();
                canvas.translate(getPaddingLeft(), Math.min(0, scrollY));
                this.d.a((width - paddingLeft) - paddingRight, getHeight());
                if (this.d.a(canvas)) {
                    t.c(this);
                }
                canvas.restoreToCount(save);
            }
            if (!this.e.a()) {
                int save2 = canvas.save();
                int width2 = (getWidth() - getPaddingLeft()) - getPaddingRight();
                int height = getHeight();
                canvas.translate((-width2) + getPaddingLeft(), Math.max(c(), scrollY) + height);
                canvas.rotate(180.0f, width2, 0.0f);
                this.e.a(width2, height);
                if (this.e.a(canvas)) {
                    t.c(this);
                }
                canvas.restoreToCount(save2);
            }
        }
    }

    @Override // android.view.View
    protected float getBottomFadingEdgeStrength() {
        float f;
        if (getChildCount() == 0) {
            f = 0.0f;
        } else {
            int verticalFadingEdgeLength = getVerticalFadingEdgeLength();
            int bottom = (getChildAt(0).getBottom() - getScrollY()) - (getHeight() - getPaddingBottom());
            f = bottom < verticalFadingEdgeLength ? bottom / verticalFadingEdgeLength : 1.0f;
        }
        return f;
    }

    @Override // android.view.ViewGroup
    public int getNestedScrollAxes() {
        return this.x.f236a;
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
        return this.y.a();
    }

    @Override // android.view.View, android.support.v4.view.k
    public boolean isNestedScrollingEnabled() {
        return this.y.f234a;
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
        this.h = false;
    }

    @Override // android.view.View
    public boolean onGenericMotionEvent(MotionEvent motionEvent) {
        int i;
        boolean z = true;
        if ((j.d(motionEvent) & 2) != 0) {
            switch (motionEvent.getAction()) {
                case 8:
                    if (!this.j) {
                        float e = j.e(motionEvent);
                        if (e != 0.0f) {
                            if (this.z == 0.0f) {
                                TypedValue typedValue = new TypedValue();
                                Context context = getContext();
                                if (!context.getTheme().resolveAttribute(16842829, typedValue, true)) {
                                    throw new IllegalStateException("Expected theme to define listPreferredItemHeight.");
                                }
                                this.z = typedValue.getDimension(context.getResources().getDisplayMetrics());
                            }
                            int i2 = (int) (e * this.z);
                            int c = c();
                            int scrollY = getScrollY();
                            int i3 = scrollY - i2;
                            if (i3 < 0) {
                                i = 0;
                            } else {
                                i = c;
                                if (i3 <= c) {
                                    i = i3;
                                }
                            }
                            if (i != scrollY) {
                                super.scrollTo(getScrollX(), i);
                                break;
                            }
                        }
                    }
                default:
                    z = false;
                    break;
            }
            return z;
        }
        z = false;
        return z;
    }

    @Override // android.view.ViewGroup
    public boolean onInterceptTouchEvent(MotionEvent motionEvent) {
        boolean z;
        boolean z2 = true;
        boolean z3 = true;
        int action = motionEvent.getAction();
        if (action != 2 || !this.j) {
            switch (action & 255) {
                case 0:
                    int y = (int) motionEvent.getY();
                    int x = (int) motionEvent.getX();
                    if (getChildCount() > 0) {
                        int scrollY = getScrollY();
                        View childAt = getChildAt(0);
                        z = y >= childAt.getTop() - scrollY && y < childAt.getBottom() - scrollY && x >= childAt.getLeft() && x < childAt.getRight();
                    } else {
                        z = false;
                    }
                    if (z) {
                        this.f = y;
                        this.q = j.b(motionEvent, 0);
                        if (this.k == null) {
                            this.k = VelocityTracker.obtain();
                        } else {
                            this.k.clear();
                        }
                        this.k.addMovement(motionEvent);
                        this.c.e();
                        if (this.c.a()) {
                            z2 = false;
                        }
                        this.j = z2;
                        startNestedScroll(2);
                        break;
                    } else {
                        this.j = false;
                        b();
                        break;
                    }
                    break;
                case 1:
                case 3:
                    this.j = false;
                    this.q = -1;
                    b();
                    if (this.c.a(getScrollX(), getScrollY(), c())) {
                        t.c(this);
                    }
                    stopNestedScroll();
                    break;
                case 2:
                    int i = this.q;
                    if (i != -1) {
                        int a2 = j.a(motionEvent, i);
                        if (a2 != -1) {
                            int d = (int) j.d(motionEvent, a2);
                            if (Math.abs(d - this.f) > this.n && (getNestedScrollAxes() & 2) == 0) {
                                this.j = true;
                                this.f = d;
                                a();
                                this.k.addMovement(motionEvent);
                                this.t = 0;
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
                    a(motionEvent);
                    break;
            }
            z3 = this.j;
        }
        return z3;
    }

    @Override // android.widget.FrameLayout, android.view.ViewGroup, android.view.View
    protected void onLayout(boolean z, int i, int i2, int i3, int i4) {
        super.onLayout(z, i, i2, i3, i4);
        this.g = false;
        if (this.i != null && a(this.i, this)) {
            b(this.i);
        }
        this.i = null;
        if (!this.h) {
            if (this.u != null) {
                scrollTo(getScrollX(), this.u.f266a);
                this.u = null;
            }
            int max = Math.max(0, (getChildCount() > 0 ? getChildAt(0).getMeasuredHeight() : 0) - (((i4 - i2) - getPaddingBottom()) - getPaddingTop()));
            if (getScrollY() > max) {
                scrollTo(getScrollX(), max);
            } else if (getScrollY() < 0) {
                scrollTo(getScrollX(), 0);
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
            int measuredHeight = getMeasuredHeight();
            if (childAt.getMeasuredHeight() < measuredHeight) {
                childAt.measure(getChildMeasureSpec(i, getPaddingLeft() + getPaddingRight(), ((FrameLayout.LayoutParams) childAt.getLayoutParams()).width), View.MeasureSpec.makeMeasureSpec((measuredHeight - getPaddingTop()) - getPaddingBottom(), 1073741824));
            }
        }
    }

    @Override // android.view.ViewGroup, android.view.ViewParent, android.support.v4.view.m
    public boolean onNestedFling(View view, float f, float f2, boolean z) {
        boolean z2;
        if (!z) {
            e((int) f2);
            z2 = true;
        } else {
            z2 = false;
        }
        return z2;
    }

    @Override // android.view.ViewGroup, android.view.ViewParent, android.support.v4.view.m
    public boolean onNestedPreFling(View view, float f, float f2) {
        return dispatchNestedPreFling(f, f2);
    }

    @Override // android.view.ViewGroup, android.view.ViewParent, android.support.v4.view.m
    public void onNestedPreScroll(View view, int i, int i2, int[] iArr) {
        dispatchNestedPreScroll(i, i2, iArr, null);
    }

    @Override // android.view.ViewGroup, android.view.ViewParent, android.support.v4.view.m
    public void onNestedScroll(View view, int i, int i2, int i3, int i4) {
        int scrollY = getScrollY();
        scrollBy(0, i4);
        int scrollY2 = getScrollY() - scrollY;
        dispatchNestedScroll(0, scrollY2, 0, i4 - scrollY2, null);
    }

    @Override // android.view.ViewGroup, android.view.ViewParent, android.support.v4.view.m
    public void onNestedScrollAccepted(View view, View view2, int i) {
        this.x.f236a = i;
        startNestedScroll(2);
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
        if (findNextFocus != null && !a(findNextFocus)) {
            z = findNextFocus.requestFocus(i2, rect);
        }
        return z;
    }

    @Override // android.view.View
    protected void onRestoreInstanceState(Parcelable parcelable) {
        if (!(parcelable instanceof SavedState)) {
            super.onRestoreInstanceState(parcelable);
            return;
        }
        SavedState savedState = (SavedState) parcelable;
        super.onRestoreInstanceState(savedState.getSuperState());
        this.u = savedState;
        requestLayout();
    }

    @Override // android.view.View
    protected Parcelable onSaveInstanceState() {
        SavedState savedState = new SavedState(super.onSaveInstanceState());
        savedState.f266a = getScrollY();
        return savedState;
    }

    @Override // android.view.View
    protected void onScrollChanged(int i, int i2, int i3, int i4) {
        super.onScrollChanged(i, i2, i3, i4);
    }

    @Override // android.view.View
    protected void onSizeChanged(int i, int i2, int i3, int i4) {
        super.onSizeChanged(i, i2, i3, i4);
        View findFocus = findFocus();
        if (findFocus != null && this != findFocus && a(findFocus, 0, i4)) {
            findFocus.getDrawingRect(this.f265b);
            offsetDescendantRectToMyCoords(findFocus, this.f265b);
            d(a(this.f265b));
        }
    }

    @Override // android.view.ViewGroup, android.view.ViewParent, android.support.v4.view.m
    public boolean onStartNestedScroll(View view, View view2, int i) {
        return (i & 2) != 0;
    }

    @Override // android.view.ViewGroup, android.view.ViewParent, android.support.v4.view.m
    public void onStopNestedScroll(View view) {
        this.x.f236a = 0;
        stopNestedScroll();
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Removed duplicated region for block: B:9:0x0053  */
    @Override // android.view.View
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public boolean onTouchEvent(android.view.MotionEvent r8) {
        /*
            Method dump skipped, instructions count: 921
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: android.support.v4.widget.NestedScrollView.onTouchEvent(android.view.MotionEvent):boolean");
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
                a(0, a2);
            }
        }
        return z2;
    }

    @Override // android.view.ViewGroup, android.view.ViewParent
    public void requestDisallowInterceptTouchEvent(boolean z) {
        if (z) {
            b();
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
            int b2 = b(i, (getWidth() - getPaddingRight()) - getPaddingLeft(), childAt.getWidth());
            int b3 = b(i2, (getHeight() - getPaddingBottom()) - getPaddingTop(), childAt.getHeight());
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
        this.y.a(z);
    }

    public void setOnScrollChangeListener(b bVar) {
        this.A = bVar;
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
        return this.y.a(i);
    }

    @Override // android.view.View, android.support.v4.view.k
    public void stopNestedScroll() {
        this.y.b();
    }
}

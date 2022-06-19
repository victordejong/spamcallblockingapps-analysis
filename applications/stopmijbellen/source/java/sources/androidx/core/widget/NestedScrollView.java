package androidx.core.widget;

import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.Canvas;
import android.graphics.Rect;
import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable;
import android.support.p012v4.media.C0082b;
import android.util.AttributeSet;
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
import androidx.appcompat.app.AlertController;
import com.applovin.mediation.C1564R;
import com.google.android.gms.common.api.Api;
import java.util.ArrayList;
import java.util.WeakHashMap;
import p007a6.C0033h;
import p086f.C2645d;
import p120i0.C3055a;
import p163m0.AbstractC3575h;
import p163m0.AbstractC3578k;
import p163m0.C3546a;
import p163m0.C3576i;
import p163m0.C3579l;
import p163m0.C3589v;
import p163m0.C3611y;
import p174n0.C3694b;
import p196p0.C3986d;
/* loaded from: classes-dex2jar.jar:androidx/core/widget/NestedScrollView.class */
public class NestedScrollView extends FrameLayout implements AbstractC3578k, AbstractC3575h {

    /* renamed from: A */
    public static final C0330a f1494A = new C0330a();

    /* renamed from: B */
    public static final int[] f1495B = {16843130};

    /* renamed from: a */
    public long f1496a;

    /* renamed from: c */
    public OverScroller f1498c;

    /* renamed from: d */
    public EdgeEffect f1499d;

    /* renamed from: e */
    public EdgeEffect f1500e;

    /* renamed from: f */
    public int f1501f;

    /* renamed from: k */
    public VelocityTracker f1506k;

    /* renamed from: l */
    public boolean f1507l;

    /* renamed from: n */
    public int f1509n;

    /* renamed from: o */
    public int f1510o;

    /* renamed from: p */
    public int f1511p;

    /* renamed from: t */
    public int f1515t;

    /* renamed from: u */
    public int f1516u;

    /* renamed from: v */
    public C0332c f1517v;

    /* renamed from: w */
    public final C3579l f1518w;

    /* renamed from: x */
    public final C3576i f1519x;

    /* renamed from: y */
    public float f1520y;

    /* renamed from: z */
    public AbstractC0331b f1521z;

    /* renamed from: b */
    public final Rect f1497b = new Rect();

    /* renamed from: g */
    public boolean f1502g = true;

    /* renamed from: h */
    public boolean f1503h = false;

    /* renamed from: i */
    public View f1504i = null;

    /* renamed from: j */
    public boolean f1505j = false;

    /* renamed from: m */
    public boolean f1508m = true;

    /* renamed from: q */
    public int f1512q = -1;

    /* renamed from: r */
    public final int[] f1513r = new int[2];

    /* renamed from: s */
    public final int[] f1514s = new int[2];

    /* renamed from: androidx.core.widget.NestedScrollView$a */
    /* loaded from: classes-dex2jar.jar:androidx/core/widget/NestedScrollView$a.class */
    public static class C0330a extends C3546a {
        @Override // p163m0.C3546a
        /* renamed from: c */
        public void mo737c(View view, AccessibilityEvent accessibilityEvent) {
            this.f11715a.onInitializeAccessibilityEvent(view, accessibilityEvent);
            NestedScrollView nestedScrollView = (NestedScrollView) view;
            accessibilityEvent.setClassName(ScrollView.class.getName());
            accessibilityEvent.setScrollable(nestedScrollView.getScrollRange() > 0);
            accessibilityEvent.setScrollX(nestedScrollView.getScrollX());
            accessibilityEvent.setScrollY(nestedScrollView.getScrollY());
            accessibilityEvent.setMaxScrollX(nestedScrollView.getScrollX());
            accessibilityEvent.setMaxScrollY(nestedScrollView.getScrollRange());
        }

        @Override // p163m0.C3546a
        /* renamed from: d */
        public void mo697d(View view, C3694b c3694b) {
            int scrollRange;
            this.f11715a.onInitializeAccessibilityNodeInfo(view, c3694b.f12070a);
            NestedScrollView nestedScrollView = (NestedScrollView) view;
            c3694b.f12070a.setClassName(ScrollView.class.getName());
            if (!nestedScrollView.isEnabled() || (scrollRange = nestedScrollView.getScrollRange()) <= 0) {
                return;
            }
            c3694b.f12070a.setScrollable(true);
            if (nestedScrollView.getScrollY() > 0) {
                c3694b.m1883a(C3694b.C3695a.f12077i);
                c3694b.m1883a(C3694b.C3695a.f12081m);
            }
            if (nestedScrollView.getScrollY() >= scrollRange) {
                return;
            }
            c3694b.m1883a(C3694b.C3695a.f12076h);
            c3694b.m1883a(C3694b.C3695a.f12082n);
        }

        @Override // p163m0.C3546a
        /* renamed from: g */
        public boolean mo2193g(View view, int i, Bundle bundle) {
            if (super.mo2193g(view, i, bundle)) {
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
                    nestedScrollView.m8290z(0 - nestedScrollView.getScrollX(), max - nestedScrollView.getScrollY(), 250, true);
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
            nestedScrollView.m8290z(0 - nestedScrollView.getScrollX(), min - nestedScrollView.getScrollY(), 250, true);
            return true;
        }
    }

    /* renamed from: androidx.core.widget.NestedScrollView$b */
    /* loaded from: classes-dex2jar.jar:androidx/core/widget/NestedScrollView$b.class */
    public interface AbstractC0331b {
    }

    /* renamed from: androidx.core.widget.NestedScrollView$c */
    /* loaded from: classes-dex2jar.jar:androidx/core/widget/NestedScrollView$c.class */
    public static class C0332c extends View.BaseSavedState {
        public static final Parcelable.Creator<C0332c> CREATOR = new C0333a();

        /* renamed from: a */
        public int f1522a;

        /* renamed from: androidx.core.widget.NestedScrollView$c$a */
        /* loaded from: classes-dex2jar.jar:androidx/core/widget/NestedScrollView$c$a.class */
        public class C0333a implements Parcelable.Creator<C0332c> {
            @Override // android.os.Parcelable.Creator
            public C0332c createFromParcel(Parcel parcel) {
                return new C0332c(parcel);
            }

            @Override // android.os.Parcelable.Creator
            public C0332c[] newArray(int i) {
                return new C0332c[i];
            }
        }

        public C0332c(Parcel parcel) {
            super(parcel);
            this.f1522a = parcel.readInt();
        }

        public C0332c(Parcelable parcelable) {
            super(parcelable);
        }

        public String toString() {
            StringBuilder m8752j = C0082b.m8752j("HorizontalScrollView.SavedState{");
            m8752j.append(Integer.toHexString(System.identityHashCode(this)));
            m8752j.append(" scrollPosition=");
            return C0033h.m8885l(m8752j, this.f1522a, "}");
        }

        @Override // android.view.View.BaseSavedState, android.view.AbsSavedState, android.os.Parcelable
        public void writeToParcel(Parcel parcel, int i) {
            super.writeToParcel(parcel, i);
            parcel.writeInt(this.f1522a);
        }
    }

    public NestedScrollView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet, C1564R.attr.nestedScrollViewStyle);
        this.f1499d = C3055a.m2668a() ? C3986d.C3987a.m1571a(context, attributeSet) : new EdgeEffect(context);
        this.f1500e = C3055a.m2668a() ? C3986d.C3987a.m1571a(context, attributeSet) : new EdgeEffect(context);
        this.f1498c = new OverScroller(getContext());
        setFocusable(true);
        setDescendantFocusability(262144);
        setWillNotDraw(false);
        ViewConfiguration viewConfiguration = ViewConfiguration.get(getContext());
        this.f1509n = viewConfiguration.getScaledTouchSlop();
        this.f1510o = viewConfiguration.getScaledMinimumFlingVelocity();
        this.f1511p = viewConfiguration.getScaledMaximumFlingVelocity();
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, f1495B, C1564R.attr.nestedScrollViewStyle, 0);
        setFillViewport(obtainStyledAttributes.getBoolean(0, false));
        obtainStyledAttributes.recycle();
        this.f1518w = new C3579l();
        this.f1519x = new C3576i(this);
        setNestedScrollingEnabled(true);
        C3589v.m2103u(this, f1494A);
    }

    /* renamed from: c */
    public static int m8307c(int i, int i2, int i3) {
        if (i2 >= i3 || i < 0) {
            return 0;
        }
        return i2 + i > i3 ? i3 - i2 : i;
    }

    private float getVerticalScrollFactorCompat() {
        if (this.f1520y == 0.0f) {
            TypedValue typedValue = new TypedValue();
            Context context = getContext();
            if (!context.getTheme().resolveAttribute(16842829, typedValue, true)) {
                throw new IllegalStateException("Expected theme to define listPreferredItemHeight.");
            }
            this.f1520y = typedValue.getDimension(context.getResources().getDisplayMetrics());
        }
        return this.f1520y;
    }

    /* renamed from: q */
    public static boolean m8299q(View view, View view2) {
        boolean z = true;
        if (view == view2) {
            return true;
        }
        ViewParent parent = view.getParent();
        if (!(parent instanceof ViewGroup) || !m8299q((View) parent, view2)) {
            z = false;
        }
        return z;
    }

    /* renamed from: A */
    public boolean m8311A(int i, int i2) {
        return this.f1519x.m2130i(i, i2);
    }

    /* renamed from: B */
    public final boolean m8310B(MotionEvent motionEvent) {
        boolean z;
        if (C3986d.m1573a(this.f1499d) != 0.0f) {
            C3986d.m1572b(this.f1499d, 0.0f, motionEvent.getY() / getHeight());
            z = true;
        } else {
            z = false;
        }
        if (C3986d.m1573a(this.f1500e) != 0.0f) {
            C3986d.m1572b(this.f1500e, 0.0f, 1.0f - (motionEvent.getY() / getHeight()));
            z = true;
        }
        return z;
    }

    /* renamed from: a */
    public final void m8309a() {
        this.f1498c.abortAnimation();
        this.f1519x.m2129j(1);
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
    public boolean m8308b(int i) {
        int i2;
        View findFocus = findFocus();
        View view = findFocus;
        if (findFocus == this) {
            view = null;
        }
        View findNextFocus = FocusFinder.getInstance().findNextFocus(this, view, i);
        int maxScrollAmount = getMaxScrollAmount();
        if (findNextFocus == null || !m8298r(findNextFocus, maxScrollAmount, getHeight())) {
            if (i != 33 || getScrollY() >= maxScrollAmount) {
                i2 = maxScrollAmount;
                if (i == 130) {
                    i2 = maxScrollAmount;
                    if (getChildCount() > 0) {
                        View childAt = getChildAt(0);
                        i2 = Math.min((childAt.getBottom() + ((FrameLayout.LayoutParams) childAt.getLayoutParams()).bottomMargin) - ((getHeight() + getScrollY()) - getPaddingBottom()), maxScrollAmount);
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
            m8304f(i2);
        } else {
            findNextFocus.getDrawingRect(this.f1497b);
            offsetDescendantRectToMyCoords(findNextFocus, this.f1497b);
            m8304f(m8306d(this.f1497b));
            findNextFocus.requestFocus(i);
        }
        if (view == null || !view.isFocused() || !(!m8298r(view, 0, getHeight()))) {
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

    /* JADX WARN: Code restructure failed: missing block: B:15:0x00b8, code lost:
        if (r0 > 0) goto L16;
     */
    /* JADX WARN: Removed duplicated region for block: B:19:0x00c1  */
    @Override // android.view.View
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void computeScroll() {
        /*
            Method dump skipped, instructions count: 284
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
    public int m8306d(Rect rect) {
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

    @Override // android.view.ViewGroup, android.view.View
    public boolean dispatchKeyEvent(KeyEvent keyEvent) {
        return super.dispatchKeyEvent(keyEvent) || m8303g(keyEvent);
    }

    @Override // android.view.View
    public boolean dispatchNestedFling(float f, float f2, boolean z) {
        return this.f1519x.m2138a(f, f2, z);
    }

    @Override // android.view.View
    public boolean dispatchNestedPreFling(float f, float f2) {
        return this.f1519x.m2137b(f, f2);
    }

    @Override // android.view.View
    public boolean dispatchNestedPreScroll(int i, int i2, int[] iArr, int[] iArr2) {
        return m8305e(i, i2, iArr, iArr2, 0);
    }

    @Override // android.view.View
    public boolean dispatchNestedScroll(int i, int i2, int i3, int i4, int[] iArr) {
        return this.f1519x.m2134e(i, i2, i3, i4, iArr);
    }

    @Override // android.view.View
    public void draw(Canvas canvas) {
        int i;
        super.draw(canvas);
        int scrollY = getScrollY();
        if (!this.f1499d.isFinished()) {
            int save = canvas.save();
            int width = getWidth();
            int height = getHeight();
            int min = Math.min(0, scrollY);
            if (getClipToPadding()) {
                width -= getPaddingRight() + getPaddingLeft();
                i = getPaddingLeft() + 0;
            } else {
                i = 0;
            }
            int i2 = height;
            int i3 = min;
            if (getClipToPadding()) {
                i2 = height - (getPaddingBottom() + getPaddingTop());
                i3 = min + getPaddingTop();
            }
            canvas.translate(i, i3);
            this.f1499d.setSize(width, i2);
            if (this.f1499d.draw(canvas)) {
                WeakHashMap<View, C3611y> weakHashMap = C3589v.f11780a;
                C3589v.C3593d.m2083k(this);
            }
            canvas.restoreToCount(save);
        }
        if (!this.f1500e.isFinished()) {
            int save2 = canvas.save();
            int width2 = getWidth();
            int height2 = getHeight();
            int max = Math.max(getScrollRange(), scrollY) + height2;
            int i4 = 0;
            int i5 = width2;
            if (getClipToPadding()) {
                i5 = width2 - (getPaddingRight() + getPaddingLeft());
                i4 = 0 + getPaddingLeft();
            }
            int i6 = max;
            int i7 = height2;
            if (getClipToPadding()) {
                i7 = height2 - (getPaddingBottom() + getPaddingTop());
                i6 = max - getPaddingBottom();
            }
            canvas.translate(i4 - i5, i6);
            canvas.rotate(180.0f, i5, 0.0f);
            this.f1500e.setSize(i5, i7);
            if (this.f1500e.draw(canvas)) {
                WeakHashMap<View, C3611y> weakHashMap2 = C3589v.f11780a;
                C3589v.C3593d.m2083k(this);
            }
            canvas.restoreToCount(save2);
        }
    }

    /* renamed from: e */
    public boolean m8305e(int i, int i2, int[] iArr, int[] iArr2, int i3) {
        return this.f1519x.m2136c(i, i2, iArr, iArr2, i3);
    }

    /* renamed from: f */
    public final void m8304f(int i) {
        if (i != 0) {
            if (this.f1508m) {
                m8290z(0, i, 250, false);
            } else {
                scrollBy(0, i);
            }
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:10:0x0053  */
    /* JADX WARN: Removed duplicated region for block: B:27:0x009b  */
    /* renamed from: g */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public boolean m8303g(android.view.KeyEvent r6) {
        /*
            Method dump skipped, instructions count: 466
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.core.widget.NestedScrollView.m8303g(android.view.KeyEvent):boolean");
    }

    @Override // android.view.View
    public float getBottomFadingEdgeStrength() {
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
        return this.f1518w.m2128a();
    }

    public int getScrollRange() {
        int i = 0;
        if (getChildCount() > 0) {
            View childAt = getChildAt(0);
            FrameLayout.LayoutParams layoutParams = (FrameLayout.LayoutParams) childAt.getLayoutParams();
            i = Math.max(0, ((childAt.getHeight() + layoutParams.topMargin) + layoutParams.bottomMargin) - ((getHeight() - getPaddingTop()) - getPaddingBottom()));
        }
        return i;
    }

    @Override // android.view.View
    public float getTopFadingEdgeStrength() {
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

    @Override // p163m0.AbstractC3577j
    /* renamed from: h */
    public void mo445h(View view, View view2, int i, int i2) {
        C3579l c3579l = this.f1518w;
        if (i2 == 1) {
            c3579l.f11775b = i;
        } else {
            c3579l.f11774a = i;
        }
        m8311A(2, i2);
    }

    @Override // android.view.View
    public boolean hasNestedScrollingParent() {
        return m8300p(0);
    }

    @Override // p163m0.AbstractC3577j
    /* renamed from: i */
    public void mo444i(View view, int i) {
        C3579l c3579l = this.f1518w;
        if (i == 1) {
            c3579l.f11775b = 0;
        } else {
            c3579l.f11774a = 0;
        }
        this.f1519x.m2129j(i);
    }

    @Override // android.view.View
    public boolean isNestedScrollingEnabled() {
        return this.f1519x.f11772d;
    }

    @Override // p163m0.AbstractC3577j
    /* renamed from: j */
    public void mo443j(View view, int i, int i2, int[] iArr, int i3) {
        m8305e(i, i2, iArr, null, i3);
    }

    /* renamed from: k */
    public void m8302k(int i) {
        if (getChildCount() > 0) {
            this.f1498c.fling(getScrollX(), getScrollY(), 0, i, 0, 0, Integer.MIN_VALUE, Api.BaseClientBuilder.API_PRIORITY_OTHER, 0, 0);
            m8293w(true);
        }
    }

    /* renamed from: l */
    public boolean m8301l(int i) {
        int childCount;
        boolean z = i == 130;
        int height = getHeight();
        Rect rect = this.f1497b;
        rect.top = 0;
        rect.bottom = height;
        if (z && (childCount = getChildCount()) > 0) {
            View childAt = getChildAt(childCount - 1);
            this.f1497b.bottom = getPaddingBottom() + childAt.getBottom() + ((FrameLayout.LayoutParams) childAt.getLayoutParams()).bottomMargin;
            Rect rect2 = this.f1497b;
            rect2.top = rect2.bottom - height;
        }
        Rect rect3 = this.f1497b;
        return m8292x(i, rect3.top, rect3.bottom);
    }

    @Override // p163m0.AbstractC3578k
    /* renamed from: m */
    public void mo441m(View view, int i, int i2, int i3, int i4, int i5, int[] iArr) {
        m8297s(i4, i5, iArr);
    }

    @Override // android.view.ViewGroup
    public void measureChild(View view, int i, int i2) {
        ViewGroup.LayoutParams layoutParams = view.getLayoutParams();
        view.measure(FrameLayout.getChildMeasureSpec(i, getPaddingRight() + getPaddingLeft(), layoutParams.width), View.MeasureSpec.makeMeasureSpec(0, 0));
    }

    @Override // android.view.ViewGroup
    public void measureChildWithMargins(View view, int i, int i2, int i3, int i4) {
        ViewGroup.MarginLayoutParams marginLayoutParams = (ViewGroup.MarginLayoutParams) view.getLayoutParams();
        view.measure(FrameLayout.getChildMeasureSpec(i, getPaddingRight() + getPaddingLeft() + marginLayoutParams.leftMargin + marginLayoutParams.rightMargin + i2, marginLayoutParams.width), View.MeasureSpec.makeMeasureSpec(marginLayoutParams.topMargin + marginLayoutParams.bottomMargin, 0));
    }

    @Override // p163m0.AbstractC3577j
    /* renamed from: n */
    public void mo440n(View view, int i, int i2, int i3, int i4, int i5) {
        m8297s(i4, i5, null);
    }

    @Override // p163m0.AbstractC3577j
    /* renamed from: o */
    public boolean mo439o(View view, View view2, int i, int i2) {
        return (i & 2) != 0;
    }

    @Override // android.view.ViewGroup, android.view.View
    public void onAttachedToWindow() {
        super.onAttachedToWindow();
        this.f1503h = false;
    }

    @Override // android.view.View
    public boolean onGenericMotionEvent(MotionEvent motionEvent) {
        if ((motionEvent.getSource() & 2) == 0 || motionEvent.getAction() != 8 || this.f1505j) {
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

    /* JADX WARN: Removed duplicated region for block: B:50:0x0147  */
    /* JADX WARN: Removed duplicated region for block: B:57:0x0174  */
    @Override // android.view.ViewGroup
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public boolean onInterceptTouchEvent(android.view.MotionEvent r9) {
        /*
            Method dump skipped, instructions count: 477
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.core.widget.NestedScrollView.onInterceptTouchEvent(android.view.MotionEvent):boolean");
    }

    @Override // android.widget.FrameLayout, android.view.ViewGroup, android.view.View
    public void onLayout(boolean z, int i, int i2, int i3, int i4) {
        super.onLayout(z, i, i2, i3, i4);
        int i5 = 0;
        this.f1502g = false;
        View view = this.f1504i;
        if (view != null && m8299q(view, this)) {
            m8291y(this.f1504i);
        }
        this.f1504i = null;
        if (!this.f1503h) {
            if (this.f1517v != null) {
                scrollTo(getScrollX(), this.f1517v.f1522a);
                this.f1517v = null;
            }
            if (getChildCount() > 0) {
                View childAt = getChildAt(0);
                FrameLayout.LayoutParams layoutParams = (FrameLayout.LayoutParams) childAt.getLayoutParams();
                i5 = childAt.getMeasuredHeight() + layoutParams.topMargin + layoutParams.bottomMargin;
            }
            int paddingTop = getPaddingTop();
            int paddingBottom = getPaddingBottom();
            int scrollY = getScrollY();
            int m8307c = m8307c(scrollY, ((i4 - i2) - paddingTop) - paddingBottom, i5);
            if (m8307c != scrollY) {
                scrollTo(getScrollX(), m8307c);
            }
        }
        scrollTo(getScrollX(), getScrollY());
        this.f1503h = true;
    }

    @Override // android.widget.FrameLayout, android.view.View
    public void onMeasure(int i, int i2) {
        super.onMeasure(i, i2);
        if (this.f1507l && View.MeasureSpec.getMode(i2) != 0 && getChildCount() > 0) {
            View childAt = getChildAt(0);
            FrameLayout.LayoutParams layoutParams = (FrameLayout.LayoutParams) childAt.getLayoutParams();
            int measuredHeight = childAt.getMeasuredHeight();
            int measuredHeight2 = (((getMeasuredHeight() - getPaddingTop()) - getPaddingBottom()) - layoutParams.topMargin) - layoutParams.bottomMargin;
            if (measuredHeight >= measuredHeight2) {
                return;
            }
            childAt.measure(FrameLayout.getChildMeasureSpec(i, getPaddingRight() + getPaddingLeft() + layoutParams.leftMargin + layoutParams.rightMargin, layoutParams.width), View.MeasureSpec.makeMeasureSpec(measuredHeight2, 1073741824));
        }
    }

    @Override // android.view.ViewGroup, android.view.ViewParent
    public boolean onNestedFling(View view, float f, float f2, boolean z) {
        if (!z) {
            dispatchNestedFling(0.0f, f2, true);
            m8302k((int) f2);
            return true;
        }
        return false;
    }

    @Override // android.view.ViewGroup, android.view.ViewParent
    public boolean onNestedPreFling(View view, float f, float f2) {
        return dispatchNestedPreFling(f, f2);
    }

    @Override // android.view.ViewGroup, android.view.ViewParent
    public void onNestedPreScroll(View view, int i, int i2, int[] iArr) {
        m8305e(i, i2, iArr, null, 0);
    }

    @Override // android.view.ViewGroup, android.view.ViewParent
    public void onNestedScroll(View view, int i, int i2, int i3, int i4) {
        m8297s(i4, 0, null);
    }

    @Override // android.view.ViewGroup, android.view.ViewParent
    public void onNestedScrollAccepted(View view, View view2, int i) {
        this.f1518w.f11774a = i;
        m8311A(2, 0);
    }

    @Override // android.view.View
    public void onOverScrolled(int i, int i2, boolean z, boolean z2) {
        super.scrollTo(i, i2);
    }

    @Override // android.view.ViewGroup
    public boolean onRequestFocusInDescendants(int i, Rect rect) {
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
        if (findNextFocus != null && !(true ^ m8298r(findNextFocus, 0, getHeight()))) {
            return findNextFocus.requestFocus(i2, rect);
        }
        return false;
    }

    @Override // android.view.View
    public void onRestoreInstanceState(Parcelable parcelable) {
        if (!(parcelable instanceof C0332c)) {
            super.onRestoreInstanceState(parcelable);
            return;
        }
        C0332c c0332c = (C0332c) parcelable;
        super.onRestoreInstanceState(c0332c.getSuperState());
        this.f1517v = c0332c;
        requestLayout();
    }

    @Override // android.view.View
    public Parcelable onSaveInstanceState() {
        C0332c c0332c = new C0332c(super.onSaveInstanceState());
        c0332c.f1522a = getScrollY();
        return c0332c;
    }

    @Override // android.view.View
    public void onScrollChanged(int i, int i2, int i3, int i4) {
        super.onScrollChanged(i, i2, i3, i4);
        AbstractC0331b abstractC0331b = this.f1521z;
        if (abstractC0331b != null) {
            C2645d c2645d = (C2645d) abstractC0331b;
            AlertController.m8730c(this, c2645d.f9083a, c2645d.f9084b);
        }
    }

    @Override // android.view.View
    public void onSizeChanged(int i, int i2, int i3, int i4) {
        super.onSizeChanged(i, i2, i3, i4);
        View findFocus = findFocus();
        if (findFocus == null || this == findFocus || !m8298r(findFocus, 0, i4)) {
            return;
        }
        findFocus.getDrawingRect(this.f1497b);
        offsetDescendantRectToMyCoords(findFocus, this.f1497b);
        m8304f(m8306d(this.f1497b));
    }

    @Override // android.view.ViewGroup, android.view.ViewParent
    public boolean onStartNestedScroll(View view, View view2, int i) {
        return (i & 2) != 0;
    }

    @Override // android.view.ViewGroup, android.view.ViewParent
    public void onStopNestedScroll(View view) {
        this.f1518w.f11774a = 0;
        this.f1519x.m2129j(0);
    }

    /* JADX WARN: Removed duplicated region for block: B:107:0x03ed  */
    @Override // android.view.View
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public boolean onTouchEvent(android.view.MotionEvent r11) {
        /*
            Method dump skipped, instructions count: 1208
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.core.widget.NestedScrollView.onTouchEvent(android.view.MotionEvent):boolean");
    }

    /* renamed from: p */
    public boolean m8300p(int i) {
        return this.f1519x.m2132g(i) != null;
    }

    /* renamed from: r */
    public final boolean m8298r(View view, int i, int i2) {
        view.getDrawingRect(this.f1497b);
        offsetDescendantRectToMyCoords(view, this.f1497b);
        return this.f1497b.bottom + i >= getScrollY() && this.f1497b.top - i <= getScrollY() + i2;
    }

    @Override // android.view.ViewGroup, android.view.ViewParent
    public void requestChildFocus(View view, View view2) {
        if (!this.f1502g) {
            m8291y(view2);
        } else {
            this.f1504i = view2;
        }
        super.requestChildFocus(view, view2);
    }

    @Override // android.view.ViewGroup, android.view.ViewParent
    public boolean requestChildRectangleOnScreen(View view, Rect rect, boolean z) {
        rect.offset(view.getLeft() - view.getScrollX(), view.getTop() - view.getScrollY());
        int m8306d = m8306d(rect);
        boolean z2 = m8306d != 0;
        if (z2) {
            if (z) {
                scrollBy(0, m8306d);
            } else {
                m8290z(0, m8306d, 250, false);
            }
        }
        return z2;
    }

    @Override // android.view.ViewGroup, android.view.ViewParent
    public void requestDisallowInterceptTouchEvent(boolean z) {
        if (z) {
            m8294v();
        }
        super.requestDisallowInterceptTouchEvent(z);
    }

    @Override // android.view.View, android.view.ViewParent
    public void requestLayout() {
        this.f1502g = true;
        super.requestLayout();
    }

    /* renamed from: s */
    public final void m8297s(int i, int i2, int[] iArr) {
        int scrollY = getScrollY();
        scrollBy(0, i);
        int scrollY2 = getScrollY() - scrollY;
        if (iArr != null) {
            iArr[1] = iArr[1] + scrollY2;
        }
        this.f1519x.m2135d(0, scrollY2, 0, i - scrollY2, null, i2, iArr);
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
            int m8307c = m8307c(i, (width - paddingLeft) - paddingRight, width2 + i3 + i4);
            int m8307c2 = m8307c(i2, (height - paddingTop) - paddingBottom, height2 + i5 + i6);
            if (m8307c == getScrollX() && m8307c2 == getScrollY()) {
                return;
            }
            super.scrollTo(m8307c, m8307c2);
        }
    }

    public void setFillViewport(boolean z) {
        if (z != this.f1507l) {
            this.f1507l = z;
            requestLayout();
        }
    }

    @Override // android.view.View
    public void setNestedScrollingEnabled(boolean z) {
        C3576i c3576i = this.f1519x;
        if (c3576i.f11772d) {
            View view = c3576i.f11771c;
            WeakHashMap<View, C3611y> weakHashMap = C3589v.f11780a;
            C3589v.C3598i.m2025z(view);
        }
        c3576i.f11772d = z;
    }

    public void setOnScrollChangeListener(AbstractC0331b abstractC0331b) {
        this.f1521z = abstractC0331b;
    }

    public void setSmoothScrollingEnabled(boolean z) {
        this.f1508m = z;
    }

    @Override // android.widget.FrameLayout, android.view.ViewGroup
    public boolean shouldDelayChildPressedState() {
        return true;
    }

    @Override // android.view.View
    public boolean startNestedScroll(int i) {
        return this.f1519x.m2130i(i, 0);
    }

    @Override // android.view.View
    public void stopNestedScroll() {
        this.f1519x.m2129j(0);
    }

    /* renamed from: t */
    public final void m8296t(MotionEvent motionEvent) {
        int actionIndex = motionEvent.getActionIndex();
        if (motionEvent.getPointerId(actionIndex) == this.f1512q) {
            int i = actionIndex == 0 ? 1 : 0;
            this.f1501f = (int) motionEvent.getY(i);
            this.f1512q = motionEvent.getPointerId(i);
            VelocityTracker velocityTracker = this.f1506k;
            if (velocityTracker == null) {
                return;
            }
            velocityTracker.clear();
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:57:0x011c, code lost:
        if (r22 != false) goto L58;
     */
    /* JADX WARN: Removed duplicated region for block: B:43:0x00cd  */
    /* JADX WARN: Removed duplicated region for block: B:45:0x00d6  */
    /* JADX WARN: Removed duplicated region for block: B:51:0x00ee  */
    /* JADX WARN: Removed duplicated region for block: B:56:0x0116  */
    /* renamed from: u */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public boolean m8295u(int r9, int r10, int r11, int r12, int r13, int r14, int r15, int r16) {
        /*
            Method dump skipped, instructions count: 293
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.core.widget.NestedScrollView.m8295u(int, int, int, int, int, int, int, int):boolean");
    }

    /* renamed from: v */
    public final void m8294v() {
        VelocityTracker velocityTracker = this.f1506k;
        if (velocityTracker != null) {
            velocityTracker.recycle();
            this.f1506k = null;
        }
    }

    /* renamed from: w */
    public final void m8293w(boolean z) {
        if (z) {
            m8311A(2, 1);
        } else {
            this.f1519x.m2129j(1);
        }
        this.f1516u = getScrollY();
        WeakHashMap<View, C3611y> weakHashMap = C3589v.f11780a;
        C3589v.C3593d.m2083k(this);
    }

    /* renamed from: x */
    public final boolean m8292x(int i, int i2, int i3) {
        boolean z;
        int height = getHeight();
        int scrollY = getScrollY();
        int i4 = height + scrollY;
        boolean z2 = i == 33;
        ArrayList focusables = getFocusables(2);
        int size = focusables.size();
        View view = null;
        int i5 = 0;
        boolean z3 = false;
        while (true) {
            boolean z4 = z3;
            if (i5 >= size) {
                break;
            }
            View view2 = (View) focusables.get(i5);
            int top = view2.getTop();
            int bottom = view2.getBottom();
            View view3 = view;
            boolean z5 = z4;
            if (i2 < bottom) {
                view3 = view;
                z5 = z4;
                if (top < i3) {
                    boolean z6 = i2 < top && bottom < i3;
                    if (view == null) {
                        view3 = view2;
                        z5 = z6;
                    } else {
                        boolean z7 = (z2 && top < view.getTop()) || (!z2 && bottom > view.getBottom());
                        if (z4) {
                            view3 = view;
                            z5 = z4;
                            if (z6) {
                                view3 = view;
                                z5 = z4;
                                if (!z7) {
                                }
                                view3 = view2;
                                z5 = z4;
                            }
                        } else if (z6) {
                            view3 = view2;
                            z5 = true;
                        } else {
                            view3 = view;
                            z5 = z4;
                            if (!z7) {
                            }
                            view3 = view2;
                            z5 = z4;
                        }
                    }
                }
            }
            i5++;
            view = view3;
            z3 = z5;
        }
        View view4 = view;
        if (view == null) {
            view4 = this;
        }
        if (i2 < scrollY || i3 > i4) {
            m8304f(z2 ? i2 - scrollY : i3 - i4);
            z = true;
        } else {
            z = false;
        }
        if (view4 != findFocus()) {
            view4.requestFocus(i);
        }
        return z;
    }

    /* renamed from: y */
    public final void m8291y(View view) {
        view.getDrawingRect(this.f1497b);
        offsetDescendantRectToMyCoords(view, this.f1497b);
        int m8306d = m8306d(this.f1497b);
        if (m8306d != 0) {
            scrollBy(0, m8306d);
        }
    }

    /* renamed from: z */
    public final void m8290z(int i, int i2, int i3, boolean z) {
        if (getChildCount() == 0) {
            return;
        }
        if (AnimationUtils.currentAnimationTimeMillis() - this.f1496a > 250) {
            View childAt = getChildAt(0);
            FrameLayout.LayoutParams layoutParams = (FrameLayout.LayoutParams) childAt.getLayoutParams();
            int height = childAt.getHeight();
            int i4 = layoutParams.topMargin;
            int i5 = layoutParams.bottomMargin;
            int height2 = getHeight();
            int paddingTop = getPaddingTop();
            int paddingBottom = getPaddingBottom();
            int scrollY = getScrollY();
            this.f1498c.startScroll(getScrollX(), scrollY, 0, Math.max(0, Math.min(i2 + scrollY, Math.max(0, ((height + i4) + i5) - ((height2 - paddingTop) - paddingBottom)))) - scrollY, i3);
            m8293w(z);
        } else {
            if (!this.f1498c.isFinished()) {
                m8309a();
            }
            scrollBy(i, i2);
        }
        this.f1496a = AnimationUtils.currentAnimationTimeMillis();
    }
}

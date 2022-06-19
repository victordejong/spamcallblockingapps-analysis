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
import androidx.core.view.AbstractC0916l;
import androidx.core.view.AbstractC0920p;
import androidx.core.view.C0865a;
import androidx.core.view.C0917m;
import androidx.core.view.C0921q;
import androidx.core.view.C0926v;
import androidx.core.view.p038a.C0869c;
import com.callapp.contacts.activity.base.BaseViewTypeData;
import com.google.android.gms.maps.model.BitmapDescriptorFactory;
import java.util.ArrayList;
/* loaded from: classes-dex2jar.jar:androidx/core/widget/NestedScrollView.class */
public class NestedScrollView extends FrameLayout implements AbstractC0916l, AbstractC0920p {

    /* renamed from: w */
    private static final C0948a f3801w = new C0948a();

    /* renamed from: x */
    private static final int[] f3802x = {16843130};

    /* renamed from: A */
    private float f3803A;

    /* renamed from: B */
    private AbstractC0949b f3804B;

    /* renamed from: a */
    private long f3805a;

    /* renamed from: b */
    private final Rect f3806b;

    /* renamed from: c */
    private OverScroller f3807c;

    /* renamed from: d */
    private EdgeEffect f3808d;

    /* renamed from: e */
    private EdgeEffect f3809e;

    /* renamed from: f */
    private int f3810f;

    /* renamed from: g */
    private boolean f3811g;

    /* renamed from: h */
    private boolean f3812h;

    /* renamed from: i */
    private View f3813i;

    /* renamed from: j */
    private boolean f3814j;

    /* renamed from: k */
    private VelocityTracker f3815k;

    /* renamed from: l */
    private boolean f3816l;

    /* renamed from: m */
    private boolean f3817m;

    /* renamed from: n */
    private int f3818n;

    /* renamed from: o */
    private int f3819o;

    /* renamed from: p */
    private int f3820p;

    /* renamed from: q */
    private int f3821q;

    /* renamed from: r */
    private final int[] f3822r;

    /* renamed from: s */
    private final int[] f3823s;

    /* renamed from: t */
    private int f3824t;

    /* renamed from: u */
    private int f3825u;

    /* renamed from: v */
    private SavedState f3826v;

    /* renamed from: y */
    private final C0921q f3827y;

    /* renamed from: z */
    private final C0917m f3828z;

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

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: androidx.core.widget.NestedScrollView$a */
    /* loaded from: classes-dex2jar.jar:androidx/core/widget/NestedScrollView$a.class */
    public static final class C0948a extends C0865a {
        C0948a() {
        }

        @Override // androidx.core.view.C0865a
        /* renamed from: a */
        public final void mo9886a(View view, C0869c c0869c) {
            int m44035a;
            super.mo9886a(view, c0869c);
            NestedScrollView nestedScrollView = (NestedScrollView) view;
            c0869c.m44265b((CharSequence) ScrollView.class.getName());
            if (!nestedScrollView.isEnabled() || (m44035a = nestedScrollView.m44035a()) <= 0) {
                return;
            }
            c0869c.m44240j(true);
            if (nestedScrollView.getScrollY() > 0) {
                c0869c.m44277a(C0869c.C0870a.f3671n);
                c0869c.m44277a(C0869c.C0870a.f3682y);
            }
            if (nestedScrollView.getScrollY() >= m44035a) {
                return;
            }
            c0869c.m44277a(C0869c.C0870a.f3670m);
            c0869c.m44277a(C0869c.C0870a.f3647A);
        }

        @Override // androidx.core.view.C0865a
        /* renamed from: a */
        public final boolean mo10179a(View view, int i, Bundle bundle) {
            if (super.mo10179a(view, i, bundle)) {
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
                    nestedScrollView.m44013b(max);
                    return true;
                } else if (i != 16908346) {
                    return false;
                }
            }
            int height2 = nestedScrollView.getHeight();
            int paddingBottom2 = nestedScrollView.getPaddingBottom();
            int min = Math.min(nestedScrollView.getScrollY() + ((height2 - paddingBottom2) - nestedScrollView.getPaddingTop()), nestedScrollView.m44035a());
            if (min == nestedScrollView.getScrollY()) {
                return false;
            }
            nestedScrollView.m44013b(min);
            return true;
        }

        @Override // androidx.core.view.C0865a
        /* renamed from: d */
        public final void mo10621d(View view, AccessibilityEvent accessibilityEvent) {
            super.mo10621d(view, accessibilityEvent);
            NestedScrollView nestedScrollView = (NestedScrollView) view;
            accessibilityEvent.setClassName(ScrollView.class.getName());
            accessibilityEvent.setScrollable(nestedScrollView.m44035a() > 0);
            accessibilityEvent.setScrollX(nestedScrollView.getScrollX());
            accessibilityEvent.setScrollY(nestedScrollView.getScrollY());
            int scrollX = nestedScrollView.getScrollX();
            if (Build.VERSION.SDK_INT >= 15) {
                accessibilityEvent.setMaxScrollX(scrollX);
            }
            int m44035a = nestedScrollView.m44035a();
            if (Build.VERSION.SDK_INT >= 15) {
                accessibilityEvent.setMaxScrollY(m44035a);
            }
        }
    }

    /* renamed from: androidx.core.widget.NestedScrollView$b */
    /* loaded from: classes-dex2jar.jar:androidx/core/widget/NestedScrollView$b.class */
    public interface AbstractC0949b {
        /* renamed from: a */
        void mo43996a(NestedScrollView nestedScrollView);
    }

    public NestedScrollView(Context context) {
        this(context, null);
    }

    public NestedScrollView(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    public NestedScrollView(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        this.f3806b = new Rect();
        this.f3811g = true;
        this.f3812h = false;
        this.f3813i = null;
        this.f3814j = false;
        this.f3817m = true;
        this.f3821q = -1;
        this.f3822r = new int[2];
        this.f3823s = new int[2];
        this.f3807c = new OverScroller(getContext());
        setFocusable(true);
        setDescendantFocusability(262144);
        setWillNotDraw(false);
        ViewConfiguration viewConfiguration = ViewConfiguration.get(getContext());
        this.f3818n = viewConfiguration.getScaledTouchSlop();
        this.f3819o = viewConfiguration.getScaledMinimumFlingVelocity();
        this.f3820p = viewConfiguration.getScaledMaximumFlingVelocity();
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, f3802x, i, 0);
        setFillViewport(obtainStyledAttributes.getBoolean(0, false));
        obtainStyledAttributes.recycle();
        this.f3827y = new C0921q(this);
        this.f3828z = new C0917m(this);
        setNestedScrollingEnabled(true);
        C0926v.m44123a(this, f3801w);
    }

    /* renamed from: a */
    private int m44027a(Rect rect) {
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
    private View m44015a(boolean z, int i, int i2) {
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

    /* renamed from: a */
    private void m44031a(int i, int i2, int i3, boolean z) {
        if (getChildCount() == 0) {
            return;
        }
        if (AnimationUtils.currentAnimationTimeMillis() - this.f3805a > 250) {
            View childAt = getChildAt(0);
            FrameLayout.LayoutParams layoutParams = (FrameLayout.LayoutParams) childAt.getLayoutParams();
            int height = childAt.getHeight();
            int i4 = layoutParams.topMargin;
            int i5 = layoutParams.bottomMargin;
            int height2 = getHeight();
            int paddingTop = getPaddingTop();
            int paddingBottom = getPaddingBottom();
            int scrollY = getScrollY();
            this.f3807c.startScroll(getScrollX(), scrollY, 0, Math.max(0, Math.min(i2 + scrollY, Math.max(0, ((height + i4) + i5) - ((height2 - paddingTop) - paddingBottom)))) - scrollY, 250);
            m44016a(z);
        } else {
            if (!this.f3807c.isFinished()) {
                m44003f();
            }
            scrollBy(i, i2);
        }
        this.f3805a = AnimationUtils.currentAnimationTimeMillis();
    }

    /* renamed from: a */
    private void m44030a(int i, int i2, int[] iArr) {
        int scrollY = getScrollY();
        scrollBy(0, i);
        int scrollY2 = getScrollY() - scrollY;
        if (iArr != null) {
            iArr[1] = iArr[1] + scrollY2;
        }
        this.f3828z.m44172a(0, scrollY2, 0, i - scrollY2, null, i2, iArr);
    }

    /* renamed from: a */
    private void m44029a(int i, int i2, int[] iArr, int i3, int[] iArr2) {
        this.f3828z.m44172a(0, i, 0, i2, iArr, i3, iArr2);
    }

    /* renamed from: a */
    private void m44025a(MotionEvent motionEvent) {
        int actionIndex = motionEvent.getActionIndex();
        if (motionEvent.getPointerId(actionIndex) == this.f3821q) {
            int i = actionIndex == 0 ? 1 : 0;
            this.f3810f = (int) motionEvent.getY(i);
            this.f3821q = motionEvent.getPointerId(i);
            VelocityTracker velocityTracker = this.f3815k;
            if (velocityTracker == null) {
                return;
            }
            velocityTracker.clear();
        }
    }

    /* renamed from: a */
    private void m44016a(boolean z) {
        if (z) {
            m44034a(2, 1);
        } else {
            mo40494a(1);
        }
        this.f3825u = getScrollY();
        C0926v.m44101d(this);
    }

    /* renamed from: a */
    private boolean m44034a(int i, int i2) {
        return this.f3828z.m44174a(i, i2);
    }

    /* renamed from: a */
    private boolean m44033a(int i, int i2, int i3) {
        boolean z;
        int height = getHeight();
        int scrollY = getScrollY();
        int i4 = height + scrollY;
        boolean z2 = i == 33;
        View m44015a = m44015a(z2, i2, i3);
        View view = m44015a;
        if (m44015a == null) {
            view = this;
        }
        if (i2 < scrollY || i3 > i4) {
            m44000g(z2 ? i2 - scrollY : i3 - i4);
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
    private boolean m44032a(int i, int i2, int i3, int i4) {
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
        } else if (i6 >= 0) {
            z2 = false;
            if (z2 && !m44008c(1)) {
                this.f3807c.springBack(i5, i6, 0, 0, 0, m44035a());
            }
            onOverScrolled(i5, i6, z, z2);
            return z || z2;
        } else {
            i6 = 0;
        }
        z2 = true;
        if (z2) {
            this.f3807c.springBack(i5, i6, 0, 0, 0, m44035a());
        }
        onOverScrolled(i5, i6, z, z2);
        if (z) {
            return true;
        }
    }

    /* renamed from: a */
    private boolean m44028a(int i, int i2, int[] iArr, int[] iArr2, int i3) {
        return this.f3828z.m44170a(i, i2, iArr, iArr2, i3);
    }

    /* renamed from: a */
    private boolean m44024a(View view) {
        return !m44022a(view, 0, getHeight());
    }

    /* renamed from: a */
    private boolean m44022a(View view, int i, int i2) {
        view.getDrawingRect(this.f3806b);
        offsetDescendantRectToMyCoords(view, this.f3806b);
        return this.f3806b.bottom + i >= getScrollY() && this.f3806b.top - i <= getScrollY() + i2;
    }

    /* renamed from: a */
    private static boolean m44018a(View view, View view2) {
        if (view == view2) {
            return true;
        }
        ViewParent parent = view.getParent();
        return (parent instanceof ViewGroup) && m44018a((View) parent, view2);
    }

    /* renamed from: b */
    private int m44014b() {
        return (int) (getHeight() * 0.5f);
    }

    /* renamed from: b */
    private static int m44012b(int i, int i2, int i3) {
        if (i2 >= i3 || i < 0) {
            return 0;
        }
        return i2 + i > i3 ? i3 - i2 : i;
    }

    /* renamed from: b */
    private void m44011b(View view) {
        view.getDrawingRect(this.f3806b);
        offsetDescendantRectToMyCoords(view, this.f3806b);
        int m44027a = m44027a(this.f3806b);
        if (m44027a != 0) {
            scrollBy(0, m44027a);
        }
    }

    /* renamed from: c */
    private boolean m44009c() {
        if (getChildCount() > 0) {
            View childAt = getChildAt(0);
            FrameLayout.LayoutParams layoutParams = (FrameLayout.LayoutParams) childAt.getLayoutParams();
            return (childAt.getHeight() + layoutParams.topMargin) + layoutParams.bottomMargin > (getHeight() - getPaddingTop()) - getPaddingBottom();
        }
        return false;
    }

    /* renamed from: c */
    private boolean m44008c(int i) {
        return this.f3828z.m44175a(i);
    }

    /* renamed from: d */
    private void m44007d() {
        if (this.f3815k == null) {
            this.f3815k = VelocityTracker.obtain();
        }
    }

    /* renamed from: d */
    private boolean m44006d(int i) {
        boolean z = i == 130;
        int height = getHeight();
        if (z) {
            this.f3806b.top = getScrollY() + height;
            int childCount = getChildCount();
            if (childCount > 0) {
                View childAt = getChildAt(childCount - 1);
                int bottom = childAt.getBottom() + ((FrameLayout.LayoutParams) childAt.getLayoutParams()).bottomMargin + getPaddingBottom();
                if (this.f3806b.top + height > bottom) {
                    this.f3806b.top = bottom - height;
                }
            }
        } else {
            this.f3806b.top = getScrollY() - height;
            if (this.f3806b.top < 0) {
                this.f3806b.top = 0;
            }
        }
        Rect rect = this.f3806b;
        rect.bottom = rect.top + height;
        return m44033a(i, this.f3806b.top, this.f3806b.bottom);
    }

    /* renamed from: e */
    private void m44005e() {
        VelocityTracker velocityTracker = this.f3815k;
        if (velocityTracker != null) {
            velocityTracker.recycle();
            this.f3815k = null;
        }
    }

    /* renamed from: e */
    private boolean m44004e(int i) {
        int childCount;
        boolean z = i == 130;
        int height = getHeight();
        this.f3806b.top = 0;
        this.f3806b.bottom = height;
        if (z && (childCount = getChildCount()) > 0) {
            View childAt = getChildAt(childCount - 1);
            this.f3806b.bottom = childAt.getBottom() + ((FrameLayout.LayoutParams) childAt.getLayoutParams()).bottomMargin + getPaddingBottom();
            Rect rect = this.f3806b;
            rect.top = rect.bottom - height;
        }
        return m44033a(i, this.f3806b.top, this.f3806b.bottom);
    }

    /* renamed from: f */
    private void m44003f() {
        this.f3807c.abortAnimation();
        mo40494a(1);
    }

    /* renamed from: f */
    private boolean m44002f(int i) {
        int i2;
        View findFocus = findFocus();
        View view = findFocus;
        if (findFocus == this) {
            view = null;
        }
        View findNextFocus = FocusFinder.getInstance().findNextFocus(this, view, i);
        int m44014b = m44014b();
        if (findNextFocus == null || !m44022a(findNextFocus, m44014b, getHeight())) {
            if (i != 33 || getScrollY() >= m44014b) {
                i2 = m44014b;
                if (i == 130) {
                    i2 = m44014b;
                    if (getChildCount() > 0) {
                        View childAt = getChildAt(0);
                        i2 = Math.min((childAt.getBottom() + ((FrameLayout.LayoutParams) childAt.getLayoutParams()).bottomMargin) - ((getScrollY() + getHeight()) - getPaddingBottom()), m44014b);
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
            m44000g(i2);
        } else {
            findNextFocus.getDrawingRect(this.f3806b);
            offsetDescendantRectToMyCoords(findNextFocus, this.f3806b);
            m44000g(m44027a(this.f3806b));
            findNextFocus.requestFocus(i);
        }
        if (view == null || !view.isFocused() || !m44024a(view)) {
            return true;
        }
        int descendantFocusability = getDescendantFocusability();
        setDescendantFocusability(131072);
        requestFocus();
        setDescendantFocusability(descendantFocusability);
        return true;
    }

    /* renamed from: g */
    private void m44001g() {
        this.f3814j = false;
        m44005e();
        mo40494a(0);
        EdgeEffect edgeEffect = this.f3808d;
        if (edgeEffect != null) {
            edgeEffect.onRelease();
            this.f3809e.onRelease();
        }
    }

    /* renamed from: g */
    private void m44000g(int i) {
        if (i != 0) {
            if (this.f3817m) {
                m43998h(i);
            } else {
                scrollBy(0, i);
            }
        }
    }

    /* renamed from: h */
    private void m43999h() {
        if (getOverScrollMode() == 2) {
            this.f3808d = null;
            this.f3809e = null;
        } else if (this.f3808d != null) {
        } else {
            Context context = getContext();
            this.f3808d = new EdgeEffect(context);
            this.f3809e = new EdgeEffect(context);
        }
    }

    /* renamed from: h */
    private void m43998h(int i) {
        m44031a(0, i, 250, false);
    }

    /* renamed from: i */
    private void m43997i(int i) {
        if (getChildCount() > 0) {
            this.f3807c.fling(getScrollX(), getScrollY(), 0, i, 0, 0, BaseViewTypeData.VIEW_TYPE_EMPTY_VIEW, Integer.MAX_VALUE, 0, 0);
            m44016a(true);
        }
    }

    /* renamed from: a */
    final int m44035a() {
        int i = 0;
        if (getChildCount() > 0) {
            View childAt = getChildAt(0);
            FrameLayout.LayoutParams layoutParams = (FrameLayout.LayoutParams) childAt.getLayoutParams();
            i = Math.max(0, ((childAt.getHeight() + layoutParams.topMargin) + layoutParams.bottomMargin) - ((getHeight() - getPaddingTop()) - getPaddingBottom()));
        }
        return i;
    }

    @Override // androidx.core.view.AbstractC0915k
    /* renamed from: a */
    public final void mo40494a(int i) {
        this.f3828z.m44167b(i);
    }

    @Override // androidx.core.view.AbstractC0919o
    /* renamed from: a */
    public final void mo44023a(View view, int i) {
        this.f3827y.m44163a(i);
        mo40494a(i);
    }

    @Override // androidx.core.view.AbstractC0919o
    /* renamed from: a */
    public final void mo44021a(View view, int i, int i2, int i3, int i4, int i5) {
        m44030a(i4, i5, (int[]) null);
    }

    @Override // androidx.core.view.AbstractC0920p
    /* renamed from: a */
    public final void mo44020a(View view, int i, int i2, int i3, int i4, int i5, int[] iArr) {
        m44030a(i4, i5, iArr);
    }

    @Override // androidx.core.view.AbstractC0919o
    /* renamed from: a */
    public final void mo44019a(View view, int i, int i2, int[] iArr, int i3) {
        m44028a(i, i2, iArr, (int[]) null, i3);
    }

    /* renamed from: a */
    public final boolean m44026a(KeyEvent keyEvent) {
        this.f3806b.setEmpty();
        int i = 130;
        if (!m44009c()) {
            if (!isFocused() || keyEvent.getKeyCode() == 4) {
                return false;
            }
            View findFocus = findFocus();
            View view = findFocus;
            if (findFocus == this) {
                view = null;
            }
            View findNextFocus = FocusFinder.getInstance().findNextFocus(this, view, 130);
            return (findNextFocus == null || findNextFocus == this || !findNextFocus.requestFocus(130)) ? false : true;
        }
        boolean z = false;
        if (keyEvent.getAction() == 0) {
            int keyCode = keyEvent.getKeyCode();
            if (keyCode == 19) {
                z = !keyEvent.isAltPressed() ? m44002f(33) : m44004e(33);
            } else if (keyCode == 20) {
                z = !keyEvent.isAltPressed() ? m44002f(130) : m44004e(130);
            } else if (keyCode != 62) {
                z = false;
            } else {
                if (keyEvent.isShiftPressed()) {
                    i = 33;
                }
                m44006d(i);
                z = false;
            }
        }
        return z;
    }

    @Override // androidx.core.view.AbstractC0919o
    /* renamed from: a */
    public final boolean mo44017a(View view, View view2, int i, int i2) {
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

    /* renamed from: b */
    final void m44013b(int i) {
        m44031a(0 - getScrollX(), i - getScrollY(), 250, true);
    }

    @Override // androidx.core.view.AbstractC0919o
    /* renamed from: b */
    public final void mo44010b(View view, View view2, int i, int i2) {
        this.f3827y.m44162a(i, i2);
        m44034a(2, i2);
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
        if (r0 > 0) goto L16;
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
        return super.dispatchKeyEvent(keyEvent) || m44026a(keyEvent);
    }

    @Override // android.view.View
    public boolean dispatchNestedFling(float f, float f2, boolean z) {
        return this.f3828z.m44176a(f, f2, z);
    }

    @Override // android.view.View
    public boolean dispatchNestedPreFling(float f, float f2) {
        return this.f3828z.m44177a(f, f2);
    }

    @Override // android.view.View
    public boolean dispatchNestedPreScroll(int i, int i2, int[] iArr, int[] iArr2) {
        return m44028a(i, i2, iArr, iArr2, 0);
    }

    @Override // android.view.View
    public boolean dispatchNestedScroll(int i, int i2, int i3, int i4, int[] iArr) {
        return this.f3828z.m44173a(i, i2, i3, i4, iArr);
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

    @Override // android.view.View
    protected float getBottomFadingEdgeStrength() {
        if (getChildCount() == 0) {
            return BitmapDescriptorFactory.HUE_RED;
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

    @Override // android.view.ViewGroup
    public int getNestedScrollAxes() {
        return this.f3827y.m44164a();
    }

    @Override // android.view.View
    protected float getTopFadingEdgeStrength() {
        if (getChildCount() == 0) {
            return BitmapDescriptorFactory.HUE_RED;
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
        return m44008c(0);
    }

    @Override // android.view.View, androidx.core.view.AbstractC0914j
    public boolean isNestedScrollingEnabled() {
        return this.f3828z.f3749a;
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
        this.f3812h = false;
    }

    @Override // android.view.View
    public boolean onGenericMotionEvent(MotionEvent motionEvent) {
        if ((motionEvent.getSource() & 2) == 0 || motionEvent.getAction() != 8 || this.f3814j) {
            return false;
        }
        float axisValue = motionEvent.getAxisValue(9);
        if (axisValue == BitmapDescriptorFactory.HUE_RED) {
            return false;
        }
        if (this.f3803A == BitmapDescriptorFactory.HUE_RED) {
            TypedValue typedValue = new TypedValue();
            Context context = getContext();
            if (!context.getTheme().resolveAttribute(16842829, typedValue, true)) {
                throw new IllegalStateException("Expected theme to define listPreferredItemHeight.");
            }
            this.f3803A = typedValue.getDimension(context.getResources().getDisplayMetrics());
        }
        int i = (int) (axisValue * this.f3803A);
        int m44035a = m44035a();
        int scrollY = getScrollY();
        int i2 = scrollY - i;
        if (i2 < 0) {
            m44035a = 0;
        } else if (i2 <= m44035a) {
            m44035a = i2;
        }
        if (m44035a == scrollY) {
            return false;
        }
        super.scrollTo(getScrollX(), m44035a);
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
        this.f3811g = false;
        View view = this.f3813i;
        if (view != null && m44018a(view, this)) {
            m44011b(this.f3813i);
        }
        this.f3813i = null;
        if (!this.f3812h) {
            if (this.f3826v != null) {
                scrollTo(getScrollX(), this.f3826v.scrollPosition);
                this.f3826v = null;
            }
            if (getChildCount() > 0) {
                View childAt = getChildAt(0);
                FrameLayout.LayoutParams layoutParams = (FrameLayout.LayoutParams) childAt.getLayoutParams();
                i5 = childAt.getMeasuredHeight() + layoutParams.topMargin + layoutParams.bottomMargin;
            }
            int paddingTop = getPaddingTop();
            int paddingBottom = getPaddingBottom();
            int scrollY = getScrollY();
            int m44012b = m44012b(scrollY, ((i4 - i2) - paddingTop) - paddingBottom, i5);
            if (m44012b != scrollY) {
                scrollTo(getScrollX(), m44012b);
            }
        }
        scrollTo(getScrollX(), getScrollY());
        this.f3812h = true;
    }

    @Override // android.widget.FrameLayout, android.view.View
    protected void onMeasure(int i, int i2) {
        super.onMeasure(i, i2);
        if (this.f3816l && View.MeasureSpec.getMode(i2) != 0 && getChildCount() > 0) {
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

    @Override // android.view.ViewGroup, android.view.ViewParent, androidx.core.view.AbstractC0918n
    public boolean onNestedFling(View view, float f, float f2, boolean z) {
        if (!z) {
            dispatchNestedFling(BitmapDescriptorFactory.HUE_RED, f2, true);
            m43997i((int) f2);
            return true;
        }
        return false;
    }

    @Override // android.view.ViewGroup, android.view.ViewParent, androidx.core.view.AbstractC0918n
    public boolean onNestedPreFling(View view, float f, float f2) {
        return dispatchNestedPreFling(f, f2);
    }

    @Override // android.view.ViewGroup, android.view.ViewParent, androidx.core.view.AbstractC0918n
    public void onNestedPreScroll(View view, int i, int i2, int[] iArr) {
        mo44019a(view, i, i2, iArr, 0);
    }

    @Override // android.view.ViewGroup, android.view.ViewParent, androidx.core.view.AbstractC0918n
    public void onNestedScroll(View view, int i, int i2, int i3, int i4) {
        m44030a(i4, 0, (int[]) null);
    }

    @Override // android.view.ViewGroup, android.view.ViewParent, androidx.core.view.AbstractC0918n
    public void onNestedScrollAccepted(View view, View view2, int i) {
        mo44010b(view, view2, i, 0);
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
        if (findNextFocus != null && !m44024a(findNextFocus)) {
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
        this.f3826v = savedState;
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
        AbstractC0949b abstractC0949b = this.f3804B;
        if (abstractC0949b != null) {
            abstractC0949b.mo43996a(this);
        }
    }

    @Override // android.view.View
    protected void onSizeChanged(int i, int i2, int i3, int i4) {
        super.onSizeChanged(i, i2, i3, i4);
        View findFocus = findFocus();
        if (findFocus == null || this == findFocus || !m44022a(findFocus, 0, i4)) {
            return;
        }
        findFocus.getDrawingRect(this.f3806b);
        offsetDescendantRectToMyCoords(findFocus, this.f3806b);
        m44000g(m44027a(this.f3806b));
    }

    @Override // android.view.ViewGroup, android.view.ViewParent, androidx.core.view.AbstractC0918n
    public boolean onStartNestedScroll(View view, View view2, int i) {
        return mo44017a(view, view2, i, 0);
    }

    @Override // android.view.ViewGroup, android.view.ViewParent, androidx.core.view.AbstractC0918n
    public void onStopNestedScroll(View view) {
        mo44023a(view, 0);
    }

    @Override // android.view.View
    public boolean onTouchEvent(MotionEvent motionEvent) {
        ViewParent parent;
        m44007d();
        int actionMasked = motionEvent.getActionMasked();
        if (actionMasked == 0) {
            this.f3824t = 0;
        }
        MotionEvent obtain = MotionEvent.obtain(motionEvent);
        obtain.offsetLocation(BitmapDescriptorFactory.HUE_RED, this.f3824t);
        if (actionMasked != 0) {
            if (actionMasked == 1) {
                VelocityTracker velocityTracker = this.f3815k;
                velocityTracker.computeCurrentVelocity(1000, this.f3820p);
                int yVelocity = (int) velocityTracker.getYVelocity(this.f3821q);
                if (Math.abs(yVelocity) >= this.f3819o) {
                    int i = -yVelocity;
                    float f = i;
                    if (!dispatchNestedPreFling(BitmapDescriptorFactory.HUE_RED, f)) {
                        dispatchNestedFling(BitmapDescriptorFactory.HUE_RED, f, true);
                        m43997i(i);
                    }
                } else if (this.f3807c.springBack(getScrollX(), getScrollY(), 0, 0, 0, m44035a())) {
                    C0926v.m44101d(this);
                }
                this.f3821q = -1;
                m44001g();
            } else if (actionMasked == 2) {
                int findPointerIndex = motionEvent.findPointerIndex(this.f3821q);
                if (findPointerIndex == -1) {
                    Log.e("NestedScrollView", "Invalid pointerId=" + this.f3821q + " in onTouchEvent");
                } else {
                    int y = (int) motionEvent.getY(findPointerIndex);
                    int i2 = this.f3810f - y;
                    int i3 = i2;
                    if (!this.f3814j) {
                        i3 = i2;
                        if (Math.abs(i2) > this.f3818n) {
                            ViewParent parent2 = getParent();
                            if (parent2 != null) {
                                parent2.requestDisallowInterceptTouchEvent(true);
                            }
                            this.f3814j = true;
                            i3 = i2 > 0 ? i2 - this.f3818n : i2 + this.f3818n;
                        }
                    }
                    int i4 = i3;
                    if (this.f3814j) {
                        int i5 = i4;
                        if (m44028a(0, i4, this.f3823s, this.f3822r, 0)) {
                            i5 = i4 - this.f3823s[1];
                            this.f3824t += this.f3822r[1];
                        }
                        this.f3810f = y - this.f3822r[1];
                        int scrollY = getScrollY();
                        int m44035a = m44035a();
                        int overScrollMode = getOverScrollMode();
                        boolean z = overScrollMode == 0 || (overScrollMode == 1 && m44035a > 0);
                        if (m44032a(i5, 0, getScrollY(), m44035a) && !m44008c(0)) {
                            this.f3815k.clear();
                        }
                        int scrollY2 = getScrollY() - scrollY;
                        int[] iArr = this.f3823s;
                        iArr[1] = 0;
                        m44029a(scrollY2, i5 - scrollY2, this.f3822r, 0, iArr);
                        int i6 = this.f3810f;
                        int[] iArr2 = this.f3822r;
                        this.f3810f = i6 - iArr2[1];
                        this.f3824t += iArr2[1];
                        if (z) {
                            int i7 = i5 - this.f3823s[1];
                            m43999h();
                            int i8 = scrollY + i7;
                            if (i8 < 0) {
                                C0955d.m43975a(this.f3808d, i7 / getHeight(), motionEvent.getX(findPointerIndex) / getWidth());
                                if (!this.f3809e.isFinished()) {
                                    this.f3809e.onRelease();
                                }
                            } else if (i8 > m44035a) {
                                C0955d.m43975a(this.f3809e, i7 / getHeight(), 1.0f - (motionEvent.getX(findPointerIndex) / getWidth()));
                                if (!this.f3808d.isFinished()) {
                                    this.f3808d.onRelease();
                                }
                            }
                            EdgeEffect edgeEffect = this.f3808d;
                            if (edgeEffect != null && (!edgeEffect.isFinished() || !this.f3809e.isFinished())) {
                                C0926v.m44101d(this);
                            }
                        }
                    }
                }
            } else if (actionMasked == 3) {
                if (this.f3814j && getChildCount() > 0 && this.f3807c.springBack(getScrollX(), getScrollY(), 0, 0, 0, m44035a())) {
                    C0926v.m44101d(this);
                }
                this.f3821q = -1;
                m44001g();
            } else if (actionMasked == 5) {
                int actionIndex = motionEvent.getActionIndex();
                this.f3810f = (int) motionEvent.getY(actionIndex);
                this.f3821q = motionEvent.getPointerId(actionIndex);
            } else if (actionMasked == 6) {
                m44025a(motionEvent);
                this.f3810f = (int) motionEvent.getY(motionEvent.findPointerIndex(this.f3821q));
            }
        } else if (getChildCount() == 0) {
            return false;
        } else {
            boolean z2 = !this.f3807c.isFinished();
            this.f3814j = z2;
            if (z2 && (parent = getParent()) != null) {
                parent.requestDisallowInterceptTouchEvent(true);
            }
            if (!this.f3807c.isFinished()) {
                m44003f();
            }
            this.f3810f = (int) motionEvent.getY();
            this.f3821q = motionEvent.getPointerId(0);
            m44034a(2, 0);
        }
        VelocityTracker velocityTracker2 = this.f3815k;
        if (velocityTracker2 != null) {
            velocityTracker2.addMovement(obtain);
        }
        obtain.recycle();
        return true;
    }

    @Override // android.view.ViewGroup, android.view.ViewParent
    public void requestChildFocus(View view, View view2) {
        if (!this.f3811g) {
            m44011b(view2);
        } else {
            this.f3813i = view2;
        }
        super.requestChildFocus(view, view2);
    }

    @Override // android.view.ViewGroup, android.view.ViewParent
    public boolean requestChildRectangleOnScreen(View view, Rect rect, boolean z) {
        rect.offset(view.getLeft() - view.getScrollX(), view.getTop() - view.getScrollY());
        int m44027a = m44027a(rect);
        boolean z2 = m44027a != 0;
        if (z2) {
            if (z) {
                scrollBy(0, m44027a);
            } else {
                m43998h(m44027a);
            }
        }
        return z2;
    }

    @Override // android.view.ViewGroup, android.view.ViewParent
    public void requestDisallowInterceptTouchEvent(boolean z) {
        if (z) {
            m44005e();
        }
        super.requestDisallowInterceptTouchEvent(z);
    }

    @Override // android.view.View, android.view.ViewParent
    public void requestLayout() {
        this.f3811g = true;
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
            int m44012b = m44012b(i, (width - paddingLeft) - paddingRight, width2 + i3 + i4);
            int m44012b2 = m44012b(i2, (height - paddingTop) - paddingBottom, height2 + i5 + i6);
            if (m44012b == getScrollX() && m44012b2 == getScrollY()) {
                return;
            }
            super.scrollTo(m44012b, m44012b2);
        }
    }

    public void setFillViewport(boolean z) {
        if (z != this.f3816l) {
            this.f3816l = z;
            requestLayout();
        }
    }

    @Override // android.view.View
    public void setNestedScrollingEnabled(boolean z) {
        this.f3828z.m44168a(z);
    }

    public void setOnScrollChangeListener(AbstractC0949b abstractC0949b) {
        this.f3804B = abstractC0949b;
    }

    public void setSmoothScrollingEnabled(boolean z) {
        this.f3817m = z;
    }

    @Override // android.widget.FrameLayout, android.view.ViewGroup
    public boolean shouldDelayChildPressedState() {
        return true;
    }

    @Override // android.view.View
    public boolean startNestedScroll(int i) {
        return m44034a(i, 0);
    }

    @Override // android.view.View, androidx.core.view.AbstractC0914j
    public void stopNestedScroll() {
        mo40494a(0);
    }
}

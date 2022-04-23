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
import com.mopub.nativeads.MoPubNativeAdPositioning;
import java.util.ArrayList;
import p012b.p042i.p054p.AbstractC0992k;
import p012b.p042i.p054p.AbstractC0996o;
import p012b.p042i.p054p.C0949a;
import p012b.p042i.p054p.C0994m;
import p012b.p042i.p054p.C0998q;
import p012b.p042i.p054p.C1002u;
import p012b.p042i.p054p.p055d0.C0970c;
import p012b.p042i.p054p.p055d0.C0975e;
import p012b.p042i.p056q.C1027d;
/* loaded from: classes-dex2jar.jar:androidx/core/widget/NestedScrollView.class */
public class NestedScrollView extends FrameLayout implements AbstractC0996o, AbstractC0992k {

    /* renamed from: A */
    public static final C0207a f1156A = new C0207a();

    /* renamed from: B */
    public static final int[] f1157B = {16843130};

    /* renamed from: a */
    public long f1158a;

    /* renamed from: b */
    public final Rect f1159b;

    /* renamed from: c */
    public OverScroller f1160c;

    /* renamed from: d */
    public EdgeEffect f1161d;

    /* renamed from: e */
    public EdgeEffect f1162e;

    /* renamed from: f */
    public int f1163f;

    /* renamed from: g */
    public boolean f1164g;

    /* renamed from: h */
    public boolean f1165h;

    /* renamed from: i */
    public View f1166i;

    /* renamed from: j */
    public boolean f1167j;

    /* renamed from: k */
    public VelocityTracker f1168k;

    /* renamed from: l */
    public boolean f1169l;

    /* renamed from: m */
    public boolean f1170m;

    /* renamed from: n */
    public int f1171n;

    /* renamed from: o */
    public int f1172o;

    /* renamed from: p */
    public int f1173p;

    /* renamed from: q */
    public int f1174q;

    /* renamed from: r */
    public final int[] f1175r;

    /* renamed from: s */
    public final int[] f1176s;

    /* renamed from: t */
    public int f1177t;

    /* renamed from: u */
    public int f1178u;

    /* renamed from: v */
    public SavedState f1179v;

    /* renamed from: w */
    public final C0998q f1180w;

    /* renamed from: x */
    public final C0994m f1181x;

    /* renamed from: y */
    public float f1182y;

    /* renamed from: z */
    public AbstractC0208b f1183z;

    /* loaded from: classes-dex2jar.jar:androidx/core/widget/NestedScrollView$SavedState.class */
    public static class SavedState extends View.BaseSavedState {
        public static final Parcelable.Creator<SavedState> CREATOR = new C0206a();

        /* renamed from: a */
        public int f1184a;

        /* renamed from: androidx.core.widget.NestedScrollView$SavedState$a */
        /* loaded from: classes-dex2jar.jar:androidx/core/widget/NestedScrollView$SavedState$a.class */
        public class C0206a implements Parcelable.Creator<SavedState> {
            /* JADX WARN: Can't rename method to resolve collision */
            @Override // android.os.Parcelable.Creator
            public SavedState createFromParcel(Parcel parcel) {
                return new SavedState(parcel);
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // android.os.Parcelable.Creator
            public SavedState[] newArray(int i) {
                return new SavedState[i];
            }
        }

        public SavedState(Parcel parcel) {
            super(parcel);
            this.f1184a = parcel.readInt();
        }

        public SavedState(Parcelable parcelable) {
            super(parcelable);
        }

        public String toString() {
            return "HorizontalScrollView.SavedState{" + Integer.toHexString(System.identityHashCode(this)) + " scrollPosition=" + this.f1184a + "}";
        }

        @Override // android.view.View.BaseSavedState, android.view.AbsSavedState, android.os.Parcelable
        public void writeToParcel(Parcel parcel, int i) {
            super.writeToParcel(parcel, i);
            parcel.writeInt(this.f1184a);
        }
    }

    /* renamed from: androidx.core.widget.NestedScrollView$a */
    /* loaded from: classes-dex2jar.jar:androidx/core/widget/NestedScrollView$a.class */
    public static class C0207a extends C0949a {
        @Override // p012b.p042i.p054p.C0949a
        /* renamed from: a */
        public void mo31581a(View view, C0970c cVar) {
            int scrollRange;
            super.mo31581a(view, cVar);
            NestedScrollView nestedScrollView = (NestedScrollView) view;
            cVar.m35373a((CharSequence) ScrollView.class.getName());
            if (nestedScrollView.isEnabled() && (scrollRange = nestedScrollView.getScrollRange()) > 0) {
                cVar.m35335j(true);
                if (nestedScrollView.getScrollY() > 0) {
                    cVar.m35375a(C0970c.C0971a.f4227g);
                    cVar.m35375a(C0970c.C0971a.f4228h);
                }
                if (nestedScrollView.getScrollY() < scrollRange) {
                    cVar.m35375a(C0970c.C0971a.f4226f);
                    cVar.m35375a(C0970c.C0971a.f4229i);
                }
            }
        }

        @Override // p012b.p042i.p054p.C0949a
        /* renamed from: a */
        public boolean mo31583a(View view, int i, Bundle bundle) {
            if (super.mo31583a(view, i, bundle)) {
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
                    nestedScrollView.m38547a(0, max, true);
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
            nestedScrollView.m38547a(0, min, true);
            return true;
        }

        @Override // p012b.p042i.p054p.C0949a
        /* renamed from: b */
        public void mo31579b(View view, AccessibilityEvent accessibilityEvent) {
            super.mo31579b(view, accessibilityEvent);
            NestedScrollView nestedScrollView = (NestedScrollView) view;
            accessibilityEvent.setClassName(ScrollView.class.getName());
            accessibilityEvent.setScrollable(nestedScrollView.getScrollRange() > 0);
            accessibilityEvent.setScrollX(nestedScrollView.getScrollX());
            accessibilityEvent.setScrollY(nestedScrollView.getScrollY());
            C0975e.m35311a(accessibilityEvent, nestedScrollView.getScrollX());
            C0975e.m35310b(accessibilityEvent, nestedScrollView.getScrollRange());
        }
    }

    /* renamed from: androidx.core.widget.NestedScrollView$b */
    /* loaded from: classes-dex2jar.jar:androidx/core/widget/NestedScrollView$b.class */
    public interface AbstractC0208b {
        /* renamed from: a */
        void mo38517a(NestedScrollView nestedScrollView, int i, int i2, int i3, int i4);
    }

    public NestedScrollView(Context context) {
        this(context, null);
    }

    public NestedScrollView(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    public NestedScrollView(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        this.f1159b = new Rect();
        this.f1164g = true;
        this.f1165h = false;
        this.f1166i = null;
        this.f1167j = false;
        this.f1170m = true;
        this.f1174q = -1;
        this.f1175r = new int[2];
        this.f1176s = new int[2];
        m38522f();
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, f1157B, i, 0);
        setFillViewport(obtainStyledAttributes.getBoolean(0, false));
        obtainStyledAttributes.recycle();
        this.f1180w = new C0998q(this);
        this.f1181x = new C0994m(this);
        setNestedScrollingEnabled(true);
        C1002u.m35238a(this, f1156A);
    }

    /* renamed from: a */
    public static boolean m38538a(View view, View view2) {
        boolean z = true;
        if (view == view2) {
            return true;
        }
        ViewParent parent = view.getParent();
        if (!(parent instanceof ViewGroup) || !m38538a((View) parent, view2)) {
            z = false;
        }
        return z;
    }

    /* renamed from: b */
    public static int m38532b(int i, int i2, int i3) {
        if (i2 >= i3 || i < 0) {
            return 0;
        }
        return i2 + i > i3 ? i3 - i2 : i;
    }

    private float getVerticalScrollFactorCompat() {
        if (this.f1182y == 0.0f) {
            TypedValue typedValue = new TypedValue();
            Context context = getContext();
            if (context.getTheme().resolveAttribute(16842829, typedValue, true)) {
                this.f1182y = typedValue.getDimension(context.getResources().getDisplayMetrics());
            } else {
                throw new IllegalStateException("Expected theme to define listPreferredItemHeight.");
            }
        }
        return this.f1182y;
    }

    /* renamed from: a */
    public int m38544a(Rect rect) {
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
    public final View m38536a(boolean z, int i, int i2) {
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

    /* renamed from: a */
    public final void m38554a() {
        this.f1160c.abortAnimation();
        m38519g(1);
    }

    /* renamed from: a */
    public void m38549a(int i, int i2, int i3, int i4, int[] iArr, int i5, int[] iArr2) {
        this.f1181x.m35282a(i, i2, i3, i4, iArr, i5, iArr2);
    }

    /* renamed from: a */
    public final void m38548a(int i, int i2, int i3, boolean z) {
        if (getChildCount() != 0) {
            if (AnimationUtils.currentAnimationTimeMillis() - this.f1158a > 250) {
                View childAt = getChildAt(0);
                FrameLayout.LayoutParams layoutParams = (FrameLayout.LayoutParams) childAt.getLayoutParams();
                int height = childAt.getHeight();
                int i4 = layoutParams.topMargin;
                int i5 = layoutParams.bottomMargin;
                int height2 = getHeight();
                int paddingTop = getPaddingTop();
                int paddingBottom = getPaddingBottom();
                int scrollY = getScrollY();
                this.f1160c.startScroll(getScrollX(), scrollY, 0, Math.max(0, Math.min(i2 + scrollY, Math.max(0, ((height + i4) + i5) - ((height2 - paddingTop) - paddingBottom)))) - scrollY, i3);
                m38537a(z);
            } else {
                if (!this.f1160c.isFinished()) {
                    m38554a();
                }
                scrollBy(i, i2);
            }
            this.f1158a = AnimationUtils.currentAnimationTimeMillis();
        }
    }

    /* renamed from: a */
    public void m38547a(int i, int i2, boolean z) {
        m38531b(i, i2, 250, z);
    }

    /* renamed from: a */
    public final void m38546a(int i, int i2, int[] iArr) {
        int scrollY = getScrollY();
        scrollBy(0, i);
        int scrollY2 = getScrollY() - scrollY;
        if (iArr != null) {
            iArr[1] = iArr[1] + scrollY2;
        }
        this.f1181x.m35282a(0, scrollY2, 0, i - scrollY2, null, i2, iArr);
    }

    /* renamed from: a */
    public final void m38541a(MotionEvent motionEvent) {
        int actionIndex = motionEvent.getActionIndex();
        if (motionEvent.getPointerId(actionIndex) == this.f1174q) {
            int i = actionIndex == 0 ? 1 : 0;
            this.f1163f = (int) motionEvent.getY(i);
            this.f1174q = motionEvent.getPointerId(i);
            VelocityTracker velocityTracker = this.f1168k;
            if (velocityTracker != null) {
                velocityTracker.clear();
            }
        }
    }

    @Override // p012b.p042i.p054p.AbstractC0995n
    /* renamed from: a */
    public void mo35270a(View view, int i) {
        this.f1180w.m35262a(view, i);
        m38519g(i);
    }

    @Override // p012b.p042i.p054p.AbstractC0995n
    /* renamed from: a */
    public void mo35269a(View view, int i, int i2, int i3, int i4, int i5) {
        m38546a(i4, i5, (int[]) null);
    }

    @Override // p012b.p042i.p054p.AbstractC0996o
    /* renamed from: a */
    public void mo35265a(View view, int i, int i2, int i3, int i4, int i5, int[] iArr) {
        m38546a(i4, i5, iArr);
    }

    @Override // p012b.p042i.p054p.AbstractC0995n
    /* renamed from: a */
    public void mo35268a(View view, int i, int i2, int[] iArr, int i3) {
        m38545a(i, i2, iArr, (int[]) null, i3);
    }

    /* renamed from: a */
    public final void m38537a(boolean z) {
        if (z) {
            m38527c(2, 1);
        } else {
            m38519g(1);
        }
        this.f1178u = getScrollY();
        C1002u.m35254C(this);
    }

    /* renamed from: a */
    public boolean m38553a(int i) {
        int i2;
        View findFocus = findFocus();
        View view = findFocus;
        if (findFocus == this) {
            view = null;
        }
        View findNextFocus = FocusFinder.getInstance().findNextFocus(this, view, i);
        int maxScrollAmount = getMaxScrollAmount();
        if (findNextFocus == null || !m38539a(findNextFocus, maxScrollAmount, getHeight())) {
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
            m38534b(i2);
        } else {
            findNextFocus.getDrawingRect(this.f1159b);
            offsetDescendantRectToMyCoords(findNextFocus, this.f1159b);
            m38534b(m38544a(this.f1159b));
            findNextFocus.requestFocus(i);
        }
        if (view == null || !view.isFocused() || !m38540a(view)) {
            return true;
        }
        int descendantFocusability = getDescendantFocusability();
        setDescendantFocusability(131072);
        requestFocus();
        setDescendantFocusability(descendantFocusability);
        return true;
    }

    /* renamed from: a */
    public final boolean m38552a(int i, int i2) {
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

    /* renamed from: a */
    public final boolean m38551a(int i, int i2, int i3) {
        int height = getHeight();
        int scrollY = getScrollY();
        int i4 = height + scrollY;
        boolean z = false;
        boolean z2 = i == 33;
        View a = m38536a(z2, i2, i3);
        View view = a;
        if (a == null) {
            view = this;
        }
        if (i2 < scrollY || i3 > i4) {
            m38534b(z2 ? i2 - scrollY : i3 - i4);
            z = true;
        }
        if (view != findFocus()) {
            view.requestFocus(i);
        }
        return z;
    }

    /* JADX WARN: Removed duplicated region for block: B:43:0x00cd  */
    /* JADX WARN: Removed duplicated region for block: B:45:0x00d6  */
    /* JADX WARN: Removed duplicated region for block: B:51:0x00ee  */
    /* JADX WARN: Removed duplicated region for block: B:56:0x0116  */
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public boolean m38550a(int r9, int r10, int r11, int r12, int r13, int r14, int r15, int r16, boolean r17) {
        /*
            Method dump skipped, instructions count: 293
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.core.widget.NestedScrollView.m38550a(int, int, int, int, int, int, int, int, boolean):boolean");
    }

    /* renamed from: a */
    public boolean m38545a(int i, int i2, int[] iArr, int[] iArr2, int i3) {
        return this.f1181x.m35280a(i, i2, iArr, iArr2, i3);
    }

    /* renamed from: a */
    public final boolean m38543a(Rect rect, boolean z) {
        int a = m38544a(rect);
        boolean z2 = a != 0;
        if (z2) {
            if (z) {
                scrollBy(0, a);
            } else {
                m38533b(0, a);
            }
        }
        return z2;
    }

    /* renamed from: a */
    public boolean m38542a(KeyEvent keyEvent) {
        this.f1159b.setEmpty();
        int i = 130;
        if (!m38535b()) {
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
                z2 = !keyEvent.isAltPressed() ? m38553a(33) : m38525d(33);
            } else if (keyCode == 20) {
                z2 = !keyEvent.isAltPressed() ? m38553a(130) : m38525d(130);
            } else if (keyCode != 62) {
                z2 = false;
            } else {
                if (keyEvent.isShiftPressed()) {
                    i = 33;
                }
                m38521f(i);
                z2 = false;
            }
        }
        return z2;
    }

    /* renamed from: a */
    public final boolean m38540a(View view) {
        return !m38539a(view, 0, getHeight());
    }

    /* renamed from: a */
    public final boolean m38539a(View view, int i, int i2) {
        view.getDrawingRect(this.f1159b);
        offsetDescendantRectToMyCoords(view, this.f1159b);
        return this.f1159b.bottom + i >= getScrollY() && this.f1159b.top - i <= getScrollY() + i2;
    }

    @Override // p012b.p042i.p054p.AbstractC0995n
    /* renamed from: a */
    public boolean mo35267a(View view, View view2, int i, int i2) {
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
    public final void m38534b(int i) {
        if (i == 0) {
            return;
        }
        if (this.f1170m) {
            m38533b(0, i);
        } else {
            scrollBy(0, i);
        }
    }

    /* renamed from: b */
    public final void m38533b(int i, int i2) {
        m38548a(i, i2, 250, false);
    }

    /* renamed from: b */
    public void m38531b(int i, int i2, int i3, boolean z) {
        m38548a(i - getScrollX(), i2 - getScrollY(), i3, z);
    }

    /* renamed from: b */
    public final void m38530b(View view) {
        view.getDrawingRect(this.f1159b);
        offsetDescendantRectToMyCoords(view, this.f1159b);
        int a = m38544a(this.f1159b);
        if (a != 0) {
            scrollBy(0, a);
        }
    }

    @Override // p012b.p042i.p054p.AbstractC0995n
    /* renamed from: b */
    public void mo35266b(View view, View view2, int i, int i2) {
        this.f1180w.m35260a(view, view2, i, i2);
        m38527c(2, i2);
    }

    /* renamed from: b */
    public final boolean m38535b() {
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
    public final void m38529c() {
        this.f1167j = false;
        m38518h();
        m38519g(0);
        EdgeEffect edgeEffect = this.f1161d;
        if (edgeEffect != null) {
            edgeEffect.onRelease();
            this.f1162e.onRelease();
        }
    }

    /* renamed from: c */
    public void m38528c(int i) {
        if (getChildCount() > 0) {
            this.f1160c.fling(getScrollX(), getScrollY(), 0, i, 0, 0, Integer.MIN_VALUE, MoPubNativeAdPositioning.MoPubClientPositioning.NO_REPEAT, 0, 0);
            m38537a(true);
        }
    }

    /* renamed from: c */
    public boolean m38527c(int i, int i2) {
        return this.f1181x.m35284a(i, i2);
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
    public final void m38526d() {
        if (getOverScrollMode() == 2) {
            this.f1161d = null;
            this.f1162e = null;
        } else if (this.f1161d == null) {
            Context context = getContext();
            this.f1161d = new EdgeEffect(context);
            this.f1162e = new EdgeEffect(context);
        }
    }

    /* renamed from: d */
    public boolean m38525d(int i) {
        int childCount;
        boolean z = i == 130;
        int height = getHeight();
        Rect rect = this.f1159b;
        rect.top = 0;
        rect.bottom = height;
        if (z && (childCount = getChildCount()) > 0) {
            View childAt = getChildAt(childCount - 1);
            this.f1159b.bottom = childAt.getBottom() + ((FrameLayout.LayoutParams) childAt.getLayoutParams()).bottomMargin + getPaddingBottom();
            Rect rect2 = this.f1159b;
            rect2.top = rect2.bottom - height;
        }
        Rect rect3 = this.f1159b;
        return m38551a(i, rect3.top, rect3.bottom);
    }

    @Override // android.view.ViewGroup, android.view.View
    public boolean dispatchKeyEvent(KeyEvent keyEvent) {
        return super.dispatchKeyEvent(keyEvent) || m38542a(keyEvent);
    }

    @Override // android.view.View
    public boolean dispatchNestedFling(float f, float f2, boolean z) {
        return this.f1181x.m35286a(f, f2, z);
    }

    @Override // android.view.View
    public boolean dispatchNestedPreFling(float f, float f2) {
        return this.f1181x.m35287a(f, f2);
    }

    @Override // android.view.View
    public boolean dispatchNestedPreScroll(int i, int i2, int[] iArr, int[] iArr2) {
        return m38545a(i, i2, iArr, iArr2, 0);
    }

    @Override // android.view.View
    public boolean dispatchNestedScroll(int i, int i2, int i3, int i4, int[] iArr) {
        return this.f1181x.m35283a(i, i2, i3, i4, iArr);
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
    public final void m38524e() {
        VelocityTracker velocityTracker = this.f1168k;
        if (velocityTracker == null) {
            this.f1168k = VelocityTracker.obtain();
        } else {
            velocityTracker.clear();
        }
    }

    /* renamed from: e */
    public boolean m38523e(int i) {
        return this.f1181x.m35276b(i);
    }

    /* renamed from: f */
    public final void m38522f() {
        this.f1160c = new OverScroller(getContext());
        setFocusable(true);
        setDescendantFocusability(262144);
        setWillNotDraw(false);
        ViewConfiguration viewConfiguration = ViewConfiguration.get(getContext());
        this.f1171n = viewConfiguration.getScaledTouchSlop();
        this.f1172o = viewConfiguration.getScaledMinimumFlingVelocity();
        this.f1173p = viewConfiguration.getScaledMaximumFlingVelocity();
    }

    /* renamed from: f */
    public boolean m38521f(int i) {
        boolean z = i == 130;
        int height = getHeight();
        if (z) {
            this.f1159b.top = getScrollY() + height;
            int childCount = getChildCount();
            if (childCount > 0) {
                View childAt = getChildAt(childCount - 1);
                int bottom = childAt.getBottom() + ((FrameLayout.LayoutParams) childAt.getLayoutParams()).bottomMargin + getPaddingBottom();
                Rect rect = this.f1159b;
                if (rect.top + height > bottom) {
                    rect.top = bottom - height;
                }
            }
        } else {
            this.f1159b.top = getScrollY() - height;
            Rect rect2 = this.f1159b;
            if (rect2.top < 0) {
                rect2.top = 0;
            }
        }
        Rect rect3 = this.f1159b;
        int i2 = rect3.top;
        int i3 = height + i2;
        rect3.bottom = i3;
        return m38551a(i, i2, i3);
    }

    /* renamed from: g */
    public final void m38520g() {
        if (this.f1168k == null) {
            this.f1168k = VelocityTracker.obtain();
        }
    }

    /* renamed from: g */
    public void m38519g(int i) {
        this.f1181x.m35271d(i);
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
        return this.f1180w.m35264a();
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
        if (scrollY < verticalFadingEdgeLength) {
            return scrollY / verticalFadingEdgeLength;
        }
        return 1.0f;
    }

    /* renamed from: h */
    public final void m38518h() {
        VelocityTracker velocityTracker = this.f1168k;
        if (velocityTracker != null) {
            velocityTracker.recycle();
            this.f1168k = null;
        }
    }

    @Override // android.view.View
    public boolean hasNestedScrollingParent() {
        return m38523e(0);
    }

    @Override // android.view.View, p012b.p042i.p054p.AbstractC0993l
    public boolean isNestedScrollingEnabled() {
        return this.f1181x.m35274c();
    }

    @Override // android.view.ViewGroup
    public void measureChild(View view, int i, int i2) {
        view.measure(FrameLayout.getChildMeasureSpec(i, getPaddingLeft() + getPaddingRight(), view.getLayoutParams().width), View.MeasureSpec.makeMeasureSpec(0, 0));
    }

    @Override // android.view.ViewGroup
    public void measureChildWithMargins(View view, int i, int i2, int i3, int i4) {
        ViewGroup.MarginLayoutParams marginLayoutParams = (ViewGroup.MarginLayoutParams) view.getLayoutParams();
        view.measure(FrameLayout.getChildMeasureSpec(i, getPaddingLeft() + getPaddingRight() + marginLayoutParams.leftMargin + marginLayoutParams.rightMargin + i2, marginLayoutParams.width), View.MeasureSpec.makeMeasureSpec(marginLayoutParams.topMargin + marginLayoutParams.bottomMargin, 0));
    }

    @Override // android.view.ViewGroup, android.view.View
    public void onAttachedToWindow() {
        super.onAttachedToWindow();
        this.f1165h = false;
    }

    @Override // android.view.View
    public boolean onGenericMotionEvent(MotionEvent motionEvent) {
        if ((motionEvent.getSource() & 2) == 0 || motionEvent.getAction() != 8 || this.f1167j) {
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
        if (action == 2 && this.f1167j) {
            return true;
        }
        int i = action & 255;
        if (i != 0) {
            if (i != 1) {
                if (i == 2) {
                    int i2 = this.f1174q;
                    if (i2 != -1) {
                        int findPointerIndex = motionEvent.findPointerIndex(i2);
                        if (findPointerIndex == -1) {
                            Log.e("NestedScrollView", "Invalid pointerId=" + i2 + " in onInterceptTouchEvent");
                        } else {
                            int y = (int) motionEvent.getY(findPointerIndex);
                            if (Math.abs(y - this.f1163f) > this.f1171n && (2 & getNestedScrollAxes()) == 0) {
                                this.f1167j = true;
                                this.f1163f = y;
                                m38520g();
                                this.f1168k.addMovement(motionEvent);
                                this.f1177t = 0;
                                ViewParent parent = getParent();
                                if (parent != null) {
                                    parent.requestDisallowInterceptTouchEvent(true);
                                }
                            }
                        }
                    }
                } else if (i != 3) {
                    if (i == 6) {
                        m38541a(motionEvent);
                    }
                }
            }
            this.f1167j = false;
            this.f1174q = -1;
            m38518h();
            if (this.f1160c.springBack(getScrollX(), getScrollY(), 0, 0, 0, getScrollRange())) {
                C1002u.m35254C(this);
            }
            m38519g(0);
        } else {
            int y2 = (int) motionEvent.getY();
            if (!m38552a((int) motionEvent.getX(), y2)) {
                this.f1167j = false;
                m38518h();
            } else {
                this.f1163f = y2;
                this.f1174q = motionEvent.getPointerId(0);
                m38524e();
                this.f1168k.addMovement(motionEvent);
                this.f1160c.computeScrollOffset();
                this.f1167j = !this.f1160c.isFinished();
                m38527c(2, 0);
            }
        }
        return this.f1167j;
    }

    @Override // android.widget.FrameLayout, android.view.ViewGroup, android.view.View
    public void onLayout(boolean z, int i, int i2, int i3, int i4) {
        super.onLayout(z, i, i2, i3, i4);
        int i5 = 0;
        this.f1164g = false;
        View view = this.f1166i;
        if (view != null && m38538a(view, this)) {
            m38530b(this.f1166i);
        }
        this.f1166i = null;
        if (!this.f1165h) {
            if (this.f1179v != null) {
                scrollTo(getScrollX(), this.f1179v.f1184a);
                this.f1179v = null;
            }
            if (getChildCount() > 0) {
                View childAt = getChildAt(0);
                FrameLayout.LayoutParams layoutParams = (FrameLayout.LayoutParams) childAt.getLayoutParams();
                i5 = childAt.getMeasuredHeight() + layoutParams.topMargin + layoutParams.bottomMargin;
            }
            int paddingTop = getPaddingTop();
            int paddingBottom = getPaddingBottom();
            int scrollY = getScrollY();
            int b = m38532b(scrollY, ((i4 - i2) - paddingTop) - paddingBottom, i5);
            if (b != scrollY) {
                scrollTo(getScrollX(), b);
            }
        }
        scrollTo(getScrollX(), getScrollY());
        this.f1165h = true;
    }

    @Override // android.widget.FrameLayout, android.view.View
    public void onMeasure(int i, int i2) {
        super.onMeasure(i, i2);
        if (this.f1169l && View.MeasureSpec.getMode(i2) != 0 && getChildCount() > 0) {
            View childAt = getChildAt(0);
            FrameLayout.LayoutParams layoutParams = (FrameLayout.LayoutParams) childAt.getLayoutParams();
            int measuredHeight = childAt.getMeasuredHeight();
            int measuredHeight2 = (((getMeasuredHeight() - getPaddingTop()) - getPaddingBottom()) - layoutParams.topMargin) - layoutParams.bottomMargin;
            if (measuredHeight < measuredHeight2) {
                childAt.measure(FrameLayout.getChildMeasureSpec(i, getPaddingLeft() + getPaddingRight() + layoutParams.leftMargin + layoutParams.rightMargin, layoutParams.width), View.MeasureSpec.makeMeasureSpec(measuredHeight2, 1073741824));
            }
        }
    }

    @Override // android.view.ViewGroup, android.view.ViewParent, p012b.p042i.p054p.AbstractC0997p
    public boolean onNestedFling(View view, float f, float f2, boolean z) {
        if (z) {
            return false;
        }
        dispatchNestedFling(0.0f, f2, true);
        m38528c((int) f2);
        return true;
    }

    @Override // android.view.ViewGroup, android.view.ViewParent, p012b.p042i.p054p.AbstractC0997p
    public boolean onNestedPreFling(View view, float f, float f2) {
        return dispatchNestedPreFling(f, f2);
    }

    @Override // android.view.ViewGroup, android.view.ViewParent, p012b.p042i.p054p.AbstractC0997p
    public void onNestedPreScroll(View view, int i, int i2, int[] iArr) {
        mo35268a(view, i, i2, iArr, 0);
    }

    @Override // android.view.ViewGroup, android.view.ViewParent, p012b.p042i.p054p.AbstractC0997p
    public void onNestedScroll(View view, int i, int i2, int i3, int i4) {
        m38546a(i4, 0, (int[]) null);
    }

    @Override // android.view.ViewGroup, android.view.ViewParent, p012b.p042i.p054p.AbstractC0997p
    public void onNestedScrollAccepted(View view, View view2, int i) {
        mo35266b(view, view2, i, 0);
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
        if (findNextFocus != null && !m38540a(findNextFocus)) {
            return findNextFocus.requestFocus(i2, rect);
        }
        return false;
    }

    @Override // android.view.View
    public void onRestoreInstanceState(Parcelable parcelable) {
        if (!(parcelable instanceof SavedState)) {
            super.onRestoreInstanceState(parcelable);
            return;
        }
        SavedState savedState = (SavedState) parcelable;
        super.onRestoreInstanceState(savedState.getSuperState());
        this.f1179v = savedState;
        requestLayout();
    }

    @Override // android.view.View
    public Parcelable onSaveInstanceState() {
        SavedState savedState = new SavedState(super.onSaveInstanceState());
        savedState.f1184a = getScrollY();
        return savedState;
    }

    @Override // android.view.View
    public void onScrollChanged(int i, int i2, int i3, int i4) {
        super.onScrollChanged(i, i2, i3, i4);
        AbstractC0208b bVar = this.f1183z;
        if (bVar != null) {
            bVar.mo38517a(this, i, i2, i3, i4);
        }
    }

    @Override // android.view.View
    public void onSizeChanged(int i, int i2, int i3, int i4) {
        super.onSizeChanged(i, i2, i3, i4);
        View findFocus = findFocus();
        if (findFocus != null && this != findFocus && m38539a(findFocus, 0, i4)) {
            findFocus.getDrawingRect(this.f1159b);
            offsetDescendantRectToMyCoords(findFocus, this.f1159b);
            m38534b(m38544a(this.f1159b));
        }
    }

    @Override // android.view.ViewGroup, android.view.ViewParent, p012b.p042i.p054p.AbstractC0997p
    public boolean onStartNestedScroll(View view, View view2, int i) {
        return mo35267a(view, view2, i, 0);
    }

    @Override // android.view.ViewGroup, android.view.ViewParent, p012b.p042i.p054p.AbstractC0997p
    public void onStopNestedScroll(View view) {
        mo35270a(view, 0);
    }

    @Override // android.view.View
    public boolean onTouchEvent(MotionEvent motionEvent) {
        ViewParent parent;
        m38520g();
        int actionMasked = motionEvent.getActionMasked();
        if (actionMasked == 0) {
            this.f1177t = 0;
        }
        MotionEvent obtain = MotionEvent.obtain(motionEvent);
        obtain.offsetLocation(0.0f, this.f1177t);
        if (actionMasked != 0) {
            if (actionMasked == 1) {
                VelocityTracker velocityTracker = this.f1168k;
                velocityTracker.computeCurrentVelocity(1000, this.f1173p);
                int yVelocity = (int) velocityTracker.getYVelocity(this.f1174q);
                if (Math.abs(yVelocity) >= this.f1172o) {
                    int i = -yVelocity;
                    float f = i;
                    if (!dispatchNestedPreFling(0.0f, f)) {
                        dispatchNestedFling(0.0f, f, true);
                        m38528c(i);
                    }
                } else if (this.f1160c.springBack(getScrollX(), getScrollY(), 0, 0, 0, getScrollRange())) {
                    C1002u.m35254C(this);
                }
                this.f1174q = -1;
                m38529c();
            } else if (actionMasked == 2) {
                int findPointerIndex = motionEvent.findPointerIndex(this.f1174q);
                if (findPointerIndex == -1) {
                    Log.e("NestedScrollView", "Invalid pointerId=" + this.f1174q + " in onTouchEvent");
                } else {
                    int y = (int) motionEvent.getY(findPointerIndex);
                    int i2 = this.f1163f - y;
                    int i3 = i2;
                    if (!this.f1167j) {
                        i3 = i2;
                        if (Math.abs(i2) > this.f1171n) {
                            ViewParent parent2 = getParent();
                            if (parent2 != null) {
                                parent2.requestDisallowInterceptTouchEvent(true);
                            }
                            this.f1167j = true;
                            i3 = i2 > 0 ? i2 - this.f1171n : i2 + this.f1171n;
                        }
                    }
                    if (this.f1167j) {
                        int i4 = i3;
                        if (m38545a(0, i3, this.f1176s, this.f1175r, 0)) {
                            i4 = i3 - this.f1176s[1];
                            this.f1177t += this.f1175r[1];
                        }
                        this.f1163f = y - this.f1175r[1];
                        int scrollY = getScrollY();
                        int scrollRange = getScrollRange();
                        int overScrollMode = getOverScrollMode();
                        boolean z = overScrollMode == 0 || (overScrollMode == 1 && scrollRange > 0);
                        if (m38550a(0, i4, 0, getScrollY(), 0, scrollRange, 0, 0, true) && !m38523e(0)) {
                            this.f1168k.clear();
                        }
                        int scrollY2 = getScrollY() - scrollY;
                        int[] iArr = this.f1176s;
                        iArr[1] = 0;
                        m38549a(0, scrollY2, 0, i4 - scrollY2, this.f1175r, 0, iArr);
                        int i5 = this.f1163f;
                        int[] iArr2 = this.f1175r;
                        this.f1163f = i5 - iArr2[1];
                        this.f1177t += iArr2[1];
                        if (z) {
                            int i6 = i4 - this.f1176s[1];
                            m38526d();
                            int i7 = scrollY + i6;
                            if (i7 < 0) {
                                C1027d.m35116a(this.f1161d, i6 / getHeight(), motionEvent.getX(findPointerIndex) / getWidth());
                                if (!this.f1162e.isFinished()) {
                                    this.f1162e.onRelease();
                                }
                            } else if (i7 > scrollRange) {
                                C1027d.m35116a(this.f1162e, i6 / getHeight(), 1.0f - (motionEvent.getX(findPointerIndex) / getWidth()));
                                if (!this.f1161d.isFinished()) {
                                    this.f1161d.onRelease();
                                }
                            }
                            EdgeEffect edgeEffect = this.f1161d;
                            if (edgeEffect != null && (!edgeEffect.isFinished() || !this.f1162e.isFinished())) {
                                C1002u.m35254C(this);
                            }
                        }
                    }
                }
            } else if (actionMasked == 3) {
                if (this.f1167j && getChildCount() > 0 && this.f1160c.springBack(getScrollX(), getScrollY(), 0, 0, 0, getScrollRange())) {
                    C1002u.m35254C(this);
                }
                this.f1174q = -1;
                m38529c();
            } else if (actionMasked == 5) {
                int actionIndex = motionEvent.getActionIndex();
                this.f1163f = (int) motionEvent.getY(actionIndex);
                this.f1174q = motionEvent.getPointerId(actionIndex);
            } else if (actionMasked == 6) {
                m38541a(motionEvent);
                this.f1163f = (int) motionEvent.getY(motionEvent.findPointerIndex(this.f1174q));
            }
        } else if (getChildCount() == 0) {
            return false;
        } else {
            boolean z2 = !this.f1160c.isFinished();
            this.f1167j = z2;
            if (z2 && (parent = getParent()) != null) {
                parent.requestDisallowInterceptTouchEvent(true);
            }
            if (!this.f1160c.isFinished()) {
                m38554a();
            }
            this.f1163f = (int) motionEvent.getY();
            this.f1174q = motionEvent.getPointerId(0);
            m38527c(2, 0);
        }
        VelocityTracker velocityTracker2 = this.f1168k;
        if (velocityTracker2 != null) {
            velocityTracker2.addMovement(obtain);
        }
        obtain.recycle();
        return true;
    }

    @Override // android.view.ViewGroup, android.view.ViewParent
    public void requestChildFocus(View view, View view2) {
        if (!this.f1164g) {
            m38530b(view2);
        } else {
            this.f1166i = view2;
        }
        super.requestChildFocus(view, view2);
    }

    @Override // android.view.ViewGroup, android.view.ViewParent
    public boolean requestChildRectangleOnScreen(View view, Rect rect, boolean z) {
        rect.offset(view.getLeft() - view.getScrollX(), view.getTop() - view.getScrollY());
        return m38543a(rect, z);
    }

    @Override // android.view.ViewGroup, android.view.ViewParent
    public void requestDisallowInterceptTouchEvent(boolean z) {
        if (z) {
            m38518h();
        }
        super.requestDisallowInterceptTouchEvent(z);
    }

    @Override // android.view.View, android.view.ViewParent
    public void requestLayout() {
        this.f1164g = true;
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
            int b = m38532b(i, (width - paddingLeft) - paddingRight, width2 + i3 + i4);
            int b2 = m38532b(i2, (height - paddingTop) - paddingBottom, height2 + i5 + i6);
            if (b != getScrollX() || b2 != getScrollY()) {
                super.scrollTo(b, b2);
            }
        }
    }

    public void setFillViewport(boolean z) {
        if (z != this.f1169l) {
            this.f1169l = z;
            requestLayout();
        }
    }

    @Override // android.view.View
    public void setNestedScrollingEnabled(boolean z) {
        this.f1181x.m35278a(z);
    }

    public void setOnScrollChangeListener(AbstractC0208b bVar) {
        this.f1183z = bVar;
    }

    public void setSmoothScrollingEnabled(boolean z) {
        this.f1170m = z;
    }

    @Override // android.widget.FrameLayout, android.view.ViewGroup
    public boolean shouldDelayChildPressedState() {
        return true;
    }

    @Override // android.view.View
    public boolean startNestedScroll(int i) {
        return m38527c(i, 0);
    }

    @Override // android.view.View, p012b.p042i.p054p.AbstractC0993l
    public void stopNestedScroll() {
        m38519g(0);
    }
}

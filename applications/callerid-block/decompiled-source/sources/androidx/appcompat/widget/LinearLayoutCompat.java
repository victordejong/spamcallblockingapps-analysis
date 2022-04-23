package androidx.appcompat.widget;

import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.Canvas;
import android.graphics.drawable.Drawable;
import android.util.AttributeSet;
import android.view.View;
import android.view.ViewGroup;
import android.view.accessibility.AccessibilityEvent;
import android.view.accessibility.AccessibilityNodeInfo;
import d.a.j;
import d.h.m.d;
import d.h.m.t;
/* loaded from: classes-dex2jar.jar:androidx/appcompat/widget/LinearLayoutCompat.class */
public class LinearLayoutCompat extends ViewGroup {

    /* renamed from: b */
    private boolean f415b;

    /* renamed from: c */
    private int f416c;

    /* renamed from: d */
    private int f417d;

    /* renamed from: e */
    private int f418e;

    /* renamed from: f */
    private int f419f;

    /* renamed from: g */
    private int f420g;

    /* renamed from: h */
    private float f421h;

    /* renamed from: i */
    private boolean f422i;

    /* renamed from: j */
    private int[] f423j;

    /* renamed from: k */
    private int[] f424k;

    /* renamed from: l */
    private Drawable f425l;

    /* renamed from: m */
    private int f426m;

    /* renamed from: n */
    private int f427n;

    /* renamed from: o */
    private int f428o;

    /* renamed from: p */
    private int f429p;

    /* loaded from: classes-dex2jar.jar:androidx/appcompat/widget/LinearLayoutCompat$LayoutParams.class */
    public static class LayoutParams extends ViewGroup.MarginLayoutParams {

        /* renamed from: a */
        public float f430a;

        /* renamed from: b */
        public int f431b;

        public LayoutParams(int i, int i2) {
            super(i, i2);
            this.f431b = -1;
            this.f430a = 0.0f;
        }

        public LayoutParams(Context context, AttributeSet attributeSet) {
            super(context, attributeSet);
            this.f431b = -1;
            TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, j.LinearLayoutCompat_Layout);
            this.f430a = obtainStyledAttributes.getFloat(j.LinearLayoutCompat_Layout_android_layout_weight, 0.0f);
            this.f431b = obtainStyledAttributes.getInt(j.LinearLayoutCompat_Layout_android_layout_gravity, -1);
            obtainStyledAttributes.recycle();
        }

        public LayoutParams(ViewGroup.LayoutParams layoutParams) {
            super(layoutParams);
            this.f431b = -1;
        }
    }

    public LinearLayoutCompat(Context context) {
        this(context, null);
    }

    public LinearLayoutCompat(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    public LinearLayoutCompat(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        this.f415b = true;
        this.f416c = -1;
        this.f417d = 0;
        this.f419f = 8388659;
        int[] iArr = j.LinearLayoutCompat;
        C0127d0 v = C0127d0.m14618v(context, attributeSet, iArr, i, 0);
        t.l0(this, context, iArr, attributeSet, v.m14622r(), i, 0);
        int k = v.m14629k(j.LinearLayoutCompat_android_orientation, -1);
        if (k >= 0) {
            setOrientation(k);
        }
        int k2 = v.m14629k(j.LinearLayoutCompat_android_gravity, -1);
        if (k2 >= 0) {
            setGravity(k2);
        }
        boolean a = v.m14639a(j.LinearLayoutCompat_android_baselineAligned, true);
        if (!a) {
            setBaselineAligned(a);
        }
        this.f421h = v.m14631i(j.LinearLayoutCompat_android_weightSum, -1.0f);
        this.f416c = v.m14629k(j.LinearLayoutCompat_android_baselineAlignedChildIndex, -1);
        this.f422i = v.m14639a(j.LinearLayoutCompat_measureWithLargestChild, false);
        setDividerDrawable(v.m14633g(j.LinearLayoutCompat_divider));
        this.f428o = v.m14629k(j.LinearLayoutCompat_showDividers, 0);
        this.f429p = v.m14634f(j.LinearLayoutCompat_dividerPadding, 0);
        v.m14617w();
    }

    /* renamed from: A */
    private void m14761A(View view, int i, int i2, int i3, int i4) {
        view.layout(i, i2, i3 + i, i4 + i2);
    }

    /* renamed from: k */
    private void m14756k(int i, int i2) {
        int makeMeasureSpec = View.MeasureSpec.makeMeasureSpec(getMeasuredHeight(), 1073741824);
        for (int i3 = 0; i3 < i; i3++) {
            View s = m14748s(i3);
            if (s.getVisibility() != 8) {
                LayoutParams layoutParams = (LayoutParams) s.getLayoutParams();
                if (((ViewGroup.MarginLayoutParams) layoutParams).height == -1) {
                    int i4 = ((ViewGroup.MarginLayoutParams) layoutParams).width;
                    ((ViewGroup.MarginLayoutParams) layoutParams).width = s.getMeasuredWidth();
                    measureChildWithMargins(s, i2, 0, makeMeasureSpec, 0);
                    ((ViewGroup.MarginLayoutParams) layoutParams).width = i4;
                }
            }
        }
    }

    /* renamed from: l */
    private void m14755l(int i, int i2) {
        int makeMeasureSpec = View.MeasureSpec.makeMeasureSpec(getMeasuredWidth(), 1073741824);
        for (int i3 = 0; i3 < i; i3++) {
            View s = m14748s(i3);
            if (s.getVisibility() != 8) {
                LayoutParams layoutParams = (LayoutParams) s.getLayoutParams();
                if (((ViewGroup.MarginLayoutParams) layoutParams).width == -1) {
                    int i4 = ((ViewGroup.MarginLayoutParams) layoutParams).height;
                    ((ViewGroup.MarginLayoutParams) layoutParams).height = s.getMeasuredHeight();
                    measureChildWithMargins(s, makeMeasureSpec, 0, i2, 0);
                    ((ViewGroup.MarginLayoutParams) layoutParams).height = i4;
                }
            }
        }
    }

    @Override // android.view.ViewGroup
    protected boolean checkLayoutParams(ViewGroup.LayoutParams layoutParams) {
        return layoutParams instanceof LayoutParams;
    }

    /* renamed from: g */
    void m14760g(Canvas canvas) {
        int i;
        int i2;
        int i3;
        int virtualChildCount = getVirtualChildCount();
        boolean b = C0139j0.m14565b(this);
        for (int i4 = 0; i4 < virtualChildCount; i4++) {
            View s = m14748s(i4);
            if (!(s == null || s.getVisibility() == 8 || !m14747t(i4))) {
                LayoutParams layoutParams = (LayoutParams) s.getLayoutParams();
                m14757j(canvas, b ? s.getRight() + ((ViewGroup.MarginLayoutParams) layoutParams).rightMargin : (s.getLeft() - ((ViewGroup.MarginLayoutParams) layoutParams).leftMargin) - this.f426m);
            }
        }
        if (m14747t(virtualChildCount)) {
            View s2 = m14748s(virtualChildCount - 1);
            if (s2 != null) {
                LayoutParams layoutParams2 = (LayoutParams) s2.getLayoutParams();
                if (b) {
                    i3 = s2.getLeft();
                    i2 = ((ViewGroup.MarginLayoutParams) layoutParams2).leftMargin;
                    i = (i3 - i2) - this.f426m;
                    m14757j(canvas, i);
                }
                i = s2.getRight() + ((ViewGroup.MarginLayoutParams) layoutParams2).rightMargin;
                m14757j(canvas, i);
            } else if (b) {
                i = getPaddingLeft();
                m14757j(canvas, i);
            } else {
                i3 = getWidth();
                i2 = getPaddingRight();
                i = (i3 - i2) - this.f426m;
                m14757j(canvas, i);
            }
        }
    }

    @Override // android.view.View
    public int getBaseline() {
        if (this.f416c < 0) {
            return super.getBaseline();
        }
        int childCount = getChildCount();
        int i = this.f416c;
        if (childCount > i) {
            View childAt = getChildAt(i);
            int baseline = childAt.getBaseline();
            if (baseline != -1) {
                int i2 = this.f417d;
                int i3 = i2;
                if (this.f418e == 1) {
                    int i4 = this.f419f & 112;
                    i3 = i2;
                    if (i4 != 48) {
                        i3 = i4 != 16 ? i4 != 80 ? i2 : ((getBottom() - getTop()) - getPaddingBottom()) - this.f420g : i2 + (((((getBottom() - getTop()) - getPaddingTop()) - getPaddingBottom()) - this.f420g) / 2);
                    }
                }
                return i3 + ((ViewGroup.MarginLayoutParams) ((LayoutParams) childAt.getLayoutParams())).topMargin + baseline;
            } else if (this.f416c == 0) {
                return -1;
            } else {
                throw new RuntimeException("mBaselineAlignedChildIndex of LinearLayout points to a View that doesn't know how to get its baseline.");
            }
        } else {
            throw new RuntimeException("mBaselineAlignedChildIndex of LinearLayout set to an index that is out of bounds.");
        }
    }

    public int getBaselineAlignedChildIndex() {
        return this.f416c;
    }

    public Drawable getDividerDrawable() {
        return this.f425l;
    }

    public int getDividerPadding() {
        return this.f429p;
    }

    public int getDividerWidth() {
        return this.f426m;
    }

    public int getGravity() {
        return this.f419f;
    }

    public int getOrientation() {
        return this.f418e;
    }

    public int getShowDividers() {
        return this.f428o;
    }

    int getVirtualChildCount() {
        return getChildCount();
    }

    public float getWeightSum() {
        return this.f421h;
    }

    /* renamed from: h */
    void m14759h(Canvas canvas) {
        int virtualChildCount = getVirtualChildCount();
        for (int i = 0; i < virtualChildCount; i++) {
            View s = m14748s(i);
            if (!(s == null || s.getVisibility() == 8 || !m14747t(i))) {
                m14758i(canvas, (s.getTop() - ((ViewGroup.MarginLayoutParams) ((LayoutParams) s.getLayoutParams())).topMargin) - this.f427n);
            }
        }
        if (m14747t(virtualChildCount)) {
            View s2 = m14748s(virtualChildCount - 1);
            m14758i(canvas, s2 == null ? (getHeight() - getPaddingBottom()) - this.f427n : s2.getBottom() + ((ViewGroup.MarginLayoutParams) ((LayoutParams) s2.getLayoutParams())).bottomMargin);
        }
    }

    /* renamed from: i */
    void m14758i(Canvas canvas, int i) {
        this.f425l.setBounds(getPaddingLeft() + this.f429p, i, (getWidth() - getPaddingRight()) - this.f429p, this.f427n + i);
        this.f425l.draw(canvas);
    }

    /* renamed from: j */
    void m14757j(Canvas canvas, int i) {
        this.f425l.setBounds(i, getPaddingTop() + this.f429p, this.f426m + i, (getHeight() - getPaddingBottom()) - this.f429p);
        this.f425l.draw(canvas);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    /* renamed from: m */
    public LayoutParams generateDefaultLayoutParams() {
        int i = this.f418e;
        if (i == 0) {
            return new LayoutParams(-2, -2);
        }
        if (i == 1) {
            return new LayoutParams(-1, -2);
        }
        return null;
    }

    /* renamed from: n */
    public LayoutParams generateLayoutParams(AttributeSet attributeSet) {
        return new LayoutParams(getContext(), attributeSet);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    /* renamed from: o */
    public LayoutParams generateLayoutParams(ViewGroup.LayoutParams layoutParams) {
        return new LayoutParams(layoutParams);
    }

    @Override // android.view.View
    protected void onDraw(Canvas canvas) {
        if (this.f425l != null) {
            if (this.f418e == 1) {
                m14759h(canvas);
            } else {
                m14760g(canvas);
            }
        }
    }

    @Override // android.view.View
    public void onInitializeAccessibilityEvent(AccessibilityEvent accessibilityEvent) {
        super.onInitializeAccessibilityEvent(accessibilityEvent);
        accessibilityEvent.setClassName("androidx.appcompat.widget.LinearLayoutCompat");
    }

    @Override // android.view.View
    public void onInitializeAccessibilityNodeInfo(AccessibilityNodeInfo accessibilityNodeInfo) {
        super.onInitializeAccessibilityNodeInfo(accessibilityNodeInfo);
        accessibilityNodeInfo.setClassName("androidx.appcompat.widget.LinearLayoutCompat");
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void onLayout(boolean z, int i, int i2, int i3, int i4) {
        if (this.f418e == 1) {
            m14745v(i, i2, i3, i4);
        } else {
            m14746u(i, i2, i3, i4);
        }
    }

    @Override // android.view.View
    protected void onMeasure(int i, int i2) {
        if (this.f418e == 1) {
            m14741z(i, i2);
        } else {
            m14743x(i, i2);
        }
    }

    /* renamed from: p */
    int m14751p(View view, int i) {
        return 0;
    }

    /* renamed from: q */
    int m14750q(View view) {
        return 0;
    }

    /* renamed from: r */
    int m14749r(View view) {
        return 0;
    }

    /* renamed from: s */
    View m14748s(int i) {
        return getChildAt(i);
    }

    public void setBaselineAligned(boolean z) {
        this.f415b = z;
    }

    public void setBaselineAlignedChildIndex(int i) {
        if (i < 0 || i >= getChildCount()) {
            throw new IllegalArgumentException("base aligned child index out of range (0, " + getChildCount() + ")");
        }
        this.f416c = i;
    }

    public void setDividerDrawable(Drawable drawable) {
        if (drawable != this.f425l) {
            this.f425l = drawable;
            boolean z = false;
            if (drawable != null) {
                this.f426m = drawable.getIntrinsicWidth();
                this.f427n = drawable.getIntrinsicHeight();
            } else {
                this.f426m = 0;
                this.f427n = 0;
            }
            if (drawable == null) {
                z = true;
            }
            setWillNotDraw(z);
            requestLayout();
        }
    }

    public void setDividerPadding(int i) {
        this.f429p = i;
    }

    public void setGravity(int i) {
        if (this.f419f != i) {
            int i2 = i;
            if ((8388615 & i) == 0) {
                i2 = i | 8388611;
            }
            int i3 = i2;
            if ((i2 & 112) == 0) {
                i3 = i2 | 48;
            }
            this.f419f = i3;
            requestLayout();
        }
    }

    public void setHorizontalGravity(int i) {
        int i2 = i & 8388615;
        int i3 = this.f419f;
        if ((8388615 & i3) != i2) {
            this.f419f = i2 | ((-8388616) & i3);
            requestLayout();
        }
    }

    public void setMeasureWithLargestChildEnabled(boolean z) {
        this.f422i = z;
    }

    public void setOrientation(int i) {
        if (this.f418e != i) {
            this.f418e = i;
            requestLayout();
        }
    }

    public void setShowDividers(int i) {
        if (i != this.f428o) {
            requestLayout();
        }
        this.f428o = i;
    }

    public void setVerticalGravity(int i) {
        int i2 = i & 112;
        int i3 = this.f419f;
        if ((i3 & 112) != i2) {
            this.f419f = i2 | (i3 & (-113));
            requestLayout();
        }
    }

    public void setWeightSum(float f) {
        this.f421h = Math.max(0.0f, f);
    }

    @Override // android.view.ViewGroup
    public boolean shouldDelayChildPressedState() {
        return false;
    }

    /* renamed from: t */
    protected boolean m14747t(int i) {
        boolean z = false;
        boolean z2 = false;
        if (i == 0) {
            if ((this.f428o & 1) != 0) {
                z2 = true;
            }
            return z2;
        } else if (i == getChildCount()) {
            if ((this.f428o & 4) != 0) {
                z = true;
            }
            return z;
        } else {
            boolean z3 = false;
            if ((this.f428o & 2) != 0) {
                while (true) {
                    i--;
                    z3 = false;
                    if (i < 0) {
                        break;
                    } else if (getChildAt(i).getVisibility() != 8) {
                        z3 = true;
                        break;
                    }
                }
            }
            return z3;
        }
    }

    /* renamed from: u */
    void m14746u(int i, int i2, int i3, int i4) {
        int i5;
        int i6;
        int i7;
        boolean b = C0139j0.m14565b(this);
        int paddingTop = getPaddingTop();
        int i8 = i4 - i2;
        int paddingBottom = getPaddingBottom();
        int paddingBottom2 = getPaddingBottom();
        int virtualChildCount = getVirtualChildCount();
        int i9 = this.f419f;
        int i10 = i9 & 112;
        boolean z = this.f415b;
        int[] iArr = this.f423j;
        int[] iArr2 = this.f424k;
        int b2 = d.b(8388615 & i9, t.B(this));
        int paddingLeft = b2 != 1 ? b2 != 5 ? getPaddingLeft() : ((getPaddingLeft() + i3) - i) - this.f420g : getPaddingLeft() + (((i3 - i) - this.f420g) / 2);
        if (b) {
            i6 = virtualChildCount - 1;
            i5 = -1;
        } else {
            i6 = 0;
            i5 = 1;
        }
        int i11 = 0;
        while (i11 < virtualChildCount) {
            int i12 = i6 + (i5 * i11);
            View s = m14748s(i12);
            if (s == null) {
                paddingLeft += m14742y(i12);
            } else if (s.getVisibility() != 8) {
                int measuredWidth = s.getMeasuredWidth();
                int measuredHeight = s.getMeasuredHeight();
                LayoutParams layoutParams = (LayoutParams) s.getLayoutParams();
                int baseline = (!z || ((ViewGroup.MarginLayoutParams) layoutParams).height == -1) ? -1 : s.getBaseline();
                int i13 = layoutParams.f431b;
                i10 = i13;
                if (i13 < 0) {
                }
                int i14 = i10 & 112;
                if (i14 == 16) {
                    i7 = ((((((i8 - paddingTop) - paddingBottom2) - measuredHeight) / 2) + paddingTop) + ((ViewGroup.MarginLayoutParams) layoutParams).topMargin) - ((ViewGroup.MarginLayoutParams) layoutParams).bottomMargin;
                } else if (i14 == 48) {
                    int i15 = ((ViewGroup.MarginLayoutParams) layoutParams).topMargin + paddingTop;
                    i7 = i15;
                    if (baseline != -1) {
                        i7 = i15 + (iArr[1] - baseline);
                    }
                } else if (i14 != 80) {
                    i7 = paddingTop;
                } else {
                    int i16 = ((i8 - paddingBottom) - measuredHeight) - ((ViewGroup.MarginLayoutParams) layoutParams).bottomMargin;
                    i7 = i16;
                    if (baseline != -1) {
                        i7 = i16 - (iArr2[2] - (s.getMeasuredHeight() - baseline));
                    }
                }
                int i17 = paddingLeft;
                if (m14747t(i12)) {
                    i17 = paddingLeft + this.f426m;
                }
                int i18 = ((ViewGroup.MarginLayoutParams) layoutParams).leftMargin + i17;
                m14761A(s, i18 + m14750q(s), i7, measuredWidth, measuredHeight);
                int i19 = ((ViewGroup.MarginLayoutParams) layoutParams).rightMargin;
                int r = m14749r(s);
                i11 += m14751p(s, i12);
                paddingLeft = i18 + measuredWidth + i19 + r;
            }
            i11++;
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:30:0x0117  */
    /* renamed from: v */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    void m14745v(int r8, int r9, int r10, int r11) {
        /*
            Method dump skipped, instructions count: 361
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.appcompat.widget.LinearLayoutCompat.m14745v(int, int, int, int):void");
    }

    /* renamed from: w */
    void m14744w(View view, int i, int i2, int i3, int i4, int i5) {
        measureChildWithMargins(view, i2, i3, i4, i5);
    }

    /* JADX WARN: Code restructure failed: missing block: B:109:0x03e1, code lost:
        if (r0 == 0) goto L_0x03e4;
     */
    /* JADX WARN: Code restructure failed: missing block: B:166:0x062e, code lost:
        if (r0 < 0) goto L_0x0631;
     */
    /* JADX WARN: Removed duplicated region for block: B:70:0x029f  */
    /* JADX WARN: Removed duplicated region for block: B:80:0x02fe  */
    /* JADX WARN: Removed duplicated region for block: B:84:0x0316  */
    /* renamed from: x */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    void m14743x(int r9, int r10) {
        /*
            Method dump skipped, instructions count: 2118
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.appcompat.widget.LinearLayoutCompat.m14743x(int, int):void");
    }

    /* renamed from: y */
    int m14742y(int i) {
        return 0;
    }

    /* JADX WARN: Code restructure failed: missing block: B:135:0x0496, code lost:
        if (r0 < 0) goto L_0x0499;
     */
    /* renamed from: z */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    void m14741z(int r9, int r10) {
        /*
            Method dump skipped, instructions count: 1463
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.appcompat.widget.LinearLayoutCompat.m14741z(int, int):void");
    }
}

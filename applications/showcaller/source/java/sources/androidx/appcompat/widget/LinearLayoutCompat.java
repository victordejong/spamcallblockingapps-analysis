package androidx.appcompat.widget;

import android.content.Context;
import android.graphics.Canvas;
import android.graphics.drawable.Drawable;
import android.util.AttributeSet;
import android.view.View;
import android.view.ViewGroup;
import android.view.accessibility.AccessibilityEvent;
import android.view.accessibility.AccessibilityNodeInfo;
import android.widget.LinearLayout;
import p020b.p021a.C1432j;
import p020b.p041h.p050l.C1614e;
import p020b.p041h.p050l.C1679w;
/* loaded from: classes-dex2jar.jar:androidx/appcompat/widget/LinearLayoutCompat.class */
public class LinearLayoutCompat extends ViewGroup {

    /* renamed from: d */
    private boolean f960d;

    /* renamed from: e */
    private int f961e;

    /* renamed from: f */
    private int f962f;

    /* renamed from: g */
    private int f963g;

    /* renamed from: h */
    private int f964h;

    /* renamed from: i */
    private int f965i;

    /* renamed from: j */
    private float f966j;

    /* renamed from: k */
    private boolean f967k;

    /* renamed from: l */
    private int[] f968l;

    /* renamed from: m */
    private int[] f969m;

    /* renamed from: n */
    private Drawable f970n;

    /* renamed from: o */
    private int f971o;

    /* renamed from: p */
    private int f972p;

    /* renamed from: q */
    private int f973q;

    /* renamed from: r */
    private int f974r;

    /* loaded from: classes-dex2jar.jar:androidx/appcompat/widget/LinearLayoutCompat$LayoutParams.class */
    public static class LayoutParams extends LinearLayout.LayoutParams {
        public LayoutParams(int i, int i2) {
            super(i, i2);
        }

        public LayoutParams(Context context, AttributeSet attributeSet) {
            super(context, attributeSet);
        }

        public LayoutParams(ViewGroup.LayoutParams layoutParams) {
            super(layoutParams);
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
        this.f960d = true;
        this.f961e = -1;
        this.f962f = 0;
        this.f964h = 8388659;
        int[] iArr = C1432j.LinearLayoutCompat;
        C0286e0 m34946v = C0286e0.m34946v(context, attributeSet, iArr, i, 0);
        C1679w.m29277p0(this, context, iArr, attributeSet, m34946v.m34950r(), i, 0);
        int m34957k = m34946v.m34957k(C1432j.LinearLayoutCompat_android_orientation, -1);
        if (m34957k >= 0) {
            setOrientation(m34957k);
        }
        int m34957k2 = m34946v.m34957k(C1432j.LinearLayoutCompat_android_gravity, -1);
        if (m34957k2 >= 0) {
            setGravity(m34957k2);
        }
        boolean m34967a = m34946v.m34967a(C1432j.LinearLayoutCompat_android_baselineAligned, true);
        if (!m34967a) {
            setBaselineAligned(m34967a);
        }
        this.f966j = m34946v.m34959i(C1432j.LinearLayoutCompat_android_weightSum, -1.0f);
        this.f961e = m34946v.m34957k(C1432j.LinearLayoutCompat_android_baselineAlignedChildIndex, -1);
        this.f967k = m34946v.m34967a(C1432j.LinearLayoutCompat_measureWithLargestChild, false);
        setDividerDrawable(m34946v.m34961g(C1432j.LinearLayoutCompat_divider));
        this.f973q = m34946v.m34957k(C1432j.LinearLayoutCompat_showDividers, 0);
        this.f974r = m34946v.m34962f(C1432j.LinearLayoutCompat_dividerPadding, 0);
        m34946v.m34945w();
    }

    /* renamed from: A */
    private void m35176A(View view, int i, int i2, int i3, int i4) {
        view.layout(i, i2, i3 + i, i4 + i2);
    }

    /* renamed from: k */
    private void m35171k(int i, int i2) {
        int makeMeasureSpec = View.MeasureSpec.makeMeasureSpec(getMeasuredHeight(), 1073741824);
        for (int i3 = 0; i3 < i; i3++) {
            View m35163s = m35163s(i3);
            if (m35163s.getVisibility() != 8) {
                LayoutParams layoutParams = (LayoutParams) m35163s.getLayoutParams();
                if (((LinearLayout.LayoutParams) layoutParams).height == -1) {
                    int i4 = ((LinearLayout.LayoutParams) layoutParams).width;
                    ((LinearLayout.LayoutParams) layoutParams).width = m35163s.getMeasuredWidth();
                    measureChildWithMargins(m35163s, i2, 0, makeMeasureSpec, 0);
                    ((LinearLayout.LayoutParams) layoutParams).width = i4;
                }
            }
        }
    }

    /* renamed from: l */
    private void m35170l(int i, int i2) {
        int makeMeasureSpec = View.MeasureSpec.makeMeasureSpec(getMeasuredWidth(), 1073741824);
        for (int i3 = 0; i3 < i; i3++) {
            View m35163s = m35163s(i3);
            if (m35163s.getVisibility() != 8) {
                LayoutParams layoutParams = (LayoutParams) m35163s.getLayoutParams();
                if (((LinearLayout.LayoutParams) layoutParams).width == -1) {
                    int i4 = ((LinearLayout.LayoutParams) layoutParams).height;
                    ((LinearLayout.LayoutParams) layoutParams).height = m35163s.getMeasuredHeight();
                    measureChildWithMargins(m35163s, makeMeasureSpec, 0, i2, 0);
                    ((LinearLayout.LayoutParams) layoutParams).height = i4;
                }
            }
        }
    }

    @Override // android.view.ViewGroup
    protected boolean checkLayoutParams(ViewGroup.LayoutParams layoutParams) {
        return layoutParams instanceof LayoutParams;
    }

    /* renamed from: g */
    void m35175g(Canvas canvas) {
        int i;
        int i2;
        int i3;
        int virtualChildCount = getVirtualChildCount();
        boolean m34869b = C0305k0.m34869b(this);
        for (int i4 = 0; i4 < virtualChildCount; i4++) {
            View m35163s = m35163s(i4);
            if (m35163s != null && m35163s.getVisibility() != 8 && m35162t(i4)) {
                LayoutParams layoutParams = (LayoutParams) m35163s.getLayoutParams();
                m35172j(canvas, m34869b ? m35163s.getRight() + ((LinearLayout.LayoutParams) layoutParams).rightMargin : (m35163s.getLeft() - ((LinearLayout.LayoutParams) layoutParams).leftMargin) - this.f971o);
            }
        }
        if (m35162t(virtualChildCount)) {
            View m35163s2 = m35163s(virtualChildCount - 1);
            if (m35163s2 == null) {
                if (m34869b) {
                    i = getPaddingLeft();
                    m35172j(canvas, i);
                }
                i3 = getWidth() - getPaddingRight();
                i2 = this.f971o;
                i = i3 - i2;
                m35172j(canvas, i);
            }
            LayoutParams layoutParams2 = (LayoutParams) m35163s2.getLayoutParams();
            if (!m34869b) {
                i = m35163s2.getRight() + ((LinearLayout.LayoutParams) layoutParams2).rightMargin;
                m35172j(canvas, i);
            }
            i3 = m35163s2.getLeft() - ((LinearLayout.LayoutParams) layoutParams2).leftMargin;
            i2 = this.f971o;
            i = i3 - i2;
            m35172j(canvas, i);
        }
    }

    @Override // android.view.View
    public int getBaseline() {
        if (this.f961e < 0) {
            return super.getBaseline();
        }
        int childCount = getChildCount();
        int i = this.f961e;
        if (childCount <= i) {
            throw new RuntimeException("mBaselineAlignedChildIndex of LinearLayout set to an index that is out of bounds.");
        }
        View childAt = getChildAt(i);
        int baseline = childAt.getBaseline();
        if (baseline == -1) {
            if (this.f961e != 0) {
                throw new RuntimeException("mBaselineAlignedChildIndex of LinearLayout points to a View that doesn't know how to get its baseline.");
            }
            return -1;
        }
        int i2 = this.f962f;
        int i3 = i2;
        if (this.f963g == 1) {
            int i4 = this.f964h & 112;
            i3 = i2;
            if (i4 != 48) {
                i3 = i4 != 16 ? i4 != 80 ? i2 : ((getBottom() - getTop()) - getPaddingBottom()) - this.f965i : i2 + (((((getBottom() - getTop()) - getPaddingTop()) - getPaddingBottom()) - this.f965i) / 2);
            }
        }
        return i3 + ((LinearLayout.LayoutParams) ((LayoutParams) childAt.getLayoutParams())).topMargin + baseline;
    }

    public int getBaselineAlignedChildIndex() {
        return this.f961e;
    }

    public Drawable getDividerDrawable() {
        return this.f970n;
    }

    public int getDividerPadding() {
        return this.f974r;
    }

    public int getDividerWidth() {
        return this.f971o;
    }

    public int getGravity() {
        return this.f964h;
    }

    public int getOrientation() {
        return this.f963g;
    }

    public int getShowDividers() {
        return this.f973q;
    }

    int getVirtualChildCount() {
        return getChildCount();
    }

    public float getWeightSum() {
        return this.f966j;
    }

    /* renamed from: h */
    void m35174h(Canvas canvas) {
        int virtualChildCount = getVirtualChildCount();
        for (int i = 0; i < virtualChildCount; i++) {
            View m35163s = m35163s(i);
            if (m35163s != null && m35163s.getVisibility() != 8 && m35162t(i)) {
                m35173i(canvas, (m35163s.getTop() - ((LinearLayout.LayoutParams) ((LayoutParams) m35163s.getLayoutParams())).topMargin) - this.f972p);
            }
        }
        if (m35162t(virtualChildCount)) {
            View m35163s2 = m35163s(virtualChildCount - 1);
            m35173i(canvas, m35163s2 == null ? (getHeight() - getPaddingBottom()) - this.f972p : m35163s2.getBottom() + ((LinearLayout.LayoutParams) ((LayoutParams) m35163s2.getLayoutParams())).bottomMargin);
        }
    }

    /* renamed from: i */
    void m35173i(Canvas canvas, int i) {
        this.f970n.setBounds(getPaddingLeft() + this.f974r, i, (getWidth() - getPaddingRight()) - this.f974r, this.f972p + i);
        this.f970n.draw(canvas);
    }

    /* renamed from: j */
    void m35172j(Canvas canvas, int i) {
        this.f970n.setBounds(i, getPaddingTop() + this.f974r, this.f971o + i, (getHeight() - getPaddingBottom()) - this.f974r);
        this.f970n.draw(canvas);
    }

    /* renamed from: m */
    public LayoutParams generateDefaultLayoutParams() {
        int i = this.f963g;
        if (i == 0) {
            return new LayoutParams(-2, -2);
        }
        if (i != 1) {
            return null;
        }
        return new LayoutParams(-1, -2);
    }

    /* renamed from: n */
    public LayoutParams generateLayoutParams(AttributeSet attributeSet) {
        return new LayoutParams(getContext(), attributeSet);
    }

    /* renamed from: o */
    public LayoutParams generateLayoutParams(ViewGroup.LayoutParams layoutParams) {
        return new LayoutParams(layoutParams);
    }

    @Override // android.view.View
    protected void onDraw(Canvas canvas) {
        if (this.f970n == null) {
            return;
        }
        if (this.f963g == 1) {
            m35174h(canvas);
        } else {
            m35175g(canvas);
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
    public void onLayout(boolean z, int i, int i2, int i3, int i4) {
        if (this.f963g == 1) {
            m35160v(i, i2, i3, i4);
        } else {
            m35161u(i, i2, i3, i4);
        }
    }

    @Override // android.view.View
    public void onMeasure(int i, int i2) {
        if (this.f963g == 1) {
            m35156z(i, i2);
        } else {
            m35158x(i, i2);
        }
    }

    /* renamed from: p */
    int m35166p(View view, int i) {
        return 0;
    }

    /* renamed from: q */
    int m35165q(View view) {
        return 0;
    }

    /* renamed from: r */
    int m35164r(View view) {
        return 0;
    }

    /* renamed from: s */
    View m35163s(int i) {
        return getChildAt(i);
    }

    public void setBaselineAligned(boolean z) {
        this.f960d = z;
    }

    public void setBaselineAlignedChildIndex(int i) {
        if (i >= 0 && i < getChildCount()) {
            this.f961e = i;
            return;
        }
        throw new IllegalArgumentException("base aligned child index out of range (0, " + getChildCount() + ")");
    }

    public void setDividerDrawable(Drawable drawable) {
        if (drawable == this.f970n) {
            return;
        }
        this.f970n = drawable;
        boolean z = false;
        if (drawable != null) {
            this.f971o = drawable.getIntrinsicWidth();
            this.f972p = drawable.getIntrinsicHeight();
        } else {
            this.f971o = 0;
            this.f972p = 0;
        }
        if (drawable == null) {
            z = true;
        }
        setWillNotDraw(z);
        requestLayout();
    }

    public void setDividerPadding(int i) {
        this.f974r = i;
    }

    public void setGravity(int i) {
        if (this.f964h != i) {
            int i2 = i;
            if ((8388615 & i) == 0) {
                i2 = i | 8388611;
            }
            int i3 = i2;
            if ((i2 & 112) == 0) {
                i3 = i2 | 48;
            }
            this.f964h = i3;
            requestLayout();
        }
    }

    public void setHorizontalGravity(int i) {
        int i2 = i & 8388615;
        int i3 = this.f964h;
        if ((8388615 & i3) != i2) {
            this.f964h = i2 | ((-8388616) & i3);
            requestLayout();
        }
    }

    public void setMeasureWithLargestChildEnabled(boolean z) {
        this.f967k = z;
    }

    public void setOrientation(int i) {
        if (this.f963g != i) {
            this.f963g = i;
            requestLayout();
        }
    }

    public void setShowDividers(int i) {
        if (i != this.f973q) {
            requestLayout();
        }
        this.f973q = i;
    }

    public void setVerticalGravity(int i) {
        int i2 = i & 112;
        int i3 = this.f964h;
        if ((i3 & 112) != i2) {
            this.f964h = i2 | (i3 & (-113));
            requestLayout();
        }
    }

    public void setWeightSum(float f) {
        this.f966j = Math.max(0.0f, f);
    }

    @Override // android.view.ViewGroup
    public boolean shouldDelayChildPressedState() {
        return false;
    }

    /* renamed from: t */
    public boolean m35162t(int i) {
        boolean z = false;
        if (i == 0) {
            if ((this.f973q & 1) != 0) {
                z = true;
            }
            return z;
        } else if (i == getChildCount()) {
            boolean z2 = false;
            if ((this.f973q & 4) != 0) {
                z2 = true;
            }
            return z2;
        } else {
            boolean z3 = false;
            if ((this.f973q & 2) != 0) {
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
    void m35161u(int i, int i2, int i3, int i4) {
        int i5;
        int i6;
        int i7;
        boolean m34869b = C0305k0.m34869b(this);
        int paddingTop = getPaddingTop();
        int i8 = i4 - i2;
        int paddingBottom = getPaddingBottom();
        int paddingBottom2 = getPaddingBottom();
        int virtualChildCount = getVirtualChildCount();
        int i9 = this.f964h;
        int i10 = i9 & 112;
        boolean z = this.f960d;
        int[] iArr = this.f968l;
        int[] iArr2 = this.f969m;
        int m29600b = C1614e.m29600b(8388615 & i9, C1679w.m29346C(this));
        int paddingLeft = m29600b != 1 ? m29600b != 5 ? getPaddingLeft() : ((getPaddingLeft() + i3) - i) - this.f965i : getPaddingLeft() + (((i3 - i) - this.f965i) / 2);
        if (m34869b) {
            i6 = virtualChildCount - 1;
            i5 = -1;
        } else {
            i6 = 0;
            i5 = 1;
        }
        int i11 = 0;
        while (i11 < virtualChildCount) {
            int i12 = i6 + (i5 * i11);
            View m35163s = m35163s(i12);
            if (m35163s == null) {
                paddingLeft += m35157y(i12);
            } else if (m35163s.getVisibility() != 8) {
                int measuredWidth = m35163s.getMeasuredWidth();
                int measuredHeight = m35163s.getMeasuredHeight();
                LayoutParams layoutParams = (LayoutParams) m35163s.getLayoutParams();
                int baseline = (!z || ((LinearLayout.LayoutParams) layoutParams).height == -1) ? -1 : m35163s.getBaseline();
                int i13 = ((LinearLayout.LayoutParams) layoutParams).gravity;
                int i14 = i13;
                if (i13 < 0) {
                    i14 = i10;
                }
                int i15 = i14 & 112;
                if (i15 == 16) {
                    i7 = ((((((i8 - paddingTop) - paddingBottom2) - measuredHeight) / 2) + paddingTop) + ((LinearLayout.LayoutParams) layoutParams).topMargin) - ((LinearLayout.LayoutParams) layoutParams).bottomMargin;
                } else if (i15 == 48) {
                    int i16 = ((LinearLayout.LayoutParams) layoutParams).topMargin + paddingTop;
                    i7 = i16;
                    if (baseline != -1) {
                        i7 = i16 + (iArr[1] - baseline);
                    }
                } else if (i15 != 80) {
                    i7 = paddingTop;
                } else {
                    int i17 = ((i8 - paddingBottom) - measuredHeight) - ((LinearLayout.LayoutParams) layoutParams).bottomMargin;
                    i7 = i17;
                    if (baseline != -1) {
                        i7 = i17 - (iArr2[2] - (m35163s.getMeasuredHeight() - baseline));
                    }
                }
                int i18 = paddingLeft;
                if (m35162t(i12)) {
                    i18 = paddingLeft + this.f971o;
                }
                int i19 = ((LinearLayout.LayoutParams) layoutParams).leftMargin + i18;
                m35176A(m35163s, i19 + m35165q(m35163s), i7, measuredWidth, measuredHeight);
                int i20 = ((LinearLayout.LayoutParams) layoutParams).rightMargin;
                int m35164r = m35164r(m35163s);
                i11 += m35166p(m35163s, i12);
                paddingLeft = i19 + measuredWidth + i20 + m35164r;
            }
            i11++;
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:30:0x0122  */
    /* renamed from: v */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    void m35160v(int r8, int r9, int r10, int r11) {
        /*
            Method dump skipped, instructions count: 372
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.appcompat.widget.LinearLayoutCompat.m35160v(int, int, int, int):void");
    }

    /* renamed from: w */
    void m35159w(View view, int i, int i2, int i3, int i4, int i5) {
        measureChildWithMargins(view, i2, i3, i4, i5);
    }

    /* JADX WARN: Code restructure failed: missing block: B:110:0x03e7, code lost:
        if (r0 == 0) goto L111;
     */
    /* JADX WARN: Removed duplicated region for block: B:70:0x029d  */
    /* JADX WARN: Removed duplicated region for block: B:80:0x02fc  */
    /* JADX WARN: Removed duplicated region for block: B:84:0x0314  */
    /* renamed from: x */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    void m35158x(int r9, int r10) {
        /*
            Method dump skipped, instructions count: 2158
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.appcompat.widget.LinearLayoutCompat.m35158x(int, int):void");
    }

    /* renamed from: y */
    int m35157y(int i) {
        return 0;
    }

    /* renamed from: z */
    void m35156z(int i, int i2) {
        int i3;
        int i4;
        int i5;
        boolean z;
        int i6;
        int i7;
        this.f965i = 0;
        int virtualChildCount = getVirtualChildCount();
        int mode = View.MeasureSpec.getMode(i);
        int mode2 = View.MeasureSpec.getMode(i2);
        int i8 = this.f961e;
        boolean z2 = this.f967k;
        float f = 0.0f;
        int i9 = 0;
        int i10 = 0;
        int i11 = 0;
        int i12 = 0;
        int i13 = 0;
        int i14 = 0;
        boolean z3 = false;
        boolean z4 = true;
        boolean z5 = false;
        while (i14 < virtualChildCount) {
            View m35163s = m35163s(i14);
            if (m35163s == null) {
                this.f965i += m35157y(i14);
            } else if (m35163s.getVisibility() == 8) {
                i14 += m35166p(m35163s, i14);
            } else {
                if (m35162t(i14)) {
                    this.f965i += this.f972p;
                }
                LayoutParams layoutParams = (LayoutParams) m35163s.getLayoutParams();
                float f2 = ((LinearLayout.LayoutParams) layoutParams).weight;
                f += f2;
                if (mode2 == 1073741824 && ((LinearLayout.LayoutParams) layoutParams).height == 0 && f2 > 0.0f) {
                    int i15 = this.f965i;
                    this.f965i = Math.max(i15, ((LinearLayout.LayoutParams) layoutParams).topMargin + i15 + ((LinearLayout.LayoutParams) layoutParams).bottomMargin);
                    z3 = true;
                } else {
                    if (((LinearLayout.LayoutParams) layoutParams).height != 0 || f2 <= 0.0f) {
                        i7 = Integer.MIN_VALUE;
                    } else {
                        ((LinearLayout.LayoutParams) layoutParams).height = -2;
                        i7 = 0;
                    }
                    m35159w(m35163s, i14, i, 0, i2, f == 0.0f ? this.f965i : 0);
                    if (i7 != Integer.MIN_VALUE) {
                        ((LinearLayout.LayoutParams) layoutParams).height = i7;
                    }
                    int measuredHeight = m35163s.getMeasuredHeight();
                    int i16 = this.f965i;
                    this.f965i = Math.max(i16, i16 + measuredHeight + ((LinearLayout.LayoutParams) layoutParams).topMargin + ((LinearLayout.LayoutParams) layoutParams).bottomMargin + m35164r(m35163s));
                    if (z2) {
                        i11 = Math.max(measuredHeight, i11);
                    }
                }
                int i17 = i14;
                if (i8 >= 0 && i8 == i17 + 1) {
                    this.f962f = this.f965i;
                }
                if (i17 < i8 && ((LinearLayout.LayoutParams) layoutParams).weight > 0.0f) {
                    throw new RuntimeException("A child of LinearLayout with index less than mBaselineAlignedChildIndex has weight > 0, which won't work.  Either remove the weight, or don't set mBaselineAlignedChildIndex.");
                }
                if (mode == 1073741824 || ((LinearLayout.LayoutParams) layoutParams).width != -1) {
                    z = false;
                } else {
                    z = true;
                    z5 = true;
                }
                int i18 = ((LinearLayout.LayoutParams) layoutParams).leftMargin + ((LinearLayout.LayoutParams) layoutParams).rightMargin;
                int measuredWidth = m35163s.getMeasuredWidth() + i18;
                i10 = Math.max(i10, measuredWidth);
                int combineMeasuredStates = View.combineMeasuredStates(i9, m35163s.getMeasuredState());
                boolean z6 = z4 && ((LinearLayout.LayoutParams) layoutParams).width == -1;
                if (((LinearLayout.LayoutParams) layoutParams).weight > 0.0f) {
                    if (z) {
                        measuredWidth = i18;
                    }
                    i12 = Math.max(i12, measuredWidth);
                    i6 = i13;
                } else {
                    if (!z) {
                        i18 = measuredWidth;
                    }
                    i6 = Math.max(i13, i18);
                }
                i13 = i6;
                i14 = m35166p(m35163s, i17) + i17;
                z4 = z6;
                i9 = combineMeasuredStates;
            }
            i14++;
        }
        if (this.f965i > 0 && m35162t(virtualChildCount)) {
            this.f965i += this.f972p;
        }
        if (z2 && (mode2 == Integer.MIN_VALUE || mode2 == 0)) {
            this.f965i = 0;
            int i19 = 0;
            while (i19 < virtualChildCount) {
                View m35163s2 = m35163s(i19);
                if (m35163s2 == null) {
                    this.f965i += m35157y(i19);
                } else if (m35163s2.getVisibility() == 8) {
                    i19 += m35166p(m35163s2, i19);
                } else {
                    LayoutParams layoutParams2 = (LayoutParams) m35163s2.getLayoutParams();
                    int i20 = this.f965i;
                    this.f965i = Math.max(i20, i20 + i11 + ((LinearLayout.LayoutParams) layoutParams2).topMargin + ((LinearLayout.LayoutParams) layoutParams2).bottomMargin + m35164r(m35163s2));
                }
                i19++;
            }
        }
        int paddingTop = this.f965i + getPaddingTop() + getPaddingBottom();
        this.f965i = paddingTop;
        int resolveSizeAndState = View.resolveSizeAndState(Math.max(paddingTop, getSuggestedMinimumHeight()), i2, 0);
        int i21 = (16777215 & resolveSizeAndState) - this.f965i;
        if (z3 || (i21 != 0 && f > 0.0f)) {
            float f3 = this.f966j;
            if (f3 > 0.0f) {
                f = f3;
            }
            this.f965i = 0;
            int i22 = i21;
            i4 = i10;
            for (int i23 = 0; i23 < virtualChildCount; i23++) {
                View m35163s3 = m35163s(i23);
                if (m35163s3.getVisibility() != 8) {
                    LayoutParams layoutParams3 = (LayoutParams) m35163s3.getLayoutParams();
                    float f4 = ((LinearLayout.LayoutParams) layoutParams3).weight;
                    if (f4 > 0.0f) {
                        int i24 = (int) ((i22 * f4) / f);
                        int paddingLeft = getPaddingLeft();
                        int paddingRight = getPaddingRight();
                        int i25 = ((LinearLayout.LayoutParams) layoutParams3).leftMargin;
                        int i26 = ((LinearLayout.LayoutParams) layoutParams3).rightMargin;
                        int i27 = ((LinearLayout.LayoutParams) layoutParams3).width;
                        int i28 = i22 - i24;
                        int childMeasureSpec = ViewGroup.getChildMeasureSpec(i, paddingLeft + paddingRight + i25 + i26, i27);
                        if (((LinearLayout.LayoutParams) layoutParams3).height == 0 && mode2 == 1073741824) {
                            m35163s3.measure(childMeasureSpec, View.MeasureSpec.makeMeasureSpec(i24 > 0 ? i24 : 0, 1073741824));
                        } else {
                            int measuredHeight2 = m35163s3.getMeasuredHeight() + i24;
                            int i29 = measuredHeight2;
                            if (measuredHeight2 < 0) {
                                i29 = 0;
                            }
                            m35163s3.measure(childMeasureSpec, View.MeasureSpec.makeMeasureSpec(i29, 1073741824));
                        }
                        i9 = View.combineMeasuredStates(i9, m35163s3.getMeasuredState() & (-256));
                        f -= f4;
                        i22 = i28;
                    }
                    int i30 = ((LinearLayout.LayoutParams) layoutParams3).leftMargin + ((LinearLayout.LayoutParams) layoutParams3).rightMargin;
                    int measuredWidth2 = m35163s3.getMeasuredWidth() + i30;
                    int max = Math.max(i4, measuredWidth2);
                    i13 = Math.max(i13, mode != 1073741824 && ((LinearLayout.LayoutParams) layoutParams3).width == -1 ? i30 : measuredWidth2);
                    z4 = z4 && ((LinearLayout.LayoutParams) layoutParams3).width == -1;
                    int i31 = this.f965i;
                    this.f965i = Math.max(i31, m35163s3.getMeasuredHeight() + i31 + ((LinearLayout.LayoutParams) layoutParams3).topMargin + ((LinearLayout.LayoutParams) layoutParams3).bottomMargin + m35164r(m35163s3));
                    i4 = max;
                }
            }
            this.f965i += getPaddingTop() + getPaddingBottom();
            i3 = i9;
            i5 = i13;
        } else {
            int max2 = Math.max(i13, i12);
            if (z2 && mode2 != 1073741824) {
                for (int i32 = 0; i32 < virtualChildCount; i32++) {
                    View m35163s4 = m35163s(i32);
                    if (m35163s4 != null && m35163s4.getVisibility() != 8 && ((LinearLayout.LayoutParams) ((LayoutParams) m35163s4.getLayoutParams())).weight > 0.0f) {
                        m35163s4.measure(View.MeasureSpec.makeMeasureSpec(m35163s4.getMeasuredWidth(), 1073741824), View.MeasureSpec.makeMeasureSpec(i11, 1073741824));
                    }
                }
            }
            i3 = i9;
            i5 = max2;
            i4 = i10;
        }
        if (z4 || mode == 1073741824) {
            i5 = i4;
        }
        setMeasuredDimension(View.resolveSizeAndState(Math.max(i5 + getPaddingLeft() + getPaddingRight(), getSuggestedMinimumWidth()), i, i3), resolveSizeAndState);
        if (z5) {
            m35170l(virtualChildCount, i2);
        }
    }
}

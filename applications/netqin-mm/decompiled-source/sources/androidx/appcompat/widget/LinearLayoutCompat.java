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
import p012b.p016b.C0583j;
import p012b.p016b.p026q.C0691f0;
import p012b.p016b.p026q.C0708l0;
import p012b.p042i.p054p.C0967d;
import p012b.p042i.p054p.C1002u;
/* loaded from: classes-dex2jar.jar:androidx/appcompat/widget/LinearLayoutCompat.class */
public class LinearLayoutCompat extends ViewGroup {

    /* renamed from: a */
    public boolean f613a;

    /* renamed from: b */
    public int f614b;

    /* renamed from: c */
    public int f615c;

    /* renamed from: d */
    public int f616d;

    /* renamed from: e */
    public int f617e;

    /* renamed from: f */
    public int f618f;

    /* renamed from: g */
    public float f619g;

    /* renamed from: h */
    public boolean f620h;

    /* renamed from: i */
    public int[] f621i;

    /* renamed from: j */
    public int[] f622j;

    /* renamed from: k */
    public Drawable f623k;

    /* renamed from: l */
    public int f624l;

    /* renamed from: m */
    public int f625m;

    /* renamed from: n */
    public int f626n;

    /* renamed from: o */
    public int f627o;

    /* loaded from: classes-dex2jar.jar:androidx/appcompat/widget/LinearLayoutCompat$LayoutParams.class */
    public static class LayoutParams extends ViewGroup.MarginLayoutParams {

        /* renamed from: a */
        public float f628a;

        /* renamed from: b */
        public int f629b;

        public LayoutParams(int i, int i2) {
            super(i, i2);
            this.f629b = -1;
            this.f628a = 0.0f;
        }

        public LayoutParams(Context context, AttributeSet attributeSet) {
            super(context, attributeSet);
            this.f629b = -1;
            TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, C0583j.LinearLayoutCompat_Layout);
            this.f628a = obtainStyledAttributes.getFloat(C0583j.LinearLayoutCompat_Layout_android_layout_weight, 0.0f);
            this.f629b = obtainStyledAttributes.getInt(C0583j.LinearLayoutCompat_Layout_android_layout_gravity, -1);
            obtainStyledAttributes.recycle();
        }

        public LayoutParams(ViewGroup.LayoutParams layoutParams) {
            super(layoutParams);
            this.f629b = -1;
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
        this.f613a = true;
        this.f614b = -1;
        this.f615c = 0;
        this.f617e = 8388659;
        C0691f0 a = C0691f0.m36414a(context, attributeSet, C0583j.LinearLayoutCompat, i, 0);
        C1002u.m35244a(this, context, C0583j.LinearLayoutCompat, attributeSet, a.m36422a(), i, 0);
        int d = a.m36407d(C0583j.LinearLayoutCompat_android_orientation, -1);
        if (d >= 0) {
            setOrientation(d);
        }
        int d2 = a.m36407d(C0583j.LinearLayoutCompat_android_gravity, -1);
        if (d2 >= 0) {
            setGravity(d2);
        }
        boolean a2 = a.m36417a(C0583j.LinearLayoutCompat_android_baselineAligned, true);
        if (!a2) {
            setBaselineAligned(a2);
        }
        this.f619g = a.m36420a(C0583j.LinearLayoutCompat_android_weightSum, -1.0f);
        this.f614b = a.m36407d(C0583j.LinearLayoutCompat_android_baselineAlignedChildIndex, -1);
        this.f620h = a.m36417a(C0583j.LinearLayoutCompat_measureWithLargestChild, false);
        setDividerDrawable(a.m36412b(C0583j.LinearLayoutCompat_divider));
        this.f626n = a.m36407d(C0583j.LinearLayoutCompat_showDividers, 0);
        this.f627o = a.m36409c(C0583j.LinearLayoutCompat_dividerPadding, 0);
        a.m36413b();
    }

    /* renamed from: a */
    public int m38981a(View view) {
        return 0;
    }

    /* renamed from: a */
    public int m38980a(View view, int i) {
        return 0;
    }

    /* renamed from: a */
    public View m38986a(int i) {
        return getChildAt(i);
    }

    /* renamed from: a */
    public final void m38985a(int i, int i2) {
        int makeMeasureSpec = View.MeasureSpec.makeMeasureSpec(getMeasuredHeight(), 1073741824);
        for (int i3 = 0; i3 < i; i3++) {
            View a = m38986a(i3);
            if (a.getVisibility() != 8) {
                LayoutParams layoutParams = (LayoutParams) a.getLayoutParams();
                if (((ViewGroup.MarginLayoutParams) layoutParams).height == -1) {
                    int i4 = ((ViewGroup.MarginLayoutParams) layoutParams).width;
                    ((ViewGroup.MarginLayoutParams) layoutParams).width = a.getMeasuredWidth();
                    measureChildWithMargins(a, i2, 0, makeMeasureSpec, 0);
                    ((ViewGroup.MarginLayoutParams) layoutParams).width = i4;
                }
            }
        }
    }

    /* renamed from: a */
    public void m38984a(int i, int i2, int i3, int i4) {
        int i5;
        int i6;
        int i7;
        boolean a = C0708l0.m36319a(this);
        int paddingTop = getPaddingTop();
        int i8 = i4 - i2;
        int paddingBottom = getPaddingBottom();
        int paddingBottom2 = getPaddingBottom();
        int virtualChildCount = getVirtualChildCount();
        int i9 = this.f617e;
        int i10 = i9 & 112;
        boolean z = this.f613a;
        int[] iArr = this.f621i;
        int[] iArr2 = this.f622j;
        int a2 = C0967d.m35388a(8388615 & i9, C1002u.m35208n(this));
        int paddingLeft = a2 != 1 ? a2 != 5 ? getPaddingLeft() : ((getPaddingLeft() + i3) - i) - this.f618f : getPaddingLeft() + (((i3 - i) - this.f618f) / 2);
        if (a) {
            i6 = virtualChildCount - 1;
            i5 = -1;
        } else {
            i6 = 0;
            i5 = 1;
        }
        int i11 = 0;
        while (i11 < virtualChildCount) {
            int i12 = i6 + (i5 * i11);
            View a3 = m38986a(i12);
            if (a3 == null) {
                paddingLeft += m38971c(i12);
            } else if (a3.getVisibility() != 8) {
                int measuredWidth = a3.getMeasuredWidth();
                int measuredHeight = a3.getMeasuredHeight();
                LayoutParams layoutParams = (LayoutParams) a3.getLayoutParams();
                int baseline = (!z || ((ViewGroup.MarginLayoutParams) layoutParams).height == -1) ? -1 : a3.getBaseline();
                int i13 = layoutParams.f629b;
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
                        i7 = i16 - (iArr2[2] - (a3.getMeasuredHeight() - baseline));
                    }
                }
                int i17 = paddingLeft;
                if (m38977b(i12)) {
                    i17 = paddingLeft + this.f624l;
                }
                int i18 = ((ViewGroup.MarginLayoutParams) layoutParams).leftMargin + i17;
                m38979a(a3, i18 + m38981a(a3), i7, measuredWidth, measuredHeight);
                int i19 = ((ViewGroup.MarginLayoutParams) layoutParams).rightMargin;
                int b = m38972b(a3);
                i11 += m38980a(a3, i12);
                paddingLeft = i18 + measuredWidth + i19 + b;
            }
            i11++;
        }
    }

    /* renamed from: a */
    public void m38983a(Canvas canvas) {
        int i;
        int i2;
        int i3;
        int virtualChildCount = getVirtualChildCount();
        boolean a = C0708l0.m36319a(this);
        for (int i4 = 0; i4 < virtualChildCount; i4++) {
            View a2 = m38986a(i4);
            if (!(a2 == null || a2.getVisibility() == 8 || !m38977b(i4))) {
                LayoutParams layoutParams = (LayoutParams) a2.getLayoutParams();
                m38973b(canvas, a ? a2.getRight() + ((ViewGroup.MarginLayoutParams) layoutParams).rightMargin : (a2.getLeft() - ((ViewGroup.MarginLayoutParams) layoutParams).leftMargin) - this.f624l);
            }
        }
        if (m38977b(virtualChildCount)) {
            View a3 = m38986a(virtualChildCount - 1);
            if (a3 != null) {
                LayoutParams layoutParams2 = (LayoutParams) a3.getLayoutParams();
                if (a) {
                    i3 = a3.getLeft() - ((ViewGroup.MarginLayoutParams) layoutParams2).leftMargin;
                    i2 = this.f624l;
                    i = i3 - i2;
                    m38973b(canvas, i);
                }
                i = a3.getRight() + ((ViewGroup.MarginLayoutParams) layoutParams2).rightMargin;
                m38973b(canvas, i);
            } else if (a) {
                i = getPaddingLeft();
                m38973b(canvas, i);
            } else {
                i3 = getWidth() - getPaddingRight();
                i2 = this.f624l;
                i = i3 - i2;
                m38973b(canvas, i);
            }
        }
    }

    /* renamed from: a */
    public void m38982a(Canvas canvas, int i) {
        this.f623k.setBounds(getPaddingLeft() + this.f627o, i, (getWidth() - getPaddingRight()) - this.f627o, this.f625m + i);
        this.f623k.draw(canvas);
    }

    /* renamed from: a */
    public final void m38979a(View view, int i, int i2, int i3, int i4) {
        view.layout(i, i2, i3 + i, i4 + i2);
    }

    /* renamed from: a */
    public void m38978a(View view, int i, int i2, int i3, int i4, int i5) {
        measureChildWithMargins(view, i2, i3, i4, i5);
    }

    /* renamed from: b */
    public int m38972b(View view) {
        return 0;
    }

    /* renamed from: b */
    public final void m38976b(int i, int i2) {
        int makeMeasureSpec = View.MeasureSpec.makeMeasureSpec(getMeasuredWidth(), 1073741824);
        for (int i3 = 0; i3 < i; i3++) {
            View a = m38986a(i3);
            if (a.getVisibility() != 8) {
                LayoutParams layoutParams = (LayoutParams) a.getLayoutParams();
                if (((ViewGroup.MarginLayoutParams) layoutParams).width == -1) {
                    int i4 = ((ViewGroup.MarginLayoutParams) layoutParams).height;
                    ((ViewGroup.MarginLayoutParams) layoutParams).height = a.getMeasuredHeight();
                    measureChildWithMargins(a, makeMeasureSpec, 0, i2, 0);
                    ((ViewGroup.MarginLayoutParams) layoutParams).height = i4;
                }
            }
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:30:0x0121  */
    /* renamed from: b */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void m38975b(int r8, int r9, int r10, int r11) {
        /*
            Method dump skipped, instructions count: 371
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.appcompat.widget.LinearLayoutCompat.m38975b(int, int, int, int):void");
    }

    /* renamed from: b */
    public void m38974b(Canvas canvas) {
        int virtualChildCount = getVirtualChildCount();
        for (int i = 0; i < virtualChildCount; i++) {
            View a = m38986a(i);
            if (!(a == null || a.getVisibility() == 8 || !m38977b(i))) {
                m38982a(canvas, (a.getTop() - ((ViewGroup.MarginLayoutParams) ((LayoutParams) a.getLayoutParams())).topMargin) - this.f625m);
            }
        }
        if (m38977b(virtualChildCount)) {
            View a2 = m38986a(virtualChildCount - 1);
            m38982a(canvas, a2 == null ? (getHeight() - getPaddingBottom()) - this.f625m : a2.getBottom() + ((ViewGroup.MarginLayoutParams) ((LayoutParams) a2.getLayoutParams())).bottomMargin);
        }
    }

    /* renamed from: b */
    public void m38973b(Canvas canvas, int i) {
        this.f623k.setBounds(i, getPaddingTop() + this.f627o, this.f624l + i, (getHeight() - getPaddingBottom()) - this.f627o);
        this.f623k.draw(canvas);
    }

    /* renamed from: b */
    public boolean m38977b(int i) {
        boolean z = false;
        boolean z2 = false;
        if (i == 0) {
            if ((this.f626n & 1) != 0) {
                z2 = true;
            }
            return z2;
        } else if (i == getChildCount()) {
            if ((this.f626n & 4) != 0) {
                z = true;
            }
            return z;
        } else {
            boolean z3 = false;
            if ((this.f626n & 2) != 0) {
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

    /* renamed from: c */
    public int m38971c(int i) {
        return 0;
    }

    /* JADX WARN: Code restructure failed: missing block: B:110:0x03ea, code lost:
        if (r0 == 0) goto L_0x03ed;
     */
    /* JADX WARN: Removed duplicated region for block: B:70:0x02a0  */
    /* JADX WARN: Removed duplicated region for block: B:80:0x02ff  */
    /* JADX WARN: Removed duplicated region for block: B:84:0x0317  */
    /* renamed from: c */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void m38970c(int r9, int r10) {
        /*
            Method dump skipped, instructions count: 2161
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.appcompat.widget.LinearLayoutCompat.m38970c(int, int):void");
    }

    @Override // android.view.ViewGroup
    public boolean checkLayoutParams(ViewGroup.LayoutParams layoutParams) {
        return layoutParams instanceof LayoutParams;
    }

    /* renamed from: d */
    public void m38969d(int i, int i2) {
        int i3;
        int i4;
        boolean z;
        int i5;
        this.f618f = 0;
        int virtualChildCount = getVirtualChildCount();
        int mode = View.MeasureSpec.getMode(i);
        int mode2 = View.MeasureSpec.getMode(i2);
        int i6 = this.f614b;
        boolean z2 = this.f620h;
        float f = 0.0f;
        int i7 = 0;
        int i8 = 0;
        int i9 = 0;
        int i10 = 0;
        int i11 = 0;
        int i12 = 0;
        boolean z3 = false;
        boolean z4 = true;
        boolean z5 = false;
        while (i12 < virtualChildCount) {
            View a = m38986a(i12);
            if (a == null) {
                this.f618f += m38971c(i12);
            } else if (a.getVisibility() == 8) {
                i12 += m38980a(a, i12);
            } else {
                if (m38977b(i12)) {
                    this.f618f += this.f625m;
                }
                LayoutParams layoutParams = (LayoutParams) a.getLayoutParams();
                float f2 = layoutParams.f628a;
                f += f2;
                if (mode2 == 1073741824 && ((ViewGroup.MarginLayoutParams) layoutParams).height == 0 && f2 > 0.0f) {
                    int i13 = this.f618f;
                    this.f618f = Math.max(i13, ((ViewGroup.MarginLayoutParams) layoutParams).topMargin + i13 + ((ViewGroup.MarginLayoutParams) layoutParams).bottomMargin);
                    z3 = true;
                } else {
                    if (((ViewGroup.MarginLayoutParams) layoutParams).height != 0 || layoutParams.f628a <= 0.0f) {
                        i5 = Integer.MIN_VALUE;
                    } else {
                        ((ViewGroup.MarginLayoutParams) layoutParams).height = -2;
                        i5 = 0;
                    }
                    m38978a(a, i12, i, 0, i2, f == 0.0f ? this.f618f : 0);
                    if (i5 != Integer.MIN_VALUE) {
                        ((ViewGroup.MarginLayoutParams) layoutParams).height = i5;
                    }
                    int measuredHeight = a.getMeasuredHeight();
                    int i14 = this.f618f;
                    this.f618f = Math.max(i14, i14 + measuredHeight + ((ViewGroup.MarginLayoutParams) layoutParams).topMargin + ((ViewGroup.MarginLayoutParams) layoutParams).bottomMargin + m38972b(a));
                    if (z2) {
                        i9 = Math.max(measuredHeight, i9);
                    }
                }
                if (i6 >= 0 && i6 == i12 + 1) {
                    this.f615c = this.f618f;
                }
                if (i12 >= i6 || layoutParams.f628a <= 0.0f) {
                    if (mode == 1073741824 || ((ViewGroup.MarginLayoutParams) layoutParams).width != -1) {
                        z = false;
                    } else {
                        z = true;
                        z5 = true;
                    }
                    int i15 = ((ViewGroup.MarginLayoutParams) layoutParams).leftMargin + ((ViewGroup.MarginLayoutParams) layoutParams).rightMargin;
                    int measuredWidth = a.getMeasuredWidth() + i15;
                    i8 = Math.max(i8, measuredWidth);
                    i7 = View.combineMeasuredStates(i7, a.getMeasuredState());
                    z4 = z4 && ((ViewGroup.MarginLayoutParams) layoutParams).width == -1;
                    if (layoutParams.f628a > 0.0f) {
                        if (!z) {
                            i15 = measuredWidth;
                        }
                        i10 = Math.max(i10, i15);
                        i11 = i11;
                    } else {
                        if (!z) {
                            i15 = measuredWidth;
                        }
                        i11 = Math.max(i11, i15);
                    }
                    i12 = m38980a(a, i12) + i12;
                } else {
                    throw new RuntimeException("A child of LinearLayout with index less than mBaselineAlignedChildIndex has weight > 0, which won't work.  Either remove the weight, or don't set mBaselineAlignedChildIndex.");
                }
            }
            i12++;
        }
        if (this.f618f > 0 && m38977b(virtualChildCount)) {
            this.f618f += this.f625m;
        }
        if (z2 && (mode2 == Integer.MIN_VALUE || mode2 == 0)) {
            this.f618f = 0;
            int i16 = 0;
            while (i16 < virtualChildCount) {
                View a2 = m38986a(i16);
                if (a2 == null) {
                    this.f618f += m38971c(i16);
                } else if (a2.getVisibility() == 8) {
                    i16 += m38980a(a2, i16);
                } else {
                    LayoutParams layoutParams2 = (LayoutParams) a2.getLayoutParams();
                    int i17 = this.f618f;
                    this.f618f = Math.max(i17, i17 + i9 + ((ViewGroup.MarginLayoutParams) layoutParams2).topMargin + ((ViewGroup.MarginLayoutParams) layoutParams2).bottomMargin + m38972b(a2));
                }
                i16++;
            }
        }
        int paddingTop = this.f618f + getPaddingTop() + getPaddingBottom();
        this.f618f = paddingTop;
        int resolveSizeAndState = View.resolveSizeAndState(Math.max(paddingTop, getSuggestedMinimumHeight()), i2, 0);
        int i18 = (16777215 & resolveSizeAndState) - this.f618f;
        if (z3 || (i18 != 0 && f > 0.0f)) {
            float f3 = this.f619g;
            if (f3 > 0.0f) {
                f = f3;
            }
            this.f618f = 0;
            int i19 = i18;
            i4 = i8;
            for (int i20 = 0; i20 < virtualChildCount; i20++) {
                View a3 = m38986a(i20);
                if (a3.getVisibility() != 8) {
                    LayoutParams layoutParams3 = (LayoutParams) a3.getLayoutParams();
                    float f4 = layoutParams3.f628a;
                    if (f4 > 0.0f) {
                        int i21 = (int) ((i19 * f4) / f);
                        i19 -= i21;
                        int childMeasureSpec = ViewGroup.getChildMeasureSpec(i, getPaddingLeft() + getPaddingRight() + ((ViewGroup.MarginLayoutParams) layoutParams3).leftMargin + ((ViewGroup.MarginLayoutParams) layoutParams3).rightMargin, ((ViewGroup.MarginLayoutParams) layoutParams3).width);
                        if (((ViewGroup.MarginLayoutParams) layoutParams3).height == 0 && mode2 == 1073741824) {
                            a3.measure(childMeasureSpec, View.MeasureSpec.makeMeasureSpec(i21 > 0 ? i21 : 0, 1073741824));
                        } else {
                            int measuredHeight2 = a3.getMeasuredHeight() + i21;
                            int i22 = measuredHeight2;
                            if (measuredHeight2 < 0) {
                                i22 = 0;
                            }
                            a3.measure(childMeasureSpec, View.MeasureSpec.makeMeasureSpec(i22, 1073741824));
                        }
                        i7 = View.combineMeasuredStates(i7, a3.getMeasuredState() & (-256));
                        f -= f4;
                    }
                    int i23 = ((ViewGroup.MarginLayoutParams) layoutParams3).leftMargin + ((ViewGroup.MarginLayoutParams) layoutParams3).rightMargin;
                    int measuredWidth2 = a3.getMeasuredWidth() + i23;
                    i4 = Math.max(i4, measuredWidth2);
                    i11 = Math.max(i11, mode != 1073741824 && ((ViewGroup.MarginLayoutParams) layoutParams3).width == -1 ? i23 : measuredWidth2);
                    z4 = z4 && ((ViewGroup.MarginLayoutParams) layoutParams3).width == -1;
                    int i24 = this.f618f;
                    this.f618f = Math.max(i24, a3.getMeasuredHeight() + i24 + ((ViewGroup.MarginLayoutParams) layoutParams3).topMargin + ((ViewGroup.MarginLayoutParams) layoutParams3).bottomMargin + m38972b(a3));
                }
            }
            this.f618f += getPaddingTop() + getPaddingBottom();
            i3 = i7;
            i4 = i11;
        } else {
            i4 = Math.max(i11, i10);
            if (z2 && mode2 != 1073741824) {
                for (int i25 = 0; i25 < virtualChildCount; i25++) {
                    View a4 = m38986a(i25);
                    if (!(a4 == null || a4.getVisibility() == 8 || ((LayoutParams) a4.getLayoutParams()).f628a <= 0.0f)) {
                        a4.measure(View.MeasureSpec.makeMeasureSpec(a4.getMeasuredWidth(), 1073741824), View.MeasureSpec.makeMeasureSpec(i9, 1073741824));
                    }
                }
            }
            i3 = i7;
            i4 = i8;
        }
        if (z4 || mode == 1073741824) {
        }
        setMeasuredDimension(View.resolveSizeAndState(Math.max(i4 + getPaddingLeft() + getPaddingRight(), getSuggestedMinimumWidth()), i, i3), resolveSizeAndState);
        if (z5) {
            m38976b(virtualChildCount, i2);
        }
    }

    @Override // android.view.ViewGroup
    public LayoutParams generateDefaultLayoutParams() {
        int i = this.f616d;
        if (i == 0) {
            return new LayoutParams(-2, -2);
        }
        if (i == 1) {
            return new LayoutParams(-1, -2);
        }
        return null;
    }

    @Override // android.view.ViewGroup
    public LayoutParams generateLayoutParams(AttributeSet attributeSet) {
        return new LayoutParams(getContext(), attributeSet);
    }

    @Override // android.view.ViewGroup
    public LayoutParams generateLayoutParams(ViewGroup.LayoutParams layoutParams) {
        return new LayoutParams(layoutParams);
    }

    @Override // android.view.View
    public int getBaseline() {
        if (this.f614b < 0) {
            return super.getBaseline();
        }
        int childCount = getChildCount();
        int i = this.f614b;
        if (childCount > i) {
            View childAt = getChildAt(i);
            int baseline = childAt.getBaseline();
            if (baseline != -1) {
                int i2 = this.f615c;
                int i3 = i2;
                if (this.f616d == 1) {
                    int i4 = this.f617e & 112;
                    i3 = i2;
                    if (i4 != 48) {
                        i3 = i4 != 16 ? i4 != 80 ? i2 : ((getBottom() - getTop()) - getPaddingBottom()) - this.f618f : i2 + (((((getBottom() - getTop()) - getPaddingTop()) - getPaddingBottom()) - this.f618f) / 2);
                    }
                }
                return i3 + ((ViewGroup.MarginLayoutParams) ((LayoutParams) childAt.getLayoutParams())).topMargin + baseline;
            } else if (this.f614b == 0) {
                return -1;
            } else {
                throw new RuntimeException("mBaselineAlignedChildIndex of LinearLayout points to a View that doesn't know how to get its baseline.");
            }
        } else {
            throw new RuntimeException("mBaselineAlignedChildIndex of LinearLayout set to an index that is out of bounds.");
        }
    }

    public int getBaselineAlignedChildIndex() {
        return this.f614b;
    }

    public Drawable getDividerDrawable() {
        return this.f623k;
    }

    public int getDividerPadding() {
        return this.f627o;
    }

    public int getDividerWidth() {
        return this.f624l;
    }

    public int getGravity() {
        return this.f617e;
    }

    public int getOrientation() {
        return this.f616d;
    }

    public int getShowDividers() {
        return this.f626n;
    }

    public int getVirtualChildCount() {
        return getChildCount();
    }

    public float getWeightSum() {
        return this.f619g;
    }

    @Override // android.view.View
    public void onDraw(Canvas canvas) {
        if (this.f623k != null) {
            if (this.f616d == 1) {
                m38974b(canvas);
            } else {
                m38983a(canvas);
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
    public void onLayout(boolean z, int i, int i2, int i3, int i4) {
        if (this.f616d == 1) {
            m38975b(i, i2, i3, i4);
        } else {
            m38984a(i, i2, i3, i4);
        }
    }

    @Override // android.view.View
    public void onMeasure(int i, int i2) {
        if (this.f616d == 1) {
            m38969d(i, i2);
        } else {
            m38970c(i, i2);
        }
    }

    public void setBaselineAligned(boolean z) {
        this.f613a = z;
    }

    public void setBaselineAlignedChildIndex(int i) {
        if (i < 0 || i >= getChildCount()) {
            throw new IllegalArgumentException("base aligned child index out of range (0, " + getChildCount() + ")");
        }
        this.f614b = i;
    }

    public void setDividerDrawable(Drawable drawable) {
        if (drawable != this.f623k) {
            this.f623k = drawable;
            boolean z = false;
            if (drawable != null) {
                this.f624l = drawable.getIntrinsicWidth();
                this.f625m = drawable.getIntrinsicHeight();
            } else {
                this.f624l = 0;
                this.f625m = 0;
            }
            if (drawable == null) {
                z = true;
            }
            setWillNotDraw(z);
            requestLayout();
        }
    }

    public void setDividerPadding(int i) {
        this.f627o = i;
    }

    public void setGravity(int i) {
        if (this.f617e != i) {
            int i2 = i;
            if ((8388615 & i) == 0) {
                i2 = i | 8388611;
            }
            int i3 = i2;
            if ((i2 & 112) == 0) {
                i3 = i2 | 48;
            }
            this.f617e = i3;
            requestLayout();
        }
    }

    public void setHorizontalGravity(int i) {
        int i2 = i & 8388615;
        int i3 = this.f617e;
        if ((8388615 & i3) != i2) {
            this.f617e = i2 | ((-8388616) & i3);
            requestLayout();
        }
    }

    public void setMeasureWithLargestChildEnabled(boolean z) {
        this.f620h = z;
    }

    public void setOrientation(int i) {
        if (this.f616d != i) {
            this.f616d = i;
            requestLayout();
        }
    }

    public void setShowDividers(int i) {
        if (i != this.f626n) {
            requestLayout();
        }
        this.f626n = i;
    }

    public void setVerticalGravity(int i) {
        int i2 = i & 112;
        int i3 = this.f617e;
        if ((i3 & 112) != i2) {
            this.f617e = i2 | (i3 & (-113));
            requestLayout();
        }
    }

    public void setWeightSum(float f) {
        this.f619g = Math.max(0.0f, f);
    }

    @Override // android.view.ViewGroup
    public boolean shouldDelayChildPressedState() {
        return false;
    }
}

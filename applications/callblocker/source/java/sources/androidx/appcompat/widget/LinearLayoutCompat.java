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
import androidx.appcompat.C0083a;
import androidx.core.p026h.C0576c;
import androidx.core.p026h.C0595u;
/* loaded from: classes-dex2jar.jar:androidx/appcompat/widget/LinearLayoutCompat.class */
public class LinearLayoutCompat extends ViewGroup {

    /* renamed from: a */
    private boolean f1041a;

    /* renamed from: b */
    private int f1042b;

    /* renamed from: c */
    private int f1043c;

    /* renamed from: d */
    private int f1044d;

    /* renamed from: e */
    private int f1045e;

    /* renamed from: f */
    private int f1046f;

    /* renamed from: g */
    private float f1047g;

    /* renamed from: h */
    private boolean f1048h;

    /* renamed from: i */
    private int[] f1049i;

    /* renamed from: j */
    private int[] f1050j;

    /* renamed from: k */
    private Drawable f1051k;

    /* renamed from: l */
    private int f1052l;

    /* renamed from: m */
    private int f1053m;

    /* renamed from: n */
    private int f1054n;

    /* renamed from: o */
    private int f1055o;

    /* renamed from: androidx.appcompat.widget.LinearLayoutCompat$a */
    /* loaded from: classes-dex2jar.jar:androidx/appcompat/widget/LinearLayoutCompat$a.class */
    public static class C0250a extends ViewGroup.MarginLayoutParams {

        /* renamed from: g */
        public float f1056g;

        /* renamed from: h */
        public int f1057h;

        public C0250a(int i, int i2) {
            super(i, i2);
            this.f1057h = -1;
            this.f1056g = 0.0f;
        }

        public C0250a(Context context, AttributeSet attributeSet) {
            super(context, attributeSet);
            this.f1057h = -1;
            TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, C0083a.C0093j.LinearLayoutCompat_Layout);
            this.f1056g = obtainStyledAttributes.getFloat(C0083a.C0093j.LinearLayoutCompat_Layout_android_layout_weight, 0.0f);
            this.f1057h = obtainStyledAttributes.getInt(C0083a.C0093j.LinearLayoutCompat_Layout_android_layout_gravity, -1);
            obtainStyledAttributes.recycle();
        }

        public C0250a(ViewGroup.LayoutParams layoutParams) {
            super(layoutParams);
            this.f1057h = -1;
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
        this.f1041a = true;
        this.f1042b = -1;
        this.f1043c = 0;
        this.f1045e = 8388659;
        C0317ap m21433a = C0317ap.m21433a(context, attributeSet, C0083a.C0093j.LinearLayoutCompat, i, 0);
        int m21438a = m21433a.m21438a(C0083a.C0093j.LinearLayoutCompat_android_orientation, -1);
        if (m21438a >= 0) {
            setOrientation(m21438a);
        }
        int m21438a2 = m21433a.m21438a(C0083a.C0093j.LinearLayoutCompat_android_gravity, -1);
        if (m21438a2 >= 0) {
            setGravity(m21438a2);
        }
        boolean m21436a = m21433a.m21436a(C0083a.C0093j.LinearLayoutCompat_android_baselineAligned, true);
        if (!m21436a) {
            setBaselineAligned(m21436a);
        }
        this.f1047g = m21433a.m21439a(C0083a.C0093j.LinearLayoutCompat_android_weightSum, -1.0f);
        this.f1042b = m21433a.m21438a(C0083a.C0093j.LinearLayoutCompat_android_baselineAlignedChildIndex, -1);
        this.f1048h = m21433a.m21436a(C0083a.C0093j.LinearLayoutCompat_measureWithLargestChild, false);
        setDividerDrawable(m21433a.m21440a(C0083a.C0093j.LinearLayoutCompat_divider));
        this.f1054n = m21433a.m21438a(C0083a.C0093j.LinearLayoutCompat_showDividers, 0);
        this.f1055o = m21433a.m21424e(C0083a.C0093j.LinearLayoutCompat_dividerPadding, 0);
        m21433a.m21441a();
    }

    /* renamed from: a */
    private void m21686a(View view, int i, int i2, int i3, int i4) {
        view.layout(i, i2, i + i3, i2 + i4);
    }

    /* renamed from: c */
    private void m21675c(int i, int i2) {
        int makeMeasureSpec = View.MeasureSpec.makeMeasureSpec(getMeasuredWidth(), 1073741824);
        for (int i3 = 0; i3 < i; i3++) {
            View m21684b = m21684b(i3);
            if (m21684b.getVisibility() != 8) {
                C0250a c0250a = (C0250a) m21684b.getLayoutParams();
                if (c0250a.width == -1) {
                    int i4 = c0250a.height;
                    c0250a.height = m21684b.getMeasuredHeight();
                    measureChildWithMargins(m21684b, makeMeasureSpec, 0, i2, 0);
                    c0250a.height = i4;
                }
            }
        }
    }

    /* renamed from: d */
    private void m21673d(int i, int i2) {
        int makeMeasureSpec = View.MeasureSpec.makeMeasureSpec(getMeasuredHeight(), 1073741824);
        for (int i3 = 0; i3 < i; i3++) {
            View m21684b = m21684b(i3);
            if (m21684b.getVisibility() != 8) {
                C0250a c0250a = (C0250a) m21684b.getLayoutParams();
                if (c0250a.height == -1) {
                    int i4 = c0250a.width;
                    c0250a.width = m21684b.getMeasuredWidth();
                    measureChildWithMargins(m21684b, i2, 0, makeMeasureSpec, 0);
                    c0250a.width = i4;
                }
            }
        }
    }

    /* renamed from: a */
    int m21688a(View view) {
        return 0;
    }

    /* renamed from: a */
    int m21687a(View view, int i) {
        return 0;
    }

    /* renamed from: a */
    void m21692a(int i, int i2) {
        int i3;
        int i4;
        int i5;
        boolean z;
        boolean z2;
        boolean z3;
        int max;
        int i6;
        int i7;
        boolean z4;
        this.f1046f = 0;
        int i8 = 0;
        int i9 = 0;
        int i10 = 0;
        int i11 = 0;
        boolean z5 = true;
        float f = 0.0f;
        int virtualChildCount = getVirtualChildCount();
        int mode = View.MeasureSpec.getMode(i);
        int mode2 = View.MeasureSpec.getMode(i2);
        boolean z6 = false;
        boolean z7 = false;
        int i12 = this.f1042b;
        boolean z8 = this.f1048h;
        int i13 = 0;
        int i14 = 0;
        while (i14 < virtualChildCount) {
            View m21684b = m21684b(i14);
            if (m21684b == null) {
                this.f1046f += m21674d(i14);
                int i15 = i13;
                z4 = z5;
                i7 = i15;
            } else if (m21684b.getVisibility() == 8) {
                int m21687a = i14 + m21687a(m21684b, i14);
                int i16 = i13;
                z4 = z5;
                i7 = i16;
                i14 = m21687a;
            } else {
                if (m21676c(i14)) {
                    this.f1046f += this.f1053m;
                }
                C0250a c0250a = (C0250a) m21684b.getLayoutParams();
                f += c0250a.f1056g;
                if (mode2 == 1073741824 && c0250a.height == 0 && c0250a.f1056g > 0.0f) {
                    int i17 = this.f1046f;
                    this.f1046f = Math.max(i17, c0250a.topMargin + i17 + c0250a.bottomMargin);
                    z = true;
                    i5 = i13;
                } else {
                    int i18 = Integer.MIN_VALUE;
                    if (c0250a.height == 0) {
                        i18 = Integer.MIN_VALUE;
                        if (c0250a.f1056g > 0.0f) {
                            i18 = 0;
                            c0250a.height = -2;
                        }
                    }
                    m21685a(m21684b, i14, i, 0, i2, f == 0.0f ? this.f1046f : 0);
                    if (i18 != Integer.MIN_VALUE) {
                        c0250a.height = i18;
                    }
                    int measuredHeight = m21684b.getMeasuredHeight();
                    int i19 = this.f1046f;
                    this.f1046f = Math.max(i19, i19 + measuredHeight + c0250a.topMargin + c0250a.bottomMargin + m21678b(m21684b));
                    i5 = i13;
                    z = z7;
                    if (z8) {
                        i5 = Math.max(measuredHeight, i13);
                        z = z7;
                    }
                }
                if (i12 >= 0 && i12 == i14 + 1) {
                    this.f1043c = this.f1046f;
                }
                if (i14 < i12 && c0250a.f1056g > 0.0f) {
                    throw new RuntimeException("A child of LinearLayout with index less than mBaselineAlignedChildIndex has weight > 0, which won't work.  Either remove the weight, or don't set mBaselineAlignedChildIndex.");
                }
                if (mode == 1073741824 || c0250a.width != -1) {
                    z2 = z6;
                    z3 = false;
                } else {
                    z2 = true;
                    z3 = true;
                }
                int i20 = c0250a.rightMargin + c0250a.leftMargin;
                int measuredWidth = m21684b.getMeasuredWidth() + i20;
                i8 = Math.max(i8, measuredWidth);
                int combineMeasuredStates = View.combineMeasuredStates(i9, m21684b.getMeasuredState());
                boolean z9 = z5 && c0250a.width == -1;
                if (c0250a.f1056g > 0.0f) {
                    if (!z3) {
                        i20 = measuredWidth;
                    }
                    i6 = Math.max(i11, i20);
                    max = i10;
                } else {
                    if (z3) {
                        measuredWidth = i20;
                    }
                    max = Math.max(i10, measuredWidth);
                    i6 = i11;
                }
                i14 += m21687a(m21684b, i14);
                z6 = z2;
                i10 = max;
                i7 = i5;
                z4 = z9;
                z7 = z;
                i11 = i6;
                i9 = combineMeasuredStates;
            }
            i14++;
            boolean z10 = z4;
            i13 = i7;
            z5 = z10;
        }
        if (this.f1046f > 0 && m21676c(virtualChildCount)) {
            this.f1046f += this.f1053m;
        }
        if (z8 && (mode2 == Integer.MIN_VALUE || mode2 == 0)) {
            this.f1046f = 0;
            int i21 = 0;
            while (i21 < virtualChildCount) {
                View m21684b2 = m21684b(i21);
                if (m21684b2 == null) {
                    this.f1046f += m21674d(i21);
                } else if (m21684b2.getVisibility() == 8) {
                    i21 = m21687a(m21684b2, i21) + i21;
                } else {
                    C0250a c0250a2 = (C0250a) m21684b2.getLayoutParams();
                    int i22 = this.f1046f;
                    this.f1046f = Math.max(i22, c0250a2.bottomMargin + i22 + i13 + c0250a2.topMargin + m21678b(m21684b2));
                }
                i21++;
            }
        }
        this.f1046f += getPaddingTop() + getPaddingBottom();
        int resolveSizeAndState = View.resolveSizeAndState(Math.max(this.f1046f, getSuggestedMinimumHeight()), i2, 0);
        int i23 = (16777215 & resolveSizeAndState) - this.f1046f;
        if (z7 || (i23 != 0 && f > 0.0f)) {
            if (this.f1047g > 0.0f) {
                f = this.f1047g;
            }
            this.f1046f = 0;
            i4 = i10;
            int i24 = i9;
            int i25 = i8;
            int i26 = i23;
            for (int i27 = 0; i27 < virtualChildCount; i27++) {
                View m21684b3 = m21684b(i27);
                if (m21684b3.getVisibility() != 8) {
                    C0250a c0250a3 = (C0250a) m21684b3.getLayoutParams();
                    float f2 = c0250a3.f1056g;
                    if (f2 > 0.0f) {
                        int i28 = (int) ((i26 * f2) / f);
                        int i29 = i26 - i28;
                        int childMeasureSpec = getChildMeasureSpec(i, getPaddingLeft() + getPaddingRight() + c0250a3.leftMargin + c0250a3.rightMargin, c0250a3.width);
                        if (c0250a3.height == 0 && mode2 == 1073741824) {
                            m21684b3.measure(childMeasureSpec, View.MeasureSpec.makeMeasureSpec(i28 > 0 ? i28 : 0, 1073741824));
                        } else {
                            int measuredHeight2 = i28 + m21684b3.getMeasuredHeight();
                            int i30 = measuredHeight2;
                            if (measuredHeight2 < 0) {
                                i30 = 0;
                            }
                            m21684b3.measure(childMeasureSpec, View.MeasureSpec.makeMeasureSpec(i30, 1073741824));
                        }
                        i24 = View.combineMeasuredStates(i24, m21684b3.getMeasuredState() & (-256));
                        f -= f2;
                        i26 = i29;
                    }
                    int i31 = c0250a3.leftMargin + c0250a3.rightMargin;
                    int measuredWidth2 = m21684b3.getMeasuredWidth() + i31;
                    int max2 = Math.max(i25, measuredWidth2);
                    i4 = Math.max(i4, mode != 1073741824 && c0250a3.width == -1 ? i31 : measuredWidth2);
                    z5 = z5 && c0250a3.width == -1;
                    int i32 = this.f1046f;
                    this.f1046f = Math.max(i32, c0250a3.bottomMargin + m21684b3.getMeasuredHeight() + i32 + c0250a3.topMargin + m21678b(m21684b3));
                    i25 = max2;
                }
            }
            this.f1046f += getPaddingTop() + getPaddingBottom();
            int i33 = i24;
            i3 = i25;
            i9 = i33;
        } else {
            int max3 = Math.max(i10, i11);
            if (z8 && mode2 != 1073741824) {
                for (int i34 = 0; i34 < virtualChildCount; i34++) {
                    View m21684b4 = m21684b(i34);
                    if (m21684b4 != null && m21684b4.getVisibility() != 8 && ((C0250a) m21684b4.getLayoutParams()).f1056g > 0.0f) {
                        m21684b4.measure(View.MeasureSpec.makeMeasureSpec(m21684b4.getMeasuredWidth(), 1073741824), View.MeasureSpec.makeMeasureSpec(i13, 1073741824));
                    }
                }
            }
            i4 = max3;
            i3 = i8;
        }
        if (!z5 && mode != 1073741824) {
            i3 = i4;
        }
        setMeasuredDimension(View.resolveSizeAndState(Math.max(i3 + getPaddingLeft() + getPaddingRight(), getSuggestedMinimumWidth()), i, i9), resolveSizeAndState);
        if (z6) {
            m21675c(virtualChildCount, i2);
        }
    }

    /* renamed from: a */
    void m21691a(int i, int i2, int i3, int i4) {
        int paddingTop;
        int i5;
        int paddingLeft = getPaddingLeft();
        int i6 = i3 - i;
        int paddingRight = getPaddingRight();
        int paddingRight2 = getPaddingRight();
        int virtualChildCount = getVirtualChildCount();
        int i7 = this.f1045e;
        int i8 = this.f1045e;
        switch (i7 & 112) {
            case 16:
                paddingTop = getPaddingTop() + (((i4 - i2) - this.f1046f) / 2);
                break;
            case 80:
                paddingTop = ((getPaddingTop() + i4) - i2) - this.f1046f;
                break;
            default:
                paddingTop = getPaddingTop();
                break;
        }
        int i9 = paddingTop;
        int i10 = 0;
        while (i10 < virtualChildCount) {
            View m21684b = m21684b(i10);
            if (m21684b == null) {
                i9 += m21674d(i10);
            } else if (m21684b.getVisibility() != 8) {
                int measuredWidth = m21684b.getMeasuredWidth();
                int measuredHeight = m21684b.getMeasuredHeight();
                C0250a c0250a = (C0250a) m21684b.getLayoutParams();
                int i11 = c0250a.f1057h;
                int i12 = i11;
                if (i11 < 0) {
                    i12 = i8 & 8388615;
                }
                switch (C0576c.m20421a(i12, C0595u.m20320g(this)) & 7) {
                    case 1:
                        i5 = ((((((i6 - paddingLeft) - paddingRight2) - measuredWidth) / 2) + paddingLeft) + c0250a.leftMargin) - c0250a.rightMargin;
                        break;
                    case 5:
                        i5 = ((i6 - paddingRight) - measuredWidth) - c0250a.rightMargin;
                        break;
                    default:
                        i5 = paddingLeft + c0250a.leftMargin;
                        break;
                }
                if (m21676c(i10)) {
                    i9 = this.f1053m + i9;
                }
                int i13 = i9 + c0250a.topMargin;
                m21686a(m21684b, i5, i13 + m21688a(m21684b), measuredWidth, measuredHeight);
                i9 = i13 + c0250a.bottomMargin + measuredHeight + m21678b(m21684b);
                i10 = m21687a(m21684b, i10) + i10;
            }
            i10++;
        }
    }

    /* renamed from: a */
    void m21690a(Canvas canvas) {
        int virtualChildCount = getVirtualChildCount();
        for (int i = 0; i < virtualChildCount; i++) {
            View m21684b = m21684b(i);
            if (m21684b != null && m21684b.getVisibility() != 8 && m21676c(i)) {
                m21689a(canvas, (m21684b.getTop() - ((C0250a) m21684b.getLayoutParams()).topMargin) - this.f1053m);
            }
        }
        if (m21676c(virtualChildCount)) {
            View m21684b2 = m21684b(virtualChildCount - 1);
            m21689a(canvas, m21684b2 == null ? (getHeight() - getPaddingBottom()) - this.f1053m : ((C0250a) m21684b2.getLayoutParams()).bottomMargin + m21684b2.getBottom());
        }
    }

    /* renamed from: a */
    void m21689a(Canvas canvas, int i) {
        this.f1051k.setBounds(getPaddingLeft() + this.f1055o, i, (getWidth() - getPaddingRight()) - this.f1055o, this.f1053m + i);
        this.f1051k.draw(canvas);
    }

    /* renamed from: a */
    void m21685a(View view, int i, int i2, int i3, int i4, int i5) {
        measureChildWithMargins(view, i2, i3, i4, i5);
    }

    /* renamed from: b */
    int m21678b(View view) {
        return 0;
    }

    /* renamed from: b */
    View m21684b(int i) {
        return getChildAt(i);
    }

    /* renamed from: b */
    public C0250a generateLayoutParams(AttributeSet attributeSet) {
        return new C0250a(getContext(), attributeSet);
    }

    /* renamed from: b */
    public C0250a generateLayoutParams(ViewGroup.LayoutParams layoutParams) {
        return new C0250a(layoutParams);
    }

    /* JADX WARN: Code restructure failed: missing block: B:193:0x077e, code lost:
        if (r0[3] != (-1)) goto L194;
     */
    /* renamed from: b */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    void m21683b(int r9, int r10) {
        /*
            Method dump skipped, instructions count: 2203
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.appcompat.widget.LinearLayoutCompat.m21683b(int, int):void");
    }

    /* renamed from: b */
    void m21682b(int i, int i2, int i3, int i4) {
        int paddingLeft;
        int i5;
        int i6;
        int i7;
        int i8;
        boolean m21389a = C0327av.m21389a(this);
        int paddingTop = getPaddingTop();
        int i9 = i4 - i2;
        int paddingBottom = getPaddingBottom();
        int paddingBottom2 = getPaddingBottom();
        int virtualChildCount = getVirtualChildCount();
        int i10 = this.f1045e;
        int i11 = this.f1045e;
        boolean z = this.f1041a;
        int[] iArr = this.f1049i;
        int[] iArr2 = this.f1050j;
        switch (C0576c.m20421a(i10 & 8388615, C0595u.m20320g(this))) {
            case 1:
                paddingLeft = getPaddingLeft() + (((i3 - i) - this.f1046f) / 2);
                break;
            case 5:
                paddingLeft = ((getPaddingLeft() + i3) - i) - this.f1046f;
                break;
            default:
                paddingLeft = getPaddingLeft();
                break;
        }
        if (m21389a) {
            i5 = -1;
            i6 = virtualChildCount - 1;
        } else {
            i5 = 1;
            i6 = 0;
        }
        int i12 = 0;
        int i13 = paddingLeft;
        while (i12 < virtualChildCount) {
            int i14 = i6 + (i5 * i12);
            View m21684b = m21684b(i14);
            if (m21684b == null) {
                i13 += m21674d(i14);
                i7 = i12;
            } else if (m21684b.getVisibility() != 8) {
                int measuredWidth = m21684b.getMeasuredWidth();
                int measuredHeight = m21684b.getMeasuredHeight();
                C0250a c0250a = (C0250a) m21684b.getLayoutParams();
                int baseline = (!z || c0250a.height == -1) ? -1 : m21684b.getBaseline();
                int i15 = c0250a.f1057h;
                int i16 = i15;
                if (i15 < 0) {
                    i16 = i11 & 112;
                }
                switch (i16 & 112) {
                    case 16:
                        i8 = ((((((i9 - paddingTop) - paddingBottom2) - measuredHeight) / 2) + paddingTop) + c0250a.topMargin) - c0250a.bottomMargin;
                        break;
                    case 48:
                        int i17 = paddingTop + c0250a.topMargin;
                        i8 = i17;
                        if (baseline != -1) {
                            i8 = i17 + (iArr[1] - baseline);
                            break;
                        }
                        break;
                    case 80:
                        int i18 = ((i9 - paddingBottom) - measuredHeight) - c0250a.bottomMargin;
                        i8 = i18;
                        if (baseline != -1) {
                            i8 = i18 - (iArr2[2] - (m21684b.getMeasuredHeight() - baseline));
                            break;
                        }
                        break;
                    default:
                        i8 = paddingTop;
                        break;
                }
                if (m21676c(i14)) {
                    i13 = this.f1052l + i13;
                }
                int i19 = i13 + c0250a.leftMargin;
                m21686a(m21684b, i19 + m21688a(m21684b), i8, measuredWidth, measuredHeight);
                i13 = i19 + c0250a.rightMargin + measuredWidth + m21678b(m21684b);
                i7 = m21687a(m21684b, i14) + i12;
            } else {
                i7 = i12;
            }
            i12 = i7 + 1;
        }
    }

    /* renamed from: b */
    void m21681b(Canvas canvas) {
        int left;
        int virtualChildCount = getVirtualChildCount();
        boolean m21389a = C0327av.m21389a(this);
        for (int i = 0; i < virtualChildCount; i++) {
            View m21684b = m21684b(i);
            if (m21684b != null && m21684b.getVisibility() != 8 && m21676c(i)) {
                C0250a c0250a = (C0250a) m21684b.getLayoutParams();
                m21680b(canvas, m21389a ? c0250a.rightMargin + m21684b.getRight() : (m21684b.getLeft() - c0250a.leftMargin) - this.f1052l);
            }
        }
        if (m21676c(virtualChildCount)) {
            View m21684b2 = m21684b(virtualChildCount - 1);
            if (m21684b2 == null) {
                left = m21389a ? getPaddingLeft() : (getWidth() - getPaddingRight()) - this.f1052l;
            } else {
                C0250a c0250a2 = (C0250a) m21684b2.getLayoutParams();
                left = m21389a ? (m21684b2.getLeft() - c0250a2.leftMargin) - this.f1052l : c0250a2.rightMargin + m21684b2.getRight();
            }
            m21680b(canvas, left);
        }
    }

    /* renamed from: b */
    void m21680b(Canvas canvas, int i) {
        this.f1051k.setBounds(i, getPaddingTop() + this.f1055o, this.f1052l + i, (getHeight() - getPaddingBottom()) - this.f1055o);
        this.f1051k.draw(canvas);
    }

    /* renamed from: c */
    public boolean m21676c(int i) {
        boolean z;
        if (i == 0) {
            z = (this.f1054n & 1) != 0;
        } else if (i == getChildCount()) {
            z = true;
            if ((this.f1054n & 4) == 0) {
                z = false;
            }
        } else if ((this.f1054n & 2) != 0) {
            while (true) {
                i--;
                if (i < 0) {
                    z = false;
                    break;
                }
                z = true;
                if (getChildAt(i).getVisibility() != 8) {
                    break;
                }
            }
        } else {
            z = false;
        }
        return z;
    }

    @Override // android.view.ViewGroup
    protected boolean checkLayoutParams(ViewGroup.LayoutParams layoutParams) {
        return layoutParams instanceof C0250a;
    }

    /* renamed from: d */
    int m21674d(int i) {
        return 0;
    }

    @Override // android.view.View
    public int getBaseline() {
        int i;
        int i2 = -1;
        if (this.f1042b < 0) {
            i2 = super.getBaseline();
        } else if (getChildCount() <= this.f1042b) {
            throw new RuntimeException("mBaselineAlignedChildIndex of LinearLayout set to an index that is out of bounds.");
        } else {
            View childAt = getChildAt(this.f1042b);
            int baseline = childAt.getBaseline();
            if (baseline != -1) {
                int i3 = this.f1043c;
                if (this.f1044d == 1 && (i = this.f1045e & 112) != 48) {
                    switch (i) {
                        case 16:
                            i3 += ((((getBottom() - getTop()) - getPaddingTop()) - getPaddingBottom()) - this.f1046f) / 2;
                            break;
                        case 80:
                            i3 = ((getBottom() - getTop()) - getPaddingBottom()) - this.f1046f;
                            break;
                    }
                }
                i2 = ((C0250a) childAt.getLayoutParams()).topMargin + i3 + baseline;
            } else if (this.f1042b != 0) {
                throw new RuntimeException("mBaselineAlignedChildIndex of LinearLayout points to a View that doesn't know how to get its baseline.");
            }
        }
        return i2;
    }

    public int getBaselineAlignedChildIndex() {
        return this.f1042b;
    }

    public Drawable getDividerDrawable() {
        return this.f1051k;
    }

    public int getDividerPadding() {
        return this.f1055o;
    }

    public int getDividerWidth() {
        return this.f1052l;
    }

    public int getGravity() {
        return this.f1045e;
    }

    public int getOrientation() {
        return this.f1044d;
    }

    public int getShowDividers() {
        return this.f1054n;
    }

    int getVirtualChildCount() {
        return getChildCount();
    }

    public float getWeightSum() {
        return this.f1047g;
    }

    /* renamed from: j */
    public C0250a generateDefaultLayoutParams() {
        return this.f1044d == 0 ? new C0250a(-2, -2) : this.f1044d == 1 ? new C0250a(-1, -2) : null;
    }

    @Override // android.view.View
    protected void onDraw(Canvas canvas) {
        if (this.f1051k == null) {
            return;
        }
        if (this.f1044d == 1) {
            m21690a(canvas);
        } else {
            m21681b(canvas);
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
        if (this.f1044d == 1) {
            m21691a(i, i2, i3, i4);
        } else {
            m21682b(i, i2, i3, i4);
        }
    }

    @Override // android.view.View
    public void onMeasure(int i, int i2) {
        if (this.f1044d == 1) {
            m21692a(i, i2);
        } else {
            m21683b(i, i2);
        }
    }

    public void setBaselineAligned(boolean z) {
        this.f1041a = z;
    }

    public void setBaselineAlignedChildIndex(int i) {
        if (i < 0 || i >= getChildCount()) {
            throw new IllegalArgumentException("base aligned child index out of range (0, " + getChildCount() + ")");
        }
        this.f1042b = i;
    }

    public void setDividerDrawable(Drawable drawable) {
        boolean z = false;
        if (drawable == this.f1051k) {
            return;
        }
        this.f1051k = drawable;
        if (drawable != null) {
            this.f1052l = drawable.getIntrinsicWidth();
            this.f1053m = drawable.getIntrinsicHeight();
        } else {
            this.f1052l = 0;
            this.f1053m = 0;
        }
        if (drawable == null) {
            z = true;
        }
        setWillNotDraw(z);
        requestLayout();
    }

    public void setDividerPadding(int i) {
        this.f1055o = i;
    }

    public void setGravity(int i) {
        if (this.f1045e != i) {
            if ((8388615 & i) == 0) {
                i = 8388611 | i;
            }
            int i2 = i;
            if ((i & 112) == 0) {
                i2 = i | 48;
            }
            this.f1045e = i2;
            requestLayout();
        }
    }

    public void setHorizontalGravity(int i) {
        int i2 = i & 8388615;
        if ((this.f1045e & 8388615) != i2) {
            this.f1045e = i2 | (this.f1045e & (-8388616));
            requestLayout();
        }
    }

    public void setMeasureWithLargestChildEnabled(boolean z) {
        this.f1048h = z;
    }

    public void setOrientation(int i) {
        if (this.f1044d != i) {
            this.f1044d = i;
            requestLayout();
        }
    }

    public void setShowDividers(int i) {
        if (i != this.f1054n) {
            requestLayout();
        }
        this.f1054n = i;
    }

    public void setVerticalGravity(int i) {
        int i2 = i & 112;
        if ((this.f1045e & 112) != i2) {
            this.f1045e = i2 | (this.f1045e & (-113));
            requestLayout();
        }
    }

    public void setWeightSum(float f) {
        this.f1047g = Math.max(0.0f, f);
    }

    @Override // android.view.ViewGroup
    public boolean shouldDelayChildPressedState() {
        return false;
    }
}

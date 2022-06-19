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
import androidx.appcompat.C0051a;
import androidx.core.p023g.C0533c;
import androidx.core.p023g.C0552u;
import com.google.android.flexbox.FlexItem;
/* renamed from: androidx.appcompat.widget.ae */
/* loaded from: classes-dex2jar.jar:androidx/appcompat/widget/ae.class */
public class C0277ae extends ViewGroup {
    private static final String ACCESSIBILITY_CLASS_NAME = "androidx.appcompat.widget.LinearLayoutCompat";
    public static final int HORIZONTAL = 0;
    private static final int INDEX_BOTTOM = 2;
    private static final int INDEX_CENTER_VERTICAL = 0;
    private static final int INDEX_FILL = 3;
    private static final int INDEX_TOP = 1;
    public static final int SHOW_DIVIDER_BEGINNING = 1;
    public static final int SHOW_DIVIDER_END = 4;
    public static final int SHOW_DIVIDER_MIDDLE = 2;
    public static final int SHOW_DIVIDER_NONE = 0;
    public static final int VERTICAL = 1;
    private static final int VERTICAL_GRAVITY_COUNT = 4;
    private boolean mBaselineAligned;
    private int mBaselineAlignedChildIndex;
    private int mBaselineChildTop;
    private Drawable mDivider;
    private int mDividerHeight;
    private int mDividerPadding;
    private int mDividerWidth;
    private int mGravity;
    private int[] mMaxAscent;
    private int[] mMaxDescent;
    private int mOrientation;
    private int mShowDividers;
    private int mTotalLength;
    private boolean mUseLargestChild;
    private float mWeightSum;

    /* renamed from: androidx.appcompat.widget.ae$a */
    /* loaded from: classes-dex2jar.jar:androidx/appcompat/widget/ae$a.class */
    public static class C0278a extends ViewGroup.MarginLayoutParams {

        /* renamed from: g */
        public float f1152g;

        /* renamed from: h */
        public int f1153h;

        public C0278a(int i, int i2) {
            super(i, i2);
            this.f1153h = -1;
            this.f1152g = FlexItem.FLEX_GROW_DEFAULT;
        }

        public C0278a(Context context, AttributeSet attributeSet) {
            super(context, attributeSet);
            this.f1153h = -1;
            TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, C0051a.C0061j.LinearLayoutCompat_Layout);
            this.f1152g = obtainStyledAttributes.getFloat(C0051a.C0061j.LinearLayoutCompat_Layout_android_layout_weight, FlexItem.FLEX_GROW_DEFAULT);
            this.f1153h = obtainStyledAttributes.getInt(C0051a.C0061j.LinearLayoutCompat_Layout_android_layout_gravity, -1);
            obtainStyledAttributes.recycle();
        }

        public C0278a(ViewGroup.LayoutParams layoutParams) {
            super(layoutParams);
            this.f1153h = -1;
        }
    }

    public C0277ae(Context context) {
        this(context, null);
    }

    public C0277ae(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    public C0277ae(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        this.mBaselineAligned = true;
        this.mBaselineAlignedChildIndex = -1;
        this.mBaselineChildTop = 0;
        this.mGravity = 8388659;
        C0311as m7156a = C0311as.m7156a(context, attributeSet, C0051a.C0061j.LinearLayoutCompat, i, 0);
        int m7161a = m7156a.m7161a(C0051a.C0061j.LinearLayoutCompat_android_orientation, -1);
        if (m7161a >= 0) {
            setOrientation(m7161a);
        }
        int m7161a2 = m7156a.m7161a(C0051a.C0061j.LinearLayoutCompat_android_gravity, -1);
        if (m7161a2 >= 0) {
            setGravity(m7161a2);
        }
        boolean m7159a = m7156a.m7159a(C0051a.C0061j.LinearLayoutCompat_android_baselineAligned, true);
        if (!m7159a) {
            setBaselineAligned(m7159a);
        }
        this.mWeightSum = m7156a.m7162a(C0051a.C0061j.LinearLayoutCompat_android_weightSum, -1.0f);
        this.mBaselineAlignedChildIndex = m7156a.m7161a(C0051a.C0061j.LinearLayoutCompat_android_baselineAlignedChildIndex, -1);
        this.mUseLargestChild = m7156a.m7159a(C0051a.C0061j.LinearLayoutCompat_measureWithLargestChild, false);
        setDividerDrawable(m7156a.m7163a(C0051a.C0061j.LinearLayoutCompat_divider));
        this.mShowDividers = m7156a.m7161a(C0051a.C0061j.LinearLayoutCompat_showDividers, 0);
        this.mDividerPadding = m7156a.m7147e(C0051a.C0061j.LinearLayoutCompat_dividerPadding, 0);
        m7156a.m7164a();
    }

    private void forceUniformHeight(int i, int i2) {
        int makeMeasureSpec = View.MeasureSpec.makeMeasureSpec(getMeasuredHeight(), 1073741824);
        for (int i3 = 0; i3 < i; i3++) {
            View virtualChildAt = getVirtualChildAt(i3);
            if (virtualChildAt.getVisibility() != 8) {
                C0278a c0278a = (C0278a) virtualChildAt.getLayoutParams();
                if (c0278a.height == -1) {
                    int i4 = c0278a.width;
                    c0278a.width = virtualChildAt.getMeasuredWidth();
                    measureChildWithMargins(virtualChildAt, i2, 0, makeMeasureSpec, 0);
                    c0278a.width = i4;
                }
            }
        }
    }

    private void forceUniformWidth(int i, int i2) {
        int makeMeasureSpec = View.MeasureSpec.makeMeasureSpec(getMeasuredWidth(), 1073741824);
        for (int i3 = 0; i3 < i; i3++) {
            View virtualChildAt = getVirtualChildAt(i3);
            if (virtualChildAt.getVisibility() != 8) {
                C0278a c0278a = (C0278a) virtualChildAt.getLayoutParams();
                if (c0278a.width == -1) {
                    int i4 = c0278a.height;
                    c0278a.height = virtualChildAt.getMeasuredHeight();
                    measureChildWithMargins(virtualChildAt, makeMeasureSpec, 0, i2, 0);
                    c0278a.height = i4;
                }
            }
        }
    }

    private void setChildFrame(View view, int i, int i2, int i3, int i4) {
        view.layout(i, i2, i3 + i, i4 + i2);
    }

    @Override // android.view.ViewGroup
    protected boolean checkLayoutParams(ViewGroup.LayoutParams layoutParams) {
        return layoutParams instanceof C0278a;
    }

    void drawDividersHorizontal(Canvas canvas) {
        int i;
        int i2;
        int i3;
        int virtualChildCount = getVirtualChildCount();
        boolean m7115a = C0321ay.m7115a(this);
        for (int i4 = 0; i4 < virtualChildCount; i4++) {
            View virtualChildAt = getVirtualChildAt(i4);
            if (virtualChildAt != null && virtualChildAt.getVisibility() != 8 && hasDividerBeforeChildAt(i4)) {
                C0278a c0278a = (C0278a) virtualChildAt.getLayoutParams();
                drawVerticalDivider(canvas, m7115a ? virtualChildAt.getRight() + c0278a.rightMargin : (virtualChildAt.getLeft() - c0278a.leftMargin) - this.mDividerWidth);
            }
        }
        if (hasDividerBeforeChildAt(virtualChildCount)) {
            View virtualChildAt2 = getVirtualChildAt(virtualChildCount - 1);
            if (virtualChildAt2 == null) {
                if (m7115a) {
                    i = getPaddingLeft();
                    drawVerticalDivider(canvas, i);
                }
                i3 = getWidth() - getPaddingRight();
                i2 = this.mDividerWidth;
                i = i3 - i2;
                drawVerticalDivider(canvas, i);
            }
            C0278a c0278a2 = (C0278a) virtualChildAt2.getLayoutParams();
            if (!m7115a) {
                i = virtualChildAt2.getRight() + c0278a2.rightMargin;
                drawVerticalDivider(canvas, i);
            }
            i3 = virtualChildAt2.getLeft() - c0278a2.leftMargin;
            i2 = this.mDividerWidth;
            i = i3 - i2;
            drawVerticalDivider(canvas, i);
        }
    }

    void drawDividersVertical(Canvas canvas) {
        int virtualChildCount = getVirtualChildCount();
        for (int i = 0; i < virtualChildCount; i++) {
            View virtualChildAt = getVirtualChildAt(i);
            if (virtualChildAt != null && virtualChildAt.getVisibility() != 8 && hasDividerBeforeChildAt(i)) {
                drawHorizontalDivider(canvas, (virtualChildAt.getTop() - ((C0278a) virtualChildAt.getLayoutParams()).topMargin) - this.mDividerHeight);
            }
        }
        if (hasDividerBeforeChildAt(virtualChildCount)) {
            View virtualChildAt2 = getVirtualChildAt(virtualChildCount - 1);
            drawHorizontalDivider(canvas, virtualChildAt2 == null ? (getHeight() - getPaddingBottom()) - this.mDividerHeight : virtualChildAt2.getBottom() + ((C0278a) virtualChildAt2.getLayoutParams()).bottomMargin);
        }
    }

    void drawHorizontalDivider(Canvas canvas, int i) {
        this.mDivider.setBounds(getPaddingLeft() + this.mDividerPadding, i, (getWidth() - getPaddingRight()) - this.mDividerPadding, this.mDividerHeight + i);
        this.mDivider.draw(canvas);
    }

    void drawVerticalDivider(Canvas canvas, int i) {
        this.mDivider.setBounds(i, getPaddingTop() + this.mDividerPadding, this.mDividerWidth + i, (getHeight() - getPaddingBottom()) - this.mDividerPadding);
        this.mDivider.draw(canvas);
    }

    @Override // android.view.ViewGroup
    public C0278a generateDefaultLayoutParams() {
        int i = this.mOrientation;
        if (i == 0) {
            return new C0278a(-2, -2);
        }
        if (i != 1) {
            return null;
        }
        return new C0278a(-1, -2);
    }

    @Override // android.view.ViewGroup
    public C0278a generateLayoutParams(AttributeSet attributeSet) {
        return new C0278a(getContext(), attributeSet);
    }

    @Override // android.view.ViewGroup
    public C0278a generateLayoutParams(ViewGroup.LayoutParams layoutParams) {
        return new C0278a(layoutParams);
    }

    @Override // android.view.View
    public int getBaseline() {
        if (this.mBaselineAlignedChildIndex < 0) {
            return super.getBaseline();
        }
        int childCount = getChildCount();
        int i = this.mBaselineAlignedChildIndex;
        if (childCount <= i) {
            throw new RuntimeException("mBaselineAlignedChildIndex of LinearLayout set to an index that is out of bounds.");
        }
        View childAt = getChildAt(i);
        int baseline = childAt.getBaseline();
        if (baseline == -1) {
            if (this.mBaselineAlignedChildIndex != 0) {
                throw new RuntimeException("mBaselineAlignedChildIndex of LinearLayout points to a View that doesn't know how to get its baseline.");
            }
            return -1;
        }
        int i2 = this.mBaselineChildTop;
        int i3 = i2;
        if (this.mOrientation == 1) {
            int i4 = this.mGravity & 112;
            i3 = i2;
            if (i4 != 48) {
                i3 = i4 != 16 ? i4 != 80 ? i2 : ((getBottom() - getTop()) - getPaddingBottom()) - this.mTotalLength : i2 + (((((getBottom() - getTop()) - getPaddingTop()) - getPaddingBottom()) - this.mTotalLength) / 2);
            }
        }
        return i3 + ((C0278a) childAt.getLayoutParams()).topMargin + baseline;
    }

    public int getBaselineAlignedChildIndex() {
        return this.mBaselineAlignedChildIndex;
    }

    int getChildrenSkipCount(View view, int i) {
        return 0;
    }

    public Drawable getDividerDrawable() {
        return this.mDivider;
    }

    public int getDividerPadding() {
        return this.mDividerPadding;
    }

    public int getDividerWidth() {
        return this.mDividerWidth;
    }

    public int getGravity() {
        return this.mGravity;
    }

    int getLocationOffset(View view) {
        return 0;
    }

    int getNextLocationOffset(View view) {
        return 0;
    }

    public int getOrientation() {
        return this.mOrientation;
    }

    public int getShowDividers() {
        return this.mShowDividers;
    }

    View getVirtualChildAt(int i) {
        return getChildAt(i);
    }

    int getVirtualChildCount() {
        return getChildCount();
    }

    public float getWeightSum() {
        return this.mWeightSum;
    }

    public boolean hasDividerBeforeChildAt(int i) {
        boolean z = false;
        if (i == 0) {
            if ((this.mShowDividers & 1) != 0) {
                z = true;
            }
            return z;
        } else if (i == getChildCount()) {
            boolean z2 = false;
            if ((this.mShowDividers & 4) != 0) {
                z2 = true;
            }
            return z2;
        } else {
            boolean z3 = false;
            if ((this.mShowDividers & 2) != 0) {
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

    public boolean isBaselineAligned() {
        return this.mBaselineAligned;
    }

    public boolean isMeasureWithLargestChildEnabled() {
        return this.mUseLargestChild;
    }

    void layoutHorizontal(int i, int i2, int i3, int i4) {
        int i5;
        int i6;
        int i7;
        boolean m7115a = C0321ay.m7115a(this);
        int paddingTop = getPaddingTop();
        int i8 = i4 - i2;
        int paddingBottom = getPaddingBottom();
        int paddingBottom2 = getPaddingBottom();
        int virtualChildCount = getVirtualChildCount();
        int i9 = this.mGravity;
        int i10 = i9 & 112;
        boolean z = this.mBaselineAligned;
        int[] iArr = this.mMaxAscent;
        int[] iArr2 = this.mMaxDescent;
        int m6344a = C0533c.m6344a(8388615 & i9, C0552u.m6245f(this));
        int paddingLeft = m6344a != 1 ? m6344a != 5 ? getPaddingLeft() : ((getPaddingLeft() + i3) - i) - this.mTotalLength : getPaddingLeft() + (((i3 - i) - this.mTotalLength) / 2);
        if (m7115a) {
            i6 = virtualChildCount - 1;
            i5 = -1;
        } else {
            i6 = 0;
            i5 = 1;
        }
        int i11 = 0;
        while (i11 < virtualChildCount) {
            int i12 = i6 + (i5 * i11);
            View virtualChildAt = getVirtualChildAt(i12);
            if (virtualChildAt == null) {
                paddingLeft += measureNullChild(i12);
            } else if (virtualChildAt.getVisibility() != 8) {
                int measuredWidth = virtualChildAt.getMeasuredWidth();
                int measuredHeight = virtualChildAt.getMeasuredHeight();
                C0278a c0278a = (C0278a) virtualChildAt.getLayoutParams();
                int baseline = (!z || c0278a.height == -1) ? -1 : virtualChildAt.getBaseline();
                int i13 = c0278a.f1153h;
                int i14 = i13;
                if (i13 < 0) {
                    i14 = i10;
                }
                int i15 = i14 & 112;
                if (i15 == 16) {
                    i7 = ((((((i8 - paddingTop) - paddingBottom2) - measuredHeight) / 2) + paddingTop) + c0278a.topMargin) - c0278a.bottomMargin;
                } else if (i15 == 48) {
                    int i16 = c0278a.topMargin + paddingTop;
                    i7 = i16;
                    if (baseline != -1) {
                        i7 = i16 + (iArr[1] - baseline);
                    }
                } else if (i15 != 80) {
                    i7 = paddingTop;
                } else {
                    int i17 = ((i8 - paddingBottom) - measuredHeight) - c0278a.bottomMargin;
                    i7 = i17;
                    if (baseline != -1) {
                        i7 = i17 - (iArr2[2] - (virtualChildAt.getMeasuredHeight() - baseline));
                    }
                }
                int i18 = paddingLeft;
                if (hasDividerBeforeChildAt(i12)) {
                    i18 = paddingLeft + this.mDividerWidth;
                }
                int i19 = c0278a.leftMargin + i18;
                setChildFrame(virtualChildAt, i19 + getLocationOffset(virtualChildAt), i7, measuredWidth, measuredHeight);
                int i20 = c0278a.rightMargin;
                int nextLocationOffset = getNextLocationOffset(virtualChildAt);
                i11 += getChildrenSkipCount(virtualChildAt, i12);
                paddingLeft = i19 + measuredWidth + i20 + nextLocationOffset;
            }
            i11++;
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:30:0x011f  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    void layoutVertical(int r8, int r9, int r10, int r11) {
        /*
            Method dump skipped, instructions count: 369
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.appcompat.widget.C0277ae.layoutVertical(int, int, int, int):void");
    }

    void measureChildBeforeLayout(View view, int i, int i2, int i3, int i4, int i5) {
        measureChildWithMargins(view, i2, i3, i4, i5);
    }

    /* JADX WARN: Code restructure failed: missing block: B:110:0x03f4, code lost:
        if (r0 == 0) goto L111;
     */
    /* JADX WARN: Removed duplicated region for block: B:70:0x029f  */
    /* JADX WARN: Removed duplicated region for block: B:71:0x02a8  */
    /* JADX WARN: Removed duplicated region for block: B:81:0x0308  */
    /* JADX WARN: Removed duplicated region for block: B:85:0x0320  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    void measureHorizontal(int r9, int r10) {
        /*
            Method dump skipped, instructions count: 2174
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.appcompat.widget.C0277ae.measureHorizontal(int, int):void");
    }

    int measureNullChild(int i) {
        return 0;
    }

    void measureVertical(int i, int i2) {
        int i3;
        int i4;
        int i5;
        boolean z;
        int i6;
        int i7;
        int i8;
        this.mTotalLength = 0;
        int virtualChildCount = getVirtualChildCount();
        int mode = View.MeasureSpec.getMode(i);
        int mode2 = View.MeasureSpec.getMode(i2);
        int i9 = this.mBaselineAlignedChildIndex;
        boolean z2 = this.mUseLargestChild;
        int i10 = 0;
        int i11 = 0;
        int i12 = 0;
        int i13 = 0;
        int i14 = 0;
        int i15 = 0;
        boolean z3 = false;
        boolean z4 = false;
        float f = 0.0f;
        boolean z5 = true;
        while (i15 < virtualChildCount) {
            View virtualChildAt = getVirtualChildAt(i15);
            if (virtualChildAt == null) {
                this.mTotalLength += measureNullChild(i15);
            } else if (virtualChildAt.getVisibility() == 8) {
                i15 += getChildrenSkipCount(virtualChildAt, i15);
            } else {
                if (hasDividerBeforeChildAt(i15)) {
                    this.mTotalLength += this.mDividerHeight;
                }
                C0278a c0278a = (C0278a) virtualChildAt.getLayoutParams();
                f += c0278a.f1152g;
                if (mode2 == 1073741824 && c0278a.height == 0 && c0278a.f1152g > FlexItem.FLEX_GROW_DEFAULT) {
                    int i16 = this.mTotalLength;
                    this.mTotalLength = Math.max(i16, c0278a.topMargin + i16 + c0278a.bottomMargin);
                    z3 = true;
                } else {
                    if (c0278a.height != 0 || c0278a.f1152g <= FlexItem.FLEX_GROW_DEFAULT) {
                        i8 = Integer.MIN_VALUE;
                    } else {
                        c0278a.height = -2;
                        i8 = 0;
                    }
                    measureChildBeforeLayout(virtualChildAt, i15, i, 0, i2, f == FlexItem.FLEX_GROW_DEFAULT ? this.mTotalLength : 0);
                    if (i8 != Integer.MIN_VALUE) {
                        c0278a.height = i8;
                    }
                    int measuredHeight = virtualChildAt.getMeasuredHeight();
                    int i17 = this.mTotalLength;
                    this.mTotalLength = Math.max(i17, i17 + measuredHeight + c0278a.topMargin + c0278a.bottomMargin + getNextLocationOffset(virtualChildAt));
                    if (z2) {
                        i12 = Math.max(measuredHeight, i12);
                    }
                }
                int i18 = i15;
                if (i9 >= 0 && i9 == i18 + 1) {
                    this.mBaselineChildTop = this.mTotalLength;
                }
                if (i18 < i9 && c0278a.f1152g > FlexItem.FLEX_GROW_DEFAULT) {
                    throw new RuntimeException("A child of LinearLayout with index less than mBaselineAlignedChildIndex has weight > 0, which won't work.  Either remove the weight, or don't set mBaselineAlignedChildIndex.");
                }
                if (mode == 1073741824 || c0278a.width != -1) {
                    z = false;
                } else {
                    z = true;
                    z4 = true;
                }
                int i19 = c0278a.leftMargin + c0278a.rightMargin;
                int measuredWidth = virtualChildAt.getMeasuredWidth() + i19;
                i11 = Math.max(i11, measuredWidth);
                int combineMeasuredStates = View.combineMeasuredStates(i10, virtualChildAt.getMeasuredState());
                boolean z6 = z5 && c0278a.width == -1;
                if (c0278a.f1152g > FlexItem.FLEX_GROW_DEFAULT) {
                    if (!z) {
                        i19 = measuredWidth;
                    }
                    i6 = i14;
                    i7 = Math.max(i13, i19);
                } else {
                    if (!z) {
                        i19 = measuredWidth;
                    }
                    i6 = Math.max(i14, i19);
                    i7 = i13;
                }
                int childrenSkipCount = getChildrenSkipCount(virtualChildAt, i18);
                boolean z7 = z6;
                i13 = i7;
                i14 = i6;
                i10 = combineMeasuredStates;
                z5 = z7;
                i15 = childrenSkipCount + i18;
            }
            i15++;
        }
        if (this.mTotalLength > 0 && hasDividerBeforeChildAt(virtualChildCount)) {
            this.mTotalLength += this.mDividerHeight;
        }
        if (z2 && (mode2 == Integer.MIN_VALUE || mode2 == 0)) {
            this.mTotalLength = 0;
            int i20 = 0;
            while (i20 < virtualChildCount) {
                View virtualChildAt2 = getVirtualChildAt(i20);
                if (virtualChildAt2 == null) {
                    this.mTotalLength += measureNullChild(i20);
                } else if (virtualChildAt2.getVisibility() == 8) {
                    i20 += getChildrenSkipCount(virtualChildAt2, i20);
                } else {
                    C0278a c0278a2 = (C0278a) virtualChildAt2.getLayoutParams();
                    int i21 = this.mTotalLength;
                    this.mTotalLength = Math.max(i21, i21 + i12 + c0278a2.topMargin + c0278a2.bottomMargin + getNextLocationOffset(virtualChildAt2));
                }
                i20++;
            }
        }
        this.mTotalLength += getPaddingTop() + getPaddingBottom();
        int resolveSizeAndState = View.resolveSizeAndState(Math.max(this.mTotalLength, getSuggestedMinimumHeight()), i2, 0);
        int i22 = (16777215 & resolveSizeAndState) - this.mTotalLength;
        if (z3 || (i22 != 0 && f > FlexItem.FLEX_GROW_DEFAULT)) {
            float f2 = this.mWeightSum;
            if (f2 > FlexItem.FLEX_GROW_DEFAULT) {
                f = f2;
            }
            this.mTotalLength = 0;
            int i23 = i22;
            i4 = i11;
            for (int i24 = 0; i24 < virtualChildCount; i24++) {
                View virtualChildAt3 = getVirtualChildAt(i24);
                if (virtualChildAt3.getVisibility() != 8) {
                    C0278a c0278a3 = (C0278a) virtualChildAt3.getLayoutParams();
                    float f3 = c0278a3.f1152g;
                    if (f3 > FlexItem.FLEX_GROW_DEFAULT) {
                        int i25 = (int) ((i23 * f3) / f);
                        int paddingLeft = getPaddingLeft();
                        int paddingRight = getPaddingRight();
                        int i26 = i23 - i25;
                        f -= f3;
                        int childMeasureSpec = getChildMeasureSpec(i, paddingLeft + paddingRight + c0278a3.leftMargin + c0278a3.rightMargin, c0278a3.width);
                        if (c0278a3.height == 0 && mode2 == 1073741824) {
                            virtualChildAt3.measure(childMeasureSpec, View.MeasureSpec.makeMeasureSpec(i25 > 0 ? i25 : 0, 1073741824));
                        } else {
                            int measuredHeight2 = virtualChildAt3.getMeasuredHeight() + i25;
                            int i27 = measuredHeight2;
                            if (measuredHeight2 < 0) {
                                i27 = 0;
                            }
                            virtualChildAt3.measure(childMeasureSpec, View.MeasureSpec.makeMeasureSpec(i27, 1073741824));
                        }
                        i10 = View.combineMeasuredStates(i10, virtualChildAt3.getMeasuredState() & (-256));
                        i23 = i26;
                    }
                    int i28 = c0278a3.leftMargin + c0278a3.rightMargin;
                    int measuredWidth2 = virtualChildAt3.getMeasuredWidth() + i28;
                    int max = Math.max(i4, measuredWidth2);
                    i14 = Math.max(i14, mode != 1073741824 && c0278a3.width == -1 ? i28 : measuredWidth2);
                    z5 = z5 && c0278a3.width == -1;
                    int i29 = this.mTotalLength;
                    this.mTotalLength = Math.max(i29, virtualChildAt3.getMeasuredHeight() + i29 + c0278a3.topMargin + c0278a3.bottomMargin + getNextLocationOffset(virtualChildAt3));
                    i4 = max;
                }
            }
            this.mTotalLength += getPaddingTop() + getPaddingBottom();
            int i30 = i14;
            i3 = i10;
            i5 = i30;
        } else {
            int max2 = Math.max(i14, i13);
            if (z2 && mode2 != 1073741824) {
                for (int i31 = 0; i31 < virtualChildCount; i31++) {
                    View virtualChildAt4 = getVirtualChildAt(i31);
                    if (virtualChildAt4 != null && virtualChildAt4.getVisibility() != 8 && ((C0278a) virtualChildAt4.getLayoutParams()).f1152g > FlexItem.FLEX_GROW_DEFAULT) {
                        virtualChildAt4.measure(View.MeasureSpec.makeMeasureSpec(virtualChildAt4.getMeasuredWidth(), 1073741824), View.MeasureSpec.makeMeasureSpec(i12, 1073741824));
                    }
                }
            }
            i3 = i10;
            i5 = max2;
            i4 = i11;
        }
        if (z5 || mode == 1073741824) {
            i5 = i4;
        }
        setMeasuredDimension(View.resolveSizeAndState(Math.max(i5 + getPaddingLeft() + getPaddingRight(), getSuggestedMinimumWidth()), i, i3), resolveSizeAndState);
        if (z4) {
            forceUniformWidth(virtualChildCount, i2);
        }
    }

    @Override // android.view.View
    protected void onDraw(Canvas canvas) {
        if (this.mDivider == null) {
            return;
        }
        if (this.mOrientation == 1) {
            drawDividersVertical(canvas);
        } else {
            drawDividersHorizontal(canvas);
        }
    }

    @Override // android.view.View
    public void onInitializeAccessibilityEvent(AccessibilityEvent accessibilityEvent) {
        super.onInitializeAccessibilityEvent(accessibilityEvent);
        accessibilityEvent.setClassName(ACCESSIBILITY_CLASS_NAME);
    }

    @Override // android.view.View
    public void onInitializeAccessibilityNodeInfo(AccessibilityNodeInfo accessibilityNodeInfo) {
        super.onInitializeAccessibilityNodeInfo(accessibilityNodeInfo);
        accessibilityNodeInfo.setClassName(ACCESSIBILITY_CLASS_NAME);
    }

    @Override // android.view.ViewGroup, android.view.View
    public void onLayout(boolean z, int i, int i2, int i3, int i4) {
        if (this.mOrientation == 1) {
            layoutVertical(i, i2, i3, i4);
        } else {
            layoutHorizontal(i, i2, i3, i4);
        }
    }

    @Override // android.view.View
    public void onMeasure(int i, int i2) {
        if (this.mOrientation == 1) {
            measureVertical(i, i2);
        } else {
            measureHorizontal(i, i2);
        }
    }

    public void setBaselineAligned(boolean z) {
        this.mBaselineAligned = z;
    }

    public void setBaselineAlignedChildIndex(int i) {
        if (i >= 0 && i < getChildCount()) {
            this.mBaselineAlignedChildIndex = i;
            return;
        }
        throw new IllegalArgumentException("base aligned child index out of range (0, " + getChildCount() + ")");
    }

    public void setDividerDrawable(Drawable drawable) {
        if (drawable == this.mDivider) {
            return;
        }
        this.mDivider = drawable;
        boolean z = false;
        if (drawable != null) {
            this.mDividerWidth = drawable.getIntrinsicWidth();
            this.mDividerHeight = drawable.getIntrinsicHeight();
        } else {
            this.mDividerWidth = 0;
            this.mDividerHeight = 0;
        }
        if (drawable == null) {
            z = true;
        }
        setWillNotDraw(z);
        requestLayout();
    }

    public void setDividerPadding(int i) {
        this.mDividerPadding = i;
    }

    public void setGravity(int i) {
        if (this.mGravity != i) {
            int i2 = i;
            if ((8388615 & i) == 0) {
                i2 = i | 8388611;
            }
            int i3 = i2;
            if ((i2 & 112) == 0) {
                i3 = i2 | 48;
            }
            this.mGravity = i3;
            requestLayout();
        }
    }

    public void setHorizontalGravity(int i) {
        int i2 = i & 8388615;
        int i3 = this.mGravity;
        if ((8388615 & i3) != i2) {
            this.mGravity = i2 | ((-8388616) & i3);
            requestLayout();
        }
    }

    public void setMeasureWithLargestChildEnabled(boolean z) {
        this.mUseLargestChild = z;
    }

    public void setOrientation(int i) {
        if (this.mOrientation != i) {
            this.mOrientation = i;
            requestLayout();
        }
    }

    public void setShowDividers(int i) {
        if (i != this.mShowDividers) {
            requestLayout();
        }
        this.mShowDividers = i;
    }

    public void setVerticalGravity(int i) {
        int i2 = i & 112;
        int i3 = this.mGravity;
        if ((i3 & 112) != i2) {
            this.mGravity = i2 | (i3 & (-113));
            requestLayout();
        }
    }

    public void setWeightSum(float f) {
        this.mWeightSum = Math.max((float) FlexItem.FLEX_GROW_DEFAULT, f);
    }

    @Override // android.view.ViewGroup
    public boolean shouldDelayChildPressedState() {
        return false;
    }
}

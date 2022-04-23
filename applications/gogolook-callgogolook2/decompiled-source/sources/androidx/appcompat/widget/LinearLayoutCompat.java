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
import androidx.annotation.RestrictTo;
import androidx.appcompat.C0054R;
import androidx.core.view.GravityCompat;
import androidx.core.view.InputDeviceCompat;
import androidx.core.view.ViewCompat;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
/* loaded from: classes-dex2jar.jar:androidx/appcompat/widget/LinearLayoutCompat.class */
public class LinearLayoutCompat extends ViewGroup {
    public static final String ACCESSIBILITY_CLASS_NAME = "androidx.appcompat.widget.LinearLayoutCompat";
    public static final int HORIZONTAL = 0;
    public static final int INDEX_BOTTOM = 2;
    public static final int INDEX_CENTER_VERTICAL = 0;
    public static final int INDEX_FILL = 3;
    public static final int INDEX_TOP = 1;
    public static final int SHOW_DIVIDER_BEGINNING = 1;
    public static final int SHOW_DIVIDER_END = 4;
    public static final int SHOW_DIVIDER_MIDDLE = 2;
    public static final int SHOW_DIVIDER_NONE = 0;
    public static final int VERTICAL = 1;
    public static final int VERTICAL_GRAVITY_COUNT = 4;
    public boolean mBaselineAligned;
    public int mBaselineAlignedChildIndex;
    public int mBaselineChildTop;
    public Drawable mDivider;
    public int mDividerHeight;
    public int mDividerPadding;
    public int mDividerWidth;
    public int mGravity;
    public int[] mMaxAscent;
    public int[] mMaxDescent;
    public int mOrientation;
    public int mShowDividers;
    public int mTotalLength;
    public boolean mUseLargestChild;
    public float mWeightSum;

    @Retention(RetentionPolicy.SOURCE)
    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP_PREFIX})
    /* loaded from: classes-dex2jar.jar:androidx/appcompat/widget/LinearLayoutCompat$DividerMode.class */
    public @interface DividerMode {
    }

    /* loaded from: classes-dex2jar.jar:androidx/appcompat/widget/LinearLayoutCompat$LayoutParams.class */
    public static class LayoutParams extends ViewGroup.MarginLayoutParams {
        public int gravity;
        public float weight;

        public LayoutParams(int i, int i2) {
            super(i, i2);
            this.gravity = -1;
            this.weight = 0.0f;
        }

        public LayoutParams(int i, int i2, float f) {
            super(i, i2);
            this.gravity = -1;
            this.weight = f;
        }

        public LayoutParams(Context context, AttributeSet attributeSet) {
            super(context, attributeSet);
            this.gravity = -1;
            TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, C0054R.styleable.LinearLayoutCompat_Layout);
            this.weight = obtainStyledAttributes.getFloat(C0054R.styleable.LinearLayoutCompat_Layout_android_layout_weight, 0.0f);
            this.gravity = obtainStyledAttributes.getInt(C0054R.styleable.LinearLayoutCompat_Layout_android_layout_gravity, -1);
            obtainStyledAttributes.recycle();
        }

        public LayoutParams(ViewGroup.LayoutParams layoutParams) {
            super(layoutParams);
            this.gravity = -1;
        }

        public LayoutParams(ViewGroup.MarginLayoutParams marginLayoutParams) {
            super(marginLayoutParams);
            this.gravity = -1;
        }

        public LayoutParams(LayoutParams layoutParams) {
            super((ViewGroup.MarginLayoutParams) layoutParams);
            this.gravity = -1;
            this.weight = layoutParams.weight;
            this.gravity = layoutParams.gravity;
        }
    }

    @Retention(RetentionPolicy.SOURCE)
    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP_PREFIX})
    /* loaded from: classes-dex2jar.jar:androidx/appcompat/widget/LinearLayoutCompat$OrientationMode.class */
    public @interface OrientationMode {
    }

    public LinearLayoutCompat(Context context) {
        this(context, null);
    }

    public LinearLayoutCompat(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    public LinearLayoutCompat(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        this.mBaselineAligned = true;
        this.mBaselineAlignedChildIndex = -1;
        this.mBaselineChildTop = 0;
        this.mGravity = 8388659;
        TintTypedArray obtainStyledAttributes = TintTypedArray.obtainStyledAttributes(context, attributeSet, C0054R.styleable.LinearLayoutCompat, i, 0);
        int i2 = obtainStyledAttributes.getInt(C0054R.styleable.LinearLayoutCompat_android_orientation, -1);
        if (i2 >= 0) {
            setOrientation(i2);
        }
        int i3 = obtainStyledAttributes.getInt(C0054R.styleable.LinearLayoutCompat_android_gravity, -1);
        if (i3 >= 0) {
            setGravity(i3);
        }
        boolean z = obtainStyledAttributes.getBoolean(C0054R.styleable.LinearLayoutCompat_android_baselineAligned, true);
        if (!z) {
            setBaselineAligned(z);
        }
        this.mWeightSum = obtainStyledAttributes.getFloat(C0054R.styleable.LinearLayoutCompat_android_weightSum, -1.0f);
        this.mBaselineAlignedChildIndex = obtainStyledAttributes.getInt(C0054R.styleable.LinearLayoutCompat_android_baselineAlignedChildIndex, -1);
        this.mUseLargestChild = obtainStyledAttributes.getBoolean(C0054R.styleable.LinearLayoutCompat_measureWithLargestChild, false);
        setDividerDrawable(obtainStyledAttributes.getDrawable(C0054R.styleable.LinearLayoutCompat_divider));
        this.mShowDividers = obtainStyledAttributes.getInt(C0054R.styleable.LinearLayoutCompat_showDividers, 0);
        this.mDividerPadding = obtainStyledAttributes.getDimensionPixelSize(C0054R.styleable.LinearLayoutCompat_dividerPadding, 0);
        obtainStyledAttributes.recycle();
    }

    private void forceUniformHeight(int i, int i2) {
        int makeMeasureSpec = View.MeasureSpec.makeMeasureSpec(getMeasuredHeight(), 1073741824);
        for (int i3 = 0; i3 < i; i3++) {
            View virtualChildAt = getVirtualChildAt(i3);
            if (virtualChildAt.getVisibility() != 8) {
                LayoutParams layoutParams = (LayoutParams) virtualChildAt.getLayoutParams();
                if (((ViewGroup.MarginLayoutParams) layoutParams).height == -1) {
                    int i4 = ((ViewGroup.MarginLayoutParams) layoutParams).width;
                    ((ViewGroup.MarginLayoutParams) layoutParams).width = virtualChildAt.getMeasuredWidth();
                    measureChildWithMargins(virtualChildAt, i2, 0, makeMeasureSpec, 0);
                    ((ViewGroup.MarginLayoutParams) layoutParams).width = i4;
                }
            }
        }
    }

    private void forceUniformWidth(int i, int i2) {
        int makeMeasureSpec = View.MeasureSpec.makeMeasureSpec(getMeasuredWidth(), 1073741824);
        for (int i3 = 0; i3 < i; i3++) {
            View virtualChildAt = getVirtualChildAt(i3);
            if (virtualChildAt.getVisibility() != 8) {
                LayoutParams layoutParams = (LayoutParams) virtualChildAt.getLayoutParams();
                if (((ViewGroup.MarginLayoutParams) layoutParams).width == -1) {
                    int i4 = ((ViewGroup.MarginLayoutParams) layoutParams).height;
                    ((ViewGroup.MarginLayoutParams) layoutParams).height = virtualChildAt.getMeasuredHeight();
                    measureChildWithMargins(virtualChildAt, makeMeasureSpec, 0, i2, 0);
                    ((ViewGroup.MarginLayoutParams) layoutParams).height = i4;
                }
            }
        }
    }

    private void setChildFrame(View view, int i, int i2, int i3, int i4) {
        view.layout(i, i2, i3 + i, i4 + i2);
    }

    @Override // android.view.ViewGroup
    public boolean checkLayoutParams(ViewGroup.LayoutParams layoutParams) {
        return layoutParams instanceof LayoutParams;
    }

    public void drawDividersHorizontal(Canvas canvas) {
        int i;
        int i2;
        int i3;
        int virtualChildCount = getVirtualChildCount();
        boolean isLayoutRtl = ViewUtils.isLayoutRtl(this);
        for (int i4 = 0; i4 < virtualChildCount; i4++) {
            View virtualChildAt = getVirtualChildAt(i4);
            if (!(virtualChildAt == null || virtualChildAt.getVisibility() == 8 || !hasDividerBeforeChildAt(i4))) {
                LayoutParams layoutParams = (LayoutParams) virtualChildAt.getLayoutParams();
                drawVerticalDivider(canvas, isLayoutRtl ? virtualChildAt.getRight() + ((ViewGroup.MarginLayoutParams) layoutParams).rightMargin : (virtualChildAt.getLeft() - ((ViewGroup.MarginLayoutParams) layoutParams).leftMargin) - this.mDividerWidth);
            }
        }
        if (hasDividerBeforeChildAt(virtualChildCount)) {
            View virtualChildAt2 = getVirtualChildAt(virtualChildCount - 1);
            if (virtualChildAt2 != null) {
                LayoutParams layoutParams2 = (LayoutParams) virtualChildAt2.getLayoutParams();
                if (isLayoutRtl) {
                    i2 = virtualChildAt2.getLeft() - ((ViewGroup.MarginLayoutParams) layoutParams2).leftMargin;
                    i3 = this.mDividerWidth;
                    i = i2 - i3;
                    drawVerticalDivider(canvas, i);
                }
                i = virtualChildAt2.getRight() + ((ViewGroup.MarginLayoutParams) layoutParams2).rightMargin;
                drawVerticalDivider(canvas, i);
            } else if (isLayoutRtl) {
                i = getPaddingLeft();
                drawVerticalDivider(canvas, i);
            } else {
                i2 = getWidth() - getPaddingRight();
                i3 = this.mDividerWidth;
                i = i2 - i3;
                drawVerticalDivider(canvas, i);
            }
        }
    }

    public void drawDividersVertical(Canvas canvas) {
        int virtualChildCount = getVirtualChildCount();
        for (int i = 0; i < virtualChildCount; i++) {
            View virtualChildAt = getVirtualChildAt(i);
            if (!(virtualChildAt == null || virtualChildAt.getVisibility() == 8 || !hasDividerBeforeChildAt(i))) {
                drawHorizontalDivider(canvas, (virtualChildAt.getTop() - ((ViewGroup.MarginLayoutParams) ((LayoutParams) virtualChildAt.getLayoutParams())).topMargin) - this.mDividerHeight);
            }
        }
        if (hasDividerBeforeChildAt(virtualChildCount)) {
            View virtualChildAt2 = getVirtualChildAt(virtualChildCount - 1);
            drawHorizontalDivider(canvas, virtualChildAt2 == null ? (getHeight() - getPaddingBottom()) - this.mDividerHeight : virtualChildAt2.getBottom() + ((ViewGroup.MarginLayoutParams) ((LayoutParams) virtualChildAt2.getLayoutParams())).bottomMargin);
        }
    }

    public void drawHorizontalDivider(Canvas canvas, int i) {
        this.mDivider.setBounds(getPaddingLeft() + this.mDividerPadding, i, (getWidth() - getPaddingRight()) - this.mDividerPadding, this.mDividerHeight + i);
        this.mDivider.draw(canvas);
    }

    public void drawVerticalDivider(Canvas canvas, int i) {
        this.mDivider.setBounds(i, getPaddingTop() + this.mDividerPadding, this.mDividerWidth + i, (getHeight() - getPaddingBottom()) - this.mDividerPadding);
        this.mDivider.draw(canvas);
    }

    @Override // android.view.ViewGroup
    public LayoutParams generateDefaultLayoutParams() {
        int i = this.mOrientation;
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
        if (this.mBaselineAlignedChildIndex < 0) {
            return super.getBaseline();
        }
        int childCount = getChildCount();
        int i = this.mBaselineAlignedChildIndex;
        if (childCount > i) {
            View childAt = getChildAt(i);
            int baseline = childAt.getBaseline();
            if (baseline != -1) {
                int i2 = this.mBaselineChildTop;
                int i3 = i2;
                if (this.mOrientation == 1) {
                    int i4 = this.mGravity & 112;
                    i3 = i2;
                    if (i4 != 48) {
                        i3 = i4 != 16 ? i4 != 80 ? i2 : ((getBottom() - getTop()) - getPaddingBottom()) - this.mTotalLength : i2 + (((((getBottom() - getTop()) - getPaddingTop()) - getPaddingBottom()) - this.mTotalLength) / 2);
                    }
                }
                return i3 + ((ViewGroup.MarginLayoutParams) ((LayoutParams) childAt.getLayoutParams())).topMargin + baseline;
            } else if (this.mBaselineAlignedChildIndex == 0) {
                return -1;
            } else {
                throw new RuntimeException("mBaselineAlignedChildIndex of LinearLayout points to a View that doesn't know how to get its baseline.");
            }
        } else {
            throw new RuntimeException("mBaselineAlignedChildIndex of LinearLayout set to an index that is out of bounds.");
        }
    }

    public int getBaselineAlignedChildIndex() {
        return this.mBaselineAlignedChildIndex;
    }

    public int getChildrenSkipCount(View view, int i) {
        return 0;
    }

    public Drawable getDividerDrawable() {
        return this.mDivider;
    }

    public int getDividerPadding() {
        return this.mDividerPadding;
    }

    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP_PREFIX})
    public int getDividerWidth() {
        return this.mDividerWidth;
    }

    public int getGravity() {
        return this.mGravity;
    }

    public int getLocationOffset(View view) {
        return 0;
    }

    public int getNextLocationOffset(View view) {
        return 0;
    }

    public int getOrientation() {
        return this.mOrientation;
    }

    public int getShowDividers() {
        return this.mShowDividers;
    }

    public View getVirtualChildAt(int i) {
        return getChildAt(i);
    }

    public int getVirtualChildCount() {
        return getChildCount();
    }

    public float getWeightSum() {
        return this.mWeightSum;
    }

    @RestrictTo({RestrictTo.Scope.LIBRARY})
    public boolean hasDividerBeforeChildAt(int i) {
        boolean z = false;
        boolean z2 = false;
        if (i == 0) {
            if ((this.mShowDividers & 1) != 0) {
                z2 = true;
            }
            return z2;
        } else if (i == getChildCount()) {
            if ((this.mShowDividers & 4) != 0) {
                z = true;
            }
            return z;
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

    public void layoutHorizontal(int i, int i2, int i3, int i4) {
        int i5;
        int i6;
        int i7;
        boolean isLayoutRtl = ViewUtils.isLayoutRtl(this);
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
        int absoluteGravity = GravityCompat.getAbsoluteGravity(8388615 & i9, ViewCompat.getLayoutDirection(this));
        int paddingLeft = absoluteGravity != 1 ? absoluteGravity != 5 ? getPaddingLeft() : ((getPaddingLeft() + i3) - i) - this.mTotalLength : getPaddingLeft() + (((i3 - i) - this.mTotalLength) / 2);
        if (isLayoutRtl) {
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
                LayoutParams layoutParams = (LayoutParams) virtualChildAt.getLayoutParams();
                int baseline = (!z || ((ViewGroup.MarginLayoutParams) layoutParams).height == -1) ? -1 : virtualChildAt.getBaseline();
                int i13 = layoutParams.gravity;
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
                        i7 = i16 - (iArr2[2] - (virtualChildAt.getMeasuredHeight() - baseline));
                    }
                }
                int i17 = paddingLeft;
                if (hasDividerBeforeChildAt(i12)) {
                    i17 = paddingLeft + this.mDividerWidth;
                }
                int i18 = ((ViewGroup.MarginLayoutParams) layoutParams).leftMargin + i17;
                setChildFrame(virtualChildAt, i18 + getLocationOffset(virtualChildAt), i7, measuredWidth, measuredHeight);
                int i19 = ((ViewGroup.MarginLayoutParams) layoutParams).rightMargin;
                int nextLocationOffset = getNextLocationOffset(virtualChildAt);
                i11 += getChildrenSkipCount(virtualChildAt, i12);
                paddingLeft = i18 + measuredWidth + i19 + nextLocationOffset;
            }
            i11++;
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:30:0x0125  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void layoutVertical(int r8, int r9, int r10, int r11) {
        /*
            Method dump skipped, instructions count: 375
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.appcompat.widget.LinearLayoutCompat.layoutVertical(int, int, int, int):void");
    }

    public void measureChildBeforeLayout(View view, int i, int i2, int i3, int i4, int i5) {
        measureChildWithMargins(view, i2, i3, i4, i5);
    }

    /* JADX WARN: Code restructure failed: missing block: B:109:0x03ea, code lost:
        if (r0 == 0) goto L_0x03ed;
     */
    /* JADX WARN: Removed duplicated region for block: B:70:0x029f  */
    /* JADX WARN: Removed duplicated region for block: B:80:0x02fe  */
    /* JADX WARN: Removed duplicated region for block: B:84:0x0316  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void measureHorizontal(int r9, int r10) {
        /*
            Method dump skipped, instructions count: 2166
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.appcompat.widget.LinearLayoutCompat.measureHorizontal(int, int):void");
    }

    public int measureNullChild(int i) {
        return 0;
    }

    public void measureVertical(int i, int i2) {
        int i3;
        int i4;
        boolean z;
        int i5;
        this.mTotalLength = 0;
        int virtualChildCount = getVirtualChildCount();
        int mode = View.MeasureSpec.getMode(i);
        int mode2 = View.MeasureSpec.getMode(i2);
        int i6 = this.mBaselineAlignedChildIndex;
        boolean z2 = this.mUseLargestChild;
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
            View virtualChildAt = getVirtualChildAt(i12);
            if (virtualChildAt == null) {
                this.mTotalLength += measureNullChild(i12);
            } else if (virtualChildAt.getVisibility() == 8) {
                i12 += getChildrenSkipCount(virtualChildAt, i12);
            } else {
                if (hasDividerBeforeChildAt(i12)) {
                    this.mTotalLength += this.mDividerHeight;
                }
                LayoutParams layoutParams = (LayoutParams) virtualChildAt.getLayoutParams();
                f += layoutParams.weight;
                if (mode2 == 1073741824 && ((ViewGroup.MarginLayoutParams) layoutParams).height == 0 && layoutParams.weight > 0.0f) {
                    int i13 = this.mTotalLength;
                    this.mTotalLength = Math.max(i13, ((ViewGroup.MarginLayoutParams) layoutParams).topMargin + i13 + ((ViewGroup.MarginLayoutParams) layoutParams).bottomMargin);
                    z3 = true;
                } else {
                    if (((ViewGroup.MarginLayoutParams) layoutParams).height != 0 || layoutParams.weight <= 0.0f) {
                        i5 = Integer.MIN_VALUE;
                    } else {
                        ((ViewGroup.MarginLayoutParams) layoutParams).height = -2;
                        i5 = 0;
                    }
                    measureChildBeforeLayout(virtualChildAt, i12, i, 0, i2, f == 0.0f ? this.mTotalLength : 0);
                    if (i5 != Integer.MIN_VALUE) {
                        ((ViewGroup.MarginLayoutParams) layoutParams).height = i5;
                    }
                    int measuredHeight = virtualChildAt.getMeasuredHeight();
                    int i14 = this.mTotalLength;
                    this.mTotalLength = Math.max(i14, i14 + measuredHeight + ((ViewGroup.MarginLayoutParams) layoutParams).topMargin + ((ViewGroup.MarginLayoutParams) layoutParams).bottomMargin + getNextLocationOffset(virtualChildAt));
                    if (z2) {
                        i9 = Math.max(measuredHeight, i9);
                    }
                }
                if (i6 >= 0 && i6 == i12 + 1) {
                    this.mBaselineChildTop = this.mTotalLength;
                }
                if (i12 >= i6 || layoutParams.weight <= 0.0f) {
                    if (mode == 1073741824 || ((ViewGroup.MarginLayoutParams) layoutParams).width != -1) {
                        z = false;
                    } else {
                        z = true;
                        z5 = true;
                    }
                    int i15 = ((ViewGroup.MarginLayoutParams) layoutParams).leftMargin + ((ViewGroup.MarginLayoutParams) layoutParams).rightMargin;
                    int measuredWidth = virtualChildAt.getMeasuredWidth() + i15;
                    i8 = Math.max(i8, measuredWidth);
                    i7 = View.combineMeasuredStates(i7, virtualChildAt.getMeasuredState());
                    z4 = z4 && ((ViewGroup.MarginLayoutParams) layoutParams).width == -1;
                    if (layoutParams.weight > 0.0f) {
                        if (z) {
                            measuredWidth = i15;
                        }
                        i10 = Math.max(i10, measuredWidth);
                        i11 = i11;
                    } else {
                        if (z) {
                            measuredWidth = i15;
                        }
                        i11 = Math.max(i11, measuredWidth);
                        i10 = i10;
                    }
                    i12 = getChildrenSkipCount(virtualChildAt, i12) + i12;
                } else {
                    throw new RuntimeException("A child of LinearLayout with index less than mBaselineAlignedChildIndex has weight > 0, which won't work.  Either remove the weight, or don't set mBaselineAlignedChildIndex.");
                }
            }
            i12++;
        }
        if (this.mTotalLength > 0 && hasDividerBeforeChildAt(virtualChildCount)) {
            this.mTotalLength += this.mDividerHeight;
        }
        if (z2 && (mode2 == Integer.MIN_VALUE || mode2 == 0)) {
            this.mTotalLength = 0;
            int i16 = 0;
            while (i16 < virtualChildCount) {
                View virtualChildAt2 = getVirtualChildAt(i16);
                if (virtualChildAt2 == null) {
                    this.mTotalLength += measureNullChild(i16);
                } else if (virtualChildAt2.getVisibility() == 8) {
                    i16 += getChildrenSkipCount(virtualChildAt2, i16);
                } else {
                    LayoutParams layoutParams2 = (LayoutParams) virtualChildAt2.getLayoutParams();
                    int i17 = this.mTotalLength;
                    this.mTotalLength = Math.max(i17, i17 + i9 + ((ViewGroup.MarginLayoutParams) layoutParams2).topMargin + ((ViewGroup.MarginLayoutParams) layoutParams2).bottomMargin + getNextLocationOffset(virtualChildAt2));
                }
                i16++;
            }
        }
        this.mTotalLength += getPaddingTop() + getPaddingBottom();
        int resolveSizeAndState = View.resolveSizeAndState(Math.max(this.mTotalLength, getSuggestedMinimumHeight()), i2, 0);
        int i18 = (16777215 & resolveSizeAndState) - this.mTotalLength;
        if (z3 || (i18 != 0 && f > 0.0f)) {
            float f2 = this.mWeightSum;
            if (f2 > 0.0f) {
                f = f2;
            }
            this.mTotalLength = 0;
            int i19 = i18;
            i4 = i8;
            for (int i20 = 0; i20 < virtualChildCount; i20++) {
                View virtualChildAt3 = getVirtualChildAt(i20);
                if (virtualChildAt3.getVisibility() != 8) {
                    LayoutParams layoutParams3 = (LayoutParams) virtualChildAt3.getLayoutParams();
                    float f3 = layoutParams3.weight;
                    if (f3 > 0.0f) {
                        int i21 = (int) ((i19 * f3) / f);
                        i19 -= i21;
                        f -= f3;
                        int childMeasureSpec = ViewGroup.getChildMeasureSpec(i, getPaddingLeft() + getPaddingRight() + ((ViewGroup.MarginLayoutParams) layoutParams3).leftMargin + ((ViewGroup.MarginLayoutParams) layoutParams3).rightMargin, ((ViewGroup.MarginLayoutParams) layoutParams3).width);
                        if (((ViewGroup.MarginLayoutParams) layoutParams3).height == 0 && mode2 == 1073741824) {
                            virtualChildAt3.measure(childMeasureSpec, View.MeasureSpec.makeMeasureSpec(i21 > 0 ? i21 : 0, 1073741824));
                        } else {
                            int measuredHeight2 = virtualChildAt3.getMeasuredHeight() + i21;
                            int i22 = measuredHeight2;
                            if (measuredHeight2 < 0) {
                                i22 = 0;
                            }
                            virtualChildAt3.measure(childMeasureSpec, View.MeasureSpec.makeMeasureSpec(i22, 1073741824));
                        }
                        i7 = View.combineMeasuredStates(i7, virtualChildAt3.getMeasuredState() & InputDeviceCompat.SOURCE_ANY);
                    }
                    int i23 = ((ViewGroup.MarginLayoutParams) layoutParams3).leftMargin + ((ViewGroup.MarginLayoutParams) layoutParams3).rightMargin;
                    int measuredWidth2 = virtualChildAt3.getMeasuredWidth() + i23;
                    i4 = Math.max(i4, measuredWidth2);
                    i11 = Math.max(i11, mode != 1073741824 && ((ViewGroup.MarginLayoutParams) layoutParams3).width == -1 ? i23 : measuredWidth2);
                    z4 = z4 && ((ViewGroup.MarginLayoutParams) layoutParams3).width == -1;
                    int i24 = this.mTotalLength;
                    this.mTotalLength = Math.max(i24, virtualChildAt3.getMeasuredHeight() + i24 + ((ViewGroup.MarginLayoutParams) layoutParams3).topMargin + ((ViewGroup.MarginLayoutParams) layoutParams3).bottomMargin + getNextLocationOffset(virtualChildAt3));
                }
            }
            this.mTotalLength += getPaddingTop() + getPaddingBottom();
            i3 = i7;
            i4 = i11;
        } else {
            i4 = Math.max(i11, i10);
            if (z2 && mode2 != 1073741824) {
                for (int i25 = 0; i25 < virtualChildCount; i25++) {
                    View virtualChildAt4 = getVirtualChildAt(i25);
                    if (!(virtualChildAt4 == null || virtualChildAt4.getVisibility() == 8 || ((LayoutParams) virtualChildAt4.getLayoutParams()).weight <= 0.0f)) {
                        virtualChildAt4.measure(View.MeasureSpec.makeMeasureSpec(virtualChildAt4.getMeasuredWidth(), 1073741824), View.MeasureSpec.makeMeasureSpec(i9, 1073741824));
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
            forceUniformWidth(virtualChildCount, i2);
        }
    }

    @Override // android.view.View
    public void onDraw(Canvas canvas) {
        if (this.mDivider != null) {
            if (this.mOrientation == 1) {
                drawDividersVertical(canvas);
            } else {
                drawDividersHorizontal(canvas);
            }
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
        if (i < 0 || i >= getChildCount()) {
            throw new IllegalArgumentException("base aligned child index out of range (0, " + getChildCount() + ")");
        }
        this.mBaselineAlignedChildIndex = i;
    }

    public void setDividerDrawable(Drawable drawable) {
        if (drawable != this.mDivider) {
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
    }

    public void setDividerPadding(int i) {
        this.mDividerPadding = i;
    }

    public void setGravity(int i) {
        if (this.mGravity != i) {
            int i2 = i;
            if ((8388615 & i) == 0) {
                i2 = i | GravityCompat.START;
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
        int i2 = i & GravityCompat.RELATIVE_HORIZONTAL_GRAVITY_MASK;
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
        this.mWeightSum = Math.max(0.0f, f);
    }

    @Override // android.view.ViewGroup
    public boolean shouldDelayChildPressedState() {
        return false;
    }
}

package com.google.android.flexbox;

import android.util.SparseIntArray;
import android.view.View;
import android.view.ViewGroup;
import androidx.core.p023g.C0537f;
import androidx.core.p023g.C0552u;
import androidx.customview.p026a.AbstractC0610a;
import com.google.android.gms.common.api.Api;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.List;
/* loaded from: classes-dex2jar.jar:com/google/android/flexbox/FlexboxHelper.class */
public class FlexboxHelper {
    static final /* synthetic */ boolean $assertionsDisabled = false;
    private static final int INITIAL_CAPACITY = 10;
    private static final long MEASURE_SPEC_WIDTH_MASK = 4294967295L;
    private boolean[] mChildrenFrozen;
    private final FlexContainer mFlexContainer;
    int[] mIndexToFlexLine;
    long[] mMeasureSpecCache;
    private long[] mMeasuredSizeCache;

    /* loaded from: classes-dex2jar.jar:com/google/android/flexbox/FlexboxHelper$FlexLinesResult.class */
    public static class FlexLinesResult {
        int mChildState;
        List<FlexLine> mFlexLines;

        public void reset() {
            this.mFlexLines = null;
            this.mChildState = 0;
        }
    }

    /* loaded from: classes-dex2jar.jar:com/google/android/flexbox/FlexboxHelper$Order.class */
    public static class Order implements Comparable<Order> {
        int index;
        int order;

        private Order() {
        }

        public int compareTo(Order order) {
            int i = this.order;
            int i2 = order.order;
            return i != i2 ? i - i2 : this.index - order.index;
        }

        public String toString() {
            return "Order{order=" + this.order + ", index=" + this.index + '}';
        }
    }

    public FlexboxHelper(FlexContainer flexContainer) {
        this.mFlexContainer = flexContainer;
    }

    private void addFlexLine(List<FlexLine> list, FlexLine flexLine, int i, int i2) {
        flexLine.mSumCrossSizeBefore = i2;
        this.mFlexContainer.onNewFlexLineAdded(flexLine);
        flexLine.mLastIndex = i;
        list.add(flexLine);
    }

    /* JADX WARN: Removed duplicated region for block: B:12:0x0060  */
    /* JADX WARN: Removed duplicated region for block: B:13:0x006b  */
    /* JADX WARN: Removed duplicated region for block: B:19:0x008e  */
    /* JADX WARN: Removed duplicated region for block: B:21:? A[RETURN, SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private void checkSizeConstraints(android.view.View r7, int r8) {
        /*
            r6 = this;
            r0 = r7
            android.view.ViewGroup$LayoutParams r0 = r0.getLayoutParams()
            com.google.android.flexbox.FlexItem r0 = (com.google.android.flexbox.FlexItem) r0
            r9 = r0
            r0 = r7
            int r0 = r0.getMeasuredWidth()
            r10 = r0
            r0 = r7
            int r0 = r0.getMeasuredHeight()
            r11 = r0
            r0 = r9
            int r0 = r0.getMinWidth()
            r12 = r0
            r0 = 1
            r13 = r0
            r0 = r10
            r1 = r12
            if (r0 >= r1) goto L3c
            r0 = r9
            int r0 = r0.getMinWidth()
            r12 = r0
        L2e:
            r0 = 1
            r14 = r0
            r0 = r12
            r10 = r0
            r0 = r14
            r12 = r0
            goto L55
        L3c:
            r0 = r10
            r1 = r9
            int r1 = r1.getMaxWidth()
            if (r0 <= r1) goto L52
            r0 = r9
            int r0 = r0.getMaxWidth()
            r12 = r0
            goto L2e
        L52:
            r0 = 0
            r12 = r0
        L55:
            r0 = r11
            r1 = r9
            int r1 = r1.getMinHeight()
            if (r0 >= r1) goto L6b
            r0 = r9
            int r0 = r0.getMinHeight()
            r12 = r0
            goto L89
        L6b:
            r0 = r11
            r1 = r9
            int r1 = r1.getMaxHeight()
            if (r0 <= r1) goto L81
            r0 = r9
            int r0 = r0.getMaxHeight()
            r12 = r0
            goto L89
        L81:
            r0 = r12
            r13 = r0
            r0 = r11
            r12 = r0
        L89:
            r0 = r13
            if (r0 == 0) goto Lbd
            r0 = r10
            r1 = 1073741824(0x40000000, float:2.0)
            int r0 = android.view.View.MeasureSpec.makeMeasureSpec(r0, r1)
            r10 = r0
            r0 = r12
            r1 = 1073741824(0x40000000, float:2.0)
            int r0 = android.view.View.MeasureSpec.makeMeasureSpec(r0, r1)
            r12 = r0
            r0 = r7
            r1 = r10
            r2 = r12
            r0.measure(r1, r2)
            r0 = r6
            r1 = r8
            r2 = r10
            r3 = r12
            r4 = r7
            r0.updateMeasureCache(r1, r2, r3, r4)
            r0 = r6
            com.google.android.flexbox.FlexContainer r0 = r0.mFlexContainer
            r1 = r8
            r2 = r7
            r0.updateViewCache(r1, r2)
        Lbd:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.flexbox.FlexboxHelper.checkSizeConstraints(android.view.View, int):void");
    }

    private List<FlexLine> constructFlexLinesForAlignContentCenter(List<FlexLine> list, int i, int i2) {
        ArrayList arrayList = new ArrayList();
        FlexLine flexLine = new FlexLine();
        flexLine.mCrossSize = (i - i2) / 2;
        int size = list.size();
        for (int i3 = 0; i3 < size; i3++) {
            if (i3 == 0) {
                arrayList.add(flexLine);
            }
            arrayList.add(list.get(i3));
            if (i3 == list.size() - 1) {
                arrayList.add(flexLine);
            }
        }
        return arrayList;
    }

    private List<Order> createOrders(int i) {
        ArrayList arrayList = new ArrayList(i);
        for (int i2 = 0; i2 < i; i2++) {
            FlexItem flexItem = (FlexItem) this.mFlexContainer.getFlexItemAt(i2).getLayoutParams();
            Order order = new Order();
            order.order = flexItem.getOrder();
            order.index = i2;
            arrayList.add(order);
        }
        return arrayList;
    }

    private void ensureChildrenFrozen(int i) {
        boolean[] zArr = this.mChildrenFrozen;
        if (zArr == null) {
            int i2 = i;
            if (i < 10) {
                i2 = 10;
            }
            this.mChildrenFrozen = new boolean[i2];
        } else if (zArr.length >= i) {
            Arrays.fill(zArr, false);
        } else {
            int length = zArr.length * 2;
            int i3 = i;
            if (length >= i) {
                i3 = length;
            }
            this.mChildrenFrozen = new boolean[i3];
        }
    }

    /* JADX WARN: Type inference failed for: r0v106, types: [double] */
    /* JADX WARN: Type inference failed for: r0v179, types: [double] */
    /* JADX WARN: Type inference failed for: r0v186, types: [double] */
    /* JADX WARN: Type inference failed for: r0v99, types: [double] */
    private void expandFlexItems(int i, int i2, FlexLine flexLine, int i3, int i4, boolean z) {
        int i5;
        int i6;
        int i7;
        int i8;
        boolean z2;
        char c;
        int i9;
        boolean z3;
        char c2;
        if (flexLine.mTotalFlexGrow <= FlexItem.FLEX_GROW_DEFAULT || i3 < flexLine.mMainSize) {
            return;
        }
        int i10 = flexLine.mMainSize;
        float f = (i3 - flexLine.mMainSize) / flexLine.mTotalFlexGrow;
        flexLine.mMainSize = i4 + flexLine.mDividerLengthInMainSize;
        if (!z) {
            flexLine.mCrossSize = AbstractC0610a.INVALID_ID;
        }
        float f2 = 0.0f;
        boolean z4 = false;
        int i11 = 0;
        for (int i12 = 0; i12 < flexLine.mItemCount; i12++) {
            int i13 = flexLine.mFirstIndex + i12;
            View reorderedFlexItemAt = this.mFlexContainer.getReorderedFlexItemAt(i13);
            if (reorderedFlexItemAt != null && reorderedFlexItemAt.getVisibility() != 8) {
                FlexItem flexItem = (FlexItem) reorderedFlexItemAt.getLayoutParams();
                int flexDirection = this.mFlexContainer.getFlexDirection();
                if (flexDirection == 0 || flexDirection == 1) {
                    int measuredWidth = reorderedFlexItemAt.getMeasuredWidth();
                    long[] jArr = this.mMeasuredSizeCache;
                    if (jArr != null) {
                        measuredWidth = extractLowerInt(jArr[i13]);
                    }
                    int measuredHeight = reorderedFlexItemAt.getMeasuredHeight();
                    long[] jArr2 = this.mMeasuredSizeCache;
                    int i14 = i10;
                    int i15 = measuredHeight;
                    if (jArr2 != null) {
                        i15 = extractHigherInt(jArr2[i13]);
                    }
                    if (this.mChildrenFrozen[i13] || flexItem.getFlexGrow() <= FlexItem.FLEX_GROW_DEFAULT) {
                        int i16 = measuredWidth;
                        i6 = i15;
                        i7 = i16;
                    } else {
                        float flexGrow = measuredWidth + (flexItem.getFlexGrow() * f);
                        float f3 = flexGrow;
                        float f4 = f2;
                        if (i12 == flexLine.mItemCount - 1) {
                            f3 = flexGrow + f2;
                            f4 = 0.0f;
                        }
                        int round = Math.round(f3);
                        if (round > flexItem.getMaxWidth()) {
                            i8 = flexItem.getMaxWidth();
                            this.mChildrenFrozen[i13] = true;
                            flexLine.mTotalFlexGrow -= flexItem.getFlexGrow();
                            z2 = true;
                            f2 = f4;
                        } else {
                            f2 = f4 + (f3 - round);
                            double d = f2;
                            if (d > 1.0d) {
                                i8 = round + 1;
                                c = d - 1.0d;
                            } else {
                                i8 = round;
                                z2 = z4;
                                if (d < -1.0d) {
                                    i8 = round - 1;
                                    c = d + 1.0d;
                                }
                            }
                            f2 = c;
                            z2 = z4;
                        }
                        int childHeightMeasureSpecInternal = getChildHeightMeasureSpecInternal(i2, flexItem, flexLine.mSumCrossSizeBefore);
                        int makeMeasureSpec = View.MeasureSpec.makeMeasureSpec(i8, 1073741824);
                        reorderedFlexItemAt.measure(makeMeasureSpec, childHeightMeasureSpecInternal);
                        int measuredWidth2 = reorderedFlexItemAt.getMeasuredWidth();
                        i6 = reorderedFlexItemAt.getMeasuredHeight();
                        updateMeasureCache(i13, makeMeasureSpec, childHeightMeasureSpecInternal, reorderedFlexItemAt);
                        this.mFlexContainer.updateViewCache(i13, reorderedFlexItemAt);
                        z4 = z2;
                        i7 = measuredWidth2;
                    }
                    i5 = Math.max(i11, i6 + flexItem.getMarginTop() + flexItem.getMarginBottom() + this.mFlexContainer.getDecorationLengthCrossAxis(reorderedFlexItemAt));
                    flexLine.mMainSize += i7 + flexItem.getMarginLeft() + flexItem.getMarginRight();
                    i10 = i14;
                } else {
                    int measuredHeight2 = reorderedFlexItemAt.getMeasuredHeight();
                    long[] jArr3 = this.mMeasuredSizeCache;
                    if (jArr3 != null) {
                        measuredHeight2 = extractHigherInt(jArr3[i13]);
                    }
                    int measuredWidth3 = reorderedFlexItemAt.getMeasuredWidth();
                    long[] jArr4 = this.mMeasuredSizeCache;
                    if (jArr4 != null) {
                        measuredWidth3 = extractLowerInt(jArr4[i13]);
                    }
                    if (!this.mChildrenFrozen[i13] && flexItem.getFlexGrow() > FlexItem.FLEX_GROW_DEFAULT) {
                        float flexGrow2 = measuredHeight2 + (flexItem.getFlexGrow() * f);
                        float f5 = f2;
                        float f6 = flexGrow2;
                        if (i12 == flexLine.mItemCount - 1) {
                            f6 = flexGrow2 + f2;
                            f5 = 0.0f;
                        }
                        int round2 = Math.round(f6);
                        if (round2 > flexItem.getMaxHeight()) {
                            i9 = flexItem.getMaxHeight();
                            this.mChildrenFrozen[i13] = true;
                            flexLine.mTotalFlexGrow -= flexItem.getFlexGrow();
                            z3 = true;
                            f2 = f5;
                        } else {
                            f2 = f5 + (f6 - round2);
                            double d2 = f2;
                            if (d2 > 1.0d) {
                                i9 = round2 + 1;
                                c2 = d2 - 1.0d;
                            } else {
                                z3 = z4;
                                i9 = round2;
                                if (d2 < -1.0d) {
                                    i9 = round2 - 1;
                                    c2 = d2 + 1.0d;
                                }
                            }
                            f2 = c2;
                            z3 = z4;
                        }
                        int childWidthMeasureSpecInternal = getChildWidthMeasureSpecInternal(i, flexItem, flexLine.mSumCrossSizeBefore);
                        int makeMeasureSpec2 = View.MeasureSpec.makeMeasureSpec(i9, 1073741824);
                        reorderedFlexItemAt.measure(childWidthMeasureSpecInternal, makeMeasureSpec2);
                        int measuredWidth4 = reorderedFlexItemAt.getMeasuredWidth();
                        int measuredHeight3 = reorderedFlexItemAt.getMeasuredHeight();
                        updateMeasureCache(i13, childWidthMeasureSpecInternal, makeMeasureSpec2, reorderedFlexItemAt);
                        this.mFlexContainer.updateViewCache(i13, reorderedFlexItemAt);
                        z4 = z3;
                        measuredHeight2 = measuredHeight3;
                        measuredWidth3 = measuredWidth4;
                    }
                    int max = Math.max(i11, measuredWidth3 + flexItem.getMarginLeft() + flexItem.getMarginRight() + this.mFlexContainer.getDecorationLengthCrossAxis(reorderedFlexItemAt));
                    flexLine.mMainSize += measuredHeight2 + flexItem.getMarginTop() + flexItem.getMarginBottom();
                    i5 = max;
                }
                flexLine.mCrossSize = Math.max(flexLine.mCrossSize, i5);
                i11 = i5;
            }
        }
        if (!z4 || i10 == flexLine.mMainSize) {
            return;
        }
        expandFlexItems(i, i2, flexLine, i3, i4, true);
    }

    private int getChildHeightMeasureSpecInternal(int i, FlexItem flexItem, int i2) {
        int i3;
        FlexContainer flexContainer = this.mFlexContainer;
        int childHeightMeasureSpec = flexContainer.getChildHeightMeasureSpec(i, flexContainer.getPaddingTop() + this.mFlexContainer.getPaddingBottom() + flexItem.getMarginTop() + flexItem.getMarginBottom() + i2, flexItem.getHeight());
        int size = View.MeasureSpec.getSize(childHeightMeasureSpec);
        if (size > flexItem.getMaxHeight()) {
            i3 = View.MeasureSpec.makeMeasureSpec(flexItem.getMaxHeight(), View.MeasureSpec.getMode(childHeightMeasureSpec));
        } else {
            i3 = childHeightMeasureSpec;
            if (size < flexItem.getMinHeight()) {
                i3 = View.MeasureSpec.makeMeasureSpec(flexItem.getMinHeight(), View.MeasureSpec.getMode(childHeightMeasureSpec));
            }
        }
        return i3;
    }

    private int getChildWidthMeasureSpecInternal(int i, FlexItem flexItem, int i2) {
        int i3;
        FlexContainer flexContainer = this.mFlexContainer;
        int childWidthMeasureSpec = flexContainer.getChildWidthMeasureSpec(i, flexContainer.getPaddingLeft() + this.mFlexContainer.getPaddingRight() + flexItem.getMarginLeft() + flexItem.getMarginRight() + i2, flexItem.getWidth());
        int size = View.MeasureSpec.getSize(childWidthMeasureSpec);
        if (size > flexItem.getMaxWidth()) {
            i3 = View.MeasureSpec.makeMeasureSpec(flexItem.getMaxWidth(), View.MeasureSpec.getMode(childWidthMeasureSpec));
        } else {
            i3 = childWidthMeasureSpec;
            if (size < flexItem.getMinWidth()) {
                i3 = View.MeasureSpec.makeMeasureSpec(flexItem.getMinWidth(), View.MeasureSpec.getMode(childWidthMeasureSpec));
            }
        }
        return i3;
    }

    private int getFlexItemMarginEndCross(FlexItem flexItem, boolean z) {
        return z ? flexItem.getMarginBottom() : flexItem.getMarginEnd();
    }

    private int getFlexItemMarginEndMain(FlexItem flexItem, boolean z) {
        return z ? flexItem.getMarginEnd() : flexItem.getMarginBottom();
    }

    private int getFlexItemMarginStartCross(FlexItem flexItem, boolean z) {
        return z ? flexItem.getMarginTop() : flexItem.getMarginStart();
    }

    private int getFlexItemMarginStartMain(FlexItem flexItem, boolean z) {
        return z ? flexItem.getMarginStart() : flexItem.getMarginTop();
    }

    private int getFlexItemSizeCross(FlexItem flexItem, boolean z) {
        return z ? flexItem.getHeight() : flexItem.getWidth();
    }

    private int getFlexItemSizeMain(FlexItem flexItem, boolean z) {
        return z ? flexItem.getWidth() : flexItem.getHeight();
    }

    private int getPaddingEndCross(boolean z) {
        return z ? this.mFlexContainer.getPaddingBottom() : this.mFlexContainer.getPaddingEnd();
    }

    private int getPaddingEndMain(boolean z) {
        return z ? this.mFlexContainer.getPaddingEnd() : this.mFlexContainer.getPaddingBottom();
    }

    private int getPaddingStartCross(boolean z) {
        return z ? this.mFlexContainer.getPaddingTop() : this.mFlexContainer.getPaddingStart();
    }

    private int getPaddingStartMain(boolean z) {
        return z ? this.mFlexContainer.getPaddingStart() : this.mFlexContainer.getPaddingTop();
    }

    private int getViewMeasuredSizeCross(View view, boolean z) {
        return z ? view.getMeasuredHeight() : view.getMeasuredWidth();
    }

    private int getViewMeasuredSizeMain(View view, boolean z) {
        return z ? view.getMeasuredWidth() : view.getMeasuredHeight();
    }

    private boolean isLastFlexItem(int i, int i2, FlexLine flexLine) {
        boolean z = true;
        if (i != i2 - 1 || flexLine.getItemCountNotGone() == 0) {
            z = false;
        }
        return z;
    }

    private boolean isWrapRequired(View view, int i, int i2, int i3, int i4, FlexItem flexItem, int i5, int i6) {
        if (this.mFlexContainer.getFlexWrap() == 0) {
            return false;
        }
        boolean z = true;
        if (flexItem.isWrapBefore()) {
            return true;
        }
        if (i == 0) {
            return false;
        }
        int decorationLengthMainAxis = this.mFlexContainer.getDecorationLengthMainAxis(view, i5, i6);
        int i7 = i4;
        if (decorationLengthMainAxis > 0) {
            i7 = i4 + decorationLengthMainAxis;
        }
        if (i2 >= i3 + i7) {
            z = false;
        }
        return z;
    }

    private void shrinkFlexItems(int i, int i2, FlexLine flexLine, int i3, int i4, boolean z) {
        int i5;
        boolean z2;
        int i6;
        boolean z3;
        int i7;
        int i8 = flexLine.mMainSize;
        if (flexLine.mTotalFlexShrink <= FlexItem.FLEX_GROW_DEFAULT || i3 > flexLine.mMainSize) {
            return;
        }
        float f = (flexLine.mMainSize - i3) / flexLine.mTotalFlexShrink;
        flexLine.mMainSize = i4 + flexLine.mDividerLengthInMainSize;
        if (!z) {
            flexLine.mCrossSize = AbstractC0610a.INVALID_ID;
        }
        float f2 = 0.0f;
        boolean z4 = false;
        int i9 = 0;
        for (int i10 = 0; i10 < flexLine.mItemCount; i10++) {
            int i11 = flexLine.mFirstIndex + i10;
            View reorderedFlexItemAt = this.mFlexContainer.getReorderedFlexItemAt(i11);
            if (reorderedFlexItemAt != null && reorderedFlexItemAt.getVisibility() != 8) {
                FlexItem flexItem = (FlexItem) reorderedFlexItemAt.getLayoutParams();
                int flexDirection = this.mFlexContainer.getFlexDirection();
                if (flexDirection == 0 || flexDirection == 1) {
                    int measuredWidth = reorderedFlexItemAt.getMeasuredWidth();
                    long[] jArr = this.mMeasuredSizeCache;
                    if (jArr != null) {
                        measuredWidth = extractLowerInt(jArr[i11]);
                    }
                    int measuredHeight = reorderedFlexItemAt.getMeasuredHeight();
                    long[] jArr2 = this.mMeasuredSizeCache;
                    if (jArr2 != null) {
                        measuredHeight = extractHigherInt(jArr2[i11]);
                    }
                    if (!this.mChildrenFrozen[i11] && flexItem.getFlexShrink() > FlexItem.FLEX_GROW_DEFAULT) {
                        float flexShrink = measuredWidth - (flexItem.getFlexShrink() * f);
                        float f3 = flexShrink;
                        float f4 = f2;
                        if (i10 == flexLine.mItemCount - 1) {
                            f3 = flexShrink + f2;
                            f4 = 0.0f;
                        }
                        int round = Math.round(f3);
                        if (round < flexItem.getMinWidth()) {
                            i6 = flexItem.getMinWidth();
                            this.mChildrenFrozen[i11] = true;
                            flexLine.mTotalFlexShrink -= flexItem.getFlexShrink();
                            z2 = true;
                            f2 = f4;
                        } else {
                            float f5 = f4 + (f3 - round);
                            double d = f5;
                            if (d > 1.0d) {
                                i6 = round + 1;
                                f2 = f5 - 1.0f;
                                z2 = z4;
                            } else {
                                z2 = z4;
                                f2 = f5;
                                i6 = round;
                                if (d < -1.0d) {
                                    i6 = round - 1;
                                    f2 = f5 + 1.0f;
                                    z2 = z4;
                                }
                            }
                        }
                        int childHeightMeasureSpecInternal = getChildHeightMeasureSpecInternal(i2, flexItem, flexLine.mSumCrossSizeBefore);
                        int makeMeasureSpec = View.MeasureSpec.makeMeasureSpec(i6, 1073741824);
                        reorderedFlexItemAt.measure(makeMeasureSpec, childHeightMeasureSpecInternal);
                        int measuredWidth2 = reorderedFlexItemAt.getMeasuredWidth();
                        measuredHeight = reorderedFlexItemAt.getMeasuredHeight();
                        updateMeasureCache(i11, makeMeasureSpec, childHeightMeasureSpecInternal, reorderedFlexItemAt);
                        this.mFlexContainer.updateViewCache(i11, reorderedFlexItemAt);
                        z4 = z2;
                        measuredWidth = measuredWidth2;
                    }
                    i5 = Math.max(i9, measuredHeight + flexItem.getMarginTop() + flexItem.getMarginBottom() + this.mFlexContainer.getDecorationLengthCrossAxis(reorderedFlexItemAt));
                    flexLine.mMainSize += measuredWidth + flexItem.getMarginLeft() + flexItem.getMarginRight();
                } else {
                    int measuredHeight2 = reorderedFlexItemAt.getMeasuredHeight();
                    long[] jArr3 = this.mMeasuredSizeCache;
                    if (jArr3 != null) {
                        measuredHeight2 = extractHigherInt(jArr3[i11]);
                    }
                    int measuredWidth3 = reorderedFlexItemAt.getMeasuredWidth();
                    long[] jArr4 = this.mMeasuredSizeCache;
                    if (jArr4 != null) {
                        measuredWidth3 = extractLowerInt(jArr4[i11]);
                    }
                    if (!this.mChildrenFrozen[i11] && flexItem.getFlexShrink() > FlexItem.FLEX_GROW_DEFAULT) {
                        float flexShrink2 = measuredHeight2 - (flexItem.getFlexShrink() * f);
                        float f6 = f2;
                        float f7 = flexShrink2;
                        if (i10 == flexLine.mItemCount - 1) {
                            f7 = flexShrink2 + f2;
                            f6 = 0.0f;
                        }
                        int round2 = Math.round(f7);
                        if (round2 < flexItem.getMinHeight()) {
                            i7 = flexItem.getMinHeight();
                            this.mChildrenFrozen[i11] = true;
                            flexLine.mTotalFlexShrink -= flexItem.getFlexShrink();
                            z3 = true;
                            f2 = f6;
                        } else {
                            float f8 = f6 + (f7 - round2);
                            double d2 = f8;
                            if (d2 > 1.0d) {
                                i7 = round2 + 1;
                                f2 = f8 - 1.0f;
                                z3 = z4;
                            } else {
                                z3 = z4;
                                f2 = f8;
                                i7 = round2;
                                if (d2 < -1.0d) {
                                    i7 = round2 - 1;
                                    f2 = f8 + 1.0f;
                                    z3 = z4;
                                }
                            }
                        }
                        int childWidthMeasureSpecInternal = getChildWidthMeasureSpecInternal(i, flexItem, flexLine.mSumCrossSizeBefore);
                        int makeMeasureSpec2 = View.MeasureSpec.makeMeasureSpec(i7, 1073741824);
                        reorderedFlexItemAt.measure(childWidthMeasureSpecInternal, makeMeasureSpec2);
                        int measuredWidth4 = reorderedFlexItemAt.getMeasuredWidth();
                        measuredHeight2 = reorderedFlexItemAt.getMeasuredHeight();
                        updateMeasureCache(i11, childWidthMeasureSpecInternal, makeMeasureSpec2, reorderedFlexItemAt);
                        this.mFlexContainer.updateViewCache(i11, reorderedFlexItemAt);
                        z4 = z3;
                        measuredWidth3 = measuredWidth4;
                    }
                    int max = Math.max(i9, measuredWidth3 + flexItem.getMarginLeft() + flexItem.getMarginRight() + this.mFlexContainer.getDecorationLengthCrossAxis(reorderedFlexItemAt));
                    flexLine.mMainSize += measuredHeight2 + flexItem.getMarginTop() + flexItem.getMarginBottom();
                    i5 = max;
                }
                flexLine.mCrossSize = Math.max(flexLine.mCrossSize, i5);
                i9 = i5;
            }
        }
        if (!z4 || i8 == flexLine.mMainSize) {
            return;
        }
        shrinkFlexItems(i, i2, flexLine, i3, i4, true);
    }

    private int[] sortOrdersIntoReorderedIndices(int i, List<Order> list, SparseIntArray sparseIntArray) {
        Collections.sort(list);
        sparseIntArray.clear();
        int[] iArr = new int[i];
        int i2 = 0;
        for (Order order : list) {
            iArr[i2] = order.index;
            sparseIntArray.append(order.index, order.order);
            i2++;
        }
        return iArr;
    }

    private void stretchViewHorizontally(View view, int i, int i2) {
        FlexItem flexItem = (FlexItem) view.getLayoutParams();
        int min = Math.min(Math.max(((i - flexItem.getMarginLeft()) - flexItem.getMarginRight()) - this.mFlexContainer.getDecorationLengthCrossAxis(view), flexItem.getMinWidth()), flexItem.getMaxWidth());
        long[] jArr = this.mMeasuredSizeCache;
        int makeMeasureSpec = View.MeasureSpec.makeMeasureSpec(jArr != null ? extractHigherInt(jArr[i2]) : view.getMeasuredHeight(), 1073741824);
        int makeMeasureSpec2 = View.MeasureSpec.makeMeasureSpec(min, 1073741824);
        view.measure(makeMeasureSpec2, makeMeasureSpec);
        updateMeasureCache(i2, makeMeasureSpec2, makeMeasureSpec, view);
        this.mFlexContainer.updateViewCache(i2, view);
    }

    private void stretchViewVertically(View view, int i, int i2) {
        FlexItem flexItem = (FlexItem) view.getLayoutParams();
        int min = Math.min(Math.max(((i - flexItem.getMarginTop()) - flexItem.getMarginBottom()) - this.mFlexContainer.getDecorationLengthCrossAxis(view), flexItem.getMinHeight()), flexItem.getMaxHeight());
        long[] jArr = this.mMeasuredSizeCache;
        int makeMeasureSpec = View.MeasureSpec.makeMeasureSpec(jArr != null ? extractLowerInt(jArr[i2]) : view.getMeasuredWidth(), 1073741824);
        int makeMeasureSpec2 = View.MeasureSpec.makeMeasureSpec(min, 1073741824);
        view.measure(makeMeasureSpec, makeMeasureSpec2);
        updateMeasureCache(i2, makeMeasureSpec, makeMeasureSpec2, view);
        this.mFlexContainer.updateViewCache(i2, view);
    }

    private void updateMeasureCache(int i, int i2, int i3, View view) {
        long[] jArr = this.mMeasureSpecCache;
        if (jArr != null) {
            jArr[i] = makeCombinedLong(i2, i3);
        }
        long[] jArr2 = this.mMeasuredSizeCache;
        if (jArr2 != null) {
            jArr2[i] = makeCombinedLong(view.getMeasuredWidth(), view.getMeasuredHeight());
        }
    }

    public void calculateFlexLines(FlexLinesResult flexLinesResult, int i, int i2, int i3, int i4, int i5, List<FlexLine> list) {
        int i6;
        int i7;
        int i8;
        int i9;
        int i10;
        int i11;
        int i12;
        boolean z;
        int i13;
        int i14 = i5;
        boolean isMainAxisDirectionHorizontal = this.mFlexContainer.isMainAxisDirectionHorizontal();
        int mode = View.MeasureSpec.getMode(i);
        int size = View.MeasureSpec.getSize(i);
        ArrayList arrayList = list == null ? new ArrayList() : list;
        flexLinesResult.mFlexLines = arrayList;
        boolean z2 = i14 == -1;
        int paddingStartMain = getPaddingStartMain(isMainAxisDirectionHorizontal);
        int paddingEndMain = getPaddingEndMain(isMainAxisDirectionHorizontal);
        int paddingStartCross = getPaddingStartCross(isMainAxisDirectionHorizontal);
        int paddingEndCross = getPaddingEndCross(isMainAxisDirectionHorizontal);
        FlexLine flexLine = new FlexLine();
        flexLine.mFirstIndex = i4;
        int i15 = paddingEndMain + paddingStartMain;
        flexLine.mMainSize = i15;
        int flexItemCount = this.mFlexContainer.getFlexItemCount();
        int i16 = Integer.MIN_VALUE;
        int i17 = 0;
        int i18 = 0;
        int i19 = 0;
        while (true) {
            if (i4 >= flexItemCount) {
                i6 = i18;
                break;
            }
            View reorderedFlexItemAt = this.mFlexContainer.getReorderedFlexItemAt(i4);
            if (reorderedFlexItemAt != null) {
                if (reorderedFlexItemAt.getVisibility() != 8) {
                    FlexItem flexItem = (FlexItem) reorderedFlexItemAt.getLayoutParams();
                    if (flexItem.getAlignSelf() == 4) {
                        flexLine.mIndicesAlignSelfStretch.add(Integer.valueOf(i4));
                    }
                    int flexItemSizeMain = getFlexItemSizeMain(flexItem, isMainAxisDirectionHorizontal);
                    int i20 = flexItemSizeMain;
                    if (flexItem.getFlexBasisPercent() != -1.0f) {
                        i20 = flexItemSizeMain;
                        if (mode == 1073741824) {
                            i20 = Math.round(size * flexItem.getFlexBasisPercent());
                        }
                    }
                    if (isMainAxisDirectionHorizontal) {
                        i9 = this.mFlexContainer.getChildWidthMeasureSpec(i, i15 + getFlexItemMarginStartMain(flexItem, true) + getFlexItemMarginEndMain(flexItem, true), i20);
                        int childHeightMeasureSpec = this.mFlexContainer.getChildHeightMeasureSpec(i2, paddingStartCross + paddingEndCross + getFlexItemMarginStartCross(flexItem, true) + getFlexItemMarginEndCross(flexItem, true) + i17, getFlexItemSizeCross(flexItem, true));
                        reorderedFlexItemAt.measure(i9, childHeightMeasureSpec);
                        updateMeasureCache(i4, i9, childHeightMeasureSpec, reorderedFlexItemAt);
                    } else {
                        int childWidthMeasureSpec = this.mFlexContainer.getChildWidthMeasureSpec(i2, paddingStartCross + paddingEndCross + getFlexItemMarginStartCross(flexItem, false) + getFlexItemMarginEndCross(flexItem, false) + i17, getFlexItemSizeCross(flexItem, false));
                        i9 = this.mFlexContainer.getChildHeightMeasureSpec(i, getFlexItemMarginStartMain(flexItem, false) + i15 + getFlexItemMarginEndMain(flexItem, false), i20);
                        reorderedFlexItemAt.measure(childWidthMeasureSpec, i9);
                        updateMeasureCache(i4, childWidthMeasureSpec, i9, reorderedFlexItemAt);
                    }
                    this.mFlexContainer.updateViewCache(i4, reorderedFlexItemAt);
                    checkSizeConstraints(reorderedFlexItemAt, i4);
                    i18 = C0552u.m6283a(i18, C0552u.m6241h(reorderedFlexItemAt));
                    if (isWrapRequired(reorderedFlexItemAt, mode, size, flexLine.mMainSize, getFlexItemMarginEndMain(flexItem, isMainAxisDirectionHorizontal) + getViewMeasuredSizeMain(reorderedFlexItemAt, isMainAxisDirectionHorizontal) + getFlexItemMarginStartMain(flexItem, isMainAxisDirectionHorizontal), flexItem, i4, i19)) {
                        int i21 = i4;
                        if (flexLine.getItemCountNotGone() > 0) {
                            addFlexLine(arrayList, flexLine, i21 > 0 ? i21 - 1 : 0, i17);
                            i13 = flexLine.mCrossSize + i17;
                        } else {
                            i13 = i17;
                        }
                        if (isMainAxisDirectionHorizontal) {
                            if (flexItem.getHeight() == -1) {
                                FlexContainer flexContainer = this.mFlexContainer;
                                reorderedFlexItemAt.measure(i9, flexContainer.getChildHeightMeasureSpec(i2, flexContainer.getPaddingTop() + this.mFlexContainer.getPaddingBottom() + flexItem.getMarginTop() + flexItem.getMarginBottom() + i13, flexItem.getHeight()));
                                checkSizeConstraints(reorderedFlexItemAt, i21);
                            }
                        } else if (flexItem.getWidth() == -1) {
                            FlexContainer flexContainer2 = this.mFlexContainer;
                            reorderedFlexItemAt.measure(flexContainer2.getChildWidthMeasureSpec(i2, flexContainer2.getPaddingLeft() + this.mFlexContainer.getPaddingRight() + flexItem.getMarginLeft() + flexItem.getMarginRight() + i13, flexItem.getWidth()), i9);
                            checkSizeConstraints(reorderedFlexItemAt, i21);
                        }
                        flexLine = new FlexLine();
                        flexLine.mItemCount = 1;
                        flexLine.mMainSize = i15;
                        flexLine.mFirstIndex = i21;
                        i17 = i13;
                        i10 = Integer.MIN_VALUE;
                        i11 = 0;
                    } else {
                        flexLine.mItemCount++;
                        int i22 = i19 + 1;
                        i10 = i16;
                        i11 = i22;
                    }
                    i7 = i4;
                    int i23 = i15;
                    int[] iArr = this.mIndexToFlexLine;
                    if (iArr != null) {
                        iArr[i7] = arrayList.size();
                    }
                    flexLine.mMainSize += getViewMeasuredSizeMain(reorderedFlexItemAt, isMainAxisDirectionHorizontal) + getFlexItemMarginStartMain(flexItem, isMainAxisDirectionHorizontal) + getFlexItemMarginEndMain(flexItem, isMainAxisDirectionHorizontal);
                    flexLine.mTotalFlexGrow += flexItem.getFlexGrow();
                    flexLine.mTotalFlexShrink += flexItem.getFlexShrink();
                    this.mFlexContainer.onNewFlexItemAdded(reorderedFlexItemAt, i7, i11, flexLine);
                    int max = Math.max(i10, getViewMeasuredSizeCross(reorderedFlexItemAt, isMainAxisDirectionHorizontal) + getFlexItemMarginStartCross(flexItem, isMainAxisDirectionHorizontal) + getFlexItemMarginEndCross(flexItem, isMainAxisDirectionHorizontal) + this.mFlexContainer.getDecorationLengthCrossAxis(reorderedFlexItemAt));
                    flexLine.mCrossSize = Math.max(flexLine.mCrossSize, max);
                    if (isMainAxisDirectionHorizontal) {
                        if (this.mFlexContainer.getFlexWrap() != 2) {
                            flexLine.mMaxBaseline = Math.max(flexLine.mMaxBaseline, reorderedFlexItemAt.getBaseline() + flexItem.getMarginTop());
                        } else {
                            flexLine.mMaxBaseline = Math.max(flexLine.mMaxBaseline, (reorderedFlexItemAt.getMeasuredHeight() - reorderedFlexItemAt.getBaseline()) + flexItem.getMarginBottom());
                        }
                    }
                    int i24 = flexItemCount;
                    int i25 = i17;
                    if (isLastFlexItem(i7, i24, flexLine)) {
                        addFlexLine(arrayList, flexLine, i7, i17);
                        i25 = i17 + flexLine.mCrossSize;
                    }
                    if (i5 == -1 || arrayList.size() <= 0) {
                        z = z2;
                        i12 = i25;
                    } else {
                        i12 = i25;
                        z = z2;
                        if (arrayList.get(arrayList.size() - 1).mLastIndex >= i5) {
                            i12 = i25;
                            z = z2;
                            if (i7 >= i5) {
                                i12 = i25;
                                z = z2;
                                if (!z2) {
                                    i12 = -flexLine.getCrossSize();
                                    z = true;
                                }
                            }
                        }
                    }
                    if (i12 > i3 && z) {
                        i6 = i18;
                        break;
                    }
                    int i26 = i12;
                    i19 = i11;
                    z2 = z;
                    i16 = max;
                    i8 = i5;
                    i15 = i23;
                    flexItemCount = i24;
                    i17 = i26;
                    i14 = i8;
                    i4 = i7 + 1;
                } else {
                    flexLine.mGoneItemCount++;
                    flexLine.mItemCount++;
                    if (isLastFlexItem(i4, flexItemCount, flexLine)) {
                        addFlexLine(arrayList, flexLine, i4, i17);
                    }
                }
            } else if (isLastFlexItem(i4, flexItemCount, flexLine)) {
                addFlexLine(arrayList, flexLine, i4, i17);
            }
            i7 = i4;
            i8 = i14;
            i14 = i8;
            i4 = i7 + 1;
        }
        flexLinesResult.mChildState = i6;
    }

    public void calculateHorizontalFlexLines(FlexLinesResult flexLinesResult, int i, int i2) {
        calculateFlexLines(flexLinesResult, i, i2, Api.BaseClientBuilder.API_PRIORITY_OTHER, 0, -1, null);
    }

    public void calculateHorizontalFlexLines(FlexLinesResult flexLinesResult, int i, int i2, int i3, int i4, List<FlexLine> list) {
        calculateFlexLines(flexLinesResult, i, i2, i3, i4, -1, list);
    }

    public void calculateHorizontalFlexLinesToIndex(FlexLinesResult flexLinesResult, int i, int i2, int i3, int i4, List<FlexLine> list) {
        calculateFlexLines(flexLinesResult, i, i2, i3, 0, i4, list);
    }

    public void calculateVerticalFlexLines(FlexLinesResult flexLinesResult, int i, int i2) {
        calculateFlexLines(flexLinesResult, i2, i, Api.BaseClientBuilder.API_PRIORITY_OTHER, 0, -1, null);
    }

    public void calculateVerticalFlexLines(FlexLinesResult flexLinesResult, int i, int i2, int i3, int i4, List<FlexLine> list) {
        calculateFlexLines(flexLinesResult, i2, i, i3, i4, -1, list);
    }

    public void calculateVerticalFlexLinesToIndex(FlexLinesResult flexLinesResult, int i, int i2, int i3, int i4, List<FlexLine> list) {
        calculateFlexLines(flexLinesResult, i2, i, i3, 0, i4, list);
    }

    public void clearFlexLines(List<FlexLine> list, int i) {
        int i2 = this.mIndexToFlexLine[i];
        int i3 = i2;
        if (i2 == -1) {
            i3 = 0;
        }
        for (int size = list.size() - 1; size >= i3; size--) {
            list.remove(size);
        }
        int[] iArr = this.mIndexToFlexLine;
        int length = iArr.length - 1;
        if (i > length) {
            Arrays.fill(iArr, -1);
        } else {
            Arrays.fill(iArr, i, length, -1);
        }
        long[] jArr = this.mMeasureSpecCache;
        int length2 = jArr.length - 1;
        if (i > length2) {
            Arrays.fill(jArr, 0L);
        } else {
            Arrays.fill(jArr, i, length2, 0L);
        }
    }

    public int[] createReorderedIndices(SparseIntArray sparseIntArray) {
        int flexItemCount = this.mFlexContainer.getFlexItemCount();
        return sortOrdersIntoReorderedIndices(flexItemCount, createOrders(flexItemCount), sparseIntArray);
    }

    public int[] createReorderedIndices(View view, int i, ViewGroup.LayoutParams layoutParams, SparseIntArray sparseIntArray) {
        int flexItemCount = this.mFlexContainer.getFlexItemCount();
        List<Order> createOrders = createOrders(flexItemCount);
        Order order = new Order();
        if (view == null || !(layoutParams instanceof FlexItem)) {
            order.order = 1;
        } else {
            order.order = ((FlexItem) layoutParams).getOrder();
        }
        if (i == -1 || i == flexItemCount) {
            order.index = flexItemCount;
        } else if (i < this.mFlexContainer.getFlexItemCount()) {
            order.index = i;
            while (i < flexItemCount) {
                createOrders.get(i).index++;
                i++;
            }
        } else {
            order.index = flexItemCount;
        }
        createOrders.add(order);
        return sortOrdersIntoReorderedIndices(flexItemCount + 1, createOrders, sparseIntArray);
    }

    public void determineCrossSize(int i, int i2, int i3) {
        int i4;
        int i5;
        float f;
        int i6;
        int flexDirection = this.mFlexContainer.getFlexDirection();
        if (flexDirection == 0 || flexDirection == 1) {
            int mode = View.MeasureSpec.getMode(i2);
            i5 = View.MeasureSpec.getSize(i2);
            i4 = mode;
        } else if (flexDirection != 2 && flexDirection != 3) {
            throw new IllegalArgumentException("Invalid flex direction: " + flexDirection);
        } else {
            i4 = View.MeasureSpec.getMode(i);
            i5 = View.MeasureSpec.getSize(i);
        }
        List<FlexLine> flexLinesInternal = this.mFlexContainer.getFlexLinesInternal();
        if (i4 == 1073741824) {
            int sumOfCrossSize = this.mFlexContainer.getSumOfCrossSize() + i3;
            if (flexLinesInternal.size() == 1) {
                flexLinesInternal.get(0).mCrossSize = i5 - i3;
            } else if (flexLinesInternal.size() >= 2) {
                int alignContent = this.mFlexContainer.getAlignContent();
                if (alignContent == 1) {
                    FlexLine flexLine = new FlexLine();
                    flexLine.mCrossSize = i5 - sumOfCrossSize;
                    flexLinesInternal.add(0, flexLine);
                } else if (alignContent == 2) {
                    this.mFlexContainer.setFlexLines(constructFlexLinesForAlignContentCenter(flexLinesInternal, i5, sumOfCrossSize));
                } else if (alignContent == 3) {
                    if (sumOfCrossSize >= i5) {
                        return;
                    }
                    float size = (i5 - sumOfCrossSize) / (flexLinesInternal.size() - 1);
                    ArrayList arrayList = new ArrayList();
                    int size2 = flexLinesInternal.size();
                    float f2 = 0.0f;
                    int i7 = 0;
                    while (i7 < size2) {
                        arrayList.add(flexLinesInternal.get(i7));
                        float f3 = f2;
                        if (i7 != flexLinesInternal.size() - 1) {
                            FlexLine flexLine2 = new FlexLine();
                            if (i7 == flexLinesInternal.size() - 2) {
                                flexLine2.mCrossSize = Math.round(f2 + size);
                                f2 = 0.0f;
                            } else {
                                flexLine2.mCrossSize = Math.round(size);
                            }
                            float f4 = f2 + (size - flexLine2.mCrossSize);
                            if (f4 > 1.0f) {
                                flexLine2.mCrossSize++;
                                f = f4 - 1.0f;
                            } else {
                                f = f4;
                                if (f4 < -1.0f) {
                                    flexLine2.mCrossSize--;
                                    f = f4 + 1.0f;
                                }
                            }
                            arrayList.add(flexLine2);
                            f3 = f;
                        }
                        i7++;
                        f2 = f3;
                    }
                    this.mFlexContainer.setFlexLines(arrayList);
                } else if (alignContent == 4) {
                    if (sumOfCrossSize >= i5) {
                        this.mFlexContainer.setFlexLines(constructFlexLinesForAlignContentCenter(flexLinesInternal, i5, sumOfCrossSize));
                        return;
                    }
                    int size3 = (i5 - sumOfCrossSize) / (flexLinesInternal.size() * 2);
                    ArrayList arrayList2 = new ArrayList();
                    FlexLine flexLine3 = new FlexLine();
                    flexLine3.mCrossSize = size3;
                    for (FlexLine flexLine4 : flexLinesInternal) {
                        arrayList2.add(flexLine3);
                        arrayList2.add(flexLine4);
                        arrayList2.add(flexLine3);
                    }
                    this.mFlexContainer.setFlexLines(arrayList2);
                } else if (alignContent == 5 && sumOfCrossSize < i5) {
                    float size4 = (i5 - sumOfCrossSize) / flexLinesInternal.size();
                    int size5 = flexLinesInternal.size();
                    float f5 = 0.0f;
                    for (int i8 = 0; i8 < size5; i8++) {
                        FlexLine flexLine5 = flexLinesInternal.get(i8);
                        float f6 = flexLine5.mCrossSize + size4;
                        float f7 = f6;
                        float f8 = f5;
                        if (i8 == flexLinesInternal.size() - 1) {
                            f7 = f6 + f5;
                            f8 = 0.0f;
                        }
                        int round = Math.round(f7);
                        float f9 = f8 + (f7 - round);
                        if (f9 > 1.0f) {
                            i6 = round + 1;
                            f5 = f9 - 1.0f;
                        } else {
                            i6 = round;
                            f5 = f9;
                            if (f9 < -1.0f) {
                                i6 = round - 1;
                                f5 = f9 + 1.0f;
                            }
                        }
                        flexLine5.mCrossSize = i6;
                    }
                }
            }
        }
    }

    public void determineMainSize(int i, int i2) {
        determineMainSize(i, i2, 0);
    }

    public void determineMainSize(int i, int i2, int i3) {
        int i4;
        int i5;
        int i6;
        ensureChildrenFrozen(this.mFlexContainer.getFlexItemCount());
        if (i3 >= this.mFlexContainer.getFlexItemCount()) {
            return;
        }
        int flexDirection = this.mFlexContainer.getFlexDirection();
        int flexDirection2 = this.mFlexContainer.getFlexDirection();
        if (flexDirection2 == 0 || flexDirection2 == 1) {
            int mode = View.MeasureSpec.getMode(i);
            int size = View.MeasureSpec.getSize(i);
            if (mode != 1073741824) {
                size = this.mFlexContainer.getLargestMainSize();
            }
            i5 = this.mFlexContainer.getPaddingLeft();
            i4 = this.mFlexContainer.getPaddingRight();
            i6 = size;
        } else if (flexDirection2 != 2 && flexDirection2 != 3) {
            throw new IllegalArgumentException("Invalid flex direction: " + flexDirection);
        } else {
            int mode2 = View.MeasureSpec.getMode(i2);
            int size2 = View.MeasureSpec.getSize(i2);
            if (mode2 != 1073741824) {
                size2 = this.mFlexContainer.getLargestMainSize();
            }
            i5 = this.mFlexContainer.getPaddingTop();
            i4 = this.mFlexContainer.getPaddingBottom();
            i6 = size2;
        }
        int i7 = i5 + i4;
        int i8 = 0;
        int[] iArr = this.mIndexToFlexLine;
        if (iArr != null) {
            i8 = iArr[i3];
        }
        List<FlexLine> flexLinesInternal = this.mFlexContainer.getFlexLinesInternal();
        int size3 = flexLinesInternal.size();
        while (i8 < size3) {
            FlexLine flexLine = flexLinesInternal.get(i8);
            if (flexLine.mMainSize < i6) {
                expandFlexItems(i, i2, flexLine, i6, i7, false);
            } else {
                shrinkFlexItems(i, i2, flexLine, i6, i7, false);
            }
            i8++;
        }
    }

    public void ensureIndexToFlexLine(int i) {
        int[] iArr = this.mIndexToFlexLine;
        if (iArr == null) {
            int i2 = i;
            if (i < 10) {
                i2 = 10;
            }
            this.mIndexToFlexLine = new int[i2];
        } else if (iArr.length >= i) {
        } else {
            int length = iArr.length * 2;
            int i3 = i;
            if (length >= i) {
                i3 = length;
            }
            this.mIndexToFlexLine = Arrays.copyOf(this.mIndexToFlexLine, i3);
        }
    }

    public void ensureMeasureSpecCache(int i) {
        long[] jArr = this.mMeasureSpecCache;
        if (jArr == null) {
            int i2 = i;
            if (i < 10) {
                i2 = 10;
            }
            this.mMeasureSpecCache = new long[i2];
        } else if (jArr.length >= i) {
        } else {
            int length = jArr.length * 2;
            int i3 = i;
            if (length >= i) {
                i3 = length;
            }
            this.mMeasureSpecCache = Arrays.copyOf(this.mMeasureSpecCache, i3);
        }
    }

    public void ensureMeasuredSizeCache(int i) {
        long[] jArr = this.mMeasuredSizeCache;
        if (jArr == null) {
            int i2 = i;
            if (i < 10) {
                i2 = 10;
            }
            this.mMeasuredSizeCache = new long[i2];
        } else if (jArr.length >= i) {
        } else {
            int length = jArr.length * 2;
            int i3 = i;
            if (length >= i) {
                i3 = length;
            }
            this.mMeasuredSizeCache = Arrays.copyOf(this.mMeasuredSizeCache, i3);
        }
    }

    public int extractHigherInt(long j) {
        return (int) (j >> 32);
    }

    public int extractLowerInt(long j) {
        return (int) j;
    }

    public boolean isOrderChangedFromLastMeasurement(SparseIntArray sparseIntArray) {
        int flexItemCount = this.mFlexContainer.getFlexItemCount();
        if (sparseIntArray.size() != flexItemCount) {
            return true;
        }
        for (int i = 0; i < flexItemCount; i++) {
            View flexItemAt = this.mFlexContainer.getFlexItemAt(i);
            if (flexItemAt != null && ((FlexItem) flexItemAt.getLayoutParams()).getOrder() != sparseIntArray.get(i)) {
                return true;
            }
        }
        return false;
    }

    public void layoutSingleChildHorizontal(View view, FlexLine flexLine, int i, int i2, int i3, int i4) {
        FlexItem flexItem = (FlexItem) view.getLayoutParams();
        int alignItems = this.mFlexContainer.getAlignItems();
        if (flexItem.getAlignSelf() != -1) {
            alignItems = flexItem.getAlignSelf();
        }
        int i5 = flexLine.mCrossSize;
        if (alignItems != 0) {
            if (alignItems == 1) {
                if (this.mFlexContainer.getFlexWrap() == 2) {
                    view.layout(i, (i2 - i5) + view.getMeasuredHeight() + flexItem.getMarginTop(), i3, (i4 - i5) + view.getMeasuredHeight() + flexItem.getMarginTop());
                    return;
                }
                int i6 = i2 + i5;
                view.layout(i, (i6 - view.getMeasuredHeight()) - flexItem.getMarginBottom(), i3, i6 - flexItem.getMarginBottom());
                return;
            } else if (alignItems == 2) {
                int measuredHeight = (((i5 - view.getMeasuredHeight()) + flexItem.getMarginTop()) - flexItem.getMarginBottom()) / 2;
                if (this.mFlexContainer.getFlexWrap() != 2) {
                    int i7 = i2 + measuredHeight;
                    view.layout(i, i7, i3, view.getMeasuredHeight() + i7);
                    return;
                }
                int i8 = i2 - measuredHeight;
                view.layout(i, i8, i3, view.getMeasuredHeight() + i8);
                return;
            } else if (alignItems == 3) {
                if (this.mFlexContainer.getFlexWrap() != 2) {
                    int max = Math.max(flexLine.mMaxBaseline - view.getBaseline(), flexItem.getMarginTop());
                    view.layout(i, i2 + max, i3, i4 + max);
                    return;
                }
                int max2 = Math.max((flexLine.mMaxBaseline - view.getMeasuredHeight()) + view.getBaseline(), flexItem.getMarginBottom());
                view.layout(i, i2 - max2, i3, i4 - max2);
                return;
            } else if (alignItems != 4) {
                return;
            }
        }
        if (this.mFlexContainer.getFlexWrap() != 2) {
            view.layout(i, i2 + flexItem.getMarginTop(), i3, i4 + flexItem.getMarginTop());
        } else {
            view.layout(i, i2 - flexItem.getMarginBottom(), i3, i4 - flexItem.getMarginBottom());
        }
    }

    public void layoutSingleChildVertical(View view, FlexLine flexLine, boolean z, int i, int i2, int i3, int i4) {
        FlexItem flexItem = (FlexItem) view.getLayoutParams();
        int alignItems = this.mFlexContainer.getAlignItems();
        if (flexItem.getAlignSelf() != -1) {
            alignItems = flexItem.getAlignSelf();
        }
        int i5 = flexLine.mCrossSize;
        if (alignItems != 0) {
            if (alignItems == 1) {
                if (!z) {
                    view.layout(((i + i5) - view.getMeasuredWidth()) - flexItem.getMarginRight(), i2, ((i3 + i5) - view.getMeasuredWidth()) - flexItem.getMarginRight(), i4);
                    return;
                } else {
                    view.layout((i - i5) + view.getMeasuredWidth() + flexItem.getMarginLeft(), i2, (i3 - i5) + view.getMeasuredWidth() + flexItem.getMarginLeft(), i4);
                    return;
                }
            } else if (alignItems == 2) {
                ViewGroup.MarginLayoutParams marginLayoutParams = (ViewGroup.MarginLayoutParams) view.getLayoutParams();
                int measuredWidth = (((i5 - view.getMeasuredWidth()) + C0537f.m6333a(marginLayoutParams)) - C0537f.m6331b(marginLayoutParams)) / 2;
                if (!z) {
                    view.layout(i + measuredWidth, i2, i3 + measuredWidth, i4);
                    return;
                } else {
                    view.layout(i - measuredWidth, i2, i3 - measuredWidth, i4);
                    return;
                }
            } else if (alignItems != 3 && alignItems != 4) {
                return;
            }
        }
        if (!z) {
            view.layout(i + flexItem.getMarginLeft(), i2, i3 + flexItem.getMarginLeft(), i4);
        } else {
            view.layout(i - flexItem.getMarginRight(), i2, i3 - flexItem.getMarginRight(), i4);
        }
    }

    long makeCombinedLong(int i, int i2) {
        return (i & MEASURE_SPEC_WIDTH_MASK) | (i2 << 32);
    }

    public void stretchViews() {
        stretchViews(0);
    }

    public void stretchViews(int i) {
        View reorderedFlexItemAt;
        if (i >= this.mFlexContainer.getFlexItemCount()) {
            return;
        }
        int flexDirection = this.mFlexContainer.getFlexDirection();
        if (this.mFlexContainer.getAlignItems() != 4) {
            for (FlexLine flexLine : this.mFlexContainer.getFlexLinesInternal()) {
                for (Integer num : flexLine.mIndicesAlignSelfStretch) {
                    View reorderedFlexItemAt2 = this.mFlexContainer.getReorderedFlexItemAt(num.intValue());
                    if (flexDirection == 0 || flexDirection == 1) {
                        stretchViewVertically(reorderedFlexItemAt2, flexLine.mCrossSize, num.intValue());
                    } else if (flexDirection != 2 && flexDirection != 3) {
                        throw new IllegalArgumentException("Invalid flex direction: " + flexDirection);
                    } else {
                        stretchViewHorizontally(reorderedFlexItemAt2, flexLine.mCrossSize, num.intValue());
                    }
                }
            }
            return;
        }
        int[] iArr = this.mIndexToFlexLine;
        List<FlexLine> flexLinesInternal = this.mFlexContainer.getFlexLinesInternal();
        int size = flexLinesInternal.size();
        for (int i2 = iArr != null ? iArr[i] : 0; i2 < size; i2++) {
            FlexLine flexLine2 = flexLinesInternal.get(i2);
            int i3 = flexLine2.mItemCount;
            for (int i4 = 0; i4 < i3; i4++) {
                int i5 = flexLine2.mFirstIndex + i4;
                if (i4 < this.mFlexContainer.getFlexItemCount() && (reorderedFlexItemAt = this.mFlexContainer.getReorderedFlexItemAt(i5)) != null && reorderedFlexItemAt.getVisibility() != 8) {
                    FlexItem flexItem = (FlexItem) reorderedFlexItemAt.getLayoutParams();
                    if (flexItem.getAlignSelf() == -1 || flexItem.getAlignSelf() == 4) {
                        if (flexDirection == 0 || flexDirection == 1) {
                            stretchViewVertically(reorderedFlexItemAt, flexLine2.mCrossSize, i5);
                        } else if (flexDirection != 2 && flexDirection != 3) {
                            throw new IllegalArgumentException("Invalid flex direction: " + flexDirection);
                        } else {
                            stretchViewHorizontally(reorderedFlexItemAt, flexLine2.mCrossSize, i5);
                        }
                    }
                }
            }
        }
    }
}

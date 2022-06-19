package androidx.recyclerview.widget;

import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.Matrix;
import android.graphics.Rect;
import android.graphics.RectF;
import android.os.Bundle;
import android.os.Parcelable;
import android.util.AttributeSet;
import android.util.Log;
import android.view.View;
import android.view.ViewGroup;
import android.view.accessibility.AccessibilityEvent;
import android.view.animation.Interpolator;
import java.util.ArrayList;
import p00;
import ub;
/* loaded from: classes-dex2jar.jar:androidx/recyclerview/widget/RecyclerView$o.class */
public abstract class RecyclerView$o {
    public a00 mChildHelper;
    private int mHeight;
    private int mHeightMode;
    public p00 mHorizontalBoundCheck;
    private final p00.b mHorizontalBoundCheckCallback;
    public int mPrefetchMaxCountObserved;
    public boolean mPrefetchMaxObservedInInitialPrefetch;
    public RecyclerView mRecyclerView;
    public RecyclerView$x mSmoothScroller;
    public p00 mVerticalBoundCheck;
    private final p00.b mVerticalBoundCheckCallback;
    private int mWidth;
    private int mWidthMode;
    public boolean mRequestedSimpleAnimations = false;
    public boolean mIsAttachedToWindow = false;
    public boolean mAutoMeasure = false;
    private boolean mMeasurementCacheEnabled = true;
    private boolean mItemPrefetchEnabled = true;

    /* renamed from: androidx.recyclerview.widget.RecyclerView$o$c */
    /* loaded from: classes-dex2jar.jar:androidx/recyclerview/widget/RecyclerView$o$c.class */
    public interface AbstractC0182c {
        /* renamed from: a */
        void m6179a(int i, int i2);
    }

    /* renamed from: androidx.recyclerview.widget.RecyclerView$o$d */
    /* loaded from: classes-dex2jar.jar:androidx/recyclerview/widget/RecyclerView$o$d.class */
    public static class C0183d {

        /* renamed from: a */
        public int f1357a;

        /* renamed from: b */
        public int f1358b;

        /* renamed from: c */
        public boolean f1359c;

        /* renamed from: d */
        public boolean f1360d;
    }

    public RecyclerView$o() {
        a aVar = new a(this);
        this.mHorizontalBoundCheckCallback = aVar;
        b bVar = new b(this);
        this.mVerticalBoundCheckCallback = bVar;
        this.mHorizontalBoundCheck = new p00(aVar);
        this.mVerticalBoundCheck = new p00(bVar);
    }

    private void addViewInt(View view, int i, boolean z) {
        RecyclerView$b0 childViewHolderInt = RecyclerView.getChildViewHolderInt(view);
        if (z || childViewHolderInt.isRemoved()) {
            this.mRecyclerView.mViewInfoStore.b(childViewHolderInt);
        } else {
            this.mRecyclerView.mViewInfoStore.p(childViewHolderInt);
        }
        RecyclerView$LayoutParams recyclerView$LayoutParams = (RecyclerView$LayoutParams) view.getLayoutParams();
        if (childViewHolderInt.wasReturnedFromScrap() || childViewHolderInt.isScrap()) {
            if (childViewHolderInt.isScrap()) {
                childViewHolderInt.unScrap();
            } else {
                childViewHolderInt.clearReturnedFromScrapFlag();
            }
            this.mChildHelper.m7458c(view, i, view.getLayoutParams(), false);
        } else if (view.getParent() == this.mRecyclerView) {
            int m7448m = this.mChildHelper.m7448m(view);
            int i2 = i;
            if (i == -1) {
                i2 = this.mChildHelper.m7454g();
            }
            if (m7448m == -1) {
                throw new IllegalStateException("Added View has RecyclerView as parent but view is not a real child. Unfiltered index:" + this.mRecyclerView.indexOfChild(view) + this.mRecyclerView.exceptionLabel());
            } else if (m7448m != i2) {
                this.mRecyclerView.mLayout.moveView(m7448m, i2);
            }
        } else {
            this.mChildHelper.m7460a(view, i, false);
            recyclerView$LayoutParams.f1338c = true;
            RecyclerView$x recyclerView$x = this.mSmoothScroller;
            if (recyclerView$x != null && recyclerView$x.isRunning()) {
                this.mSmoothScroller.onChildAttachedToWindow(view);
            }
        }
        if (recyclerView$LayoutParams.f1339d) {
            childViewHolderInt.itemView.invalidate();
            recyclerView$LayoutParams.f1339d = false;
        }
    }

    public static int chooseSize(int i, int i2, int i3) {
        int mode = View.MeasureSpec.getMode(i);
        int size = View.MeasureSpec.getSize(i);
        if (mode != Integer.MIN_VALUE) {
            if (mode != 1073741824) {
                size = Math.max(i2, i3);
            }
            return size;
        }
        return Math.min(size, Math.max(i2, i3));
    }

    private void detachViewInternal(int i, View view) {
        this.mChildHelper.m7457d(i);
    }

    /* JADX WARN: Code restructure failed: missing block: B:13:0x002a, code lost:
        if (r5 != 1073741824) goto L29;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static int getChildMeasureSpec(int r4, int r5, int r6, int r7, boolean r8) {
        /*
            r0 = 0
            r1 = r4
            r2 = r6
            int r1 = r1 - r2
            int r0 = java.lang.Math.max(r0, r1)
            r6 = r0
            r0 = r8
            if (r0 == 0) goto L30
            r0 = r7
            if (r0 < 0) goto L14
            goto L34
        L14:
            r0 = r7
            r1 = -1
            if (r0 != r1) goto L66
            r0 = r5
            r4 = r0
            r0 = r5
            r1 = -2147483648(0xffffffff80000000, float:-0.0)
            if (r0 == r1) goto L41
            r0 = r5
            if (r0 == 0) goto L66
            r0 = r5
            r4 = r0
            r0 = r5
            r1 = 1073741824(0x40000000, float:2.0)
            if (r0 == r1) goto L41
            goto L66
        L30:
            r0 = r7
            if (r0 < 0) goto L3a
        L34:
            r0 = 1073741824(0x40000000, float:2.0)
            r4 = r0
            goto L6a
        L3a:
            r0 = r7
            r1 = -1
            if (r0 != r1) goto L46
            r0 = r5
            r4 = r0
        L41:
            r0 = r6
            r7 = r0
            goto L6a
        L46:
            r0 = r7
            r1 = -2
            if (r0 != r1) goto L66
            r0 = r5
            r1 = -2147483648(0xffffffff80000000, float:-0.0)
            if (r0 == r1) goto L60
            r0 = r5
            r1 = 1073741824(0x40000000, float:2.0)
            if (r0 != r1) goto L5b
            goto L60
        L5b:
            r0 = 0
            r4 = r0
            goto L41
        L60:
            r0 = -2147483648(0xffffffff80000000, float:-0.0)
            r4 = r0
            goto L41
        L66:
            r0 = 0
            r4 = r0
            r0 = 0
            r7 = r0
        L6a:
            r0 = r7
            r1 = r4
            int r0 = android.view.View.MeasureSpec.makeMeasureSpec(r0, r1)
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.recyclerview.widget.RecyclerView$o.getChildMeasureSpec(int, int, int, int, boolean):int");
    }

    /* JADX WARN: Code restructure failed: missing block: B:5:0x0010, code lost:
        if (r6 >= 0) goto L9;
     */
    @java.lang.Deprecated
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static int getChildMeasureSpec(int r4, int r5, int r6, boolean r7) {
        /*
            r0 = 0
            r8 = r0
            r0 = 0
            r1 = r4
            r2 = r5
            int r1 = r1 - r2
            int r0 = java.lang.Math.max(r0, r1)
            r5 = r0
            r0 = r7
            if (r0 == 0) goto L1e
            r0 = r6
            if (r0 < 0) goto L16
            goto L22
        L16:
            r0 = 0
            r6 = r0
            r0 = r8
            r4 = r0
            goto L41
        L1e:
            r0 = r6
            if (r0 < 0) goto L28
        L22:
            r0 = 1073741824(0x40000000, float:2.0)
            r4 = r0
            goto L41
        L28:
            r0 = r6
            r1 = -1
            if (r0 != r1) goto L35
            r0 = 1073741824(0x40000000, float:2.0)
            r4 = r0
        L30:
            r0 = r5
            r6 = r0
            goto L41
        L35:
            r0 = r6
            r1 = -2
            if (r0 != r1) goto L16
            r0 = -2147483648(0xffffffff80000000, float:-0.0)
            r4 = r0
            goto L30
        L41:
            r0 = r6
            r1 = r4
            int r0 = android.view.View.MeasureSpec.makeMeasureSpec(r0, r1)
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.recyclerview.widget.RecyclerView$o.getChildMeasureSpec(int, int, int, boolean):int");
    }

    private int[] getChildRectangleOnScreenScrollAmount(View view, Rect rect) {
        int paddingLeft = getPaddingLeft();
        int paddingTop = getPaddingTop();
        int width = getWidth();
        int paddingRight = getPaddingRight();
        int height = getHeight();
        int paddingBottom = getPaddingBottom();
        int left = (view.getLeft() + rect.left) - view.getScrollX();
        int top = (view.getTop() + rect.top) - view.getScrollY();
        int width2 = rect.width();
        int height2 = rect.height();
        int i = left - paddingLeft;
        int min = Math.min(0, i);
        int i2 = top - paddingTop;
        int min2 = Math.min(0, i2);
        int i3 = (width2 + left) - (width - paddingRight);
        int max = Math.max(0, i3);
        int max2 = Math.max(0, (height2 + top) - (height - paddingBottom));
        if (getLayoutDirection() == 1) {
            min = max != 0 ? max : Math.max(min, i3);
        } else if (min == 0) {
            min = Math.min(i, max);
        }
        if (min2 == 0) {
            min2 = Math.min(i2, max2);
        }
        return new int[]{min, min2};
    }

    public static C0183d getProperties(Context context, AttributeSet attributeSet, int i, int i2) {
        C0183d c0183d = new C0183d();
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, wz.RecyclerView, i, i2);
        c0183d.f1357a = obtainStyledAttributes.getInt(wz.RecyclerView_android_orientation, 1);
        c0183d.f1358b = obtainStyledAttributes.getInt(wz.RecyclerView_spanCount, 1);
        c0183d.f1359c = obtainStyledAttributes.getBoolean(wz.RecyclerView_reverseLayout, false);
        c0183d.f1360d = obtainStyledAttributes.getBoolean(wz.RecyclerView_stackFromEnd, false);
        obtainStyledAttributes.recycle();
        return c0183d;
    }

    private boolean isFocusedChildVisibleAfterScrolling(RecyclerView recyclerView, int i, int i2) {
        View focusedChild = recyclerView.getFocusedChild();
        if (focusedChild == null) {
            return false;
        }
        int paddingLeft = getPaddingLeft();
        int paddingTop = getPaddingTop();
        int width = getWidth();
        int paddingRight = getPaddingRight();
        int height = getHeight();
        int paddingBottom = getPaddingBottom();
        Rect rect = this.mRecyclerView.mTempRect;
        getDecoratedBoundsWithMargins(focusedChild, rect);
        return rect.left - i < width - paddingRight && rect.right - i > paddingLeft && rect.top - i2 < height - paddingBottom && rect.bottom - i2 > paddingTop;
    }

    private static boolean isMeasurementUpToDate(int i, int i2, int i3) {
        int mode = View.MeasureSpec.getMode(i2);
        int size = View.MeasureSpec.getSize(i2);
        boolean z = false;
        if (i3 <= 0 || i == i3) {
            if (mode == Integer.MIN_VALUE) {
                boolean z2 = false;
                if (size >= i) {
                    z2 = true;
                }
                return z2;
            } else if (mode == 0) {
                return true;
            } else {
                if (mode != 1073741824) {
                    return false;
                }
                if (size == i) {
                    z = true;
                }
                return z;
            }
        }
        return false;
    }

    private void scrapOrRecycleView(RecyclerView$u recyclerView$u, int i, View view) {
        RecyclerView$b0 childViewHolderInt = RecyclerView.getChildViewHolderInt(view);
        if (childViewHolderInt.shouldIgnore()) {
            return;
        }
        if (childViewHolderInt.isInvalid() && !childViewHolderInt.isRemoved() && !this.mRecyclerView.mAdapter.hasStableIds()) {
            removeViewAt(i);
            recyclerView$u.m6158C(childViewHolderInt);
            return;
        }
        detachViewAt(i);
        recyclerView$u.m6157D(view);
        this.mRecyclerView.mViewInfoStore.k(childViewHolderInt);
    }

    public void addDisappearingView(View view) {
        addDisappearingView(view, -1);
    }

    public void addDisappearingView(View view, int i) {
        addViewInt(view, i, true);
    }

    public void addView(View view) {
        addView(view, -1);
    }

    public void addView(View view, int i) {
        addViewInt(view, i, false);
    }

    public void assertInLayoutOrScroll(String str) {
        RecyclerView recyclerView = this.mRecyclerView;
        if (recyclerView != null) {
            recyclerView.assertInLayoutOrScroll(str);
        }
    }

    public void assertNotInLayoutOrScroll(String str) {
        RecyclerView recyclerView = this.mRecyclerView;
        if (recyclerView != null) {
            recyclerView.assertNotInLayoutOrScroll(str);
        }
    }

    public void attachView(View view) {
        attachView(view, -1);
    }

    public void attachView(View view, int i) {
        attachView(view, i, (RecyclerView$LayoutParams) view.getLayoutParams());
    }

    public void attachView(View view, int i, RecyclerView$LayoutParams recyclerView$LayoutParams) {
        RecyclerView$b0 childViewHolderInt = RecyclerView.getChildViewHolderInt(view);
        if (childViewHolderInt.isRemoved()) {
            this.mRecyclerView.mViewInfoStore.b(childViewHolderInt);
        } else {
            this.mRecyclerView.mViewInfoStore.p(childViewHolderInt);
        }
        this.mChildHelper.m7458c(view, i, recyclerView$LayoutParams, childViewHolderInt.isRemoved());
    }

    public void calculateItemDecorationsForChild(View view, Rect rect) {
        RecyclerView recyclerView = this.mRecyclerView;
        if (recyclerView == null) {
            rect.set(0, 0, 0, 0);
        } else {
            rect.set(recyclerView.getItemDecorInsetsForChild(view));
        }
    }

    public boolean canScrollHorizontally() {
        return false;
    }

    public boolean canScrollVertically() {
        return false;
    }

    public boolean checkLayoutParams(RecyclerView$LayoutParams recyclerView$LayoutParams) {
        return recyclerView$LayoutParams != null;
    }

    public void collectAdjacentPrefetchPositions(int i, int i2, RecyclerView$y recyclerView$y, AbstractC0182c abstractC0182c) {
    }

    public void collectInitialPrefetchPositions(int i, AbstractC0182c abstractC0182c) {
    }

    public int computeHorizontalScrollExtent(RecyclerView$y recyclerView$y) {
        return 0;
    }

    public int computeHorizontalScrollOffset(RecyclerView$y recyclerView$y) {
        return 0;
    }

    public int computeHorizontalScrollRange(RecyclerView$y recyclerView$y) {
        return 0;
    }

    public int computeVerticalScrollExtent(RecyclerView$y recyclerView$y) {
        return 0;
    }

    public int computeVerticalScrollOffset(RecyclerView$y recyclerView$y) {
        return 0;
    }

    public int computeVerticalScrollRange(RecyclerView$y recyclerView$y) {
        return 0;
    }

    public void detachAndScrapAttachedViews(RecyclerView$u recyclerView$u) {
        for (int childCount = getChildCount() - 1; childCount >= 0; childCount--) {
            scrapOrRecycleView(recyclerView$u, childCount, getChildAt(childCount));
        }
    }

    public void detachAndScrapView(View view, RecyclerView$u recyclerView$u) {
        scrapOrRecycleView(recyclerView$u, this.mChildHelper.m7448m(view), view);
    }

    public void detachAndScrapViewAt(int i, RecyclerView$u recyclerView$u) {
        scrapOrRecycleView(recyclerView$u, i, getChildAt(i));
    }

    public void detachView(View view) {
        int m7448m = this.mChildHelper.m7448m(view);
        if (m7448m >= 0) {
            detachViewInternal(m7448m, view);
        }
    }

    public void detachViewAt(int i) {
        detachViewInternal(i, getChildAt(i));
    }

    public void dispatchAttachedToWindow(RecyclerView recyclerView) {
        this.mIsAttachedToWindow = true;
        onAttachedToWindow(recyclerView);
    }

    public void dispatchDetachedFromWindow(RecyclerView recyclerView, RecyclerView$u recyclerView$u) {
        this.mIsAttachedToWindow = false;
        onDetachedFromWindow(recyclerView, recyclerView$u);
    }

    public void endAnimation(View view) {
        RecyclerView$l recyclerView$l = this.mRecyclerView.mItemAnimator;
        if (recyclerView$l != null) {
            recyclerView$l.m6196j(RecyclerView.getChildViewHolderInt(view));
        }
    }

    public View findContainingItemView(View view) {
        View findContainingItemView;
        RecyclerView recyclerView = this.mRecyclerView;
        if (recyclerView == null || (findContainingItemView = recyclerView.findContainingItemView(view)) == null || this.mChildHelper.m7447n(findContainingItemView)) {
            return null;
        }
        return findContainingItemView;
    }

    public View findViewByPosition(int i) {
        int childCount = getChildCount();
        for (int i2 = 0; i2 < childCount; i2++) {
            View childAt = getChildAt(i2);
            RecyclerView$b0 childViewHolderInt = RecyclerView.getChildViewHolderInt(childAt);
            if (childViewHolderInt != null && childViewHolderInt.getLayoutPosition() == i && !childViewHolderInt.shouldIgnore() && (this.mRecyclerView.mState.m6111e() || !childViewHolderInt.isRemoved())) {
                return childAt;
            }
        }
        return null;
    }

    public abstract RecyclerView$LayoutParams generateDefaultLayoutParams();

    public RecyclerView$LayoutParams generateLayoutParams(Context context, AttributeSet attributeSet) {
        return new RecyclerView$LayoutParams(context, attributeSet);
    }

    public RecyclerView$LayoutParams generateLayoutParams(ViewGroup.LayoutParams layoutParams) {
        return layoutParams instanceof RecyclerView$LayoutParams ? new RecyclerView$LayoutParams((RecyclerView$LayoutParams) layoutParams) : layoutParams instanceof ViewGroup.MarginLayoutParams ? new RecyclerView$LayoutParams((ViewGroup.MarginLayoutParams) layoutParams) : new RecyclerView$LayoutParams(layoutParams);
    }

    public int getBaseline() {
        return -1;
    }

    public int getBottomDecorationHeight(View view) {
        return ((RecyclerView$LayoutParams) view.getLayoutParams()).f1337b.bottom;
    }

    public View getChildAt(int i) {
        a00 a00Var = this.mChildHelper;
        return a00Var != null ? a00Var.m7455f(i) : null;
    }

    public int getChildCount() {
        a00 a00Var = this.mChildHelper;
        return a00Var != null ? a00Var.m7454g() : 0;
    }

    public boolean getClipToPadding() {
        RecyclerView recyclerView = this.mRecyclerView;
        return recyclerView != null && recyclerView.mClipToPadding;
    }

    public int getColumnCountForAccessibility(RecyclerView$u recyclerView$u, RecyclerView$y recyclerView$y) {
        RecyclerView recyclerView = this.mRecyclerView;
        int i = 1;
        if (recyclerView != null) {
            if (recyclerView.mAdapter == null) {
                i = 1;
            } else {
                i = 1;
                if (canScrollHorizontally()) {
                    i = this.mRecyclerView.mAdapter.getItemCount();
                }
            }
        }
        return i;
    }

    public int getDecoratedBottom(View view) {
        return view.getBottom() + getBottomDecorationHeight(view);
    }

    public void getDecoratedBoundsWithMargins(View view, Rect rect) {
        RecyclerView.getDecoratedBoundsWithMarginsInt(view, rect);
    }

    public int getDecoratedLeft(View view) {
        return view.getLeft() - getLeftDecorationWidth(view);
    }

    public int getDecoratedMeasuredHeight(View view) {
        Rect rect = ((RecyclerView$LayoutParams) view.getLayoutParams()).f1337b;
        return view.getMeasuredHeight() + rect.top + rect.bottom;
    }

    public int getDecoratedMeasuredWidth(View view) {
        Rect rect = ((RecyclerView$LayoutParams) view.getLayoutParams()).f1337b;
        return view.getMeasuredWidth() + rect.left + rect.right;
    }

    public int getDecoratedRight(View view) {
        return view.getRight() + getRightDecorationWidth(view);
    }

    public int getDecoratedTop(View view) {
        return view.getTop() - getTopDecorationHeight(view);
    }

    public View getFocusedChild() {
        View focusedChild;
        RecyclerView recyclerView = this.mRecyclerView;
        if (recyclerView == null || (focusedChild = recyclerView.getFocusedChild()) == null || this.mChildHelper.m7447n(focusedChild)) {
            return null;
        }
        return focusedChild;
    }

    public int getHeight() {
        return this.mHeight;
    }

    public int getHeightMode() {
        return this.mHeightMode;
    }

    public int getItemCount() {
        RecyclerView recyclerView = this.mRecyclerView;
        RecyclerView$g adapter = recyclerView != null ? recyclerView.getAdapter() : null;
        return adapter != null ? adapter.getItemCount() : 0;
    }

    public int getItemViewType(View view) {
        return RecyclerView.getChildViewHolderInt(view).getItemViewType();
    }

    public int getLayoutDirection() {
        return jb.B(this.mRecyclerView);
    }

    public int getLeftDecorationWidth(View view) {
        return ((RecyclerView$LayoutParams) view.getLayoutParams()).f1337b.left;
    }

    public int getMinimumHeight() {
        return jb.C(this.mRecyclerView);
    }

    public int getMinimumWidth() {
        return jb.D(this.mRecyclerView);
    }

    public int getPaddingBottom() {
        RecyclerView recyclerView = this.mRecyclerView;
        return recyclerView != null ? recyclerView.getPaddingBottom() : 0;
    }

    public int getPaddingEnd() {
        RecyclerView recyclerView = this.mRecyclerView;
        return recyclerView != null ? jb.F(recyclerView) : 0;
    }

    public int getPaddingLeft() {
        RecyclerView recyclerView = this.mRecyclerView;
        return recyclerView != null ? recyclerView.getPaddingLeft() : 0;
    }

    public int getPaddingRight() {
        RecyclerView recyclerView = this.mRecyclerView;
        return recyclerView != null ? recyclerView.getPaddingRight() : 0;
    }

    public int getPaddingStart() {
        RecyclerView recyclerView = this.mRecyclerView;
        return recyclerView != null ? jb.G(recyclerView) : 0;
    }

    public int getPaddingTop() {
        RecyclerView recyclerView = this.mRecyclerView;
        return recyclerView != null ? recyclerView.getPaddingTop() : 0;
    }

    public int getPosition(View view) {
        return ((RecyclerView$LayoutParams) view.getLayoutParams()).m6228a();
    }

    public int getRightDecorationWidth(View view) {
        return ((RecyclerView$LayoutParams) view.getLayoutParams()).f1337b.right;
    }

    public int getRowCountForAccessibility(RecyclerView$u recyclerView$u, RecyclerView$y recyclerView$y) {
        RecyclerView recyclerView = this.mRecyclerView;
        int i = 1;
        if (recyclerView != null) {
            if (recyclerView.mAdapter == null) {
                i = 1;
            } else {
                i = 1;
                if (canScrollVertically()) {
                    i = this.mRecyclerView.mAdapter.getItemCount();
                }
            }
        }
        return i;
    }

    public int getSelectionModeForAccessibility(RecyclerView$u recyclerView$u, RecyclerView$y recyclerView$y) {
        return 0;
    }

    public int getTopDecorationHeight(View view) {
        return ((RecyclerView$LayoutParams) view.getLayoutParams()).f1337b.top;
    }

    public void getTransformedBoundingBox(View view, boolean z, Rect rect) {
        Matrix matrix;
        if (z) {
            Rect rect2 = ((RecyclerView$LayoutParams) view.getLayoutParams()).f1337b;
            rect.set(-rect2.left, -rect2.top, view.getWidth() + rect2.right, view.getHeight() + rect2.bottom);
        } else {
            rect.set(0, 0, view.getWidth(), view.getHeight());
        }
        if (this.mRecyclerView != null && (matrix = view.getMatrix()) != null && !matrix.isIdentity()) {
            RectF rectF = this.mRecyclerView.mTempRectF;
            rectF.set(rect);
            matrix.mapRect(rectF);
            rect.set((int) Math.floor(rectF.left), (int) Math.floor(rectF.top), (int) Math.ceil(rectF.right), (int) Math.ceil(rectF.bottom));
        }
        rect.offset(view.getLeft(), view.getTop());
    }

    public int getWidth() {
        return this.mWidth;
    }

    public int getWidthMode() {
        return this.mWidthMode;
    }

    public boolean hasFlexibleChildInBothOrientations() {
        int childCount = getChildCount();
        for (int i = 0; i < childCount; i++) {
            ViewGroup.LayoutParams layoutParams = getChildAt(i).getLayoutParams();
            if (layoutParams.width < 0 && layoutParams.height < 0) {
                return true;
            }
        }
        return false;
    }

    public boolean hasFocus() {
        RecyclerView recyclerView = this.mRecyclerView;
        return recyclerView != null && recyclerView.hasFocus();
    }

    public void ignoreView(View view) {
        RecyclerView parent = view.getParent();
        RecyclerView recyclerView = this.mRecyclerView;
        if (parent != recyclerView || recyclerView.indexOfChild(view) == -1) {
            throw new IllegalArgumentException("View should be fully attached to be ignored" + this.mRecyclerView.exceptionLabel());
        }
        RecyclerView$b0 childViewHolderInt = RecyclerView.getChildViewHolderInt(view);
        childViewHolderInt.addFlags(128);
        this.mRecyclerView.mViewInfoStore.q(childViewHolderInt);
    }

    public boolean isAttachedToWindow() {
        return this.mIsAttachedToWindow;
    }

    public boolean isAutoMeasureEnabled() {
        return this.mAutoMeasure;
    }

    public boolean isFocused() {
        RecyclerView recyclerView = this.mRecyclerView;
        return recyclerView != null && recyclerView.isFocused();
    }

    public final boolean isItemPrefetchEnabled() {
        return this.mItemPrefetchEnabled;
    }

    public boolean isLayoutHierarchical(RecyclerView$u recyclerView$u, RecyclerView$y recyclerView$y) {
        return false;
    }

    public boolean isMeasurementCacheEnabled() {
        return this.mMeasurementCacheEnabled;
    }

    public boolean isSmoothScrolling() {
        RecyclerView$x recyclerView$x = this.mSmoothScroller;
        return recyclerView$x != null && recyclerView$x.isRunning();
    }

    public boolean isViewPartiallyVisible(View view, boolean z, boolean z2) {
        boolean z3 = this.mHorizontalBoundCheck.b(view, 24579) && this.mVerticalBoundCheck.b(view, 24579);
        return z ? z3 : !z3;
    }

    public void layoutDecorated(View view, int i, int i2, int i3, int i4) {
        Rect rect = ((RecyclerView$LayoutParams) view.getLayoutParams()).f1337b;
        view.layout(i + rect.left, i2 + rect.top, i3 - rect.right, i4 - rect.bottom);
    }

    public void layoutDecoratedWithMargins(View view, int i, int i2, int i3, int i4) {
        RecyclerView$LayoutParams recyclerView$LayoutParams = (RecyclerView$LayoutParams) view.getLayoutParams();
        Rect rect = recyclerView$LayoutParams.f1337b;
        view.layout(i + rect.left + ((ViewGroup.MarginLayoutParams) recyclerView$LayoutParams).leftMargin, i2 + rect.top + ((ViewGroup.MarginLayoutParams) recyclerView$LayoutParams).topMargin, (i3 - rect.right) - ((ViewGroup.MarginLayoutParams) recyclerView$LayoutParams).rightMargin, (i4 - rect.bottom) - ((ViewGroup.MarginLayoutParams) recyclerView$LayoutParams).bottomMargin);
    }

    public void measureChild(View view, int i, int i2) {
        RecyclerView$LayoutParams recyclerView$LayoutParams = (RecyclerView$LayoutParams) view.getLayoutParams();
        Rect itemDecorInsetsForChild = this.mRecyclerView.getItemDecorInsetsForChild(view);
        int i3 = itemDecorInsetsForChild.left;
        int i4 = itemDecorInsetsForChild.right;
        int i5 = itemDecorInsetsForChild.top;
        int i6 = itemDecorInsetsForChild.bottom;
        int childMeasureSpec = getChildMeasureSpec(getWidth(), getWidthMode(), getPaddingLeft() + getPaddingRight() + i + i3 + i4, ((ViewGroup.MarginLayoutParams) recyclerView$LayoutParams).width, canScrollHorizontally());
        int childMeasureSpec2 = getChildMeasureSpec(getHeight(), getHeightMode(), getPaddingTop() + getPaddingBottom() + i2 + i5 + i6, ((ViewGroup.MarginLayoutParams) recyclerView$LayoutParams).height, canScrollVertically());
        if (shouldMeasureChild(view, childMeasureSpec, childMeasureSpec2, recyclerView$LayoutParams)) {
            view.measure(childMeasureSpec, childMeasureSpec2);
        }
    }

    public void measureChildWithMargins(View view, int i, int i2) {
        RecyclerView$LayoutParams recyclerView$LayoutParams = (RecyclerView$LayoutParams) view.getLayoutParams();
        Rect itemDecorInsetsForChild = this.mRecyclerView.getItemDecorInsetsForChild(view);
        int i3 = itemDecorInsetsForChild.left;
        int i4 = itemDecorInsetsForChild.right;
        int i5 = itemDecorInsetsForChild.top;
        int i6 = itemDecorInsetsForChild.bottom;
        int childMeasureSpec = getChildMeasureSpec(getWidth(), getWidthMode(), getPaddingLeft() + getPaddingRight() + ((ViewGroup.MarginLayoutParams) recyclerView$LayoutParams).leftMargin + ((ViewGroup.MarginLayoutParams) recyclerView$LayoutParams).rightMargin + i + i3 + i4, ((ViewGroup.MarginLayoutParams) recyclerView$LayoutParams).width, canScrollHorizontally());
        int childMeasureSpec2 = getChildMeasureSpec(getHeight(), getHeightMode(), getPaddingTop() + getPaddingBottom() + ((ViewGroup.MarginLayoutParams) recyclerView$LayoutParams).topMargin + ((ViewGroup.MarginLayoutParams) recyclerView$LayoutParams).bottomMargin + i2 + i5 + i6, ((ViewGroup.MarginLayoutParams) recyclerView$LayoutParams).height, canScrollVertically());
        if (shouldMeasureChild(view, childMeasureSpec, childMeasureSpec2, recyclerView$LayoutParams)) {
            view.measure(childMeasureSpec, childMeasureSpec2);
        }
    }

    public void moveView(int i, int i2) {
        View childAt = getChildAt(i);
        if (childAt != null) {
            detachViewAt(i);
            attachView(childAt, i2);
            return;
        }
        throw new IllegalArgumentException("Cannot move a child from non-existing index:" + i + this.mRecyclerView.toString());
    }

    public void offsetChildrenHorizontal(int i) {
        RecyclerView recyclerView = this.mRecyclerView;
        if (recyclerView != null) {
            recyclerView.offsetChildrenHorizontal(i);
        }
    }

    public void offsetChildrenVertical(int i) {
        RecyclerView recyclerView = this.mRecyclerView;
        if (recyclerView != null) {
            recyclerView.offsetChildrenVertical(i);
        }
    }

    public void onAdapterChanged(RecyclerView$g recyclerView$g, RecyclerView$g recyclerView$g2) {
    }

    public boolean onAddFocusables(RecyclerView recyclerView, ArrayList<View> arrayList, int i, int i2) {
        return false;
    }

    public void onAttachedToWindow(RecyclerView recyclerView) {
    }

    @Deprecated
    public void onDetachedFromWindow(RecyclerView recyclerView) {
    }

    public void onDetachedFromWindow(RecyclerView recyclerView, RecyclerView$u recyclerView$u) {
        onDetachedFromWindow(recyclerView);
    }

    public View onFocusSearchFailed(View view, int i, RecyclerView$u recyclerView$u, RecyclerView$y recyclerView$y) {
        return null;
    }

    public void onInitializeAccessibilityEvent(AccessibilityEvent accessibilityEvent) {
        RecyclerView recyclerView = this.mRecyclerView;
        onInitializeAccessibilityEvent(recyclerView.mRecycler, recyclerView.mState, accessibilityEvent);
    }

    public void onInitializeAccessibilityEvent(RecyclerView$u recyclerView$u, RecyclerView$y recyclerView$y, AccessibilityEvent accessibilityEvent) {
        RecyclerView recyclerView = this.mRecyclerView;
        if (recyclerView == null || accessibilityEvent == null) {
            return;
        }
        boolean z = true;
        if (!recyclerView.canScrollVertically(1)) {
            z = true;
            if (!this.mRecyclerView.canScrollVertically(-1)) {
                z = true;
                if (!this.mRecyclerView.canScrollHorizontally(-1)) {
                    z = this.mRecyclerView.canScrollHorizontally(1);
                }
            }
        }
        accessibilityEvent.setScrollable(z);
        RecyclerView$g recyclerView$g = this.mRecyclerView.mAdapter;
        if (recyclerView$g == null) {
            return;
        }
        accessibilityEvent.setItemCount(recyclerView$g.getItemCount());
    }

    public void onInitializeAccessibilityNodeInfo(RecyclerView$u recyclerView$u, RecyclerView$y recyclerView$y, ub ubVar) {
        if (this.mRecyclerView.canScrollVertically(-1) || this.mRecyclerView.canScrollHorizontally(-1)) {
            ubVar.a(8192);
            ubVar.y0(true);
        }
        if (this.mRecyclerView.canScrollVertically(1) || this.mRecyclerView.canScrollHorizontally(1)) {
            ubVar.a(4096);
            ubVar.y0(true);
        }
        ubVar.e0(ub.b.b(getRowCountForAccessibility(recyclerView$u, recyclerView$y), getColumnCountForAccessibility(recyclerView$u, recyclerView$y), isLayoutHierarchical(recyclerView$u, recyclerView$y), getSelectionModeForAccessibility(recyclerView$u, recyclerView$y)));
    }

    public void onInitializeAccessibilityNodeInfo(ub ubVar) {
        RecyclerView recyclerView = this.mRecyclerView;
        onInitializeAccessibilityNodeInfo(recyclerView.mRecycler, recyclerView.mState, ubVar);
    }

    public void onInitializeAccessibilityNodeInfoForItem(View view, ub ubVar) {
        RecyclerView$b0 childViewHolderInt = RecyclerView.getChildViewHolderInt(view);
        if (childViewHolderInt == null || childViewHolderInt.isRemoved() || this.mChildHelper.m7447n(childViewHolderInt.itemView)) {
            return;
        }
        RecyclerView recyclerView = this.mRecyclerView;
        onInitializeAccessibilityNodeInfoForItem(recyclerView.mRecycler, recyclerView.mState, view, ubVar);
    }

    public void onInitializeAccessibilityNodeInfoForItem(RecyclerView$u recyclerView$u, RecyclerView$y recyclerView$y, View view, ub ubVar) {
        ubVar.f0(ub.c.a(canScrollVertically() ? getPosition(view) : 0, 1, canScrollHorizontally() ? getPosition(view) : 0, 1, false, false));
    }

    public View onInterceptFocusSearch(View view, int i) {
        return null;
    }

    public void onItemsAdded(RecyclerView recyclerView, int i, int i2) {
    }

    public void onItemsChanged(RecyclerView recyclerView) {
    }

    public void onItemsMoved(RecyclerView recyclerView, int i, int i2, int i3) {
    }

    public void onItemsRemoved(RecyclerView recyclerView, int i, int i2) {
    }

    public void onItemsUpdated(RecyclerView recyclerView, int i, int i2) {
    }

    public void onItemsUpdated(RecyclerView recyclerView, int i, int i2, Object obj) {
        onItemsUpdated(recyclerView, i, i2);
    }

    public void onLayoutChildren(RecyclerView$u recyclerView$u, RecyclerView$y recyclerView$y) {
        Log.e("RecyclerView", "You must override onLayoutChildren(Recycler recycler, State state) ");
    }

    public void onLayoutCompleted(RecyclerView$y recyclerView$y) {
    }

    public void onMeasure(RecyclerView$u recyclerView$u, RecyclerView$y recyclerView$y, int i, int i2) {
        this.mRecyclerView.defaultOnMeasure(i, i2);
    }

    @Deprecated
    public boolean onRequestChildFocus(RecyclerView recyclerView, View view, View view2) {
        return isSmoothScrolling() || recyclerView.isComputingLayout();
    }

    public boolean onRequestChildFocus(RecyclerView recyclerView, RecyclerView$y recyclerView$y, View view, View view2) {
        return onRequestChildFocus(recyclerView, view, view2);
    }

    public void onRestoreInstanceState(Parcelable parcelable) {
    }

    public Parcelable onSaveInstanceState() {
        return null;
    }

    public void onScrollStateChanged(int i) {
    }

    public void onSmoothScrollerStopped(RecyclerView$x recyclerView$x) {
        if (this.mSmoothScroller == recyclerView$x) {
            this.mSmoothScroller = null;
        }
    }

    public boolean performAccessibilityAction(int i, Bundle bundle) {
        RecyclerView recyclerView = this.mRecyclerView;
        return performAccessibilityAction(recyclerView.mRecycler, recyclerView.mState, i, bundle);
    }

    public boolean performAccessibilityAction(RecyclerView$u recyclerView$u, RecyclerView$y recyclerView$y, int i, Bundle bundle) {
        int i2;
        int i3;
        int i4;
        int i5;
        RecyclerView recyclerView = this.mRecyclerView;
        if (recyclerView == null) {
            return false;
        }
        if (i == 4096) {
            i5 = recyclerView.canScrollVertically(1) ? (getHeight() - getPaddingTop()) - getPaddingBottom() : 0;
            i2 = i5;
            if (this.mRecyclerView.canScrollHorizontally(1)) {
                i4 = (getWidth() - getPaddingLeft()) - getPaddingRight();
                int i6 = i5;
                i3 = i4;
                i2 = i6;
            }
            i3 = 0;
        } else if (i != 8192) {
            i3 = 0;
            i2 = 0;
        } else {
            i5 = recyclerView.canScrollVertically(-1) ? -((getHeight() - getPaddingTop()) - getPaddingBottom()) : 0;
            i2 = i5;
            if (this.mRecyclerView.canScrollHorizontally(-1)) {
                i4 = -((getWidth() - getPaddingLeft()) - getPaddingRight());
                int i62 = i5;
                i3 = i4;
                i2 = i62;
            }
            i3 = 0;
        }
        if (i2 == 0 && i3 == 0) {
            return false;
        }
        this.mRecyclerView.smoothScrollBy(i3, i2, (Interpolator) null, Integer.MIN_VALUE, true);
        return true;
    }

    public boolean performAccessibilityActionForItem(View view, int i, Bundle bundle) {
        RecyclerView recyclerView = this.mRecyclerView;
        return performAccessibilityActionForItem(recyclerView.mRecycler, recyclerView.mState, view, i, bundle);
    }

    public boolean performAccessibilityActionForItem(RecyclerView$u recyclerView$u, RecyclerView$y recyclerView$y, View view, int i, Bundle bundle) {
        return false;
    }

    public void postOnAnimation(Runnable runnable) {
        RecyclerView recyclerView = this.mRecyclerView;
        if (recyclerView != null) {
            jb.f0(recyclerView, runnable);
        }
    }

    public void removeAllViews() {
        for (int childCount = getChildCount() - 1; childCount >= 0; childCount--) {
            this.mChildHelper.m7444q(childCount);
        }
    }

    public void removeAndRecycleAllViews(RecyclerView$u recyclerView$u) {
        for (int childCount = getChildCount() - 1; childCount >= 0; childCount--) {
            if (!RecyclerView.getChildViewHolderInt(getChildAt(childCount)).shouldIgnore()) {
                removeAndRecycleViewAt(childCount, recyclerView$u);
            }
        }
    }

    public void removeAndRecycleScrapInt(RecyclerView$u recyclerView$u) {
        int m6138j = recyclerView$u.m6138j();
        for (int i = m6138j - 1; i >= 0; i--) {
            View m6134n = recyclerView$u.m6134n(i);
            RecyclerView$b0 childViewHolderInt = RecyclerView.getChildViewHolderInt(m6134n);
            if (!childViewHolderInt.shouldIgnore()) {
                childViewHolderInt.setIsRecyclable(false);
                if (childViewHolderInt.isTmpDetached()) {
                    this.mRecyclerView.removeDetachedView(m6134n, false);
                }
                RecyclerView$l recyclerView$l = this.mRecyclerView.mItemAnimator;
                if (recyclerView$l != null) {
                    recyclerView$l.m6196j(childViewHolderInt);
                }
                childViewHolderInt.setIsRecyclable(true);
                recyclerView$u.m6123y(m6134n);
            }
        }
        recyclerView$u.m6143e();
        if (m6138j > 0) {
            this.mRecyclerView.invalidate();
        }
    }

    public void removeAndRecycleView(View view, RecyclerView$u recyclerView$u) {
        removeView(view);
        recyclerView$u.m6159B(view);
    }

    public void removeAndRecycleViewAt(int i, RecyclerView$u recyclerView$u) {
        View childAt = getChildAt(i);
        removeViewAt(i);
        recyclerView$u.m6159B(childAt);
    }

    public boolean removeCallbacks(Runnable runnable) {
        RecyclerView recyclerView = this.mRecyclerView;
        if (recyclerView != null) {
            return recyclerView.removeCallbacks(runnable);
        }
        return false;
    }

    public void removeDetachedView(View view) {
        this.mRecyclerView.removeDetachedView(view, false);
    }

    public void removeView(View view) {
        this.mChildHelper.m7445p(view);
    }

    public void removeViewAt(int i) {
        if (getChildAt(i) != null) {
            this.mChildHelper.m7444q(i);
        }
    }

    public boolean requestChildRectangleOnScreen(RecyclerView recyclerView, View view, Rect rect, boolean z) {
        return requestChildRectangleOnScreen(recyclerView, view, rect, z, false);
    }

    public boolean requestChildRectangleOnScreen(RecyclerView recyclerView, View view, Rect rect, boolean z, boolean z2) {
        int[] childRectangleOnScreenScrollAmount = getChildRectangleOnScreenScrollAmount(view, rect);
        int i = childRectangleOnScreenScrollAmount[0];
        int i2 = childRectangleOnScreenScrollAmount[1];
        if (!z2 || isFocusedChildVisibleAfterScrolling(recyclerView, i, i2)) {
            if (i == 0 && i2 == 0) {
                return false;
            }
            if (z) {
                recyclerView.scrollBy(i, i2);
                return true;
            }
            recyclerView.smoothScrollBy(i, i2);
            return true;
        }
        return false;
    }

    public void requestLayout() {
        RecyclerView recyclerView = this.mRecyclerView;
        if (recyclerView != null) {
            recyclerView.requestLayout();
        }
    }

    public void requestSimpleAnimationsInNextLayout() {
        this.mRequestedSimpleAnimations = true;
    }

    public int scrollHorizontallyBy(int i, RecyclerView$u recyclerView$u, RecyclerView$y recyclerView$y) {
        return 0;
    }

    public void scrollToPosition(int i) {
    }

    public int scrollVerticallyBy(int i, RecyclerView$u recyclerView$u, RecyclerView$y recyclerView$y) {
        return 0;
    }

    @Deprecated
    public void setAutoMeasureEnabled(boolean z) {
        this.mAutoMeasure = z;
    }

    public void setExactMeasureSpecsFrom(RecyclerView recyclerView) {
        setMeasureSpecs(View.MeasureSpec.makeMeasureSpec(recyclerView.getWidth(), 1073741824), View.MeasureSpec.makeMeasureSpec(recyclerView.getHeight(), 1073741824));
    }

    public final void setItemPrefetchEnabled(boolean z) {
        if (z != this.mItemPrefetchEnabled) {
            this.mItemPrefetchEnabled = z;
            this.mPrefetchMaxCountObserved = 0;
            RecyclerView recyclerView = this.mRecyclerView;
            if (recyclerView == null) {
                return;
            }
            recyclerView.mRecycler.m6150K();
        }
    }

    public void setMeasureSpecs(int i, int i2) {
        this.mWidth = View.MeasureSpec.getSize(i);
        int mode = View.MeasureSpec.getMode(i);
        this.mWidthMode = mode;
        if (mode == 0 && !RecyclerView.ALLOW_SIZE_IN_UNSPECIFIED_SPEC) {
            this.mWidth = 0;
        }
        this.mHeight = View.MeasureSpec.getSize(i2);
        int mode2 = View.MeasureSpec.getMode(i2);
        this.mHeightMode = mode2;
        if (mode2 != 0 || RecyclerView.ALLOW_SIZE_IN_UNSPECIFIED_SPEC) {
            return;
        }
        this.mHeight = 0;
    }

    public void setMeasuredDimension(int i, int i2) {
        RecyclerView.access$300(this.mRecyclerView, i, i2);
    }

    public void setMeasuredDimension(Rect rect, int i, int i2) {
        int width = rect.width();
        int paddingLeft = getPaddingLeft();
        int paddingRight = getPaddingRight();
        int height = rect.height();
        int paddingTop = getPaddingTop();
        setMeasuredDimension(chooseSize(i, width + paddingLeft + paddingRight, getMinimumWidth()), chooseSize(i2, height + paddingTop + getPaddingBottom(), getMinimumHeight()));
    }

    public void setMeasuredDimensionFromChildren(int i, int i2) {
        int childCount = getChildCount();
        if (childCount == 0) {
            this.mRecyclerView.defaultOnMeasure(i, i2);
            return;
        }
        int i3 = 0;
        int i4 = Integer.MIN_VALUE;
        int i5 = Integer.MIN_VALUE;
        int i6 = Integer.MAX_VALUE;
        int i7 = Integer.MAX_VALUE;
        while (true) {
            int i8 = i7;
            if (i3 >= childCount) {
                this.mRecyclerView.mTempRect.set(i6, i8, i4, i5);
                setMeasuredDimension(this.mRecyclerView.mTempRect, i, i2);
                return;
            }
            View childAt = getChildAt(i3);
            Rect rect = this.mRecyclerView.mTempRect;
            getDecoratedBoundsWithMargins(childAt, rect);
            int i9 = rect.left;
            int i10 = i6;
            if (i9 < i6) {
                i10 = i9;
            }
            int i11 = rect.right;
            int i12 = i4;
            if (i11 > i4) {
                i12 = i11;
            }
            int i13 = rect.top;
            int i14 = i8;
            if (i13 < i8) {
                i14 = i13;
            }
            int i15 = rect.bottom;
            int i16 = i5;
            if (i15 > i5) {
                i16 = i15;
            }
            i3++;
            i4 = i12;
            i5 = i16;
            i6 = i10;
            i7 = i14;
        }
    }

    public void setMeasurementCacheEnabled(boolean z) {
        this.mMeasurementCacheEnabled = z;
    }

    public void setRecyclerView(RecyclerView recyclerView) {
        int i;
        if (recyclerView == null) {
            this.mRecyclerView = null;
            this.mChildHelper = null;
            i = 0;
            this.mWidth = 0;
        } else {
            this.mRecyclerView = recyclerView;
            this.mChildHelper = recyclerView.mChildHelper;
            this.mWidth = recyclerView.getWidth();
            i = recyclerView.getHeight();
        }
        this.mHeight = i;
        this.mWidthMode = 1073741824;
        this.mHeightMode = 1073741824;
    }

    public boolean shouldMeasureChild(View view, int i, int i2, RecyclerView$LayoutParams recyclerView$LayoutParams) {
        return view.isLayoutRequested() || !this.mMeasurementCacheEnabled || !isMeasurementUpToDate(view.getWidth(), i, ((ViewGroup.MarginLayoutParams) recyclerView$LayoutParams).width) || !isMeasurementUpToDate(view.getHeight(), i2, ((ViewGroup.MarginLayoutParams) recyclerView$LayoutParams).height);
    }

    public boolean shouldMeasureTwice() {
        return false;
    }

    public boolean shouldReMeasureChild(View view, int i, int i2, RecyclerView$LayoutParams recyclerView$LayoutParams) {
        return !this.mMeasurementCacheEnabled || !isMeasurementUpToDate(view.getMeasuredWidth(), i, ((ViewGroup.MarginLayoutParams) recyclerView$LayoutParams).width) || !isMeasurementUpToDate(view.getMeasuredHeight(), i2, ((ViewGroup.MarginLayoutParams) recyclerView$LayoutParams).height);
    }

    public void smoothScrollToPosition(RecyclerView recyclerView, RecyclerView$y recyclerView$y, int i) {
        Log.e("RecyclerView", "You must override smoothScrollToPosition to support smooth scrolling");
    }

    public void startSmoothScroll(RecyclerView$x recyclerView$x) {
        RecyclerView$x recyclerView$x2 = this.mSmoothScroller;
        if (recyclerView$x2 != null && recyclerView$x != recyclerView$x2 && recyclerView$x2.isRunning()) {
            this.mSmoothScroller.stop();
        }
        this.mSmoothScroller = recyclerView$x;
        recyclerView$x.start(this.mRecyclerView, this);
    }

    public void stopIgnoringView(View view) {
        RecyclerView$b0 childViewHolderInt = RecyclerView.getChildViewHolderInt(view);
        childViewHolderInt.stopIgnoring();
        childViewHolderInt.resetInternal();
        childViewHolderInt.addFlags(4);
    }

    public void stopSmoothScroller() {
        RecyclerView$x recyclerView$x = this.mSmoothScroller;
        if (recyclerView$x != null) {
            recyclerView$x.stop();
        }
    }

    public boolean supportsPredictiveItemAnimations() {
        return false;
    }
}

package androidx.viewpager2.widget;

import android.view.View;
import android.view.ViewGroup;
import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import androidx.viewpager2.widget.ViewPager2;
import java.util.Locale;
/* loaded from: classes-dex2jar.jar:androidx/viewpager2/widget/ScrollEventAdapter.class */
public final class ScrollEventAdapter extends RecyclerView.OnScrollListener {
    private static final int NO_POSITION = -1;
    private static final int STATE_IDLE = 0;
    private static final int STATE_IN_PROGRESS_FAKE_DRAG = 4;
    private static final int STATE_IN_PROGRESS_IMMEDIATE_SCROLL = 3;
    private static final int STATE_IN_PROGRESS_MANUAL_DRAG = 1;
    private static final int STATE_IN_PROGRESS_SMOOTH_SCROLL = 2;
    private int mAdapterState;
    private ViewPager2.OnPageChangeCallback mCallback;
    private boolean mDataSetChangeHappened;
    private boolean mDispatchSelected;
    private int mDragStartPosition;
    private boolean mFakeDragging;
    private final LinearLayoutManager mLayoutManager;
    private final RecyclerView mRecyclerView;
    private boolean mScrollHappened;
    private int mScrollState;
    private ScrollEventValues mScrollValues = new ScrollEventValues();
    private int mTarget;
    private final ViewPager2 mViewPager;

    /* loaded from: classes-dex2jar.jar:androidx/viewpager2/widget/ScrollEventAdapter$ScrollEventValues.class */
    public static final class ScrollEventValues {
        float mOffset;
        int mOffsetPx;
        int mPosition;

        ScrollEventValues() {
        }

        void reset() {
            this.mPosition = -1;
            this.mOffset = 0.0f;
            this.mOffsetPx = 0;
        }
    }

    public ScrollEventAdapter(ViewPager2 viewPager2) {
        this.mViewPager = viewPager2;
        RecyclerView recyclerView = viewPager2.mRecyclerView;
        this.mRecyclerView = recyclerView;
        this.mLayoutManager = (LinearLayoutManager) recyclerView.getLayoutManager();
        resetState();
    }

    private void dispatchScrolled(int i, float f, int i2) {
        ViewPager2.OnPageChangeCallback onPageChangeCallback = this.mCallback;
        if (onPageChangeCallback != null) {
            onPageChangeCallback.onPageScrolled(i, f, i2);
        }
    }

    private void dispatchSelected(int i) {
        ViewPager2.OnPageChangeCallback onPageChangeCallback = this.mCallback;
        if (onPageChangeCallback != null) {
            onPageChangeCallback.onPageSelected(i);
        }
    }

    private void dispatchStateChanged(int i) {
        if ((this.mAdapterState == 3 && this.mScrollState == 0) || this.mScrollState == i) {
            return;
        }
        this.mScrollState = i;
        ViewPager2.OnPageChangeCallback onPageChangeCallback = this.mCallback;
        if (onPageChangeCallback == null) {
            return;
        }
        onPageChangeCallback.onPageScrollStateChanged(i);
    }

    private int getPosition() {
        return this.mLayoutManager.findFirstVisibleItemPosition();
    }

    private boolean isInAnyDraggingState() {
        int i = this.mAdapterState;
        boolean z = true;
        if (i != 1) {
            z = i == 4;
        }
        return z;
    }

    private void resetState() {
        this.mAdapterState = 0;
        this.mScrollState = 0;
        this.mScrollValues.reset();
        this.mDragStartPosition = -1;
        this.mTarget = -1;
        this.mDispatchSelected = false;
        this.mScrollHappened = false;
        this.mFakeDragging = false;
        this.mDataSetChangeHappened = false;
    }

    private void startDrag(boolean z) {
        this.mFakeDragging = z;
        this.mAdapterState = z ? 4 : 1;
        int i = this.mTarget;
        if (i != -1) {
            this.mDragStartPosition = i;
            this.mTarget = -1;
        } else if (this.mDragStartPosition == -1) {
            this.mDragStartPosition = getPosition();
        }
        dispatchStateChanged(1);
    }

    private void updateScrollEventValues() {
        int i;
        int i2;
        ScrollEventValues scrollEventValues = this.mScrollValues;
        scrollEventValues.mPosition = this.mLayoutManager.findFirstVisibleItemPosition();
        if (scrollEventValues.mPosition == -1) {
            scrollEventValues.reset();
            return;
        }
        View findViewByPosition = this.mLayoutManager.findViewByPosition(scrollEventValues.mPosition);
        if (findViewByPosition == null) {
            scrollEventValues.reset();
            return;
        }
        int leftDecorationWidth = this.mLayoutManager.getLeftDecorationWidth(findViewByPosition);
        int rightDecorationWidth = this.mLayoutManager.getRightDecorationWidth(findViewByPosition);
        int topDecorationHeight = this.mLayoutManager.getTopDecorationHeight(findViewByPosition);
        int bottomDecorationHeight = this.mLayoutManager.getBottomDecorationHeight(findViewByPosition);
        ViewGroup.LayoutParams layoutParams = findViewByPosition.getLayoutParams();
        int i3 = leftDecorationWidth;
        int i4 = rightDecorationWidth;
        int i5 = topDecorationHeight;
        int i6 = bottomDecorationHeight;
        if (layoutParams instanceof ViewGroup.MarginLayoutParams) {
            ViewGroup.MarginLayoutParams marginLayoutParams = (ViewGroup.MarginLayoutParams) layoutParams;
            i3 = leftDecorationWidth + marginLayoutParams.leftMargin;
            i4 = rightDecorationWidth + marginLayoutParams.rightMargin;
            i5 = topDecorationHeight + marginLayoutParams.topMargin;
            i6 = bottomDecorationHeight + marginLayoutParams.bottomMargin;
        }
        int height = findViewByPosition.getHeight() + i5 + i6;
        int width = findViewByPosition.getWidth();
        if (this.mLayoutManager.getOrientation() == 0) {
            int left = (findViewByPosition.getLeft() - i3) - this.mRecyclerView.getPaddingLeft();
            int i7 = left;
            if (this.mViewPager.isRtl()) {
                i7 = -left;
            }
            int i8 = width + i3 + i4;
            i2 = i7;
            i = i8;
        } else {
            i2 = (findViewByPosition.getTop() - i5) - this.mRecyclerView.getPaddingTop();
            i = height;
        }
        scrollEventValues.mOffsetPx = -i2;
        if (scrollEventValues.mOffsetPx >= 0) {
            scrollEventValues.mOffset = i == 0 ? 0.0f : scrollEventValues.mOffsetPx / i;
        } else if (!new AnimateLayoutChangeDetector(this.mLayoutManager).mayHaveInterferingAnimations()) {
            throw new IllegalStateException(String.format(Locale.US, "Page can only be offset by a positive amount, not by %d", Integer.valueOf(scrollEventValues.mOffsetPx)));
        } else {
            throw new IllegalStateException("Page(s) contain a ViewGroup with a LayoutTransition (or animateLayoutChanges=\"true\"), which interferes with the scrolling animation. Make sure to call getLayoutTransition().setAnimateParentHierarchy(false) on all ViewGroups with a LayoutTransition before an animation is started.");
        }
    }

    public double getRelativeScrollPosition() {
        updateScrollEventValues();
        return this.mScrollValues.mPosition + this.mScrollValues.mOffset;
    }

    public int getScrollState() {
        return this.mScrollState;
    }

    public boolean isDragging() {
        boolean z = true;
        if (this.mScrollState != 1) {
            z = false;
        }
        return z;
    }

    public boolean isFakeDragging() {
        return this.mFakeDragging;
    }

    public boolean isIdle() {
        return this.mScrollState == 0;
    }

    public void notifyBeginFakeDrag() {
        this.mAdapterState = 4;
        startDrag(true);
    }

    public void notifyDataSetChangeHappened() {
        this.mDataSetChangeHappened = true;
    }

    public void notifyEndFakeDrag() {
        if (!isDragging() || this.mFakeDragging) {
            this.mFakeDragging = false;
            updateScrollEventValues();
            if (this.mScrollValues.mOffsetPx != 0) {
                dispatchStateChanged(2);
                return;
            }
            if (this.mScrollValues.mPosition != this.mDragStartPosition) {
                dispatchSelected(this.mScrollValues.mPosition);
            }
            dispatchStateChanged(0);
            resetState();
        }
    }

    public void notifyProgrammaticScroll(int i, boolean z) {
        this.mAdapterState = z ? 2 : 3;
        boolean z2 = false;
        this.mFakeDragging = false;
        if (this.mTarget != i) {
            z2 = true;
        }
        this.mTarget = i;
        dispatchStateChanged(2);
        if (z2) {
            dispatchSelected(i);
        }
    }

    @Override // androidx.recyclerview.widget.RecyclerView.OnScrollListener
    public void onScrollStateChanged(RecyclerView recyclerView, int i) {
        boolean z;
        if (!(this.mAdapterState == 1 && this.mScrollState == 1) && i == 1) {
            startDrag(false);
        } else if (isInAnyDraggingState() && i == 2) {
            if (!this.mScrollHappened) {
                return;
            }
            dispatchStateChanged(2);
            this.mDispatchSelected = true;
        } else {
            if (isInAnyDraggingState() && i == 0) {
                updateScrollEventValues();
                if (!this.mScrollHappened) {
                    z = true;
                    if (this.mScrollValues.mPosition != -1) {
                        dispatchScrolled(this.mScrollValues.mPosition, 0.0f, 0);
                        z = true;
                    }
                } else if (this.mScrollValues.mOffsetPx == 0) {
                    z = true;
                    if (this.mDragStartPosition != this.mScrollValues.mPosition) {
                        dispatchSelected(this.mScrollValues.mPosition);
                        z = true;
                    }
                } else {
                    z = false;
                }
                if (z) {
                    dispatchStateChanged(0);
                    resetState();
                }
            }
            if (this.mAdapterState != 2 || i != 0 || !this.mDataSetChangeHappened) {
                return;
            }
            updateScrollEventValues();
            if (this.mScrollValues.mOffsetPx != 0) {
                return;
            }
            if (this.mTarget != this.mScrollValues.mPosition) {
                dispatchSelected(this.mScrollValues.mPosition == -1 ? 0 : this.mScrollValues.mPosition);
            }
            dispatchStateChanged(0);
            resetState();
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:13:0x0033, code lost:
        if ((r7 < 0) == r5.mViewPager.isRtl()) goto L15;
     */
    /* JADX WARN: Removed duplicated region for block: B:24:0x0070  */
    @Override // androidx.recyclerview.widget.RecyclerView.OnScrollListener
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void onScrolled(androidx.recyclerview.widget.RecyclerView r6, int r7, int r8) {
        /*
            Method dump skipped, instructions count: 243
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.viewpager2.widget.ScrollEventAdapter.onScrolled(androidx.recyclerview.widget.RecyclerView, int, int):void");
    }

    public void setOnPageChangeCallback(ViewPager2.OnPageChangeCallback onPageChangeCallback) {
        this.mCallback = onPageChangeCallback;
    }
}

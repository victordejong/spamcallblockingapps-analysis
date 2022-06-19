package androidx.recyclerview.widget;

import android.util.DisplayMetrics;
import android.view.View;
import android.view.animation.DecelerateInterpolator;
import android.widget.Scroller;
import androidx.recyclerview.widget.RecyclerView;
/* loaded from: classes-dex2jar.jar:androidx/recyclerview/widget/SnapHelper.class */
public abstract class SnapHelper extends RecyclerView.OnFlingListener {
    static final float MILLISECONDS_PER_INCH = 100.0f;
    private Scroller mGravityScroller;
    RecyclerView mRecyclerView;
    private final RecyclerView.OnScrollListener mScrollListener = new RecyclerView.OnScrollListener() { // from class: androidx.recyclerview.widget.SnapHelper.1
        boolean mScrolled = false;

        @Override // androidx.recyclerview.widget.RecyclerView.OnScrollListener
        public void onScrollStateChanged(RecyclerView recyclerView, int i) {
            super.onScrollStateChanged(recyclerView, i);
            if (i != 0 || !this.mScrolled) {
                return;
            }
            this.mScrolled = false;
            SnapHelper.this.snapToTargetExistingView();
        }

        @Override // androidx.recyclerview.widget.RecyclerView.OnScrollListener
        public void onScrolled(RecyclerView recyclerView, int i, int i2) {
            if (i == 0 && i2 == 0) {
                return;
            }
            this.mScrolled = true;
        }
    };

    private void destroyCallbacks() {
        this.mRecyclerView.removeOnScrollListener(this.mScrollListener);
        this.mRecyclerView.setOnFlingListener(null);
    }

    private void setupCallbacks() throws IllegalStateException {
        if (this.mRecyclerView.getOnFlingListener() == null) {
            this.mRecyclerView.addOnScrollListener(this.mScrollListener);
            this.mRecyclerView.setOnFlingListener(this);
            return;
        }
        throw new IllegalStateException("An instance of OnFlingListener already set.");
    }

    private boolean snapFromFling(RecyclerView.LayoutManager layoutManager, int i, int i2) {
        RecyclerView.SmoothScroller createScroller;
        int findTargetSnapPosition;
        if (!(layoutManager instanceof RecyclerView.SmoothScroller.ScrollVectorProvider) || (createScroller = createScroller(layoutManager)) == null || (findTargetSnapPosition = findTargetSnapPosition(layoutManager, i, i2)) == -1) {
            return false;
        }
        createScroller.setTargetPosition(findTargetSnapPosition);
        layoutManager.startSmoothScroll(createScroller);
        return true;
    }

    public void attachToRecyclerView(RecyclerView recyclerView) throws IllegalStateException {
        RecyclerView recyclerView2 = this.mRecyclerView;
        if (recyclerView2 == recyclerView) {
            return;
        }
        if (recyclerView2 != null) {
            destroyCallbacks();
        }
        this.mRecyclerView = recyclerView;
        if (recyclerView == null) {
            return;
        }
        setupCallbacks();
        this.mGravityScroller = new Scroller(this.mRecyclerView.getContext(), new DecelerateInterpolator());
        snapToTargetExistingView();
    }

    public abstract int[] calculateDistanceToFinalSnap(RecyclerView.LayoutManager layoutManager, View view);

    public int[] calculateScrollDistance(int i, int i2) {
        this.mGravityScroller.fling(0, 0, i, i2, Integer.MIN_VALUE, Integer.MAX_VALUE, Integer.MIN_VALUE, Integer.MAX_VALUE);
        return new int[]{this.mGravityScroller.getFinalX(), this.mGravityScroller.getFinalY()};
    }

    protected RecyclerView.SmoothScroller createScroller(RecyclerView.LayoutManager layoutManager) {
        return createSnapScroller(layoutManager);
    }

    @Deprecated
    protected LinearSmoothScroller createSnapScroller(RecyclerView.LayoutManager layoutManager) {
        if (!(layoutManager instanceof RecyclerView.SmoothScroller.ScrollVectorProvider)) {
            return null;
        }
        return new LinearSmoothScroller(this.mRecyclerView.getContext()) { // from class: androidx.recyclerview.widget.SnapHelper.2
            @Override // androidx.recyclerview.widget.LinearSmoothScroller
            protected float calculateSpeedPerPixel(DisplayMetrics displayMetrics) {
                return SnapHelper.MILLISECONDS_PER_INCH / displayMetrics.densityDpi;
            }

            @Override // androidx.recyclerview.widget.LinearSmoothScroller, androidx.recyclerview.widget.RecyclerView.SmoothScroller
            protected void onTargetFound(View view, RecyclerView.State state, RecyclerView.SmoothScroller.Action action) {
                if (SnapHelper.this.mRecyclerView == null) {
                    return;
                }
                SnapHelper snapHelper = SnapHelper.this;
                int[] calculateDistanceToFinalSnap = snapHelper.calculateDistanceToFinalSnap(snapHelper.mRecyclerView.getLayoutManager(), view);
                int i = calculateDistanceToFinalSnap[0];
                int i2 = calculateDistanceToFinalSnap[1];
                int calculateTimeForDeceleration = calculateTimeForDeceleration(Math.max(Math.abs(i), Math.abs(i2)));
                if (calculateTimeForDeceleration <= 0) {
                    return;
                }
                action.update(i, i2, calculateTimeForDeceleration, this.mDecelerateInterpolator);
            }
        };
    }

    public abstract View findSnapView(RecyclerView.LayoutManager layoutManager);

    public abstract int findTargetSnapPosition(RecyclerView.LayoutManager layoutManager, int i, int i2);

    /* JADX WARN: Code restructure failed: missing block: B:11:0x0039, code lost:
        if (java.lang.Math.abs(r6) > r0) goto L12;
     */
    @Override // androidx.recyclerview.widget.RecyclerView.OnFlingListener
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public boolean onFling(int r6, int r7) {
        /*
            r5 = this;
            r0 = r5
            androidx.recyclerview.widget.RecyclerView r0 = r0.mRecyclerView
            androidx.recyclerview.widget.RecyclerView$LayoutManager r0 = r0.getLayoutManager()
            r8 = r0
            r0 = 0
            r9 = r0
            r0 = r8
            if (r0 != 0) goto L11
            r0 = 0
            return r0
        L11:
            r0 = r5
            androidx.recyclerview.widget.RecyclerView r0 = r0.mRecyclerView
            androidx.recyclerview.widget.RecyclerView$Adapter r0 = r0.getAdapter()
            if (r0 != 0) goto L1d
            r0 = 0
            return r0
        L1d:
            r0 = r5
            androidx.recyclerview.widget.RecyclerView r0 = r0.mRecyclerView
            int r0 = r0.getMinFlingVelocity()
            r10 = r0
            r0 = r7
            int r0 = java.lang.Math.abs(r0)
            r1 = r10
            if (r0 > r1) goto L3c
            r0 = r9
            r11 = r0
            r0 = r6
            int r0 = java.lang.Math.abs(r0)
            r1 = r10
            if (r0 <= r1) goto L4d
        L3c:
            r0 = r9
            r11 = r0
            r0 = r5
            r1 = r8
            r2 = r6
            r3 = r7
            boolean r0 = r0.snapFromFling(r1, r2, r3)
            if (r0 == 0) goto L4d
            r0 = 1
            r11 = r0
        L4d:
            r0 = r11
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.recyclerview.widget.SnapHelper.onFling(int, int):boolean");
    }

    void snapToTargetExistingView() {
        RecyclerView.LayoutManager layoutManager;
        View findSnapView;
        RecyclerView recyclerView = this.mRecyclerView;
        if (recyclerView == null || (layoutManager = recyclerView.getLayoutManager()) == null || (findSnapView = findSnapView(layoutManager)) == null) {
            return;
        }
        int[] calculateDistanceToFinalSnap = calculateDistanceToFinalSnap(layoutManager, findSnapView);
        if (calculateDistanceToFinalSnap[0] == 0 && calculateDistanceToFinalSnap[1] == 0) {
            return;
        }
        this.mRecyclerView.smoothScrollBy(calculateDistanceToFinalSnap[0], calculateDistanceToFinalSnap[1]);
    }
}

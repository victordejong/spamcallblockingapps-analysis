package androidx.customview.widget;

import android.content.Context;
import android.util.Log;
import android.view.MotionEvent;
import android.view.VelocityTracker;
import android.view.View;
import android.view.ViewConfiguration;
import android.view.ViewGroup;
import android.view.animation.Interpolator;
import android.widget.OverScroller;
import androidx.core.view.ViewCompat;
import java.util.Arrays;
/* loaded from: classes-dex2jar.jar:androidx/customview/widget/ViewDragHelper.class */
public class ViewDragHelper {
    private static final int BASE_SETTLE_DURATION = 256;
    public static final int DIRECTION_ALL = 3;
    public static final int DIRECTION_HORIZONTAL = 1;
    public static final int DIRECTION_VERTICAL = 2;
    public static final int EDGE_ALL = 15;
    public static final int EDGE_BOTTOM = 8;
    public static final int EDGE_LEFT = 1;
    public static final int EDGE_RIGHT = 2;
    private static final int EDGE_SIZE = 20;
    public static final int EDGE_TOP = 4;
    public static final int INVALID_POINTER = -1;
    private static final int MAX_SETTLE_DURATION = 600;
    public static final int STATE_DRAGGING = 1;
    public static final int STATE_IDLE = 0;
    public static final int STATE_SETTLING = 2;
    private static final String TAG = "ViewDragHelper";
    private static final Interpolator sInterpolator = new Interpolator() { // from class: androidx.customview.widget.ViewDragHelper.1
        @Override // android.animation.TimeInterpolator
        public float getInterpolation(float f) {
            float f2 = f - 1.0f;
            return (f2 * f2 * f2 * f2 * f2) + 1.0f;
        }
    };
    private final Callback mCallback;
    private View mCapturedView;
    private int mDragState;
    private int[] mEdgeDragsInProgress;
    private int[] mEdgeDragsLocked;
    private int mEdgeSize;
    private int[] mInitialEdgesTouched;
    private float[] mInitialMotionX;
    private float[] mInitialMotionY;
    private float[] mLastMotionX;
    private float[] mLastMotionY;
    private float mMaxVelocity;
    private float mMinVelocity;
    private final ViewGroup mParentView;
    private int mPointersDown;
    private boolean mReleaseInProgress;
    private OverScroller mScroller;
    private int mTouchSlop;
    private int mTrackingEdges;
    private VelocityTracker mVelocityTracker;
    private int mActivePointerId = -1;
    private final Runnable mSetIdleRunnable = new Runnable() { // from class: androidx.customview.widget.ViewDragHelper.2
        @Override // java.lang.Runnable
        public void run() {
            ViewDragHelper.this.setDragState(0);
        }
    };

    /* loaded from: classes-dex2jar.jar:androidx/customview/widget/ViewDragHelper$Callback.class */
    public static abstract class Callback {
        public int clampViewPositionHorizontal(View view, int i, int i2) {
            return 0;
        }

        public int clampViewPositionVertical(View view, int i, int i2) {
            return 0;
        }

        public int getOrderedChildIndex(int i) {
            return i;
        }

        public int getViewHorizontalDragRange(View view) {
            return 0;
        }

        public int getViewVerticalDragRange(View view) {
            return 0;
        }

        public void onEdgeDragStarted(int i, int i2) {
        }

        public boolean onEdgeLock(int i) {
            return false;
        }

        public void onEdgeTouched(int i, int i2) {
        }

        public void onViewCaptured(View view, int i) {
        }

        public void onViewDragStateChanged(int i) {
        }

        public void onViewPositionChanged(View view, int i, int i2, int i3, int i4) {
        }

        public void onViewReleased(View view, float f, float f2) {
        }

        public abstract boolean tryCaptureView(View view, int i);
    }

    private ViewDragHelper(Context context, ViewGroup viewGroup, Callback callback) {
        if (viewGroup != null) {
            if (callback == null) {
                throw new IllegalArgumentException("Callback may not be null");
            }
            this.mParentView = viewGroup;
            this.mCallback = callback;
            ViewConfiguration viewConfiguration = ViewConfiguration.get(context);
            this.mEdgeSize = (int) ((context.getResources().getDisplayMetrics().density * 20.0f) + 0.5f);
            this.mTouchSlop = viewConfiguration.getScaledTouchSlop();
            this.mMaxVelocity = viewConfiguration.getScaledMaximumFlingVelocity();
            this.mMinVelocity = viewConfiguration.getScaledMinimumFlingVelocity();
            this.mScroller = new OverScroller(context, sInterpolator);
            return;
        }
        throw new IllegalArgumentException("Parent view may not be null");
    }

    private boolean checkNewEdgeDrag(float f, float f2, int i, int i2) {
        float abs = Math.abs(f);
        float abs2 = Math.abs(f2);
        boolean z = false;
        if ((this.mInitialEdgesTouched[i] & i2) == i2) {
            z = false;
            if ((this.mTrackingEdges & i2) != 0) {
                z = false;
                if ((this.mEdgeDragsLocked[i] & i2) != i2) {
                    z = false;
                    if ((this.mEdgeDragsInProgress[i] & i2) != i2) {
                        int i3 = this.mTouchSlop;
                        if (abs <= i3 && abs2 <= i3) {
                            z = false;
                        } else if (abs < abs2 * 0.5f && this.mCallback.onEdgeLock(i2)) {
                            int[] iArr = this.mEdgeDragsLocked;
                            iArr[i] = iArr[i] | i2;
                            return false;
                        } else {
                            z = false;
                            if ((this.mEdgeDragsInProgress[i] & i2) == 0) {
                                z = false;
                                if (abs > this.mTouchSlop) {
                                    z = true;
                                }
                            }
                        }
                    }
                }
            }
        }
        return z;
    }

    private boolean checkTouchSlop(View view, float f, float f2) {
        boolean z = false;
        if (view == null) {
            return false;
        }
        boolean z2 = this.mCallback.getViewHorizontalDragRange(view) > 0;
        boolean z3 = this.mCallback.getViewVerticalDragRange(view) > 0;
        if (z2 && z3) {
            int i = this.mTouchSlop;
            if ((f * f) + (f2 * f2) > i * i) {
                z = true;
            }
            return z;
        } else if (z2) {
            boolean z4 = false;
            if (Math.abs(f) > this.mTouchSlop) {
                z4 = true;
            }
            return z4;
        } else {
            boolean z5 = false;
            if (z3) {
                z5 = false;
                if (Math.abs(f2) > this.mTouchSlop) {
                    z5 = true;
                }
            }
            return z5;
        }
    }

    private float clampMag(float f, float f2, float f3) {
        float abs = Math.abs(f);
        if (abs < f2) {
            return 0.0f;
        }
        if (abs <= f3) {
            return f;
        }
        if (f <= 0.0f) {
            f3 = -f3;
        }
        return f3;
    }

    private int clampMag(int i, int i2, int i3) {
        int abs = Math.abs(i);
        if (abs < i2) {
            return 0;
        }
        if (abs <= i3) {
            return i;
        }
        if (i <= 0) {
            i3 = -i3;
        }
        return i3;
    }

    private void clearMotionHistory() {
        float[] fArr = this.mInitialMotionX;
        if (fArr == null) {
            return;
        }
        Arrays.fill(fArr, 0.0f);
        Arrays.fill(this.mInitialMotionY, 0.0f);
        Arrays.fill(this.mLastMotionX, 0.0f);
        Arrays.fill(this.mLastMotionY, 0.0f);
        Arrays.fill(this.mInitialEdgesTouched, 0);
        Arrays.fill(this.mEdgeDragsInProgress, 0);
        Arrays.fill(this.mEdgeDragsLocked, 0);
        this.mPointersDown = 0;
    }

    private void clearMotionHistory(int i) {
        if (this.mInitialMotionX == null || !isPointerDown(i)) {
            return;
        }
        this.mInitialMotionX[i] = 0.0f;
        this.mInitialMotionY[i] = 0.0f;
        this.mLastMotionX[i] = 0.0f;
        this.mLastMotionY[i] = 0.0f;
        this.mInitialEdgesTouched[i] = 0;
        this.mEdgeDragsInProgress[i] = 0;
        this.mEdgeDragsLocked[i] = 0;
        this.mPointersDown = ((1 << i) ^ (-1)) & this.mPointersDown;
    }

    private int computeAxisDuration(int i, int i2, int i3) {
        if (i == 0) {
            return 0;
        }
        int width = this.mParentView.getWidth();
        float f = width / 2;
        float distanceInfluenceForSnapDuration = distanceInfluenceForSnapDuration(Math.min(1.0f, Math.abs(i) / width));
        int abs = Math.abs(i2);
        return Math.min(abs > 0 ? Math.round(Math.abs((f + (distanceInfluenceForSnapDuration * f)) / abs) * 1000.0f) * 4 : (int) (((Math.abs(i) / i3) + 1.0f) * 256.0f), 600);
    }

    private int computeSettleDuration(View view, int i, int i2, int i3, int i4) {
        float f;
        float f2;
        float f3;
        float f4;
        int clampMag = clampMag(i3, (int) this.mMinVelocity, (int) this.mMaxVelocity);
        int clampMag2 = clampMag(i4, (int) this.mMinVelocity, (int) this.mMaxVelocity);
        int abs = Math.abs(i);
        int abs2 = Math.abs(i2);
        int abs3 = Math.abs(clampMag);
        int abs4 = Math.abs(clampMag2);
        int i5 = abs3 + abs4;
        int i6 = abs + abs2;
        if (clampMag != 0) {
            f2 = abs3;
            f = i5;
        } else {
            f2 = abs;
            f = i6;
        }
        float f5 = f2 / f;
        if (clampMag2 != 0) {
            f4 = abs4;
            f3 = i5;
        } else {
            f4 = abs2;
            f3 = i6;
        }
        return (int) ((computeAxisDuration(i, clampMag, this.mCallback.getViewHorizontalDragRange(view)) * f5) + (computeAxisDuration(i2, clampMag2, this.mCallback.getViewVerticalDragRange(view)) * (f4 / f3)));
    }

    public static ViewDragHelper create(ViewGroup viewGroup, float f, Callback callback) {
        ViewDragHelper create = create(viewGroup, callback);
        create.mTouchSlop = (int) (create.mTouchSlop * (1.0f / f));
        return create;
    }

    public static ViewDragHelper create(ViewGroup viewGroup, Callback callback) {
        return new ViewDragHelper(viewGroup.getContext(), viewGroup, callback);
    }

    private void dispatchViewReleased(float f, float f2) {
        this.mReleaseInProgress = true;
        this.mCallback.onViewReleased(this.mCapturedView, f, f2);
        this.mReleaseInProgress = false;
        if (this.mDragState == 1) {
            setDragState(0);
        }
    }

    private float distanceInfluenceForSnapDuration(float f) {
        return (float) Math.sin((f - 0.5f) * 0.47123894f);
    }

    private void dragTo(int i, int i2, int i3, int i4) {
        int left = this.mCapturedView.getLeft();
        int top = this.mCapturedView.getTop();
        int i5 = i;
        if (i3 != 0) {
            i5 = this.mCallback.clampViewPositionHorizontal(this.mCapturedView, i, i3);
            ViewCompat.offsetLeftAndRight(this.mCapturedView, i5 - left);
        }
        int i6 = i2;
        if (i4 != 0) {
            i6 = this.mCallback.clampViewPositionVertical(this.mCapturedView, i2, i4);
            ViewCompat.offsetTopAndBottom(this.mCapturedView, i6 - top);
        }
        if (i3 == 0 && i4 == 0) {
            return;
        }
        this.mCallback.onViewPositionChanged(this.mCapturedView, i5, i6, i5 - left, i6 - top);
    }

    private void ensureMotionHistorySizeForId(int i) {
        float[] fArr = this.mInitialMotionX;
        if (fArr == null || fArr.length <= i) {
            int i2 = i + 1;
            float[] fArr2 = new float[i2];
            float[] fArr3 = new float[i2];
            float[] fArr4 = new float[i2];
            float[] fArr5 = new float[i2];
            int[] iArr = new int[i2];
            int[] iArr2 = new int[i2];
            int[] iArr3 = new int[i2];
            if (fArr != null) {
                System.arraycopy(fArr, 0, fArr2, 0, fArr.length);
                float[] fArr6 = this.mInitialMotionY;
                System.arraycopy(fArr6, 0, fArr3, 0, fArr6.length);
                float[] fArr7 = this.mLastMotionX;
                System.arraycopy(fArr7, 0, fArr4, 0, fArr7.length);
                float[] fArr8 = this.mLastMotionY;
                System.arraycopy(fArr8, 0, fArr5, 0, fArr8.length);
                int[] iArr4 = this.mInitialEdgesTouched;
                System.arraycopy(iArr4, 0, iArr, 0, iArr4.length);
                int[] iArr5 = this.mEdgeDragsInProgress;
                System.arraycopy(iArr5, 0, iArr2, 0, iArr5.length);
                int[] iArr6 = this.mEdgeDragsLocked;
                System.arraycopy(iArr6, 0, iArr3, 0, iArr6.length);
            }
            this.mInitialMotionX = fArr2;
            this.mInitialMotionY = fArr3;
            this.mLastMotionX = fArr4;
            this.mLastMotionY = fArr5;
            this.mInitialEdgesTouched = iArr;
            this.mEdgeDragsInProgress = iArr2;
            this.mEdgeDragsLocked = iArr3;
        }
    }

    private boolean forceSettleCapturedViewAt(int i, int i2, int i3, int i4) {
        int left = this.mCapturedView.getLeft();
        int top = this.mCapturedView.getTop();
        int i5 = i - left;
        int i6 = i2 - top;
        if (i5 == 0 && i6 == 0) {
            this.mScroller.abortAnimation();
            setDragState(0);
            return false;
        }
        this.mScroller.startScroll(left, top, i5, i6, computeSettleDuration(this.mCapturedView, i5, i6, i3, i4));
        setDragState(2);
        return true;
    }

    private int getEdgesTouched(int i, int i2) {
        int i3 = i < this.mParentView.getLeft() + this.mEdgeSize ? 1 : 0;
        int i4 = i3;
        if (i2 < this.mParentView.getTop() + this.mEdgeSize) {
            i4 = i3 | 4;
        }
        int i5 = i4;
        if (i > this.mParentView.getRight() - this.mEdgeSize) {
            i5 = i4 | 2;
        }
        int i6 = i5;
        if (i2 > this.mParentView.getBottom() - this.mEdgeSize) {
            i6 = i5 | 8;
        }
        return i6;
    }

    private boolean isValidPointerForActionMove(int i) {
        if (!isPointerDown(i)) {
            Log.e(TAG, "Ignoring pointerId=" + i + " because ACTION_DOWN was not received for this pointer before ACTION_MOVE. It likely happened because  ViewDragHelper did not receive all the events in the event stream.");
            return false;
        }
        return true;
    }

    private void releaseViewForPointerUp() {
        this.mVelocityTracker.computeCurrentVelocity(1000, this.mMaxVelocity);
        dispatchViewReleased(clampMag(this.mVelocityTracker.getXVelocity(this.mActivePointerId), this.mMinVelocity, this.mMaxVelocity), clampMag(this.mVelocityTracker.getYVelocity(this.mActivePointerId), this.mMinVelocity, this.mMaxVelocity));
    }

    private void reportNewEdgeDrags(float f, float f2, int i) {
        int i2 = 1;
        if (!checkNewEdgeDrag(f, f2, i, 1)) {
            i2 = 0;
        }
        int i3 = i2;
        if (checkNewEdgeDrag(f2, f, i, 4)) {
            i3 = i2 | 4;
        }
        int i4 = i3;
        if (checkNewEdgeDrag(f, f2, i, 2)) {
            i4 = i3 | 2;
        }
        int i5 = i4;
        if (checkNewEdgeDrag(f2, f, i, 8)) {
            i5 = i4 | 8;
        }
        if (i5 != 0) {
            int[] iArr = this.mEdgeDragsInProgress;
            iArr[i] = iArr[i] | i5;
            this.mCallback.onEdgeDragStarted(i5, i);
        }
    }

    private void saveInitialMotion(float f, float f2, int i) {
        ensureMotionHistorySizeForId(i);
        float[] fArr = this.mInitialMotionX;
        this.mLastMotionX[i] = f;
        fArr[i] = f;
        float[] fArr2 = this.mInitialMotionY;
        this.mLastMotionY[i] = f2;
        fArr2[i] = f2;
        this.mInitialEdgesTouched[i] = getEdgesTouched((int) f, (int) f2);
        this.mPointersDown |= 1 << i;
    }

    private void saveLastMotion(MotionEvent motionEvent) {
        int pointerCount = motionEvent.getPointerCount();
        for (int i = 0; i < pointerCount; i++) {
            int pointerId = motionEvent.getPointerId(i);
            if (isValidPointerForActionMove(pointerId)) {
                float x = motionEvent.getX(i);
                float y = motionEvent.getY(i);
                this.mLastMotionX[pointerId] = x;
                this.mLastMotionY[pointerId] = y;
            }
        }
    }

    public void abort() {
        cancel();
        if (this.mDragState == 2) {
            int currX = this.mScroller.getCurrX();
            int currY = this.mScroller.getCurrY();
            this.mScroller.abortAnimation();
            int currX2 = this.mScroller.getCurrX();
            int currY2 = this.mScroller.getCurrY();
            this.mCallback.onViewPositionChanged(this.mCapturedView, currX2, currY2, currX2 - currX, currY2 - currY);
        }
        setDragState(0);
    }

    protected boolean canScroll(View view, boolean z, int i, int i2, int i3, int i4) {
        boolean z2;
        int i5;
        if (view instanceof ViewGroup) {
            ViewGroup viewGroup = (ViewGroup) view;
            int scrollX = view.getScrollX();
            int scrollY = view.getScrollY();
            for (int childCount = viewGroup.getChildCount() - 1; childCount >= 0; childCount--) {
                View childAt = viewGroup.getChildAt(childCount);
                int i6 = i3 + scrollX;
                if (i6 >= childAt.getLeft() && i6 < childAt.getRight() && (i5 = i4 + scrollY) >= childAt.getTop() && i5 < childAt.getBottom() && canScroll(childAt, true, i, i2, i6 - childAt.getLeft(), i5 - childAt.getTop())) {
                    return true;
                }
            }
        }
        if (z) {
            z2 = true;
            if (!view.canScrollHorizontally(-i)) {
                if (view.canScrollVertically(-i2)) {
                    z2 = true;
                }
            }
            return z2;
        }
        z2 = false;
        return z2;
    }

    public void cancel() {
        this.mActivePointerId = -1;
        clearMotionHistory();
        VelocityTracker velocityTracker = this.mVelocityTracker;
        if (velocityTracker != null) {
            velocityTracker.recycle();
            this.mVelocityTracker = null;
        }
    }

    public void captureChildView(View view, int i) {
        if (view.getParent() == this.mParentView) {
            this.mCapturedView = view;
            this.mActivePointerId = i;
            this.mCallback.onViewCaptured(view, i);
            setDragState(1);
            return;
        }
        throw new IllegalArgumentException("captureChildView: parameter must be a descendant of the ViewDragHelper's tracked parent view (" + this.mParentView + ")");
    }

    public boolean checkTouchSlop(int i) {
        int length = this.mInitialMotionX.length;
        for (int i2 = 0; i2 < length; i2++) {
            if (checkTouchSlop(i, i2)) {
                return true;
            }
        }
        return false;
    }

    public boolean checkTouchSlop(int i, int i2) {
        boolean z = false;
        if (!isPointerDown(i2)) {
            return false;
        }
        boolean z2 = (i & 1) == 1;
        boolean z3 = (i & 2) == 2;
        float f = this.mLastMotionX[i2] - this.mInitialMotionX[i2];
        float f2 = this.mLastMotionY[i2] - this.mInitialMotionY[i2];
        if (z2 && z3) {
            int i3 = this.mTouchSlop;
            if ((f * f) + (f2 * f2) > i3 * i3) {
                z = true;
            }
            return z;
        } else if (z2) {
            boolean z4 = false;
            if (Math.abs(f) > this.mTouchSlop) {
                z4 = true;
            }
            return z4;
        } else {
            boolean z5 = false;
            if (z3) {
                z5 = false;
                if (Math.abs(f2) > this.mTouchSlop) {
                    z5 = true;
                }
            }
            return z5;
        }
    }

    public boolean continueSettling(boolean z) {
        if (this.mDragState == 2) {
            boolean computeScrollOffset = this.mScroller.computeScrollOffset();
            int currX = this.mScroller.getCurrX();
            int currY = this.mScroller.getCurrY();
            int left = currX - this.mCapturedView.getLeft();
            int top = currY - this.mCapturedView.getTop();
            if (left != 0) {
                ViewCompat.offsetLeftAndRight(this.mCapturedView, left);
            }
            if (top != 0) {
                ViewCompat.offsetTopAndBottom(this.mCapturedView, top);
            }
            if (left != 0 || top != 0) {
                this.mCallback.onViewPositionChanged(this.mCapturedView, currX, currY, left, top);
            }
            boolean z2 = computeScrollOffset;
            if (computeScrollOffset) {
                z2 = computeScrollOffset;
                if (currX == this.mScroller.getFinalX()) {
                    z2 = computeScrollOffset;
                    if (currY == this.mScroller.getFinalY()) {
                        this.mScroller.abortAnimation();
                        z2 = false;
                    }
                }
            }
            if (!z2) {
                if (z) {
                    this.mParentView.post(this.mSetIdleRunnable);
                } else {
                    setDragState(0);
                }
            }
        }
        boolean z3 = false;
        if (this.mDragState == 2) {
            z3 = true;
        }
        return z3;
    }

    public View findTopChildUnder(int i, int i2) {
        for (int childCount = this.mParentView.getChildCount() - 1; childCount >= 0; childCount--) {
            View childAt = this.mParentView.getChildAt(this.mCallback.getOrderedChildIndex(childCount));
            if (i >= childAt.getLeft() && i < childAt.getRight() && i2 >= childAt.getTop() && i2 < childAt.getBottom()) {
                return childAt;
            }
        }
        return null;
    }

    public void flingCapturedView(int i, int i2, int i3, int i4) {
        if (this.mReleaseInProgress) {
            this.mScroller.fling(this.mCapturedView.getLeft(), this.mCapturedView.getTop(), (int) this.mVelocityTracker.getXVelocity(this.mActivePointerId), (int) this.mVelocityTracker.getYVelocity(this.mActivePointerId), i, i3, i2, i4);
            setDragState(2);
            return;
        }
        throw new IllegalStateException("Cannot flingCapturedView outside of a call to Callback#onViewReleased");
    }

    public int getActivePointerId() {
        return this.mActivePointerId;
    }

    public View getCapturedView() {
        return this.mCapturedView;
    }

    public int getEdgeSize() {
        return this.mEdgeSize;
    }

    public float getMinVelocity() {
        return this.mMinVelocity;
    }

    public int getTouchSlop() {
        return this.mTouchSlop;
    }

    public int getViewDragState() {
        return this.mDragState;
    }

    public boolean isCapturedViewUnder(int i, int i2) {
        return isViewUnder(this.mCapturedView, i, i2);
    }

    public boolean isEdgeTouched(int i) {
        int length = this.mInitialEdgesTouched.length;
        for (int i2 = 0; i2 < length; i2++) {
            if (isEdgeTouched(i, i2)) {
                return true;
            }
        }
        return false;
    }

    public boolean isEdgeTouched(int i, int i2) {
        return isPointerDown(i2) && (i & this.mInitialEdgesTouched[i2]) != 0;
    }

    public boolean isPointerDown(int i) {
        boolean z = true;
        if (((1 << i) & this.mPointersDown) == 0) {
            z = false;
        }
        return z;
    }

    public boolean isViewUnder(View view, int i, int i2) {
        if (view == null) {
            return false;
        }
        boolean z = false;
        if (i >= view.getLeft()) {
            z = false;
            if (i < view.getRight()) {
                z = false;
                if (i2 >= view.getTop()) {
                    z = false;
                    if (i2 < view.getBottom()) {
                        z = true;
                    }
                }
            }
        }
        return z;
    }

    public void processTouchEvent(MotionEvent motionEvent) {
        int i;
        int actionMasked = motionEvent.getActionMasked();
        int actionIndex = motionEvent.getActionIndex();
        if (actionMasked == 0) {
            cancel();
        }
        if (this.mVelocityTracker == null) {
            this.mVelocityTracker = VelocityTracker.obtain();
        }
        this.mVelocityTracker.addMovement(motionEvent);
        int i2 = 0;
        if (actionMasked == 0) {
            float x = motionEvent.getX();
            float y = motionEvent.getY();
            int pointerId = motionEvent.getPointerId(0);
            View findTopChildUnder = findTopChildUnder((int) x, (int) y);
            saveInitialMotion(x, y, pointerId);
            tryCaptureViewForDrag(findTopChildUnder, pointerId);
            int i3 = this.mInitialEdgesTouched[pointerId];
            int i4 = this.mTrackingEdges;
            if ((i3 & i4) == 0) {
                return;
            }
            this.mCallback.onEdgeTouched(i3 & i4, pointerId);
        } else if (actionMasked == 1) {
            if (this.mDragState == 1) {
                releaseViewForPointerUp();
            }
            cancel();
        } else if (actionMasked == 2) {
            if (this.mDragState == 1) {
                if (!isValidPointerForActionMove(this.mActivePointerId)) {
                    return;
                }
                int findPointerIndex = motionEvent.findPointerIndex(this.mActivePointerId);
                float x2 = motionEvent.getX(findPointerIndex);
                float y2 = motionEvent.getY(findPointerIndex);
                float[] fArr = this.mLastMotionX;
                int i5 = this.mActivePointerId;
                int i6 = (int) (x2 - fArr[i5]);
                int i7 = (int) (y2 - this.mLastMotionY[i5]);
                dragTo(this.mCapturedView.getLeft() + i6, this.mCapturedView.getTop() + i7, i6, i7);
                saveLastMotion(motionEvent);
                return;
            }
            int pointerCount = motionEvent.getPointerCount();
            for (int i8 = 0; i8 < pointerCount; i8++) {
                int pointerId2 = motionEvent.getPointerId(i8);
                if (isValidPointerForActionMove(pointerId2)) {
                    float x3 = motionEvent.getX(i8);
                    float y3 = motionEvent.getY(i8);
                    float f = x3 - this.mInitialMotionX[pointerId2];
                    float f2 = y3 - this.mInitialMotionY[pointerId2];
                    reportNewEdgeDrags(f, f2, pointerId2);
                    if (this.mDragState == 1) {
                        break;
                    }
                    View findTopChildUnder2 = findTopChildUnder((int) x3, (int) y3);
                    if (checkTouchSlop(findTopChildUnder2, f, f2) && tryCaptureViewForDrag(findTopChildUnder2, pointerId2)) {
                        break;
                    }
                }
            }
            saveLastMotion(motionEvent);
        } else if (actionMasked == 3) {
            if (this.mDragState == 1) {
                dispatchViewReleased(0.0f, 0.0f);
            }
            cancel();
        } else if (actionMasked == 5) {
            int pointerId3 = motionEvent.getPointerId(actionIndex);
            float x4 = motionEvent.getX(actionIndex);
            float y4 = motionEvent.getY(actionIndex);
            saveInitialMotion(x4, y4, pointerId3);
            if (this.mDragState != 0) {
                if (!isCapturedViewUnder((int) x4, (int) y4)) {
                    return;
                }
                tryCaptureViewForDrag(this.mCapturedView, pointerId3);
                return;
            }
            tryCaptureViewForDrag(findTopChildUnder((int) x4, (int) y4), pointerId3);
            int i9 = this.mInitialEdgesTouched[pointerId3];
            int i10 = this.mTrackingEdges;
            if ((i9 & i10) == 0) {
                return;
            }
            this.mCallback.onEdgeTouched(i9 & i10, pointerId3);
        } else if (actionMasked == 6) {
            int pointerId4 = motionEvent.getPointerId(actionIndex);
            if (this.mDragState == 1 && pointerId4 == this.mActivePointerId) {
                int pointerCount2 = motionEvent.getPointerCount();
                while (true) {
                    if (i2 >= pointerCount2) {
                        i = -1;
                        break;
                    }
                    int pointerId5 = motionEvent.getPointerId(i2);
                    if (pointerId5 != this.mActivePointerId) {
                        View findTopChildUnder3 = findTopChildUnder((int) motionEvent.getX(i2), (int) motionEvent.getY(i2));
                        View view = this.mCapturedView;
                        if (findTopChildUnder3 == view && tryCaptureViewForDrag(view, pointerId5)) {
                            i = this.mActivePointerId;
                            break;
                        }
                    }
                    i2++;
                }
                if (i == -1) {
                    releaseViewForPointerUp();
                }
            }
            clearMotionHistory(pointerId4);
        }
    }

    void setDragState(int i) {
        this.mParentView.removeCallbacks(this.mSetIdleRunnable);
        if (this.mDragState != i) {
            this.mDragState = i;
            this.mCallback.onViewDragStateChanged(i);
            if (this.mDragState != 0) {
                return;
            }
            this.mCapturedView = null;
        }
    }

    public void setEdgeTrackingEnabled(int i) {
        this.mTrackingEdges = i;
    }

    public void setMinVelocity(float f) {
        this.mMinVelocity = f;
    }

    public boolean settleCapturedViewAt(int i, int i2) {
        if (this.mReleaseInProgress) {
            return forceSettleCapturedViewAt(i, i2, (int) this.mVelocityTracker.getXVelocity(this.mActivePointerId), (int) this.mVelocityTracker.getYVelocity(this.mActivePointerId));
        }
        throw new IllegalStateException("Cannot settleCapturedViewAt outside of a call to Callback#onViewReleased");
    }

    /* JADX WARN: Code restructure failed: missing block: B:53:0x01a1, code lost:
        if (r0 != r0) goto L60;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public boolean shouldInterceptTouchEvent(android.view.MotionEvent r6) {
        /*
            Method dump skipped, instructions count: 610
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.customview.widget.ViewDragHelper.shouldInterceptTouchEvent(android.view.MotionEvent):boolean");
    }

    public boolean smoothSlideViewTo(View view, int i, int i2) {
        this.mCapturedView = view;
        this.mActivePointerId = -1;
        boolean forceSettleCapturedViewAt = forceSettleCapturedViewAt(i, i2, 0, 0);
        if (!forceSettleCapturedViewAt && this.mDragState == 0 && this.mCapturedView != null) {
            this.mCapturedView = null;
        }
        return forceSettleCapturedViewAt;
    }

    boolean tryCaptureViewForDrag(View view, int i) {
        if (view == this.mCapturedView && this.mActivePointerId == i) {
            return true;
        }
        if (view == null || !this.mCallback.tryCaptureView(view, i)) {
            return false;
        }
        this.mActivePointerId = i;
        captureChildView(view, i);
        return true;
    }
}

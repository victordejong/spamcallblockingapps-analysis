package androidx.core.widget;

import android.content.res.Resources;
import android.os.SystemClock;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewConfiguration;
import android.view.animation.AccelerateInterpolator;
import android.view.animation.AnimationUtils;
import android.view.animation.Interpolator;
import androidx.annotation.NonNull;
import androidx.core.view.ViewCompat;
/* loaded from: classes-dex2jar.jar:androidx/core/widget/AutoScrollHelper.class */
public abstract class AutoScrollHelper implements View.OnTouchListener {
    public static final int DEFAULT_ACTIVATION_DELAY = ViewConfiguration.getTapTimeout();
    public static final int DEFAULT_EDGE_TYPE = 1;
    public static final float DEFAULT_MAXIMUM_EDGE = Float.MAX_VALUE;
    public static final int DEFAULT_MAXIMUM_VELOCITY_DIPS = 1575;
    public static final int DEFAULT_MINIMUM_VELOCITY_DIPS = 315;
    public static final int DEFAULT_RAMP_DOWN_DURATION = 500;
    public static final int DEFAULT_RAMP_UP_DURATION = 500;
    public static final float DEFAULT_RELATIVE_EDGE = 0.2f;
    public static final float DEFAULT_RELATIVE_VELOCITY = 1.0f;
    public static final int EDGE_TYPE_INSIDE = 0;
    public static final int EDGE_TYPE_INSIDE_EXTEND = 1;
    public static final int EDGE_TYPE_OUTSIDE = 2;
    public static final int HORIZONTAL = 0;
    public static final float NO_MAX = Float.MAX_VALUE;
    public static final float NO_MIN = 0.0f;
    public static final float RELATIVE_UNSPECIFIED = 0.0f;
    public static final int VERTICAL = 1;
    public int mActivationDelay;
    public boolean mAlreadyDelayed;
    public boolean mAnimating;
    public int mEdgeType;
    public boolean mEnabled;
    public boolean mExclusive;
    public boolean mNeedsCancel;
    public boolean mNeedsReset;
    public Runnable mRunnable;
    public final View mTarget;
    public final ClampedScroller mScroller = new ClampedScroller();
    public final Interpolator mEdgeInterpolator = new AccelerateInterpolator();
    public float[] mRelativeEdges = {0.0f, 0.0f};
    public float[] mMaximumEdges = {Float.MAX_VALUE, Float.MAX_VALUE};
    public float[] mRelativeVelocity = {0.0f, 0.0f};
    public float[] mMinimumVelocity = {0.0f, 0.0f};
    public float[] mMaximumVelocity = {Float.MAX_VALUE, Float.MAX_VALUE};

    /* loaded from: classes-dex2jar.jar:androidx/core/widget/AutoScrollHelper$ClampedScroller.class */
    public static class ClampedScroller {
        public int mEffectiveRampDown;
        public int mRampDownDuration;
        public int mRampUpDuration;
        public float mStopValue;
        public float mTargetVelocityX;
        public float mTargetVelocityY;
        public long mStartTime = Long.MIN_VALUE;
        public long mStopTime = -1;
        public long mDeltaTime = 0;
        public int mDeltaX = 0;
        public int mDeltaY = 0;

        private float getValueAt(long j) {
            if (j < this.mStartTime) {
                return 0.0f;
            }
            long j2 = this.mStopTime;
            if (j2 < 0 || j < j2) {
                return AutoScrollHelper.constrain(((float) (j - this.mStartTime)) / this.mRampUpDuration, 0.0f, 1.0f) * 0.5f;
            }
            float f = this.mStopValue;
            return (1.0f - f) + (f * AutoScrollHelper.constrain(((float) (j - j2)) / this.mEffectiveRampDown, 0.0f, 1.0f));
        }

        private float interpolateValue(float f) {
            return ((-4.0f) * f * f) + (f * 4.0f);
        }

        public void computeScrollDelta() {
            if (this.mDeltaTime != 0) {
                long currentAnimationTimeMillis = AnimationUtils.currentAnimationTimeMillis();
                float interpolateValue = interpolateValue(getValueAt(currentAnimationTimeMillis));
                long j = this.mDeltaTime;
                this.mDeltaTime = currentAnimationTimeMillis;
                float f = ((float) (currentAnimationTimeMillis - j)) * interpolateValue;
                this.mDeltaX = (int) (this.mTargetVelocityX * f);
                this.mDeltaY = (int) (f * this.mTargetVelocityY);
                return;
            }
            throw new RuntimeException("Cannot compute scroll delta before calling start()");
        }

        public int getDeltaX() {
            return this.mDeltaX;
        }

        public int getDeltaY() {
            return this.mDeltaY;
        }

        public int getHorizontalDirection() {
            float f = this.mTargetVelocityX;
            return (int) (f / Math.abs(f));
        }

        public int getVerticalDirection() {
            float f = this.mTargetVelocityY;
            return (int) (f / Math.abs(f));
        }

        public boolean isFinished() {
            return this.mStopTime > 0 && AnimationUtils.currentAnimationTimeMillis() > this.mStopTime + ((long) this.mEffectiveRampDown);
        }

        public void requestStop() {
            long currentAnimationTimeMillis = AnimationUtils.currentAnimationTimeMillis();
            this.mEffectiveRampDown = AutoScrollHelper.constrain((int) (currentAnimationTimeMillis - this.mStartTime), 0, this.mRampDownDuration);
            this.mStopValue = getValueAt(currentAnimationTimeMillis);
            this.mStopTime = currentAnimationTimeMillis;
        }

        public void setRampDownDuration(int i) {
            this.mRampDownDuration = i;
        }

        public void setRampUpDuration(int i) {
            this.mRampUpDuration = i;
        }

        public void setTargetVelocity(float f, float f2) {
            this.mTargetVelocityX = f;
            this.mTargetVelocityY = f2;
        }

        public void start() {
            this.mStartTime = AnimationUtils.currentAnimationTimeMillis();
            this.mStopTime = -1L;
            this.mDeltaTime = this.mStartTime;
            this.mStopValue = 0.5f;
            this.mDeltaX = 0;
            this.mDeltaY = 0;
        }
    }

    /* loaded from: classes-dex2jar.jar:androidx/core/widget/AutoScrollHelper$ScrollAnimationRunnable.class */
    public class ScrollAnimationRunnable implements Runnable {
        public ScrollAnimationRunnable() {
        }

        @Override // java.lang.Runnable
        public void run() {
            AutoScrollHelper autoScrollHelper = AutoScrollHelper.this;
            if (autoScrollHelper.mAnimating) {
                if (autoScrollHelper.mNeedsReset) {
                    autoScrollHelper.mNeedsReset = false;
                    autoScrollHelper.mScroller.start();
                }
                ClampedScroller clampedScroller = AutoScrollHelper.this.mScroller;
                if (clampedScroller.isFinished() || !AutoScrollHelper.this.shouldAnimate()) {
                    AutoScrollHelper.this.mAnimating = false;
                    return;
                }
                AutoScrollHelper autoScrollHelper2 = AutoScrollHelper.this;
                if (autoScrollHelper2.mNeedsCancel) {
                    autoScrollHelper2.mNeedsCancel = false;
                    autoScrollHelper2.cancelTargetTouch();
                }
                clampedScroller.computeScrollDelta();
                AutoScrollHelper.this.scrollTargetBy(clampedScroller.getDeltaX(), clampedScroller.getDeltaY());
                ViewCompat.postOnAnimation(AutoScrollHelper.this.mTarget, this);
            }
        }
    }

    public AutoScrollHelper(@NonNull View view) {
        this.mTarget = view;
        float f = Resources.getSystem().getDisplayMetrics().density;
        int i = (int) ((1575.0f * f) + 0.5f);
        int i2 = (int) ((f * 315.0f) + 0.5f);
        float f2 = i;
        setMaximumVelocity(f2, f2);
        float f3 = i2;
        setMinimumVelocity(f3, f3);
        setEdgeType(1);
        setMaximumEdges(Float.MAX_VALUE, Float.MAX_VALUE);
        setRelativeEdges(0.2f, 0.2f);
        setRelativeVelocity(1.0f, 1.0f);
        setActivationDelay(DEFAULT_ACTIVATION_DELAY);
        setRampUpDuration(500);
        setRampDownDuration(500);
    }

    private float computeTargetVelocity(int i, float f, float f2, float f3) {
        float edgeValue = getEdgeValue(this.mRelativeEdges[i], f2, this.mMaximumEdges[i], f);
        int i2 = (edgeValue > 0.0f ? 1 : (edgeValue == 0.0f ? 0 : -1));
        if (i2 == 0) {
            return 0.0f;
        }
        float f4 = this.mRelativeVelocity[i];
        float f5 = this.mMinimumVelocity[i];
        float f6 = this.mMaximumVelocity[i];
        float f7 = f4 * f3;
        return i2 > 0 ? constrain(edgeValue * f7, f5, f6) : -constrain((-edgeValue) * f7, f5, f6);
    }

    public static float constrain(float f, float f2, float f3) {
        return f > f3 ? f3 : f < f2 ? f2 : f;
    }

    public static int constrain(int i, int i2, int i3) {
        return i > i3 ? i3 : i < i2 ? i2 : i;
    }

    private float constrainEdgeValue(float f, float f2) {
        if (f2 == 0.0f) {
            return 0.0f;
        }
        int i = this.mEdgeType;
        if (i == 0 || i == 1) {
            if (f < f2) {
                return f >= 0.0f ? 1.0f - (f / f2) : (!this.mAnimating || this.mEdgeType != 1) ? 0.0f : 1.0f;
            }
            return 0.0f;
        } else if (i == 2 && f < 0.0f) {
            return f / (-f2);
        } else {
            return 0.0f;
        }
    }

    private float getEdgeValue(float f, float f2, float f3, float f4) {
        float f5;
        float constrain = constrain(f * f2, 0.0f, f3);
        float constrainEdgeValue = constrainEdgeValue(f2 - f4, constrain) - constrainEdgeValue(f4, constrain);
        if (constrainEdgeValue < 0.0f) {
            f5 = -this.mEdgeInterpolator.getInterpolation(-constrainEdgeValue);
        } else if (constrainEdgeValue <= 0.0f) {
            return 0.0f;
        } else {
            f5 = this.mEdgeInterpolator.getInterpolation(constrainEdgeValue);
        }
        return constrain(f5, -1.0f, 1.0f);
    }

    private void requestStop() {
        if (this.mNeedsReset) {
            this.mAnimating = false;
        } else {
            this.mScroller.requestStop();
        }
    }

    private void startAnimating() {
        int i;
        if (this.mRunnable == null) {
            this.mRunnable = new ScrollAnimationRunnable();
        }
        this.mAnimating = true;
        this.mNeedsReset = true;
        if (this.mAlreadyDelayed || (i = this.mActivationDelay) <= 0) {
            this.mRunnable.run();
        } else {
            ViewCompat.postOnAnimationDelayed(this.mTarget, this.mRunnable, i);
        }
        this.mAlreadyDelayed = true;
    }

    public abstract boolean canTargetScrollHorizontally(int i);

    public abstract boolean canTargetScrollVertically(int i);

    public void cancelTargetTouch() {
        long uptimeMillis = SystemClock.uptimeMillis();
        MotionEvent obtain = MotionEvent.obtain(uptimeMillis, uptimeMillis, 3, 0.0f, 0.0f, 0);
        this.mTarget.onTouchEvent(obtain);
        obtain.recycle();
    }

    public boolean isEnabled() {
        return this.mEnabled;
    }

    public boolean isExclusive() {
        return this.mExclusive;
    }

    /* JADX WARN: Code restructure failed: missing block: B:12:0x0028, code lost:
        if (r0 != 3) goto L_0x008c;
     */
    /* JADX WARN: Removed duplicated region for block: B:22:0x0096  */
    @Override // android.view.View.OnTouchListener
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public boolean onTouch(android.view.View r7, android.view.MotionEvent r8) {
        /*
            r6 = this;
            r0 = r6
            boolean r0 = r0.mEnabled
            r9 = r0
            r0 = 0
            r10 = r0
            r0 = r9
            if (r0 != 0) goto L_0x000e
            r0 = 0
            return r0
        L_0x000e:
            r0 = r8
            int r0 = r0.getActionMasked()
            r11 = r0
            r0 = r11
            if (r0 == 0) goto L_0x0035
            r0 = r11
            r1 = 1
            if (r0 == r1) goto L_0x002e
            r0 = r11
            r1 = 2
            if (r0 == r1) goto L_0x003f
            r0 = r11
            r1 = 3
            if (r0 == r1) goto L_0x002e
            goto L_0x008c
        L_0x002e:
            r0 = r6
            r0.requestStop()
            goto L_0x008c
        L_0x0035:
            r0 = r6
            r1 = 1
            r0.mNeedsCancel = r1
            r0 = r6
            r1 = 0
            r0.mAlreadyDelayed = r1
        L_0x003f:
            r0 = r6
            r1 = 0
            r2 = r8
            float r2 = r2.getX()
            r3 = r7
            int r3 = r3.getWidth()
            float r3 = (float) r3
            r4 = r6
            android.view.View r4 = r4.mTarget
            int r4 = r4.getWidth()
            float r4 = (float) r4
            float r0 = r0.computeTargetVelocity(r1, r2, r3, r4)
            r12 = r0
            r0 = r6
            r1 = 1
            r2 = r8
            float r2 = r2.getY()
            r3 = r7
            int r3 = r3.getHeight()
            float r3 = (float) r3
            r4 = r6
            android.view.View r4 = r4.mTarget
            int r4 = r4.getHeight()
            float r4 = (float) r4
            float r0 = r0.computeTargetVelocity(r1, r2, r3, r4)
            r13 = r0
            r0 = r6
            androidx.core.widget.AutoScrollHelper$ClampedScroller r0 = r0.mScroller
            r1 = r12
            r2 = r13
            r0.setTargetVelocity(r1, r2)
            r0 = r6
            boolean r0 = r0.mAnimating
            if (r0 != 0) goto L_0x008c
            r0 = r6
            boolean r0 = r0.shouldAnimate()
            if (r0 == 0) goto L_0x008c
            r0 = r6
            r0.startAnimating()
        L_0x008c:
            r0 = r10
            r9 = r0
            r0 = r6
            boolean r0 = r0.mExclusive
            if (r0 == 0) goto L_0x00a2
            r0 = r10
            r9 = r0
            r0 = r6
            boolean r0 = r0.mAnimating
            if (r0 == 0) goto L_0x00a2
            r0 = 1
            r9 = r0
        L_0x00a2:
            r0 = r9
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.core.widget.AutoScrollHelper.onTouch(android.view.View, android.view.MotionEvent):boolean");
    }

    public abstract void scrollTargetBy(int i, int i2);

    @NonNull
    public AutoScrollHelper setActivationDelay(int i) {
        this.mActivationDelay = i;
        return this;
    }

    @NonNull
    public AutoScrollHelper setEdgeType(int i) {
        this.mEdgeType = i;
        return this;
    }

    public AutoScrollHelper setEnabled(boolean z) {
        if (this.mEnabled && !z) {
            requestStop();
        }
        this.mEnabled = z;
        return this;
    }

    public AutoScrollHelper setExclusive(boolean z) {
        this.mExclusive = z;
        return this;
    }

    @NonNull
    public AutoScrollHelper setMaximumEdges(float f, float f2) {
        float[] fArr = this.mMaximumEdges;
        fArr[0] = f;
        fArr[1] = f2;
        return this;
    }

    @NonNull
    public AutoScrollHelper setMaximumVelocity(float f, float f2) {
        float[] fArr = this.mMaximumVelocity;
        fArr[0] = f / 1000.0f;
        fArr[1] = f2 / 1000.0f;
        return this;
    }

    @NonNull
    public AutoScrollHelper setMinimumVelocity(float f, float f2) {
        float[] fArr = this.mMinimumVelocity;
        fArr[0] = f / 1000.0f;
        fArr[1] = f2 / 1000.0f;
        return this;
    }

    @NonNull
    public AutoScrollHelper setRampDownDuration(int i) {
        this.mScroller.setRampDownDuration(i);
        return this;
    }

    @NonNull
    public AutoScrollHelper setRampUpDuration(int i) {
        this.mScroller.setRampUpDuration(i);
        return this;
    }

    @NonNull
    public AutoScrollHelper setRelativeEdges(float f, float f2) {
        float[] fArr = this.mRelativeEdges;
        fArr[0] = f;
        fArr[1] = f2;
        return this;
    }

    @NonNull
    public AutoScrollHelper setRelativeVelocity(float f, float f2) {
        float[] fArr = this.mRelativeVelocity;
        fArr[0] = f / 1000.0f;
        fArr[1] = f2 / 1000.0f;
        return this;
    }

    public boolean shouldAnimate() {
        ClampedScroller clampedScroller = this.mScroller;
        int verticalDirection = clampedScroller.getVerticalDirection();
        int horizontalDirection = clampedScroller.getHorizontalDirection();
        return (verticalDirection != 0 && canTargetScrollVertically(verticalDirection)) || (horizontalDirection != 0 && canTargetScrollHorizontally(horizontalDirection));
    }
}

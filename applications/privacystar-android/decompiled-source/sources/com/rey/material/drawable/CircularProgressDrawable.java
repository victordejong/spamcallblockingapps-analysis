package com.rey.material.drawable;

import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.Canvas;
import android.graphics.ColorFilter;
import android.graphics.Paint;
import android.graphics.Rect;
import android.graphics.RectF;
import android.graphics.drawable.Animatable;
import android.graphics.drawable.Drawable;
import android.os.SystemClock;
import android.support.p001v4.view.ViewCompat;
import android.util.AttributeSet;
import android.view.animation.AnimationUtils;
import android.view.animation.DecelerateInterpolator;
import android.view.animation.Interpolator;
import com.rey.material.C1686R;
import com.rey.material.util.ColorUtil;
import com.rey.material.util.ThemeUtil;
/* loaded from: classes2-dex2jar.jar:com/rey/material/drawable/CircularProgressDrawable.class */
public class CircularProgressDrawable extends Drawable implements Animatable {
    private static final int PROGRESS_STATE_HIDE = -1;
    private static final int PROGRESS_STATE_KEEP_SHRINK = 3;
    private static final int PROGRESS_STATE_KEEP_STRETCH = 1;
    private static final int PROGRESS_STATE_SHRINK = 2;
    private static final int PROGRESS_STATE_STRETCH = 0;
    private static final int RUN_STATE_RUNNING = 3;
    private static final int RUN_STATE_STARTED = 2;
    private static final int RUN_STATE_STARTING = 1;
    private static final int RUN_STATE_STOPPED = 0;
    private static final int RUN_STATE_STOPPING = 4;
    private int mInAnimationDuration;
    private int[] mInColors;
    private float mInStepPercent;
    private float mInitialAngle;
    private int mKeepDuration;
    private long mLastProgressStateTime;
    private long mLastRunStateTime;
    private long mLastUpdateTime;
    private float mMaxSweepAngle;
    private float mMinSweepAngle;
    private int mOutAnimationDuration;
    private int mPadding;
    private Paint mPaint;
    private int mProgressMode;
    private float mProgressPercent;
    private int mProgressState;
    private RectF mRect;
    private boolean mReverse;
    private int mRotateDuration;
    private int mRunState;
    private float mSecondaryProgressPercent;
    private float mStartAngle;
    private int mStrokeColorIndex;
    private int[] mStrokeColors;
    private int mStrokeSecondaryColor;
    private int mStrokeSize;
    private float mSweepAngle;
    private int mTransformDuration;
    private Interpolator mTransformInterpolator;
    private final Runnable mUpdater;

    /* loaded from: classes2-dex2jar.jar:com/rey/material/drawable/CircularProgressDrawable$Builder.class */
    public static class Builder {
        private int mInAnimationDuration;
        private int[] mInColors;
        private float mInStepPercent;
        private float mInitialAngle;
        private int mKeepDuration;
        private float mMaxSweepAngle;
        private float mMinSweepAngle;
        private int mOutAnimationDuration;
        private int mPadding;
        private int mProgressMode;
        private float mProgressPercent;
        private boolean mReverse;
        private int mRotateDuration;
        private float mSecondaryProgressPercent;
        private int[] mStrokeColors;
        private int mStrokeSecondaryColor;
        private int mStrokeSize;
        private int mTransformDuration;
        private Interpolator mTransformInterpolator;

        public Builder() {
        }

        public Builder(Context context, int i) {
            this(context, null, 0, i);
        }

        public Builder(Context context, AttributeSet attributeSet, int i, int i2) {
            TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, C1686R.styleable.CircularProgressDrawable, i, i2);
            padding(obtainStyledAttributes.getDimensionPixelSize(C1686R.styleable.CircularProgressDrawable_cpd_padding, 0));
            initialAngle(obtainStyledAttributes.getInteger(C1686R.styleable.CircularProgressDrawable_cpd_initialAngle, 0));
            progressPercent(obtainStyledAttributes.getFloat(C1686R.styleable.CircularProgressDrawable_pv_progress, 0.0f));
            secondaryProgressPercent(obtainStyledAttributes.getFloat(C1686R.styleable.CircularProgressDrawable_pv_secondaryProgress, 0.0f));
            maxSweepAngle(obtainStyledAttributes.getInteger(C1686R.styleable.CircularProgressDrawable_cpd_maxSweepAngle, 270));
            minSweepAngle(obtainStyledAttributes.getInteger(C1686R.styleable.CircularProgressDrawable_cpd_minSweepAngle, 1));
            strokeSize(obtainStyledAttributes.getDimensionPixelSize(C1686R.styleable.CircularProgressDrawable_cpd_strokeSize, ThemeUtil.dpToPx(context, 4)));
            strokeColors(obtainStyledAttributes.getColor(C1686R.styleable.CircularProgressDrawable_cpd_strokeColor, ThemeUtil.colorPrimary(context, ViewCompat.MEASURED_STATE_MASK)));
            int resourceId = obtainStyledAttributes.getResourceId(C1686R.styleable.CircularProgressDrawable_cpd_strokeColors, 0);
            if (resourceId != 0) {
                TypedArray obtainTypedArray = context.getResources().obtainTypedArray(resourceId);
                int[] iArr = new int[obtainTypedArray.length()];
                for (int i3 = 0; i3 < obtainTypedArray.length(); i3++) {
                    iArr[i3] = obtainTypedArray.getColor(i3, 0);
                }
                obtainTypedArray.recycle();
                strokeColors(iArr);
            }
            strokeSecondaryColor(obtainStyledAttributes.getColor(C1686R.styleable.CircularProgressDrawable_cpd_strokeSecondaryColor, 0));
            reverse(obtainStyledAttributes.getBoolean(C1686R.styleable.CircularProgressDrawable_cpd_reverse, false));
            rotateDuration(obtainStyledAttributes.getInteger(C1686R.styleable.CircularProgressDrawable_cpd_rotateDuration, context.getResources().getInteger(17694722)));
            transformDuration(obtainStyledAttributes.getInteger(C1686R.styleable.CircularProgressDrawable_cpd_transformDuration, context.getResources().getInteger(17694721)));
            keepDuration(obtainStyledAttributes.getInteger(C1686R.styleable.CircularProgressDrawable_cpd_keepDuration, context.getResources().getInteger(17694720)));
            int resourceId2 = obtainStyledAttributes.getResourceId(C1686R.styleable.CircularProgressDrawable_cpd_transformInterpolator, 0);
            if (resourceId2 != 0) {
                transformInterpolator(AnimationUtils.loadInterpolator(context, resourceId2));
            }
            progressMode(obtainStyledAttributes.getInteger(C1686R.styleable.CircularProgressDrawable_pv_progressMode, 1));
            inAnimDuration(obtainStyledAttributes.getInteger(C1686R.styleable.CircularProgressDrawable_cpd_inAnimDuration, context.getResources().getInteger(17694721)));
            int resourceId3 = obtainStyledAttributes.getResourceId(C1686R.styleable.CircularProgressDrawable_cpd_inStepColors, 0);
            if (resourceId3 != 0) {
                TypedArray obtainTypedArray2 = context.getResources().obtainTypedArray(resourceId3);
                int[] iArr2 = new int[obtainTypedArray2.length()];
                for (int i4 = 0; i4 < obtainTypedArray2.length(); i4++) {
                    iArr2[i4] = obtainTypedArray2.getColor(i4, 0);
                }
                obtainTypedArray2.recycle();
                inStepColors(iArr2);
            }
            inStepPercent(obtainStyledAttributes.getFloat(C1686R.styleable.CircularProgressDrawable_cpd_inStepPercent, 0.5f));
            outAnimDuration(obtainStyledAttributes.getInteger(C1686R.styleable.CircularProgressDrawable_cpd_outAnimDuration, context.getResources().getInteger(17694721)));
            obtainStyledAttributes.recycle();
        }

        public CircularProgressDrawable build() {
            if (this.mStrokeColors == null) {
                this.mStrokeColors = new int[]{-16737793};
            }
            if (this.mInColors == null && this.mInAnimationDuration > 0) {
                this.mInColors = new int[]{-4860673, -2168068, -327682};
            }
            if (this.mTransformInterpolator == null) {
                this.mTransformInterpolator = new DecelerateInterpolator();
            }
            return new CircularProgressDrawable(this.mPadding, this.mInitialAngle, this.mProgressPercent, this.mSecondaryProgressPercent, this.mMaxSweepAngle, this.mMinSweepAngle, this.mStrokeSize, this.mStrokeColors, this.mStrokeSecondaryColor, this.mReverse, this.mRotateDuration, this.mTransformDuration, this.mKeepDuration, this.mTransformInterpolator, this.mProgressMode, this.mInAnimationDuration, this.mInStepPercent, this.mInColors, this.mOutAnimationDuration);
        }

        public Builder inAnimDuration(int i) {
            this.mInAnimationDuration = i;
            return this;
        }

        public Builder inStepColors(int... iArr) {
            this.mInColors = iArr;
            return this;
        }

        public Builder inStepPercent(float f) {
            this.mInStepPercent = f;
            return this;
        }

        public Builder initialAngle(float f) {
            this.mInitialAngle = f;
            return this;
        }

        public Builder keepDuration(int i) {
            this.mKeepDuration = i;
            return this;
        }

        public Builder maxSweepAngle(float f) {
            this.mMaxSweepAngle = f;
            return this;
        }

        public Builder minSweepAngle(float f) {
            this.mMinSweepAngle = f;
            return this;
        }

        public Builder outAnimDuration(int i) {
            this.mOutAnimationDuration = i;
            return this;
        }

        public Builder padding(int i) {
            this.mPadding = i;
            return this;
        }

        public Builder progressMode(int i) {
            this.mProgressMode = i;
            return this;
        }

        public Builder progressPercent(float f) {
            this.mProgressPercent = f;
            return this;
        }

        public Builder reverse() {
            return reverse(true);
        }

        public Builder reverse(boolean z) {
            this.mReverse = z;
            return this;
        }

        public Builder rotateDuration(int i) {
            this.mRotateDuration = i;
            return this;
        }

        public Builder secondaryProgressPercent(float f) {
            this.mSecondaryProgressPercent = f;
            return this;
        }

        public Builder strokeColors(int... iArr) {
            this.mStrokeColors = iArr;
            return this;
        }

        public Builder strokeSecondaryColor(int i) {
            this.mStrokeSecondaryColor = i;
            return this;
        }

        public Builder strokeSize(int i) {
            this.mStrokeSize = i;
            return this;
        }

        public Builder transformDuration(int i) {
            this.mTransformDuration = i;
            return this;
        }

        public Builder transformInterpolator(Interpolator interpolator) {
            this.mTransformInterpolator = interpolator;
            return this;
        }
    }

    private CircularProgressDrawable(int i, float f, float f2, float f3, float f4, float f5, int i2, int[] iArr, int i3, boolean z, int i4, int i5, int i6, Interpolator interpolator, int i7, int i8, float f6, int[] iArr2, int i9) {
        this.mRunState = 0;
        this.mUpdater = new Runnable() { // from class: com.rey.material.drawable.CircularProgressDrawable.1
            @Override // java.lang.Runnable
            public void run() {
                CircularProgressDrawable.this.update();
            }
        };
        this.mPadding = i;
        this.mInitialAngle = f;
        setProgress(f2);
        setSecondaryProgress(f3);
        this.mMaxSweepAngle = f4;
        this.mMinSweepAngle = f5;
        this.mStrokeSize = i2;
        this.mStrokeColors = iArr;
        this.mStrokeSecondaryColor = i3;
        this.mReverse = z;
        this.mRotateDuration = i4;
        this.mTransformDuration = i5;
        this.mKeepDuration = i6;
        this.mTransformInterpolator = interpolator;
        this.mProgressMode = i7;
        this.mInAnimationDuration = i8;
        this.mInStepPercent = f6;
        this.mInColors = iArr2;
        this.mOutAnimationDuration = i9;
        this.mPaint = new Paint();
        this.mPaint.setAntiAlias(true);
        this.mPaint.setStrokeCap(Paint.Cap.ROUND);
        this.mPaint.setStrokeJoin(Paint.Join.ROUND);
        this.mRect = new RectF();
    }

    private void drawDeterminate(Canvas canvas) {
        float f;
        float f2;
        Rect bounds = getBounds();
        if (this.mRunState == 1) {
            float min = (this.mStrokeSize * ((float) Math.min(this.mInAnimationDuration, SystemClock.uptimeMillis() - this.mLastRunStateTime))) / this.mInAnimationDuration;
            f = min;
            if (min > 0.0f) {
                f2 = (((Math.min(bounds.width(), bounds.height()) - (this.mPadding * 2)) - (this.mStrokeSize * 2)) + min) / 2.0f;
                f = min;
            }
            f2 = 0.0f;
        } else if (this.mRunState == 4) {
            float max = (this.mStrokeSize * ((float) Math.max(0L, (this.mOutAnimationDuration - SystemClock.uptimeMillis()) + this.mLastRunStateTime))) / this.mOutAnimationDuration;
            f = max;
            if (max > 0.0f) {
                f2 = (((Math.min(bounds.width(), bounds.height()) - (this.mPadding * 2)) - (this.mStrokeSize * 2)) + max) / 2.0f;
                f = max;
            }
            f2 = 0.0f;
        } else if (this.mRunState != 0) {
            f = this.mStrokeSize;
            f2 = ((Math.min(bounds.width(), bounds.height()) - (this.mPadding * 2)) - this.mStrokeSize) / 2.0f;
        } else {
            f = 0.0f;
            f2 = 0.0f;
        }
        if (f2 > 0.0f) {
            float f3 = (bounds.left + bounds.right) / 2.0f;
            float f4 = (bounds.top + bounds.bottom) / 2.0f;
            this.mPaint.setStrokeWidth(f);
            this.mPaint.setStyle(Paint.Style.STROKE);
            if (this.mProgressPercent == 1.0f) {
                this.mPaint.setColor(this.mStrokeColors[0]);
                canvas.drawCircle(f3, f4, f2, this.mPaint);
            } else if (this.mProgressPercent == 0.0f) {
                this.mPaint.setColor(this.mStrokeSecondaryColor);
                canvas.drawCircle(f3, f4, f2, this.mPaint);
            } else {
                int i = 360;
                float f5 = this.mProgressPercent * (this.mReverse ? -360 : 360);
                this.mRect.set(f3 - f2, f4 - f2, f3 + f2, f4 + f2);
                this.mPaint.setColor(this.mStrokeSecondaryColor);
                RectF rectF = this.mRect;
                float f6 = this.mStartAngle;
                if (this.mReverse) {
                    i = -360;
                }
                canvas.drawArc(rectF, f6 + f5, i - f5, false, this.mPaint);
                this.mPaint.setColor(this.mStrokeColors[0]);
                canvas.drawArc(this.mRect, this.mStartAngle, f5, false, this.mPaint);
            }
        }
    }

    private void drawIndeterminate(Canvas canvas) {
        if (this.mRunState == 1) {
            Rect bounds = getBounds();
            float f = (bounds.left + bounds.right) / 2.0f;
            float f2 = (bounds.top + bounds.bottom) / 2.0f;
            float min = (Math.min(bounds.width(), bounds.height()) - (this.mPadding * 2)) / 2.0f;
            float length = 1.0f / ((this.mInStepPercent * (this.mInColors.length + 2)) + 1.0f);
            float uptimeMillis = ((float) (SystemClock.uptimeMillis() - this.mLastRunStateTime)) / this.mInAnimationDuration;
            float f3 = uptimeMillis / length;
            int floor = (int) Math.floor(f3);
            float f4 = 0.0f;
            while (floor >= 0) {
                float min2 = Math.min(1.0f, (f3 - floor) * this.mInStepPercent) * min;
                if (floor < this.mInColors.length) {
                    if (f4 != 0.0f) {
                        if (min2 <= f4) {
                            break;
                        }
                        float f5 = (f4 + min2) / 2.0f;
                        this.mRect.set(f - f5, f2 - f5, f + f5, f2 + f5);
                        this.mPaint.setStrokeWidth(min2 - f4);
                        this.mPaint.setStyle(Paint.Style.STROKE);
                        this.mPaint.setColor(this.mInColors[floor]);
                        canvas.drawCircle(f, f2, f5, this.mPaint);
                    } else {
                        this.mPaint.setColor(this.mInColors[floor]);
                        this.mPaint.setStyle(Paint.Style.FILL);
                        canvas.drawCircle(f, f2, min2, this.mPaint);
                    }
                }
                floor--;
                f4 = min2;
            }
            if (this.mProgressState != -1) {
                float f6 = min - (this.mStrokeSize / 2.0f);
                this.mRect.set(f - f6, f2 - f6, f + f6, f2 + f6);
                this.mPaint.setStrokeWidth(this.mStrokeSize);
                this.mPaint.setStyle(Paint.Style.STROKE);
                this.mPaint.setColor(getIndeterminateStrokeColor());
                canvas.drawArc(this.mRect, this.mStartAngle, this.mSweepAngle, false, this.mPaint);
            } else if (f3 >= 1.0f / this.mInStepPercent || uptimeMillis >= 1.0f) {
                resetAnimation();
                this.mProgressState = 0;
            }
        } else if (this.mRunState == 4) {
            float max = (this.mStrokeSize * ((float) Math.max(0L, (this.mOutAnimationDuration - SystemClock.uptimeMillis()) + this.mLastRunStateTime))) / this.mOutAnimationDuration;
            if (max > 0.0f) {
                Rect bounds2 = getBounds();
                float min3 = (((Math.min(bounds2.width(), bounds2.height()) - (this.mPadding * 2)) - (this.mStrokeSize * 2)) + max) / 2.0f;
                float f7 = (bounds2.left + bounds2.right) / 2.0f;
                float f8 = (bounds2.top + bounds2.bottom) / 2.0f;
                this.mRect.set(f7 - min3, f8 - min3, f7 + min3, f8 + min3);
                this.mPaint.setStrokeWidth(max);
                this.mPaint.setStyle(Paint.Style.STROKE);
                this.mPaint.setColor(getIndeterminateStrokeColor());
                canvas.drawArc(this.mRect, this.mStartAngle, this.mSweepAngle, false, this.mPaint);
            }
        } else if (this.mRunState != 0) {
            Rect bounds3 = getBounds();
            float min4 = ((Math.min(bounds3.width(), bounds3.height()) - (this.mPadding * 2)) - this.mStrokeSize) / 2.0f;
            float f9 = (bounds3.left + bounds3.right) / 2.0f;
            float f10 = (bounds3.top + bounds3.bottom) / 2.0f;
            this.mRect.set(f9 - min4, f10 - min4, f9 + min4, f10 + min4);
            this.mPaint.setStrokeWidth(this.mStrokeSize);
            this.mPaint.setStyle(Paint.Style.STROKE);
            this.mPaint.setColor(getIndeterminateStrokeColor());
            canvas.drawArc(this.mRect, this.mStartAngle, this.mSweepAngle, false, this.mPaint);
        }
    }

    private int getIndeterminateStrokeColor() {
        if (this.mProgressState != 3 || this.mStrokeColors.length == 1) {
            return this.mStrokeColors[this.mStrokeColorIndex];
        }
        return ColorUtil.getMiddleColor(this.mStrokeColors[(this.mStrokeColorIndex == 0 ? this.mStrokeColors.length : this.mStrokeColorIndex) - 1], this.mStrokeColors[this.mStrokeColorIndex], Math.max(0.0f, Math.min(1.0f, ((float) (SystemClock.uptimeMillis() - this.mLastProgressStateTime)) / this.mKeepDuration)));
    }

    private void resetAnimation() {
        this.mLastUpdateTime = SystemClock.uptimeMillis();
        this.mLastProgressStateTime = this.mLastUpdateTime;
        this.mStartAngle = this.mInitialAngle;
        this.mStrokeColorIndex = 0;
        this.mSweepAngle = this.mReverse ? -this.mMinSweepAngle : this.mMinSweepAngle;
    }

    private void start(boolean z) {
        if (!isRunning()) {
            resetAnimation();
            if (z) {
                this.mRunState = 1;
                this.mLastRunStateTime = SystemClock.uptimeMillis();
                this.mProgressState = -1;
            }
            scheduleSelf(this.mUpdater, SystemClock.uptimeMillis() + 16);
            invalidateSelf();
        }
    }

    private void stop(boolean z) {
        if (isRunning()) {
            if (z) {
                this.mLastRunStateTime = SystemClock.uptimeMillis();
                if (this.mRunState == 2) {
                    scheduleSelf(this.mUpdater, SystemClock.uptimeMillis() + 16);
                    invalidateSelf();
                }
                this.mRunState = 4;
                return;
            }
            this.mRunState = 0;
            unscheduleSelf(this.mUpdater);
            invalidateSelf();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void update() {
        switch (this.mProgressMode) {
            case 0:
                updateDeterminate();
                return;
            case 1:
                updateIndeterminate();
                return;
            default:
                return;
        }
    }

    private void updateDeterminate() {
        long uptimeMillis = SystemClock.uptimeMillis();
        float f = (((float) (uptimeMillis - this.mLastUpdateTime)) * 360.0f) / this.mRotateDuration;
        float f2 = f;
        if (this.mReverse) {
            f2 = -f;
        }
        this.mLastUpdateTime = uptimeMillis;
        this.mStartAngle += f2;
        if (this.mRunState == 1) {
            if (uptimeMillis - this.mLastRunStateTime > this.mInAnimationDuration) {
                this.mRunState = 3;
            }
        } else if (this.mRunState == 4 && uptimeMillis - this.mLastRunStateTime > this.mOutAnimationDuration) {
            stop(false);
            return;
        }
        if (isRunning()) {
            scheduleSelf(this.mUpdater, SystemClock.uptimeMillis() + 16);
        }
        invalidateSelf();
    }

    private void updateIndeterminate() {
        long uptimeMillis = SystemClock.uptimeMillis();
        float f = (((float) (uptimeMillis - this.mLastUpdateTime)) * 360.0f) / this.mRotateDuration;
        float f2 = f;
        if (this.mReverse) {
            f2 = -f;
        }
        this.mLastUpdateTime = uptimeMillis;
        switch (this.mProgressState) {
            case 0:
                if (this.mTransformDuration > 0) {
                    float f3 = ((float) (uptimeMillis - this.mLastProgressStateTime)) / this.mTransformDuration;
                    float f4 = this.mReverse ? -this.mMaxSweepAngle : this.mMaxSweepAngle;
                    float f5 = this.mReverse ? -this.mMinSweepAngle : this.mMinSweepAngle;
                    this.mStartAngle += f2;
                    this.mSweepAngle = (this.mTransformInterpolator.getInterpolation(f3) * (f4 - f5)) + f5;
                    if (f3 > 1.0f) {
                        this.mSweepAngle = f4;
                        this.mProgressState = 1;
                        this.mLastProgressStateTime = uptimeMillis;
                        break;
                    }
                } else {
                    this.mSweepAngle = this.mReverse ? -this.mMinSweepAngle : this.mMinSweepAngle;
                    this.mProgressState = 1;
                    this.mStartAngle += f2;
                    this.mLastProgressStateTime = uptimeMillis;
                    break;
                }
                break;
            case 1:
                this.mStartAngle += f2;
                if (uptimeMillis - this.mLastProgressStateTime > this.mKeepDuration) {
                    this.mProgressState = 2;
                    this.mLastProgressStateTime = uptimeMillis;
                    break;
                }
                break;
            case 2:
                if (this.mTransformDuration > 0) {
                    float f6 = ((float) (uptimeMillis - this.mLastProgressStateTime)) / this.mTransformDuration;
                    float f7 = this.mReverse ? -this.mMaxSweepAngle : this.mMaxSweepAngle;
                    float f8 = this.mReverse ? -this.mMinSweepAngle : this.mMinSweepAngle;
                    float interpolation = ((1.0f - this.mTransformInterpolator.getInterpolation(f6)) * (f7 - f8)) + f8;
                    this.mStartAngle += (f2 + this.mSweepAngle) - interpolation;
                    this.mSweepAngle = interpolation;
                    if (f6 > 1.0f) {
                        this.mSweepAngle = f8;
                        this.mProgressState = 3;
                        this.mLastProgressStateTime = uptimeMillis;
                        this.mStrokeColorIndex = (this.mStrokeColorIndex + 1) % this.mStrokeColors.length;
                        break;
                    }
                } else {
                    this.mSweepAngle = this.mReverse ? -this.mMinSweepAngle : this.mMinSweepAngle;
                    this.mProgressState = 3;
                    this.mStartAngle += f2;
                    this.mLastProgressStateTime = uptimeMillis;
                    this.mStrokeColorIndex = (this.mStrokeColorIndex + 1) % this.mStrokeColors.length;
                    break;
                }
                break;
            case 3:
                this.mStartAngle += f2;
                if (uptimeMillis - this.mLastProgressStateTime > this.mKeepDuration) {
                    this.mProgressState = 0;
                    this.mLastProgressStateTime = uptimeMillis;
                    break;
                }
                break;
        }
        if (this.mRunState == 1) {
            if (uptimeMillis - this.mLastRunStateTime > this.mInAnimationDuration) {
                this.mRunState = 3;
                if (this.mProgressState == -1) {
                    resetAnimation();
                    this.mProgressState = 0;
                }
            }
        } else if (this.mRunState == 4 && uptimeMillis - this.mLastRunStateTime > this.mOutAnimationDuration) {
            stop(false);
            return;
        }
        if (isRunning()) {
            scheduleSelf(this.mUpdater, SystemClock.uptimeMillis() + 16);
        }
        invalidateSelf();
    }

    public void applyStyle(Context context, int i) {
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(i, C1686R.styleable.CircularProgressDrawable);
        int indexCount = obtainStyledAttributes.getIndexCount();
        int[] iArr = null;
        boolean z = false;
        int i2 = 0;
        for (int i3 = 0; i3 < indexCount; i3++) {
            int index = obtainStyledAttributes.getIndex(i3);
            if (index == C1686R.styleable.CircularProgressDrawable_cpd_padding) {
                this.mPadding = obtainStyledAttributes.getDimensionPixelSize(index, 0);
                iArr = iArr;
                z = z;
                i2 = i2;
            } else if (index == C1686R.styleable.CircularProgressDrawable_cpd_initialAngle) {
                this.mInitialAngle = obtainStyledAttributes.getInteger(index, 0);
                iArr = iArr;
                z = z;
                i2 = i2;
            } else if (index == C1686R.styleable.CircularProgressDrawable_pv_progress) {
                setProgress(obtainStyledAttributes.getFloat(index, 0.0f));
                iArr = iArr;
                z = z;
                i2 = i2;
            } else if (index == C1686R.styleable.CircularProgressDrawable_pv_secondaryProgress) {
                setSecondaryProgress(obtainStyledAttributes.getFloat(index, 0.0f));
                iArr = iArr;
                z = z;
                i2 = i2;
            } else if (index == C1686R.styleable.CircularProgressDrawable_cpd_maxSweepAngle) {
                this.mMaxSweepAngle = obtainStyledAttributes.getInteger(index, 0);
                iArr = iArr;
                z = z;
                i2 = i2;
            } else if (index == C1686R.styleable.CircularProgressDrawable_cpd_minSweepAngle) {
                this.mMinSweepAngle = obtainStyledAttributes.getInteger(index, 0);
                iArr = iArr;
                z = z;
                i2 = i2;
            } else if (index == C1686R.styleable.CircularProgressDrawable_cpd_strokeSize) {
                this.mStrokeSize = obtainStyledAttributes.getDimensionPixelSize(index, 0);
                iArr = iArr;
                z = z;
                i2 = i2;
            } else if (index == C1686R.styleable.CircularProgressDrawable_cpd_strokeColor) {
                i2 = obtainStyledAttributes.getColor(index, 0);
                z = true;
                iArr = iArr;
            } else if (index == C1686R.styleable.CircularProgressDrawable_cpd_strokeColors) {
                TypedArray obtainTypedArray = context.getResources().obtainTypedArray(obtainStyledAttributes.getResourceId(index, 0));
                iArr = new int[obtainTypedArray.length()];
                for (int i4 = 0; i4 < obtainTypedArray.length(); i4++) {
                    iArr[i4] = obtainTypedArray.getColor(i4, 0);
                }
                obtainTypedArray.recycle();
                z = z;
                i2 = i2;
            } else if (index == C1686R.styleable.CircularProgressDrawable_cpd_strokeSecondaryColor) {
                this.mStrokeSecondaryColor = obtainStyledAttributes.getColor(index, 0);
                iArr = iArr;
                z = z;
                i2 = i2;
            } else if (index == C1686R.styleable.CircularProgressDrawable_cpd_reverse) {
                this.mReverse = obtainStyledAttributes.getBoolean(index, false);
                iArr = iArr;
                z = z;
                i2 = i2;
            } else if (index == C1686R.styleable.CircularProgressDrawable_cpd_rotateDuration) {
                this.mRotateDuration = obtainStyledAttributes.getInteger(index, 0);
                iArr = iArr;
                z = z;
                i2 = i2;
            } else if (index == C1686R.styleable.CircularProgressDrawable_cpd_transformDuration) {
                this.mTransformDuration = obtainStyledAttributes.getInteger(index, 0);
                iArr = iArr;
                z = z;
                i2 = i2;
            } else if (index == C1686R.styleable.CircularProgressDrawable_cpd_keepDuration) {
                this.mKeepDuration = obtainStyledAttributes.getInteger(index, 0);
                iArr = iArr;
                z = z;
                i2 = i2;
            } else if (index == C1686R.styleable.CircularProgressDrawable_cpd_transformInterpolator) {
                this.mTransformInterpolator = AnimationUtils.loadInterpolator(context, obtainStyledAttributes.getResourceId(index, 0));
                iArr = iArr;
                z = z;
                i2 = i2;
            } else if (index == C1686R.styleable.CircularProgressDrawable_pv_progressMode) {
                this.mProgressMode = obtainStyledAttributes.getInteger(index, 0);
                iArr = iArr;
                z = z;
                i2 = i2;
            } else if (index == C1686R.styleable.CircularProgressDrawable_cpd_inAnimDuration) {
                this.mInAnimationDuration = obtainStyledAttributes.getInteger(index, 0);
                iArr = iArr;
                z = z;
                i2 = i2;
            } else if (index == C1686R.styleable.CircularProgressDrawable_cpd_inStepColors) {
                TypedArray obtainTypedArray2 = context.getResources().obtainTypedArray(obtainStyledAttributes.getResourceId(index, 0));
                this.mInColors = new int[obtainTypedArray2.length()];
                for (int i5 = 0; i5 < obtainTypedArray2.length(); i5++) {
                    this.mInColors[i5] = obtainTypedArray2.getColor(i5, 0);
                }
                obtainTypedArray2.recycle();
                iArr = iArr;
                z = z;
                i2 = i2;
            } else if (index == C1686R.styleable.CircularProgressDrawable_cpd_inStepPercent) {
                this.mInStepPercent = obtainStyledAttributes.getFloat(index, 0.0f);
                iArr = iArr;
                z = z;
                i2 = i2;
            } else {
                iArr = iArr;
                z = z;
                i2 = i2;
                if (index == C1686R.styleable.CircularProgressDrawable_cpd_outAnimDuration) {
                    this.mOutAnimationDuration = obtainStyledAttributes.getInteger(index, 0);
                    i2 = i2;
                    z = z;
                    iArr = iArr;
                }
            }
        }
        obtainStyledAttributes.recycle();
        if (iArr != null) {
            this.mStrokeColors = iArr;
        } else if (z) {
            this.mStrokeColors = new int[]{i2};
        }
        if (this.mStrokeColorIndex >= this.mStrokeColors.length) {
            this.mStrokeColorIndex = 0;
        }
        invalidateSelf();
    }

    @Override // android.graphics.drawable.Drawable
    public void draw(Canvas canvas) {
        switch (this.mProgressMode) {
            case 0:
                drawDeterminate(canvas);
                return;
            case 1:
                drawIndeterminate(canvas);
                return;
            default:
                return;
        }
    }

    @Override // android.graphics.drawable.Drawable
    public int getOpacity() {
        return -3;
    }

    public float getProgress() {
        return this.mProgressPercent;
    }

    public int getProgressMode() {
        return this.mProgressMode;
    }

    public float getSecondaryProgress() {
        return this.mSecondaryProgressPercent;
    }

    @Override // android.graphics.drawable.Animatable
    public boolean isRunning() {
        return this.mRunState != 0;
    }

    @Override // android.graphics.drawable.Drawable
    public void scheduleSelf(Runnable runnable, long j) {
        if (this.mRunState == 0) {
            this.mRunState = this.mInAnimationDuration > 0 ? 1 : 3;
        }
        super.scheduleSelf(runnable, j);
    }

    @Override // android.graphics.drawable.Drawable
    public void setAlpha(int i) {
        this.mPaint.setAlpha(i);
    }

    @Override // android.graphics.drawable.Drawable
    public void setColorFilter(ColorFilter colorFilter) {
        this.mPaint.setColorFilter(colorFilter);
    }

    public void setProgress(float f) {
        float min = Math.min(1.0f, Math.max(0.0f, f));
        if (this.mProgressPercent != min) {
            this.mProgressPercent = min;
            if (isRunning()) {
                invalidateSelf();
            } else if (this.mProgressPercent != 0.0f) {
                start();
            }
        }
    }

    public void setProgressMode(int i) {
        if (this.mProgressMode != i) {
            this.mProgressMode = i;
            invalidateSelf();
        }
    }

    public void setSecondaryProgress(float f) {
        float min = Math.min(1.0f, Math.max(0.0f, f));
        if (this.mSecondaryProgressPercent != min) {
            this.mSecondaryProgressPercent = min;
            if (isRunning()) {
                invalidateSelf();
            } else if (this.mSecondaryProgressPercent != 0.0f) {
                start();
            }
        }
    }

    @Override // android.graphics.drawable.Animatable
    public void start() {
        start(this.mInAnimationDuration > 0);
    }

    @Override // android.graphics.drawable.Animatable
    public void stop() {
        stop(this.mOutAnimationDuration > 0);
    }
}

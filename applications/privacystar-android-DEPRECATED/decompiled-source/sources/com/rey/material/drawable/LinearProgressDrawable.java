package com.rey.material.drawable;

import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.Canvas;
import android.graphics.ColorFilter;
import android.graphics.DashPathEffect;
import android.graphics.Paint;
import android.graphics.Path;
import android.graphics.PathEffect;
import android.graphics.Rect;
import android.graphics.drawable.Animatable;
import android.graphics.drawable.Drawable;
import android.os.SystemClock;
import android.support.p001v4.view.ViewCompat;
import android.util.AttributeSet;
import android.util.TypedValue;
import android.view.animation.AnimationUtils;
import android.view.animation.DecelerateInterpolator;
import android.view.animation.Interpolator;
import com.rey.material.C1686R;
import com.rey.material.util.ColorUtil;
import com.rey.material.util.ThemeUtil;
import com.zendesk.service.HttpConstants;
/* loaded from: classes2-dex2jar.jar:com/rey/material/drawable/LinearProgressDrawable.class */
public class LinearProgressDrawable extends Drawable implements Animatable {
    public static final int ALIGN_BOTTOM = 2;
    public static final int ALIGN_CENTER = 1;
    public static final int ALIGN_TOP = 0;
    private static final int PROGRESS_STATE_KEEP_SHRINK = 3;
    private static final int PROGRESS_STATE_KEEP_STRETCH = 1;
    private static final int PROGRESS_STATE_SHRINK = 2;
    private static final int PROGRESS_STATE_STRETCH = 0;
    private static final int RUN_STATE_RUNNING = 3;
    private static final int RUN_STATE_STARTED = 2;
    private static final int RUN_STATE_STARTING = 1;
    private static final int RUN_STATE_STOPPED = 0;
    private static final int RUN_STATE_STOPPING = 4;
    private float mAnimTime;
    private int mInAnimationDuration;
    private int mKeepDuration;
    private long mLastProgressStateTime;
    private long mLastRunStateTime;
    private long mLastUpdateTime;
    private float mLineWidth;
    private int mMaxLineWidth;
    private float mMaxLineWidthPercent;
    private int mMinLineWidth;
    private float mMinLineWidthPercent;
    private int mOutAnimationDuration;
    private Paint mPaint;
    private Path mPath;
    private DashPathEffect mPathEffect;
    private int mProgressMode;
    private float mProgressPercent;
    private int mProgressState;
    private boolean mReverse;
    private int mRunState;
    private float mSecondaryProgressPercent;
    private float mStartLine;
    private int mStrokeColorIndex;
    private int[] mStrokeColors;
    private int mStrokeSecondaryColor;
    private int mStrokeSize;
    private int mTransformDuration;
    private Interpolator mTransformInterpolator;
    private int mTravelDuration;
    private final Runnable mUpdater;
    private int mVerticalAlign;

    /* loaded from: classes2-dex2jar.jar:com/rey/material/drawable/LinearProgressDrawable$Builder.class */
    public static class Builder {
        private int mInAnimationDuration;
        private int mKeepDuration;
        private int mMaxLineWidth;
        private float mMaxLineWidthPercent;
        private int mMinLineWidth;
        private float mMinLineWidthPercent;
        private int mOutAnimationDuration;
        private int mProgressMode;
        private float mProgressPercent;
        private boolean mReverse;
        private float mSecondaryProgressPercent;
        private int[] mStrokeColors;
        private int mStrokeSecondaryColor;
        private int mStrokeSize;
        private int mTransformDuration;
        private Interpolator mTransformInterpolator;
        private int mTravelDuration;
        private int mVerticalAlign;

        public Builder() {
            this.mProgressPercent = 0.0f;
            this.mSecondaryProgressPercent = 0.0f;
            this.mStrokeSize = 8;
            this.mVerticalAlign = 2;
            this.mReverse = false;
            this.mTravelDuration = 1000;
            this.mTransformDuration = 800;
            this.mKeepDuration = 200;
            this.mProgressMode = 1;
            this.mInAnimationDuration = HttpConstants.HTTP_BAD_REQUEST;
            this.mOutAnimationDuration = HttpConstants.HTTP_BAD_REQUEST;
        }

        public Builder(Context context, int i) {
            this(context, null, 0, i);
        }

        public Builder(Context context, AttributeSet attributeSet, int i, int i2) {
            this.mProgressPercent = 0.0f;
            this.mSecondaryProgressPercent = 0.0f;
            this.mStrokeSize = 8;
            this.mVerticalAlign = 2;
            this.mReverse = false;
            this.mTravelDuration = 1000;
            this.mTransformDuration = 800;
            this.mKeepDuration = 200;
            this.mProgressMode = 1;
            this.mInAnimationDuration = HttpConstants.HTTP_BAD_REQUEST;
            this.mOutAnimationDuration = HttpConstants.HTTP_BAD_REQUEST;
            TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, C1686R.styleable.LinearProgressDrawable, i, i2);
            progressPercent(obtainStyledAttributes.getFloat(C1686R.styleable.LinearProgressDrawable_pv_progress, 0.0f));
            secondaryProgressPercent(obtainStyledAttributes.getFloat(C1686R.styleable.LinearProgressDrawable_pv_secondaryProgress, 0.0f));
            TypedValue peekValue = obtainStyledAttributes.peekValue(C1686R.styleable.LinearProgressDrawable_lpd_maxLineWidth);
            if (peekValue == null) {
                maxLineWidth(0.75f);
            } else if (peekValue.type == 6) {
                maxLineWidth(obtainStyledAttributes.getFraction(C1686R.styleable.LinearProgressDrawable_lpd_maxLineWidth, 1, 1, 0.75f));
            } else {
                maxLineWidth(obtainStyledAttributes.getDimensionPixelSize(C1686R.styleable.LinearProgressDrawable_lpd_maxLineWidth, 0));
            }
            TypedValue peekValue2 = obtainStyledAttributes.peekValue(C1686R.styleable.LinearProgressDrawable_lpd_minLineWidth);
            if (peekValue2 == null) {
                minLineWidth(0.25f);
            } else if (peekValue2.type == 6) {
                minLineWidth(obtainStyledAttributes.getFraction(C1686R.styleable.LinearProgressDrawable_lpd_minLineWidth, 1, 1, 0.25f));
            } else {
                minLineWidth(obtainStyledAttributes.getDimensionPixelSize(C1686R.styleable.LinearProgressDrawable_lpd_minLineWidth, 0));
            }
            strokeSize(obtainStyledAttributes.getDimensionPixelSize(C1686R.styleable.LinearProgressDrawable_lpd_strokeSize, ThemeUtil.dpToPx(context, 4)));
            verticalAlign(obtainStyledAttributes.getInteger(C1686R.styleable.LinearProgressDrawable_lpd_verticalAlign, 2));
            strokeColors(obtainStyledAttributes.getColor(C1686R.styleable.LinearProgressDrawable_lpd_strokeColor, ThemeUtil.colorPrimary(context, ViewCompat.MEASURED_STATE_MASK)));
            int resourceId = obtainStyledAttributes.getResourceId(C1686R.styleable.LinearProgressDrawable_lpd_strokeColors, 0);
            if (resourceId != 0) {
                TypedArray obtainTypedArray = context.getResources().obtainTypedArray(resourceId);
                int[] iArr = new int[obtainTypedArray.length()];
                for (int i3 = 0; i3 < obtainTypedArray.length(); i3++) {
                    iArr[i3] = obtainTypedArray.getColor(i3, 0);
                }
                obtainTypedArray.recycle();
                strokeColors(iArr);
            }
            strokeSecondaryColor(obtainStyledAttributes.getColor(C1686R.styleable.LinearProgressDrawable_lpd_strokeSecondaryColor, 0));
            reverse(obtainStyledAttributes.getBoolean(C1686R.styleable.LinearProgressDrawable_lpd_reverse, false));
            travelDuration(obtainStyledAttributes.getInteger(C1686R.styleable.LinearProgressDrawable_lpd_travelDuration, context.getResources().getInteger(17694722)));
            transformDuration(obtainStyledAttributes.getInteger(C1686R.styleable.LinearProgressDrawable_lpd_transformDuration, context.getResources().getInteger(17694721)));
            keepDuration(obtainStyledAttributes.getInteger(C1686R.styleable.LinearProgressDrawable_lpd_keepDuration, context.getResources().getInteger(17694720)));
            int resourceId2 = obtainStyledAttributes.getResourceId(C1686R.styleable.LinearProgressDrawable_lpd_transformInterpolator, 0);
            if (resourceId2 != 0) {
                transformInterpolator(AnimationUtils.loadInterpolator(context, resourceId2));
            }
            progressMode(obtainStyledAttributes.getInteger(C1686R.styleable.LinearProgressDrawable_pv_progressMode, 1));
            inAnimDuration(obtainStyledAttributes.getInteger(C1686R.styleable.LinearProgressDrawable_lpd_inAnimDuration, context.getResources().getInteger(17694721)));
            outAnimDuration(obtainStyledAttributes.getInteger(C1686R.styleable.LinearProgressDrawable_lpd_outAnimDuration, context.getResources().getInteger(17694721)));
            obtainStyledAttributes.recycle();
        }

        public LinearProgressDrawable build() {
            if (this.mStrokeColors == null) {
                this.mStrokeColors = new int[]{-16737793};
            }
            if (this.mTransformInterpolator == null) {
                this.mTransformInterpolator = new DecelerateInterpolator();
            }
            return new LinearProgressDrawable(this.mProgressPercent, this.mSecondaryProgressPercent, this.mMaxLineWidth, this.mMaxLineWidthPercent, this.mMinLineWidth, this.mMinLineWidthPercent, this.mStrokeSize, this.mVerticalAlign, this.mStrokeColors, this.mStrokeSecondaryColor, this.mReverse, this.mTravelDuration, this.mTransformDuration, this.mKeepDuration, this.mTransformInterpolator, this.mProgressMode, this.mInAnimationDuration, this.mOutAnimationDuration);
        }

        public Builder inAnimDuration(int i) {
            this.mInAnimationDuration = i;
            return this;
        }

        public Builder keepDuration(int i) {
            this.mKeepDuration = i;
            return this;
        }

        public Builder maxLineWidth(float f) {
            this.mMaxLineWidthPercent = Math.max(0.0f, Math.min(1.0f, f));
            this.mMaxLineWidth = 0;
            return this;
        }

        public Builder maxLineWidth(int i) {
            this.mMaxLineWidth = i;
            return this;
        }

        public Builder minLineWidth(float f) {
            this.mMinLineWidthPercent = Math.max(0.0f, Math.min(1.0f, f));
            this.mMinLineWidth = 0;
            return this;
        }

        public Builder minLineWidth(int i) {
            this.mMinLineWidth = i;
            return this;
        }

        public Builder outAnimDuration(int i) {
            this.mOutAnimationDuration = i;
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

        public Builder travelDuration(int i) {
            this.mTravelDuration = i;
            return this;
        }

        public Builder verticalAlign(int i) {
            this.mVerticalAlign = i;
            return this;
        }
    }

    private LinearProgressDrawable(float f, float f2, int i, float f3, int i2, float f4, int i3, int i4, int[] iArr, int i5, boolean z, int i6, int i7, int i8, Interpolator interpolator, int i9, int i10, int i11) {
        this.mRunState = 0;
        this.mUpdater = new Runnable() { // from class: com.rey.material.drawable.LinearProgressDrawable.1
            @Override // java.lang.Runnable
            public void run() {
                LinearProgressDrawable.this.update();
            }
        };
        setProgress(f);
        setSecondaryProgress(f2);
        this.mMaxLineWidth = i;
        this.mMaxLineWidthPercent = f3;
        this.mMinLineWidth = i2;
        this.mMinLineWidthPercent = f4;
        this.mStrokeSize = i3;
        this.mVerticalAlign = i4;
        this.mStrokeColors = iArr;
        this.mStrokeSecondaryColor = i5;
        this.mReverse = z;
        this.mTravelDuration = i6;
        this.mTransformDuration = i7;
        this.mKeepDuration = i8;
        this.mTransformInterpolator = interpolator;
        this.mProgressMode = i9;
        this.mInAnimationDuration = i10;
        this.mOutAnimationDuration = i11;
        this.mPaint = new Paint();
        this.mPaint.setAntiAlias(true);
        this.mPaint.setStrokeCap(Paint.Cap.ROUND);
        this.mPaint.setStrokeJoin(Paint.Join.ROUND);
        this.mPath = new Path();
    }

    /* JADX WARN: Removed duplicated region for block: B:15:0x007f  */
    /* JADX WARN: Removed duplicated region for block: B:38:? A[RETURN, SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private void drawBuffer(android.graphics.Canvas r9) {
        /*
            Method dump skipped, instructions count: 492
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.rey.material.drawable.LinearProgressDrawable.drawBuffer(android.graphics.Canvas):void");
    }

    private void drawDeterminate(Canvas canvas) {
        Rect bounds;
        float f;
        int width = getBounds().width();
        float min = this.mRunState == 1 ? (this.mStrokeSize * ((float) Math.min(this.mInAnimationDuration, SystemClock.uptimeMillis() - this.mLastRunStateTime))) / this.mInAnimationDuration : this.mRunState == 4 ? (this.mStrokeSize * ((float) Math.max(0L, (this.mOutAnimationDuration - SystemClock.uptimeMillis()) + this.mLastRunStateTime))) / this.mOutAnimationDuration : this.mRunState != 0 ? this.mStrokeSize : 0.0f;
        if (min > 0.0f) {
            float f2 = width;
            float f3 = this.mProgressPercent * f2;
            switch (this.mVerticalAlign) {
                case 0:
                    f = min / 2.0f;
                    break;
                case 1:
                    f = bounds.height() / 2.0f;
                    break;
                case 2:
                    f = bounds.height() - (min / 2.0f);
                    break;
                default:
                    f = 0.0f;
                    break;
            }
            this.mPaint.setStrokeWidth(min);
            this.mPaint.setStyle(Paint.Style.STROKE);
            if (this.mProgressPercent != 1.0f) {
                this.mPaint.setColor(this.mStrokeSecondaryColor);
                if (this.mReverse) {
                    canvas.drawLine(0.0f, f, f2 - f3, f, this.mPaint);
                } else {
                    canvas.drawLine(f3, f, f2, f, this.mPaint);
                }
            }
            if (this.mProgressPercent != 0.0f) {
                this.mPaint.setColor(this.mStrokeColors[0]);
                if (this.mReverse) {
                    drawLinePath(canvas, f2 - f3, f, f2, f, this.mPaint);
                } else {
                    drawLinePath(canvas, 0.0f, f, f3, f, this.mPaint);
                }
            }
        }
    }

    private void drawIndeterminate(Canvas canvas) {
        Rect bounds;
        float f;
        int width = getBounds().width();
        float min = this.mRunState == 1 ? (this.mStrokeSize * ((float) Math.min(this.mInAnimationDuration, SystemClock.uptimeMillis() - this.mLastRunStateTime))) / this.mInAnimationDuration : this.mRunState == 4 ? (this.mStrokeSize * ((float) Math.max(0L, (this.mOutAnimationDuration - SystemClock.uptimeMillis()) + this.mLastRunStateTime))) / this.mOutAnimationDuration : this.mRunState != 0 ? this.mStrokeSize : 0.0f;
        if (min > 0.0f) {
            switch (this.mVerticalAlign) {
                case 0:
                    f = min / 2.0f;
                    break;
                case 1:
                    f = bounds.height() / 2.0f;
                    break;
                case 2:
                    f = bounds.height() - (min / 2.0f);
                    break;
                default:
                    f = 0.0f;
                    break;
            }
            this.mPaint.setStrokeWidth(min);
            this.mPaint.setStyle(Paint.Style.STROKE);
            float f2 = width;
            float offset = offset(this.mStartLine, this.mLineWidth, f2);
            if (this.mReverse) {
                if (offset <= this.mStartLine) {
                    this.mPaint.setColor(this.mStrokeSecondaryColor);
                    if (offset > 0.0f) {
                        canvas.drawLine(0.0f, f, offset, f, this.mPaint);
                    }
                    if (this.mStartLine < f2) {
                        canvas.drawLine(this.mStartLine, f, f2, f, this.mPaint);
                    }
                    this.mPaint.setColor(getIndeterminateStrokeColor());
                    drawLinePath(canvas, offset, f, this.mStartLine, f, this.mPaint);
                    return;
                }
                this.mPaint.setColor(this.mStrokeSecondaryColor);
                canvas.drawLine(this.mStartLine, f, offset, f, this.mPaint);
                this.mPaint.setColor(getIndeterminateStrokeColor());
                this.mPath.reset();
                if (this.mStartLine > 0.0f) {
                    this.mPath.moveTo(0.0f, f);
                    this.mPath.lineTo(this.mStartLine, f);
                }
                if (offset < f2) {
                    this.mPath.moveTo(offset, f);
                    this.mPath.lineTo(f2, f);
                }
                canvas.drawPath(this.mPath, this.mPaint);
            } else if (offset >= this.mStartLine) {
                this.mPaint.setColor(this.mStrokeSecondaryColor);
                if (this.mStartLine > 0.0f) {
                    canvas.drawLine(0.0f, f, this.mStartLine, f, this.mPaint);
                }
                if (offset < f2) {
                    canvas.drawLine(offset, f, f2, f, this.mPaint);
                }
                this.mPaint.setColor(getIndeterminateStrokeColor());
                drawLinePath(canvas, this.mStartLine, f, offset, f, this.mPaint);
            } else {
                this.mPaint.setColor(this.mStrokeSecondaryColor);
                canvas.drawLine(offset, f, this.mStartLine, f, this.mPaint);
                this.mPaint.setColor(getIndeterminateStrokeColor());
                this.mPath.reset();
                if (offset > 0.0f) {
                    this.mPath.moveTo(0.0f, f);
                    this.mPath.lineTo(offset, f);
                }
                if (this.mStartLine < f2) {
                    this.mPath.moveTo(this.mStartLine, f);
                    this.mPath.lineTo(f2, f);
                }
                canvas.drawPath(this.mPath, this.mPaint);
            }
        }
    }

    private void drawLinePath(Canvas canvas, float f, float f2, float f3, float f4, Paint paint) {
        this.mPath.reset();
        this.mPath.moveTo(f, f2);
        this.mPath.lineTo(f3, f4);
        canvas.drawPath(this.mPath, paint);
    }

    private void drawQuery(Canvas canvas) {
        Rect bounds;
        float f;
        int width = getBounds().width();
        float min = this.mRunState == 1 ? (this.mStrokeSize * ((float) Math.min(this.mInAnimationDuration, SystemClock.uptimeMillis() - this.mLastRunStateTime))) / this.mInAnimationDuration : this.mRunState == 4 ? (this.mStrokeSize * ((float) Math.max(0L, (this.mOutAnimationDuration - SystemClock.uptimeMillis()) + this.mLastRunStateTime))) / this.mOutAnimationDuration : this.mRunState != 0 ? this.mStrokeSize : 0.0f;
        if (min > 0.0f) {
            switch (this.mVerticalAlign) {
                case 0:
                    f = min / 2.0f;
                    break;
                case 1:
                    f = bounds.height() / 2.0f;
                    break;
                case 2:
                    f = bounds.height() - (min / 2.0f);
                    break;
                default:
                    f = 0.0f;
                    break;
            }
            this.mPaint.setStrokeWidth(min);
            this.mPaint.setStyle(Paint.Style.STROKE);
            if (this.mProgressPercent != 1.0f) {
                this.mPaint.setColor(this.mStrokeSecondaryColor);
                float f2 = width;
                canvas.drawLine(0.0f, f, f2, f, this.mPaint);
                if (this.mAnimTime < 1.0f) {
                    float max = Math.max(0.0f, Math.min(f2, this.mStartLine + this.mLineWidth));
                    this.mPaint.setColor(getQueryStrokeColor());
                    drawLinePath(canvas, this.mStartLine, f, max, f, this.mPaint);
                }
            }
            if (this.mProgressPercent != 0.0f) {
                float f3 = width;
                float f4 = this.mProgressPercent * f3;
                this.mPaint.setColor(this.mStrokeColors[0]);
                if (this.mReverse) {
                    drawLinePath(canvas, f3 - f4, f, f3, f, this.mPaint);
                } else {
                    drawLinePath(canvas, 0.0f, f, f4, f, this.mPaint);
                }
            }
        }
    }

    private int getIndeterminateStrokeColor() {
        if (this.mProgressState != 3 || this.mStrokeColors.length == 1) {
            return this.mStrokeColors[this.mStrokeColorIndex];
        }
        return ColorUtil.getMiddleColor(this.mStrokeColors[(this.mStrokeColorIndex == 0 ? this.mStrokeColors.length : this.mStrokeColorIndex) - 1], this.mStrokeColors[this.mStrokeColorIndex], Math.max(0.0f, Math.min(1.0f, ((float) (SystemClock.uptimeMillis() - this.mLastProgressStateTime)) / this.mKeepDuration)));
    }

    private PathEffect getPathEffect() {
        if (this.mPathEffect == null) {
            this.mPathEffect = new DashPathEffect(new float[]{0.1f, this.mStrokeSize * 2}, 0.0f);
        }
        return this.mPathEffect;
    }

    private int getQueryStrokeColor() {
        return ColorUtil.getColor(this.mStrokeColors[0], this.mAnimTime);
    }

    private float offset(float f, float f2, float f3) {
        float f4 = f + f2;
        return f4 > f3 ? f4 - f3 : f4 < 0.0f ? f3 + f4 : f4;
    }

    private void resetAnimation() {
        this.mLastUpdateTime = SystemClock.uptimeMillis();
        this.mLastProgressStateTime = this.mLastUpdateTime;
        float f = 0.0f;
        float f2 = 0.0f;
        if (this.mProgressMode == 1) {
            if (this.mReverse) {
                f2 = getBounds().width();
            }
            this.mStartLine = f2;
            this.mStrokeColorIndex = 0;
            this.mLineWidth = this.mReverse ? -this.mMinLineWidth : this.mMinLineWidth;
            this.mProgressState = 0;
        } else if (this.mProgressMode == 2) {
            this.mStartLine = 0.0f;
        } else if (this.mProgressMode == 3) {
            if (!this.mReverse) {
                f = getBounds().width();
            }
            this.mStartLine = f;
            this.mStrokeColorIndex = 0;
            this.mLineWidth = !this.mReverse ? -this.mMaxLineWidth : this.mMaxLineWidth;
        }
    }

    private void start(boolean z) {
        if (!isRunning()) {
            if (z) {
                this.mRunState = 1;
                this.mLastRunStateTime = SystemClock.uptimeMillis();
            }
            resetAnimation();
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
            case 2:
                updateBuffer();
                return;
            case 3:
                updateQuery();
                return;
            default:
                return;
        }
    }

    private void updateBuffer() {
        long uptimeMillis = SystemClock.uptimeMillis();
        float f = this.mStrokeSize * 2;
        this.mStartLine += (((float) (uptimeMillis - this.mLastUpdateTime)) * f) / this.mTravelDuration;
        while (this.mStartLine > f) {
            this.mStartLine -= f;
        }
        this.mLastUpdateTime = uptimeMillis;
        switch (this.mProgressState) {
            case 0:
                if (this.mTransformDuration > 0) {
                    float f2 = ((float) (uptimeMillis - this.mLastProgressStateTime)) / this.mTransformDuration;
                    this.mLineWidth = this.mTransformInterpolator.getInterpolation(f2) * this.mStrokeSize;
                    if (f2 > 1.0f) {
                        this.mLineWidth = this.mStrokeSize;
                        this.mProgressState = 1;
                        this.mLastProgressStateTime = uptimeMillis;
                        break;
                    }
                } else {
                    this.mProgressState = 1;
                    this.mLastProgressStateTime = uptimeMillis;
                    break;
                }
                break;
            case 1:
                if (uptimeMillis - this.mLastProgressStateTime > this.mKeepDuration) {
                    this.mProgressState = 2;
                    this.mLastProgressStateTime = uptimeMillis;
                    break;
                }
                break;
            case 2:
                if (this.mTransformDuration > 0) {
                    float f3 = ((float) (uptimeMillis - this.mLastProgressStateTime)) / this.mTransformDuration;
                    this.mLineWidth = (1.0f - this.mTransformInterpolator.getInterpolation(f3)) * this.mStrokeSize;
                    if (f3 > 1.0f) {
                        this.mLineWidth = 0.0f;
                        this.mProgressState = 3;
                        this.mLastProgressStateTime = uptimeMillis;
                        break;
                    }
                } else {
                    this.mProgressState = 3;
                    this.mLastProgressStateTime = uptimeMillis;
                    break;
                }
                break;
            case 3:
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

    private void updateDeterminate() {
        long uptimeMillis = SystemClock.uptimeMillis();
        if (this.mRunState == 1) {
            if (uptimeMillis - this.mLastRunStateTime > this.mInAnimationDuration) {
                this.mRunState = 2;
                return;
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
        int width = getBounds().width();
        long uptimeMillis = SystemClock.uptimeMillis();
        float f = (float) (uptimeMillis - this.mLastUpdateTime);
        float f2 = width;
        float f3 = (f * f2) / this.mTravelDuration;
        float f4 = f3;
        if (this.mReverse) {
            f4 = -f3;
        }
        this.mLastUpdateTime = uptimeMillis;
        switch (this.mProgressState) {
            case 0:
                if (this.mTransformDuration > 0) {
                    float f5 = ((float) (uptimeMillis - this.mLastProgressStateTime)) / this.mTransformDuration;
                    float f6 = this.mMaxLineWidth == 0 ? this.mMaxLineWidthPercent * f2 : this.mMaxLineWidth;
                    float f7 = this.mMinLineWidth == 0 ? this.mMinLineWidthPercent * f2 : this.mMinLineWidth;
                    this.mStartLine = offset(this.mStartLine, f4, f2);
                    this.mLineWidth = (this.mTransformInterpolator.getInterpolation(f5) * (f6 - f7)) + f7;
                    if (this.mReverse) {
                        this.mLineWidth = -this.mLineWidth;
                    }
                    if (f5 > 1.0f) {
                        float f8 = f6;
                        if (this.mReverse) {
                            f8 = -f6;
                        }
                        this.mLineWidth = f8;
                        this.mProgressState = 1;
                        this.mLastProgressStateTime = uptimeMillis;
                        break;
                    }
                } else {
                    this.mLineWidth = this.mMinLineWidth == 0 ? this.mMinLineWidthPercent * f2 : this.mMinLineWidth;
                    if (this.mReverse) {
                        this.mLineWidth = -this.mLineWidth;
                    }
                    this.mStartLine = offset(this.mStartLine, f4, f2);
                    this.mProgressState = 1;
                    this.mLastProgressStateTime = uptimeMillis;
                    break;
                }
                break;
            case 1:
                this.mStartLine = offset(this.mStartLine, f4, f2);
                if (uptimeMillis - this.mLastProgressStateTime > this.mKeepDuration) {
                    this.mProgressState = 2;
                    this.mLastProgressStateTime = uptimeMillis;
                    break;
                }
                break;
            case 2:
                if (this.mTransformDuration > 0) {
                    float f9 = ((float) (uptimeMillis - this.mLastProgressStateTime)) / this.mTransformDuration;
                    float f10 = this.mMaxLineWidth == 0 ? this.mMaxLineWidthPercent * f2 : this.mMaxLineWidth;
                    float f11 = this.mMinLineWidth == 0 ? this.mMinLineWidthPercent * f2 : this.mMinLineWidth;
                    float interpolation = ((1.0f - this.mTransformInterpolator.getInterpolation(f9)) * (f10 - f11)) + f11;
                    float f12 = interpolation;
                    if (this.mReverse) {
                        f12 = -interpolation;
                    }
                    this.mStartLine = offset(this.mStartLine, (f4 + this.mLineWidth) - f12, f2);
                    this.mLineWidth = f12;
                    if (f9 > 1.0f) {
                        float f13 = f11;
                        if (this.mReverse) {
                            f13 = -f11;
                        }
                        this.mLineWidth = f13;
                        this.mProgressState = 3;
                        this.mLastProgressStateTime = uptimeMillis;
                        this.mStrokeColorIndex = (this.mStrokeColorIndex + 1) % this.mStrokeColors.length;
                        break;
                    }
                } else {
                    this.mLineWidth = this.mMinLineWidth == 0 ? this.mMinLineWidthPercent * f2 : this.mMinLineWidth;
                    if (this.mReverse) {
                        this.mLineWidth = -this.mLineWidth;
                    }
                    this.mStartLine = offset(this.mStartLine, f4, f2);
                    this.mProgressState = 3;
                    this.mLastProgressStateTime = uptimeMillis;
                    this.mStrokeColorIndex = (this.mStrokeColorIndex + 1) % this.mStrokeColors.length;
                    break;
                }
                break;
            case 3:
                this.mStartLine = offset(this.mStartLine, f4, f2);
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

    private void updateQuery() {
        long uptimeMillis = SystemClock.uptimeMillis();
        this.mAnimTime = ((float) (uptimeMillis - this.mLastProgressStateTime)) / this.mTravelDuration;
        boolean z = this.mRunState == 4 || this.mProgressPercent == 0.0f || this.mAnimTime < 1.0f;
        if (this.mAnimTime > 1.0f) {
            this.mLastProgressStateTime = Math.round(((float) uptimeMillis) - ((this.mAnimTime - 1.0f) * this.mTravelDuration));
            this.mAnimTime -= 1.0f;
        }
        if (z && this.mRunState != 4) {
            int width = getBounds().width();
            float f = this.mMaxLineWidth == 0 ? width * this.mMaxLineWidthPercent : this.mMaxLineWidth;
            float f2 = this.mMinLineWidth == 0 ? width * this.mMinLineWidthPercent : this.mMinLineWidth;
            this.mLineWidth = (this.mTransformInterpolator.getInterpolation(this.mAnimTime) * (f2 - f)) + f;
            if (this.mReverse) {
                this.mLineWidth = -this.mLineWidth;
            }
            this.mStartLine = this.mReverse ? this.mTransformInterpolator.getInterpolation(this.mAnimTime) * (width + f2) : ((1.0f - this.mTransformInterpolator.getInterpolation(this.mAnimTime)) * (width + f2)) - f2;
        }
        if (this.mRunState == 1) {
            if (uptimeMillis - this.mLastRunStateTime > this.mInAnimationDuration) {
                this.mRunState = 3;
            }
        } else if (this.mRunState == 4 && uptimeMillis - this.mLastRunStateTime > this.mOutAnimationDuration) {
            stop(false);
            return;
        }
        if (isRunning()) {
            if (z) {
                scheduleSelf(this.mUpdater, SystemClock.uptimeMillis() + 16);
            } else if (this.mRunState == 3) {
                this.mRunState = 2;
            }
        }
        invalidateSelf();
    }

    public void applyStyle(Context context, int i) {
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(i, C1686R.styleable.LinearProgressDrawable);
        int indexCount = obtainStyledAttributes.getIndexCount();
        int[] iArr = null;
        boolean z = false;
        int i2 = 0;
        for (int i3 = 0; i3 < indexCount; i3++) {
            int index = obtainStyledAttributes.getIndex(i3);
            if (index == C1686R.styleable.LinearProgressDrawable_pv_progress) {
                setProgress(obtainStyledAttributes.getFloat(index, 0.0f));
                iArr = iArr;
                z = z;
                i2 = i2;
            } else if (index == C1686R.styleable.LinearProgressDrawable_pv_secondaryProgress) {
                setSecondaryProgress(obtainStyledAttributes.getFloat(index, 0.0f));
                iArr = iArr;
                z = z;
                i2 = i2;
            } else if (index == C1686R.styleable.LinearProgressDrawable_lpd_maxLineWidth) {
                if (obtainStyledAttributes.peekValue(index).type == 6) {
                    this.mMaxLineWidthPercent = obtainStyledAttributes.getFraction(index, 1, 1, 0.75f);
                    this.mMaxLineWidth = 0;
                    iArr = iArr;
                    z = z;
                    i2 = i2;
                } else {
                    this.mMaxLineWidth = obtainStyledAttributes.getDimensionPixelSize(index, 0);
                    this.mMaxLineWidthPercent = 0.0f;
                    iArr = iArr;
                    z = z;
                    i2 = i2;
                }
            } else if (index == C1686R.styleable.LinearProgressDrawable_lpd_minLineWidth) {
                if (obtainStyledAttributes.peekValue(index).type == 6) {
                    this.mMinLineWidthPercent = obtainStyledAttributes.getFraction(index, 1, 1, 0.25f);
                    this.mMinLineWidth = 0;
                    iArr = iArr;
                    z = z;
                    i2 = i2;
                } else {
                    this.mMinLineWidth = obtainStyledAttributes.getDimensionPixelSize(index, 0);
                    this.mMinLineWidthPercent = 0.0f;
                    iArr = iArr;
                    z = z;
                    i2 = i2;
                }
            } else if (index == C1686R.styleable.LinearProgressDrawable_lpd_strokeSize) {
                this.mStrokeSize = obtainStyledAttributes.getDimensionPixelSize(index, 0);
                iArr = iArr;
                z = z;
                i2 = i2;
            } else if (index == C1686R.styleable.LinearProgressDrawable_lpd_verticalAlign) {
                this.mVerticalAlign = obtainStyledAttributes.getInteger(index, 0);
                iArr = iArr;
                z = z;
                i2 = i2;
            } else if (index == C1686R.styleable.LinearProgressDrawable_lpd_strokeColor) {
                i2 = obtainStyledAttributes.getColor(index, 0);
                z = true;
                iArr = iArr;
            } else if (index == C1686R.styleable.LinearProgressDrawable_lpd_strokeColors) {
                TypedArray obtainTypedArray = context.getResources().obtainTypedArray(obtainStyledAttributes.getResourceId(index, 0));
                iArr = new int[obtainTypedArray.length()];
                for (int i4 = 0; i4 < obtainTypedArray.length(); i4++) {
                    iArr[i4] = obtainTypedArray.getColor(i4, 0);
                }
                obtainTypedArray.recycle();
                z = z;
                i2 = i2;
            } else if (index == C1686R.styleable.LinearProgressDrawable_lpd_strokeSecondaryColor) {
                this.mStrokeSecondaryColor = obtainStyledAttributes.getColor(index, 0);
                iArr = iArr;
                z = z;
                i2 = i2;
            } else if (index == C1686R.styleable.LinearProgressDrawable_lpd_reverse) {
                this.mReverse = obtainStyledAttributes.getBoolean(index, false);
                iArr = iArr;
                z = z;
                i2 = i2;
            } else if (index == C1686R.styleable.LinearProgressDrawable_lpd_travelDuration) {
                this.mTravelDuration = obtainStyledAttributes.getInteger(index, 0);
                iArr = iArr;
                z = z;
                i2 = i2;
            } else if (index == C1686R.styleable.LinearProgressDrawable_lpd_transformDuration) {
                this.mTransformDuration = obtainStyledAttributes.getInteger(index, 0);
                iArr = iArr;
                z = z;
                i2 = i2;
            } else if (index == C1686R.styleable.LinearProgressDrawable_lpd_keepDuration) {
                this.mKeepDuration = obtainStyledAttributes.getInteger(index, 0);
                iArr = iArr;
                z = z;
                i2 = i2;
            } else if (index == C1686R.styleable.LinearProgressDrawable_lpd_transformInterpolator) {
                this.mTransformInterpolator = AnimationUtils.loadInterpolator(context, obtainStyledAttributes.getResourceId(index, 0));
                iArr = iArr;
                z = z;
                i2 = i2;
            } else if (index == C1686R.styleable.LinearProgressDrawable_pv_progressMode) {
                this.mProgressMode = obtainStyledAttributes.getInteger(index, 0);
                iArr = iArr;
                z = z;
                i2 = i2;
            } else if (index == C1686R.styleable.LinearProgressDrawable_lpd_inAnimDuration) {
                this.mInAnimationDuration = obtainStyledAttributes.getInteger(index, 0);
                iArr = iArr;
                z = z;
                i2 = i2;
            } else {
                iArr = iArr;
                z = z;
                i2 = i2;
                if (index == C1686R.styleable.LinearProgressDrawable_lpd_outAnimDuration) {
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
            case 2:
                drawBuffer(canvas);
                return;
            case 3:
                drawQuery(canvas);
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

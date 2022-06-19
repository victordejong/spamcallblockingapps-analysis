package com.telguarder.helpers.p022ui.loadingButton;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.animation.AnimatorSet;
import android.animation.ValueAnimator;
import android.graphics.Canvas;
import android.graphics.ColorFilter;
import android.graphics.Paint;
import android.graphics.Rect;
import android.graphics.RectF;
import android.graphics.drawable.Animatable;
import android.graphics.drawable.Drawable;
import android.view.View;
import android.view.animation.AccelerateDecelerateInterpolator;
import android.view.animation.Interpolator;
import android.view.animation.LinearInterpolator;
/* renamed from: com.telguarder.helpers.ui.loadingButton.CircularAnimatedDrawable */
/* loaded from: classes2-dex2jar.jar:com/telguarder/helpers/ui/loadingButton/CircularAnimatedDrawable.class */
public class CircularAnimatedDrawable extends Drawable implements Animatable {
    private static final int ANGLE_ANIMATOR_DURATION = 2000;
    public static final int MAX_PROGRESS = 100;
    public static final int MIN_PROGRESS = 0;
    private static final int PROGRESS_ANIMATOR_DURATION = 200;
    private static final int SWEEP_ANIMATOR_DURATION = 700;
    private View mAnimatedView;
    private float mBorderWidth;
    private float mCurrentGlobalAngle;
    private float mCurrentGlobalAngleOffset;
    private float mCurrentSweepAngle;
    private boolean mModeAppearing;
    private Paint mPaint;
    private boolean mRunning;
    private ValueAnimator mValueAnimatorAngle;
    private ValueAnimator mValueAnimatorProgress;
    private ValueAnimator mValueAnimatorSweep;
    private int progress;
    private float shownProgress;
    private static final Interpolator ANGLE_INTERPOLATOR = new LinearInterpolator();
    private static final Interpolator SWEEP_INTERPOLATOR = new AccelerateDecelerateInterpolator();
    private static final Float MIN_SWEEP_ANGLE = Float.valueOf(50.0f);
    private final RectF fBounds = new RectF();
    private boolean shouldDraw = true;
    private AnimatorSet mAnimatorSet = new AnimatorSet();

    public CircularAnimatedDrawable(View view, float f, int i) {
        this.mAnimatedView = view;
        this.mBorderWidth = f;
        Paint paint = new Paint();
        this.mPaint = paint;
        paint.setAntiAlias(true);
        this.mPaint.setStyle(Paint.Style.STROKE);
        this.mPaint.setStrokeWidth(f);
        this.mPaint.setColor(i);
        setupAnimations();
    }

    private void setupAnimations() {
        ValueAnimator ofFloat = ValueAnimator.ofFloat(0.0f, 360.0f);
        this.mValueAnimatorAngle = ofFloat;
        ofFloat.setInterpolator(ANGLE_INTERPOLATOR);
        this.mValueAnimatorAngle.setDuration(2000L);
        this.mValueAnimatorAngle.setRepeatCount(-1);
        this.mValueAnimatorAngle.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: com.telguarder.helpers.ui.loadingButton.CircularAnimatedDrawable.1
            @Override // android.animation.ValueAnimator.AnimatorUpdateListener
            public void onAnimationUpdate(ValueAnimator valueAnimator) {
                CircularAnimatedDrawable.this.mCurrentGlobalAngle = ((Float) valueAnimator.getAnimatedValue()).floatValue();
            }
        });
        ValueAnimator ofFloat2 = ValueAnimator.ofFloat(0.0f, 360.0f - (MIN_SWEEP_ANGLE.floatValue() * 2.0f));
        this.mValueAnimatorSweep = ofFloat2;
        ofFloat2.setInterpolator(SWEEP_INTERPOLATOR);
        this.mValueAnimatorSweep.setDuration(700L);
        this.mValueAnimatorSweep.setRepeatCount(-1);
        this.mValueAnimatorSweep.addListener(new AnimatorListenerAdapter() { // from class: com.telguarder.helpers.ui.loadingButton.CircularAnimatedDrawable.2
            @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
            public void onAnimationRepeat(Animator animator) {
                CircularAnimatedDrawable.this.toggleAppearingMode();
                CircularAnimatedDrawable.this.shouldDraw = false;
            }
        });
        this.mValueAnimatorSweep.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: com.telguarder.helpers.ui.loadingButton.CircularAnimatedDrawable.3
            @Override // android.animation.ValueAnimator.AnimatorUpdateListener
            public void onAnimationUpdate(ValueAnimator valueAnimator) {
                CircularAnimatedDrawable.this.mCurrentSweepAngle = ((Float) valueAnimator.getAnimatedValue()).floatValue();
                if (CircularAnimatedDrawable.this.mCurrentSweepAngle < 5.0f) {
                    CircularAnimatedDrawable.this.shouldDraw = true;
                }
                if (CircularAnimatedDrawable.this.shouldDraw) {
                    CircularAnimatedDrawable.this.mAnimatedView.invalidate();
                }
            }
        });
    }

    public void toggleAppearingMode() {
        boolean z = !this.mModeAppearing;
        this.mModeAppearing = z;
        if (z) {
            this.mCurrentGlobalAngleOffset = (this.mCurrentGlobalAngleOffset + (MIN_SWEEP_ANGLE.floatValue() * 2.0f)) % 360.0f;
        }
    }

    public void dispose() {
        ValueAnimator valueAnimator = this.mValueAnimatorAngle;
        if (valueAnimator != null) {
            valueAnimator.end();
            this.mValueAnimatorAngle.removeAllUpdateListeners();
            this.mValueAnimatorAngle.cancel();
        }
        this.mValueAnimatorAngle = null;
        ValueAnimator valueAnimator2 = this.mValueAnimatorSweep;
        if (valueAnimator2 != null) {
            valueAnimator2.end();
            this.mValueAnimatorSweep.removeAllUpdateListeners();
            this.mValueAnimatorSweep.cancel();
        }
        this.mValueAnimatorSweep = null;
        ValueAnimator valueAnimator3 = this.mValueAnimatorProgress;
        if (valueAnimator3 != null) {
            if (valueAnimator3.isRunning()) {
                this.mValueAnimatorProgress.end();
            }
            this.mValueAnimatorProgress.removeAllUpdateListeners();
            this.mValueAnimatorProgress.cancel();
        }
        AnimatorSet animatorSet = this.mAnimatorSet;
        if (animatorSet != null) {
            animatorSet.end();
            this.mAnimatorSet.cancel();
        }
    }

    @Override // android.graphics.drawable.Drawable
    public void draw(Canvas canvas) {
        float f;
        float f2 = this.mCurrentGlobalAngle - this.mCurrentGlobalAngleOffset;
        float f3 = this.mCurrentSweepAngle;
        int i = this.progress;
        if (i >= 0 && i <= 100) {
            f = this.shownProgress;
            f2 = -90.0f;
        } else if (!this.mModeAppearing) {
            f2 += f3;
            f = (360.0f - f3) - MIN_SWEEP_ANGLE.floatValue();
        } else {
            f = f3 + MIN_SWEEP_ANGLE.floatValue();
        }
        canvas.drawArc(this.fBounds, f2, f, false, this.mPaint);
    }

    @Override // android.graphics.drawable.Drawable
    public int getOpacity() {
        return -2;
    }

    @Override // android.graphics.drawable.Animatable
    public boolean isRunning() {
        return this.mRunning;
    }

    @Override // android.graphics.drawable.Drawable
    protected void onBoundsChange(Rect rect) {
        super.onBoundsChange(rect);
        this.fBounds.left = rect.left + (this.mBorderWidth / 2.0f) + 0.5f;
        this.fBounds.right = (rect.right - (this.mBorderWidth / 2.0f)) - 0.5f;
        this.fBounds.top = rect.top + (this.mBorderWidth / 2.0f) + 0.5f;
        this.fBounds.bottom = (rect.bottom - (this.mBorderWidth / 2.0f)) - 0.5f;
    }

    @Override // android.graphics.drawable.Drawable
    public void setAlpha(int i) {
        this.mPaint.setAlpha(i);
    }

    @Override // android.graphics.drawable.Drawable
    public void setColorFilter(ColorFilter colorFilter) {
        this.mPaint.setColorFilter(colorFilter);
    }

    public void setLoadingBarColor(int i) {
        this.mPaint.setColor(i);
    }

    public void setProgress(int i) {
        if (this.progress == i) {
            return;
        }
        this.progress = i;
        if (i < 0) {
            this.shownProgress = 0.0f;
        }
        ValueAnimator valueAnimator = this.mValueAnimatorProgress;
        if (valueAnimator == null) {
            ValueAnimator ofFloat = ValueAnimator.ofFloat(this.shownProgress, i * 3.6f);
            this.mValueAnimatorProgress = ofFloat;
            ofFloat.setInterpolator(SWEEP_INTERPOLATOR);
            this.mValueAnimatorProgress.setDuration(200L);
            this.mValueAnimatorProgress.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: com.telguarder.helpers.ui.loadingButton.CircularAnimatedDrawable.4
                @Override // android.animation.ValueAnimator.AnimatorUpdateListener
                public void onAnimationUpdate(ValueAnimator valueAnimator2) {
                    CircularAnimatedDrawable.this.shownProgress = ((Float) valueAnimator2.getAnimatedValue()).floatValue();
                    CircularAnimatedDrawable.this.mAnimatedView.invalidate();
                }
            });
        } else {
            if (valueAnimator.isRunning()) {
                this.mValueAnimatorProgress.cancel();
            }
            this.mValueAnimatorProgress.setFloatValues(this.shownProgress, i * 3.6f);
        }
        if (!isRunning() || i < 0) {
            return;
        }
        this.mValueAnimatorProgress.start();
    }

    @Override // android.graphics.drawable.Animatable
    public void start() {
        if (isRunning()) {
            return;
        }
        this.mRunning = true;
        this.mAnimatorSet.playTogether(this.mValueAnimatorAngle, this.mValueAnimatorSweep);
        this.mAnimatorSet.start();
        ValueAnimator valueAnimator = this.mValueAnimatorProgress;
        if (valueAnimator == null || valueAnimator.isRunning()) {
            return;
        }
        this.mValueAnimatorProgress.start();
    }

    @Override // android.graphics.drawable.Animatable
    public void stop() {
        if (!isRunning()) {
            return;
        }
        this.mRunning = false;
        this.mAnimatorSet.cancel();
    }
}

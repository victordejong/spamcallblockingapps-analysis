package com.razorpay;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.animation.AnimatorSet;
import android.animation.ValueAnimator;
import android.content.Context;
import android.graphics.Canvas;
import android.graphics.Color;
import android.graphics.Paint;
import android.graphics.RectF;
import android.util.AttributeSet;
import android.util.TypedValue;
import android.view.View;
import android.view.animation.DecelerateInterpolator;
import android.view.animation.LinearInterpolator;
import com.mopub.mobileads.AdData;
import p193e.p1432d.p1439c.p1440a.C22128a;
/* loaded from: classes3-dex2jar.jar:com/razorpay/CircularProgressView.class */
public class CircularProgressView extends View {
    private static final float INDETERMINANT_MIN_SWEEP = 15.0f;
    private float actualProgress;
    private int animDuration;
    private int animSteps;
    private int animSwoopDuration;
    private int animSyncDuration;
    private boolean autostartAnimation;
    private RectF bounds;
    private int color;
    private Context context;
    private float currentProgress;
    private AnimatorSet indeterminateAnimator;
    private float indeterminateRotateOffset;
    private float indeterminateSweep;
    private float initialStartAngle;
    private boolean isIndeterminate;
    private float maxProgress;
    private Paint paint;
    private ValueAnimator progressAnimator;
    private int size = 0;
    private float startAngle;
    private ValueAnimator startAngleRotate;
    private int thickness;

    public CircularProgressView(Context context) {
        super(context);
        init(null, 0, context);
    }

    public CircularProgressView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        init(attributeSet, 0, context);
    }

    public CircularProgressView(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        init(attributeSet, i, context);
    }

    private int convertDPtoInt(Context context, int i) {
        return (int) TypedValue.applyDimension(1, i, context.getResources().getDisplayMetrics());
    }

    private AnimatorSet createIndeterminateAnimator(float f) {
        int i = this.animSteps;
        final float f2 = (((i - 1) * 360.0f) / i) + 15.0f;
        final float m8646a = C22128a.m8646a(f2, 15.0f, f, -90.0f);
        ValueAnimator ofFloat = ValueAnimator.ofFloat(15.0f, f2);
        ofFloat.setDuration((this.animDuration / this.animSteps) / 2);
        ofFloat.setInterpolator(new DecelerateInterpolator(1.0f));
        ofFloat.addUpdateListener(new v__i_(this));
        int i2 = this.animSteps;
        float f3 = (f * 720.0f) / i2;
        float f4 = (0.5f + f) * 720.0f;
        ValueAnimator ofFloat2 = ValueAnimator.ofFloat(f3, f4 / i2);
        ofFloat2.setDuration((this.animDuration / this.animSteps) / 2);
        ofFloat2.setInterpolator(new LinearInterpolator());
        ofFloat2.addUpdateListener(new r__Q_(this));
        ValueAnimator ofFloat3 = ValueAnimator.ofFloat(m8646a, (m8646a + f2) - 15.0f);
        ofFloat3.setDuration((this.animDuration / this.animSteps) / 2);
        ofFloat3.setInterpolator(new DecelerateInterpolator(1.0f));
        ofFloat3.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: com.razorpay.a$_G$
            @Override // android.animation.ValueAnimator.AnimatorUpdateListener
            public final void onAnimationUpdate(ValueAnimator valueAnimator) {
                float f5;
                CircularProgressView.this.startAngle = ((Float) valueAnimator.getAnimatedValue()).floatValue();
                CircularProgressView circularProgressView = CircularProgressView.this;
                float f6 = f2;
                f5 = circularProgressView.startAngle;
                circularProgressView.indeterminateSweep = (f6 - f5) + m8646a;
                CircularProgressView.this.invalidate();
            }
        });
        int i3 = this.animSteps;
        ValueAnimator ofFloat4 = ValueAnimator.ofFloat(f4 / i3, ((f + 1.0f) * 720.0f) / i3);
        ofFloat4.setDuration((this.animDuration / this.animSteps) / 2);
        ofFloat4.setInterpolator(new LinearInterpolator());
        ofFloat4.addUpdateListener(new Q__8_(this));
        AnimatorSet animatorSet = new AnimatorSet();
        animatorSet.play(ofFloat).with(ofFloat2);
        animatorSet.play(ofFloat3).with(ofFloat4).after(ofFloat2);
        return animatorSet;
    }

    private void initAttributes(AttributeSet attributeSet, int i, Context context) {
        getResources();
        this.currentProgress = 0.0f;
        this.maxProgress = 100.0f;
        this.thickness = convertDPtoInt(context, 3);
        this.isIndeterminate = true;
        this.autostartAnimation = true;
        this.initialStartAngle = -90.0f;
        this.startAngle = -90.0f;
        this.color = Color.parseColor(BaseConstants.DEFAULT_PROGRESS_COLOR);
        this.animDuration = 4000;
        this.animSwoopDuration = AdData.DEFAULT_DURATION_FOR_REWARDED_IMAGE_CLOSE_BUTTON_MILLIS;
        this.animSyncDuration = 500;
        this.animSteps = 3;
    }

    private void updateBounds() {
        int paddingLeft = getPaddingLeft();
        int paddingTop = getPaddingTop();
        RectF rectF = this.bounds;
        int i = this.thickness;
        float f = paddingLeft + i;
        float f2 = paddingTop + i;
        int i2 = this.size;
        rectF.set(f, f2, (i2 - paddingLeft) - i, (i2 - paddingTop) - i);
    }

    private void updatePaint() {
        this.paint.setColor(this.color);
        this.paint.setStyle(Paint.Style.STROKE);
        this.paint.setStrokeWidth(this.thickness);
        this.paint.setStrokeCap(Paint.Cap.BUTT);
    }

    public int getColor() {
        return this.color;
    }

    public float getMaxProgress() {
        return this.maxProgress;
    }

    public float getProgress() {
        return this.currentProgress;
    }

    public int getThickness() {
        return this.thickness;
    }

    public void init(AttributeSet attributeSet, int i, Context context) {
        initAttributes(attributeSet, i, context);
        this.paint = new Paint(1);
        updatePaint();
        this.bounds = new RectF();
    }

    public boolean isIndeterminate() {
        return this.isIndeterminate;
    }

    @Override // android.view.View
    public void onAttachedToWindow() {
        super.onAttachedToWindow();
        if (this.autostartAnimation) {
            startAnimation();
        }
    }

    @Override // android.view.View
    public void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        stopAnimation();
    }

    @Override // android.view.View
    public void onDraw(Canvas canvas) {
        super.onDraw(canvas);
        float f = (isInEditMode() ? this.currentProgress : this.actualProgress) / this.maxProgress;
        if (!this.isIndeterminate) {
            canvas.drawArc(this.bounds, this.startAngle, f * 360.0f, false, this.paint);
        } else {
            canvas.drawArc(this.bounds, this.startAngle + this.indeterminateRotateOffset, this.indeterminateSweep, false, this.paint);
        }
    }

    @Override // android.view.View
    public void onMeasure(int i, int i2) {
        super.onMeasure(i, i2);
        int paddingRight = getPaddingRight() + getPaddingLeft();
        int paddingBottom = getPaddingBottom() + getPaddingTop();
        int measuredWidth = getMeasuredWidth() - paddingRight;
        int measuredHeight = getMeasuredHeight() - paddingBottom;
        if (measuredWidth < measuredHeight) {
            measuredHeight = measuredWidth;
        }
        this.size = measuredHeight;
        setMeasuredDimension(paddingRight + measuredHeight, measuredHeight + paddingBottom);
    }

    @Override // android.view.View
    public void onSizeChanged(int i, int i2, int i3, int i4) {
        super.onSizeChanged(i, i2, i3, i4);
        if (i >= i2) {
            i = i2;
        }
        this.size = i;
        updateBounds();
    }

    public void resetAnimation() {
        ValueAnimator valueAnimator = this.startAngleRotate;
        if (valueAnimator != null && valueAnimator.isRunning()) {
            this.startAngleRotate.cancel();
        }
        ValueAnimator valueAnimator2 = this.progressAnimator;
        if (valueAnimator2 != null && valueAnimator2.isRunning()) {
            this.progressAnimator.cancel();
        }
        AnimatorSet animatorSet = this.indeterminateAnimator;
        if (animatorSet != null && animatorSet.isRunning()) {
            this.indeterminateAnimator.cancel();
        }
        int i = 0;
        if (!this.isIndeterminate) {
            float f = this.initialStartAngle;
            this.startAngle = f;
            ValueAnimator ofFloat = ValueAnimator.ofFloat(f, f + 360.0f);
            this.startAngleRotate = ofFloat;
            ofFloat.setDuration(this.animSwoopDuration);
            this.startAngleRotate.setInterpolator(new DecelerateInterpolator(2.0f));
            this.startAngleRotate.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: com.razorpay.B$$Z_
                @Override // android.animation.ValueAnimator.AnimatorUpdateListener
                public final void onAnimationUpdate(ValueAnimator valueAnimator3) {
                    CircularProgressView.this.startAngle = ((Float) valueAnimator3.getAnimatedValue()).floatValue();
                    CircularProgressView.this.invalidate();
                }
            });
            this.startAngleRotate.start();
            this.actualProgress = 0.0f;
            ValueAnimator ofFloat2 = ValueAnimator.ofFloat(0.0f, this.currentProgress);
            this.progressAnimator = ofFloat2;
            ofFloat2.setDuration(this.animSyncDuration);
            this.progressAnimator.setInterpolator(new LinearInterpolator());
            this.progressAnimator.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: com.razorpay.q$_Y$
                @Override // android.animation.ValueAnimator.AnimatorUpdateListener
                public final void onAnimationUpdate(ValueAnimator valueAnimator3) {
                    CircularProgressView.this.actualProgress = ((Float) valueAnimator3.getAnimatedValue()).floatValue();
                    CircularProgressView.this.invalidate();
                }
            });
            this.progressAnimator.start();
            return;
        }
        this.indeterminateSweep = 15.0f;
        this.indeterminateAnimator = new AnimatorSet();
        AnimatorSet animatorSet2 = null;
        while (true) {
            AnimatorSet animatorSet3 = animatorSet2;
            if (i >= this.animSteps) {
                this.indeterminateAnimator.addListener(new AnimatorListenerAdapter() { // from class: com.razorpay.q_$J$

                    /* renamed from: a */
                    private boolean f9473a = false;

                    @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
                    public final void onAnimationCancel(Animator animator) {
                        this.f9473a = true;
                    }

                    @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
                    public final void onAnimationEnd(Animator animator) {
                        if (!this.f9473a) {
                            CircularProgressView.this.resetAnimation();
                        }
                    }
                });
                this.indeterminateAnimator.start();
                return;
            }
            AnimatorSet createIndeterminateAnimator = createIndeterminateAnimator(i);
            AnimatorSet.Builder play = this.indeterminateAnimator.play(createIndeterminateAnimator);
            if (animatorSet3 != null) {
                play.after(animatorSet3);
            }
            i++;
            animatorSet2 = createIndeterminateAnimator;
        }
    }

    public void setColor(int i) {
        this.color = i;
        updatePaint();
        invalidate();
    }

    public void setIndeterminate(boolean z) {
        boolean z2 = this.isIndeterminate == z;
        this.isIndeterminate = z;
        if (z2) {
            resetAnimation();
        }
    }

    public void setMaxProgress(float f) {
        this.maxProgress = f;
        invalidate();
    }

    public void setProgress(float f) {
        this.currentProgress = f;
        if (!this.isIndeterminate) {
            ValueAnimator valueAnimator = this.progressAnimator;
            if (valueAnimator != null && valueAnimator.isRunning()) {
                this.progressAnimator.cancel();
            }
            ValueAnimator ofFloat = ValueAnimator.ofFloat(this.actualProgress, f);
            this.progressAnimator = ofFloat;
            ofFloat.setDuration(this.animSyncDuration);
            this.progressAnimator.setInterpolator(new LinearInterpolator());
            this.progressAnimator.addUpdateListener(new l__9_(this));
            this.progressAnimator.start();
        }
        invalidate();
    }

    public void setThickness(int i) {
        this.thickness = i;
        updatePaint();
        updateBounds();
        invalidate();
    }

    @Override // android.view.View
    public void setVisibility(int i) {
        int visibility = getVisibility();
        super.setVisibility(i);
        if (i != visibility) {
            if (i == 0) {
                resetAnimation();
            } else if (i != 8 && i != 4) {
            } else {
                stopAnimation();
            }
        }
    }

    public void startAnimation() {
        resetAnimation();
    }

    public void stopAnimation() {
        ValueAnimator valueAnimator = this.startAngleRotate;
        if (valueAnimator != null) {
            valueAnimator.cancel();
            this.startAngleRotate = null;
        }
        ValueAnimator valueAnimator2 = this.progressAnimator;
        if (valueAnimator2 != null) {
            valueAnimator2.cancel();
            this.progressAnimator = null;
        }
        AnimatorSet animatorSet = this.indeterminateAnimator;
        if (animatorSet != null) {
            animatorSet.cancel();
            this.indeterminateAnimator = null;
        }
    }
}

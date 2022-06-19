package com.telguarder.helpers.p022ui.loadingButton;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.animation.ValueAnimator;
import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.ColorFilter;
import android.graphics.Paint;
import android.graphics.Rect;
import android.graphics.drawable.Animatable;
import android.graphics.drawable.Drawable;
import android.view.View;
import android.view.animation.DecelerateInterpolator;
/* renamed from: com.telguarder.helpers.ui.loadingButton.CircularRevealAnimatedDrawable */
/* loaded from: classes2-dex2jar.jar:com/telguarder/helpers/ui/loadingButton/CircularRevealAnimatedDrawable.class */
public class CircularRevealAnimatedDrawable extends Drawable implements Animatable {
    private float bitMapXOffset;
    private float bitMapYOffset;
    private View mAnimatedView;
    private float mCenterHeith;
    private float mCenterWidth;
    private float mFinalRadius;
    private boolean mIsFilled;
    private Paint mPaint;
    private Paint mPaintImageReady;
    private Bitmap mReadyImage;
    private ValueAnimator mRevealInAnimation;
    private boolean isRunning = false;
    private int mImageReadyAlpha = 0;
    private float mRadius = 0.0f;

    public CircularRevealAnimatedDrawable(View view, int i, Bitmap bitmap) {
        this.mAnimatedView = view;
        Paint paint = new Paint();
        this.mPaint = paint;
        paint.setAntiAlias(true);
        this.mPaint.setStyle(Paint.Style.FILL);
        this.mPaint.setColor(i);
        Paint paint2 = new Paint();
        this.mPaintImageReady = paint2;
        paint2.setAntiAlias(true);
        this.mPaintImageReady.setStyle(Paint.Style.FILL);
        this.mPaintImageReady.setColor(0);
        this.mReadyImage = bitmap;
    }

    private void setupAnimations() {
        final ValueAnimator ofInt = ValueAnimator.ofInt(0, 255);
        ofInt.setDuration(80L);
        ofInt.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: com.telguarder.helpers.ui.loadingButton.CircularRevealAnimatedDrawable.1
            @Override // android.animation.ValueAnimator.AnimatorUpdateListener
            public void onAnimationUpdate(ValueAnimator valueAnimator) {
                CircularRevealAnimatedDrawable.this.mImageReadyAlpha = ((Integer) valueAnimator.getAnimatedValue()).intValue();
                CircularRevealAnimatedDrawable.this.invalidateSelf();
                CircularRevealAnimatedDrawable.this.mAnimatedView.invalidate();
            }
        });
        ValueAnimator ofFloat = ValueAnimator.ofFloat(0.0f, this.mFinalRadius);
        this.mRevealInAnimation = ofFloat;
        ofFloat.setInterpolator(new DecelerateInterpolator());
        this.mRevealInAnimation.setDuration(120L);
        this.mRevealInAnimation.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: com.telguarder.helpers.ui.loadingButton.CircularRevealAnimatedDrawable.2
            @Override // android.animation.ValueAnimator.AnimatorUpdateListener
            public void onAnimationUpdate(ValueAnimator valueAnimator) {
                CircularRevealAnimatedDrawable.this.mRadius = ((Float) valueAnimator.getAnimatedValue()).floatValue();
                CircularRevealAnimatedDrawable.this.invalidateSelf();
                CircularRevealAnimatedDrawable.this.mAnimatedView.invalidate();
            }
        });
        this.mRevealInAnimation.addListener(new AnimatorListenerAdapter() { // from class: com.telguarder.helpers.ui.loadingButton.CircularRevealAnimatedDrawable.3
            @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
            public void onAnimationEnd(Animator animator) {
                super.onAnimationEnd(animator);
                CircularRevealAnimatedDrawable.this.mIsFilled = true;
                ofInt.start();
            }
        });
    }

    public void dispose() {
        ValueAnimator valueAnimator = this.mRevealInAnimation;
        if (valueAnimator != null) {
            valueAnimator.end();
            this.mRevealInAnimation.removeAllUpdateListeners();
            this.mRevealInAnimation.cancel();
        }
        this.mRevealInAnimation = null;
    }

    @Override // android.graphics.drawable.Drawable
    public void draw(Canvas canvas) {
        canvas.drawCircle(this.mCenterWidth, this.mCenterHeith, this.mRadius, this.mPaint);
        if (this.mIsFilled) {
            this.mPaintImageReady.setAlpha(this.mImageReadyAlpha);
            canvas.drawBitmap(this.mReadyImage, this.bitMapXOffset, this.bitMapYOffset, this.mPaintImageReady);
        }
    }

    @Override // android.graphics.drawable.Drawable
    public int getOpacity() {
        return -1;
    }

    public boolean isFilled() {
        return this.mIsFilled;
    }

    @Override // android.graphics.drawable.Animatable
    public boolean isRunning() {
        return this.isRunning;
    }

    @Override // android.graphics.drawable.Drawable
    protected void onBoundsChange(Rect rect) {
        super.onBoundsChange(rect);
        int i = (int) ((rect.right - rect.left) * 0.6d);
        int i2 = (int) ((rect.bottom - rect.top) * 0.6d);
        this.bitMapXOffset = ((rect.right - rect.left) - i) / 2;
        this.bitMapYOffset = ((rect.bottom - rect.top) - i2) / 2;
        this.mReadyImage = Bitmap.createScaledBitmap(this.mReadyImage, i, i2, false);
        this.mFinalRadius = (rect.right - rect.left) / 2;
        this.mCenterWidth = (rect.right + rect.left) / 2;
        this.mCenterHeith = (rect.bottom + rect.top) / 2;
    }

    @Override // android.graphics.drawable.Drawable
    public void setAlpha(int i) {
    }

    @Override // android.graphics.drawable.Drawable
    public void setColorFilter(ColorFilter colorFilter) {
    }

    @Override // android.graphics.drawable.Animatable
    public void start() {
        if (isRunning()) {
            return;
        }
        setupAnimations();
        this.isRunning = true;
        this.mRevealInAnimation.start();
    }

    @Override // android.graphics.drawable.Animatable
    public void stop() {
        if (!isRunning()) {
            return;
        }
        this.isRunning = false;
        this.mRevealInAnimation.cancel();
    }
}

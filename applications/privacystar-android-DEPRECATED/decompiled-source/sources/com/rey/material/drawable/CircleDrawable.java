package com.rey.material.drawable;

import android.graphics.Canvas;
import android.graphics.ColorFilter;
import android.graphics.Paint;
import android.graphics.Rect;
import android.graphics.drawable.Animatable;
import android.graphics.drawable.Drawable;
import android.os.SystemClock;
import android.view.animation.DecelerateInterpolator;
import android.view.animation.Interpolator;
import com.rey.material.util.ViewUtil;
/* loaded from: classes2-dex2jar.jar:com/rey/material/drawable/CircleDrawable.class */
public class CircleDrawable extends Drawable implements Animatable {
    private float mAnimProgress;
    private float mRadius;
    private long mStartTime;
    private boolean mVisible;

    /* renamed from: mX */
    private float f308mX;

    /* renamed from: mY */
    private float f309mY;
    private boolean mRunning = false;
    private int mAnimDuration = 1000;
    private Interpolator mInInterpolator = new DecelerateInterpolator();
    private Interpolator mOutInterpolator = new DecelerateInterpolator();
    private boolean mInEditMode = false;
    private boolean mAnimEnable = true;
    private final Runnable mUpdater = new Runnable() { // from class: com.rey.material.drawable.CircleDrawable.1
        @Override // java.lang.Runnable
        public void run() {
            CircleDrawable.this.update();
        }
    };
    private Paint mPaint = new Paint(1);

    public CircleDrawable() {
        this.mPaint.setStyle(Paint.Style.FILL);
    }

    private void resetAnimation() {
        this.mStartTime = SystemClock.uptimeMillis();
        this.mAnimProgress = 0.0f;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void update() {
        this.mAnimProgress = Math.min(1.0f, ((float) (SystemClock.uptimeMillis() - this.mStartTime)) / this.mAnimDuration);
        if (this.mAnimProgress == 1.0f) {
            this.mRunning = false;
        }
        if (isRunning()) {
            scheduleSelf(this.mUpdater, SystemClock.uptimeMillis() + 16);
        }
        invalidateSelf();
    }

    @Override // android.graphics.drawable.Drawable
    public void draw(Canvas canvas) {
        if (this.mRunning) {
            canvas.drawCircle(this.f308mX, this.f309mY, (this.mVisible ? this.mInInterpolator.getInterpolation(this.mAnimProgress) : 1.0f - this.mOutInterpolator.getInterpolation(this.mAnimProgress)) * this.mRadius, this.mPaint);
        } else if (this.mVisible) {
            canvas.drawCircle(this.f308mX, this.f309mY, this.mRadius, this.mPaint);
        }
    }

    @Override // android.graphics.drawable.Drawable
    public int getOpacity() {
        return -3;
    }

    @Override // android.graphics.drawable.Animatable
    public boolean isRunning() {
        return this.mRunning;
    }

    @Override // android.graphics.drawable.Drawable
    public boolean isStateful() {
        return true;
    }

    @Override // android.graphics.drawable.Drawable
    protected void onBoundsChange(Rect rect) {
        this.f308mX = rect.exactCenterX();
        this.f309mY = rect.exactCenterY();
        this.mRadius = Math.min(rect.width(), rect.height()) / 2.0f;
    }

    @Override // android.graphics.drawable.Drawable
    protected boolean onStateChange(int[] iArr) {
        boolean z = ViewUtil.hasState(iArr, 16842912) || ViewUtil.hasState(iArr, 16842919);
        if (this.mVisible == z) {
            return false;
        }
        this.mVisible = z;
        if (this.mInEditMode || !this.mAnimEnable) {
            return true;
        }
        start();
        return true;
    }

    @Override // android.graphics.drawable.Drawable
    public void scheduleSelf(Runnable runnable, long j) {
        this.mRunning = true;
        super.scheduleSelf(runnable, j);
    }

    @Override // android.graphics.drawable.Drawable
    public void setAlpha(int i) {
        this.mPaint.setAlpha(i);
    }

    public void setAnimDuration(int i) {
        this.mAnimDuration = i;
    }

    public void setAnimEnable(boolean z) {
        this.mAnimEnable = z;
    }

    public void setColor(int i) {
        this.mPaint.setColor(i);
        invalidateSelf();
    }

    @Override // android.graphics.drawable.Drawable
    public void setColorFilter(ColorFilter colorFilter) {
        this.mPaint.setColorFilter(colorFilter);
    }

    public void setInEditMode(boolean z) {
        this.mInEditMode = z;
    }

    public void setInterpolator(Interpolator interpolator, Interpolator interpolator2) {
        this.mInInterpolator = interpolator;
        this.mOutInterpolator = interpolator2;
    }

    @Override // android.graphics.drawable.Animatable
    public void start() {
        resetAnimation();
        scheduleSelf(this.mUpdater, SystemClock.uptimeMillis() + 16);
        invalidateSelf();
    }

    @Override // android.graphics.drawable.Animatable
    public void stop() {
        this.mRunning = false;
        unscheduleSelf(this.mUpdater);
        invalidateSelf();
    }
}

package com.rey.material.drawable;

import android.content.res.ColorStateList;
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
import com.rey.material.util.ViewUtil;
/* loaded from: classes2-dex2jar.jar:com/rey/material/drawable/DividerDrawable.class */
public class DividerDrawable extends Drawable implements Animatable {
    private int mAnimDuration;
    private boolean mAnimEnable;
    private float mAnimProgress;
    private ColorStateList mColorStateList;
    private int mCurColor;
    private boolean mEnable;
    private int mHeight;
    private boolean mInEditMode;
    private int mPaddingLeft;
    private int mPaddingRight;
    private Paint mPaint;
    private Path mPath;
    private PathEffect mPathEffect;
    private int mPrevColor;
    private boolean mRunning;
    private long mStartTime;
    private final Runnable mUpdater;

    public DividerDrawable(int i, int i2, int i3, ColorStateList colorStateList, int i4) {
        this.mRunning = false;
        this.mEnable = true;
        this.mInEditMode = false;
        this.mAnimEnable = true;
        this.mUpdater = new Runnable() { // from class: com.rey.material.drawable.DividerDrawable.1
            @Override // java.lang.Runnable
            public void run() {
                DividerDrawable.this.update();
            }
        };
        this.mHeight = i;
        this.mPaddingLeft = i2;
        this.mPaddingRight = i3;
        this.mAnimDuration = i4;
        this.mPaint = new Paint();
        this.mPaint.setAntiAlias(true);
        this.mPaint.setStyle(Paint.Style.STROKE);
        this.mPaint.setStrokeWidth(this.mHeight);
        this.mPaint.setStrokeCap(Paint.Cap.ROUND);
        this.mPaint.setStrokeJoin(Paint.Join.ROUND);
        this.mPath = new Path();
        this.mAnimEnable = false;
        setColor(colorStateList);
        this.mAnimEnable = true;
    }

    public DividerDrawable(int i, ColorStateList colorStateList, int i2) {
        this(i, 0, 0, colorStateList, i2);
    }

    private PathEffect getPathEffect() {
        if (this.mPathEffect == null) {
            this.mPathEffect = new DashPathEffect(new float[]{0.2f, this.mHeight * 2}, 0.0f);
        }
        return this.mPathEffect;
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
        Rect bounds;
        if (this.mHeight != 0) {
            float f = getBounds().bottom - (this.mHeight / 2);
            PathEffect pathEffect = null;
            if (!isRunning()) {
                this.mPath.reset();
                this.mPath.moveTo(bounds.left + this.mPaddingLeft, f);
                this.mPath.lineTo(bounds.right - this.mPaddingRight, f);
                Paint paint = this.mPaint;
                if (!this.mEnable) {
                    pathEffect = getPathEffect();
                }
                paint.setPathEffect(pathEffect);
                this.mPaint.setColor(this.mCurColor);
                canvas.drawPath(this.mPath, this.mPaint);
                return;
            }
            float f2 = (((bounds.right + bounds.left) - this.mPaddingRight) + this.mPaddingLeft) / 2.0f;
            float f3 = ((1.0f - this.mAnimProgress) * f2) + ((bounds.left + this.mPaddingLeft) * this.mAnimProgress);
            float f4 = (f2 * (1.0f - this.mAnimProgress)) + ((bounds.right + this.mPaddingRight) * this.mAnimProgress);
            this.mPaint.setPathEffect(null);
            if (this.mAnimProgress < 1.0f) {
                this.mPaint.setColor(this.mPrevColor);
                this.mPath.reset();
                this.mPath.moveTo(bounds.left + this.mPaddingLeft, f);
                this.mPath.lineTo(f3, f);
                this.mPath.moveTo(bounds.right - this.mPaddingRight, f);
                this.mPath.lineTo(f4, f);
                canvas.drawPath(this.mPath, this.mPaint);
            }
            this.mPaint.setColor(this.mCurColor);
            this.mPath.reset();
            this.mPath.moveTo(f3, f);
            this.mPath.lineTo(f4, f);
            canvas.drawPath(this.mPath, this.mPaint);
        }
    }

    public int getDividerHeight() {
        return this.mHeight;
    }

    @Override // android.graphics.drawable.Drawable
    public int getOpacity() {
        return -3;
    }

    public int getPaddingLeft() {
        return this.mPaddingLeft;
    }

    public int getPaddingRight() {
        return this.mPaddingRight;
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
    protected boolean onStateChange(int[] iArr) {
        this.mEnable = ViewUtil.hasState(iArr, 16842910);
        int colorForState = this.mColorStateList.getColorForState(iArr, this.mCurColor);
        if (this.mCurColor != colorForState) {
            if (this.mInEditMode || !this.mAnimEnable || !this.mEnable || this.mAnimDuration <= 0) {
                this.mPrevColor = colorForState;
                this.mCurColor = colorForState;
                return true;
            }
            this.mPrevColor = isRunning() ? this.mPrevColor : this.mCurColor;
            this.mCurColor = colorForState;
            start();
            return true;
        } else if (isRunning()) {
            return false;
        } else {
            this.mPrevColor = colorForState;
            return false;
        }
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

    public void setAnimEnable(boolean z) {
        this.mAnimEnable = z;
    }

    public void setAnimationDuration(int i) {
        this.mAnimDuration = i;
    }

    public void setColor(ColorStateList colorStateList) {
        this.mColorStateList = colorStateList;
        onStateChange(getState());
    }

    @Override // android.graphics.drawable.Drawable
    public void setColorFilter(ColorFilter colorFilter) {
        this.mPaint.setColorFilter(colorFilter);
    }

    public void setDividerHeight(int i) {
        if (this.mHeight != i) {
            this.mHeight = i;
            this.mPaint.setStrokeWidth(this.mHeight);
            invalidateSelf();
        }
    }

    public void setInEditMode(boolean z) {
        this.mInEditMode = z;
    }

    public void setPadding(int i, int i2) {
        if (this.mPaddingLeft != i || this.mPaddingRight != i2) {
            this.mPaddingLeft = i;
            this.mPaddingRight = i2;
            invalidateSelf();
        }
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

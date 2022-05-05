package com.rey.material.drawable;

import android.content.res.ColorStateList;
import android.graphics.Canvas;
import android.graphics.ColorFilter;
import android.graphics.Paint;
import android.graphics.Path;
import android.graphics.RadialGradient;
import android.graphics.RectF;
import android.graphics.Shader;
import android.graphics.drawable.Animatable;
import android.graphics.drawable.Drawable;
import android.os.SystemClock;
import com.rey.material.util.ColorUtil;
import com.rey.material.util.ViewUtil;
/* loaded from: classes2-dex2jar.jar:com/rey/material/drawable/OvalShadowDrawable.class */
public class OvalShadowDrawable extends Drawable implements Animatable {
    private static final int COLOR_SHADOW_END = 0;
    private static final int COLOR_SHADOW_START = 1275068416;
    private int mAnimDuration;
    private float mAnimProgress;
    private ColorStateList mColorStateList;
    private int mCurColor;
    private Paint mGlowPaint;
    private Path mGlowPath;
    private int mPrevColor;
    private int mRadius;
    private float mShadowOffset;
    private Paint mShadowPaint;
    private Path mShadowPath;
    private float mShadowSize;
    private long mStartTime;
    private boolean mRunning = false;
    private boolean mEnable = true;
    private boolean mInEditMode = false;
    private boolean mAnimEnable = true;
    private RectF mTempRect = new RectF();
    private boolean mNeedBuildShadow = true;
    private final Runnable mUpdater = new Runnable() { // from class: com.rey.material.drawable.OvalShadowDrawable.1
        @Override // java.lang.Runnable
        public void run() {
            OvalShadowDrawable.this.update();
        }
    };
    private Paint mPaint = new Paint(5);

    public OvalShadowDrawable(int i, ColorStateList colorStateList, float f, float f2, int i2) {
        this.mAnimDuration = i2;
        this.mPaint.setStyle(Paint.Style.FILL);
        setColor(colorStateList);
        setRadius(i);
        setShadow(f, f2);
    }

    private void buildShadow() {
        if (this.mShadowSize > 0.0f) {
            if (this.mShadowPaint == null) {
                this.mShadowPaint = new Paint(5);
                this.mShadowPaint.setStyle(Paint.Style.FILL);
                this.mShadowPaint.setDither(true);
            }
            float f = this.mRadius / ((this.mRadius + this.mShadowSize) + this.mShadowOffset);
            Paint paint = this.mShadowPaint;
            float f2 = this.mRadius;
            paint.setShader(new RadialGradient(0.0f, 0.0f, this.mShadowSize + f2, new int[]{COLOR_SHADOW_START, COLOR_SHADOW_START, 0}, new float[]{0.0f, f, 1.0f}, Shader.TileMode.CLAMP));
            if (this.mShadowPath == null) {
                this.mShadowPath = new Path();
                this.mShadowPath.setFillType(Path.FillType.EVEN_ODD);
            } else {
                this.mShadowPath.reset();
            }
            float f3 = this.mRadius + this.mShadowSize;
            float f4 = -f3;
            this.mTempRect.set(f4, f4, f3, f3);
            this.mShadowPath.addOval(this.mTempRect, Path.Direction.CW);
            float f5 = this.mRadius - 1;
            float f6 = -f5;
            this.mTempRect.set(f6, f6 - this.mShadowOffset, f5, f5 - this.mShadowOffset);
            this.mShadowPath.addOval(this.mTempRect, Path.Direction.CW);
            if (this.mGlowPaint == null) {
                this.mGlowPaint = new Paint(5);
                this.mGlowPaint.setStyle(Paint.Style.FILL);
                this.mGlowPaint.setDither(true);
            }
            float f7 = (this.mRadius - (this.mShadowSize / 2.0f)) / (this.mRadius + (this.mShadowSize / 2.0f));
            Paint paint2 = this.mGlowPaint;
            float f8 = this.mRadius;
            paint2.setShader(new RadialGradient(0.0f, 0.0f, (this.mShadowSize / 2.0f) + f8, new int[]{COLOR_SHADOW_START, COLOR_SHADOW_START, 0}, new float[]{0.0f, f7, 1.0f}, Shader.TileMode.CLAMP));
            if (this.mGlowPath == null) {
                this.mGlowPath = new Path();
                this.mGlowPath.setFillType(Path.FillType.EVEN_ODD);
            } else {
                this.mGlowPath.reset();
            }
            float f9 = this.mRadius + (this.mShadowSize / 2.0f);
            float f10 = -f9;
            this.mTempRect.set(f10, f10, f9, f9);
            this.mGlowPath.addOval(this.mTempRect, Path.Direction.CW);
            float f11 = this.mRadius - 1;
            float f12 = -f11;
            this.mTempRect.set(f12, f12, f11, f11);
            this.mGlowPath.addOval(this.mTempRect, Path.Direction.CW);
        }
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
        if (this.mNeedBuildShadow) {
            buildShadow();
            this.mNeedBuildShadow = false;
        }
        if (this.mShadowSize > 0.0f) {
            int save = canvas.save();
            canvas.translate(this.mShadowSize + this.mRadius, this.mShadowSize + this.mRadius + this.mShadowOffset);
            canvas.drawPath(this.mShadowPath, this.mShadowPaint);
            canvas.restoreToCount(save);
        }
        int save2 = canvas.save();
        canvas.translate(this.mShadowSize + this.mRadius, this.mShadowSize + this.mRadius);
        if (this.mShadowSize > 0.0f) {
            canvas.drawPath(this.mGlowPath, this.mGlowPaint);
        }
        this.mTempRect.set(-this.mRadius, -this.mRadius, this.mRadius, this.mRadius);
        if (!isRunning()) {
            this.mPaint.setColor(this.mCurColor);
        } else {
            this.mPaint.setColor(ColorUtil.getMiddleColor(this.mPrevColor, this.mCurColor, this.mAnimProgress));
        }
        canvas.drawOval(this.mTempRect, this.mPaint);
        canvas.restoreToCount(save2);
    }

    public float getCenterX() {
        return this.mRadius + this.mShadowSize;
    }

    public float getCenterY() {
        return this.mRadius + this.mShadowSize;
    }

    public ColorStateList getColor() {
        return this.mColorStateList;
    }

    @Override // android.graphics.drawable.Drawable
    public int getIntrinsicHeight() {
        return (int) (((this.mRadius + this.mShadowSize) * 2.0f) + this.mShadowOffset + 0.5f);
    }

    @Override // android.graphics.drawable.Drawable
    public int getIntrinsicWidth() {
        return (int) (((this.mRadius + this.mShadowSize) * 2.0f) + 0.5f);
    }

    @Override // android.graphics.drawable.Drawable
    public int getOpacity() {
        return -3;
    }

    public float getPaddingBottom() {
        return this.mShadowSize + this.mShadowOffset;
    }

    public float getPaddingLeft() {
        return this.mShadowSize;
    }

    public float getPaddingRight() {
        return this.mShadowSize;
    }

    public float getPaddingTop() {
        return this.mShadowSize;
    }

    public int getRadius() {
        return this.mRadius;
    }

    public float getShadowOffset() {
        return this.mShadowOffset;
    }

    public float getShadowSize() {
        return this.mShadowSize;
    }

    public boolean isPointerOver(float f, float f2) {
        return ((float) Math.sqrt(Math.pow((double) (f - getCenterX()), 2.0d) + Math.pow((double) (f2 - getCenterY()), 2.0d))) < ((float) this.mRadius);
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
    public void jumpToCurrentState() {
        super.jumpToCurrentState();
        stop();
    }

    @Override // android.graphics.drawable.Drawable
    protected boolean onStateChange(int[] iArr) {
        this.mEnable = ViewUtil.hasState(iArr, 16842910);
        int colorForState = this.mColorStateList.getColorForState(iArr, this.mCurColor);
        if (this.mCurColor != colorForState) {
            if (this.mInEditMode || !this.mAnimEnable || !this.mEnable || this.mAnimDuration <= 0) {
                this.mPrevColor = colorForState;
                this.mCurColor = colorForState;
                invalidateSelf();
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
        this.mShadowPaint.setAlpha(i);
        this.mPaint.setAlpha(i);
    }

    public void setAnimEnable(boolean z) {
        this.mAnimEnable = z;
    }

    public boolean setAnimationDuration(int i) {
        if (this.mAnimDuration == i) {
            return false;
        }
        this.mAnimDuration = i;
        return true;
    }

    public void setColor(int i) {
        this.mColorStateList = ColorStateList.valueOf(i);
        onStateChange(getState());
    }

    public void setColor(ColorStateList colorStateList) {
        this.mColorStateList = colorStateList;
        onStateChange(getState());
    }

    @Override // android.graphics.drawable.Drawable
    public void setColorFilter(ColorFilter colorFilter) {
        this.mShadowPaint.setColorFilter(colorFilter);
        this.mPaint.setColorFilter(colorFilter);
    }

    public void setInEditMode(boolean z) {
        this.mInEditMode = z;
    }

    public boolean setRadius(int i) {
        if (this.mRadius == i) {
            return false;
        }
        this.mRadius = i;
        this.mNeedBuildShadow = true;
        invalidateSelf();
        return true;
    }

    public boolean setShadow(float f, float f2) {
        if (this.mShadowSize == f && this.mShadowOffset == f2) {
            return false;
        }
        this.mShadowSize = f;
        this.mShadowOffset = f2;
        this.mNeedBuildShadow = true;
        invalidateSelf();
        return true;
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

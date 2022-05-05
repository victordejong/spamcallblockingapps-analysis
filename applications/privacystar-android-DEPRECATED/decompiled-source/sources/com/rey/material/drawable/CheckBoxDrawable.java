package com.rey.material.drawable;

import android.content.Context;
import android.content.res.ColorStateList;
import android.content.res.TypedArray;
import android.graphics.Canvas;
import android.graphics.ColorFilter;
import android.graphics.Paint;
import android.graphics.Path;
import android.graphics.Rect;
import android.graphics.RectF;
import android.graphics.drawable.Animatable;
import android.graphics.drawable.Drawable;
import android.os.SystemClock;
import android.support.p001v4.view.ViewCompat;
import android.util.AttributeSet;
import com.rey.material.C1686R;
import com.rey.material.util.ColorUtil;
import com.rey.material.util.ThemeUtil;
import com.rey.material.util.ViewUtil;
import com.zendesk.service.HttpConstants;
/* loaded from: classes2-dex2jar.jar:com/rey/material/drawable/CheckBoxDrawable.class */
public class CheckBoxDrawable extends Drawable implements Animatable {
    private static final float FILL_TIME = 0.4f;
    private static final float[] TICK_DATA = {0.0f, 0.473f, 0.367f, 0.839f, 1.0f, 0.207f};
    private int mAnimDuration;
    private boolean mAnimEnable;
    private float mAnimProgress;
    private RectF mBoxRect;
    private int mBoxSize;
    private boolean mChecked;
    private int mCornerRadius;
    private int mCurColor;
    private int mHeight;
    private boolean mInEditMode;
    private Paint mPaint;
    private int mPrevColor;
    private boolean mRunning;
    private long mStartTime;
    private ColorStateList mStrokeColor;
    private int mStrokeSize;
    private int mTickColor;
    private Path mTickPath;
    private float mTickPathProgress;
    private final Runnable mUpdater;
    private int mWidth;

    /* loaded from: classes2-dex2jar.jar:com/rey/material/drawable/CheckBoxDrawable$Builder.class */
    public static class Builder {
        private int mAnimDuration;
        private int mBoxSize;
        private int mCornerRadius;
        private int mHeight;
        private ColorStateList mStrokeColor;
        private int mStrokeSize;
        private int mTickColor;
        private int mWidth;

        public Builder() {
            this.mAnimDuration = HttpConstants.HTTP_BAD_REQUEST;
            this.mStrokeSize = 4;
            this.mWidth = 64;
            this.mHeight = 64;
            this.mCornerRadius = 8;
            this.mBoxSize = 32;
            this.mTickColor = -1;
        }

        public Builder(Context context, int i) {
            this(context, null, 0, i);
        }

        /* JADX WARN: Type inference failed for: r3v17, types: [int[], int[][]] */
        public Builder(Context context, AttributeSet attributeSet, int i, int i2) {
            this.mAnimDuration = HttpConstants.HTTP_BAD_REQUEST;
            this.mStrokeSize = 4;
            this.mWidth = 64;
            this.mHeight = 64;
            this.mCornerRadius = 8;
            this.mBoxSize = 32;
            this.mTickColor = -1;
            TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, C1686R.styleable.CheckBoxDrawable, i, i2);
            width(obtainStyledAttributes.getDimensionPixelSize(C1686R.styleable.CheckBoxDrawable_cbd_width, ThemeUtil.dpToPx(context, 32)));
            height(obtainStyledAttributes.getDimensionPixelSize(C1686R.styleable.CheckBoxDrawable_cbd_height, ThemeUtil.dpToPx(context, 32)));
            boxSize(obtainStyledAttributes.getDimensionPixelSize(C1686R.styleable.CheckBoxDrawable_cbd_boxSize, ThemeUtil.dpToPx(context, 18)));
            cornerRadius(obtainStyledAttributes.getDimensionPixelSize(C1686R.styleable.CheckBoxDrawable_cbd_cornerRadius, ThemeUtil.dpToPx(context, 2)));
            strokeSize(obtainStyledAttributes.getDimensionPixelSize(C1686R.styleable.CheckBoxDrawable_cbd_strokeSize, ThemeUtil.dpToPx(context, 2)));
            strokeColor(obtainStyledAttributes.getColorStateList(C1686R.styleable.CheckBoxDrawable_cbd_strokeColor));
            tickColor(obtainStyledAttributes.getColor(C1686R.styleable.CheckBoxDrawable_cbd_tickColor, -1));
            animDuration(obtainStyledAttributes.getInt(C1686R.styleable.CheckBoxDrawable_cbd_animDuration, context.getResources().getInteger(17694721)));
            obtainStyledAttributes.recycle();
            if (this.mStrokeColor == null) {
                strokeColor(new ColorStateList(new int[]{new int[]{-16842912}, new int[]{16842912}}, new int[]{ThemeUtil.colorControlNormal(context, ViewCompat.MEASURED_STATE_MASK), ThemeUtil.colorControlActivated(context, ViewCompat.MEASURED_STATE_MASK)}));
            }
        }

        public Builder animDuration(int i) {
            this.mAnimDuration = i;
            return this;
        }

        public Builder boxSize(int i) {
            this.mBoxSize = i;
            return this;
        }

        public CheckBoxDrawable build() {
            if (this.mStrokeColor == null) {
                this.mStrokeColor = ColorStateList.valueOf(ViewCompat.MEASURED_STATE_MASK);
            }
            return new CheckBoxDrawable(this.mWidth, this.mHeight, this.mBoxSize, this.mCornerRadius, this.mStrokeSize, this.mStrokeColor, this.mTickColor, this.mAnimDuration);
        }

        public Builder cornerRadius(int i) {
            this.mCornerRadius = i;
            return this;
        }

        public Builder height(int i) {
            this.mHeight = i;
            return this;
        }

        public Builder strokeColor(int i) {
            this.mStrokeColor = ColorStateList.valueOf(i);
            return this;
        }

        public Builder strokeColor(ColorStateList colorStateList) {
            this.mStrokeColor = colorStateList;
            return this;
        }

        public Builder strokeSize(int i) {
            this.mStrokeSize = i;
            return this;
        }

        public Builder tickColor(int i) {
            this.mTickColor = i;
            return this;
        }

        public Builder width(int i) {
            this.mWidth = i;
            return this;
        }
    }

    private CheckBoxDrawable(int i, int i2, int i3, int i4, int i5, ColorStateList colorStateList, int i6, int i7) {
        this.mRunning = false;
        this.mTickPathProgress = -1.0f;
        this.mChecked = false;
        this.mInEditMode = false;
        this.mAnimEnable = true;
        this.mUpdater = new Runnable() { // from class: com.rey.material.drawable.CheckBoxDrawable.1
            @Override // java.lang.Runnable
            public void run() {
                CheckBoxDrawable.this.update();
            }
        };
        this.mWidth = i;
        this.mHeight = i2;
        this.mBoxSize = i3;
        this.mCornerRadius = i4;
        this.mStrokeSize = i5;
        this.mStrokeColor = colorStateList;
        this.mTickColor = i6;
        this.mAnimDuration = i7;
        this.mPaint = new Paint();
        this.mPaint.setAntiAlias(true);
        this.mBoxRect = new RectF();
        this.mTickPath = new Path();
    }

    private void drawChecked(Canvas canvas) {
        float f = this.mBoxSize - (this.mStrokeSize * 2);
        float f2 = this.mBoxRect.left + this.mStrokeSize;
        float f3 = this.mBoxRect.top + this.mStrokeSize;
        if (!isRunning()) {
            this.mPaint.setColor(this.mCurColor);
            this.mPaint.setStrokeWidth(this.mStrokeSize);
            this.mPaint.setStyle(Paint.Style.FILL_AND_STROKE);
            canvas.drawRoundRect(this.mBoxRect, this.mCornerRadius, this.mCornerRadius, this.mPaint);
            this.mPaint.setStyle(Paint.Style.STROKE);
            this.mPaint.setStrokeJoin(Paint.Join.MITER);
            this.mPaint.setStrokeCap(Paint.Cap.BUTT);
            this.mPaint.setColor(this.mTickColor);
            canvas.drawPath(getTickPath(this.mTickPath, f2, f3, f, 1.0f, true), this.mPaint);
        } else if (this.mAnimProgress < FILL_TIME) {
            float f4 = this.mAnimProgress / FILL_TIME;
            float f5 = ((this.mBoxSize - this.mStrokeSize) / 2.0f) * f4;
            float f6 = ((this.mStrokeSize / 2.0f) + (f5 / 2.0f)) - 0.5f;
            this.mPaint.setColor(ColorUtil.getMiddleColor(this.mPrevColor, this.mCurColor, f4));
            this.mPaint.setStrokeWidth(f5);
            this.mPaint.setStyle(Paint.Style.STROKE);
            canvas.drawRect(this.mBoxRect.left + f6, this.mBoxRect.top + f6, this.mBoxRect.right - f6, this.mBoxRect.bottom - f6, this.mPaint);
            this.mPaint.setStrokeWidth(this.mStrokeSize);
            canvas.drawRoundRect(this.mBoxRect, this.mCornerRadius, this.mCornerRadius, this.mPaint);
        } else {
            float f7 = (this.mAnimProgress - FILL_TIME) / 0.6f;
            this.mPaint.setColor(this.mCurColor);
            this.mPaint.setStrokeWidth(this.mStrokeSize);
            this.mPaint.setStyle(Paint.Style.FILL_AND_STROKE);
            canvas.drawRoundRect(this.mBoxRect, this.mCornerRadius, this.mCornerRadius, this.mPaint);
            this.mPaint.setStyle(Paint.Style.STROKE);
            this.mPaint.setStrokeJoin(Paint.Join.MITER);
            this.mPaint.setStrokeCap(Paint.Cap.BUTT);
            this.mPaint.setColor(this.mTickColor);
            canvas.drawPath(getTickPath(this.mTickPath, f2, f3, f, f7, true), this.mPaint);
        }
    }

    private void drawUnchecked(Canvas canvas) {
        if (!isRunning()) {
            this.mPaint.setColor(this.mCurColor);
            this.mPaint.setStrokeWidth(this.mStrokeSize);
            this.mPaint.setStyle(Paint.Style.STROKE);
            canvas.drawRoundRect(this.mBoxRect, this.mCornerRadius, this.mCornerRadius, this.mPaint);
        } else if (this.mAnimProgress < 0.6f) {
            float f = this.mBoxSize - (this.mStrokeSize * 2);
            float f2 = this.mBoxRect.left;
            float f3 = this.mStrokeSize;
            float f4 = this.mBoxRect.top;
            float f5 = this.mStrokeSize;
            float f6 = this.mAnimProgress / 0.6f;
            this.mPaint.setColor(this.mPrevColor);
            this.mPaint.setStrokeWidth(this.mStrokeSize);
            this.mPaint.setStyle(Paint.Style.FILL_AND_STROKE);
            canvas.drawRoundRect(this.mBoxRect, this.mCornerRadius, this.mCornerRadius, this.mPaint);
            this.mPaint.setStyle(Paint.Style.STROKE);
            this.mPaint.setStrokeJoin(Paint.Join.MITER);
            this.mPaint.setStrokeCap(Paint.Cap.BUTT);
            this.mPaint.setColor(this.mTickColor);
            canvas.drawPath(getTickPath(this.mTickPath, f2 + f3, f4 + f5, f, f6, false), this.mPaint);
        } else {
            float f7 = ((this.mAnimProgress + FILL_TIME) - 1.0f) / FILL_TIME;
            float f8 = ((this.mBoxSize - this.mStrokeSize) / 2.0f) * (1.0f - f7);
            float f9 = ((this.mStrokeSize / 2.0f) + (f8 / 2.0f)) - 0.5f;
            this.mPaint.setColor(ColorUtil.getMiddleColor(this.mPrevColor, this.mCurColor, f7));
            this.mPaint.setStrokeWidth(f8);
            this.mPaint.setStyle(Paint.Style.STROKE);
            canvas.drawRect(this.mBoxRect.left + f9, this.mBoxRect.top + f9, this.mBoxRect.right - f9, this.mBoxRect.bottom - f9, this.mPaint);
            this.mPaint.setStrokeWidth(this.mStrokeSize);
            canvas.drawRoundRect(this.mBoxRect, this.mCornerRadius, this.mCornerRadius, this.mPaint);
        }
    }

    private Path getTickPath(Path path, float f, float f2, float f3, float f4, boolean z) {
        if (this.mTickPathProgress == f4) {
            return path;
        }
        this.mTickPathProgress = f4;
        float f5 = f + (TICK_DATA[0] * f3);
        float f6 = f2 + (TICK_DATA[1] * f3);
        float f7 = f + (TICK_DATA[2] * f3);
        float f8 = f2 + (TICK_DATA[3] * f3);
        float f9 = f + (TICK_DATA[4] * f3);
        float f10 = f2 + (f3 * TICK_DATA[5]);
        double d = f5 - f7;
        double pow = Math.pow(d, 2.0d);
        double d2 = f6 - f8;
        float sqrt = (float) Math.sqrt(pow + Math.pow(d2, 2.0d));
        float sqrt2 = sqrt / (((float) Math.sqrt(Math.pow(d, 2.0d) + Math.pow(d2, 2.0d))) + sqrt);
        path.reset();
        if (z) {
            path.moveTo(f5, f6);
            if (f4 < sqrt2) {
                float f11 = f4 / sqrt2;
                float f12 = 1.0f - f11;
                path.lineTo((f5 * f12) + (f7 * f11), (f6 * f12) + (f8 * f11));
            } else {
                float f13 = (f4 - sqrt2) / (1.0f - sqrt2);
                path.lineTo(f7, f8);
                float f14 = 1.0f - f13;
                path.lineTo((f7 * f14) + (f9 * f13), (f8 * f14) + (f10 * f13));
            }
        } else {
            path.moveTo(f9, f10);
            if (f4 < sqrt2) {
                float f15 = f4 / sqrt2;
                path.lineTo(f7, f8);
                float f16 = 1.0f - f15;
                path.lineTo((f5 * f16) + (f7 * f15), (f6 * f16) + (f8 * f15));
            } else {
                float f17 = (f4 - sqrt2) / (1.0f - sqrt2);
                float f18 = 1.0f - f17;
                path.lineTo((f7 * f18) + (f9 * f17), (f8 * f18) + (f10 * f17));
            }
        }
        return path;
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
        if (this.mChecked) {
            drawChecked(canvas);
        } else {
            drawUnchecked(canvas);
        }
    }

    @Override // android.graphics.drawable.Drawable
    public int getIntrinsicHeight() {
        return this.mHeight;
    }

    @Override // android.graphics.drawable.Drawable
    public int getIntrinsicWidth() {
        return this.mWidth;
    }

    @Override // android.graphics.drawable.Drawable
    public int getMinimumHeight() {
        return this.mHeight;
    }

    @Override // android.graphics.drawable.Drawable
    public int getMinimumWidth() {
        return this.mWidth;
    }

    @Override // android.graphics.drawable.Drawable
    public int getOpacity() {
        return -3;
    }

    public boolean isAnimEnable() {
        return this.mAnimEnable;
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
        this.mBoxRect.set(rect.exactCenterX() - (this.mBoxSize / 2), rect.exactCenterY() - (this.mBoxSize / 2), rect.exactCenterX() + (this.mBoxSize / 2), rect.exactCenterY() + (this.mBoxSize / 2));
    }

    @Override // android.graphics.drawable.Drawable
    protected boolean onStateChange(int[] iArr) {
        boolean z;
        boolean z2;
        boolean hasState = ViewUtil.hasState(iArr, 16842912);
        int colorForState = this.mStrokeColor.getColorForState(iArr, this.mCurColor);
        if (this.mChecked != hasState) {
            this.mChecked = hasState;
            if (!this.mInEditMode && this.mAnimEnable) {
                start();
            }
            z = true;
        } else {
            z = false;
        }
        if (this.mCurColor != colorForState) {
            this.mPrevColor = isRunning() ? this.mCurColor : colorForState;
            this.mCurColor = colorForState;
            z2 = true;
        } else {
            z2 = z;
            if (!isRunning()) {
                this.mPrevColor = colorForState;
                z2 = z;
            }
        }
        return z2;
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

    @Override // android.graphics.drawable.Drawable
    public void setColorFilter(ColorFilter colorFilter) {
        this.mPaint.setColorFilter(colorFilter);
    }

    public void setInEditMode(boolean z) {
        this.mInEditMode = z;
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

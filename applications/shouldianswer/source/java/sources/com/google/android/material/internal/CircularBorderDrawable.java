package com.google.android.material.internal;

import android.content.res.ColorStateList;
import android.graphics.Canvas;
import android.graphics.ColorFilter;
import android.graphics.LinearGradient;
import android.graphics.Paint;
import android.graphics.Rect;
import android.graphics.RectF;
import android.graphics.Shader;
import android.graphics.drawable.Drawable;
import androidx.core.graphics.C0569a;
import com.google.android.flexbox.FlexItem;
/* loaded from: classes-dex2jar.jar:com/google/android/material/internal/CircularBorderDrawable.class */
public class CircularBorderDrawable extends Drawable {
    private static final float DRAW_STROKE_WIDTH_MULTIPLE = 1.3333f;
    private ColorStateList borderTint;
    float borderWidth;
    private int bottomInnerStrokeColor;
    private int bottomOuterStrokeColor;
    private int currentBorderTintColor;
    private float rotation;
    private int topInnerStrokeColor;
    private int topOuterStrokeColor;
    final Rect rect = new Rect();
    final RectF rectF = new RectF();
    final CircularBorderState state = new CircularBorderState();
    private boolean invalidateShader = true;
    final Paint paint = new Paint(1);

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes-dex2jar.jar:com/google/android/material/internal/CircularBorderDrawable$CircularBorderState.class */
    public class CircularBorderState extends Drawable.ConstantState {
        private CircularBorderState() {
            CircularBorderDrawable.this = r4;
        }

        @Override // android.graphics.drawable.Drawable.ConstantState
        public int getChangingConfigurations() {
            return 0;
        }

        @Override // android.graphics.drawable.Drawable.ConstantState
        public Drawable newDrawable() {
            return CircularBorderDrawable.this;
        }
    }

    public CircularBorderDrawable() {
        this.paint.setStyle(Paint.Style.STROKE);
    }

    private Shader createGradientShader() {
        Rect rect = this.rect;
        copyBounds(rect);
        float height = this.borderWidth / rect.height();
        int m6173a = C0569a.m6173a(this.topOuterStrokeColor, this.currentBorderTintColor);
        int m6173a2 = C0569a.m6173a(this.topInnerStrokeColor, this.currentBorderTintColor);
        int m6173a3 = C0569a.m6173a(C0569a.m6171b(this.topInnerStrokeColor, 0), this.currentBorderTintColor);
        int m6173a4 = C0569a.m6173a(C0569a.m6171b(this.bottomInnerStrokeColor, 0), this.currentBorderTintColor);
        int m6173a5 = C0569a.m6173a(this.bottomInnerStrokeColor, this.currentBorderTintColor);
        int m6173a6 = C0569a.m6173a(this.bottomOuterStrokeColor, this.currentBorderTintColor);
        return new LinearGradient((float) FlexItem.FLEX_GROW_DEFAULT, rect.top, (float) FlexItem.FLEX_GROW_DEFAULT, rect.bottom, new int[]{m6173a, m6173a2, m6173a3, m6173a4, m6173a5, m6173a6}, new float[]{FlexItem.FLEX_GROW_DEFAULT, height, 0.5f, 0.5f, 1.0f - height, 1.0f}, Shader.TileMode.CLAMP);
    }

    @Override // android.graphics.drawable.Drawable
    public void draw(Canvas canvas) {
        if (this.invalidateShader) {
            this.paint.setShader(createGradientShader());
            this.invalidateShader = false;
        }
        float strokeWidth = this.paint.getStrokeWidth() / 2.0f;
        RectF rectF = this.rectF;
        copyBounds(this.rect);
        rectF.set(this.rect);
        rectF.left += strokeWidth;
        rectF.top += strokeWidth;
        rectF.right -= strokeWidth;
        rectF.bottom -= strokeWidth;
        canvas.save();
        canvas.rotate(this.rotation, rectF.centerX(), rectF.centerY());
        canvas.drawOval(rectF, this.paint);
        canvas.restore();
    }

    @Override // android.graphics.drawable.Drawable
    public Drawable.ConstantState getConstantState() {
        return this.state;
    }

    @Override // android.graphics.drawable.Drawable
    public int getOpacity() {
        return this.borderWidth > FlexItem.FLEX_GROW_DEFAULT ? -3 : -2;
    }

    @Override // android.graphics.drawable.Drawable
    public boolean getPadding(Rect rect) {
        int round = Math.round(this.borderWidth);
        rect.set(round, round, round, round);
        return true;
    }

    @Override // android.graphics.drawable.Drawable
    public boolean isStateful() {
        ColorStateList colorStateList = this.borderTint;
        return (colorStateList != null && colorStateList.isStateful()) || super.isStateful();
    }

    @Override // android.graphics.drawable.Drawable
    protected void onBoundsChange(Rect rect) {
        this.invalidateShader = true;
    }

    @Override // android.graphics.drawable.Drawable
    protected boolean onStateChange(int[] iArr) {
        int colorForState;
        ColorStateList colorStateList = this.borderTint;
        if (colorStateList != null && (colorForState = colorStateList.getColorForState(iArr, this.currentBorderTintColor)) != this.currentBorderTintColor) {
            this.invalidateShader = true;
            this.currentBorderTintColor = colorForState;
        }
        if (this.invalidateShader) {
            invalidateSelf();
        }
        return this.invalidateShader;
    }

    @Override // android.graphics.drawable.Drawable
    public void setAlpha(int i) {
        this.paint.setAlpha(i);
        invalidateSelf();
    }

    public void setBorderTint(ColorStateList colorStateList) {
        if (colorStateList != null) {
            this.currentBorderTintColor = colorStateList.getColorForState(getState(), this.currentBorderTintColor);
        }
        this.borderTint = colorStateList;
        this.invalidateShader = true;
        invalidateSelf();
    }

    public void setBorderWidth(float f) {
        if (this.borderWidth != f) {
            this.borderWidth = f;
            this.paint.setStrokeWidth(f * DRAW_STROKE_WIDTH_MULTIPLE);
            this.invalidateShader = true;
            invalidateSelf();
        }
    }

    @Override // android.graphics.drawable.Drawable
    public void setColorFilter(ColorFilter colorFilter) {
        this.paint.setColorFilter(colorFilter);
        invalidateSelf();
    }

    public void setGradientColors(int i, int i2, int i3, int i4) {
        this.topOuterStrokeColor = i;
        this.topInnerStrokeColor = i2;
        this.bottomOuterStrokeColor = i3;
        this.bottomInnerStrokeColor = i4;
    }

    public final void setRotation(float f) {
        if (f != this.rotation) {
            this.rotation = f;
            invalidateSelf();
        }
    }
}

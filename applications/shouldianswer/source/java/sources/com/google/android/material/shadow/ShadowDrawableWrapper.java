package com.google.android.material.shadow;

import android.content.Context;
import android.graphics.Canvas;
import android.graphics.LinearGradient;
import android.graphics.Paint;
import android.graphics.Path;
import android.graphics.RadialGradient;
import android.graphics.Rect;
import android.graphics.RectF;
import android.graphics.Shader;
import android.graphics.drawable.Drawable;
import androidx.appcompat.p008b.p009a.C0146c;
import androidx.core.p015a.C0409a;
import com.google.android.flexbox.FlexItem;
import com.google.android.material.C1284R;
/* loaded from: classes-dex2jar.jar:com/google/android/material/shadow/ShadowDrawableWrapper.class */
public class ShadowDrawableWrapper extends C0146c {
    static final double COS_45 = Math.cos(Math.toRadians(45.0d));
    static final float SHADOW_BOTTOM_SCALE = 1.0f;
    static final float SHADOW_HORIZ_SCALE = 0.5f;
    static final float SHADOW_MULTIPLIER = 1.5f;
    static final float SHADOW_TOP_SCALE = 0.25f;
    float cornerRadius;
    Path cornerShadowPath;
    float maxShadowSize;
    float rawMaxShadowSize;
    float rawShadowSize;
    private float rotation;
    private final int shadowEndColor;
    private final int shadowMiddleColor;
    float shadowSize;
    private final int shadowStartColor;
    private boolean dirty = true;
    private boolean addPaddingForCorners = true;
    private boolean printedShadowClipWarning = false;
    final Paint cornerShadowPaint = new Paint(5);
    final RectF contentBounds = new RectF();
    final Paint edgeShadowPaint = new Paint(this.cornerShadowPaint);

    public ShadowDrawableWrapper(Context context, Drawable drawable, float f, float f2, float f3) {
        super(drawable);
        this.shadowStartColor = C0409a.m6746c(context, C1284R.color.design_fab_shadow_start_color);
        this.shadowMiddleColor = C0409a.m6746c(context, C1284R.color.design_fab_shadow_mid_color);
        this.shadowEndColor = C0409a.m6746c(context, C1284R.color.design_fab_shadow_end_color);
        this.cornerShadowPaint.setStyle(Paint.Style.FILL);
        this.cornerRadius = Math.round(f);
        this.edgeShadowPaint.setAntiAlias(false);
        setShadowSize(f2, f3);
    }

    private void buildComponents(Rect rect) {
        float f = this.rawMaxShadowSize * SHADOW_MULTIPLIER;
        this.contentBounds.set(rect.left + this.rawMaxShadowSize, rect.top + f, rect.right - this.rawMaxShadowSize, rect.bottom - f);
        getWrappedDrawable().setBounds((int) this.contentBounds.left, (int) this.contentBounds.top, (int) this.contentBounds.right, (int) this.contentBounds.bottom);
        buildShadowCorners();
    }

    private void buildShadowCorners() {
        float f = this.cornerRadius;
        RectF rectF = new RectF(-f, -f, f, f);
        RectF rectF2 = new RectF(rectF);
        float f2 = this.shadowSize;
        rectF2.inset(-f2, -f2);
        Path path = this.cornerShadowPath;
        if (path == null) {
            this.cornerShadowPath = new Path();
        } else {
            path.reset();
        }
        this.cornerShadowPath.setFillType(Path.FillType.EVEN_ODD);
        this.cornerShadowPath.moveTo(-this.cornerRadius, FlexItem.FLEX_GROW_DEFAULT);
        this.cornerShadowPath.rLineTo(-this.shadowSize, FlexItem.FLEX_GROW_DEFAULT);
        this.cornerShadowPath.arcTo(rectF2, 180.0f, 90.0f, false);
        this.cornerShadowPath.arcTo(rectF, 270.0f, -90.0f, false);
        this.cornerShadowPath.close();
        float f3 = -rectF2.top;
        if (f3 > FlexItem.FLEX_GROW_DEFAULT) {
            float f4 = this.cornerRadius / f3;
            float f5 = (1.0f - f4) / 2.0f;
            Paint paint = this.cornerShadowPaint;
            int i = this.shadowStartColor;
            int i2 = this.shadowMiddleColor;
            int i3 = this.shadowEndColor;
            paint.setShader(new RadialGradient((float) FlexItem.FLEX_GROW_DEFAULT, (float) FlexItem.FLEX_GROW_DEFAULT, f3, new int[]{0, i, i2, i3}, new float[]{FlexItem.FLEX_GROW_DEFAULT, f4, f5 + f4, 1.0f}, Shader.TileMode.CLAMP));
        }
        Paint paint2 = this.edgeShadowPaint;
        float f6 = rectF.top;
        float f7 = rectF2.top;
        int i4 = this.shadowStartColor;
        int i5 = this.shadowMiddleColor;
        int i6 = this.shadowEndColor;
        paint2.setShader(new LinearGradient((float) FlexItem.FLEX_GROW_DEFAULT, f6, (float) FlexItem.FLEX_GROW_DEFAULT, f7, new int[]{i4, i5, i6}, new float[]{FlexItem.FLEX_GROW_DEFAULT, SHADOW_HORIZ_SCALE, 1.0f}, Shader.TileMode.CLAMP));
        this.edgeShadowPaint.setAntiAlias(false);
    }

    public static float calculateHorizontalPadding(float f, float f2, boolean z) {
        float f3 = f;
        if (z) {
            f3 = (float) (f + ((1.0d - COS_45) * f2));
        }
        return f3;
    }

    public static float calculateVerticalPadding(float f, float f2, boolean z) {
        return z ? (float) ((f * SHADOW_MULTIPLIER) + ((1.0d - COS_45) * f2)) : f * SHADOW_MULTIPLIER;
    }

    private void drawShadow(Canvas canvas) {
        int save = canvas.save();
        canvas.rotate(this.rotation, this.contentBounds.centerX(), this.contentBounds.centerY());
        float f = this.cornerRadius;
        float f2 = (-f) - this.shadowSize;
        float f3 = f * 2.0f;
        boolean z = this.contentBounds.width() - f3 > FlexItem.FLEX_GROW_DEFAULT;
        boolean z2 = this.contentBounds.height() - f3 > FlexItem.FLEX_GROW_DEFAULT;
        float f4 = this.rawShadowSize;
        float f5 = f / ((f4 - (SHADOW_HORIZ_SCALE * f4)) + f);
        float f6 = f / ((f4 - (SHADOW_TOP_SCALE * f4)) + f);
        float f7 = f / ((f4 - (f4 * 1.0f)) + f);
        int save2 = canvas.save();
        canvas.translate(this.contentBounds.left + f, this.contentBounds.top + f);
        canvas.scale(f5, f6);
        canvas.drawPath(this.cornerShadowPath, this.cornerShadowPaint);
        if (z) {
            canvas.scale(1.0f / f5, 1.0f);
            canvas.drawRect(FlexItem.FLEX_GROW_DEFAULT, f2, this.contentBounds.width() - f3, -this.cornerRadius, this.edgeShadowPaint);
        }
        canvas.restoreToCount(save2);
        int save3 = canvas.save();
        canvas.translate(this.contentBounds.right - f, this.contentBounds.bottom - f);
        canvas.scale(f5, f7);
        canvas.rotate(180.0f);
        canvas.drawPath(this.cornerShadowPath, this.cornerShadowPaint);
        if (z) {
            canvas.scale(1.0f / f5, 1.0f);
            canvas.drawRect(FlexItem.FLEX_GROW_DEFAULT, f2, this.contentBounds.width() - f3, (-this.cornerRadius) + this.shadowSize, this.edgeShadowPaint);
        }
        canvas.restoreToCount(save3);
        int save4 = canvas.save();
        canvas.translate(this.contentBounds.left + f, this.contentBounds.bottom - f);
        canvas.scale(f5, f7);
        canvas.rotate(270.0f);
        canvas.drawPath(this.cornerShadowPath, this.cornerShadowPaint);
        if (z2) {
            canvas.scale(1.0f / f7, 1.0f);
            canvas.drawRect(FlexItem.FLEX_GROW_DEFAULT, f2, this.contentBounds.height() - f3, -this.cornerRadius, this.edgeShadowPaint);
        }
        canvas.restoreToCount(save4);
        int save5 = canvas.save();
        canvas.translate(this.contentBounds.right - f, this.contentBounds.top + f);
        canvas.scale(f5, f6);
        canvas.rotate(90.0f);
        canvas.drawPath(this.cornerShadowPath, this.cornerShadowPaint);
        if (z2) {
            canvas.scale(1.0f / f6, 1.0f);
            canvas.drawRect(FlexItem.FLEX_GROW_DEFAULT, f2, this.contentBounds.height() - f3, -this.cornerRadius, this.edgeShadowPaint);
        }
        canvas.restoreToCount(save5);
        canvas.restoreToCount(save);
    }

    private static int toEven(float f) {
        int round = Math.round(f);
        int i = round;
        if (round % 2 == 1) {
            i = round - 1;
        }
        return i;
    }

    @Override // androidx.appcompat.p008b.p009a.C0146c, android.graphics.drawable.Drawable
    public void draw(Canvas canvas) {
        if (this.dirty) {
            buildComponents(getBounds());
            this.dirty = false;
        }
        drawShadow(canvas);
        super.draw(canvas);
    }

    public float getCornerRadius() {
        return this.cornerRadius;
    }

    public float getMaxShadowSize() {
        return this.rawMaxShadowSize;
    }

    public float getMinHeight() {
        float f = this.rawMaxShadowSize;
        return (Math.max(f, this.cornerRadius + ((f * SHADOW_MULTIPLIER) / 2.0f)) * 2.0f) + (this.rawMaxShadowSize * SHADOW_MULTIPLIER * 2.0f);
    }

    public float getMinWidth() {
        float f = this.rawMaxShadowSize;
        return (Math.max(f, this.cornerRadius + (f / 2.0f)) * 2.0f) + (this.rawMaxShadowSize * 2.0f);
    }

    @Override // androidx.appcompat.p008b.p009a.C0146c, android.graphics.drawable.Drawable
    public int getOpacity() {
        return -3;
    }

    @Override // androidx.appcompat.p008b.p009a.C0146c, android.graphics.drawable.Drawable
    public boolean getPadding(Rect rect) {
        int ceil = (int) Math.ceil(calculateVerticalPadding(this.rawMaxShadowSize, this.cornerRadius, this.addPaddingForCorners));
        int ceil2 = (int) Math.ceil(calculateHorizontalPadding(this.rawMaxShadowSize, this.cornerRadius, this.addPaddingForCorners));
        rect.set(ceil2, ceil, ceil2, ceil);
        return true;
    }

    public float getShadowSize() {
        return this.rawShadowSize;
    }

    @Override // androidx.appcompat.p008b.p009a.C0146c, android.graphics.drawable.Drawable
    protected void onBoundsChange(Rect rect) {
        this.dirty = true;
    }

    public void setAddPaddingForCorners(boolean z) {
        this.addPaddingForCorners = z;
        invalidateSelf();
    }

    @Override // androidx.appcompat.p008b.p009a.C0146c, android.graphics.drawable.Drawable
    public void setAlpha(int i) {
        super.setAlpha(i);
        this.cornerShadowPaint.setAlpha(i);
        this.edgeShadowPaint.setAlpha(i);
    }

    public void setCornerRadius(float f) {
        float round = Math.round(f);
        if (this.cornerRadius == round) {
            return;
        }
        this.cornerRadius = round;
        this.dirty = true;
        invalidateSelf();
    }

    public void setMaxShadowSize(float f) {
        setShadowSize(this.rawShadowSize, f);
    }

    public final void setRotation(float f) {
        if (this.rotation != f) {
            this.rotation = f;
            invalidateSelf();
        }
    }

    public void setShadowSize(float f) {
        setShadowSize(f, this.rawMaxShadowSize);
    }

    public void setShadowSize(float f, float f2) {
        if (f < FlexItem.FLEX_GROW_DEFAULT || f2 < FlexItem.FLEX_GROW_DEFAULT) {
            throw new IllegalArgumentException("invalid shadow size");
        }
        float even = toEven(f);
        float even2 = toEven(f2);
        float f3 = even;
        if (even > even2) {
            if (!this.printedShadowClipWarning) {
                this.printedShadowClipWarning = true;
            }
            f3 = even2;
        }
        if (this.rawShadowSize == f3 && this.rawMaxShadowSize == even2) {
            return;
        }
        this.rawShadowSize = f3;
        this.rawMaxShadowSize = even2;
        this.shadowSize = Math.round(f3 * SHADOW_MULTIPLIER);
        this.maxShadowSize = even2;
        this.dirty = true;
        invalidateSelf();
    }
}

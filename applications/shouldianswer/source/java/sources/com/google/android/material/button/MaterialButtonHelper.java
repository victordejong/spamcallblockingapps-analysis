package com.google.android.material.button;

import android.content.res.ColorStateList;
import android.content.res.TypedArray;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.PorterDuff;
import android.graphics.Rect;
import android.graphics.RectF;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.GradientDrawable;
import android.graphics.drawable.InsetDrawable;
import android.graphics.drawable.LayerDrawable;
import android.graphics.drawable.RippleDrawable;
import android.os.Build;
import androidx.core.graphics.drawable.C0575a;
import androidx.core.p023g.C0552u;
import com.google.android.material.C1284R;
import com.google.android.material.internal.ViewUtils;
import com.google.android.material.resources.MaterialResources;
import com.google.android.material.ripple.RippleUtils;
/* loaded from: classes-dex2jar.jar:com/google/android/material/button/MaterialButtonHelper.class */
public class MaterialButtonHelper {
    private static final float CORNER_RADIUS_ADJUSTMENT = 1.0E-5f;
    private static final int DEFAULT_BACKGROUND_COLOR = -1;
    private static final boolean IS_LOLLIPOP;
    private GradientDrawable backgroundDrawableLollipop;
    private ColorStateList backgroundTint;
    private PorterDuff.Mode backgroundTintMode;
    private GradientDrawable colorableBackgroundDrawableCompat;
    private int cornerRadius;
    private int insetBottom;
    private int insetLeft;
    private int insetRight;
    private int insetTop;
    private GradientDrawable maskDrawableLollipop;
    private final MaterialButton materialButton;
    private ColorStateList rippleColor;
    private GradientDrawable rippleDrawableCompat;
    private ColorStateList strokeColor;
    private GradientDrawable strokeDrawableLollipop;
    private int strokeWidth;
    private Drawable tintableBackgroundDrawableCompat;
    private Drawable tintableRippleDrawableCompat;
    private final Paint buttonStrokePaint = new Paint(1);
    private final Rect bounds = new Rect();
    private final RectF rectF = new RectF();
    private boolean backgroundOverwritten = false;

    static {
        IS_LOLLIPOP = Build.VERSION.SDK_INT >= 21;
    }

    public MaterialButtonHelper(MaterialButton materialButton) {
        this.materialButton = materialButton;
    }

    private Drawable createBackgroundCompat() {
        this.colorableBackgroundDrawableCompat = new GradientDrawable();
        this.colorableBackgroundDrawableCompat.setCornerRadius(this.cornerRadius + CORNER_RADIUS_ADJUSTMENT);
        this.colorableBackgroundDrawableCompat.setColor(-1);
        this.tintableBackgroundDrawableCompat = C0575a.m6122g(this.colorableBackgroundDrawableCompat);
        C0575a.m6133a(this.tintableBackgroundDrawableCompat, this.backgroundTint);
        PorterDuff.Mode mode = this.backgroundTintMode;
        if (mode != null) {
            C0575a.m6130a(this.tintableBackgroundDrawableCompat, mode);
        }
        this.rippleDrawableCompat = new GradientDrawable();
        this.rippleDrawableCompat.setCornerRadius(this.cornerRadius + CORNER_RADIUS_ADJUSTMENT);
        this.rippleDrawableCompat.setColor(-1);
        this.tintableRippleDrawableCompat = C0575a.m6122g(this.rippleDrawableCompat);
        C0575a.m6133a(this.tintableRippleDrawableCompat, this.rippleColor);
        return wrapDrawableWithInset(new LayerDrawable(new Drawable[]{this.tintableBackgroundDrawableCompat, this.tintableRippleDrawableCompat}));
    }

    private Drawable createBackgroundLollipop() {
        this.backgroundDrawableLollipop = new GradientDrawable();
        this.backgroundDrawableLollipop.setCornerRadius(this.cornerRadius + CORNER_RADIUS_ADJUSTMENT);
        this.backgroundDrawableLollipop.setColor(-1);
        updateTintAndTintModeLollipop();
        this.strokeDrawableLollipop = new GradientDrawable();
        this.strokeDrawableLollipop.setCornerRadius(this.cornerRadius + CORNER_RADIUS_ADJUSTMENT);
        this.strokeDrawableLollipop.setColor(0);
        this.strokeDrawableLollipop.setStroke(this.strokeWidth, this.strokeColor);
        InsetDrawable wrapDrawableWithInset = wrapDrawableWithInset(new LayerDrawable(new Drawable[]{this.backgroundDrawableLollipop, this.strokeDrawableLollipop}));
        this.maskDrawableLollipop = new GradientDrawable();
        this.maskDrawableLollipop.setCornerRadius(this.cornerRadius + CORNER_RADIUS_ADJUSTMENT);
        this.maskDrawableLollipop.setColor(-1);
        return new MaterialButtonBackgroundDrawable(RippleUtils.convertToRippleDrawableColor(this.rippleColor), wrapDrawableWithInset, this.maskDrawableLollipop);
    }

    private GradientDrawable unwrapBackgroundDrawable() {
        if (!IS_LOLLIPOP || this.materialButton.getBackground() == null) {
            return null;
        }
        return (GradientDrawable) ((LayerDrawable) ((InsetDrawable) ((RippleDrawable) this.materialButton.getBackground()).getDrawable(0)).getDrawable()).getDrawable(0);
    }

    private GradientDrawable unwrapStrokeDrawable() {
        if (!IS_LOLLIPOP || this.materialButton.getBackground() == null) {
            return null;
        }
        return (GradientDrawable) ((LayerDrawable) ((InsetDrawable) ((RippleDrawable) this.materialButton.getBackground()).getDrawable(0)).getDrawable()).getDrawable(1);
    }

    private void updateStroke() {
        if (IS_LOLLIPOP && this.strokeDrawableLollipop != null) {
            this.materialButton.setInternalBackground(createBackgroundLollipop());
        } else if (IS_LOLLIPOP) {
        } else {
            this.materialButton.invalidate();
        }
    }

    private void updateTintAndTintModeLollipop() {
        GradientDrawable gradientDrawable = this.backgroundDrawableLollipop;
        if (gradientDrawable != null) {
            C0575a.m6133a(gradientDrawable, this.backgroundTint);
            PorterDuff.Mode mode = this.backgroundTintMode;
            if (mode == null) {
                return;
            }
            C0575a.m6130a(this.backgroundDrawableLollipop, mode);
        }
    }

    private InsetDrawable wrapDrawableWithInset(Drawable drawable) {
        return new InsetDrawable(drawable, this.insetLeft, this.insetTop, this.insetRight, this.insetBottom);
    }

    public void drawStroke(Canvas canvas) {
        if (canvas == null || this.strokeColor == null || this.strokeWidth <= 0) {
            return;
        }
        this.bounds.set(this.materialButton.getBackground().getBounds());
        this.rectF.set(this.bounds.left + (this.strokeWidth / 2.0f) + this.insetLeft, this.bounds.top + (this.strokeWidth / 2.0f) + this.insetTop, (this.bounds.right - (this.strokeWidth / 2.0f)) - this.insetRight, (this.bounds.bottom - (this.strokeWidth / 2.0f)) - this.insetBottom);
        float f = this.cornerRadius - (this.strokeWidth / 2.0f);
        canvas.drawRoundRect(this.rectF, f, f, this.buttonStrokePaint);
    }

    public int getCornerRadius() {
        return this.cornerRadius;
    }

    public ColorStateList getRippleColor() {
        return this.rippleColor;
    }

    public ColorStateList getStrokeColor() {
        return this.strokeColor;
    }

    public int getStrokeWidth() {
        return this.strokeWidth;
    }

    public ColorStateList getSupportBackgroundTintList() {
        return this.backgroundTint;
    }

    public PorterDuff.Mode getSupportBackgroundTintMode() {
        return this.backgroundTintMode;
    }

    public boolean isBackgroundOverwritten() {
        return this.backgroundOverwritten;
    }

    public void loadFromAttributes(TypedArray typedArray) {
        int i = 0;
        this.insetLeft = typedArray.getDimensionPixelOffset(C1284R.styleable.MaterialButton_android_insetLeft, 0);
        this.insetRight = typedArray.getDimensionPixelOffset(C1284R.styleable.MaterialButton_android_insetRight, 0);
        this.insetTop = typedArray.getDimensionPixelOffset(C1284R.styleable.MaterialButton_android_insetTop, 0);
        this.insetBottom = typedArray.getDimensionPixelOffset(C1284R.styleable.MaterialButton_android_insetBottom, 0);
        this.cornerRadius = typedArray.getDimensionPixelSize(C1284R.styleable.MaterialButton_cornerRadius, 0);
        this.strokeWidth = typedArray.getDimensionPixelSize(C1284R.styleable.MaterialButton_strokeWidth, 0);
        this.backgroundTintMode = ViewUtils.parseTintMode(typedArray.getInt(C1284R.styleable.MaterialButton_backgroundTintMode, -1), PorterDuff.Mode.SRC_IN);
        this.backgroundTint = MaterialResources.getColorStateList(this.materialButton.getContext(), typedArray, C1284R.styleable.MaterialButton_backgroundTint);
        this.strokeColor = MaterialResources.getColorStateList(this.materialButton.getContext(), typedArray, C1284R.styleable.MaterialButton_strokeColor);
        this.rippleColor = MaterialResources.getColorStateList(this.materialButton.getContext(), typedArray, C1284R.styleable.MaterialButton_rippleColor);
        this.buttonStrokePaint.setStyle(Paint.Style.STROKE);
        this.buttonStrokePaint.setStrokeWidth(this.strokeWidth);
        Paint paint = this.buttonStrokePaint;
        ColorStateList colorStateList = this.strokeColor;
        if (colorStateList != null) {
            i = colorStateList.getColorForState(this.materialButton.getDrawableState(), 0);
        }
        paint.setColor(i);
        int m6237j = C0552u.m6237j(this.materialButton);
        int paddingTop = this.materialButton.getPaddingTop();
        int m6236k = C0552u.m6236k(this.materialButton);
        int paddingBottom = this.materialButton.getPaddingBottom();
        this.materialButton.setInternalBackground(IS_LOLLIPOP ? createBackgroundLollipop() : createBackgroundCompat());
        C0552u.m6277a(this.materialButton, m6237j + this.insetLeft, paddingTop + this.insetTop, m6236k + this.insetRight, paddingBottom + this.insetBottom);
    }

    public void setBackgroundColor(int i) {
        GradientDrawable gradientDrawable;
        GradientDrawable gradientDrawable2;
        if (IS_LOLLIPOP && (gradientDrawable2 = this.backgroundDrawableLollipop) != null) {
            gradientDrawable2.setColor(i);
        } else if (IS_LOLLIPOP || (gradientDrawable = this.colorableBackgroundDrawableCompat) == null) {
        } else {
            gradientDrawable.setColor(i);
        }
    }

    public void setBackgroundOverwritten() {
        this.backgroundOverwritten = true;
        this.materialButton.setSupportBackgroundTintList(this.backgroundTint);
        this.materialButton.setSupportBackgroundTintMode(this.backgroundTintMode);
    }

    public void setCornerRadius(int i) {
        GradientDrawable gradientDrawable;
        if (this.cornerRadius != i) {
            this.cornerRadius = i;
            if (!IS_LOLLIPOP || this.backgroundDrawableLollipop == null || this.strokeDrawableLollipop == null || this.maskDrawableLollipop == null) {
                if (IS_LOLLIPOP || (gradientDrawable = this.colorableBackgroundDrawableCompat) == null || this.rippleDrawableCompat == null) {
                    return;
                }
                float f = i + CORNER_RADIUS_ADJUSTMENT;
                gradientDrawable.setCornerRadius(f);
                this.rippleDrawableCompat.setCornerRadius(f);
                this.materialButton.invalidate();
                return;
            }
            if (Build.VERSION.SDK_INT == 21) {
                GradientDrawable unwrapBackgroundDrawable = unwrapBackgroundDrawable();
                float f2 = i + CORNER_RADIUS_ADJUSTMENT;
                unwrapBackgroundDrawable.setCornerRadius(f2);
                unwrapStrokeDrawable().setCornerRadius(f2);
            }
            GradientDrawable gradientDrawable2 = this.backgroundDrawableLollipop;
            float f3 = i + CORNER_RADIUS_ADJUSTMENT;
            gradientDrawable2.setCornerRadius(f3);
            this.strokeDrawableLollipop.setCornerRadius(f3);
            this.maskDrawableLollipop.setCornerRadius(f3);
        }
    }

    public void setRippleColor(ColorStateList colorStateList) {
        Drawable drawable;
        if (this.rippleColor != colorStateList) {
            this.rippleColor = colorStateList;
            if (IS_LOLLIPOP && (this.materialButton.getBackground() instanceof RippleDrawable)) {
                ((RippleDrawable) this.materialButton.getBackground()).setColor(colorStateList);
            } else if (IS_LOLLIPOP || (drawable = this.tintableRippleDrawableCompat) == null) {
            } else {
                C0575a.m6133a(drawable, colorStateList);
            }
        }
    }

    public void setStrokeColor(ColorStateList colorStateList) {
        if (this.strokeColor != colorStateList) {
            this.strokeColor = colorStateList;
            Paint paint = this.buttonStrokePaint;
            int i = 0;
            if (colorStateList != null) {
                i = colorStateList.getColorForState(this.materialButton.getDrawableState(), 0);
            }
            paint.setColor(i);
            updateStroke();
        }
    }

    public void setStrokeWidth(int i) {
        if (this.strokeWidth != i) {
            this.strokeWidth = i;
            this.buttonStrokePaint.setStrokeWidth(i);
            updateStroke();
        }
    }

    public void setSupportBackgroundTintList(ColorStateList colorStateList) {
        if (this.backgroundTint != colorStateList) {
            this.backgroundTint = colorStateList;
            if (IS_LOLLIPOP) {
                updateTintAndTintModeLollipop();
                return;
            }
            Drawable drawable = this.tintableBackgroundDrawableCompat;
            if (drawable == null) {
                return;
            }
            C0575a.m6133a(drawable, this.backgroundTint);
        }
    }

    public void setSupportBackgroundTintMode(PorterDuff.Mode mode) {
        PorterDuff.Mode mode2;
        if (this.backgroundTintMode != mode) {
            this.backgroundTintMode = mode;
            if (IS_LOLLIPOP) {
                updateTintAndTintModeLollipop();
                return;
            }
            Drawable drawable = this.tintableBackgroundDrawableCompat;
            if (drawable == null || (mode2 = this.backgroundTintMode) == null) {
                return;
            }
            C0575a.m6130a(drawable, mode2);
        }
    }

    public void updateMaskBounds(int i, int i2) {
        GradientDrawable gradientDrawable = this.maskDrawableLollipop;
        if (gradientDrawable != null) {
            gradientDrawable.setBounds(this.insetLeft, this.insetTop, i2 - this.insetRight, i - this.insetBottom);
        }
    }
}

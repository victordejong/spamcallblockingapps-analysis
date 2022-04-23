package com.google.android.material.ripple;

import android.content.res.ColorStateList;
import android.graphics.Canvas;
import android.graphics.ColorFilter;
import android.graphics.PorterDuff;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import androidx.annotation.ColorInt;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.RestrictTo;
import androidx.core.graphics.drawable.TintAwareDrawable;
import com.google.android.material.shape.MaterialShapeDrawable;
import com.google.android.material.shape.ShapeAppearanceModel;
import com.google.android.material.shape.Shapeable;
@RestrictTo
/* loaded from: classes-dex2jar.jar:com/google/android/material/ripple/RippleDrawableCompat.class */
public class RippleDrawableCompat extends Drawable implements Shapeable, TintAwareDrawable {

    /* renamed from: f */
    private RippleDrawableCompatState f11005f;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes-dex2jar.jar:com/google/android/material/ripple/RippleDrawableCompat$RippleDrawableCompatState.class */
    public static final class RippleDrawableCompatState extends Drawable.ConstantState {
        @NonNull

        /* renamed from: a */
        MaterialShapeDrawable f11006a;

        /* renamed from: b */
        boolean f11007b;

        public RippleDrawableCompatState(@NonNull RippleDrawableCompatState rippleDrawableCompatState) {
            this.f11006a = (MaterialShapeDrawable) rippleDrawableCompatState.f11006a.getConstantState().newDrawable();
            this.f11007b = rippleDrawableCompatState.f11007b;
        }

        public RippleDrawableCompatState(MaterialShapeDrawable materialShapeDrawable) {
            this.f11006a = materialShapeDrawable;
            this.f11007b = false;
        }

        @NonNull
        /* renamed from: a */
        public RippleDrawableCompat newDrawable() {
            return new RippleDrawableCompat(new RippleDrawableCompatState(this));
        }

        @Override // android.graphics.drawable.Drawable.ConstantState
        public int getChangingConfigurations() {
            return 0;
        }
    }

    private RippleDrawableCompat(RippleDrawableCompatState rippleDrawableCompatState) {
        this.f11005f = rippleDrawableCompatState;
    }

    public RippleDrawableCompat(ShapeAppearanceModel shapeAppearanceModel) {
        this(new RippleDrawableCompatState(new MaterialShapeDrawable(shapeAppearanceModel)));
    }

    @NonNull
    /* renamed from: a */
    public RippleDrawableCompat m9372a() {
        this.f11005f = new RippleDrawableCompatState(this.f11005f);
        return this;
    }

    @Override // android.graphics.drawable.Drawable
    public void draw(Canvas canvas) {
        RippleDrawableCompatState rippleDrawableCompatState = this.f11005f;
        if (rippleDrawableCompatState.f11007b) {
            rippleDrawableCompatState.f11006a.draw(canvas);
        }
    }

    @Override // android.graphics.drawable.Drawable
    @Nullable
    public Drawable.ConstantState getConstantState() {
        return this.f11005f;
    }

    @Override // android.graphics.drawable.Drawable
    public int getOpacity() {
        return this.f11005f.f11006a.getOpacity();
    }

    @Override // com.google.android.material.shape.Shapeable
    @NonNull
    public ShapeAppearanceModel getShapeAppearanceModel() {
        return this.f11005f.f11006a.getShapeAppearanceModel();
    }

    @Override // android.graphics.drawable.Drawable
    public boolean isStateful() {
        return true;
    }

    @Override // android.graphics.drawable.Drawable
    @NonNull
    public /* bridge */ /* synthetic */ Drawable mutate() {
        m9372a();
        return this;
    }

    @Override // android.graphics.drawable.Drawable
    protected void onBoundsChange(@NonNull Rect rect) {
        super.onBoundsChange(rect);
        this.f11005f.f11006a.setBounds(rect);
    }

    @Override // android.graphics.drawable.Drawable
    protected boolean onStateChange(@NonNull int[] iArr) {
        boolean onStateChange = super.onStateChange(iArr);
        onStateChange = true;
        if (this.f11005f.f11006a.setState(iArr)) {
            onStateChange = true;
        }
        boolean e = RippleUtils.m9366e(iArr);
        RippleDrawableCompatState rippleDrawableCompatState = this.f11005f;
        if (rippleDrawableCompatState.f11007b != e) {
            rippleDrawableCompatState.f11007b = e;
        }
        return onStateChange;
    }

    @Override // android.graphics.drawable.Drawable
    public void setAlpha(int i) {
        this.f11005f.f11006a.setAlpha(i);
    }

    @Override // android.graphics.drawable.Drawable
    public void setColorFilter(@Nullable ColorFilter colorFilter) {
        this.f11005f.f11006a.setColorFilter(colorFilter);
    }

    @Override // com.google.android.material.shape.Shapeable
    public void setShapeAppearanceModel(@NonNull ShapeAppearanceModel shapeAppearanceModel) {
        this.f11005f.f11006a.setShapeAppearanceModel(shapeAppearanceModel);
    }

    @Override // android.graphics.drawable.Drawable, androidx.core.graphics.drawable.TintAwareDrawable
    public void setTint(@ColorInt int i) {
        this.f11005f.f11006a.setTint(i);
    }

    @Override // android.graphics.drawable.Drawable, androidx.core.graphics.drawable.TintAwareDrawable
    public void setTintList(@Nullable ColorStateList colorStateList) {
        this.f11005f.f11006a.setTintList(colorStateList);
    }

    @Override // android.graphics.drawable.Drawable, androidx.core.graphics.drawable.TintAwareDrawable
    public void setTintMode(@Nullable PorterDuff.Mode mode) {
        this.f11005f.f11006a.setTintMode(mode);
    }
}

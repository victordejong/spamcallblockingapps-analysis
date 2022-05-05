package com.google.android.material.button;

import android.content.Context;
import android.content.res.ColorStateList;
import android.content.res.TypedArray;
import android.graphics.Canvas;
import android.graphics.PorterDuff;
import android.graphics.drawable.Drawable;
import android.os.Build;
import android.util.AttributeSet;
import androidx.annotation.AbstractC0053Px;
import androidx.annotation.ColorInt;
import androidx.annotation.DrawableRes;
import androidx.annotation.Nullable;
import androidx.annotation.RestrictTo;
import androidx.appcompat.content.res.AppCompatResources;
import androidx.appcompat.widget.AppCompatButton;
import androidx.core.graphics.drawable.DrawableCompat;
import androidx.core.view.ViewCompat;
import androidx.core.widget.TextViewCompat;
import com.google.android.material.R$attr;
import com.google.android.material.R$style;
import com.google.android.material.R$styleable;
import p081h.p203i.p204a.p294f.p300f.C9187b;
import p081h.p203i.p204a.p294f.p308n.C9245k;
import p081h.p203i.p204a.p294f.p308n.C9246l;
import p081h.p203i.p204a.p294f.p310p.C9248a;
/* loaded from: classes2-dex2jar.jar:com/google/android/material/button/MaterialButton.class */
public class MaterialButton extends AppCompatButton {
    @Nullable

    /* renamed from: a */
    public final C9187b f7424a;
    @AbstractC0053Px

    /* renamed from: b */
    public int f7425b;

    /* renamed from: c */
    public PorterDuff.Mode f7426c;

    /* renamed from: d */
    public ColorStateList f7427d;

    /* renamed from: e */
    public Drawable f7428e;
    @AbstractC0053Px

    /* renamed from: f */
    public int f7429f;
    @AbstractC0053Px

    /* renamed from: g */
    public int f7430g;

    /* renamed from: h */
    public int f7431h;

    public MaterialButton(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, R$attr.materialButtonStyle);
    }

    public MaterialButton(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        TypedArray c = C9245k.m15637c(context, attributeSet, R$styleable.MaterialButton, i, R$style.Widget_MaterialComponents_Button, new int[0]);
        this.f7425b = c.getDimensionPixelSize(R$styleable.MaterialButton_iconPadding, 0);
        this.f7426c = C9246l.m15635a(c.getInt(R$styleable.MaterialButton_iconTintMode, -1), PorterDuff.Mode.SRC_IN);
        this.f7427d = C9248a.m15628a(getContext(), c, R$styleable.MaterialButton_iconTint);
        this.f7428e = C9248a.m15626b(getContext(), c, R$styleable.MaterialButton_icon);
        this.f7431h = c.getInteger(R$styleable.MaterialButton_iconGravity, 1);
        this.f7429f = c.getDimensionPixelSize(R$styleable.MaterialButton_iconSize, 0);
        this.f7424a = new C9187b(this);
        this.f7424a.m15925a(c);
        c.recycle();
        setCompoundDrawablePadding(this.f7425b);
        m31422c();
    }

    /* renamed from: a */
    public void m31424a(Drawable drawable) {
        super.setBackgroundDrawable(drawable);
    }

    /* renamed from: a */
    public final boolean m31425a() {
        boolean z = true;
        if (ViewCompat.getLayoutDirection(this) != 1) {
            z = false;
        }
        return z;
    }

    /* renamed from: b */
    public final boolean m31423b() {
        C9187b bVar = this.f7424a;
        return bVar != null && !bVar.m15918e();
    }

    /* renamed from: c */
    public final void m31422c() {
        Drawable drawable = this.f7428e;
        if (drawable != null) {
            this.f7428e = drawable.mutate();
            DrawableCompat.setTintList(this.f7428e, this.f7427d);
            PorterDuff.Mode mode = this.f7426c;
            if (mode != null) {
                DrawableCompat.setTintMode(this.f7428e, mode);
            }
            int i = this.f7429f;
            if (i == 0) {
                i = this.f7428e.getIntrinsicWidth();
            }
            int i2 = this.f7429f;
            if (i2 == 0) {
                i2 = this.f7428e.getIntrinsicHeight();
            }
            Drawable drawable2 = this.f7428e;
            int i3 = this.f7430g;
            drawable2.setBounds(i3, 0, i + i3, i2);
        }
        TextViewCompat.setCompoundDrawablesRelative(this, this.f7428e, null, null, null);
    }

    @Override // android.view.View
    @Nullable
    public ColorStateList getBackgroundTintList() {
        return getSupportBackgroundTintList();
    }

    @Override // android.view.View
    @Nullable
    public PorterDuff.Mode getBackgroundTintMode() {
        return getSupportBackgroundTintMode();
    }

    @Override // androidx.appcompat.widget.AppCompatButton, androidx.core.view.TintableBackgroundView
    @Nullable
    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
    public ColorStateList getSupportBackgroundTintList() {
        return m31423b() ? this.f7424a.m15920c() : super.getSupportBackgroundTintList();
    }

    @Override // androidx.appcompat.widget.AppCompatButton, androidx.core.view.TintableBackgroundView
    @Nullable
    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
    public PorterDuff.Mode getSupportBackgroundTintMode() {
        return m31423b() ? this.f7424a.m15919d() : super.getSupportBackgroundTintMode();
    }

    @Override // android.widget.TextView, android.view.View
    public void onDraw(Canvas canvas) {
        super.onDraw(canvas);
        if (Build.VERSION.SDK_INT < 21 && m31423b()) {
            this.f7424a.m15924a(canvas);
        }
    }

    @Override // androidx.appcompat.widget.AppCompatButton, android.widget.TextView, android.view.View
    public void onLayout(boolean z, int i, int i2, int i3, int i4) {
        C9187b bVar;
        super.onLayout(z, i, i2, i3, i4);
        if (Build.VERSION.SDK_INT == 21 && (bVar = this.f7424a) != null) {
            bVar.m15927a(i4 - i2, i3 - i);
        }
    }

    @Override // android.widget.TextView, android.view.View
    public void onMeasure(int i, int i2) {
        super.onMeasure(i, i2);
        if (this.f7428e != null && this.f7431h == 2) {
            int measureText = (int) getPaint().measureText(getText().toString());
            int i3 = this.f7429f;
            int i4 = i3;
            if (i3 == 0) {
                i4 = this.f7428e.getIntrinsicWidth();
            }
            int measuredWidth = (((((getMeasuredWidth() - measureText) - ViewCompat.getPaddingEnd(this)) - i4) - this.f7425b) - ViewCompat.getPaddingStart(this)) / 2;
            int i5 = measuredWidth;
            if (m31425a()) {
                i5 = -measuredWidth;
            }
            if (this.f7430g != i5) {
                this.f7430g = i5;
                m31422c();
            }
        }
    }

    @Override // android.view.View
    public void setBackground(Drawable drawable) {
        setBackgroundDrawable(drawable);
    }

    @Override // android.view.View
    public void setBackgroundColor(@ColorInt int i) {
        if (m31423b()) {
            this.f7424a.m15928a(i);
        } else {
            super.setBackgroundColor(i);
        }
    }

    @Override // androidx.appcompat.widget.AppCompatButton, android.view.View
    public void setBackgroundDrawable(Drawable drawable) {
        if (!m31423b()) {
            super.setBackgroundDrawable(drawable);
        } else if (drawable != getBackground()) {
            this.f7424a.m15917f();
            super.setBackgroundDrawable(drawable);
        } else {
            getBackground().setState(drawable.getState());
        }
    }

    @Override // androidx.appcompat.widget.AppCompatButton, android.view.View
    public void setBackgroundResource(@DrawableRes int i) {
        setBackgroundDrawable(i != 0 ? AppCompatResources.getDrawable(getContext(), i) : null);
    }

    @Override // android.view.View
    public void setBackgroundTintList(@Nullable ColorStateList colorStateList) {
        setSupportBackgroundTintList(colorStateList);
    }

    @Override // android.view.View
    public void setBackgroundTintMode(@Nullable PorterDuff.Mode mode) {
        setSupportBackgroundTintMode(mode);
    }

    @Override // androidx.appcompat.widget.AppCompatButton, androidx.core.view.TintableBackgroundView
    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
    public void setSupportBackgroundTintList(@Nullable ColorStateList colorStateList) {
        if (m31423b()) {
            this.f7424a.m15926a(colorStateList);
        } else if (this.f7424a != null) {
            super.setSupportBackgroundTintList(colorStateList);
        }
    }

    @Override // androidx.appcompat.widget.AppCompatButton, androidx.core.view.TintableBackgroundView
    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
    public void setSupportBackgroundTintMode(@Nullable PorterDuff.Mode mode) {
        if (m31423b()) {
            this.f7424a.m15923a(mode);
        } else if (this.f7424a != null) {
            super.setSupportBackgroundTintMode(mode);
        }
    }
}

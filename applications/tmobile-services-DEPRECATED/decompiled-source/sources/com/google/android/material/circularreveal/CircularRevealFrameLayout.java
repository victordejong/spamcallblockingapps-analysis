package com.google.android.material.circularreveal;

import android.annotation.SuppressLint;
import android.content.Context;
import android.graphics.Canvas;
import android.graphics.drawable.Drawable;
import android.util.AttributeSet;
import android.widget.FrameLayout;
import androidx.annotation.ColorInt;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.google.android.material.circularreveal.CircularRevealWidget;
/* loaded from: classes-dex2jar.jar:com/google/android/material/circularreveal/CircularRevealFrameLayout.class */
public class CircularRevealFrameLayout extends FrameLayout implements CircularRevealWidget {
    @NonNull

    /* renamed from: f */
    private final CircularRevealHelper f10466f;

    public CircularRevealFrameLayout(@NonNull Context context) {
        this(context, null);
    }

    public CircularRevealFrameLayout(@NonNull Context context, @Nullable AttributeSet attributeSet) {
        super(context, attributeSet);
        this.f10466f = new CircularRevealHelper(this);
    }

    @Override // android.view.View
    @SuppressLint({"MissingSuperCall"})
    public void draw(@NonNull Canvas canvas) {
        CircularRevealHelper circularRevealHelper = this.f10466f;
        if (circularRevealHelper != null) {
            circularRevealHelper.m10042c(canvas);
        } else {
            super.draw(canvas);
        }
    }

    @Nullable
    public Drawable getCircularRevealOverlayDrawable() {
        return this.f10466f.m10040e();
    }

    @Override // com.google.android.material.circularreveal.CircularRevealWidget
    public int getCircularRevealScrimColor() {
        return this.f10466f.m10039f();
    }

    @Override // com.google.android.material.circularreveal.CircularRevealWidget
    @Nullable
    public CircularRevealWidget.RevealInfo getRevealInfo() {
        return this.f10466f.m10037h();
    }

    @Override // com.google.android.material.circularreveal.CircularRevealWidget
    /* renamed from: h */
    public void mo10020h() {
        this.f10466f.m10044a();
    }

    @Override // android.view.View
    public boolean isOpaque() {
        CircularRevealHelper circularRevealHelper = this.f10466f;
        return circularRevealHelper != null ? circularRevealHelper.m10035j() : super.isOpaque();
    }

    @Override // com.google.android.material.circularreveal.CircularRevealWidget
    /* renamed from: o */
    public void mo10019o() {
        this.f10466f.m10043b();
    }

    @Override // com.google.android.material.circularreveal.CircularRevealHelper.Delegate
    /* renamed from: p */
    public void mo10018p(Canvas canvas) {
        super.draw(canvas);
    }

    @Override // com.google.android.material.circularreveal.CircularRevealHelper.Delegate
    /* renamed from: q */
    public boolean mo10017q() {
        return super.isOpaque();
    }

    @Override // com.google.android.material.circularreveal.CircularRevealWidget
    public void setCircularRevealOverlayDrawable(@Nullable Drawable drawable) {
        this.f10466f.m10034k(drawable);
    }

    @Override // com.google.android.material.circularreveal.CircularRevealWidget
    public void setCircularRevealScrimColor(@ColorInt int i) {
        this.f10466f.m10033l(i);
    }

    @Override // com.google.android.material.circularreveal.CircularRevealWidget
    public void setRevealInfo(@Nullable CircularRevealWidget.RevealInfo revealInfo) {
        this.f10466f.m10032m(revealInfo);
    }
}

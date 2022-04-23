package com.google.android.material.circularreveal;

import android.content.Context;
import android.graphics.Canvas;
import android.graphics.drawable.Drawable;
import android.util.AttributeSet;
import android.widget.LinearLayout;
import androidx.annotation.ColorInt;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.google.android.material.circularreveal.CircularRevealWidget;
/* loaded from: classes-dex2jar.jar:com/google/android/material/circularreveal/CircularRevealLinearLayout.class */
public class CircularRevealLinearLayout extends LinearLayout implements CircularRevealWidget {
    @NonNull

    /* renamed from: f */
    private final CircularRevealHelper f10478f;

    public CircularRevealLinearLayout(Context context) {
        this(context, null);
    }

    public CircularRevealLinearLayout(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.f10478f = new CircularRevealHelper(this);
    }

    @Override // android.view.View
    public void draw(@NonNull Canvas canvas) {
        CircularRevealHelper circularRevealHelper = this.f10478f;
        if (circularRevealHelper != null) {
            circularRevealHelper.m10042c(canvas);
        } else {
            super.draw(canvas);
        }
    }

    @Nullable
    public Drawable getCircularRevealOverlayDrawable() {
        return this.f10478f.m10040e();
    }

    @Override // com.google.android.material.circularreveal.CircularRevealWidget
    public int getCircularRevealScrimColor() {
        return this.f10478f.m10039f();
    }

    @Override // com.google.android.material.circularreveal.CircularRevealWidget
    @Nullable
    public CircularRevealWidget.RevealInfo getRevealInfo() {
        return this.f10478f.m10037h();
    }

    @Override // com.google.android.material.circularreveal.CircularRevealWidget
    /* renamed from: h */
    public void mo10020h() {
        this.f10478f.m10044a();
    }

    @Override // android.view.View
    public boolean isOpaque() {
        CircularRevealHelper circularRevealHelper = this.f10478f;
        return circularRevealHelper != null ? circularRevealHelper.m10035j() : super.isOpaque();
    }

    @Override // com.google.android.material.circularreveal.CircularRevealWidget
    /* renamed from: o */
    public void mo10019o() {
        this.f10478f.m10043b();
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
        this.f10478f.m10034k(drawable);
    }

    @Override // com.google.android.material.circularreveal.CircularRevealWidget
    public void setCircularRevealScrimColor(@ColorInt int i) {
        this.f10478f.m10033l(i);
    }

    @Override // com.google.android.material.circularreveal.CircularRevealWidget
    public void setRevealInfo(@Nullable CircularRevealWidget.RevealInfo revealInfo) {
        this.f10478f.m10032m(revealInfo);
    }
}

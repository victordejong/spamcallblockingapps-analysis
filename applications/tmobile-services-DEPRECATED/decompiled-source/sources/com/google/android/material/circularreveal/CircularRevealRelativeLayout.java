package com.google.android.material.circularreveal;

import android.content.Context;
import android.graphics.Canvas;
import android.graphics.drawable.Drawable;
import android.util.AttributeSet;
import android.widget.RelativeLayout;
import androidx.annotation.ColorInt;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.google.android.material.circularreveal.CircularRevealWidget;
/* loaded from: classes-dex2jar.jar:com/google/android/material/circularreveal/CircularRevealRelativeLayout.class */
public class CircularRevealRelativeLayout extends RelativeLayout implements CircularRevealWidget {
    @NonNull

    /* renamed from: f */
    private final CircularRevealHelper f10479f;

    public CircularRevealRelativeLayout(Context context) {
        this(context, null);
    }

    public CircularRevealRelativeLayout(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.f10479f = new CircularRevealHelper(this);
    }

    @Override // android.view.View
    public void draw(@NonNull Canvas canvas) {
        CircularRevealHelper circularRevealHelper = this.f10479f;
        if (circularRevealHelper != null) {
            circularRevealHelper.m10042c(canvas);
        } else {
            super.draw(canvas);
        }
    }

    @Nullable
    public Drawable getCircularRevealOverlayDrawable() {
        return this.f10479f.m10040e();
    }

    @Override // com.google.android.material.circularreveal.CircularRevealWidget
    public int getCircularRevealScrimColor() {
        return this.f10479f.m10039f();
    }

    @Override // com.google.android.material.circularreveal.CircularRevealWidget
    @Nullable
    public CircularRevealWidget.RevealInfo getRevealInfo() {
        return this.f10479f.m10037h();
    }

    @Override // com.google.android.material.circularreveal.CircularRevealWidget
    /* renamed from: h */
    public void mo10020h() {
        this.f10479f.m10044a();
    }

    @Override // android.view.View
    public boolean isOpaque() {
        CircularRevealHelper circularRevealHelper = this.f10479f;
        return circularRevealHelper != null ? circularRevealHelper.m10035j() : super.isOpaque();
    }

    @Override // com.google.android.material.circularreveal.CircularRevealWidget
    /* renamed from: o */
    public void mo10019o() {
        this.f10479f.m10043b();
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
        this.f10479f.m10034k(drawable);
    }

    @Override // com.google.android.material.circularreveal.CircularRevealWidget
    public void setCircularRevealScrimColor(@ColorInt int i) {
        this.f10479f.m10033l(i);
    }

    @Override // com.google.android.material.circularreveal.CircularRevealWidget
    public void setRevealInfo(@Nullable CircularRevealWidget.RevealInfo revealInfo) {
        this.f10479f.m10032m(revealInfo);
    }
}

package com.google.android.material.snackbar;

import android.annotation.SuppressLint;
import android.content.Context;
import android.content.res.ColorStateList;
import android.content.res.TypedArray;
import android.graphics.PorterDuff;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.GradientDrawable;
import android.util.AttributeSet;
import android.view.MotionEvent;
import android.view.View;
import android.widget.FrameLayout;
import androidx.core.graphics.drawable.C0615a;
import com.google.android.material.internal.C8209q;
import com.google.android.material.theme.p275a.C8328a;
import p020b.p041h.p050l.C1679w;
import p078c.p084c.p085a.p096b.C1886b;
import p078c.p084c.p085a.p096b.C1888d;
import p078c.p084c.p085a.p096b.C1896l;
import p078c.p084c.p085a.p096b.p099o.C1909a;
import p078c.p084c.p085a.p096b.p105u.C1919c;
/* loaded from: classes2-dex2jar.jar:com/google/android/material/snackbar/BaseTransientBottomBar$SnackbarBaseLayout.class */
public class BaseTransientBottomBar$SnackbarBaseLayout extends FrameLayout {

    /* renamed from: d */
    private static final View.OnTouchListener f37242d = new View$OnTouchListenerC8260a();

    /* renamed from: e */
    private AbstractC8263c f37243e;

    /* renamed from: f */
    private AbstractC8262b f37244f;

    /* renamed from: g */
    private int f37245g;

    /* renamed from: h */
    private final float f37246h;

    /* renamed from: i */
    private final float f37247i;

    /* renamed from: j */
    private ColorStateList f37248j;

    /* renamed from: k */
    private PorterDuff.Mode f37249k;

    /* renamed from: com.google.android.material.snackbar.BaseTransientBottomBar$SnackbarBaseLayout$a */
    /* loaded from: classes2-dex2jar.jar:com/google/android/material/snackbar/BaseTransientBottomBar$SnackbarBaseLayout$a.class */
    static final class View$OnTouchListenerC8260a implements View.OnTouchListener {
        View$OnTouchListenerC8260a() {
        }

        @Override // android.view.View.OnTouchListener
        @SuppressLint({"ClickableViewAccessibility"})
        public boolean onTouch(View view, MotionEvent motionEvent) {
            return true;
        }
    }

    public BaseTransientBottomBar$SnackbarBaseLayout(Context context) {
        this(context, null);
    }

    public BaseTransientBottomBar$SnackbarBaseLayout(Context context, AttributeSet attributeSet) {
        super(C8328a.m3881c(context, attributeSet, 0, 0), attributeSet);
        Context context2 = getContext();
        TypedArray obtainStyledAttributes = context2.obtainStyledAttributes(attributeSet, C1896l.SnackbarLayout);
        int i = C1896l.SnackbarLayout_elevation;
        if (obtainStyledAttributes.hasValue(i)) {
            C1679w.m29259y0(this, obtainStyledAttributes.getDimensionPixelSize(i, 0));
        }
        this.f37245g = obtainStyledAttributes.getInt(C1896l.SnackbarLayout_animationMode, 0);
        this.f37246h = obtainStyledAttributes.getFloat(C1896l.SnackbarLayout_backgroundOverlayColorAlpha, 1.0f);
        setBackgroundTintList(C1919c.m28686a(context2, obtainStyledAttributes, C1896l.SnackbarLayout_backgroundTint));
        setBackgroundTintMode(C8209q.m4444i(obtainStyledAttributes.getInt(C1896l.SnackbarLayout_backgroundTintMode, -1), PorterDuff.Mode.SRC_IN));
        this.f37247i = obtainStyledAttributes.getFloat(C1896l.SnackbarLayout_actionTextColorAlpha, 1.0f);
        obtainStyledAttributes.recycle();
        setOnTouchListener(f37242d);
        setFocusable(true);
        if (getBackground() == null) {
            C1679w.m29267u0(this, m4205a());
        }
    }

    /* renamed from: a */
    private Drawable m4205a() {
        float dimension = getResources().getDimension(C1888d.mtrl_snackbar_background_corner_radius);
        GradientDrawable gradientDrawable = new GradientDrawable();
        gradientDrawable.setShape(0);
        gradientDrawable.setCornerRadius(dimension);
        gradientDrawable.setColor(C1909a.m28711h(this, C1886b.colorSurface, C1886b.colorOnSurface, getBackgroundOverlayColorAlpha()));
        if (this.f37248j != null) {
            Drawable m33212r = C0615a.m33212r(gradientDrawable);
            C0615a.m33215o(m33212r, this.f37248j);
            return m33212r;
        }
        return C0615a.m33212r(gradientDrawable);
    }

    float getActionTextColorAlpha() {
        return this.f37247i;
    }

    int getAnimationMode() {
        return this.f37245g;
    }

    float getBackgroundOverlayColorAlpha() {
        return this.f37246h;
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void onAttachedToWindow() {
        super.onAttachedToWindow();
        AbstractC8262b abstractC8262b = this.f37244f;
        if (abstractC8262b != null) {
            abstractC8262b.onViewAttachedToWindow(this);
        }
        C1679w.m29279o0(this);
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        AbstractC8262b abstractC8262b = this.f37244f;
        if (abstractC8262b != null) {
            abstractC8262b.onViewDetachedFromWindow(this);
        }
    }

    @Override // android.widget.FrameLayout, android.view.ViewGroup, android.view.View
    protected void onLayout(boolean z, int i, int i2, int i3, int i4) {
        super.onLayout(z, i, i2, i3, i4);
        AbstractC8263c abstractC8263c = this.f37243e;
        if (abstractC8263c != null) {
            abstractC8263c.m4200a(this, i, i2, i3, i4);
        }
    }

    void setAnimationMode(int i) {
        this.f37245g = i;
    }

    @Override // android.view.View
    public void setBackground(Drawable drawable) {
        setBackgroundDrawable(drawable);
    }

    @Override // android.view.View
    public void setBackgroundDrawable(Drawable drawable) {
        Drawable drawable2 = drawable;
        if (drawable != null) {
            drawable2 = drawable;
            if (this.f37248j != null) {
                drawable2 = C0615a.m33212r(drawable.mutate());
                C0615a.m33215o(drawable2, this.f37248j);
                C0615a.m33214p(drawable2, this.f37249k);
            }
        }
        super.setBackgroundDrawable(drawable2);
    }

    @Override // android.view.View
    public void setBackgroundTintList(ColorStateList colorStateList) {
        this.f37248j = colorStateList;
        if (getBackground() != null) {
            Drawable m33212r = C0615a.m33212r(getBackground().mutate());
            C0615a.m33215o(m33212r, colorStateList);
            C0615a.m33214p(m33212r, this.f37249k);
            if (m33212r == getBackground()) {
                return;
            }
            super.setBackgroundDrawable(m33212r);
        }
    }

    @Override // android.view.View
    public void setBackgroundTintMode(PorterDuff.Mode mode) {
        this.f37249k = mode;
        if (getBackground() != null) {
            Drawable m33212r = C0615a.m33212r(getBackground().mutate());
            C0615a.m33214p(m33212r, mode);
            if (m33212r == getBackground()) {
                return;
            }
            super.setBackgroundDrawable(m33212r);
        }
    }

    void setOnAttachStateChangeListener(AbstractC8262b abstractC8262b) {
        this.f37244f = abstractC8262b;
    }

    @Override // android.view.View
    public void setOnClickListener(View.OnClickListener onClickListener) {
        setOnTouchListener(onClickListener != null ? null : f37242d);
        super.setOnClickListener(onClickListener);
    }

    void setOnLayoutChangeListener(AbstractC8263c abstractC8263c) {
        this.f37243e = abstractC8263c;
    }
}

package com.google.android.material.internal;

import android.annotation.TargetApi;
import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.Canvas;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.util.AttributeSet;
import android.view.Gravity;
import androidx.annotation.NonNull;
import androidx.annotation.RequiresApi;
import androidx.annotation.RestrictTo;
import androidx.appcompat.widget.LinearLayoutCompat;
import androidx.core.view.GravityCompat;
import com.google.android.material.R$styleable;
import p081h.p203i.p204a.p294f.p308n.C9245k;
@RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
/* loaded from: classes2-dex2jar.jar:com/google/android/material/internal/ForegroundLinearLayout.class */
public class ForegroundLinearLayout extends LinearLayoutCompat {

    /* renamed from: a */
    public Drawable f7497a;

    /* renamed from: b */
    public final Rect f7498b;

    /* renamed from: c */
    public final Rect f7499c;

    /* renamed from: d */
    public int f7500d;

    /* renamed from: e */
    public boolean f7501e;

    /* renamed from: f */
    public boolean f7502f;

    public ForegroundLinearLayout(Context context) {
        this(context, null);
    }

    public ForegroundLinearLayout(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    public ForegroundLinearLayout(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        this.f7498b = new Rect();
        this.f7499c = new Rect();
        this.f7500d = 119;
        this.f7501e = true;
        this.f7502f = false;
        TypedArray c = C9245k.m15637c(context, attributeSet, R$styleable.ForegroundLinearLayout, i, 0, new int[0]);
        this.f7500d = c.getInt(R$styleable.ForegroundLinearLayout_android_foregroundGravity, this.f7500d);
        Drawable drawable = c.getDrawable(R$styleable.ForegroundLinearLayout_android_foreground);
        if (drawable != null) {
            setForeground(drawable);
        }
        this.f7501e = c.getBoolean(R$styleable.ForegroundLinearLayout_foregroundInsidePadding, true);
        c.recycle();
    }

    @Override // android.view.View
    public void draw(@NonNull Canvas canvas) {
        super.draw(canvas);
        Drawable drawable = this.f7497a;
        if (drawable != null) {
            if (this.f7502f) {
                this.f7502f = false;
                Rect rect = this.f7498b;
                Rect rect2 = this.f7499c;
                int right = getRight() - getLeft();
                int bottom = getBottom() - getTop();
                if (this.f7501e) {
                    rect.set(0, 0, right, bottom);
                } else {
                    rect.set(getPaddingLeft(), getPaddingTop(), right - getPaddingRight(), bottom - getPaddingBottom());
                }
                Gravity.apply(this.f7500d, drawable.getIntrinsicWidth(), drawable.getIntrinsicHeight(), rect, rect2);
                drawable.setBounds(rect2);
            }
            drawable.draw(canvas);
        }
    }

    @Override // android.view.View
    @RequiresApi(21)
    @TargetApi(21)
    public void drawableHotspotChanged(float f, float f2) {
        super.drawableHotspotChanged(f, f2);
        Drawable drawable = this.f7497a;
        if (drawable != null) {
            drawable.setHotspot(f, f2);
        }
    }

    @Override // android.view.ViewGroup, android.view.View
    public void drawableStateChanged() {
        super.drawableStateChanged();
        Drawable drawable = this.f7497a;
        if (drawable != null && drawable.isStateful()) {
            this.f7497a.setState(getDrawableState());
        }
    }

    @Override // android.view.View
    public Drawable getForeground() {
        return this.f7497a;
    }

    @Override // android.view.View
    public int getForegroundGravity() {
        return this.f7500d;
    }

    @Override // android.view.ViewGroup, android.view.View
    @RequiresApi(11)
    public void jumpDrawablesToCurrentState() {
        super.jumpDrawablesToCurrentState();
        Drawable drawable = this.f7497a;
        if (drawable != null) {
            drawable.jumpToCurrentState();
        }
    }

    @Override // androidx.appcompat.widget.LinearLayoutCompat, android.view.ViewGroup, android.view.View
    public void onLayout(boolean z, int i, int i2, int i3, int i4) {
        super.onLayout(z, i, i2, i3, i4);
        this.f7502f = z | this.f7502f;
    }

    @Override // android.view.View
    public void onSizeChanged(int i, int i2, int i3, int i4) {
        super.onSizeChanged(i, i2, i3, i4);
        this.f7502f = true;
    }

    @Override // android.view.View
    public void setForeground(Drawable drawable) {
        Drawable drawable2 = this.f7497a;
        if (drawable2 != drawable) {
            if (drawable2 != null) {
                drawable2.setCallback(null);
                unscheduleDrawable(this.f7497a);
            }
            this.f7497a = drawable;
            if (drawable != null) {
                setWillNotDraw(false);
                drawable.setCallback(this);
                if (drawable.isStateful()) {
                    drawable.setState(getDrawableState());
                }
                if (this.f7500d == 119) {
                    drawable.getPadding(new Rect());
                }
            } else {
                setWillNotDraw(true);
            }
            requestLayout();
            invalidate();
        }
    }

    @Override // android.view.View
    public void setForegroundGravity(int i) {
        if (this.f7500d != i) {
            int i2 = i;
            if ((8388615 & i) == 0) {
                i2 = i | GravityCompat.START;
            }
            int i3 = i2;
            if ((i2 & 112) == 0) {
                i3 = i2 | 48;
            }
            this.f7500d = i3;
            if (this.f7500d == 119 && this.f7497a != null) {
                this.f7497a.getPadding(new Rect());
            }
            requestLayout();
        }
    }

    @Override // android.view.View
    public boolean verifyDrawable(Drawable drawable) {
        return super.verifyDrawable(drawable) || drawable == this.f7497a;
    }
}

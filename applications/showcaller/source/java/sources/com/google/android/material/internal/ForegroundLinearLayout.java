package com.google.android.material.internal;

import android.annotation.TargetApi;
import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.Canvas;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.util.AttributeSet;
import android.view.Gravity;
import androidx.appcompat.widget.LinearLayoutCompat;
import p078c.p084c.p085a.p096b.C1896l;
/* loaded from: classes2-dex2jar.jar:com/google/android/material/internal/ForegroundLinearLayout.class */
public class ForegroundLinearLayout extends LinearLayoutCompat {

    /* renamed from: s */
    private Drawable f36881s;

    /* renamed from: t */
    private final Rect f36882t;

    /* renamed from: u */
    private final Rect f36883u;

    /* renamed from: v */
    private int f36884v;

    /* renamed from: w */
    protected boolean f36885w;

    /* renamed from: x */
    boolean f36886x;

    public ForegroundLinearLayout(Context context) {
        this(context, null);
    }

    public ForegroundLinearLayout(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    public ForegroundLinearLayout(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        this.f36882t = new Rect();
        this.f36883u = new Rect();
        this.f36884v = 119;
        this.f36885w = true;
        this.f36886x = false;
        TypedArray m4462h = C8203l.m4462h(context, attributeSet, C1896l.ForegroundLinearLayout, i, 0, new int[0]);
        this.f36884v = m4462h.getInt(C1896l.ForegroundLinearLayout_android_foregroundGravity, this.f36884v);
        Drawable drawable = m4462h.getDrawable(C1896l.ForegroundLinearLayout_android_foreground);
        if (drawable != null) {
            setForeground(drawable);
        }
        this.f36885w = m4462h.getBoolean(C1896l.ForegroundLinearLayout_foregroundInsidePadding, true);
        m4462h.recycle();
    }

    @Override // android.view.View
    public void draw(Canvas canvas) {
        super.draw(canvas);
        Drawable drawable = this.f36881s;
        if (drawable != null) {
            if (this.f36886x) {
                this.f36886x = false;
                Rect rect = this.f36882t;
                Rect rect2 = this.f36883u;
                int right = getRight() - getLeft();
                int bottom = getBottom() - getTop();
                if (this.f36885w) {
                    rect.set(0, 0, right, bottom);
                } else {
                    rect.set(getPaddingLeft(), getPaddingTop(), right - getPaddingRight(), bottom - getPaddingBottom());
                }
                Gravity.apply(this.f36884v, drawable.getIntrinsicWidth(), drawable.getIntrinsicHeight(), rect, rect2);
                drawable.setBounds(rect2);
            }
            drawable.draw(canvas);
        }
    }

    @Override // android.view.View
    @TargetApi(21)
    public void drawableHotspotChanged(float f, float f2) {
        super.drawableHotspotChanged(f, f2);
        Drawable drawable = this.f36881s;
        if (drawable != null) {
            drawable.setHotspot(f, f2);
        }
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void drawableStateChanged() {
        super.drawableStateChanged();
        Drawable drawable = this.f36881s;
        if (drawable == null || !drawable.isStateful()) {
            return;
        }
        this.f36881s.setState(getDrawableState());
    }

    @Override // android.view.View
    public Drawable getForeground() {
        return this.f36881s;
    }

    @Override // android.view.View
    public int getForegroundGravity() {
        return this.f36884v;
    }

    @Override // android.view.ViewGroup, android.view.View
    public void jumpDrawablesToCurrentState() {
        super.jumpDrawablesToCurrentState();
        Drawable drawable = this.f36881s;
        if (drawable != null) {
            drawable.jumpToCurrentState();
        }
    }

    @Override // androidx.appcompat.widget.LinearLayoutCompat, android.view.ViewGroup, android.view.View
    public void onLayout(boolean z, int i, int i2, int i3, int i4) {
        super.onLayout(z, i, i2, i3, i4);
        this.f36886x = z | this.f36886x;
    }

    @Override // android.view.View
    protected void onSizeChanged(int i, int i2, int i3, int i4) {
        super.onSizeChanged(i, i2, i3, i4);
        this.f36886x = true;
    }

    @Override // android.view.View
    public void setForeground(Drawable drawable) {
        Drawable drawable2 = this.f36881s;
        if (drawable2 != drawable) {
            if (drawable2 != null) {
                drawable2.setCallback(null);
                unscheduleDrawable(this.f36881s);
            }
            this.f36881s = drawable;
            if (drawable != null) {
                setWillNotDraw(false);
                drawable.setCallback(this);
                if (drawable.isStateful()) {
                    drawable.setState(getDrawableState());
                }
                if (this.f36884v == 119) {
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
        if (this.f36884v != i) {
            int i2 = i;
            if ((8388615 & i) == 0) {
                i2 = i | 8388611;
            }
            int i3 = i2;
            if ((i2 & 112) == 0) {
                i3 = i2 | 48;
            }
            this.f36884v = i3;
            if (i3 == 119 && this.f36881s != null) {
                this.f36881s.getPadding(new Rect());
            }
            requestLayout();
        }
    }

    @Override // android.view.View
    protected boolean verifyDrawable(Drawable drawable) {
        return super.verifyDrawable(drawable) || drawable == this.f36881s;
    }
}

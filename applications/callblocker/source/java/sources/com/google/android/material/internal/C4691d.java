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
import com.google.android.material.C4492a;
/* renamed from: com.google.android.material.internal.d */
/* loaded from: classes-dex2jar.jar:com/google/android/material/internal/d.class */
public class C4691d extends LinearLayoutCompat {

    /* renamed from: a */
    protected boolean f20366a;

    /* renamed from: b */
    boolean f20367b;

    /* renamed from: c */
    private Drawable f20368c;

    /* renamed from: d */
    private final Rect f20369d;

    /* renamed from: e */
    private final Rect f20370e;

    /* renamed from: f */
    private int f20371f;

    public C4691d(Context context) {
        this(context, null);
    }

    public C4691d(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    public C4691d(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        this.f20369d = new Rect();
        this.f20370e = new Rect();
        this.f20371f = 119;
        this.f20366a = true;
        this.f20367b = false;
        TypedArray m2825a = C4702i.m2825a(context, attributeSet, C4492a.C4504l.ForegroundLinearLayout, i, 0, new int[0]);
        this.f20371f = m2825a.getInt(C4492a.C4504l.ForegroundLinearLayout_android_foregroundGravity, this.f20371f);
        Drawable drawable = m2825a.getDrawable(C4492a.C4504l.ForegroundLinearLayout_android_foreground);
        if (drawable != null) {
            setForeground(drawable);
        }
        this.f20366a = m2825a.getBoolean(C4492a.C4504l.ForegroundLinearLayout_foregroundInsidePadding, true);
        m2825a.recycle();
    }

    @Override // android.view.View
    public void draw(Canvas canvas) {
        super.draw(canvas);
        if (this.f20368c != null) {
            Drawable drawable = this.f20368c;
            if (this.f20367b) {
                this.f20367b = false;
                Rect rect = this.f20369d;
                Rect rect2 = this.f20370e;
                int right = getRight() - getLeft();
                int bottom = getBottom() - getTop();
                if (this.f20366a) {
                    rect.set(0, 0, right, bottom);
                } else {
                    rect.set(getPaddingLeft(), getPaddingTop(), right - getPaddingRight(), bottom - getPaddingBottom());
                }
                Gravity.apply(this.f20371f, drawable.getIntrinsicWidth(), drawable.getIntrinsicHeight(), rect, rect2);
                drawable.setBounds(rect2);
            }
            drawable.draw(canvas);
        }
    }

    @Override // android.view.View
    @TargetApi(21)
    public void drawableHotspotChanged(float f, float f2) {
        super.drawableHotspotChanged(f, f2);
        if (this.f20368c != null) {
            this.f20368c.setHotspot(f, f2);
        }
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void drawableStateChanged() {
        super.drawableStateChanged();
        if (this.f20368c == null || !this.f20368c.isStateful()) {
            return;
        }
        this.f20368c.setState(getDrawableState());
    }

    @Override // android.view.View
    public Drawable getForeground() {
        return this.f20368c;
    }

    @Override // android.view.View
    public int getForegroundGravity() {
        return this.f20371f;
    }

    @Override // android.view.ViewGroup, android.view.View
    public void jumpDrawablesToCurrentState() {
        super.jumpDrawablesToCurrentState();
        if (this.f20368c != null) {
            this.f20368c.jumpToCurrentState();
        }
    }

    @Override // androidx.appcompat.widget.LinearLayoutCompat, android.view.ViewGroup, android.view.View
    public void onLayout(boolean z, int i, int i2, int i3, int i4) {
        super.onLayout(z, i, i2, i3, i4);
        this.f20367b |= z;
    }

    @Override // android.view.View
    protected void onSizeChanged(int i, int i2, int i3, int i4) {
        super.onSizeChanged(i, i2, i3, i4);
        this.f20367b = true;
    }

    @Override // android.view.View
    public void setForeground(Drawable drawable) {
        if (this.f20368c != drawable) {
            if (this.f20368c != null) {
                this.f20368c.setCallback(null);
                unscheduleDrawable(this.f20368c);
            }
            this.f20368c = drawable;
            if (drawable != null) {
                setWillNotDraw(false);
                drawable.setCallback(this);
                if (drawable.isStateful()) {
                    drawable.setState(getDrawableState());
                }
                if (this.f20371f == 119) {
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
        if (this.f20371f != i) {
            if ((8388615 & i) == 0) {
                i = 8388611 | i;
            }
            int i2 = i;
            if ((i & 112) == 0) {
                i2 = i | 48;
            }
            this.f20371f = i2;
            if (this.f20371f == 119 && this.f20368c != null) {
                this.f20368c.getPadding(new Rect());
            }
            requestLayout();
        }
    }

    @Override // android.view.View
    protected boolean verifyDrawable(Drawable drawable) {
        return super.verifyDrawable(drawable) || drawable == this.f20368c;
    }
}

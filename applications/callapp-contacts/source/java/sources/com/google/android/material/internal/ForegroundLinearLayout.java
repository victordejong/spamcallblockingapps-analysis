package com.google.android.material.internal;

import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.Canvas;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.util.AttributeSet;
import android.view.Gravity;
import androidx.appcompat.widget.LinearLayoutCompat;
import com.google.android.material.C14376a;
/* loaded from: classes4-dex2jar.jar:com/google/android/material/internal/ForegroundLinearLayout.class */
public class ForegroundLinearLayout extends LinearLayoutCompat {

    /* renamed from: a */
    protected boolean f53290a;

    /* renamed from: b */
    boolean f53291b;

    /* renamed from: c */
    private Drawable f53292c;

    /* renamed from: d */
    private final Rect f53293d;

    /* renamed from: e */
    private final Rect f53294e;

    /* renamed from: f */
    private int f53295f;

    public ForegroundLinearLayout(Context context) {
        this(context, null);
    }

    public ForegroundLinearLayout(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    public ForegroundLinearLayout(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        this.f53293d = new Rect();
        this.f53294e = new Rect();
        this.f53295f = 119;
        this.f53290a = true;
        this.f53291b = false;
        TypedArray m10508a = C14647l.m10508a(context, attributeSet, C14376a.C14388l.ForegroundLinearLayout, i, 0, new int[0]);
        this.f53295f = m10508a.getInt(C14376a.C14388l.ForegroundLinearLayout_android_foregroundGravity, this.f53295f);
        Drawable drawable = m10508a.getDrawable(C14376a.C14388l.ForegroundLinearLayout_android_foreground);
        if (drawable != null) {
            setForeground(drawable);
        }
        this.f53290a = m10508a.getBoolean(C14376a.C14388l.ForegroundLinearLayout_foregroundInsidePadding, true);
        m10508a.recycle();
    }

    @Override // android.view.View
    public void draw(Canvas canvas) {
        super.draw(canvas);
        Drawable drawable = this.f53292c;
        if (drawable != null) {
            if (this.f53291b) {
                this.f53291b = false;
                Rect rect = this.f53293d;
                Rect rect2 = this.f53294e;
                int right = getRight() - getLeft();
                int bottom = getBottom() - getTop();
                if (this.f53290a) {
                    rect.set(0, 0, right, bottom);
                } else {
                    rect.set(getPaddingLeft(), getPaddingTop(), right - getPaddingRight(), bottom - getPaddingBottom());
                }
                Gravity.apply(this.f53295f, drawable.getIntrinsicWidth(), drawable.getIntrinsicHeight(), rect, rect2);
                drawable.setBounds(rect2);
            }
            drawable.draw(canvas);
        }
    }

    @Override // android.view.View
    public void drawableHotspotChanged(float f, float f2) {
        super.drawableHotspotChanged(f, f2);
        Drawable drawable = this.f53292c;
        if (drawable != null) {
            drawable.setHotspot(f, f2);
        }
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void drawableStateChanged() {
        super.drawableStateChanged();
        Drawable drawable = this.f53292c;
        if (drawable == null || !drawable.isStateful()) {
            return;
        }
        this.f53292c.setState(getDrawableState());
    }

    @Override // android.view.View
    public Drawable getForeground() {
        return this.f53292c;
    }

    @Override // android.view.View
    public int getForegroundGravity() {
        return this.f53295f;
    }

    @Override // android.view.ViewGroup, android.view.View
    public void jumpDrawablesToCurrentState() {
        super.jumpDrawablesToCurrentState();
        Drawable drawable = this.f53292c;
        if (drawable != null) {
            drawable.jumpToCurrentState();
        }
    }

    @Override // androidx.appcompat.widget.LinearLayoutCompat, android.view.ViewGroup, android.view.View
    public void onLayout(boolean z, int i, int i2, int i3, int i4) {
        super.onLayout(z, i, i2, i3, i4);
        this.f53291b = z | this.f53291b;
    }

    @Override // android.view.View
    protected void onSizeChanged(int i, int i2, int i3, int i4) {
        super.onSizeChanged(i, i2, i3, i4);
        this.f53291b = true;
    }

    @Override // android.view.View
    public void setForeground(Drawable drawable) {
        Drawable drawable2 = this.f53292c;
        if (drawable2 != drawable) {
            if (drawable2 != null) {
                drawable2.setCallback(null);
                unscheduleDrawable(this.f53292c);
            }
            this.f53292c = drawable;
            if (drawable != null) {
                setWillNotDraw(false);
                drawable.setCallback(this);
                if (drawable.isStateful()) {
                    drawable.setState(getDrawableState());
                }
                if (this.f53295f == 119) {
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
        if (this.f53295f != i) {
            int i2 = i;
            if ((8388615 & i) == 0) {
                i2 = i | 8388611;
            }
            int i3 = i2;
            if ((i2 & 112) == 0) {
                i3 = i2 | 48;
            }
            this.f53295f = i3;
            if (i3 == 119 && this.f53292c != null) {
                this.f53292c.getPadding(new Rect());
            }
            requestLayout();
        }
    }

    @Override // android.view.View
    protected boolean verifyDrawable(Drawable drawable) {
        return super.verifyDrawable(drawable) || drawable == this.f53292c;
    }
}

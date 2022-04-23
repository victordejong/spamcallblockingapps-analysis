package com.google.android.material.internal;

import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.Canvas;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.util.AttributeSet;
import android.view.Gravity;
import androidx.appcompat.widget.LinearLayoutCompat;
import com.google.android.material.a;
/* loaded from: classes4-dex2jar.jar:com/google/android/material/internal/ForegroundLinearLayout.class */
public class ForegroundLinearLayout extends LinearLayoutCompat {

    /* renamed from: a  reason: collision with root package name */
    protected boolean f30595a;

    /* renamed from: b  reason: collision with root package name */
    boolean f30596b;

    /* renamed from: c  reason: collision with root package name */
    private Drawable f30597c;

    /* renamed from: d  reason: collision with root package name */
    private final Rect f30598d;
    private final Rect e;
    private int f;

    public ForegroundLinearLayout(Context context) {
        this(context, null);
    }

    public ForegroundLinearLayout(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    public ForegroundLinearLayout(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        this.f30598d = new Rect();
        this.e = new Rect();
        this.f = 119;
        this.f30595a = true;
        this.f30596b = false;
        TypedArray a2 = l.a(context, attributeSet, a.l.ForegroundLinearLayout, i, 0, new int[0]);
        this.f = a2.getInt(a.l.ForegroundLinearLayout_android_foregroundGravity, this.f);
        Drawable drawable = a2.getDrawable(a.l.ForegroundLinearLayout_android_foreground);
        if (drawable != null) {
            setForeground(drawable);
        }
        this.f30595a = a2.getBoolean(a.l.ForegroundLinearLayout_foregroundInsidePadding, true);
        a2.recycle();
    }

    @Override // android.view.View
    public void draw(Canvas canvas) {
        super.draw(canvas);
        Drawable drawable = this.f30597c;
        if (drawable != null) {
            if (this.f30596b) {
                this.f30596b = false;
                Rect rect = this.f30598d;
                Rect rect2 = this.e;
                int right = getRight() - getLeft();
                int bottom = getBottom() - getTop();
                if (this.f30595a) {
                    rect.set(0, 0, right, bottom);
                } else {
                    rect.set(getPaddingLeft(), getPaddingTop(), right - getPaddingRight(), bottom - getPaddingBottom());
                }
                Gravity.apply(this.f, drawable.getIntrinsicWidth(), drawable.getIntrinsicHeight(), rect, rect2);
                drawable.setBounds(rect2);
            }
            drawable.draw(canvas);
        }
    }

    @Override // android.view.View
    public void drawableHotspotChanged(float f, float f2) {
        super.drawableHotspotChanged(f, f2);
        Drawable drawable = this.f30597c;
        if (drawable != null) {
            drawable.setHotspot(f, f2);
        }
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void drawableStateChanged() {
        super.drawableStateChanged();
        Drawable drawable = this.f30597c;
        if (drawable != null && drawable.isStateful()) {
            this.f30597c.setState(getDrawableState());
        }
    }

    @Override // android.view.View
    public Drawable getForeground() {
        return this.f30597c;
    }

    @Override // android.view.View
    public int getForegroundGravity() {
        return this.f;
    }

    @Override // android.view.ViewGroup, android.view.View
    public void jumpDrawablesToCurrentState() {
        super.jumpDrawablesToCurrentState();
        Drawable drawable = this.f30597c;
        if (drawable != null) {
            drawable.jumpToCurrentState();
        }
    }

    @Override // androidx.appcompat.widget.LinearLayoutCompat, android.view.ViewGroup, android.view.View
    public void onLayout(boolean z, int i, int i2, int i3, int i4) {
        super.onLayout(z, i, i2, i3, i4);
        this.f30596b = z | this.f30596b;
    }

    @Override // android.view.View
    protected void onSizeChanged(int i, int i2, int i3, int i4) {
        super.onSizeChanged(i, i2, i3, i4);
        this.f30596b = true;
    }

    @Override // android.view.View
    public void setForeground(Drawable drawable) {
        Drawable drawable2 = this.f30597c;
        if (drawable2 != drawable) {
            if (drawable2 != null) {
                drawable2.setCallback(null);
                unscheduleDrawable(this.f30597c);
            }
            this.f30597c = drawable;
            if (drawable != null) {
                setWillNotDraw(false);
                drawable.setCallback(this);
                if (drawable.isStateful()) {
                    drawable.setState(getDrawableState());
                }
                if (this.f == 119) {
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
        if (this.f != i) {
            int i2 = i;
            if ((8388615 & i) == 0) {
                i2 = i | 8388611;
            }
            int i3 = i2;
            if ((i2 & 112) == 0) {
                i3 = i2 | 48;
            }
            this.f = i3;
            if (i3 == 119 && this.f30597c != null) {
                this.f30597c.getPadding(new Rect());
            }
            requestLayout();
        }
    }

    @Override // android.view.View
    protected boolean verifyDrawable(Drawable drawable) {
        return super.verifyDrawable(drawable) || drawable == this.f30597c;
    }
}

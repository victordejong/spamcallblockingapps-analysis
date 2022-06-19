package it.gmariotti.cardslib.library.view;

import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.Canvas;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.os.Build;
import android.util.AttributeSet;
import android.view.Gravity;
import android.widget.LinearLayout;
import it.gmariotti.cardslib.library.C18061a;
/* loaded from: classes5-dex2jar.jar:it/gmariotti/cardslib/library/view/ForegroundLinearLayout.class */
public class ForegroundLinearLayout extends LinearLayout {

    /* renamed from: a */
    protected boolean f63167a;

    /* renamed from: b */
    boolean f63168b;

    /* renamed from: c */
    private Drawable f63169c;

    /* renamed from: d */
    private final Rect f63170d;

    /* renamed from: e */
    private final Rect f63171e;

    /* renamed from: f */
    private int f63172f;

    public ForegroundLinearLayout(Context context) {
        super(context);
        this.f63170d = new Rect();
        this.f63171e = new Rect();
        this.f63172f = 119;
        this.f63167a = true;
        this.f63168b = false;
    }

    public ForegroundLinearLayout(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    public ForegroundLinearLayout(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        this.f63170d = new Rect();
        this.f63171e = new Rect();
        this.f63172f = 119;
        this.f63167a = true;
        this.f63168b = false;
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, C18061a.C18068g.ForegroundLinearLayout, i, 0);
        this.f63172f = obtainStyledAttributes.getInt(C18061a.C18068g.ForegroundLinearLayout_foregroundGravity, this.f63172f);
        Drawable drawable = obtainStyledAttributes.getDrawable(C18061a.C18068g.ForegroundLinearLayout_foreground);
        if (drawable != null) {
            setForeground(drawable);
        }
        this.f63167a = obtainStyledAttributes.getBoolean(C18061a.C18068g.ForegroundLinearLayout_foregroundInsidePadding, true);
        obtainStyledAttributes.recycle();
    }

    @Override // android.view.View
    public void draw(Canvas canvas) {
        super.draw(canvas);
        Drawable drawable = this.f63169c;
        if (drawable != null) {
            if (this.f63168b) {
                this.f63168b = false;
                Rect rect = this.f63170d;
                Rect rect2 = this.f63171e;
                int right = getRight() - getLeft();
                int bottom = getBottom() - getTop();
                if (this.f63167a) {
                    rect.set(0, 0, right, bottom);
                } else {
                    rect.set(getPaddingLeft(), getPaddingTop(), right - getPaddingRight(), bottom - getPaddingBottom());
                }
                Gravity.apply(this.f63172f, drawable.getIntrinsicWidth(), drawable.getIntrinsicHeight(), rect, rect2);
                drawable.setBounds(rect2);
            }
            drawable.draw(canvas);
        }
    }

    @Override // android.view.View
    public void drawableHotspotChanged(float f, float f2) {
        Drawable drawable;
        super.drawableHotspotChanged(f, f2);
        if (Build.VERSION.SDK_INT < 21 || (drawable = this.f63169c) == null) {
            return;
        }
        drawable.setHotspot(f, f2);
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void drawableStateChanged() {
        super.drawableStateChanged();
        Drawable drawable = this.f63169c;
        if (drawable == null || !drawable.isStateful()) {
            return;
        }
        this.f63169c.setState(getDrawableState());
    }

    @Override // android.view.View
    public Drawable getForeground() {
        return this.f63169c;
    }

    @Override // android.view.View
    public int getForegroundGravity() {
        return this.f63172f;
    }

    @Override // android.view.ViewGroup, android.view.View
    public void jumpDrawablesToCurrentState() {
        super.jumpDrawablesToCurrentState();
        Drawable drawable = this.f63169c;
        if (drawable != null) {
            drawable.jumpToCurrentState();
        }
    }

    @Override // android.widget.LinearLayout, android.view.ViewGroup, android.view.View
    protected void onLayout(boolean z, int i, int i2, int i3, int i4) {
        super.onLayout(z, i, i2, i3, i4);
        this.f63168b = z;
    }

    @Override // android.view.View
    protected void onSizeChanged(int i, int i2, int i3, int i4) {
        super.onSizeChanged(i, i2, i3, i4);
        this.f63168b = true;
    }

    @Override // android.view.View
    public void setForeground(Drawable drawable) {
        Drawable drawable2 = this.f63169c;
        if (drawable2 != drawable) {
            if (drawable2 != null) {
                drawable2.setCallback(null);
                unscheduleDrawable(this.f63169c);
            }
            this.f63169c = drawable;
            if (drawable != null) {
                setWillNotDraw(false);
                drawable.setCallback(this);
                if (drawable.isStateful()) {
                    drawable.setState(getDrawableState());
                }
                if (this.f63172f == 119) {
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
        if (this.f63172f != i) {
            int i2 = i;
            if ((8388615 & i) == 0) {
                i2 = i | 8388611;
            }
            int i3 = i2;
            if ((i2 & 112) == 0) {
                i3 = i2 | 48;
            }
            this.f63172f = i3;
            if (i3 == 119 && this.f63169c != null) {
                this.f63169c.getPadding(new Rect());
            }
            requestLayout();
        }
    }

    @Override // android.view.View
    protected boolean verifyDrawable(Drawable drawable) {
        return super.verifyDrawable(drawable) || drawable == this.f63169c;
    }
}

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
import it.gmariotti.cardslib.library.a;
/* loaded from: classes5-dex2jar.jar:it/gmariotti/cardslib/library/view/ForegroundLinearLayout.class */
public class ForegroundLinearLayout extends LinearLayout {

    /* renamed from: a  reason: collision with root package name */
    protected boolean f36461a;

    /* renamed from: b  reason: collision with root package name */
    boolean f36462b;

    /* renamed from: c  reason: collision with root package name */
    private Drawable f36463c;

    /* renamed from: d  reason: collision with root package name */
    private final Rect f36464d;
    private final Rect e;
    private int f;

    public ForegroundLinearLayout(Context context) {
        super(context);
        this.f36464d = new Rect();
        this.e = new Rect();
        this.f = 119;
        this.f36461a = true;
        this.f36462b = false;
    }

    public ForegroundLinearLayout(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    public ForegroundLinearLayout(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        this.f36464d = new Rect();
        this.e = new Rect();
        this.f = 119;
        this.f36461a = true;
        this.f36462b = false;
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, a.g.ForegroundLinearLayout, i, 0);
        this.f = obtainStyledAttributes.getInt(a.g.ForegroundLinearLayout_foregroundGravity, this.f);
        Drawable drawable = obtainStyledAttributes.getDrawable(a.g.ForegroundLinearLayout_foreground);
        if (drawable != null) {
            setForeground(drawable);
        }
        this.f36461a = obtainStyledAttributes.getBoolean(a.g.ForegroundLinearLayout_foregroundInsidePadding, true);
        obtainStyledAttributes.recycle();
    }

    @Override // android.view.View
    public void draw(Canvas canvas) {
        super.draw(canvas);
        Drawable drawable = this.f36463c;
        if (drawable != null) {
            if (this.f36462b) {
                this.f36462b = false;
                Rect rect = this.f36464d;
                Rect rect2 = this.e;
                int right = getRight() - getLeft();
                int bottom = getBottom() - getTop();
                if (this.f36461a) {
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
        Drawable drawable;
        super.drawableHotspotChanged(f, f2);
        if (Build.VERSION.SDK_INT >= 21 && (drawable = this.f36463c) != null) {
            drawable.setHotspot(f, f2);
        }
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void drawableStateChanged() {
        super.drawableStateChanged();
        Drawable drawable = this.f36463c;
        if (drawable != null && drawable.isStateful()) {
            this.f36463c.setState(getDrawableState());
        }
    }

    @Override // android.view.View
    public Drawable getForeground() {
        return this.f36463c;
    }

    @Override // android.view.View
    public int getForegroundGravity() {
        return this.f;
    }

    @Override // android.view.ViewGroup, android.view.View
    public void jumpDrawablesToCurrentState() {
        super.jumpDrawablesToCurrentState();
        Drawable drawable = this.f36463c;
        if (drawable != null) {
            drawable.jumpToCurrentState();
        }
    }

    @Override // android.widget.LinearLayout, android.view.ViewGroup, android.view.View
    protected void onLayout(boolean z, int i, int i2, int i3, int i4) {
        super.onLayout(z, i, i2, i3, i4);
        this.f36462b = z;
    }

    @Override // android.view.View
    protected void onSizeChanged(int i, int i2, int i3, int i4) {
        super.onSizeChanged(i, i2, i3, i4);
        this.f36462b = true;
    }

    @Override // android.view.View
    public void setForeground(Drawable drawable) {
        Drawable drawable2 = this.f36463c;
        if (drawable2 != drawable) {
            if (drawable2 != null) {
                drawable2.setCallback(null);
                unscheduleDrawable(this.f36463c);
            }
            this.f36463c = drawable;
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
            if (i3 == 119 && this.f36463c != null) {
                this.f36463c.getPadding(new Rect());
            }
            requestLayout();
        }
    }

    @Override // android.view.View
    protected boolean verifyDrawable(Drawable drawable) {
        return super.verifyDrawable(drawable) || drawable == this.f36463c;
    }
}

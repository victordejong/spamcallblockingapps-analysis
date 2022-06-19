package p262v3;

import android.annotation.TargetApi;
import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.Canvas;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.util.AttributeSet;
import android.view.Gravity;
import androidx.appcompat.widget.LinearLayoutCompat;
import me.zhanghai.android.materialprogressbar.C3681R;
import p134j4.C3260w0;
/* renamed from: v3.f */
/* loaded from: classes-dex2jar.jar:v3/f.class */
public class C4605f extends LinearLayoutCompat {

    /* renamed from: p */
    public Drawable f14246p;

    /* renamed from: q */
    public final Rect f14247q;

    /* renamed from: r */
    public final Rect f14248r;

    /* renamed from: s */
    public int f14249s;

    /* renamed from: t */
    public boolean f14250t;

    /* renamed from: u */
    public boolean f14251u;

    public C4605f(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    public C4605f(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        this.f14247q = new Rect();
        this.f14248r = new Rect();
        this.f14249s = C3681R.styleable.AppCompatTheme_windowActionModeOverlay;
        this.f14250t = true;
        this.f14251u = false;
        int[] iArr = C3260w0.f11034o;
        C4634p.m690a(context, attributeSet, i, 0);
        C4634p.m689b(context, attributeSet, iArr, i, 0, new int[0]);
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, iArr, i, 0);
        this.f14249s = obtainStyledAttributes.getInt(1, this.f14249s);
        Drawable drawable = obtainStyledAttributes.getDrawable(0);
        if (drawable != null) {
            setForeground(drawable);
        }
        this.f14250t = obtainStyledAttributes.getBoolean(2, true);
        obtainStyledAttributes.recycle();
    }

    @Override // android.view.View
    public void draw(Canvas canvas) {
        super.draw(canvas);
        Drawable drawable = this.f14246p;
        if (drawable != null) {
            if (this.f14251u) {
                this.f14251u = false;
                Rect rect = this.f14247q;
                Rect rect2 = this.f14248r;
                int right = getRight() - getLeft();
                int bottom = getBottom() - getTop();
                if (this.f14250t) {
                    rect.set(0, 0, right, bottom);
                } else {
                    rect.set(getPaddingLeft(), getPaddingTop(), right - getPaddingRight(), bottom - getPaddingBottom());
                }
                Gravity.apply(this.f14249s, drawable.getIntrinsicWidth(), drawable.getIntrinsicHeight(), rect, rect2);
                drawable.setBounds(rect2);
            }
            drawable.draw(canvas);
        }
    }

    @Override // android.view.View
    @TargetApi(21)
    public void drawableHotspotChanged(float f, float f2) {
        super.drawableHotspotChanged(f, f2);
        Drawable drawable = this.f14246p;
        if (drawable != null) {
            drawable.setHotspot(f, f2);
        }
    }

    @Override // android.view.ViewGroup, android.view.View
    public void drawableStateChanged() {
        super.drawableStateChanged();
        Drawable drawable = this.f14246p;
        if (drawable == null || !drawable.isStateful()) {
            return;
        }
        this.f14246p.setState(getDrawableState());
    }

    @Override // android.view.View
    public Drawable getForeground() {
        return this.f14246p;
    }

    @Override // android.view.View
    public int getForegroundGravity() {
        return this.f14249s;
    }

    @Override // android.view.ViewGroup, android.view.View
    public void jumpDrawablesToCurrentState() {
        super.jumpDrawablesToCurrentState();
        Drawable drawable = this.f14246p;
        if (drawable != null) {
            drawable.jumpToCurrentState();
        }
    }

    @Override // androidx.appcompat.widget.LinearLayoutCompat, android.view.ViewGroup, android.view.View
    public void onLayout(boolean z, int i, int i2, int i3, int i4) {
        super.onLayout(z, i, i2, i3, i4);
        this.f14251u = z | this.f14251u;
    }

    @Override // android.view.View
    public void onSizeChanged(int i, int i2, int i3, int i4) {
        super.onSizeChanged(i, i2, i3, i4);
        this.f14251u = true;
    }

    @Override // android.view.View
    public void setForeground(Drawable drawable) {
        Drawable drawable2 = this.f14246p;
        if (drawable2 != drawable) {
            if (drawable2 != null) {
                drawable2.setCallback(null);
                unscheduleDrawable(this.f14246p);
            }
            this.f14246p = drawable;
            if (drawable != null) {
                setWillNotDraw(false);
                drawable.setCallback(this);
                if (drawable.isStateful()) {
                    drawable.setState(getDrawableState());
                }
                if (this.f14249s == 119) {
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
        if (this.f14249s != i) {
            int i2 = i;
            if ((8388615 & i) == 0) {
                i2 = i | 8388611;
            }
            int i3 = i2;
            if ((i2 & C3681R.styleable.AppCompatTheme_toolbarNavigationButtonStyle) == 0) {
                i3 = i2 | 48;
            }
            this.f14249s = i3;
            if (i3 == 119 && this.f14246p != null) {
                this.f14246p.getPadding(new Rect());
            }
            requestLayout();
        }
    }

    @Override // android.view.View
    public boolean verifyDrawable(Drawable drawable) {
        return super.verifyDrawable(drawable) || drawable == this.f14246p;
    }
}

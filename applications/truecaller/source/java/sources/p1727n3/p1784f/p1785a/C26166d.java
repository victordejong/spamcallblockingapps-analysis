package p1727n3.p1784f.p1785a;

import android.content.res.ColorStateList;
import android.graphics.Canvas;
import android.graphics.ColorFilter;
import android.graphics.Outline;
import android.graphics.Paint;
import android.graphics.PorterDuff;
import android.graphics.PorterDuffColorFilter;
import android.graphics.Rect;
import android.graphics.RectF;
import android.graphics.drawable.Drawable;
/* renamed from: n3.f.a.d */
/* loaded from: classes-dex2jar.jar:n3/f/a/d.class */
public class C26166d extends Drawable {

    /* renamed from: a */
    public float f72933a;

    /* renamed from: e */
    public float f72937e;

    /* renamed from: h */
    public ColorStateList f72940h;

    /* renamed from: i */
    public PorterDuffColorFilter f72941i;

    /* renamed from: j */
    public ColorStateList f72942j;

    /* renamed from: f */
    public boolean f72938f = false;

    /* renamed from: g */
    public boolean f72939g = true;

    /* renamed from: k */
    public PorterDuff.Mode f72943k = PorterDuff.Mode.SRC_IN;

    /* renamed from: b */
    public final Paint f72934b = new Paint(5);

    /* renamed from: c */
    public final RectF f72935c = new RectF();

    /* renamed from: d */
    public final Rect f72936d = new Rect();

    public C26166d(ColorStateList colorStateList, float f) {
        this.f72933a = f;
        m2631b(colorStateList);
    }

    /* renamed from: a */
    public final PorterDuffColorFilter m2632a(ColorStateList colorStateList, PorterDuff.Mode mode) {
        if (colorStateList == null || mode == null) {
            return null;
        }
        return new PorterDuffColorFilter(colorStateList.getColorForState(getState(), 0), mode);
    }

    /* renamed from: b */
    public final void m2631b(ColorStateList colorStateList) {
        ColorStateList colorStateList2 = colorStateList;
        if (colorStateList == null) {
            colorStateList2 = ColorStateList.valueOf(0);
        }
        this.f72940h = colorStateList2;
        this.f72934b.setColor(colorStateList2.getColorForState(getState(), this.f72940h.getDefaultColor()));
    }

    /* renamed from: c */
    public final void m2630c(Rect rect) {
        Rect rect2 = rect;
        if (rect == null) {
            rect2 = getBounds();
        }
        this.f72935c.set(rect2.left, rect2.top, rect2.right, rect2.bottom);
        this.f72936d.set(rect2);
        if (this.f72938f) {
            float m2628b = C26167e.m2628b(this.f72937e, this.f72933a, this.f72939g);
            this.f72936d.inset((int) Math.ceil(C26167e.m2629a(this.f72937e, this.f72933a, this.f72939g)), (int) Math.ceil(m2628b));
            this.f72935c.set(this.f72936d);
        }
    }

    @Override // android.graphics.drawable.Drawable
    public void draw(Canvas canvas) {
        boolean z;
        Paint paint = this.f72934b;
        if (this.f72941i == null || paint.getColorFilter() != null) {
            z = false;
        } else {
            paint.setColorFilter(this.f72941i);
            z = true;
        }
        RectF rectF = this.f72935c;
        float f = this.f72933a;
        canvas.drawRoundRect(rectF, f, f, paint);
        if (z) {
            paint.setColorFilter(null);
        }
    }

    @Override // android.graphics.drawable.Drawable
    public int getOpacity() {
        return -3;
    }

    @Override // android.graphics.drawable.Drawable
    public void getOutline(Outline outline) {
        outline.setRoundRect(this.f72936d, this.f72933a);
    }

    @Override // android.graphics.drawable.Drawable
    public boolean isStateful() {
        ColorStateList colorStateList;
        ColorStateList colorStateList2 = this.f72942j;
        return (colorStateList2 != null && colorStateList2.isStateful()) || ((colorStateList = this.f72940h) != null && colorStateList.isStateful()) || super.isStateful();
    }

    @Override // android.graphics.drawable.Drawable
    public void onBoundsChange(Rect rect) {
        super.onBoundsChange(rect);
        m2630c(rect);
    }

    @Override // android.graphics.drawable.Drawable
    public boolean onStateChange(int[] iArr) {
        PorterDuff.Mode mode;
        ColorStateList colorStateList = this.f72940h;
        int colorForState = colorStateList.getColorForState(iArr, colorStateList.getDefaultColor());
        boolean z = colorForState != this.f72934b.getColor();
        if (z) {
            this.f72934b.setColor(colorForState);
        }
        ColorStateList colorStateList2 = this.f72942j;
        if (colorStateList2 == null || (mode = this.f72943k) == null) {
            return z;
        }
        this.f72941i = m2632a(colorStateList2, mode);
        return true;
    }

    @Override // android.graphics.drawable.Drawable
    public void setAlpha(int i) {
        this.f72934b.setAlpha(i);
    }

    @Override // android.graphics.drawable.Drawable
    public void setColorFilter(ColorFilter colorFilter) {
        this.f72934b.setColorFilter(colorFilter);
    }

    @Override // android.graphics.drawable.Drawable
    public void setTintList(ColorStateList colorStateList) {
        this.f72942j = colorStateList;
        this.f72941i = m2632a(colorStateList, this.f72943k);
        invalidateSelf();
    }

    @Override // android.graphics.drawable.Drawable
    public void setTintMode(PorterDuff.Mode mode) {
        this.f72943k = mode;
        this.f72941i = m2632a(this.f72942j, mode);
        invalidateSelf();
    }
}

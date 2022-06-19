package androidx.cardview.widget;

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
/* renamed from: androidx.cardview.widget.f */
/* loaded from: classes-dex2jar.jar:androidx/cardview/widget/f.class */
final class C0507f extends Drawable {

    /* renamed from: a */
    float f1879a;

    /* renamed from: b */
    float f1880b;

    /* renamed from: c */
    ColorStateList f1881c;

    /* renamed from: i */
    private PorterDuffColorFilter f1887i;

    /* renamed from: j */
    private ColorStateList f1888j;

    /* renamed from: g */
    private boolean f1885g = false;

    /* renamed from: h */
    private boolean f1886h = true;

    /* renamed from: k */
    private PorterDuff.Mode f1889k = PorterDuff.Mode.SRC_IN;

    /* renamed from: d */
    private final Paint f1882d = new Paint(5);

    /* renamed from: e */
    private final RectF f1883e = new RectF();

    /* renamed from: f */
    private final Rect f1884f = new Rect();

    public C0507f(ColorStateList colorStateList, float f) {
        this.f1879a = f;
        m45383a(colorStateList);
    }

    /* renamed from: a */
    private PorterDuffColorFilter m45382a(ColorStateList colorStateList, PorterDuff.Mode mode) {
        if (colorStateList == null || mode == null) {
            return null;
        }
        return new PorterDuffColorFilter(colorStateList.getColorForState(getState(), 0), mode);
    }

    /* renamed from: a */
    public final void m45384a(float f, boolean z, boolean z2) {
        if (f == this.f1880b && this.f1885g == z && this.f1886h == z2) {
            return;
        }
        this.f1880b = f;
        this.f1885g = z;
        this.f1886h = z2;
        m45381a((Rect) null);
        invalidateSelf();
    }

    /* renamed from: a */
    public final void m45383a(ColorStateList colorStateList) {
        ColorStateList colorStateList2 = colorStateList;
        if (colorStateList == null) {
            colorStateList2 = ColorStateList.valueOf(0);
        }
        this.f1881c = colorStateList2;
        this.f1882d.setColor(colorStateList2.getColorForState(getState(), this.f1881c.getDefaultColor()));
    }

    /* renamed from: a */
    public final void m45381a(Rect rect) {
        Rect rect2 = rect;
        if (rect == null) {
            rect2 = getBounds();
        }
        this.f1883e.set(rect2.left, rect2.top, rect2.right, rect2.bottom);
        this.f1884f.set(rect2);
        if (this.f1885g) {
            float m45377a = C0508g.m45377a(this.f1880b, this.f1879a, this.f1886h);
            this.f1884f.inset((int) Math.ceil(C0508g.m45373b(this.f1880b, this.f1879a, this.f1886h)), (int) Math.ceil(m45377a));
            this.f1883e.set(this.f1884f);
        }
    }

    @Override // android.graphics.drawable.Drawable
    public final void draw(Canvas canvas) {
        boolean z;
        Paint paint = this.f1882d;
        if (this.f1887i == null || paint.getColorFilter() != null) {
            z = false;
        } else {
            paint.setColorFilter(this.f1887i);
            z = true;
        }
        RectF rectF = this.f1883e;
        float f = this.f1879a;
        canvas.drawRoundRect(rectF, f, f, paint);
        if (z) {
            paint.setColorFilter(null);
        }
    }

    @Override // android.graphics.drawable.Drawable
    public final int getOpacity() {
        return -3;
    }

    @Override // android.graphics.drawable.Drawable
    public final void getOutline(Outline outline) {
        outline.setRoundRect(this.f1884f, this.f1879a);
    }

    @Override // android.graphics.drawable.Drawable
    public final boolean isStateful() {
        ColorStateList colorStateList = this.f1888j;
        if (colorStateList == null || !colorStateList.isStateful()) {
            ColorStateList colorStateList2 = this.f1881c;
            return (colorStateList2 != null && colorStateList2.isStateful()) || super.isStateful();
        }
        return true;
    }

    @Override // android.graphics.drawable.Drawable
    protected final void onBoundsChange(Rect rect) {
        super.onBoundsChange(rect);
        m45381a(rect);
    }

    @Override // android.graphics.drawable.Drawable
    protected final boolean onStateChange(int[] iArr) {
        PorterDuff.Mode mode;
        ColorStateList colorStateList = this.f1881c;
        int colorForState = colorStateList.getColorForState(iArr, colorStateList.getDefaultColor());
        boolean z = colorForState != this.f1882d.getColor();
        if (z) {
            this.f1882d.setColor(colorForState);
        }
        ColorStateList colorStateList2 = this.f1888j;
        if (colorStateList2 == null || (mode = this.f1889k) == null) {
            return z;
        }
        this.f1887i = m45382a(colorStateList2, mode);
        return true;
    }

    @Override // android.graphics.drawable.Drawable
    public final void setAlpha(int i) {
        this.f1882d.setAlpha(i);
    }

    @Override // android.graphics.drawable.Drawable
    public final void setColorFilter(ColorFilter colorFilter) {
        this.f1882d.setColorFilter(colorFilter);
    }

    @Override // android.graphics.drawable.Drawable
    public final void setTintList(ColorStateList colorStateList) {
        this.f1888j = colorStateList;
        this.f1887i = m45382a(colorStateList, this.f1889k);
        invalidateSelf();
    }

    @Override // android.graphics.drawable.Drawable
    public final void setTintMode(PorterDuff.Mode mode) {
        this.f1889k = mode;
        this.f1887i = m45382a(this.f1888j, mode);
        invalidateSelf();
    }
}

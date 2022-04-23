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
class C0172f extends Drawable {

    /* renamed from: a */
    private float f772a;

    /* renamed from: e */
    private float f776e;

    /* renamed from: h */
    private ColorStateList f779h;

    /* renamed from: i */
    private PorterDuffColorFilter f780i;

    /* renamed from: j */
    private ColorStateList f781j;

    /* renamed from: f */
    private boolean f777f = false;

    /* renamed from: g */
    private boolean f778g = true;

    /* renamed from: k */
    private PorterDuff.Mode f782k = PorterDuff.Mode.SRC_IN;

    /* renamed from: b */
    private final Paint f773b = new Paint(5);

    /* renamed from: c */
    private final RectF f774c = new RectF();

    /* renamed from: d */
    private final Rect f775d = new Rect();

    C0172f(ColorStateList colorStateList, float f) {
        this.f772a = f;
        m14348e(colorStateList);
    }

    /* renamed from: a */
    private PorterDuffColorFilter m14352a(ColorStateList colorStateList, PorterDuff.Mode mode) {
        if (colorStateList == null || mode == null) {
            return null;
        }
        return new PorterDuffColorFilter(colorStateList.getColorForState(getState(), 0), mode);
    }

    /* renamed from: e */
    private void m14348e(ColorStateList colorStateList) {
        ColorStateList colorStateList2 = colorStateList;
        if (colorStateList == null) {
            colorStateList2 = ColorStateList.valueOf(0);
        }
        this.f779h = colorStateList2;
        this.f773b.setColor(colorStateList2.getColorForState(getState(), this.f779h.getDefaultColor()));
    }

    /* renamed from: i */
    private void m14344i(Rect rect) {
        Rect rect2 = rect;
        if (rect == null) {
            rect2 = getBounds();
        }
        this.f774c.set(rect2.left, rect2.top, rect2.right, rect2.bottom);
        this.f775d.set(rect2);
        if (this.f777f) {
            float d = C0173g.m14340d(this.f776e, this.f772a, this.f778g);
            this.f775d.inset((int) Math.ceil(C0173g.m14341c(this.f776e, this.f772a, this.f778g)), (int) Math.ceil(d));
            this.f774c.set(this.f775d);
        }
    }

    /* renamed from: b */
    public ColorStateList m14351b() {
        return this.f779h;
    }

    /* renamed from: c */
    float m14350c() {
        return this.f776e;
    }

    /* renamed from: d */
    public float m14349d() {
        return this.f772a;
    }

    @Override // android.graphics.drawable.Drawable
    public void draw(Canvas canvas) {
        boolean z;
        Paint paint = this.f773b;
        if (this.f780i == null || paint.getColorFilter() != null) {
            z = false;
        } else {
            paint.setColorFilter(this.f780i);
            z = true;
        }
        RectF rectF = this.f774c;
        float f = this.f772a;
        canvas.drawRoundRect(rectF, f, f, paint);
        if (z) {
            paint.setColorFilter(null);
        }
    }

    /* renamed from: f */
    public void m14347f(ColorStateList colorStateList) {
        m14348e(colorStateList);
        invalidateSelf();
    }

    /* renamed from: g */
    void m14346g(float f, boolean z, boolean z2) {
        if (f != this.f776e || this.f777f != z || this.f778g != z2) {
            this.f776e = f;
            this.f777f = z;
            this.f778g = z2;
            m14344i(null);
            invalidateSelf();
        }
    }

    @Override // android.graphics.drawable.Drawable
    public int getOpacity() {
        return -3;
    }

    @Override // android.graphics.drawable.Drawable
    public void getOutline(Outline outline) {
        outline.setRoundRect(this.f775d, this.f772a);
    }

    /* renamed from: h */
    void m14345h(float f) {
        if (f != this.f772a) {
            this.f772a = f;
            m14344i(null);
            invalidateSelf();
        }
    }

    @Override // android.graphics.drawable.Drawable
    public boolean isStateful() {
        ColorStateList colorStateList;
        ColorStateList colorStateList2 = this.f781j;
        return (colorStateList2 != null && colorStateList2.isStateful()) || ((colorStateList = this.f779h) != null && colorStateList.isStateful()) || super.isStateful();
    }

    @Override // android.graphics.drawable.Drawable
    protected void onBoundsChange(Rect rect) {
        super.onBoundsChange(rect);
        m14344i(rect);
    }

    @Override // android.graphics.drawable.Drawable
    protected boolean onStateChange(int[] iArr) {
        PorterDuff.Mode mode;
        ColorStateList colorStateList = this.f779h;
        int colorForState = colorStateList.getColorForState(iArr, colorStateList.getDefaultColor());
        boolean z = colorForState != this.f773b.getColor();
        if (z) {
            this.f773b.setColor(colorForState);
        }
        ColorStateList colorStateList2 = this.f781j;
        if (colorStateList2 == null || (mode = this.f782k) == null) {
            return z;
        }
        this.f780i = m14352a(colorStateList2, mode);
        return true;
    }

    @Override // android.graphics.drawable.Drawable
    public void setAlpha(int i) {
        this.f773b.setAlpha(i);
    }

    @Override // android.graphics.drawable.Drawable
    public void setColorFilter(ColorFilter colorFilter) {
        this.f773b.setColorFilter(colorFilter);
    }

    @Override // android.graphics.drawable.Drawable
    public void setTintList(ColorStateList colorStateList) {
        this.f781j = colorStateList;
        this.f780i = m14352a(colorStateList, this.f782k);
        invalidateSelf();
    }

    @Override // android.graphics.drawable.Drawable
    public void setTintMode(PorterDuff.Mode mode) {
        this.f782k = mode;
        this.f780i = m14352a(this.f781j, mode);
        invalidateSelf();
    }
}

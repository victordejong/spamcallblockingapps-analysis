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
class C0366f extends Drawable {

    /* renamed from: a */
    private float f1499a;

    /* renamed from: e */
    private float f1503e;

    /* renamed from: h */
    private ColorStateList f1506h;

    /* renamed from: i */
    private PorterDuffColorFilter f1507i;

    /* renamed from: j */
    private ColorStateList f1508j;

    /* renamed from: f */
    private boolean f1504f = false;

    /* renamed from: g */
    private boolean f1505g = true;

    /* renamed from: k */
    private PorterDuff.Mode f1509k = PorterDuff.Mode.SRC_IN;

    /* renamed from: b */
    private final Paint f1500b = new Paint(5);

    /* renamed from: c */
    private final RectF f1501c = new RectF();

    /* renamed from: d */
    private final Rect f1502d = new Rect();

    public C0366f(ColorStateList colorStateList, float f) {
        this.f1499a = f;
        m34612e(colorStateList);
    }

    /* renamed from: a */
    private PorterDuffColorFilter m34616a(ColorStateList colorStateList, PorterDuff.Mode mode) {
        if (colorStateList == null || mode == null) {
            return null;
        }
        return new PorterDuffColorFilter(colorStateList.getColorForState(getState(), 0), mode);
    }

    /* renamed from: e */
    private void m34612e(ColorStateList colorStateList) {
        ColorStateList colorStateList2 = colorStateList;
        if (colorStateList == null) {
            colorStateList2 = ColorStateList.valueOf(0);
        }
        this.f1506h = colorStateList2;
        this.f1500b.setColor(colorStateList2.getColorForState(getState(), this.f1506h.getDefaultColor()));
    }

    /* renamed from: i */
    private void m34608i(Rect rect) {
        Rect rect2 = rect;
        if (rect == null) {
            rect2 = getBounds();
        }
        this.f1501c.set(rect2.left, rect2.top, rect2.right, rect2.bottom);
        this.f1502d.set(rect2);
        if (this.f1504f) {
            float m34604d = C0367g.m34604d(this.f1503e, this.f1499a, this.f1505g);
            this.f1502d.inset((int) Math.ceil(C0367g.m34605c(this.f1503e, this.f1499a, this.f1505g)), (int) Math.ceil(m34604d));
            this.f1501c.set(this.f1502d);
        }
    }

    /* renamed from: b */
    public ColorStateList m34615b() {
        return this.f1506h;
    }

    /* renamed from: c */
    public float m34614c() {
        return this.f1503e;
    }

    /* renamed from: d */
    public float m34613d() {
        return this.f1499a;
    }

    @Override // android.graphics.drawable.Drawable
    public void draw(Canvas canvas) {
        boolean z;
        Paint paint = this.f1500b;
        if (this.f1507i == null || paint.getColorFilter() != null) {
            z = false;
        } else {
            paint.setColorFilter(this.f1507i);
            z = true;
        }
        RectF rectF = this.f1501c;
        float f = this.f1499a;
        canvas.drawRoundRect(rectF, f, f, paint);
        if (z) {
            paint.setColorFilter(null);
        }
    }

    /* renamed from: f */
    public void m34611f(ColorStateList colorStateList) {
        m34612e(colorStateList);
        invalidateSelf();
    }

    /* renamed from: g */
    public void m34610g(float f, boolean z, boolean z2) {
        if (f == this.f1503e && this.f1504f == z && this.f1505g == z2) {
            return;
        }
        this.f1503e = f;
        this.f1504f = z;
        this.f1505g = z2;
        m34608i(null);
        invalidateSelf();
    }

    @Override // android.graphics.drawable.Drawable
    public int getOpacity() {
        return -3;
    }

    @Override // android.graphics.drawable.Drawable
    public void getOutline(Outline outline) {
        outline.setRoundRect(this.f1502d, this.f1499a);
    }

    /* renamed from: h */
    public void m34609h(float f) {
        if (f == this.f1499a) {
            return;
        }
        this.f1499a = f;
        m34608i(null);
        invalidateSelf();
    }

    @Override // android.graphics.drawable.Drawable
    public boolean isStateful() {
        ColorStateList colorStateList;
        ColorStateList colorStateList2 = this.f1508j;
        return (colorStateList2 != null && colorStateList2.isStateful()) || ((colorStateList = this.f1506h) != null && colorStateList.isStateful()) || super.isStateful();
    }

    @Override // android.graphics.drawable.Drawable
    protected void onBoundsChange(Rect rect) {
        super.onBoundsChange(rect);
        m34608i(rect);
    }

    @Override // android.graphics.drawable.Drawable
    protected boolean onStateChange(int[] iArr) {
        PorterDuff.Mode mode;
        ColorStateList colorStateList = this.f1506h;
        int colorForState = colorStateList.getColorForState(iArr, colorStateList.getDefaultColor());
        boolean z = colorForState != this.f1500b.getColor();
        if (z) {
            this.f1500b.setColor(colorForState);
        }
        ColorStateList colorStateList2 = this.f1508j;
        if (colorStateList2 == null || (mode = this.f1509k) == null) {
            return z;
        }
        this.f1507i = m34616a(colorStateList2, mode);
        return true;
    }

    @Override // android.graphics.drawable.Drawable
    public void setAlpha(int i) {
        this.f1500b.setAlpha(i);
    }

    @Override // android.graphics.drawable.Drawable
    public void setColorFilter(ColorFilter colorFilter) {
        this.f1500b.setColorFilter(colorFilter);
    }

    @Override // android.graphics.drawable.Drawable
    public void setTintList(ColorStateList colorStateList) {
        this.f1508j = colorStateList;
        this.f1507i = m34616a(colorStateList, this.f1509k);
        invalidateSelf();
    }

    @Override // android.graphics.drawable.Drawable
    public void setTintMode(PorterDuff.Mode mode) {
        this.f1509k = mode;
        this.f1507i = m34616a(this.f1508j, mode);
        invalidateSelf();
    }
}

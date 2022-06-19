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
class C0414f extends Drawable {

    /* renamed from: a */
    private float f1646a;

    /* renamed from: e */
    private float f1650e;

    /* renamed from: h */
    private ColorStateList f1653h;

    /* renamed from: i */
    private PorterDuffColorFilter f1654i;

    /* renamed from: j */
    private ColorStateList f1655j;

    /* renamed from: f */
    private boolean f1651f = false;

    /* renamed from: g */
    private boolean f1652g = true;

    /* renamed from: k */
    private PorterDuff.Mode f1656k = PorterDuff.Mode.SRC_IN;

    /* renamed from: b */
    private final Paint f1647b = new Paint(5);

    /* renamed from: c */
    private final RectF f1648c = new RectF();

    /* renamed from: d */
    private final Rect f1649d = new Rect();

    public C0414f(ColorStateList colorStateList, float f) {
        this.f1646a = f;
        m21018b(colorStateList);
    }

    /* renamed from: a */
    private PorterDuffColorFilter m21021a(ColorStateList colorStateList, PorterDuff.Mode mode) {
        return (colorStateList == null || mode == null) ? null : new PorterDuffColorFilter(colorStateList.getColorForState(getState(), 0), mode);
    }

    /* renamed from: a */
    private void m21020a(Rect rect) {
        Rect rect2 = rect;
        if (rect == null) {
            rect2 = getBounds();
        }
        this.f1648c.set(rect2.left, rect2.top, rect2.right, rect2.bottom);
        this.f1649d.set(rect2);
        if (this.f1651f) {
            float m21013a = C0415g.m21013a(this.f1650e, this.f1646a, this.f1652g);
            this.f1649d.inset((int) Math.ceil(C0415g.m21006b(this.f1650e, this.f1646a, this.f1652g)), (int) Math.ceil(m21013a));
            this.f1648c.set(this.f1649d);
        }
    }

    /* renamed from: b */
    private void m21018b(ColorStateList colorStateList) {
        ColorStateList colorStateList2 = colorStateList;
        if (colorStateList == null) {
            colorStateList2 = ColorStateList.valueOf(0);
        }
        this.f1653h = colorStateList2;
        this.f1647b.setColor(this.f1653h.getColorForState(getState(), this.f1653h.getDefaultColor()));
    }

    /* renamed from: a */
    public float m21025a() {
        return this.f1650e;
    }

    /* renamed from: a */
    public void m21024a(float f) {
        if (f == this.f1646a) {
            return;
        }
        this.f1646a = f;
        m21020a((Rect) null);
        invalidateSelf();
    }

    /* renamed from: a */
    public void m21023a(float f, boolean z, boolean z2) {
        if (f == this.f1650e && this.f1651f == z && this.f1652g == z2) {
            return;
        }
        this.f1650e = f;
        this.f1651f = z;
        this.f1652g = z2;
        m21020a((Rect) null);
        invalidateSelf();
    }

    /* renamed from: a */
    public void m21022a(ColorStateList colorStateList) {
        m21018b(colorStateList);
        invalidateSelf();
    }

    /* renamed from: b */
    public float m21019b() {
        return this.f1646a;
    }

    /* renamed from: c */
    public ColorStateList m21017c() {
        return this.f1653h;
    }

    @Override // android.graphics.drawable.Drawable
    public void draw(Canvas canvas) {
        boolean z;
        Paint paint = this.f1647b;
        if (this.f1654i == null || paint.getColorFilter() != null) {
            z = false;
        } else {
            paint.setColorFilter(this.f1654i);
            z = true;
        }
        canvas.drawRoundRect(this.f1648c, this.f1646a, this.f1646a, paint);
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
        outline.setRoundRect(this.f1649d, this.f1646a);
    }

    @Override // android.graphics.drawable.Drawable
    public boolean isStateful() {
        return (this.f1655j != null && this.f1655j.isStateful()) || (this.f1653h != null && this.f1653h.isStateful()) || super.isStateful();
    }

    @Override // android.graphics.drawable.Drawable
    protected void onBoundsChange(Rect rect) {
        super.onBoundsChange(rect);
        m21020a(rect);
    }

    @Override // android.graphics.drawable.Drawable
    protected boolean onStateChange(int[] iArr) {
        int colorForState = this.f1653h.getColorForState(iArr, this.f1653h.getDefaultColor());
        boolean z = colorForState != this.f1647b.getColor();
        if (z) {
            this.f1647b.setColor(colorForState);
        }
        if (this.f1655j != null && this.f1656k != null) {
            this.f1654i = m21021a(this.f1655j, this.f1656k);
            z = true;
        }
        return z;
    }

    @Override // android.graphics.drawable.Drawable
    public void setAlpha(int i) {
        this.f1647b.setAlpha(i);
    }

    @Override // android.graphics.drawable.Drawable
    public void setColorFilter(ColorFilter colorFilter) {
        this.f1647b.setColorFilter(colorFilter);
    }

    @Override // android.graphics.drawable.Drawable
    public void setTintList(ColorStateList colorStateList) {
        this.f1655j = colorStateList;
        this.f1654i = m21021a(this.f1655j, this.f1656k);
        invalidateSelf();
    }

    @Override // android.graphics.drawable.Drawable
    public void setTintMode(PorterDuff.Mode mode) {
        this.f1656k = mode;
        this.f1654i = m21021a(this.f1655j, this.f1656k);
        invalidateSelf();
    }
}

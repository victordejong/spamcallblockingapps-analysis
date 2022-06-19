package androidx.p012b.p013a;

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
/* renamed from: androidx.b.a.g */
/* loaded from: classes-dex2jar.jar:androidx/b/a/g.class */
class C0371g extends Drawable {

    /* renamed from: a */
    private float f1443a;

    /* renamed from: e */
    private float f1447e;

    /* renamed from: h */
    private ColorStateList f1450h;

    /* renamed from: i */
    private PorterDuffColorFilter f1451i;

    /* renamed from: j */
    private ColorStateList f1452j;

    /* renamed from: f */
    private boolean f1448f = false;

    /* renamed from: g */
    private boolean f1449g = true;

    /* renamed from: k */
    private PorterDuff.Mode f1453k = PorterDuff.Mode.SRC_IN;

    /* renamed from: b */
    private final Paint f1444b = new Paint(5);

    /* renamed from: c */
    private final RectF f1445c = new RectF();

    /* renamed from: d */
    private final Rect f1446d = new Rect();

    public C0371g(ColorStateList colorStateList, float f) {
        this.f1443a = f;
        m6894b(colorStateList);
    }

    /* renamed from: a */
    private PorterDuffColorFilter m6897a(ColorStateList colorStateList, PorterDuff.Mode mode) {
        if (colorStateList == null || mode == null) {
            return null;
        }
        return new PorterDuffColorFilter(colorStateList.getColorForState(getState(), 0), mode);
    }

    /* renamed from: a */
    private void m6896a(Rect rect) {
        Rect rect2 = rect;
        if (rect == null) {
            rect2 = getBounds();
        }
        this.f1445c.set(rect2.left, rect2.top, rect2.right, rect2.bottom);
        this.f1446d.set(rect2);
        if (this.f1448f) {
            float m6889a = C0372h.m6889a(this.f1447e, this.f1443a, this.f1449g);
            this.f1446d.inset((int) Math.ceil(C0372h.m6882b(this.f1447e, this.f1443a, this.f1449g)), (int) Math.ceil(m6889a));
            this.f1445c.set(this.f1446d);
        }
    }

    /* renamed from: b */
    private void m6894b(ColorStateList colorStateList) {
        ColorStateList colorStateList2 = colorStateList;
        if (colorStateList == null) {
            colorStateList2 = ColorStateList.valueOf(0);
        }
        this.f1450h = colorStateList2;
        this.f1444b.setColor(this.f1450h.getColorForState(getState(), this.f1450h.getDefaultColor()));
    }

    /* renamed from: a */
    public float m6901a() {
        return this.f1447e;
    }

    /* renamed from: a */
    public void m6900a(float f) {
        if (f == this.f1443a) {
            return;
        }
        this.f1443a = f;
        m6896a((Rect) null);
        invalidateSelf();
    }

    /* renamed from: a */
    public void m6899a(float f, boolean z, boolean z2) {
        if (f == this.f1447e && this.f1448f == z && this.f1449g == z2) {
            return;
        }
        this.f1447e = f;
        this.f1448f = z;
        this.f1449g = z2;
        m6896a((Rect) null);
        invalidateSelf();
    }

    /* renamed from: a */
    public void m6898a(ColorStateList colorStateList) {
        m6894b(colorStateList);
        invalidateSelf();
    }

    /* renamed from: b */
    public float m6895b() {
        return this.f1443a;
    }

    /* renamed from: c */
    public ColorStateList m6893c() {
        return this.f1450h;
    }

    @Override // android.graphics.drawable.Drawable
    public void draw(Canvas canvas) {
        boolean z;
        Paint paint = this.f1444b;
        if (this.f1451i == null || paint.getColorFilter() != null) {
            z = false;
        } else {
            paint.setColorFilter(this.f1451i);
            z = true;
        }
        RectF rectF = this.f1445c;
        float f = this.f1443a;
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
        outline.setRoundRect(this.f1446d, this.f1443a);
    }

    @Override // android.graphics.drawable.Drawable
    public boolean isStateful() {
        ColorStateList colorStateList;
        ColorStateList colorStateList2 = this.f1452j;
        return (colorStateList2 != null && colorStateList2.isStateful()) || ((colorStateList = this.f1450h) != null && colorStateList.isStateful()) || super.isStateful();
    }

    @Override // android.graphics.drawable.Drawable
    protected void onBoundsChange(Rect rect) {
        super.onBoundsChange(rect);
        m6896a(rect);
    }

    @Override // android.graphics.drawable.Drawable
    protected boolean onStateChange(int[] iArr) {
        PorterDuff.Mode mode;
        ColorStateList colorStateList = this.f1450h;
        int colorForState = colorStateList.getColorForState(iArr, colorStateList.getDefaultColor());
        boolean z = colorForState != this.f1444b.getColor();
        if (z) {
            this.f1444b.setColor(colorForState);
        }
        ColorStateList colorStateList2 = this.f1452j;
        if (colorStateList2 == null || (mode = this.f1453k) == null) {
            return z;
        }
        this.f1451i = m6897a(colorStateList2, mode);
        return true;
    }

    @Override // android.graphics.drawable.Drawable
    public void setAlpha(int i) {
        this.f1444b.setAlpha(i);
    }

    @Override // android.graphics.drawable.Drawable
    public void setColorFilter(ColorFilter colorFilter) {
        this.f1444b.setColorFilter(colorFilter);
    }

    @Override // android.graphics.drawable.Drawable
    public void setTintList(ColorStateList colorStateList) {
        this.f1452j = colorStateList;
        this.f1451i = m6897a(this.f1452j, this.f1453k);
        invalidateSelf();
    }

    @Override // android.graphics.drawable.Drawable
    public void setTintMode(PorterDuff.Mode mode) {
        this.f1453k = mode;
        this.f1451i = m6897a(this.f1452j, this.f1453k);
        invalidateSelf();
    }
}

package androidx.cardview.widget;

import android.content.res.ColorStateList;
import android.content.res.Resources;
import android.graphics.Canvas;
import android.graphics.ColorFilter;
import android.graphics.LinearGradient;
import android.graphics.Paint;
import android.graphics.Path;
import android.graphics.RadialGradient;
import android.graphics.Rect;
import android.graphics.RectF;
import android.graphics.Shader;
import android.graphics.drawable.Drawable;
import p020b.p035d.C1485b;
import p020b.p035d.C1486c;
/* renamed from: androidx.cardview.widget.g */
/* loaded from: classes-dex2jar.jar:androidx/cardview/widget/g.class */
class C0367g extends Drawable {

    /* renamed from: a */
    private static final double f1510a = Math.cos(Math.toRadians(45.0d));

    /* renamed from: b */
    static AbstractC0368a f1511b;

    /* renamed from: c */
    private final int f1512c;

    /* renamed from: e */
    private Paint f1514e;

    /* renamed from: f */
    private Paint f1515f;

    /* renamed from: h */
    private float f1517h;

    /* renamed from: i */
    private Path f1518i;

    /* renamed from: j */
    private float f1519j;

    /* renamed from: k */
    private float f1520k;

    /* renamed from: l */
    private float f1521l;

    /* renamed from: m */
    private ColorStateList f1522m;

    /* renamed from: o */
    private final int f1524o;

    /* renamed from: p */
    private final int f1525p;

    /* renamed from: n */
    private boolean f1523n = true;

    /* renamed from: q */
    private boolean f1526q = true;

    /* renamed from: r */
    private boolean f1527r = false;

    /* renamed from: d */
    private Paint f1513d = new Paint(5);

    /* renamed from: g */
    private final RectF f1516g = new RectF();

    /* renamed from: androidx.cardview.widget.g$a */
    /* loaded from: classes-dex2jar.jar:androidx/cardview/widget/g$a.class */
    interface AbstractC0368a {
        /* renamed from: a */
        void mo34587a(Canvas canvas, RectF rectF, float f, Paint paint);
    }

    public C0367g(Resources resources, ColorStateList colorStateList, float f, float f2, float f3) {
        this.f1524o = resources.getColor(C1485b.cardview_shadow_start_color);
        this.f1525p = resources.getColor(C1485b.cardview_shadow_end_color);
        this.f1512c = resources.getDimensionPixelSize(C1486c.cardview_compat_inset_shadow);
        m34594n(colorStateList);
        Paint paint = new Paint(5);
        this.f1514e = paint;
        paint.setStyle(Paint.Style.FILL);
        this.f1517h = (int) (f + 0.5f);
        Paint paint2 = new Paint(this.f1514e);
        this.f1515f = paint2;
        paint2.setAntiAlias(false);
        m34589s(f2, f3);
    }

    /* renamed from: a */
    private void m34607a(Rect rect) {
        float f = this.f1519j;
        float f2 = 1.5f * f;
        this.f1516g.set(rect.left + f, rect.top + f2, rect.right - f, rect.bottom - f2);
        m34606b();
    }

    /* renamed from: b */
    private void m34606b() {
        float f = this.f1517h;
        RectF rectF = new RectF(-f, -f, f, f);
        RectF rectF2 = new RectF(rectF);
        float f2 = this.f1520k;
        rectF2.inset(-f2, -f2);
        Path path = this.f1518i;
        if (path == null) {
            this.f1518i = new Path();
        } else {
            path.reset();
        }
        this.f1518i.setFillType(Path.FillType.EVEN_ODD);
        this.f1518i.moveTo(-this.f1517h, 0.0f);
        this.f1518i.rLineTo(-this.f1520k, 0.0f);
        this.f1518i.arcTo(rectF2, 180.0f, 90.0f, false);
        this.f1518i.arcTo(rectF, 270.0f, -90.0f, false);
        this.f1518i.close();
        float f3 = this.f1517h;
        float f4 = f3 / (this.f1520k + f3);
        Paint paint = this.f1514e;
        float f5 = this.f1517h;
        float f6 = this.f1520k;
        int i = this.f1524o;
        paint.setShader(new RadialGradient(0.0f, 0.0f, f5 + f6, new int[]{i, i, this.f1525p}, new float[]{0.0f, f4, 1.0f}, Shader.TileMode.CLAMP));
        Paint paint2 = this.f1515f;
        float f7 = this.f1517h;
        float f8 = -f7;
        float f9 = this.f1520k;
        float f10 = -f7;
        int i2 = this.f1524o;
        paint2.setShader(new LinearGradient(0.0f, f8 + f9, 0.0f, f10 - f9, new int[]{i2, i2, this.f1525p}, new float[]{0.0f, 0.5f, 1.0f}, Shader.TileMode.CLAMP));
        this.f1515f.setAntiAlias(false);
    }

    /* renamed from: c */
    public static float m34605c(float f, float f2, boolean z) {
        float f3 = f;
        if (z) {
            f3 = (float) (f + ((1.0d - f1510a) * f2));
        }
        return f3;
    }

    /* renamed from: d */
    public static float m34604d(float f, float f2, boolean z) {
        return z ? (float) ((f * 1.5f) + ((1.0d - f1510a) * f2)) : f * 1.5f;
    }

    /* renamed from: e */
    private void m34603e(Canvas canvas) {
        float f = this.f1517h;
        float f2 = (-f) - this.f1520k;
        float f3 = f + this.f1512c + (this.f1521l / 2.0f);
        float f4 = f3 * 2.0f;
        boolean z = this.f1516g.width() - f4 > 0.0f;
        boolean z2 = this.f1516g.height() - f4 > 0.0f;
        int save = canvas.save();
        RectF rectF = this.f1516g;
        canvas.translate(rectF.left + f3, rectF.top + f3);
        canvas.drawPath(this.f1518i, this.f1514e);
        if (z) {
            canvas.drawRect(0.0f, f2, this.f1516g.width() - f4, -this.f1517h, this.f1515f);
        }
        canvas.restoreToCount(save);
        int save2 = canvas.save();
        RectF rectF2 = this.f1516g;
        canvas.translate(rectF2.right - f3, rectF2.bottom - f3);
        canvas.rotate(180.0f);
        canvas.drawPath(this.f1518i, this.f1514e);
        if (z) {
            canvas.drawRect(0.0f, f2, this.f1516g.width() - f4, (-this.f1517h) + this.f1520k, this.f1515f);
        }
        canvas.restoreToCount(save2);
        int save3 = canvas.save();
        RectF rectF3 = this.f1516g;
        canvas.translate(rectF3.left + f3, rectF3.bottom - f3);
        canvas.rotate(270.0f);
        canvas.drawPath(this.f1518i, this.f1514e);
        if (z2) {
            canvas.drawRect(0.0f, f2, this.f1516g.height() - f4, -this.f1517h, this.f1515f);
        }
        canvas.restoreToCount(save3);
        int save4 = canvas.save();
        RectF rectF4 = this.f1516g;
        canvas.translate(rectF4.right - f3, rectF4.top + f3);
        canvas.rotate(90.0f);
        canvas.drawPath(this.f1518i, this.f1514e);
        if (z2) {
            canvas.drawRect(0.0f, f2, this.f1516g.height() - f4, -this.f1517h, this.f1515f);
        }
        canvas.restoreToCount(save4);
    }

    /* renamed from: n */
    private void m34594n(ColorStateList colorStateList) {
        ColorStateList colorStateList2 = colorStateList;
        if (colorStateList == null) {
            colorStateList2 = ColorStateList.valueOf(0);
        }
        this.f1522m = colorStateList2;
        this.f1513d.setColor(colorStateList2.getColorForState(getState(), this.f1522m.getDefaultColor()));
    }

    /* renamed from: s */
    private void m34589s(float f, float f2) {
        if (f < 0.0f) {
            throw new IllegalArgumentException("Invalid shadow size " + f + ". Must be >= 0");
        } else if (f2 < 0.0f) {
            throw new IllegalArgumentException("Invalid max shadow size " + f2 + ". Must be >= 0");
        } else {
            float m34588t = m34588t(f);
            float m34588t2 = m34588t(f2);
            float f3 = m34588t;
            if (m34588t > m34588t2) {
                if (!this.f1527r) {
                    this.f1527r = true;
                }
                f3 = m34588t2;
            }
            if (this.f1521l == f3 && this.f1519j == m34588t2) {
                return;
            }
            this.f1521l = f3;
            this.f1519j = m34588t2;
            this.f1520k = (int) ((f3 * 1.5f) + this.f1512c + 0.5f);
            this.f1523n = true;
            invalidateSelf();
        }
    }

    /* renamed from: t */
    private int m34588t(float f) {
        int i = (int) (f + 0.5f);
        int i2 = i;
        if (i % 2 == 1) {
            i2 = i - 1;
        }
        return i2;
    }

    @Override // android.graphics.drawable.Drawable
    public void draw(Canvas canvas) {
        if (this.f1523n) {
            m34607a(getBounds());
            this.f1523n = false;
        }
        canvas.translate(0.0f, this.f1521l / 2.0f);
        m34603e(canvas);
        canvas.translate(0.0f, (-this.f1521l) / 2.0f);
        f1511b.mo34587a(canvas, this.f1516g, this.f1517h, this.f1513d);
    }

    /* renamed from: f */
    public ColorStateList m34602f() {
        return this.f1522m;
    }

    /* renamed from: g */
    public float m34601g() {
        return this.f1517h;
    }

    @Override // android.graphics.drawable.Drawable
    public int getOpacity() {
        return -3;
    }

    @Override // android.graphics.drawable.Drawable
    public boolean getPadding(Rect rect) {
        int ceil = (int) Math.ceil(m34604d(this.f1519j, this.f1517h, this.f1526q));
        int ceil2 = (int) Math.ceil(m34605c(this.f1519j, this.f1517h, this.f1526q));
        rect.set(ceil2, ceil, ceil2, ceil);
        return true;
    }

    /* renamed from: h */
    public void m34600h(Rect rect) {
        getPadding(rect);
    }

    /* renamed from: i */
    public float m34599i() {
        return this.f1519j;
    }

    @Override // android.graphics.drawable.Drawable
    public boolean isStateful() {
        ColorStateList colorStateList = this.f1522m;
        return (colorStateList != null && colorStateList.isStateful()) || super.isStateful();
    }

    /* renamed from: j */
    public float m34598j() {
        float f = this.f1519j;
        return (Math.max(f, this.f1517h + this.f1512c + ((f * 1.5f) / 2.0f)) * 2.0f) + (((this.f1519j * 1.5f) + this.f1512c) * 2.0f);
    }

    /* renamed from: k */
    public float m34597k() {
        float f = this.f1519j;
        return (Math.max(f, this.f1517h + this.f1512c + (f / 2.0f)) * 2.0f) + ((this.f1519j + this.f1512c) * 2.0f);
    }

    /* renamed from: l */
    public float m34596l() {
        return this.f1521l;
    }

    /* renamed from: m */
    public void m34595m(boolean z) {
        this.f1526q = z;
        invalidateSelf();
    }

    /* renamed from: o */
    public void m34593o(ColorStateList colorStateList) {
        m34594n(colorStateList);
        invalidateSelf();
    }

    @Override // android.graphics.drawable.Drawable
    protected void onBoundsChange(Rect rect) {
        super.onBoundsChange(rect);
        this.f1523n = true;
    }

    @Override // android.graphics.drawable.Drawable
    protected boolean onStateChange(int[] iArr) {
        ColorStateList colorStateList = this.f1522m;
        int colorForState = colorStateList.getColorForState(iArr, colorStateList.getDefaultColor());
        if (this.f1513d.getColor() == colorForState) {
            return false;
        }
        this.f1513d.setColor(colorForState);
        this.f1523n = true;
        invalidateSelf();
        return true;
    }

    /* renamed from: p */
    public void m34592p(float f) {
        if (f < 0.0f) {
            throw new IllegalArgumentException("Invalid radius " + f + ". Must be >= 0");
        }
        float f2 = (int) (f + 0.5f);
        if (this.f1517h == f2) {
            return;
        }
        this.f1517h = f2;
        this.f1523n = true;
        invalidateSelf();
    }

    /* renamed from: q */
    public void m34591q(float f) {
        m34589s(this.f1521l, f);
    }

    /* renamed from: r */
    public void m34590r(float f) {
        m34589s(f, this.f1519j);
    }

    @Override // android.graphics.drawable.Drawable
    public void setAlpha(int i) {
        this.f1513d.setAlpha(i);
        this.f1514e.setAlpha(i);
        this.f1515f.setAlpha(i);
    }

    @Override // android.graphics.drawable.Drawable
    public void setColorFilter(ColorFilter colorFilter) {
        this.f1513d.setColorFilter(colorFilter);
    }
}

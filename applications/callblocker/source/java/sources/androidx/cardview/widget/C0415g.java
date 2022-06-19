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
import androidx.cardview.C0400a;
/* renamed from: androidx.cardview.widget.g */
/* loaded from: classes-dex2jar.jar:androidx/cardview/widget/g.class */
class C0415g extends Drawable {

    /* renamed from: a */
    static AbstractC0416a f1657a;

    /* renamed from: b */
    private static final double f1658b = Math.cos(Math.toRadians(45.0d));

    /* renamed from: c */
    private final int f1659c;

    /* renamed from: h */
    private float f1664h;

    /* renamed from: i */
    private Path f1665i;

    /* renamed from: j */
    private float f1666j;

    /* renamed from: k */
    private float f1667k;

    /* renamed from: l */
    private float f1668l;

    /* renamed from: m */
    private ColorStateList f1669m;

    /* renamed from: o */
    private final int f1671o;

    /* renamed from: p */
    private final int f1672p;

    /* renamed from: n */
    private boolean f1670n = true;

    /* renamed from: q */
    private boolean f1673q = true;

    /* renamed from: r */
    private boolean f1674r = false;

    /* renamed from: d */
    private Paint f1660d = new Paint(5);

    /* renamed from: e */
    private Paint f1661e = new Paint(5);

    /* renamed from: g */
    private final RectF f1663g = new RectF();

    /* renamed from: f */
    private Paint f1662f = new Paint(this.f1661e);

    /* renamed from: androidx.cardview.widget.g$a */
    /* loaded from: classes-dex2jar.jar:androidx/cardview/widget/g$a.class */
    interface AbstractC0416a {
        /* renamed from: a */
        void mo20996a(Canvas canvas, RectF rectF, float f, Paint paint);
    }

    public C0415g(Resources resources, ColorStateList colorStateList, float f, float f2, float f3) {
        this.f1671o = resources.getColor(C0400a.C0402b.cardview_shadow_start_color);
        this.f1672p = resources.getColor(C0400a.C0402b.cardview_shadow_end_color);
        this.f1659c = resources.getDimensionPixelSize(C0400a.C0403c.cardview_compat_inset_shadow);
        m21005b(colorStateList);
        this.f1661e.setStyle(Paint.Style.FILL);
        this.f1664h = (int) (0.5f + f);
        this.f1662f.setAntiAlias(false);
        m21014a(f2, f3);
    }

    /* renamed from: a */
    public static float m21013a(float f, float f2, boolean z) {
        return z ? (float) ((1.5f * f) + ((1.0d - f1658b) * f2)) : 1.5f * f;
    }

    /* renamed from: a */
    private void m21014a(float f, float f2) {
        if (f < 0.0f) {
            throw new IllegalArgumentException("Invalid shadow size " + f + ". Must be >= 0");
        }
        if (f2 < 0.0f) {
            throw new IllegalArgumentException("Invalid max shadow size " + f2 + ". Must be >= 0");
        }
        float m21000d = m21000d(f);
        float m21000d2 = m21000d(f2);
        float f3 = m21000d;
        if (m21000d > m21000d2) {
            if (!this.f1674r) {
                this.f1674r = true;
            }
            f3 = m21000d2;
        }
        if (this.f1668l == f3 && this.f1666j == m21000d2) {
            return;
        }
        this.f1668l = f3;
        this.f1666j = m21000d2;
        this.f1667k = (int) ((f3 * 1.5f) + this.f1659c + 0.5f);
        this.f1670n = true;
        invalidateSelf();
    }

    /* renamed from: a */
    private void m21011a(Canvas canvas) {
        float f = (-this.f1664h) - this.f1667k;
        float f2 = this.f1664h + this.f1659c + (this.f1668l / 2.0f);
        boolean z = this.f1663g.width() - (2.0f * f2) > 0.0f;
        boolean z2 = this.f1663g.height() - (2.0f * f2) > 0.0f;
        int save = canvas.save();
        canvas.translate(this.f1663g.left + f2, this.f1663g.top + f2);
        canvas.drawPath(this.f1665i, this.f1661e);
        if (z) {
            canvas.drawRect(0.0f, f, this.f1663g.width() - (2.0f * f2), -this.f1664h, this.f1662f);
        }
        canvas.restoreToCount(save);
        int save2 = canvas.save();
        canvas.translate(this.f1663g.right - f2, this.f1663g.bottom - f2);
        canvas.rotate(180.0f);
        canvas.drawPath(this.f1665i, this.f1661e);
        if (z) {
            canvas.drawRect(0.0f, f, this.f1663g.width() - (2.0f * f2), this.f1667k + (-this.f1664h), this.f1662f);
        }
        canvas.restoreToCount(save2);
        int save3 = canvas.save();
        canvas.translate(this.f1663g.left + f2, this.f1663g.bottom - f2);
        canvas.rotate(270.0f);
        canvas.drawPath(this.f1665i, this.f1661e);
        if (z2) {
            canvas.drawRect(0.0f, f, this.f1663g.height() - (2.0f * f2), -this.f1664h, this.f1662f);
        }
        canvas.restoreToCount(save3);
        int save4 = canvas.save();
        canvas.translate(this.f1663g.right - f2, this.f1663g.top + f2);
        canvas.rotate(90.0f);
        canvas.drawPath(this.f1665i, this.f1661e);
        if (z2) {
            canvas.drawRect(0.0f, f, this.f1663g.height() - (2.0f * f2), -this.f1664h, this.f1662f);
        }
        canvas.restoreToCount(save4);
    }

    /* renamed from: b */
    public static float m21006b(float f, float f2, boolean z) {
        float f3 = f;
        if (z) {
            f3 = (float) (f + ((1.0d - f1658b) * f2));
        }
        return f3;
    }

    /* renamed from: b */
    private void m21005b(ColorStateList colorStateList) {
        ColorStateList colorStateList2 = colorStateList;
        if (colorStateList == null) {
            colorStateList2 = ColorStateList.valueOf(0);
        }
        this.f1669m = colorStateList2;
        this.f1660d.setColor(this.f1669m.getColorForState(getState(), this.f1669m.getDefaultColor()));
    }

    /* renamed from: b */
    private void m21004b(Rect rect) {
        float f = this.f1666j * 1.5f;
        this.f1663g.set(rect.left + this.f1666j, rect.top + f, rect.right - this.f1666j, rect.bottom - f);
        m20997g();
    }

    /* renamed from: d */
    private int m21000d(float f) {
        int i = (int) (0.5f + f);
        int i2 = i;
        if (i % 2 == 1) {
            i2 = i - 1;
        }
        return i2;
    }

    /* renamed from: g */
    private void m20997g() {
        RectF rectF = new RectF(-this.f1664h, -this.f1664h, this.f1664h, this.f1664h);
        RectF rectF2 = new RectF(rectF);
        rectF2.inset(-this.f1667k, -this.f1667k);
        if (this.f1665i == null) {
            this.f1665i = new Path();
        } else {
            this.f1665i.reset();
        }
        this.f1665i.setFillType(Path.FillType.EVEN_ODD);
        this.f1665i.moveTo(-this.f1664h, 0.0f);
        this.f1665i.rLineTo(-this.f1667k, 0.0f);
        this.f1665i.arcTo(rectF2, 180.0f, 90.0f, false);
        this.f1665i.arcTo(rectF, 270.0f, -90.0f, false);
        this.f1665i.close();
        float f = this.f1664h / (this.f1664h + this.f1667k);
        Paint paint = this.f1661e;
        float f2 = this.f1664h;
        float f3 = this.f1667k;
        paint.setShader(new RadialGradient(0.0f, 0.0f, f2 + f3, new int[]{this.f1671o, this.f1671o, this.f1672p}, new float[]{0.0f, f, 1.0f}, Shader.TileMode.CLAMP));
        Paint paint2 = this.f1662f;
        float f4 = -this.f1664h;
        float f5 = this.f1667k;
        float f6 = -this.f1664h;
        float f7 = this.f1667k;
        paint2.setShader(new LinearGradient(0.0f, f4 + f5, 0.0f, f6 - f7, new int[]{this.f1671o, this.f1671o, this.f1672p}, new float[]{0.0f, 0.5f, 1.0f}, Shader.TileMode.CLAMP));
        this.f1662f.setAntiAlias(false);
    }

    /* renamed from: a */
    public float m21016a() {
        return this.f1664h;
    }

    /* renamed from: a */
    public void m21015a(float f) {
        if (f < 0.0f) {
            throw new IllegalArgumentException("Invalid radius " + f + ". Must be >= 0");
        }
        float f2 = (int) (0.5f + f);
        if (this.f1664h == f2) {
            return;
        }
        this.f1664h = f2;
        this.f1670n = true;
        invalidateSelf();
    }

    /* renamed from: a */
    public void m21012a(ColorStateList colorStateList) {
        m21005b(colorStateList);
        invalidateSelf();
    }

    /* renamed from: a */
    public void m21010a(Rect rect) {
        getPadding(rect);
    }

    /* renamed from: a */
    public void m21009a(boolean z) {
        this.f1673q = z;
        invalidateSelf();
    }

    /* renamed from: b */
    public float m21008b() {
        return this.f1668l;
    }

    /* renamed from: b */
    public void m21007b(float f) {
        m21014a(f, this.f1666j);
    }

    /* renamed from: c */
    public float m21003c() {
        return this.f1666j;
    }

    /* renamed from: c */
    public void m21002c(float f) {
        m21014a(this.f1668l, f);
    }

    /* renamed from: d */
    public float m21001d() {
        return (Math.max(this.f1666j, this.f1664h + this.f1659c + (this.f1666j / 2.0f)) * 2.0f) + ((this.f1666j + this.f1659c) * 2.0f);
    }

    @Override // android.graphics.drawable.Drawable
    public void draw(Canvas canvas) {
        if (this.f1670n) {
            m21004b(getBounds());
            this.f1670n = false;
        }
        canvas.translate(0.0f, this.f1668l / 2.0f);
        m21011a(canvas);
        canvas.translate(0.0f, (-this.f1668l) / 2.0f);
        f1657a.mo20996a(canvas, this.f1663g, this.f1664h, this.f1660d);
    }

    /* renamed from: e */
    public float m20999e() {
        return (Math.max(this.f1666j, this.f1664h + this.f1659c + ((this.f1666j * 1.5f) / 2.0f)) * 2.0f) + (((this.f1666j * 1.5f) + this.f1659c) * 2.0f);
    }

    /* renamed from: f */
    public ColorStateList m20998f() {
        return this.f1669m;
    }

    @Override // android.graphics.drawable.Drawable
    public int getOpacity() {
        return -3;
    }

    @Override // android.graphics.drawable.Drawable
    public boolean getPadding(Rect rect) {
        int ceil = (int) Math.ceil(m21013a(this.f1666j, this.f1664h, this.f1673q));
        int ceil2 = (int) Math.ceil(m21006b(this.f1666j, this.f1664h, this.f1673q));
        rect.set(ceil2, ceil, ceil2, ceil);
        return true;
    }

    @Override // android.graphics.drawable.Drawable
    public boolean isStateful() {
        return (this.f1669m != null && this.f1669m.isStateful()) || super.isStateful();
    }

    @Override // android.graphics.drawable.Drawable
    protected void onBoundsChange(Rect rect) {
        super.onBoundsChange(rect);
        this.f1670n = true;
    }

    @Override // android.graphics.drawable.Drawable
    protected boolean onStateChange(int[] iArr) {
        boolean z = true;
        int colorForState = this.f1669m.getColorForState(iArr, this.f1669m.getDefaultColor());
        if (this.f1660d.getColor() == colorForState) {
            z = false;
        } else {
            this.f1660d.setColor(colorForState);
            this.f1670n = true;
            invalidateSelf();
        }
        return z;
    }

    @Override // android.graphics.drawable.Drawable
    public void setAlpha(int i) {
        this.f1660d.setAlpha(i);
        this.f1661e.setAlpha(i);
        this.f1662f.setAlpha(i);
    }

    @Override // android.graphics.drawable.Drawable
    public void setColorFilter(ColorFilter colorFilter) {
        this.f1660d.setColorFilter(colorFilter);
    }
}

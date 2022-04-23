package p012b.p033e.p034f;

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
import p012b.p033e.C0766b;
import p012b.p033e.C0767c;
/* renamed from: b.e.f.g */
/* loaded from: classes-dex2jar.jar:b/e/f/g.class */
public class C0778g extends Drawable {

    /* renamed from: q */
    public static final double f3641q = Math.cos(Math.toRadians(45.0d));

    /* renamed from: r */
    public static AbstractC0779a f3642r;

    /* renamed from: a */
    public final int f3643a;

    /* renamed from: c */
    public Paint f3645c;

    /* renamed from: d */
    public Paint f3646d;

    /* renamed from: f */
    public float f3648f;

    /* renamed from: g */
    public Path f3649g;

    /* renamed from: h */
    public float f3650h;

    /* renamed from: i */
    public float f3651i;

    /* renamed from: j */
    public float f3652j;

    /* renamed from: k */
    public ColorStateList f3653k;

    /* renamed from: m */
    public final int f3655m;

    /* renamed from: n */
    public final int f3656n;

    /* renamed from: l */
    public boolean f3654l = true;

    /* renamed from: o */
    public boolean f3657o = true;

    /* renamed from: p */
    public boolean f3658p = false;

    /* renamed from: b */
    public Paint f3644b = new Paint(5);

    /* renamed from: e */
    public final RectF f3647e = new RectF();

    /* renamed from: b.e.f.g$a */
    /* loaded from: classes-dex2jar.jar:b/e/f/g$a.class */
    public interface AbstractC0779a {
        /* renamed from: a */
        void mo36073a(Canvas canvas, RectF rectF, float f, Paint paint);
    }

    public C0778g(Resources resources, ColorStateList colorStateList, float f, float f2, float f3) {
        this.f3655m = resources.getColor(C0766b.cardview_shadow_start_color);
        this.f3656n = resources.getColor(C0766b.cardview_shadow_end_color);
        this.f3643a = resources.getDimensionPixelSize(C0767c.cardview_compat_inset_shadow);
        m36089a(colorStateList);
        Paint paint = new Paint(5);
        this.f3645c = paint;
        paint.setStyle(Paint.Style.FILL);
        this.f3648f = (int) (f + 0.5f);
        Paint paint2 = new Paint(this.f3645c);
        this.f3646d = paint2;
        paint2.setAntiAlias(false);
        m36091a(f2, f3);
    }

    /* renamed from: a */
    public static float m36090a(float f, float f2, boolean z) {
        float f3 = f;
        if (z) {
            double d = f;
            double d2 = f3641q;
            double d3 = f2;
            Double.isNaN(d3);
            Double.isNaN(d);
            f3 = (float) (d + ((1.0d - d2) * d3));
        }
        return f3;
    }

    /* renamed from: b */
    public static float m36083b(float f, float f2, boolean z) {
        if (!z) {
            return f * 1.5f;
        }
        double d = f * 1.5f;
        double d2 = f3641q;
        double d3 = f2;
        Double.isNaN(d3);
        Double.isNaN(d);
        return (float) (d + ((1.0d - d2) * d3));
    }

    /* renamed from: a */
    public final void m36093a() {
        float f = this.f3648f;
        RectF rectF = new RectF(-f, -f, f, f);
        RectF rectF2 = new RectF(rectF);
        float f2 = this.f3651i;
        rectF2.inset(-f2, -f2);
        Path path = this.f3649g;
        if (path == null) {
            this.f3649g = new Path();
        } else {
            path.reset();
        }
        this.f3649g.setFillType(Path.FillType.EVEN_ODD);
        this.f3649g.moveTo(-this.f3648f, 0.0f);
        this.f3649g.rLineTo(-this.f3651i, 0.0f);
        this.f3649g.arcTo(rectF2, 180.0f, 90.0f, false);
        this.f3649g.arcTo(rectF, 270.0f, -90.0f, false);
        this.f3649g.close();
        float f3 = this.f3648f;
        float f4 = f3 / (this.f3651i + f3);
        Paint paint = this.f3645c;
        float f5 = this.f3648f;
        float f6 = this.f3651i;
        int i = this.f3655m;
        paint.setShader(new RadialGradient(0.0f, 0.0f, f5 + f6, new int[]{i, i, this.f3656n}, new float[]{0.0f, f4, 1.0f}, Shader.TileMode.CLAMP));
        Paint paint2 = this.f3646d;
        float f7 = this.f3648f;
        float f8 = -f7;
        float f9 = this.f3651i;
        float f10 = -f7;
        int i2 = this.f3655m;
        paint2.setShader(new LinearGradient(0.0f, f8 + f9, 0.0f, f10 - f9, new int[]{i2, i2, this.f3656n}, new float[]{0.0f, 0.5f, 1.0f}, Shader.TileMode.CLAMP));
        this.f3646d.setAntiAlias(false);
    }

    /* renamed from: a */
    public void m36092a(float f) {
        if (f >= 0.0f) {
            float f2 = (int) (f + 0.5f);
            if (this.f3648f != f2) {
                this.f3648f = f2;
                this.f3654l = true;
                invalidateSelf();
                return;
            }
            return;
        }
        throw new IllegalArgumentException("Invalid radius " + f + ". Must be >= 0");
    }

    /* renamed from: a */
    public final void m36091a(float f, float f2) {
        if (f < 0.0f) {
            throw new IllegalArgumentException("Invalid shadow size " + f + ". Must be >= 0");
        } else if (f2 >= 0.0f) {
            float d = m36077d(f);
            float d2 = m36077d(f2);
            float f3 = d;
            if (d > d2) {
                if (!this.f3658p) {
                    this.f3658p = true;
                }
                f3 = d2;
            }
            if (this.f3652j != f3 || this.f3650h != d2) {
                this.f3652j = f3;
                this.f3650h = d2;
                this.f3651i = (int) ((f3 * 1.5f) + this.f3643a + 0.5f);
                this.f3654l = true;
                invalidateSelf();
            }
        } else {
            throw new IllegalArgumentException("Invalid max shadow size " + f2 + ". Must be >= 0");
        }
    }

    /* renamed from: a */
    public final void m36089a(ColorStateList colorStateList) {
        ColorStateList colorStateList2 = colorStateList;
        if (colorStateList == null) {
            colorStateList2 = ColorStateList.valueOf(0);
        }
        this.f3653k = colorStateList2;
        this.f3644b.setColor(colorStateList2.getColorForState(getState(), this.f3653k.getDefaultColor()));
    }

    /* renamed from: a */
    public final void m36088a(Canvas canvas) {
        float f = this.f3648f;
        float f2 = (-f) - this.f3651i;
        float f3 = f + this.f3643a + (this.f3652j / 2.0f);
        float f4 = f3 * 2.0f;
        boolean z = this.f3647e.width() - f4 > 0.0f;
        boolean z2 = this.f3647e.height() - f4 > 0.0f;
        int save = canvas.save();
        RectF rectF = this.f3647e;
        canvas.translate(rectF.left + f3, rectF.top + f3);
        canvas.drawPath(this.f3649g, this.f3645c);
        if (z) {
            canvas.drawRect(0.0f, f2, this.f3647e.width() - f4, -this.f3648f, this.f3646d);
        }
        canvas.restoreToCount(save);
        int save2 = canvas.save();
        RectF rectF2 = this.f3647e;
        canvas.translate(rectF2.right - f3, rectF2.bottom - f3);
        canvas.rotate(180.0f);
        canvas.drawPath(this.f3649g, this.f3645c);
        if (z) {
            canvas.drawRect(0.0f, f2, this.f3647e.width() - f4, (-this.f3648f) + this.f3651i, this.f3646d);
        }
        canvas.restoreToCount(save2);
        int save3 = canvas.save();
        RectF rectF3 = this.f3647e;
        canvas.translate(rectF3.left + f3, rectF3.bottom - f3);
        canvas.rotate(270.0f);
        canvas.drawPath(this.f3649g, this.f3645c);
        if (z2) {
            canvas.drawRect(0.0f, f2, this.f3647e.height() - f4, -this.f3648f, this.f3646d);
        }
        canvas.restoreToCount(save3);
        int save4 = canvas.save();
        RectF rectF4 = this.f3647e;
        canvas.translate(rectF4.right - f3, rectF4.top + f3);
        canvas.rotate(90.0f);
        canvas.drawPath(this.f3649g, this.f3645c);
        if (z2) {
            canvas.drawRect(0.0f, f2, this.f3647e.height() - f4, -this.f3648f, this.f3646d);
        }
        canvas.restoreToCount(save4);
    }

    /* renamed from: a */
    public final void m36087a(Rect rect) {
        float f = this.f3650h;
        float f2 = 1.5f * f;
        this.f3647e.set(rect.left + f, rect.top + f2, rect.right - f, rect.bottom - f2);
        m36093a();
    }

    /* renamed from: a */
    public void m36086a(boolean z) {
        this.f3657o = z;
        invalidateSelf();
    }

    /* renamed from: b */
    public ColorStateList m36085b() {
        return this.f3653k;
    }

    /* renamed from: b */
    public void m36084b(float f) {
        m36091a(this.f3652j, f);
    }

    /* renamed from: b */
    public void m36082b(ColorStateList colorStateList) {
        m36089a(colorStateList);
        invalidateSelf();
    }

    /* renamed from: b */
    public void m36081b(Rect rect) {
        getPadding(rect);
    }

    /* renamed from: c */
    public float m36080c() {
        return this.f3648f;
    }

    /* renamed from: c */
    public void m36079c(float f) {
        m36091a(f, this.f3650h);
    }

    /* renamed from: d */
    public float m36078d() {
        return this.f3650h;
    }

    /* renamed from: d */
    public final int m36077d(float f) {
        int i = (int) (f + 0.5f);
        int i2 = i;
        if (i % 2 == 1) {
            i2 = i - 1;
        }
        return i2;
    }

    @Override // android.graphics.drawable.Drawable
    public void draw(Canvas canvas) {
        if (this.f3654l) {
            m36087a(getBounds());
            this.f3654l = false;
        }
        canvas.translate(0.0f, this.f3652j / 2.0f);
        m36088a(canvas);
        canvas.translate(0.0f, (-this.f3652j) / 2.0f);
        f3642r.mo36073a(canvas, this.f3647e, this.f3648f, this.f3644b);
    }

    /* renamed from: e */
    public float m36076e() {
        float f = this.f3650h;
        return (Math.max(f, this.f3648f + this.f3643a + ((f * 1.5f) / 2.0f)) * 2.0f) + (((this.f3650h * 1.5f) + this.f3643a) * 2.0f);
    }

    /* renamed from: f */
    public float m36075f() {
        float f = this.f3650h;
        return (Math.max(f, this.f3648f + this.f3643a + (f / 2.0f)) * 2.0f) + ((this.f3650h + this.f3643a) * 2.0f);
    }

    /* renamed from: g */
    public float m36074g() {
        return this.f3652j;
    }

    @Override // android.graphics.drawable.Drawable
    public int getOpacity() {
        return -3;
    }

    @Override // android.graphics.drawable.Drawable
    public boolean getPadding(Rect rect) {
        int ceil = (int) Math.ceil(m36083b(this.f3650h, this.f3648f, this.f3657o));
        int ceil2 = (int) Math.ceil(m36090a(this.f3650h, this.f3648f, this.f3657o));
        rect.set(ceil2, ceil, ceil2, ceil);
        return true;
    }

    @Override // android.graphics.drawable.Drawable
    public boolean isStateful() {
        ColorStateList colorStateList = this.f3653k;
        return (colorStateList != null && colorStateList.isStateful()) || super.isStateful();
    }

    @Override // android.graphics.drawable.Drawable
    public void onBoundsChange(Rect rect) {
        super.onBoundsChange(rect);
        this.f3654l = true;
    }

    @Override // android.graphics.drawable.Drawable
    public boolean onStateChange(int[] iArr) {
        ColorStateList colorStateList = this.f3653k;
        int colorForState = colorStateList.getColorForState(iArr, colorStateList.getDefaultColor());
        if (this.f3644b.getColor() == colorForState) {
            return false;
        }
        this.f3644b.setColor(colorForState);
        this.f3654l = true;
        invalidateSelf();
        return true;
    }

    @Override // android.graphics.drawable.Drawable
    public void setAlpha(int i) {
        this.f3644b.setAlpha(i);
        this.f3645c.setAlpha(i);
        this.f3646d.setAlpha(i);
    }

    @Override // android.graphics.drawable.Drawable
    public void setColorFilter(ColorFilter colorFilter) {
        this.f3644b.setColorFilter(colorFilter);
    }
}

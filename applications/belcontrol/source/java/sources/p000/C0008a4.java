package p000;

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
/* renamed from: a4 */
/* loaded from: classes-dex2jar.jar:a4.class */
public class C0008a4 extends Drawable {

    /* renamed from: q */
    public static final double f38q = Math.cos(Math.toRadians(45.0d));

    /* renamed from: r */
    public static AbstractC0009a f39r;

    /* renamed from: a */
    public final int f40a;

    /* renamed from: c */
    public Paint f42c;

    /* renamed from: d */
    public Paint f43d;

    /* renamed from: f */
    public float f45f;

    /* renamed from: g */
    public Path f46g;

    /* renamed from: h */
    public float f47h;

    /* renamed from: i */
    public float f48i;

    /* renamed from: j */
    public float f49j;

    /* renamed from: k */
    public ColorStateList f50k;

    /* renamed from: m */
    public final int f52m;

    /* renamed from: n */
    public final int f53n;

    /* renamed from: l */
    public boolean f51l = true;

    /* renamed from: o */
    public boolean f54o = true;

    /* renamed from: p */
    public boolean f55p = false;

    /* renamed from: b */
    public Paint f41b = new Paint(5);

    /* renamed from: e */
    public final RectF f44e = new RectF();

    /* renamed from: a4$a */
    /* loaded from: classes-dex2jar.jar:a4$a.class */
    public interface AbstractC0009a {
        /* renamed from: a */
        void m7387a(Canvas canvas, RectF rectF, float f, Paint paint);
    }

    public C0008a4(Resources resources, ColorStateList colorStateList, float f, float f2, float f3) {
        this.f52m = resources.getColor(q3.cardview_shadow_start_color);
        this.f53n = resources.getColor(q3.cardview_shadow_end_color);
        this.f40a = resources.getDimensionPixelSize(r3.cardview_compat_inset_shadow);
        m7394n(colorStateList);
        Paint paint = new Paint(5);
        this.f42c = paint;
        paint.setStyle(Paint.Style.FILL);
        this.f45f = (int) (f + 0.5f);
        Paint paint2 = new Paint(this.f42c);
        this.f43d = paint2;
        paint2.setAntiAlias(false);
        m7389s(f2, f3);
    }

    /* renamed from: c */
    public static float m7405c(float f, float f2, boolean z) {
        float f3 = f;
        if (z) {
            f3 = (float) (f + ((1.0d - f38q) * f2));
        }
        return f3;
    }

    /* renamed from: d */
    public static float m7404d(float f, float f2, boolean z) {
        float f3 = f * 1.5f;
        float f4 = f3;
        if (z) {
            f4 = (float) (f3 + ((1.0d - f38q) * f2));
        }
        return f4;
    }

    /* renamed from: a */
    public final void m7407a(Rect rect) {
        float f = this.f47h;
        float f2 = 1.5f * f;
        this.f44e.set(rect.left + f, rect.top + f2, rect.right - f, rect.bottom - f2);
        m7406b();
    }

    /* renamed from: b */
    public final void m7406b() {
        float f = this.f45f;
        RectF rectF = new RectF(-f, -f, f, f);
        RectF rectF2 = new RectF(rectF);
        float f2 = this.f48i;
        rectF2.inset(-f2, -f2);
        Path path = this.f46g;
        if (path == null) {
            this.f46g = new Path();
        } else {
            path.reset();
        }
        this.f46g.setFillType(Path.FillType.EVEN_ODD);
        this.f46g.moveTo(-this.f45f, 0.0f);
        this.f46g.rLineTo(-this.f48i, 0.0f);
        this.f46g.arcTo(rectF2, 180.0f, 90.0f, false);
        this.f46g.arcTo(rectF, 270.0f, -90.0f, false);
        this.f46g.close();
        float f3 = this.f45f;
        float f4 = f3 / (this.f48i + f3);
        Paint paint = this.f42c;
        float f5 = this.f45f;
        float f6 = this.f48i;
        int i = this.f52m;
        paint.setShader(new RadialGradient(0.0f, 0.0f, f5 + f6, new int[]{i, i, this.f53n}, new float[]{0.0f, f4, 1.0f}, Shader.TileMode.CLAMP));
        Paint paint2 = this.f43d;
        float f7 = this.f45f;
        float f8 = -f7;
        float f9 = this.f48i;
        float f10 = -f7;
        int i2 = this.f52m;
        paint2.setShader(new LinearGradient(0.0f, f8 + f9, 0.0f, f10 - f9, new int[]{i2, i2, this.f53n}, new float[]{0.0f, 0.5f, 1.0f}, Shader.TileMode.CLAMP));
        this.f43d.setAntiAlias(false);
    }

    @Override // android.graphics.drawable.Drawable
    public void draw(Canvas canvas) {
        if (this.f51l) {
            m7407a(getBounds());
            this.f51l = false;
        }
        canvas.translate(0.0f, this.f49j / 2.0f);
        m7403e(canvas);
        canvas.translate(0.0f, (-this.f49j) / 2.0f);
        f39r.m7387a(canvas, this.f44e, this.f45f, this.f41b);
    }

    /* renamed from: e */
    public final void m7403e(Canvas canvas) {
        float f = this.f45f;
        float f2 = (-f) - this.f48i;
        float f3 = f + this.f40a + (this.f49j / 2.0f);
        float f4 = f3 * 2.0f;
        boolean z = this.f44e.width() - f4 > 0.0f;
        boolean z2 = this.f44e.height() - f4 > 0.0f;
        int save = canvas.save();
        RectF rectF = this.f44e;
        canvas.translate(rectF.left + f3, rectF.top + f3);
        canvas.drawPath(this.f46g, this.f42c);
        if (z) {
            canvas.drawRect(0.0f, f2, this.f44e.width() - f4, -this.f45f, this.f43d);
        }
        canvas.restoreToCount(save);
        int save2 = canvas.save();
        RectF rectF2 = this.f44e;
        canvas.translate(rectF2.right - f3, rectF2.bottom - f3);
        canvas.rotate(180.0f);
        canvas.drawPath(this.f46g, this.f42c);
        if (z) {
            canvas.drawRect(0.0f, f2, this.f44e.width() - f4, (-this.f45f) + this.f48i, this.f43d);
        }
        canvas.restoreToCount(save2);
        int save3 = canvas.save();
        RectF rectF3 = this.f44e;
        canvas.translate(rectF3.left + f3, rectF3.bottom - f3);
        canvas.rotate(270.0f);
        canvas.drawPath(this.f46g, this.f42c);
        if (z2) {
            canvas.drawRect(0.0f, f2, this.f44e.height() - f4, -this.f45f, this.f43d);
        }
        canvas.restoreToCount(save3);
        int save4 = canvas.save();
        RectF rectF4 = this.f44e;
        canvas.translate(rectF4.right - f3, rectF4.top + f3);
        canvas.rotate(90.0f);
        canvas.drawPath(this.f46g, this.f42c);
        if (z2) {
            canvas.drawRect(0.0f, f2, this.f44e.height() - f4, -this.f45f, this.f43d);
        }
        canvas.restoreToCount(save4);
    }

    /* renamed from: f */
    public ColorStateList m7402f() {
        return this.f50k;
    }

    /* renamed from: g */
    public float m7401g() {
        return this.f45f;
    }

    @Override // android.graphics.drawable.Drawable
    public int getOpacity() {
        return -3;
    }

    @Override // android.graphics.drawable.Drawable
    public boolean getPadding(Rect rect) {
        int ceil = (int) Math.ceil(m7404d(this.f47h, this.f45f, this.f54o));
        int ceil2 = (int) Math.ceil(m7405c(this.f47h, this.f45f, this.f54o));
        rect.set(ceil2, ceil, ceil2, ceil);
        return true;
    }

    /* renamed from: h */
    public void m7400h(Rect rect) {
        getPadding(rect);
    }

    /* renamed from: i */
    public float m7399i() {
        return this.f47h;
    }

    @Override // android.graphics.drawable.Drawable
    public boolean isStateful() {
        ColorStateList colorStateList = this.f50k;
        return (colorStateList != null && colorStateList.isStateful()) || super.isStateful();
    }

    /* renamed from: j */
    public float m7398j() {
        float f = this.f47h;
        return (Math.max(f, this.f45f + this.f40a + ((f * 1.5f) / 2.0f)) * 2.0f) + (((this.f47h * 1.5f) + this.f40a) * 2.0f);
    }

    /* renamed from: k */
    public float m7397k() {
        float f = this.f47h;
        return (Math.max(f, this.f45f + this.f40a + (f / 2.0f)) * 2.0f) + ((this.f47h + this.f40a) * 2.0f);
    }

    /* renamed from: l */
    public float m7396l() {
        return this.f49j;
    }

    /* renamed from: m */
    public void m7395m(boolean z) {
        this.f54o = z;
        invalidateSelf();
    }

    /* renamed from: n */
    public final void m7394n(ColorStateList colorStateList) {
        ColorStateList colorStateList2 = colorStateList;
        if (colorStateList == null) {
            colorStateList2 = ColorStateList.valueOf(0);
        }
        this.f50k = colorStateList2;
        this.f41b.setColor(colorStateList2.getColorForState(getState(), this.f50k.getDefaultColor()));
    }

    /* renamed from: o */
    public void m7393o(ColorStateList colorStateList) {
        m7394n(colorStateList);
        invalidateSelf();
    }

    @Override // android.graphics.drawable.Drawable
    public void onBoundsChange(Rect rect) {
        super.onBoundsChange(rect);
        this.f51l = true;
    }

    @Override // android.graphics.drawable.Drawable
    public boolean onStateChange(int[] iArr) {
        ColorStateList colorStateList = this.f50k;
        int colorForState = colorStateList.getColorForState(iArr, colorStateList.getDefaultColor());
        if (this.f41b.getColor() == colorForState) {
            return false;
        }
        this.f41b.setColor(colorForState);
        this.f51l = true;
        invalidateSelf();
        return true;
    }

    /* renamed from: p */
    public void m7392p(float f) {
        if (f < 0.0f) {
            throw new IllegalArgumentException("Invalid radius " + f + ". Must be >= 0");
        }
        float f2 = (int) (f + 0.5f);
        if (this.f45f == f2) {
            return;
        }
        this.f45f = f2;
        this.f51l = true;
        invalidateSelf();
    }

    /* renamed from: q */
    public void m7391q(float f) {
        m7389s(this.f49j, f);
    }

    /* renamed from: r */
    public void m7390r(float f) {
        m7389s(f, this.f47h);
    }

    /* renamed from: s */
    public final void m7389s(float f, float f2) {
        if (f < 0.0f) {
            throw new IllegalArgumentException("Invalid shadow size " + f + ". Must be >= 0");
        } else if (f2 < 0.0f) {
            throw new IllegalArgumentException("Invalid max shadow size " + f2 + ". Must be >= 0");
        } else {
            float m7388t = m7388t(f);
            float m7388t2 = m7388t(f2);
            float f3 = m7388t;
            if (m7388t > m7388t2) {
                if (!this.f55p) {
                    this.f55p = true;
                }
                f3 = m7388t2;
            }
            if (this.f49j == f3 && this.f47h == m7388t2) {
                return;
            }
            this.f49j = f3;
            this.f47h = m7388t2;
            this.f48i = (int) ((f3 * 1.5f) + this.f40a + 0.5f);
            this.f51l = true;
            invalidateSelf();
        }
    }

    @Override // android.graphics.drawable.Drawable
    public void setAlpha(int i) {
        this.f41b.setAlpha(i);
        this.f42c.setAlpha(i);
        this.f43d.setAlpha(i);
    }

    @Override // android.graphics.drawable.Drawable
    public void setColorFilter(ColorFilter colorFilter) {
        this.f41b.setColorFilter(colorFilter);
    }

    /* renamed from: t */
    public final int m7388t(float f) {
        int i = (int) (f + 0.5f);
        int i2 = i;
        if (i % 2 == 1) {
            i2 = i - 1;
        }
        return i2;
    }
}

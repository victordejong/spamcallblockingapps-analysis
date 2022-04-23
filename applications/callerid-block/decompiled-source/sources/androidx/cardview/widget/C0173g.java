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
import d.d.b;
import d.d.c;
/* renamed from: androidx.cardview.widget.g */
/* loaded from: classes-dex2jar.jar:androidx/cardview/widget/g.class */
class C0173g extends Drawable {

    /* renamed from: q */
    private static final double f783q = Math.cos(Math.toRadians(45.0d));

    /* renamed from: r */
    static AbstractC0174a f784r;

    /* renamed from: a */
    private final int f785a;

    /* renamed from: c */
    private Paint f787c;

    /* renamed from: d */
    private Paint f788d;

    /* renamed from: f */
    private float f790f;

    /* renamed from: g */
    private Path f791g;

    /* renamed from: h */
    private float f792h;

    /* renamed from: i */
    private float f793i;

    /* renamed from: j */
    private float f794j;

    /* renamed from: k */
    private ColorStateList f795k;

    /* renamed from: m */
    private final int f797m;

    /* renamed from: n */
    private final int f798n;

    /* renamed from: l */
    private boolean f796l = true;

    /* renamed from: o */
    private boolean f799o = true;

    /* renamed from: p */
    private boolean f800p = false;

    /* renamed from: b */
    private Paint f786b = new Paint(5);

    /* renamed from: e */
    private final RectF f789e = new RectF();

    /* renamed from: androidx.cardview.widget.g$a */
    /* loaded from: classes-dex2jar.jar:androidx/cardview/widget/g$a.class */
    interface AbstractC0174a {
        /* renamed from: a */
        void m14323a(Canvas canvas, RectF rectF, float f, Paint paint);
    }

    C0173g(Resources resources, ColorStateList colorStateList, float f, float f2, float f3) {
        this.f797m = resources.getColor(b.cardview_shadow_start_color);
        this.f798n = resources.getColor(b.cardview_shadow_end_color);
        this.f785a = resources.getDimensionPixelSize(c.cardview_compat_inset_shadow);
        m14330n(colorStateList);
        Paint paint = new Paint(5);
        this.f787c = paint;
        paint.setStyle(Paint.Style.FILL);
        this.f790f = (int) (f + 0.5f);
        Paint paint2 = new Paint(this.f787c);
        this.f788d = paint2;
        paint2.setAntiAlias(false);
        m14325s(f2, f3);
    }

    /* renamed from: a */
    private void m14343a(Rect rect) {
        float f = this.f792h;
        float f2 = 1.5f * f;
        this.f789e.set(rect.left + f, rect.top + f2, rect.right - f, rect.bottom - f2);
        m14342b();
    }

    /* renamed from: b */
    private void m14342b() {
        float f = this.f790f;
        RectF rectF = new RectF(-f, -f, f, f);
        RectF rectF2 = new RectF(rectF);
        float f2 = this.f793i;
        rectF2.inset(-f2, -f2);
        Path path = this.f791g;
        if (path == null) {
            this.f791g = new Path();
        } else {
            path.reset();
        }
        this.f791g.setFillType(Path.FillType.EVEN_ODD);
        this.f791g.moveTo(-this.f790f, 0.0f);
        this.f791g.rLineTo(-this.f793i, 0.0f);
        this.f791g.arcTo(rectF2, 180.0f, 90.0f, false);
        this.f791g.arcTo(rectF, 270.0f, -90.0f, false);
        this.f791g.close();
        float f3 = this.f790f;
        float f4 = f3 / (this.f793i + f3);
        Paint paint = this.f787c;
        float f5 = this.f790f;
        float f6 = this.f793i;
        int i = this.f797m;
        paint.setShader(new RadialGradient(0.0f, 0.0f, f5 + f6, new int[]{i, i, this.f798n}, new float[]{0.0f, f4, 1.0f}, Shader.TileMode.CLAMP));
        Paint paint2 = this.f788d;
        float f7 = this.f790f;
        float f8 = -f7;
        float f9 = this.f793i;
        float f10 = -f7;
        int i2 = this.f797m;
        paint2.setShader(new LinearGradient(0.0f, f8 + f9, 0.0f, f10 - f9, new int[]{i2, i2, this.f798n}, new float[]{0.0f, 0.5f, 1.0f}, Shader.TileMode.CLAMP));
        this.f788d.setAntiAlias(false);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: c */
    public static float m14341c(float f, float f2, boolean z) {
        float f3 = f;
        if (z) {
            double d = f;
            double d2 = f783q;
            double d3 = f2;
            Double.isNaN(d3);
            Double.isNaN(d);
            f3 = (float) (d + ((1.0d - d2) * d3));
        }
        return f3;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: d */
    public static float m14340d(float f, float f2, boolean z) {
        float f3 = f * 1.5f;
        float f4 = f3;
        if (z) {
            double d = f3;
            double d2 = f783q;
            double d3 = f2;
            Double.isNaN(d3);
            Double.isNaN(d);
            f4 = (float) (d + ((1.0d - d2) * d3));
        }
        return f4;
    }

    /* renamed from: e */
    private void m14339e(Canvas canvas) {
        float f = this.f790f;
        float f2 = (-f) - this.f793i;
        float f3 = f + this.f785a + (this.f794j / 2.0f);
        float f4 = f3 * 2.0f;
        boolean z = this.f789e.width() - f4 > 0.0f;
        boolean z2 = this.f789e.height() - f4 > 0.0f;
        int save = canvas.save();
        RectF rectF = this.f789e;
        canvas.translate(rectF.left + f3, rectF.top + f3);
        canvas.drawPath(this.f791g, this.f787c);
        if (z) {
            canvas.drawRect(0.0f, f2, this.f789e.width() - f4, -this.f790f, this.f788d);
        }
        canvas.restoreToCount(save);
        int save2 = canvas.save();
        RectF rectF2 = this.f789e;
        canvas.translate(rectF2.right - f3, rectF2.bottom - f3);
        canvas.rotate(180.0f);
        canvas.drawPath(this.f791g, this.f787c);
        if (z) {
            canvas.drawRect(0.0f, f2, this.f789e.width() - f4, (-this.f790f) + this.f793i, this.f788d);
        }
        canvas.restoreToCount(save2);
        int save3 = canvas.save();
        RectF rectF3 = this.f789e;
        canvas.translate(rectF3.left + f3, rectF3.bottom - f3);
        canvas.rotate(270.0f);
        canvas.drawPath(this.f791g, this.f787c);
        if (z2) {
            canvas.drawRect(0.0f, f2, this.f789e.height() - f4, -this.f790f, this.f788d);
        }
        canvas.restoreToCount(save3);
        int save4 = canvas.save();
        RectF rectF4 = this.f789e;
        canvas.translate(rectF4.right - f3, rectF4.top + f3);
        canvas.rotate(90.0f);
        canvas.drawPath(this.f791g, this.f787c);
        if (z2) {
            canvas.drawRect(0.0f, f2, this.f789e.height() - f4, -this.f790f, this.f788d);
        }
        canvas.restoreToCount(save4);
    }

    /* renamed from: n */
    private void m14330n(ColorStateList colorStateList) {
        ColorStateList colorStateList2 = colorStateList;
        if (colorStateList == null) {
            colorStateList2 = ColorStateList.valueOf(0);
        }
        this.f795k = colorStateList2;
        this.f786b.setColor(colorStateList2.getColorForState(getState(), this.f795k.getDefaultColor()));
    }

    /* renamed from: s */
    private void m14325s(float f, float f2) {
        if (f < 0.0f) {
            throw new IllegalArgumentException("Invalid shadow size " + f + ". Must be >= 0");
        } else if (f2 >= 0.0f) {
            float t = m14324t(f);
            float t2 = m14324t(f2);
            float f3 = t;
            if (t > t2) {
                if (!this.f800p) {
                    this.f800p = true;
                }
                f3 = t2;
            }
            if (this.f794j != f3 || this.f792h != t2) {
                this.f794j = f3;
                this.f792h = t2;
                this.f793i = (int) ((f3 * 1.5f) + this.f785a + 0.5f);
                this.f796l = true;
                invalidateSelf();
            }
        } else {
            throw new IllegalArgumentException("Invalid max shadow size " + f2 + ". Must be >= 0");
        }
    }

    /* renamed from: t */
    private int m14324t(float f) {
        int i = (int) (f + 0.5f);
        int i2 = i;
        if (i % 2 == 1) {
            i2 = i - 1;
        }
        return i2;
    }

    @Override // android.graphics.drawable.Drawable
    public void draw(Canvas canvas) {
        if (this.f796l) {
            m14343a(getBounds());
            this.f796l = false;
        }
        canvas.translate(0.0f, this.f794j / 2.0f);
        m14339e(canvas);
        canvas.translate(0.0f, (-this.f794j) / 2.0f);
        f784r.m14323a(canvas, this.f789e, this.f790f, this.f786b);
    }

    /* renamed from: f */
    ColorStateList m14338f() {
        return this.f795k;
    }

    /* renamed from: g */
    float m14337g() {
        return this.f790f;
    }

    @Override // android.graphics.drawable.Drawable
    public int getOpacity() {
        return -3;
    }

    @Override // android.graphics.drawable.Drawable
    public boolean getPadding(Rect rect) {
        int ceil = (int) Math.ceil(m14340d(this.f792h, this.f790f, this.f799o));
        int ceil2 = (int) Math.ceil(m14341c(this.f792h, this.f790f, this.f799o));
        rect.set(ceil2, ceil, ceil2, ceil);
        return true;
    }

    /* renamed from: h */
    void m14336h(Rect rect) {
        getPadding(rect);
    }

    /* renamed from: i */
    float m14335i() {
        return this.f792h;
    }

    @Override // android.graphics.drawable.Drawable
    public boolean isStateful() {
        ColorStateList colorStateList = this.f795k;
        return (colorStateList != null && colorStateList.isStateful()) || super.isStateful();
    }

    /* renamed from: j */
    float m14334j() {
        float f = this.f792h;
        return (Math.max(f, this.f790f + this.f785a + ((f * 1.5f) / 2.0f)) * 2.0f) + (((this.f792h * 1.5f) + this.f785a) * 2.0f);
    }

    /* renamed from: k */
    float m14333k() {
        float f = this.f792h;
        return (Math.max(f, this.f790f + this.f785a + (f / 2.0f)) * 2.0f) + ((this.f792h + this.f785a) * 2.0f);
    }

    /* renamed from: l */
    float m14332l() {
        return this.f794j;
    }

    /* renamed from: m */
    void m14331m(boolean z) {
        this.f799o = z;
        invalidateSelf();
    }

    /* renamed from: o */
    void m14329o(ColorStateList colorStateList) {
        m14330n(colorStateList);
        invalidateSelf();
    }

    @Override // android.graphics.drawable.Drawable
    protected void onBoundsChange(Rect rect) {
        super.onBoundsChange(rect);
        this.f796l = true;
    }

    @Override // android.graphics.drawable.Drawable
    protected boolean onStateChange(int[] iArr) {
        ColorStateList colorStateList = this.f795k;
        int colorForState = colorStateList.getColorForState(iArr, colorStateList.getDefaultColor());
        if (this.f786b.getColor() == colorForState) {
            return false;
        }
        this.f786b.setColor(colorForState);
        this.f796l = true;
        invalidateSelf();
        return true;
    }

    /* renamed from: p */
    void m14328p(float f) {
        if (f >= 0.0f) {
            float f2 = (int) (f + 0.5f);
            if (this.f790f != f2) {
                this.f790f = f2;
                this.f796l = true;
                invalidateSelf();
                return;
            }
            return;
        }
        throw new IllegalArgumentException("Invalid radius " + f + ". Must be >= 0");
    }

    /* renamed from: q */
    void m14327q(float f) {
        m14325s(this.f794j, f);
    }

    /* renamed from: r */
    void m14326r(float f) {
        m14325s(f, this.f792h);
    }

    @Override // android.graphics.drawable.Drawable
    public void setAlpha(int i) {
        this.f786b.setAlpha(i);
        this.f787c.setAlpha(i);
        this.f788d.setAlpha(i);
    }

    @Override // android.graphics.drawable.Drawable
    public void setColorFilter(ColorFilter colorFilter) {
        this.f786b.setColorFilter(colorFilter);
    }
}

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
import androidx.cardview.C0493a;
import com.google.android.gms.maps.model.BitmapDescriptorFactory;
/* renamed from: androidx.cardview.widget.g */
/* loaded from: classes-dex2jar.jar:androidx/cardview/widget/g.class */
final class C0508g extends Drawable {

    /* renamed from: a */
    static AbstractC0509a f1890a;

    /* renamed from: g */
    private static final double f1891g = Math.cos(Math.toRadians(45.0d));

    /* renamed from: b */
    float f1892b;

    /* renamed from: c */
    float f1893c;

    /* renamed from: d */
    float f1894d;

    /* renamed from: e */
    ColorStateList f1895e;

    /* renamed from: h */
    private final int f1897h;

    /* renamed from: j */
    private Paint f1899j;

    /* renamed from: k */
    private Paint f1900k;

    /* renamed from: m */
    private Path f1902m;

    /* renamed from: n */
    private float f1903n;

    /* renamed from: o */
    private final int f1904o;

    /* renamed from: p */
    private final int f1905p;

    /* renamed from: f */
    boolean f1896f = true;

    /* renamed from: q */
    private boolean f1906q = true;

    /* renamed from: r */
    private boolean f1907r = false;

    /* renamed from: i */
    private Paint f1898i = new Paint(5);

    /* renamed from: l */
    private final RectF f1901l = new RectF();

    /* renamed from: androidx.cardview.widget.g$a */
    /* loaded from: classes-dex2jar.jar:androidx/cardview/widget/g$a.class */
    interface AbstractC0509a {
        /* renamed from: a */
        void mo45372a(Canvas canvas, RectF rectF, float f, Paint paint);
    }

    public C0508g(Resources resources, ColorStateList colorStateList, float f, float f2, float f3) {
        this.f1904o = resources.getColor(C0493a.C0495b.cardview_shadow_start_color);
        this.f1905p = resources.getColor(C0493a.C0495b.cardview_shadow_end_color);
        this.f1897h = resources.getDimensionPixelSize(C0493a.C0496c.cardview_compat_inset_shadow);
        m45376a(colorStateList);
        Paint paint = new Paint(5);
        this.f1899j = paint;
        paint.setStyle(Paint.Style.FILL);
        this.f1892b = (int) (f + 0.5f);
        Paint paint2 = new Paint(this.f1899j);
        this.f1900k = paint2;
        paint2.setAntiAlias(false);
        m45378a(f2, f3);
    }

    /* renamed from: a */
    public static float m45377a(float f, float f2, boolean z) {
        return z ? (float) ((f * 1.5f) + ((1.0d - f1891g) * f2)) : f * 1.5f;
    }

    /* renamed from: a */
    private static int m45379a(float f) {
        int i = (int) (f + 0.5f);
        int i2 = i;
        if (i % 2 == 1) {
            i2 = i - 1;
        }
        return i2;
    }

    /* renamed from: b */
    public static float m45373b(float f, float f2, boolean z) {
        float f3 = f;
        if (z) {
            f3 = (float) (f + ((1.0d - f1891g) * f2));
        }
        return f3;
    }

    /* renamed from: a */
    public final float m45380a() {
        float f = this.f1893c;
        return (Math.max(f, this.f1892b + this.f1897h + (f / 2.0f)) * 2.0f) + ((this.f1893c + this.f1897h) * 2.0f);
    }

    /* renamed from: a */
    public final void m45378a(float f, float f2) {
        if (f < BitmapDescriptorFactory.HUE_RED) {
            throw new IllegalArgumentException("Invalid shadow size " + f + ". Must be >= 0");
        } else if (f2 < BitmapDescriptorFactory.HUE_RED) {
            throw new IllegalArgumentException("Invalid max shadow size " + f2 + ". Must be >= 0");
        } else {
            float m45379a = m45379a(f);
            float m45379a2 = m45379a(f2);
            float f3 = m45379a;
            if (m45379a > m45379a2) {
                if (!this.f1907r) {
                    this.f1907r = true;
                }
                f3 = m45379a2;
            }
            if (this.f1894d == f3 && this.f1893c == m45379a2) {
                return;
            }
            this.f1894d = f3;
            this.f1893c = m45379a2;
            this.f1903n = (int) ((f3 * 1.5f) + this.f1897h + 0.5f);
            this.f1896f = true;
            invalidateSelf();
        }
    }

    /* renamed from: a */
    public final void m45376a(ColorStateList colorStateList) {
        ColorStateList colorStateList2 = colorStateList;
        if (colorStateList == null) {
            colorStateList2 = ColorStateList.valueOf(0);
        }
        this.f1895e = colorStateList2;
        this.f1898i.setColor(colorStateList2.getColorForState(getState(), this.f1895e.getDefaultColor()));
    }

    /* renamed from: a */
    public final void m45375a(boolean z) {
        this.f1906q = z;
        invalidateSelf();
    }

    /* renamed from: b */
    public final float m45374b() {
        float f = this.f1893c;
        return (Math.max(f, this.f1892b + this.f1897h + ((f * 1.5f) / 2.0f)) * 2.0f) + (((this.f1893c * 1.5f) + this.f1897h) * 2.0f);
    }

    @Override // android.graphics.drawable.Drawable
    public final void draw(Canvas canvas) {
        if (this.f1896f) {
            Rect bounds = getBounds();
            float f = this.f1893c * 1.5f;
            this.f1901l.set(bounds.left + this.f1893c, bounds.top + f, bounds.right - this.f1893c, bounds.bottom - f);
            float f2 = this.f1892b;
            RectF rectF = new RectF(-f2, -f2, f2, f2);
            RectF rectF2 = new RectF(rectF);
            float f3 = this.f1903n;
            rectF2.inset(-f3, -f3);
            Path path = this.f1902m;
            if (path == null) {
                this.f1902m = new Path();
            } else {
                path.reset();
            }
            this.f1902m.setFillType(Path.FillType.EVEN_ODD);
            this.f1902m.moveTo(-this.f1892b, BitmapDescriptorFactory.HUE_RED);
            this.f1902m.rLineTo(-this.f1903n, BitmapDescriptorFactory.HUE_RED);
            this.f1902m.arcTo(rectF2, 180.0f, 90.0f, false);
            this.f1902m.arcTo(rectF, 270.0f, -90.0f, false);
            this.f1902m.close();
            float f4 = this.f1892b;
            float f5 = f4 / (this.f1903n + f4);
            Paint paint = this.f1899j;
            float f6 = this.f1892b;
            float f7 = this.f1903n;
            int i = this.f1904o;
            paint.setShader(new RadialGradient((float) BitmapDescriptorFactory.HUE_RED, (float) BitmapDescriptorFactory.HUE_RED, f6 + f7, new int[]{i, i, this.f1905p}, new float[]{BitmapDescriptorFactory.HUE_RED, f5, 1.0f}, Shader.TileMode.CLAMP));
            Paint paint2 = this.f1900k;
            float f8 = this.f1892b;
            float f9 = -f8;
            float f10 = this.f1903n;
            float f11 = -f8;
            int i2 = this.f1904o;
            paint2.setShader(new LinearGradient((float) BitmapDescriptorFactory.HUE_RED, f9 + f10, (float) BitmapDescriptorFactory.HUE_RED, f11 - f10, new int[]{i2, i2, this.f1905p}, new float[]{BitmapDescriptorFactory.HUE_RED, 0.5f, 1.0f}, Shader.TileMode.CLAMP));
            this.f1900k.setAntiAlias(false);
            this.f1896f = false;
        }
        canvas.translate(BitmapDescriptorFactory.HUE_RED, this.f1894d / 2.0f);
        float f12 = this.f1892b;
        float f13 = (-f12) - this.f1903n;
        float f14 = f12 + this.f1897h + (this.f1894d / 2.0f);
        float f15 = f14 * 2.0f;
        boolean z = this.f1901l.width() - f15 > BitmapDescriptorFactory.HUE_RED;
        boolean z2 = this.f1901l.height() - f15 > BitmapDescriptorFactory.HUE_RED;
        int save = canvas.save();
        canvas.translate(this.f1901l.left + f14, this.f1901l.top + f14);
        canvas.drawPath(this.f1902m, this.f1899j);
        if (z) {
            canvas.drawRect(BitmapDescriptorFactory.HUE_RED, f13, this.f1901l.width() - f15, -this.f1892b, this.f1900k);
        }
        canvas.restoreToCount(save);
        int save2 = canvas.save();
        canvas.translate(this.f1901l.right - f14, this.f1901l.bottom - f14);
        canvas.rotate(180.0f);
        canvas.drawPath(this.f1902m, this.f1899j);
        if (z) {
            canvas.drawRect(BitmapDescriptorFactory.HUE_RED, f13, this.f1901l.width() - f15, (-this.f1892b) + this.f1903n, this.f1900k);
        }
        canvas.restoreToCount(save2);
        int save3 = canvas.save();
        canvas.translate(this.f1901l.left + f14, this.f1901l.bottom - f14);
        canvas.rotate(270.0f);
        canvas.drawPath(this.f1902m, this.f1899j);
        if (z2) {
            canvas.drawRect(BitmapDescriptorFactory.HUE_RED, f13, this.f1901l.height() - f15, -this.f1892b, this.f1900k);
        }
        canvas.restoreToCount(save3);
        int save4 = canvas.save();
        canvas.translate(this.f1901l.right - f14, this.f1901l.top + f14);
        canvas.rotate(90.0f);
        canvas.drawPath(this.f1902m, this.f1899j);
        if (z2) {
            canvas.drawRect(BitmapDescriptorFactory.HUE_RED, f13, this.f1901l.height() - f15, -this.f1892b, this.f1900k);
        }
        canvas.restoreToCount(save4);
        canvas.translate(BitmapDescriptorFactory.HUE_RED, (-this.f1894d) / 2.0f);
        f1890a.mo45372a(canvas, this.f1901l, this.f1892b, this.f1898i);
    }

    @Override // android.graphics.drawable.Drawable
    public final int getOpacity() {
        return -3;
    }

    @Override // android.graphics.drawable.Drawable
    public final boolean getPadding(Rect rect) {
        int ceil = (int) Math.ceil(m45377a(this.f1893c, this.f1892b, this.f1906q));
        int ceil2 = (int) Math.ceil(m45373b(this.f1893c, this.f1892b, this.f1906q));
        rect.set(ceil2, ceil, ceil2, ceil);
        return true;
    }

    @Override // android.graphics.drawable.Drawable
    public final boolean isStateful() {
        ColorStateList colorStateList = this.f1895e;
        return (colorStateList != null && colorStateList.isStateful()) || super.isStateful();
    }

    @Override // android.graphics.drawable.Drawable
    protected final void onBoundsChange(Rect rect) {
        super.onBoundsChange(rect);
        this.f1896f = true;
    }

    @Override // android.graphics.drawable.Drawable
    protected final boolean onStateChange(int[] iArr) {
        ColorStateList colorStateList = this.f1895e;
        int colorForState = colorStateList.getColorForState(iArr, colorStateList.getDefaultColor());
        if (this.f1898i.getColor() == colorForState) {
            return false;
        }
        this.f1898i.setColor(colorForState);
        this.f1896f = true;
        invalidateSelf();
        return true;
    }

    @Override // android.graphics.drawable.Drawable
    public final void setAlpha(int i) {
        this.f1898i.setAlpha(i);
        this.f1899j.setAlpha(i);
        this.f1900k.setAlpha(i);
    }

    @Override // android.graphics.drawable.Drawable
    public final void setColorFilter(ColorFilter colorFilter) {
        this.f1898i.setColorFilter(colorFilter);
    }
}

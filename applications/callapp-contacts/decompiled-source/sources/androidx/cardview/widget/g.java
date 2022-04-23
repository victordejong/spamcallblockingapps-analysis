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
import androidx.cardview.a;
import com.google.android.gms.maps.model.BitmapDescriptorFactory;
/* loaded from: classes-dex2jar.jar:androidx/cardview/widget/g.class */
final class g extends Drawable {

    /* renamed from: a  reason: collision with root package name */
    static a f1305a;
    private static final double g = Math.cos(Math.toRadians(45.0d));

    /* renamed from: b  reason: collision with root package name */
    float f1306b;

    /* renamed from: c  reason: collision with root package name */
    float f1307c;

    /* renamed from: d  reason: collision with root package name */
    float f1308d;
    ColorStateList e;
    private final int h;
    private Paint j;
    private Paint k;
    private Path m;
    private float n;
    private final int o;
    private final int p;
    boolean f = true;
    private boolean q = true;
    private boolean r = false;
    private Paint i = new Paint(5);
    private final RectF l = new RectF();

    /* loaded from: classes-dex2jar.jar:androidx/cardview/widget/g$a.class */
    interface a {
        void a(Canvas canvas, RectF rectF, float f, Paint paint);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public g(Resources resources, ColorStateList colorStateList, float f, float f2, float f3) {
        this.o = resources.getColor(a.b.cardview_shadow_start_color);
        this.p = resources.getColor(a.b.cardview_shadow_end_color);
        this.h = resources.getDimensionPixelSize(a.c.cardview_compat_inset_shadow);
        a(colorStateList);
        Paint paint = new Paint(5);
        this.j = paint;
        paint.setStyle(Paint.Style.FILL);
        this.f1306b = (int) (f + 0.5f);
        Paint paint2 = new Paint(this.j);
        this.k = paint2;
        paint2.setAntiAlias(false);
        a(f2, f3);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static float a(float f, float f2, boolean z) {
        return z ? (float) ((f * 1.5f) + ((1.0d - g) * f2)) : f * 1.5f;
    }

    private static int a(float f) {
        int i = (int) (f + 0.5f);
        int i2 = i;
        if (i % 2 == 1) {
            i2 = i - 1;
        }
        return i2;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static float b(float f, float f2, boolean z) {
        float f3 = f;
        if (z) {
            f3 = (float) (f + ((1.0d - g) * f2));
        }
        return f3;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final float a() {
        float f = this.f1307c;
        return (Math.max(f, this.f1306b + this.h + (f / 2.0f)) * 2.0f) + ((this.f1307c + this.h) * 2.0f);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final void a(float f, float f2) {
        if (f < BitmapDescriptorFactory.HUE_RED) {
            throw new IllegalArgumentException("Invalid shadow size " + f + ". Must be >= 0");
        } else if (f2 >= BitmapDescriptorFactory.HUE_RED) {
            float a2 = a(f);
            float a3 = a(f2);
            float f3 = a2;
            if (a2 > a3) {
                if (!this.r) {
                    this.r = true;
                }
                f3 = a3;
            }
            if (this.f1308d != f3 || this.f1307c != a3) {
                this.f1308d = f3;
                this.f1307c = a3;
                this.n = (int) ((f3 * 1.5f) + this.h + 0.5f);
                this.f = true;
                invalidateSelf();
            }
        } else {
            throw new IllegalArgumentException("Invalid max shadow size " + f2 + ". Must be >= 0");
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final void a(ColorStateList colorStateList) {
        ColorStateList colorStateList2 = colorStateList;
        if (colorStateList == null) {
            colorStateList2 = ColorStateList.valueOf(0);
        }
        this.e = colorStateList2;
        this.i.setColor(colorStateList2.getColorForState(getState(), this.e.getDefaultColor()));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final void a(boolean z) {
        this.q = z;
        invalidateSelf();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final float b() {
        float f = this.f1307c;
        return (Math.max(f, this.f1306b + this.h + ((f * 1.5f) / 2.0f)) * 2.0f) + (((this.f1307c * 1.5f) + this.h) * 2.0f);
    }

    @Override // android.graphics.drawable.Drawable
    public final void draw(Canvas canvas) {
        if (this.f) {
            Rect bounds = getBounds();
            float f = this.f1307c * 1.5f;
            this.l.set(bounds.left + this.f1307c, bounds.top + f, bounds.right - this.f1307c, bounds.bottom - f);
            float f2 = this.f1306b;
            RectF rectF = new RectF(-f2, -f2, f2, f2);
            RectF rectF2 = new RectF(rectF);
            float f3 = this.n;
            rectF2.inset(-f3, -f3);
            Path path = this.m;
            if (path == null) {
                this.m = new Path();
            } else {
                path.reset();
            }
            this.m.setFillType(Path.FillType.EVEN_ODD);
            this.m.moveTo(-this.f1306b, BitmapDescriptorFactory.HUE_RED);
            this.m.rLineTo(-this.n, BitmapDescriptorFactory.HUE_RED);
            this.m.arcTo(rectF2, 180.0f, 90.0f, false);
            this.m.arcTo(rectF, 270.0f, -90.0f, false);
            this.m.close();
            float f4 = this.f1306b;
            float f5 = f4 / (this.n + f4);
            Paint paint = this.j;
            float f6 = this.f1306b;
            float f7 = this.n;
            int i = this.o;
            paint.setShader(new RadialGradient((float) BitmapDescriptorFactory.HUE_RED, (float) BitmapDescriptorFactory.HUE_RED, f6 + f7, new int[]{i, i, this.p}, new float[]{BitmapDescriptorFactory.HUE_RED, f5, 1.0f}, Shader.TileMode.CLAMP));
            Paint paint2 = this.k;
            float f8 = this.f1306b;
            float f9 = -f8;
            float f10 = this.n;
            float f11 = -f8;
            int i2 = this.o;
            paint2.setShader(new LinearGradient((float) BitmapDescriptorFactory.HUE_RED, f9 + f10, (float) BitmapDescriptorFactory.HUE_RED, f11 - f10, new int[]{i2, i2, this.p}, new float[]{BitmapDescriptorFactory.HUE_RED, 0.5f, 1.0f}, Shader.TileMode.CLAMP));
            this.k.setAntiAlias(false);
            this.f = false;
        }
        canvas.translate(BitmapDescriptorFactory.HUE_RED, this.f1308d / 2.0f);
        float f12 = this.f1306b;
        float f13 = (-f12) - this.n;
        float f14 = f12 + this.h + (this.f1308d / 2.0f);
        float f15 = f14 * 2.0f;
        boolean z = this.l.width() - f15 > BitmapDescriptorFactory.HUE_RED;
        boolean z2 = this.l.height() - f15 > BitmapDescriptorFactory.HUE_RED;
        int save = canvas.save();
        canvas.translate(this.l.left + f14, this.l.top + f14);
        canvas.drawPath(this.m, this.j);
        if (z) {
            canvas.drawRect(BitmapDescriptorFactory.HUE_RED, f13, this.l.width() - f15, -this.f1306b, this.k);
        }
        canvas.restoreToCount(save);
        int save2 = canvas.save();
        canvas.translate(this.l.right - f14, this.l.bottom - f14);
        canvas.rotate(180.0f);
        canvas.drawPath(this.m, this.j);
        if (z) {
            canvas.drawRect(BitmapDescriptorFactory.HUE_RED, f13, this.l.width() - f15, (-this.f1306b) + this.n, this.k);
        }
        canvas.restoreToCount(save2);
        int save3 = canvas.save();
        canvas.translate(this.l.left + f14, this.l.bottom - f14);
        canvas.rotate(270.0f);
        canvas.drawPath(this.m, this.j);
        if (z2) {
            canvas.drawRect(BitmapDescriptorFactory.HUE_RED, f13, this.l.height() - f15, -this.f1306b, this.k);
        }
        canvas.restoreToCount(save3);
        int save4 = canvas.save();
        canvas.translate(this.l.right - f14, this.l.top + f14);
        canvas.rotate(90.0f);
        canvas.drawPath(this.m, this.j);
        if (z2) {
            canvas.drawRect(BitmapDescriptorFactory.HUE_RED, f13, this.l.height() - f15, -this.f1306b, this.k);
        }
        canvas.restoreToCount(save4);
        canvas.translate(BitmapDescriptorFactory.HUE_RED, (-this.f1308d) / 2.0f);
        f1305a.a(canvas, this.l, this.f1306b, this.i);
    }

    @Override // android.graphics.drawable.Drawable
    public final int getOpacity() {
        return -3;
    }

    @Override // android.graphics.drawable.Drawable
    public final boolean getPadding(Rect rect) {
        int ceil = (int) Math.ceil(a(this.f1307c, this.f1306b, this.q));
        int ceil2 = (int) Math.ceil(b(this.f1307c, this.f1306b, this.q));
        rect.set(ceil2, ceil, ceil2, ceil);
        return true;
    }

    @Override // android.graphics.drawable.Drawable
    public final boolean isStateful() {
        ColorStateList colorStateList = this.e;
        return (colorStateList != null && colorStateList.isStateful()) || super.isStateful();
    }

    @Override // android.graphics.drawable.Drawable
    protected final void onBoundsChange(Rect rect) {
        super.onBoundsChange(rect);
        this.f = true;
    }

    @Override // android.graphics.drawable.Drawable
    protected final boolean onStateChange(int[] iArr) {
        ColorStateList colorStateList = this.e;
        int colorForState = colorStateList.getColorForState(iArr, colorStateList.getDefaultColor());
        if (this.i.getColor() == colorForState) {
            return false;
        }
        this.i.setColor(colorForState);
        this.f = true;
        invalidateSelf();
        return true;
    }

    @Override // android.graphics.drawable.Drawable
    public final void setAlpha(int i) {
        this.i.setAlpha(i);
        this.j.setAlpha(i);
        this.k.setAlpha(i);
    }

    @Override // android.graphics.drawable.Drawable
    public final void setColorFilter(ColorFilter colorFilter) {
        this.i.setColorFilter(colorFilter);
    }
}

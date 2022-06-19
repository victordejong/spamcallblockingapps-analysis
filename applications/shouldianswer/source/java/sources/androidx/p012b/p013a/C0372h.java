package androidx.p012b.p013a;

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
import androidx.p012b.C0356a;
import com.google.android.flexbox.FlexItem;
/* renamed from: androidx.b.a.h */
/* loaded from: classes-dex2jar.jar:androidx/b/a/h.class */
class C0372h extends Drawable {

    /* renamed from: a */
    static AbstractC0373a f1454a;

    /* renamed from: b */
    private static final double f1455b = Math.cos(Math.toRadians(45.0d));

    /* renamed from: c */
    private final int f1456c;

    /* renamed from: h */
    private float f1461h;

    /* renamed from: i */
    private Path f1462i;

    /* renamed from: j */
    private float f1463j;

    /* renamed from: k */
    private float f1464k;

    /* renamed from: l */
    private float f1465l;

    /* renamed from: m */
    private ColorStateList f1466m;

    /* renamed from: o */
    private final int f1468o;

    /* renamed from: p */
    private final int f1469p;

    /* renamed from: n */
    private boolean f1467n = true;

    /* renamed from: q */
    private boolean f1470q = true;

    /* renamed from: r */
    private boolean f1471r = false;

    /* renamed from: d */
    private Paint f1457d = new Paint(5);

    /* renamed from: e */
    private Paint f1458e = new Paint(5);

    /* renamed from: g */
    private final RectF f1460g = new RectF();

    /* renamed from: f */
    private Paint f1459f = new Paint(this.f1458e);

    /* renamed from: androidx.b.a.h$a */
    /* loaded from: classes-dex2jar.jar:androidx/b/a/h$a.class */
    interface AbstractC0373a {
        /* renamed from: a */
        void mo6872a(Canvas canvas, RectF rectF, float f, Paint paint);
    }

    public C0372h(Resources resources, ColorStateList colorStateList, float f, float f2, float f3) {
        this.f1468o = resources.getColor(C0356a.C0358b.cardview_shadow_start_color);
        this.f1469p = resources.getColor(C0356a.C0358b.cardview_shadow_end_color);
        this.f1456c = resources.getDimensionPixelSize(C0356a.C0359c.cardview_compat_inset_shadow);
        m6881b(colorStateList);
        this.f1458e.setStyle(Paint.Style.FILL);
        this.f1461h = (int) (f + 0.5f);
        this.f1459f.setAntiAlias(false);
        m6890a(f2, f3);
    }

    /* renamed from: a */
    public static float m6889a(float f, float f2, boolean z) {
        return z ? (float) ((f * 1.5f) + ((1.0d - f1455b) * f2)) : f * 1.5f;
    }

    /* renamed from: a */
    private void m6890a(float f, float f2) {
        if (f < FlexItem.FLEX_GROW_DEFAULT) {
            throw new IllegalArgumentException("Invalid shadow size " + f + ". Must be >= 0");
        } else if (f2 < FlexItem.FLEX_GROW_DEFAULT) {
            throw new IllegalArgumentException("Invalid max shadow size " + f2 + ". Must be >= 0");
        } else {
            float m6876d = m6876d(f);
            float m6876d2 = m6876d(f2);
            float f3 = m6876d;
            if (m6876d > m6876d2) {
                if (!this.f1471r) {
                    this.f1471r = true;
                }
                f3 = m6876d2;
            }
            if (this.f1465l == f3 && this.f1463j == m6876d2) {
                return;
            }
            this.f1465l = f3;
            this.f1463j = m6876d2;
            this.f1464k = (int) ((f3 * 1.5f) + this.f1456c + 0.5f);
            this.f1467n = true;
            invalidateSelf();
        }
    }

    /* renamed from: a */
    private void m6887a(Canvas canvas) {
        float f = this.f1461h;
        float f2 = (-f) - this.f1464k;
        float f3 = f + this.f1456c + (this.f1465l / 2.0f);
        float f4 = f3 * 2.0f;
        boolean z = this.f1460g.width() - f4 > FlexItem.FLEX_GROW_DEFAULT;
        boolean z2 = this.f1460g.height() - f4 > FlexItem.FLEX_GROW_DEFAULT;
        int save = canvas.save();
        canvas.translate(this.f1460g.left + f3, this.f1460g.top + f3);
        canvas.drawPath(this.f1462i, this.f1458e);
        if (z) {
            canvas.drawRect(FlexItem.FLEX_GROW_DEFAULT, f2, this.f1460g.width() - f4, -this.f1461h, this.f1459f);
        }
        canvas.restoreToCount(save);
        int save2 = canvas.save();
        canvas.translate(this.f1460g.right - f3, this.f1460g.bottom - f3);
        canvas.rotate(180.0f);
        canvas.drawPath(this.f1462i, this.f1458e);
        if (z) {
            canvas.drawRect(FlexItem.FLEX_GROW_DEFAULT, f2, this.f1460g.width() - f4, (-this.f1461h) + this.f1464k, this.f1459f);
        }
        canvas.restoreToCount(save2);
        int save3 = canvas.save();
        canvas.translate(this.f1460g.left + f3, this.f1460g.bottom - f3);
        canvas.rotate(270.0f);
        canvas.drawPath(this.f1462i, this.f1458e);
        if (z2) {
            canvas.drawRect(FlexItem.FLEX_GROW_DEFAULT, f2, this.f1460g.height() - f4, -this.f1461h, this.f1459f);
        }
        canvas.restoreToCount(save3);
        int save4 = canvas.save();
        canvas.translate(this.f1460g.right - f3, this.f1460g.top + f3);
        canvas.rotate(90.0f);
        canvas.drawPath(this.f1462i, this.f1458e);
        if (z2) {
            canvas.drawRect(FlexItem.FLEX_GROW_DEFAULT, f2, this.f1460g.height() - f4, -this.f1461h, this.f1459f);
        }
        canvas.restoreToCount(save4);
    }

    /* renamed from: b */
    public static float m6882b(float f, float f2, boolean z) {
        float f3 = f;
        if (z) {
            f3 = (float) (f + ((1.0d - f1455b) * f2));
        }
        return f3;
    }

    /* renamed from: b */
    private void m6881b(ColorStateList colorStateList) {
        ColorStateList colorStateList2 = colorStateList;
        if (colorStateList == null) {
            colorStateList2 = ColorStateList.valueOf(0);
        }
        this.f1466m = colorStateList2;
        this.f1457d.setColor(this.f1466m.getColorForState(getState(), this.f1466m.getDefaultColor()));
    }

    /* renamed from: b */
    private void m6880b(Rect rect) {
        float f = this.f1463j * 1.5f;
        this.f1460g.set(rect.left + this.f1463j, rect.top + f, rect.right - this.f1463j, rect.bottom - f);
        m6873g();
    }

    /* renamed from: d */
    private int m6876d(float f) {
        int i = (int) (f + 0.5f);
        int i2 = i;
        if (i % 2 == 1) {
            i2 = i - 1;
        }
        return i2;
    }

    /* renamed from: g */
    private void m6873g() {
        float f = this.f1461h;
        RectF rectF = new RectF(-f, -f, f, f);
        RectF rectF2 = new RectF(rectF);
        float f2 = this.f1464k;
        rectF2.inset(-f2, -f2);
        Path path = this.f1462i;
        if (path == null) {
            this.f1462i = new Path();
        } else {
            path.reset();
        }
        this.f1462i.setFillType(Path.FillType.EVEN_ODD);
        this.f1462i.moveTo(-this.f1461h, FlexItem.FLEX_GROW_DEFAULT);
        this.f1462i.rLineTo(-this.f1464k, FlexItem.FLEX_GROW_DEFAULT);
        this.f1462i.arcTo(rectF2, 180.0f, 90.0f, false);
        this.f1462i.arcTo(rectF, 270.0f, -90.0f, false);
        this.f1462i.close();
        float f3 = this.f1461h;
        float f4 = this.f1464k;
        float f5 = f3 / (f3 + f4);
        Paint paint = this.f1458e;
        int i = this.f1468o;
        int i2 = this.f1469p;
        paint.setShader(new RadialGradient((float) FlexItem.FLEX_GROW_DEFAULT, (float) FlexItem.FLEX_GROW_DEFAULT, f3 + f4, new int[]{i, i, i2}, new float[]{FlexItem.FLEX_GROW_DEFAULT, f5, 1.0f}, Shader.TileMode.CLAMP));
        Paint paint2 = this.f1459f;
        float f6 = this.f1461h;
        float f7 = -f6;
        float f8 = this.f1464k;
        float f9 = -f6;
        int i3 = this.f1468o;
        int i4 = this.f1469p;
        paint2.setShader(new LinearGradient((float) FlexItem.FLEX_GROW_DEFAULT, f7 + f8, (float) FlexItem.FLEX_GROW_DEFAULT, f9 - f8, new int[]{i3, i3, i4}, new float[]{FlexItem.FLEX_GROW_DEFAULT, 0.5f, 1.0f}, Shader.TileMode.CLAMP));
        this.f1459f.setAntiAlias(false);
    }

    /* renamed from: a */
    public float m6892a() {
        return this.f1461h;
    }

    /* renamed from: a */
    public void m6891a(float f) {
        if (f < FlexItem.FLEX_GROW_DEFAULT) {
            throw new IllegalArgumentException("Invalid radius " + f + ". Must be >= 0");
        }
        float f2 = (int) (f + 0.5f);
        if (this.f1461h == f2) {
            return;
        }
        this.f1461h = f2;
        this.f1467n = true;
        invalidateSelf();
    }

    /* renamed from: a */
    public void m6888a(ColorStateList colorStateList) {
        m6881b(colorStateList);
        invalidateSelf();
    }

    /* renamed from: a */
    public void m6886a(Rect rect) {
        getPadding(rect);
    }

    /* renamed from: a */
    public void m6885a(boolean z) {
        this.f1470q = z;
        invalidateSelf();
    }

    /* renamed from: b */
    public float m6884b() {
        return this.f1465l;
    }

    /* renamed from: b */
    public void m6883b(float f) {
        m6890a(f, this.f1463j);
    }

    /* renamed from: c */
    public float m6879c() {
        return this.f1463j;
    }

    /* renamed from: c */
    public void m6878c(float f) {
        m6890a(this.f1465l, f);
    }

    /* renamed from: d */
    public float m6877d() {
        float f = this.f1463j;
        return (Math.max(f, this.f1461h + this.f1456c + (f / 2.0f)) * 2.0f) + ((this.f1463j + this.f1456c) * 2.0f);
    }

    @Override // android.graphics.drawable.Drawable
    public void draw(Canvas canvas) {
        if (this.f1467n) {
            m6880b(getBounds());
            this.f1467n = false;
        }
        canvas.translate(FlexItem.FLEX_GROW_DEFAULT, this.f1465l / 2.0f);
        m6887a(canvas);
        canvas.translate(FlexItem.FLEX_GROW_DEFAULT, (-this.f1465l) / 2.0f);
        f1454a.mo6872a(canvas, this.f1460g, this.f1461h, this.f1457d);
    }

    /* renamed from: e */
    public float m6875e() {
        float f = this.f1463j;
        return (Math.max(f, this.f1461h + this.f1456c + ((f * 1.5f) / 2.0f)) * 2.0f) + (((this.f1463j * 1.5f) + this.f1456c) * 2.0f);
    }

    /* renamed from: f */
    public ColorStateList m6874f() {
        return this.f1466m;
    }

    @Override // android.graphics.drawable.Drawable
    public int getOpacity() {
        return -3;
    }

    @Override // android.graphics.drawable.Drawable
    public boolean getPadding(Rect rect) {
        int ceil = (int) Math.ceil(m6889a(this.f1463j, this.f1461h, this.f1470q));
        int ceil2 = (int) Math.ceil(m6882b(this.f1463j, this.f1461h, this.f1470q));
        rect.set(ceil2, ceil, ceil2, ceil);
        return true;
    }

    @Override // android.graphics.drawable.Drawable
    public boolean isStateful() {
        ColorStateList colorStateList = this.f1466m;
        return (colorStateList != null && colorStateList.isStateful()) || super.isStateful();
    }

    @Override // android.graphics.drawable.Drawable
    protected void onBoundsChange(Rect rect) {
        super.onBoundsChange(rect);
        this.f1467n = true;
    }

    @Override // android.graphics.drawable.Drawable
    protected boolean onStateChange(int[] iArr) {
        ColorStateList colorStateList = this.f1466m;
        int colorForState = colorStateList.getColorForState(iArr, colorStateList.getDefaultColor());
        if (this.f1457d.getColor() == colorForState) {
            return false;
        }
        this.f1457d.setColor(colorForState);
        this.f1467n = true;
        invalidateSelf();
        return true;
    }

    @Override // android.graphics.drawable.Drawable
    public void setAlpha(int i) {
        this.f1457d.setAlpha(i);
        this.f1458e.setAlpha(i);
        this.f1459f.setAlpha(i);
    }

    @Override // android.graphics.drawable.Drawable
    public void setColorFilter(ColorFilter colorFilter) {
        this.f1457d.setColorFilter(colorFilter);
    }
}

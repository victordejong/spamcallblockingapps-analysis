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
import androidx.annotation.Nullable;
import androidx.cardview.C0146R;
/* loaded from: classes-dex2jar.jar:androidx/cardview/widget/RoundRectDrawableWithShadow.class */
class RoundRectDrawableWithShadow extends Drawable {

    /* renamed from: q */
    private static final double f1518q = Math.cos(Math.toRadians(45.0d));

    /* renamed from: r */
    static RoundRectHelper f1519r;

    /* renamed from: a */
    private final int f1520a;

    /* renamed from: c */
    private Paint f1522c;

    /* renamed from: d */
    private Paint f1523d;

    /* renamed from: f */
    private float f1525f;

    /* renamed from: g */
    private Path f1526g;

    /* renamed from: h */
    private float f1527h;

    /* renamed from: i */
    private float f1528i;

    /* renamed from: j */
    private float f1529j;

    /* renamed from: k */
    private ColorStateList f1530k;

    /* renamed from: m */
    private final int f1532m;

    /* renamed from: n */
    private final int f1533n;

    /* renamed from: l */
    private boolean f1531l = true;

    /* renamed from: o */
    private boolean f1534o = true;

    /* renamed from: p */
    private boolean f1535p = false;

    /* renamed from: b */
    private Paint f1521b = new Paint(5);

    /* renamed from: e */
    private final RectF f1524e = new RectF();

    /* loaded from: classes-dex2jar.jar:androidx/cardview/widget/RoundRectDrawableWithShadow$RoundRectHelper.class */
    interface RoundRectHelper {
        /* renamed from: a */
        void mo21066a(Canvas canvas, RectF rectF, float f, Paint paint);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public RoundRectDrawableWithShadow(Resources resources, ColorStateList colorStateList, float f, float f2, float f3) {
        this.f1532m = resources.getColor(C0146R.C0147color.cardview_shadow_start_color);
        this.f1533n = resources.getColor(C0146R.C0147color.cardview_shadow_end_color);
        this.f1520a = resources.getDimensionPixelSize(C0146R.dimen.cardview_compat_inset_shadow);
        m21073n(colorStateList);
        Paint paint = new Paint(5);
        this.f1522c = paint;
        paint.setStyle(Paint.Style.FILL);
        this.f1525f = (int) (f + 0.5f);
        Paint paint2 = new Paint(this.f1522c);
        this.f1523d = paint2;
        paint2.setAntiAlias(false);
        m21068s(f2, f3);
    }

    /* renamed from: a */
    private void m21086a(Rect rect) {
        float f = this.f1527h;
        float f2 = 1.5f * f;
        this.f1524e.set(rect.left + f, rect.top + f2, rect.right - f, rect.bottom - f2);
        m21085b();
    }

    /* renamed from: b */
    private void m21085b() {
        float f = this.f1525f;
        RectF rectF = new RectF(-f, -f, f, f);
        RectF rectF2 = new RectF(rectF);
        float f2 = this.f1528i;
        rectF2.inset(-f2, -f2);
        Path path = this.f1526g;
        if (path == null) {
            this.f1526g = new Path();
        } else {
            path.reset();
        }
        this.f1526g.setFillType(Path.FillType.EVEN_ODD);
        this.f1526g.moveTo(-this.f1525f, 0.0f);
        this.f1526g.rLineTo(-this.f1528i, 0.0f);
        this.f1526g.arcTo(rectF2, 180.0f, 90.0f, false);
        this.f1526g.arcTo(rectF, 270.0f, -90.0f, false);
        this.f1526g.close();
        float f3 = this.f1525f;
        float f4 = f3 / (this.f1528i + f3);
        Paint paint = this.f1522c;
        float f5 = this.f1525f;
        float f6 = this.f1528i;
        int i = this.f1532m;
        paint.setShader(new RadialGradient(0.0f, 0.0f, f5 + f6, new int[]{i, i, this.f1533n}, new float[]{0.0f, f4, 1.0f}, Shader.TileMode.CLAMP));
        Paint paint2 = this.f1523d;
        float f7 = this.f1525f;
        float f8 = -f7;
        float f9 = this.f1528i;
        float f10 = -f7;
        int i2 = this.f1532m;
        paint2.setShader(new LinearGradient(0.0f, f8 + f9, 0.0f, f10 - f9, new int[]{i2, i2, this.f1533n}, new float[]{0.0f, 0.5f, 1.0f}, Shader.TileMode.CLAMP));
        this.f1523d.setAntiAlias(false);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: c */
    public static float m21084c(float f, float f2, boolean z) {
        float f3 = f;
        if (z) {
            f3 = (float) (f + ((1.0d - f1518q) * f2));
        }
        return f3;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: d */
    public static float m21083d(float f, float f2, boolean z) {
        return z ? (float) ((f * 1.5f) + ((1.0d - f1518q) * f2)) : f * 1.5f;
    }

    /* renamed from: e */
    private void m21082e(Canvas canvas) {
        float f = this.f1525f;
        float f2 = (-f) - this.f1528i;
        float f3 = f + this.f1520a + (this.f1529j / 2.0f);
        float f4 = f3 * 2.0f;
        boolean z = this.f1524e.width() - f4 > 0.0f;
        boolean z2 = this.f1524e.height() - f4 > 0.0f;
        int save = canvas.save();
        RectF rectF = this.f1524e;
        canvas.translate(rectF.left + f3, rectF.top + f3);
        canvas.drawPath(this.f1526g, this.f1522c);
        if (z) {
            canvas.drawRect(0.0f, f2, this.f1524e.width() - f4, -this.f1525f, this.f1523d);
        }
        canvas.restoreToCount(save);
        int save2 = canvas.save();
        RectF rectF2 = this.f1524e;
        canvas.translate(rectF2.right - f3, rectF2.bottom - f3);
        canvas.rotate(180.0f);
        canvas.drawPath(this.f1526g, this.f1522c);
        if (z) {
            canvas.drawRect(0.0f, f2, this.f1524e.width() - f4, (-this.f1525f) + this.f1528i, this.f1523d);
        }
        canvas.restoreToCount(save2);
        int save3 = canvas.save();
        RectF rectF3 = this.f1524e;
        canvas.translate(rectF3.left + f3, rectF3.bottom - f3);
        canvas.rotate(270.0f);
        canvas.drawPath(this.f1526g, this.f1522c);
        if (z2) {
            canvas.drawRect(0.0f, f2, this.f1524e.height() - f4, -this.f1525f, this.f1523d);
        }
        canvas.restoreToCount(save3);
        int save4 = canvas.save();
        RectF rectF4 = this.f1524e;
        canvas.translate(rectF4.right - f3, rectF4.top + f3);
        canvas.rotate(90.0f);
        canvas.drawPath(this.f1526g, this.f1522c);
        if (z2) {
            canvas.drawRect(0.0f, f2, this.f1524e.height() - f4, -this.f1525f, this.f1523d);
        }
        canvas.restoreToCount(save4);
    }

    /* renamed from: n */
    private void m21073n(ColorStateList colorStateList) {
        ColorStateList colorStateList2 = colorStateList;
        if (colorStateList == null) {
            colorStateList2 = ColorStateList.valueOf(0);
        }
        this.f1530k = colorStateList2;
        this.f1521b.setColor(colorStateList2.getColorForState(getState(), this.f1530k.getDefaultColor()));
    }

    /* renamed from: s */
    private void m21068s(float f, float f2) {
        if (f < 0.0f) {
            throw new IllegalArgumentException("Invalid shadow size " + f + ". Must be >= 0");
        } else if (f2 >= 0.0f) {
            float t = m21067t(f);
            float t2 = m21067t(f2);
            float f3 = t;
            if (t > t2) {
                if (!this.f1535p) {
                    this.f1535p = true;
                }
                f3 = t2;
            }
            if (this.f1529j != f3 || this.f1527h != t2) {
                this.f1529j = f3;
                this.f1527h = t2;
                this.f1528i = (int) ((f3 * 1.5f) + this.f1520a + 0.5f);
                this.f1531l = true;
                invalidateSelf();
            }
        } else {
            throw new IllegalArgumentException("Invalid max shadow size " + f2 + ". Must be >= 0");
        }
    }

    /* renamed from: t */
    private int m21067t(float f) {
        int i = (int) (f + 0.5f);
        int i2 = i;
        if (i % 2 == 1) {
            i2 = i - 1;
        }
        return i2;
    }

    @Override // android.graphics.drawable.Drawable
    public void draw(Canvas canvas) {
        if (this.f1531l) {
            m21086a(getBounds());
            this.f1531l = false;
        }
        canvas.translate(0.0f, this.f1529j / 2.0f);
        m21082e(canvas);
        canvas.translate(0.0f, (-this.f1529j) / 2.0f);
        f1519r.mo21066a(canvas, this.f1524e, this.f1525f, this.f1521b);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: f */
    public ColorStateList m21081f() {
        return this.f1530k;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: g */
    public float m21080g() {
        return this.f1525f;
    }

    @Override // android.graphics.drawable.Drawable
    public int getOpacity() {
        return -3;
    }

    @Override // android.graphics.drawable.Drawable
    public boolean getPadding(Rect rect) {
        int ceil = (int) Math.ceil(m21083d(this.f1527h, this.f1525f, this.f1534o));
        int ceil2 = (int) Math.ceil(m21084c(this.f1527h, this.f1525f, this.f1534o));
        rect.set(ceil2, ceil, ceil2, ceil);
        return true;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: h */
    public void m21079h(Rect rect) {
        getPadding(rect);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: i */
    public float m21078i() {
        return this.f1527h;
    }

    @Override // android.graphics.drawable.Drawable
    public boolean isStateful() {
        ColorStateList colorStateList = this.f1530k;
        return (colorStateList != null && colorStateList.isStateful()) || super.isStateful();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: j */
    public float m21077j() {
        float f = this.f1527h;
        return (Math.max(f, this.f1525f + this.f1520a + ((f * 1.5f) / 2.0f)) * 2.0f) + (((this.f1527h * 1.5f) + this.f1520a) * 2.0f);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: k */
    public float m21076k() {
        float f = this.f1527h;
        return (Math.max(f, this.f1525f + this.f1520a + (f / 2.0f)) * 2.0f) + ((this.f1527h + this.f1520a) * 2.0f);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: l */
    public float m21075l() {
        return this.f1529j;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: m */
    public void m21074m(boolean z) {
        this.f1534o = z;
        invalidateSelf();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: o */
    public void m21072o(@Nullable ColorStateList colorStateList) {
        m21073n(colorStateList);
        invalidateSelf();
    }

    @Override // android.graphics.drawable.Drawable
    protected void onBoundsChange(Rect rect) {
        super.onBoundsChange(rect);
        this.f1531l = true;
    }

    @Override // android.graphics.drawable.Drawable
    protected boolean onStateChange(int[] iArr) {
        ColorStateList colorStateList = this.f1530k;
        int colorForState = colorStateList.getColorForState(iArr, colorStateList.getDefaultColor());
        if (this.f1521b.getColor() == colorForState) {
            return false;
        }
        this.f1521b.setColor(colorForState);
        this.f1531l = true;
        invalidateSelf();
        return true;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: p */
    public void m21071p(float f) {
        if (f >= 0.0f) {
            float f2 = (int) (f + 0.5f);
            if (this.f1525f != f2) {
                this.f1525f = f2;
                this.f1531l = true;
                invalidateSelf();
                return;
            }
            return;
        }
        throw new IllegalArgumentException("Invalid radius " + f + ". Must be >= 0");
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: q */
    public void m21070q(float f) {
        m21068s(this.f1529j, f);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: r */
    public void m21069r(float f) {
        m21068s(f, this.f1527h);
    }

    @Override // android.graphics.drawable.Drawable
    public void setAlpha(int i) {
        this.f1521b.setAlpha(i);
        this.f1522c.setAlpha(i);
        this.f1523d.setAlpha(i);
    }

    @Override // android.graphics.drawable.Drawable
    public void setColorFilter(ColorFilter colorFilter) {
        this.f1521b.setColorFilter(colorFilter);
    }
}

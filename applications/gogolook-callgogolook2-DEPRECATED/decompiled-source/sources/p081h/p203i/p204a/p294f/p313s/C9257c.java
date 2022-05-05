package p081h.p203i.p204a.p294f.p313s;

import android.content.res.ColorStateList;
import android.graphics.Canvas;
import android.graphics.ColorFilter;
import android.graphics.Matrix;
import android.graphics.Paint;
import android.graphics.Path;
import android.graphics.PointF;
import android.graphics.PorterDuff;
import android.graphics.PorterDuffColorFilter;
import android.graphics.Rect;
import android.graphics.Region;
import android.graphics.drawable.Drawable;
import androidx.annotation.ColorInt;
import androidx.annotation.IntRange;
import androidx.annotation.Nullable;
import androidx.core.graphics.drawable.TintAwareDrawable;
/* renamed from: h.i.a.f.s.c */
/* loaded from: classes2-dex2jar.jar:h/i/a/f/s/c.class */
public class C9257c extends Drawable implements TintAwareDrawable {
    @Nullable

    /* renamed from: m */
    public C9262e f21231m;
    @Nullable

    /* renamed from: x */
    public PorterDuffColorFilter f21242x;

    /* renamed from: a */
    public final Paint f21219a = new Paint();

    /* renamed from: b */
    public final Matrix[] f21220b = new Matrix[4];

    /* renamed from: c */
    public final Matrix[] f21221c = new Matrix[4];

    /* renamed from: d */
    public final C9258d[] f21222d = new C9258d[4];

    /* renamed from: e */
    public final Matrix f21223e = new Matrix();

    /* renamed from: f */
    public final Path f21224f = new Path();

    /* renamed from: g */
    public final PointF f21225g = new PointF();

    /* renamed from: h */
    public final C9258d f21226h = new C9258d();

    /* renamed from: i */
    public final Region f21227i = new Region();

    /* renamed from: j */
    public final Region f21228j = new Region();

    /* renamed from: k */
    public final float[] f21229k = new float[2];

    /* renamed from: l */
    public final float[] f21230l = new float[2];

    /* renamed from: n */
    public boolean f21232n = false;

    /* renamed from: o */
    public boolean f21233o = false;

    /* renamed from: p */
    public float f21234p = 1.0f;

    /* renamed from: q */
    public int f21235q = -16777216;

    /* renamed from: r */
    public int f21236r = 5;

    /* renamed from: s */
    public int f21237s = 10;

    /* renamed from: t */
    public int f21238t = 255;

    /* renamed from: u */
    public float f21239u = 1.0f;

    /* renamed from: v */
    public float f21240v = 0.0f;

    /* renamed from: w */
    public Paint.Style f21241w = Paint.Style.FILL_AND_STROKE;

    /* renamed from: y */
    public PorterDuff.Mode f21243y = PorterDuff.Mode.SRC_IN;

    /* renamed from: z */
    public ColorStateList f21244z = null;

    public C9257c(@Nullable C9262e eVar) {
        this.f21231m = null;
        this.f21231m = eVar;
        for (int i = 0; i < 4; i++) {
            this.f21220b[i] = new Matrix();
            this.f21221c[i] = new Matrix();
            this.f21222d[i] = new C9258d();
        }
    }

    /* renamed from: a */
    public static int m15593a(int i, int i2) {
        return (i * (i2 + (i2 >>> 7))) >>> 8;
    }

    /* renamed from: a */
    public float m15596a() {
        return this.f21234p;
    }

    /* renamed from: a */
    public final float m15592a(int i, int i2, int i3) {
        m15591a(((i - 1) + 4) % 4, i2, i3, this.f21225g);
        PointF pointF = this.f21225g;
        float f = pointF.x;
        float f2 = pointF.y;
        m15591a((i + 1) % 4, i2, i3, pointF);
        PointF pointF2 = this.f21225g;
        float f3 = pointF2.x;
        float f4 = pointF2.y;
        m15591a(i, i2, i3, pointF2);
        PointF pointF3 = this.f21225g;
        float f5 = pointF3.x;
        float f6 = pointF3.y;
        float atan2 = ((float) Math.atan2(f2 - f6, f - f5)) - ((float) Math.atan2(f4 - f6, f3 - f5));
        float f7 = atan2;
        if (atan2 < 0.0f) {
            f7 = (float) (atan2 + 6.283185307179586d);
        }
        return f7;
    }

    /* renamed from: a */
    public final C9255a m15594a(int i) {
        return i != 1 ? i != 2 ? i != 3 ? this.f21231m.m15565g() : this.f21231m.m15570b() : this.f21231m.m15569c() : this.f21231m.m15564h();
    }

    /* renamed from: a */
    public void m15595a(float f) {
        this.f21234p = f;
        invalidateSelf();
    }

    /* renamed from: a */
    public final void m15591a(int i, int i2, int i3, PointF pointF) {
        if (i == 1) {
            pointF.set(i2, 0.0f);
        } else if (i == 2) {
            pointF.set(i2, i3);
        } else if (i != 3) {
            pointF.set(0.0f, 0.0f);
        } else {
            pointF.set(0.0f, i3);
        }
    }

    /* renamed from: a */
    public final void m15590a(int i, int i2, Path path) {
        m15583b(i, i2, path);
        if (this.f21239u != 1.0f) {
            this.f21223e.reset();
            Matrix matrix = this.f21223e;
            float f = this.f21239u;
            matrix.setScale(f, f, i / 2, i2 / 2);
            path.transform(this.f21223e);
        }
    }

    /* renamed from: a */
    public final void m15589a(int i, Path path) {
        float[] fArr = this.f21229k;
        C9258d[] dVarArr = this.f21222d;
        fArr[0] = dVarArr[i].f21245a;
        fArr[1] = dVarArr[i].f21246b;
        this.f21220b[i].mapPoints(fArr);
        if (i == 0) {
            float[] fArr2 = this.f21229k;
            path.moveTo(fArr2[0], fArr2[1]);
        } else {
            float[] fArr3 = this.f21229k;
            path.lineTo(fArr3[0], fArr3[1]);
        }
        this.f21222d[i].m15577a(this.f21220b[i], path);
    }

    /* renamed from: a */
    public void m15588a(Paint.Style style) {
        this.f21241w = style;
        invalidateSelf();
    }

    /* renamed from: a */
    public void m15587a(boolean z) {
        this.f21232n = z;
        invalidateSelf();
    }

    /* renamed from: b */
    public final float m15584b(int i, int i2, int i3) {
        m15591a(i, i2, i3, this.f21225g);
        PointF pointF = this.f21225g;
        float f = pointF.x;
        float f2 = pointF.y;
        m15591a((i + 1) % 4, i2, i3, pointF);
        PointF pointF2 = this.f21225g;
        return (float) Math.atan2(pointF2.y - f2, pointF2.x - f);
    }

    /* renamed from: b */
    public final C9256b m15585b(int i) {
        return i != 1 ? i != 2 ? i != 3 ? this.f21231m.m15566f() : this.f21231m.m15568d() : this.f21231m.m15572a() : this.f21231m.m15567e();
    }

    /* renamed from: b */
    public final void m15586b() {
        ColorStateList colorStateList = this.f21244z;
        if (colorStateList == null || this.f21243y == null) {
            this.f21242x = null;
            return;
        }
        int colorForState = colorStateList.getColorForState(getState(), 0);
        this.f21242x = new PorterDuffColorFilter(colorForState, this.f21243y);
        if (this.f21233o) {
            this.f21235q = colorForState;
        }
    }

    /* renamed from: b */
    public void m15583b(int i, int i2, Path path) {
        path.rewind();
        if (this.f21231m != null) {
            for (int i3 = 0; i3 < 4; i3++) {
                m15581c(i3, i, i2);
                m15580d(i3, i, i2);
            }
            for (int i4 = 0; i4 < 4; i4++) {
                m15589a(i4, path);
                m15582b(i4, path);
            }
            path.close();
        }
    }

    /* renamed from: b */
    public final void m15582b(int i, Path path) {
        int i2 = (i + 1) % 4;
        float[] fArr = this.f21229k;
        C9258d[] dVarArr = this.f21222d;
        fArr[0] = dVarArr[i].f21247c;
        fArr[1] = dVarArr[i].f21248d;
        this.f21220b[i].mapPoints(fArr);
        float[] fArr2 = this.f21230l;
        C9258d[] dVarArr2 = this.f21222d;
        fArr2[0] = dVarArr2[i2].f21245a;
        fArr2[1] = dVarArr2[i2].f21246b;
        this.f21220b[i2].mapPoints(fArr2);
        float[] fArr3 = this.f21229k;
        float f = fArr3[0];
        float[] fArr4 = this.f21230l;
        float hypot = (float) Math.hypot(f - fArr4[0], fArr3[1] - fArr4[1]);
        this.f21226h.m15576b(0.0f, 0.0f);
        m15585b(i).mo15597a(hypot, this.f21234p, this.f21226h);
        this.f21226h.m15577a(this.f21221c[i], path);
    }

    /* renamed from: c */
    public final void m15581c(int i, int i2, int i3) {
        m15591a(i, i2, i3, this.f21225g);
        m15594a(i).m15598a(m15592a(i, i2, i3), this.f21234p, this.f21222d[i]);
        float b = m15584b(((i - 1) + 4) % 4, i2, i3);
        this.f21220b[i].reset();
        Matrix matrix = this.f21220b[i];
        PointF pointF = this.f21225g;
        matrix.setTranslate(pointF.x, pointF.y);
        this.f21220b[i].preRotate((float) Math.toDegrees(b + 1.5707964f));
    }

    /* renamed from: d */
    public final void m15580d(int i, int i2, int i3) {
        float[] fArr = this.f21229k;
        C9258d[] dVarArr = this.f21222d;
        fArr[0] = dVarArr[i].f21247c;
        fArr[1] = dVarArr[i].f21248d;
        this.f21220b[i].mapPoints(fArr);
        float b = m15584b(i, i2, i3);
        this.f21221c[i].reset();
        Matrix matrix = this.f21221c[i];
        float[] fArr2 = this.f21229k;
        matrix.setTranslate(fArr2[0], fArr2[1]);
        this.f21221c[i].preRotate((float) Math.toDegrees(b));
    }

    @Override // android.graphics.drawable.Drawable
    public void draw(Canvas canvas) {
        this.f21219a.setColorFilter(this.f21242x);
        int alpha = this.f21219a.getAlpha();
        this.f21219a.setAlpha(m15593a(alpha, this.f21238t));
        this.f21219a.setStrokeWidth(this.f21240v);
        this.f21219a.setStyle(this.f21241w);
        int i = this.f21236r;
        if (i > 0 && this.f21232n) {
            this.f21219a.setShadowLayer(this.f21237s, 0.0f, i, this.f21235q);
        }
        if (this.f21231m != null) {
            m15590a(canvas.getWidth(), canvas.getHeight(), this.f21224f);
            canvas.drawPath(this.f21224f, this.f21219a);
        } else {
            canvas.drawRect(0.0f, 0.0f, canvas.getWidth(), canvas.getHeight(), this.f21219a);
        }
        this.f21219a.setAlpha(alpha);
    }

    @Override // android.graphics.drawable.Drawable
    public int getOpacity() {
        return -3;
    }

    @Override // android.graphics.drawable.Drawable
    public Region getTransparentRegion() {
        Rect bounds = getBounds();
        this.f21227i.set(bounds);
        m15590a(bounds.width(), bounds.height(), this.f21224f);
        this.f21228j.setPath(this.f21224f, this.f21227i);
        this.f21227i.op(this.f21228j, Region.Op.DIFFERENCE);
        return this.f21227i;
    }

    @Override // android.graphics.drawable.Drawable
    public void setAlpha(@IntRange(from = 0, m37519to = 255) int i) {
        this.f21238t = i;
        invalidateSelf();
    }

    @Override // android.graphics.drawable.Drawable
    public void setColorFilter(@Nullable ColorFilter colorFilter) {
        this.f21219a.setColorFilter(colorFilter);
        invalidateSelf();
    }

    @Override // android.graphics.drawable.Drawable, androidx.core.graphics.drawable.TintAwareDrawable
    public void setTint(@ColorInt int i) {
        setTintList(ColorStateList.valueOf(i));
    }

    @Override // android.graphics.drawable.Drawable, androidx.core.graphics.drawable.TintAwareDrawable
    public void setTintList(ColorStateList colorStateList) {
        this.f21244z = colorStateList;
        m15586b();
        invalidateSelf();
    }

    @Override // android.graphics.drawable.Drawable, androidx.core.graphics.drawable.TintAwareDrawable
    public void setTintMode(PorterDuff.Mode mode) {
        this.f21243y = mode;
        m15586b();
        invalidateSelf();
    }
}

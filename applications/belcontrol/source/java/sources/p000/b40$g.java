package p000;

import android.graphics.Canvas;
import android.graphics.ColorFilter;
import android.graphics.Matrix;
import android.graphics.Paint;
import android.graphics.Path;
import android.graphics.PathMeasure;
import android.graphics.Shader;
import b40;
/* renamed from: b40$g */
/* loaded from: classes-dex2jar.jar:b40$g.class */
public class b40$g {

    /* renamed from: q */
    public static final Matrix f1749q = new Matrix();

    /* renamed from: a */
    public final Path f1750a;

    /* renamed from: b */
    public final Path f1751b;

    /* renamed from: c */
    public final Matrix f1752c;

    /* renamed from: d */
    public Paint f1753d;

    /* renamed from: e */
    public Paint f1754e;

    /* renamed from: f */
    public PathMeasure f1755f;

    /* renamed from: g */
    public int f1756g;

    /* renamed from: h */
    public final b40.d f1757h;

    /* renamed from: i */
    public float f1758i;

    /* renamed from: j */
    public float f1759j;

    /* renamed from: k */
    public float f1760k;

    /* renamed from: l */
    public float f1761l;

    /* renamed from: m */
    public int f1762m;

    /* renamed from: n */
    public String f1763n;

    /* renamed from: o */
    public Boolean f1764o;

    /* renamed from: p */
    public final b4<String, Object> f1765p;

    public b40$g() {
        this.f1752c = new Matrix();
        this.f1758i = 0.0f;
        this.f1759j = 0.0f;
        this.f1760k = 0.0f;
        this.f1761l = 0.0f;
        this.f1762m = 255;
        this.f1763n = null;
        this.f1764o = null;
        this.f1765p = new b4<>();
        this.f1757h = new b40.d();
        this.f1750a = new Path();
        this.f1751b = new Path();
    }

    public b40$g(b40$g b40_g) {
        this.f1752c = new Matrix();
        this.f1758i = 0.0f;
        this.f1759j = 0.0f;
        this.f1760k = 0.0f;
        this.f1761l = 0.0f;
        this.f1762m = 255;
        this.f1763n = null;
        this.f1764o = null;
        b4<String, Object> b4Var = new b4<>();
        this.f1765p = b4Var;
        this.f1757h = new b40.d(b40_g.f1757h, b4Var);
        this.f1750a = new Path(b40_g.f1750a);
        this.f1751b = new Path(b40_g.f1751b);
        this.f1758i = b40_g.f1758i;
        this.f1759j = b40_g.f1759j;
        this.f1760k = b40_g.f1760k;
        this.f1761l = b40_g.f1761l;
        this.f1756g = b40_g.f1756g;
        this.f1762m = b40_g.f1762m;
        this.f1763n = b40_g.f1763n;
        String str = b40_g.f1763n;
        if (str != null) {
            b4Var.put(str, this);
        }
        this.f1764o = b40_g.f1764o;
    }

    /* renamed from: a */
    public static float m5809a(float f, float f2, float f3, float f4) {
        return (f * f4) - (f2 * f3);
    }

    /* renamed from: b */
    public void m5808b(Canvas canvas, int i, int i2, ColorFilter colorFilter) {
        m5807c(this.f1757h, f1749q, canvas, i, i2, colorFilter);
    }

    /* renamed from: c */
    public final void m5807c(b40.d dVar, Matrix matrix, Canvas canvas, int i, int i2, ColorFilter colorFilter) {
        dVar.a.set(matrix);
        dVar.a.preConcat(dVar.j);
        canvas.save();
        for (int i3 = 0; i3 < dVar.b.size(); i3++) {
            b40$e b40_e = (b40$e) dVar.b.get(i3);
            if (b40_e instanceof b40.d) {
                m5807c((b40.d) b40_e, dVar.a, canvas, i, i2, colorFilter);
            } else if (b40_e instanceof b40.f) {
                m5806d(dVar, (b40.f) b40_e, canvas, i, i2, colorFilter);
            }
        }
        canvas.restore();
    }

    /* renamed from: d */
    public final void m5806d(b40.d dVar, b40.f fVar, Canvas canvas, int i, int i2, ColorFilter colorFilter) {
        float f = i / this.f1760k;
        float f2 = i2 / this.f1761l;
        float min = Math.min(f, f2);
        Matrix matrix = dVar.a;
        this.f1752c.set(matrix);
        this.f1752c.postScale(f, f2);
        float m5805e = m5805e(matrix);
        if (m5805e == 0.0f) {
            return;
        }
        fVar.d(this.f1750a);
        Path path = this.f1750a;
        this.f1751b.reset();
        if (fVar.c()) {
            this.f1751b.setFillType(fVar.c == 0 ? Path.FillType.WINDING : Path.FillType.EVEN_ODD);
            this.f1751b.addPath(path, this.f1752c);
            canvas.clipPath(this.f1751b);
            return;
        }
        b40.c cVar = (b40.c) fVar;
        float f3 = cVar.k;
        if (f3 != 0.0f || cVar.l != 1.0f) {
            float f4 = cVar.m;
            float f5 = cVar.l;
            if (this.f1755f == null) {
                this.f1755f = new PathMeasure();
            }
            this.f1755f.setPath(this.f1750a, false);
            float length = this.f1755f.getLength();
            float f6 = ((f3 + f4) % 1.0f) * length;
            float f7 = ((f5 + f4) % 1.0f) * length;
            path.reset();
            if (f6 > f7) {
                this.f1755f.getSegment(f6, length, path, true);
                this.f1755f.getSegment(0.0f, f7, path, true);
            } else {
                this.f1755f.getSegment(f6, f7, path, true);
            }
            path.rLineTo(0.0f, 0.0f);
        }
        this.f1751b.addPath(path, this.f1752c);
        if (cVar.h.l()) {
            j8 j8Var = cVar.h;
            if (this.f1754e == null) {
                Paint paint = new Paint(1);
                this.f1754e = paint;
                paint.setStyle(Paint.Style.FILL);
            }
            Paint paint2 = this.f1754e;
            if (j8Var.h()) {
                Shader f8 = j8Var.f();
                f8.setLocalMatrix(this.f1752c);
                paint2.setShader(f8);
                paint2.setAlpha(Math.round(cVar.j * 255.0f));
            } else {
                paint2.setShader(null);
                paint2.setAlpha(255);
                paint2.setColor(b40.d(j8Var.e(), cVar.j));
            }
            paint2.setColorFilter(colorFilter);
            this.f1751b.setFillType(((b40.f) cVar).c == 0 ? Path.FillType.WINDING : Path.FillType.EVEN_ODD);
            canvas.drawPath(this.f1751b, paint2);
        }
        if (!cVar.f.l()) {
            return;
        }
        j8 j8Var2 = cVar.f;
        if (this.f1753d == null) {
            Paint paint3 = new Paint(1);
            this.f1753d = paint3;
            paint3.setStyle(Paint.Style.STROKE);
        }
        Paint paint4 = this.f1753d;
        Paint.Join join = cVar.o;
        if (join != null) {
            paint4.setStrokeJoin(join);
        }
        Paint.Cap cap = cVar.n;
        if (cap != null) {
            paint4.setStrokeCap(cap);
        }
        paint4.setStrokeMiter(cVar.p);
        if (j8Var2.h()) {
            Shader f9 = j8Var2.f();
            f9.setLocalMatrix(this.f1752c);
            paint4.setShader(f9);
            paint4.setAlpha(Math.round(cVar.i * 255.0f));
        } else {
            paint4.setShader(null);
            paint4.setAlpha(255);
            paint4.setColor(b40.d(j8Var2.e(), cVar.i));
        }
        paint4.setColorFilter(colorFilter);
        paint4.setStrokeWidth(cVar.g * min * m5805e);
        canvas.drawPath(this.f1751b, paint4);
    }

    /* renamed from: e */
    public final float m5805e(Matrix matrix) {
        float[] fArr = {0.0f, 1.0f, 1.0f, 0.0f};
        matrix.mapVectors(fArr);
        float hypot = (float) Math.hypot(fArr[0], fArr[1]);
        float hypot2 = (float) Math.hypot(fArr[2], fArr[3]);
        float m5809a = m5809a(fArr[0], fArr[1], fArr[2], fArr[3]);
        float max = Math.max(hypot, hypot2);
        float f = 0.0f;
        if (max > 0.0f) {
            f = Math.abs(m5809a) / max;
        }
        return f;
    }

    /* renamed from: f */
    public boolean m5804f() {
        if (this.f1764o == null) {
            this.f1764o = Boolean.valueOf(this.f1757h.a());
        }
        return this.f1764o.booleanValue();
    }

    /* renamed from: g */
    public boolean m5803g(int[] iArr) {
        return this.f1757h.b(iArr);
    }

    public float getAlpha() {
        return getRootAlpha() / 255.0f;
    }

    public int getRootAlpha() {
        return this.f1762m;
    }

    public void setAlpha(float f) {
        setRootAlpha((int) (f * 255.0f));
    }

    public void setRootAlpha(int i) {
        this.f1762m = i;
    }
}

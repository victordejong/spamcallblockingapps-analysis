package p164m1;

import android.content.res.ColorStateList;
import android.content.res.Resources;
import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.Color;
import android.graphics.ColorFilter;
import android.graphics.Matrix;
import android.graphics.Paint;
import android.graphics.Path;
import android.graphics.PathMeasure;
import android.graphics.PorterDuff;
import android.graphics.PorterDuffColorFilter;
import android.graphics.Rect;
import android.graphics.Shader;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.VectorDrawable;
import android.os.Build;
import android.util.AttributeSet;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Objects;
import org.xmlpull.v1.XmlPullParser;
import org.xmlpull.v1.XmlPullParserException;
import p076e0.C2504c;
import p087f0.C2697d;
import p098g0.C2789a;
import p226s.C4251a;
/* renamed from: m1.f */
/* loaded from: classes-dex2jar.jar:m1/f.class */
public class C3624f extends AbstractC3623e {

    /* renamed from: j */
    public static final PorterDuff.Mode f11833j = PorterDuff.Mode.SRC_IN;

    /* renamed from: b */
    public C3632h f11834b;

    /* renamed from: c */
    public PorterDuffColorFilter f11835c;

    /* renamed from: d */
    public ColorFilter f11836d;

    /* renamed from: e */
    public boolean f11837e;

    /* renamed from: f */
    public boolean f11838f;

    /* renamed from: g */
    public final float[] f11839g;

    /* renamed from: h */
    public final Matrix f11840h;

    /* renamed from: i */
    public final Rect f11841i;

    /* renamed from: m1.f$b */
    /* loaded from: classes-dex2jar.jar:m1/f$b.class */
    public static class C3626b extends AbstractC3630f {
        public C3626b() {
        }

        public C3626b(C3626b c3626b) {
            super(c3626b);
        }
    }

    /* renamed from: m1.f$c */
    /* loaded from: classes-dex2jar.jar:m1/f$c.class */
    public static class C3627c extends AbstractC3630f {

        /* renamed from: e */
        public int[] f11842e;

        /* renamed from: f */
        public C2504c f11843f;

        /* renamed from: g */
        public float f11844g;

        /* renamed from: h */
        public C2504c f11845h;

        /* renamed from: i */
        public float f11846i;

        /* renamed from: j */
        public float f11847j;

        /* renamed from: k */
        public float f11848k;

        /* renamed from: l */
        public float f11849l;

        /* renamed from: m */
        public float f11850m;

        /* renamed from: n */
        public Paint.Cap f11851n;

        /* renamed from: o */
        public Paint.Join f11852o;

        /* renamed from: p */
        public float f11853p;

        public C3627c() {
            this.f11844g = 0.0f;
            this.f11846i = 1.0f;
            this.f11847j = 1.0f;
            this.f11848k = 0.0f;
            this.f11849l = 1.0f;
            this.f11850m = 0.0f;
            this.f11851n = Paint.Cap.BUTT;
            this.f11852o = Paint.Join.MITER;
            this.f11853p = 4.0f;
        }

        public C3627c(C3627c c3627c) {
            super(c3627c);
            this.f11844g = 0.0f;
            this.f11846i = 1.0f;
            this.f11847j = 1.0f;
            this.f11848k = 0.0f;
            this.f11849l = 1.0f;
            this.f11850m = 0.0f;
            this.f11851n = Paint.Cap.BUTT;
            this.f11852o = Paint.Join.MITER;
            this.f11853p = 4.0f;
            this.f11842e = c3627c.f11842e;
            this.f11843f = c3627c.f11843f;
            this.f11844g = c3627c.f11844g;
            this.f11846i = c3627c.f11846i;
            this.f11845h = c3627c.f11845h;
            this.f11869c = c3627c.f11869c;
            this.f11847j = c3627c.f11847j;
            this.f11848k = c3627c.f11848k;
            this.f11849l = c3627c.f11849l;
            this.f11850m = c3627c.f11850m;
            this.f11851n = c3627c.f11851n;
            this.f11852o = c3627c.f11852o;
            this.f11853p = c3627c.f11853p;
        }

        @Override // p164m1.C3624f.AbstractC3629e
        /* renamed from: a */
        public boolean mo1966a() {
            return this.f11845h.m3501c() || this.f11843f.m3501c();
        }

        @Override // p164m1.C3624f.AbstractC3629e
        /* renamed from: b */
        public boolean mo1965b(int[] iArr) {
            return this.f11843f.m3500d(iArr) | this.f11845h.m3500d(iArr);
        }

        public float getFillAlpha() {
            return this.f11847j;
        }

        public int getFillColor() {
            return this.f11845h.f8761c;
        }

        public float getStrokeAlpha() {
            return this.f11846i;
        }

        public int getStrokeColor() {
            return this.f11843f.f8761c;
        }

        public float getStrokeWidth() {
            return this.f11844g;
        }

        public float getTrimPathEnd() {
            return this.f11849l;
        }

        public float getTrimPathOffset() {
            return this.f11850m;
        }

        public float getTrimPathStart() {
            return this.f11848k;
        }

        public void setFillAlpha(float f) {
            this.f11847j = f;
        }

        public void setFillColor(int i) {
            this.f11845h.f8761c = i;
        }

        public void setStrokeAlpha(float f) {
            this.f11846i = f;
        }

        public void setStrokeColor(int i) {
            this.f11843f.f8761c = i;
        }

        public void setStrokeWidth(float f) {
            this.f11844g = f;
        }

        public void setTrimPathEnd(float f) {
            this.f11849l = f;
        }

        public void setTrimPathOffset(float f) {
            this.f11850m = f;
        }

        public void setTrimPathStart(float f) {
            this.f11848k = f;
        }
    }

    /* renamed from: m1.f$d */
    /* loaded from: classes-dex2jar.jar:m1/f$d.class */
    public static class C3628d extends AbstractC3629e {

        /* renamed from: a */
        public final Matrix f11854a;

        /* renamed from: b */
        public final ArrayList<AbstractC3629e> f11855b;

        /* renamed from: c */
        public float f11856c;

        /* renamed from: d */
        public float f11857d;

        /* renamed from: e */
        public float f11858e;

        /* renamed from: f */
        public float f11859f;

        /* renamed from: g */
        public float f11860g;

        /* renamed from: h */
        public float f11861h;

        /* renamed from: i */
        public float f11862i;

        /* renamed from: j */
        public final Matrix f11863j;

        /* renamed from: k */
        public int f11864k;

        /* renamed from: l */
        public int[] f11865l;

        /* renamed from: m */
        public String f11866m;

        public C3628d() {
            super(null);
            this.f11854a = new Matrix();
            this.f11855b = new ArrayList<>();
            this.f11856c = 0.0f;
            this.f11857d = 0.0f;
            this.f11858e = 0.0f;
            this.f11859f = 1.0f;
            this.f11860g = 1.0f;
            this.f11861h = 0.0f;
            this.f11862i = 0.0f;
            this.f11863j = new Matrix();
            this.f11866m = null;
        }

        public C3628d(C3628d c3628d, C4251a<String, Object> c4251a) {
            super(null);
            C3627c c3627c;
            this.f11854a = new Matrix();
            this.f11855b = new ArrayList<>();
            this.f11856c = 0.0f;
            this.f11857d = 0.0f;
            this.f11858e = 0.0f;
            this.f11859f = 1.0f;
            this.f11860g = 1.0f;
            this.f11861h = 0.0f;
            this.f11862i = 0.0f;
            Matrix matrix = new Matrix();
            this.f11863j = matrix;
            this.f11866m = null;
            this.f11856c = c3628d.f11856c;
            this.f11857d = c3628d.f11857d;
            this.f11858e = c3628d.f11858e;
            this.f11859f = c3628d.f11859f;
            this.f11860g = c3628d.f11860g;
            this.f11861h = c3628d.f11861h;
            this.f11862i = c3628d.f11862i;
            this.f11865l = c3628d.f11865l;
            String str = c3628d.f11866m;
            this.f11866m = str;
            this.f11864k = c3628d.f11864k;
            if (str != null) {
                c4251a.put(str, this);
            }
            matrix.set(c3628d.f11863j);
            ArrayList<AbstractC3629e> arrayList = c3628d.f11855b;
            for (int i = 0; i < arrayList.size(); i++) {
                AbstractC3629e abstractC3629e = arrayList.get(i);
                if (abstractC3629e instanceof C3628d) {
                    this.f11855b.add(new C3628d((C3628d) abstractC3629e, c4251a));
                } else {
                    if (abstractC3629e instanceof C3627c) {
                        c3627c = new C3627c((C3627c) abstractC3629e);
                    } else if (!(abstractC3629e instanceof C3626b)) {
                        throw new IllegalStateException("Unknown object in the tree!");
                    } else {
                        c3627c = new C3626b((C3626b) abstractC3629e);
                    }
                    this.f11855b.add(c3627c);
                    String str2 = c3627c.f11868b;
                    if (str2 != null) {
                        c4251a.put(str2, c3627c);
                    }
                }
            }
        }

        @Override // p164m1.C3624f.AbstractC3629e
        /* renamed from: a */
        public boolean mo1966a() {
            for (int i = 0; i < this.f11855b.size(); i++) {
                if (this.f11855b.get(i).mo1966a()) {
                    return true;
                }
            }
            return false;
        }

        @Override // p164m1.C3624f.AbstractC3629e
        /* renamed from: b */
        public boolean mo1965b(int[] iArr) {
            boolean z = false;
            for (int i = 0; i < this.f11855b.size(); i++) {
                z |= this.f11855b.get(i).mo1965b(iArr);
            }
            return z;
        }

        /* renamed from: c */
        public final void m1967c() {
            this.f11863j.reset();
            this.f11863j.postTranslate(-this.f11857d, -this.f11858e);
            this.f11863j.postScale(this.f11859f, this.f11860g);
            this.f11863j.postRotate(this.f11856c, 0.0f, 0.0f);
            this.f11863j.postTranslate(this.f11861h + this.f11857d, this.f11862i + this.f11858e);
        }

        public String getGroupName() {
            return this.f11866m;
        }

        public Matrix getLocalMatrix() {
            return this.f11863j;
        }

        public float getPivotX() {
            return this.f11857d;
        }

        public float getPivotY() {
            return this.f11858e;
        }

        public float getRotation() {
            return this.f11856c;
        }

        public float getScaleX() {
            return this.f11859f;
        }

        public float getScaleY() {
            return this.f11860g;
        }

        public float getTranslateX() {
            return this.f11861h;
        }

        public float getTranslateY() {
            return this.f11862i;
        }

        public void setPivotX(float f) {
            if (f != this.f11857d) {
                this.f11857d = f;
                m1967c();
            }
        }

        public void setPivotY(float f) {
            if (f != this.f11858e) {
                this.f11858e = f;
                m1967c();
            }
        }

        public void setRotation(float f) {
            if (f != this.f11856c) {
                this.f11856c = f;
                m1967c();
            }
        }

        public void setScaleX(float f) {
            if (f != this.f11859f) {
                this.f11859f = f;
                m1967c();
            }
        }

        public void setScaleY(float f) {
            if (f != this.f11860g) {
                this.f11860g = f;
                m1967c();
            }
        }

        public void setTranslateX(float f) {
            if (f != this.f11861h) {
                this.f11861h = f;
                m1967c();
            }
        }

        public void setTranslateY(float f) {
            if (f != this.f11862i) {
                this.f11862i = f;
                m1967c();
            }
        }
    }

    /* renamed from: m1.f$e */
    /* loaded from: classes-dex2jar.jar:m1/f$e.class */
    public static abstract class AbstractC3629e {
        public AbstractC3629e() {
        }

        public AbstractC3629e(C3625a c3625a) {
        }

        /* renamed from: a */
        public boolean mo1966a() {
            return false;
        }

        /* renamed from: b */
        public boolean mo1965b(int[] iArr) {
            return false;
        }
    }

    /* renamed from: m1.f$f */
    /* loaded from: classes-dex2jar.jar:m1/f$f.class */
    public static abstract class AbstractC3630f extends AbstractC3629e {

        /* renamed from: a */
        public C2697d.C2698a[] f11867a;

        /* renamed from: b */
        public String f11868b;

        /* renamed from: c */
        public int f11869c;

        /* renamed from: d */
        public int f11870d;

        public AbstractC3630f() {
            super(null);
            this.f11867a = null;
            this.f11869c = 0;
        }

        public AbstractC3630f(AbstractC3630f abstractC3630f) {
            super(null);
            this.f11867a = null;
            this.f11869c = 0;
            this.f11868b = abstractC3630f.f11868b;
            this.f11870d = abstractC3630f.f11870d;
            this.f11867a = C2697d.m3246e(abstractC3630f.f11867a);
        }

        public C2697d.C2698a[] getPathData() {
            return this.f11867a;
        }

        public String getPathName() {
            return this.f11868b;
        }

        public void setPathData(C2697d.C2698a[] c2698aArr) {
            if (!C2697d.m3250a(this.f11867a, c2698aArr)) {
                this.f11867a = C2697d.m3246e(c2698aArr);
                return;
            }
            C2697d.C2698a[] c2698aArr2 = this.f11867a;
            for (int i = 0; i < c2698aArr.length; i++) {
                c2698aArr2[i].f9277a = c2698aArr[i].f9277a;
                for (int i2 = 0; i2 < c2698aArr[i].f9278b.length; i2++) {
                    c2698aArr2[i].f9278b[i2] = c2698aArr[i].f9278b[i2];
                }
            }
        }
    }

    /* renamed from: m1.f$g */
    /* loaded from: classes-dex2jar.jar:m1/f$g.class */
    public static class C3631g {

        /* renamed from: q */
        public static final Matrix f11871q = new Matrix();

        /* renamed from: a */
        public final Path f11872a;

        /* renamed from: b */
        public final Path f11873b;

        /* renamed from: c */
        public final Matrix f11874c;

        /* renamed from: d */
        public Paint f11875d;

        /* renamed from: e */
        public Paint f11876e;

        /* renamed from: f */
        public PathMeasure f11877f;

        /* renamed from: g */
        public int f11878g;

        /* renamed from: h */
        public final C3628d f11879h;

        /* renamed from: i */
        public float f11880i;

        /* renamed from: j */
        public float f11881j;

        /* renamed from: k */
        public float f11882k;

        /* renamed from: l */
        public float f11883l;

        /* renamed from: m */
        public int f11884m;

        /* renamed from: n */
        public String f11885n;

        /* renamed from: o */
        public Boolean f11886o;

        /* renamed from: p */
        public final C4251a<String, Object> f11887p;

        public C3631g() {
            this.f11874c = new Matrix();
            this.f11880i = 0.0f;
            this.f11881j = 0.0f;
            this.f11882k = 0.0f;
            this.f11883l = 0.0f;
            this.f11884m = 255;
            this.f11885n = null;
            this.f11886o = null;
            this.f11887p = new C4251a<>();
            this.f11879h = new C3628d();
            this.f11872a = new Path();
            this.f11873b = new Path();
        }

        public C3631g(C3631g c3631g) {
            this.f11874c = new Matrix();
            this.f11880i = 0.0f;
            this.f11881j = 0.0f;
            this.f11882k = 0.0f;
            this.f11883l = 0.0f;
            this.f11884m = 255;
            this.f11885n = null;
            this.f11886o = null;
            C4251a<String, Object> c4251a = new C4251a<>();
            this.f11887p = c4251a;
            this.f11879h = new C3628d(c3631g.f11879h, c4251a);
            this.f11872a = new Path(c3631g.f11872a);
            this.f11873b = new Path(c3631g.f11873b);
            this.f11880i = c3631g.f11880i;
            this.f11881j = c3631g.f11881j;
            this.f11882k = c3631g.f11882k;
            this.f11883l = c3631g.f11883l;
            this.f11878g = c3631g.f11878g;
            this.f11884m = c3631g.f11884m;
            this.f11885n = c3631g.f11885n;
            String str = c3631g.f11885n;
            if (str != null) {
                c4251a.put(str, this);
            }
            this.f11886o = c3631g.f11886o;
        }

        /* renamed from: a */
        public final void m1964a(C3628d c3628d, Matrix matrix, Canvas canvas, int i, int i2, ColorFilter colorFilter) {
            c3628d.f11854a.set(matrix);
            c3628d.f11854a.preConcat(c3628d.f11863j);
            canvas.save();
            C3631g c3631g = this;
            for (int i3 = 0; i3 < c3628d.f11855b.size(); i3++) {
                AbstractC3629e abstractC3629e = c3628d.f11855b.get(i3);
                if (abstractC3629e instanceof C3628d) {
                    m1964a((C3628d) abstractC3629e, c3628d.f11854a, canvas, i, i2, colorFilter);
                } else if (abstractC3629e instanceof AbstractC3630f) {
                    AbstractC3630f abstractC3630f = (AbstractC3630f) abstractC3629e;
                    float f = i / c3631g.f11882k;
                    float f2 = i2 / c3631g.f11883l;
                    float min = Math.min(f, f2);
                    Matrix matrix2 = c3628d.f11854a;
                    c3631g.f11874c.set(matrix2);
                    c3631g.f11874c.postScale(f, f2);
                    float[] fArr = {0.0f, 1.0f, 1.0f, 0.0f};
                    matrix2.mapVectors(fArr);
                    float hypot = (float) Math.hypot(fArr[0], fArr[1]);
                    float hypot2 = (float) Math.hypot(fArr[2], fArr[3]);
                    float f3 = fArr[0];
                    float f4 = fArr[1];
                    float f5 = fArr[2];
                    float f6 = fArr[3];
                    float max = Math.max(hypot, hypot2);
                    float abs = max > 0.0f ? Math.abs((f3 * f6) - (f4 * f5)) / max : 0.0f;
                    if (abs == 0.0f) {
                        c3631g = this;
                    } else {
                        Path path = this.f11872a;
                        Objects.requireNonNull(abstractC3630f);
                        path.reset();
                        C2697d.C2698a[] c2698aArr = abstractC3630f.f11867a;
                        if (c2698aArr != null) {
                            C2697d.C2698a.m3244b(c2698aArr, path);
                        }
                        Path path2 = this.f11872a;
                        this.f11873b.reset();
                        if (abstractC3630f instanceof C3626b) {
                            this.f11873b.setFillType(abstractC3630f.f11869c == 0 ? Path.FillType.WINDING : Path.FillType.EVEN_ODD);
                            this.f11873b.addPath(path2, this.f11874c);
                            canvas.clipPath(this.f11873b);
                            c3631g = this;
                        } else {
                            C3627c c3627c = (C3627c) abstractC3630f;
                            float f7 = c3627c.f11848k;
                            if (f7 != 0.0f || c3627c.f11849l != 1.0f) {
                                float f8 = c3627c.f11850m;
                                float f9 = c3627c.f11849l;
                                if (this.f11877f == null) {
                                    this.f11877f = new PathMeasure();
                                }
                                this.f11877f.setPath(this.f11872a, false);
                                float length = this.f11877f.getLength();
                                float f10 = ((f7 + f8) % 1.0f) * length;
                                float f11 = ((f9 + f8) % 1.0f) * length;
                                path2.reset();
                                if (f10 > f11) {
                                    this.f11877f.getSegment(f10, length, path2, true);
                                    this.f11877f.getSegment(0.0f, f11, path2, true);
                                } else {
                                    this.f11877f.getSegment(f10, f11, path2, true);
                                }
                                path2.rLineTo(0.0f, 0.0f);
                            }
                            this.f11873b.addPath(path2, this.f11874c);
                            C2504c c2504c = c3627c.f11845h;
                            if (c2504c.m3502b() || c2504c.f8761c != 0) {
                                C2504c c2504c2 = c3627c.f11845h;
                                if (this.f11876e == null) {
                                    Paint paint = new Paint(1);
                                    this.f11876e = paint;
                                    paint.setStyle(Paint.Style.FILL);
                                }
                                Paint paint2 = this.f11876e;
                                if (c2504c2.m3502b()) {
                                    Shader shader = c2504c2.f8759a;
                                    shader.setLocalMatrix(this.f11874c);
                                    paint2.setShader(shader);
                                    paint2.setAlpha(Math.round(c3627c.f11847j * 255.0f));
                                } else {
                                    paint2.setShader(null);
                                    paint2.setAlpha(255);
                                    int i4 = c2504c2.f8761c;
                                    float f12 = c3627c.f11847j;
                                    PorterDuff.Mode mode = C3624f.f11833j;
                                    paint2.setColor((i4 & 16777215) | (((int) (Color.alpha(i4) * f12)) << 24));
                                }
                                paint2.setColorFilter(colorFilter);
                                this.f11873b.setFillType(c3627c.f11869c == 0 ? Path.FillType.WINDING : Path.FillType.EVEN_ODD);
                                canvas.drawPath(this.f11873b, paint2);
                            }
                            C2504c c2504c3 = c3627c.f11843f;
                            c3631g = this;
                            if (c2504c3.m3502b() || c2504c3.f8761c != 0) {
                                C2504c c2504c4 = c3627c.f11843f;
                                if (this.f11875d == null) {
                                    Paint paint3 = new Paint(1);
                                    this.f11875d = paint3;
                                    paint3.setStyle(Paint.Style.STROKE);
                                }
                                Paint paint4 = this.f11875d;
                                Paint.Join join = c3627c.f11852o;
                                if (join != null) {
                                    paint4.setStrokeJoin(join);
                                }
                                Paint.Cap cap = c3627c.f11851n;
                                if (cap != null) {
                                    paint4.setStrokeCap(cap);
                                }
                                paint4.setStrokeMiter(c3627c.f11853p);
                                if (c2504c4.m3502b()) {
                                    Shader shader2 = c2504c4.f8759a;
                                    shader2.setLocalMatrix(this.f11874c);
                                    paint4.setShader(shader2);
                                    paint4.setAlpha(Math.round(c3627c.f11846i * 255.0f));
                                } else {
                                    paint4.setShader(null);
                                    paint4.setAlpha(255);
                                    int i5 = c2504c4.f8761c;
                                    float f13 = c3627c.f11846i;
                                    PorterDuff.Mode mode2 = C3624f.f11833j;
                                    paint4.setColor((i5 & 16777215) | (((int) (Color.alpha(i5) * f13)) << 24));
                                }
                                paint4.setColorFilter(colorFilter);
                                paint4.setStrokeWidth(c3627c.f11844g * abs * min);
                                canvas.drawPath(this.f11873b, paint4);
                                c3631g = this;
                            }
                        }
                    }
                }
            }
            canvas.restore();
        }

        public float getAlpha() {
            return getRootAlpha() / 255.0f;
        }

        public int getRootAlpha() {
            return this.f11884m;
        }

        public void setAlpha(float f) {
            setRootAlpha((int) (f * 255.0f));
        }

        public void setRootAlpha(int i) {
            this.f11884m = i;
        }
    }

    /* renamed from: m1.f$h */
    /* loaded from: classes-dex2jar.jar:m1/f$h.class */
    public static class C3632h extends Drawable.ConstantState {

        /* renamed from: a */
        public int f11888a;

        /* renamed from: b */
        public C3631g f11889b;

        /* renamed from: c */
        public ColorStateList f11890c;

        /* renamed from: d */
        public PorterDuff.Mode f11891d;

        /* renamed from: e */
        public boolean f11892e;

        /* renamed from: f */
        public Bitmap f11893f;

        /* renamed from: g */
        public ColorStateList f11894g;

        /* renamed from: h */
        public PorterDuff.Mode f11895h;

        /* renamed from: i */
        public int f11896i;

        /* renamed from: j */
        public boolean f11897j;

        /* renamed from: k */
        public boolean f11898k;

        /* renamed from: l */
        public Paint f11899l;

        public C3632h() {
            this.f11890c = null;
            this.f11891d = C3624f.f11833j;
            this.f11889b = new C3631g();
        }

        public C3632h(C3632h c3632h) {
            this.f11890c = null;
            this.f11891d = C3624f.f11833j;
            if (c3632h != null) {
                this.f11888a = c3632h.f11888a;
                C3631g c3631g = new C3631g(c3632h.f11889b);
                this.f11889b = c3631g;
                if (c3632h.f11889b.f11876e != null) {
                    c3631g.f11876e = new Paint(c3632h.f11889b.f11876e);
                }
                if (c3632h.f11889b.f11875d != null) {
                    this.f11889b.f11875d = new Paint(c3632h.f11889b.f11875d);
                }
                this.f11890c = c3632h.f11890c;
                this.f11891d = c3632h.f11891d;
                this.f11892e = c3632h.f11892e;
            }
        }

        /* renamed from: a */
        public boolean m1963a() {
            C3631g c3631g = this.f11889b;
            if (c3631g.f11886o == null) {
                c3631g.f11886o = Boolean.valueOf(c3631g.f11879h.mo1966a());
            }
            return c3631g.f11886o.booleanValue();
        }

        /* renamed from: b */
        public void m1962b(int i, int i2) {
            this.f11893f.eraseColor(0);
            Canvas canvas = new Canvas(this.f11893f);
            C3631g c3631g = this.f11889b;
            c3631g.m1964a(c3631g.f11879h, C3631g.f11871q, canvas, i, i2, null);
        }

        @Override // android.graphics.drawable.Drawable.ConstantState
        public int getChangingConfigurations() {
            return this.f11888a;
        }

        @Override // android.graphics.drawable.Drawable.ConstantState
        public Drawable newDrawable() {
            return new C3624f(this);
        }

        @Override // android.graphics.drawable.Drawable.ConstantState
        public Drawable newDrawable(Resources resources) {
            return new C3624f(this);
        }
    }

    /* renamed from: m1.f$i */
    /* loaded from: classes-dex2jar.jar:m1/f$i.class */
    public static class C3633i extends Drawable.ConstantState {

        /* renamed from: a */
        public final Drawable.ConstantState f11900a;

        public C3633i(Drawable.ConstantState constantState) {
            this.f11900a = constantState;
        }

        @Override // android.graphics.drawable.Drawable.ConstantState
        public boolean canApplyTheme() {
            return this.f11900a.canApplyTheme();
        }

        @Override // android.graphics.drawable.Drawable.ConstantState
        public int getChangingConfigurations() {
            return this.f11900a.getChangingConfigurations();
        }

        @Override // android.graphics.drawable.Drawable.ConstantState
        public Drawable newDrawable() {
            C3624f c3624f = new C3624f();
            c3624f.f11832a = (VectorDrawable) this.f11900a.newDrawable();
            return c3624f;
        }

        @Override // android.graphics.drawable.Drawable.ConstantState
        public Drawable newDrawable(Resources resources) {
            C3624f c3624f = new C3624f();
            c3624f.f11832a = (VectorDrawable) this.f11900a.newDrawable(resources);
            return c3624f;
        }

        @Override // android.graphics.drawable.Drawable.ConstantState
        public Drawable newDrawable(Resources resources, Resources.Theme theme) {
            C3624f c3624f = new C3624f();
            c3624f.f11832a = (VectorDrawable) this.f11900a.newDrawable(resources, theme);
            return c3624f;
        }
    }

    public C3624f() {
        this.f11838f = true;
        this.f11839g = new float[9];
        this.f11840h = new Matrix();
        this.f11841i = new Rect();
        this.f11834b = new C3632h();
    }

    public C3624f(C3632h c3632h) {
        this.f11838f = true;
        this.f11839g = new float[9];
        this.f11840h = new Matrix();
        this.f11841i = new Rect();
        this.f11834b = c3632h;
        this.f11835c = m1968b(c3632h.f11890c, c3632h.f11891d);
    }

    /* renamed from: a */
    public static C3624f m1969a(Resources resources, XmlPullParser xmlPullParser, AttributeSet attributeSet, Resources.Theme theme) throws XmlPullParserException, IOException {
        C3624f c3624f = new C3624f();
        c3624f.inflate(resources, xmlPullParser, attributeSet, theme);
        return c3624f;
    }

    /* renamed from: b */
    public PorterDuffColorFilter m1968b(ColorStateList colorStateList, PorterDuff.Mode mode) {
        if (colorStateList == null || mode == null) {
            return null;
        }
        return new PorterDuffColorFilter(colorStateList.getColorForState(getState(), 0), mode);
    }

    @Override // android.graphics.drawable.Drawable
    public boolean canApplyTheme() {
        Drawable drawable = this.f11832a;
        if (drawable != null) {
            drawable.canApplyTheme();
            return false;
        }
        return false;
    }

    /* JADX WARN: Code restructure failed: missing block: B:40:0x0157, code lost:
        if ((r0 == r0.getWidth() && r0 == r0.f11893f.getHeight()) == false) goto L41;
     */
    @Override // android.graphics.drawable.Drawable
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void draw(android.graphics.Canvas r7) {
        /*
            Method dump skipped, instructions count: 635
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: p164m1.C3624f.draw(android.graphics.Canvas):void");
    }

    @Override // android.graphics.drawable.Drawable
    public int getAlpha() {
        Drawable drawable = this.f11832a;
        return drawable != null ? drawable.getAlpha() : this.f11834b.f11889b.getRootAlpha();
    }

    @Override // android.graphics.drawable.Drawable
    public int getChangingConfigurations() {
        Drawable drawable = this.f11832a;
        return drawable != null ? drawable.getChangingConfigurations() : super.getChangingConfigurations() | this.f11834b.getChangingConfigurations();
    }

    @Override // android.graphics.drawable.Drawable
    public ColorFilter getColorFilter() {
        Drawable drawable = this.f11832a;
        return drawable != null ? drawable.getColorFilter() : this.f11836d;
    }

    @Override // android.graphics.drawable.Drawable
    public Drawable.ConstantState getConstantState() {
        if (this.f11832a == null || Build.VERSION.SDK_INT < 24) {
            this.f11834b.f11888a = getChangingConfigurations();
            return this.f11834b;
        }
        return new C3633i(this.f11832a.getConstantState());
    }

    @Override // android.graphics.drawable.Drawable
    public int getIntrinsicHeight() {
        Drawable drawable = this.f11832a;
        return drawable != null ? drawable.getIntrinsicHeight() : (int) this.f11834b.f11889b.f11881j;
    }

    @Override // android.graphics.drawable.Drawable
    public int getIntrinsicWidth() {
        Drawable drawable = this.f11832a;
        return drawable != null ? drawable.getIntrinsicWidth() : (int) this.f11834b.f11889b.f11880i;
    }

    @Override // android.graphics.drawable.Drawable
    public int getOpacity() {
        Drawable drawable = this.f11832a;
        if (drawable != null) {
            return drawable.getOpacity();
        }
        return -3;
    }

    @Override // android.graphics.drawable.Drawable
    public void inflate(Resources resources, XmlPullParser xmlPullParser, AttributeSet attributeSet) throws XmlPullParserException, IOException {
        Drawable drawable = this.f11832a;
        if (drawable != null) {
            drawable.inflate(resources, xmlPullParser, attributeSet);
        } else {
            inflate(resources, xmlPullParser, attributeSet, null);
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:200:0x08b4  */
    /* JADX WARN: Removed duplicated region for block: B:40:0x0173  */
    /* JADX WARN: Removed duplicated region for block: B:43:0x018e  */
    /* JADX WARN: Removed duplicated region for block: B:46:0x01b3  */
    /* JADX WARN: Removed duplicated region for block: B:49:0x01d9  */
    /* JADX WARN: Removed duplicated region for block: B:52:0x01f5  */
    @Override // android.graphics.drawable.Drawable
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void inflate(android.content.res.Resources r9, org.xmlpull.v1.XmlPullParser r10, android.util.AttributeSet r11, android.content.res.Resources.Theme r12) throws org.xmlpull.v1.XmlPullParserException, java.io.IOException {
        /*
            Method dump skipped, instructions count: 2271
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: p164m1.C3624f.inflate(android.content.res.Resources, org.xmlpull.v1.XmlPullParser, android.util.AttributeSet, android.content.res.Resources$Theme):void");
    }

    @Override // android.graphics.drawable.Drawable
    public void invalidateSelf() {
        Drawable drawable = this.f11832a;
        if (drawable != null) {
            drawable.invalidateSelf();
        } else {
            super.invalidateSelf();
        }
    }

    @Override // android.graphics.drawable.Drawable
    public boolean isAutoMirrored() {
        Drawable drawable = this.f11832a;
        return drawable != null ? drawable.isAutoMirrored() : this.f11834b.f11892e;
    }

    @Override // android.graphics.drawable.Drawable
    public boolean isStateful() {
        C3632h c3632h;
        ColorStateList colorStateList;
        Drawable drawable = this.f11832a;
        if (drawable != null) {
            return drawable.isStateful();
        }
        return super.isStateful() || ((c3632h = this.f11834b) != null && (c3632h.m1963a() || ((colorStateList = this.f11834b.f11890c) != null && colorStateList.isStateful())));
    }

    @Override // android.graphics.drawable.Drawable
    public Drawable mutate() {
        Drawable drawable = this.f11832a;
        if (drawable != null) {
            drawable.mutate();
            return this;
        }
        if (!this.f11837e && super.mutate() == this) {
            this.f11834b = new C3632h(this.f11834b);
            this.f11837e = true;
        }
        return this;
    }

    @Override // android.graphics.drawable.Drawable
    public void onBoundsChange(Rect rect) {
        Drawable drawable = this.f11832a;
        if (drawable != null) {
            drawable.setBounds(rect);
        }
    }

    @Override // android.graphics.drawable.Drawable
    public boolean onStateChange(int[] iArr) {
        Drawable drawable = this.f11832a;
        if (drawable != null) {
            return drawable.setState(iArr);
        }
        C3632h c3632h = this.f11834b;
        ColorStateList colorStateList = c3632h.f11890c;
        boolean z = false;
        if (colorStateList != null) {
            PorterDuff.Mode mode = c3632h.f11891d;
            z = false;
            if (mode != null) {
                this.f11835c = m1968b(colorStateList, mode);
                invalidateSelf();
                z = true;
            }
        }
        if (c3632h.m1963a()) {
            boolean mo1965b = c3632h.f11889b.f11879h.mo1965b(iArr);
            c3632h.f11898k |= mo1965b;
            if (mo1965b) {
                invalidateSelf();
                z = true;
            }
        }
        return z;
    }

    @Override // android.graphics.drawable.Drawable
    public void scheduleSelf(Runnable runnable, long j) {
        Drawable drawable = this.f11832a;
        if (drawable != null) {
            drawable.scheduleSelf(runnable, j);
        } else {
            super.scheduleSelf(runnable, j);
        }
    }

    @Override // android.graphics.drawable.Drawable
    public void setAlpha(int i) {
        Drawable drawable = this.f11832a;
        if (drawable != null) {
            drawable.setAlpha(i);
        } else if (this.f11834b.f11889b.getRootAlpha() == i) {
        } else {
            this.f11834b.f11889b.setRootAlpha(i);
            invalidateSelf();
        }
    }

    @Override // android.graphics.drawable.Drawable
    public void setAutoMirrored(boolean z) {
        Drawable drawable = this.f11832a;
        if (drawable != null) {
            drawable.setAutoMirrored(z);
        } else {
            this.f11834b.f11892e = z;
        }
    }

    @Override // android.graphics.drawable.Drawable
    public void setColorFilter(ColorFilter colorFilter) {
        Drawable drawable = this.f11832a;
        if (drawable != null) {
            drawable.setColorFilter(colorFilter);
            return;
        }
        this.f11836d = colorFilter;
        invalidateSelf();
    }

    @Override // android.graphics.drawable.Drawable
    public void setTint(int i) {
        Drawable drawable = this.f11832a;
        if (drawable != null) {
            C2789a.m3011d(drawable, i);
        } else {
            setTintList(ColorStateList.valueOf(i));
        }
    }

    @Override // android.graphics.drawable.Drawable
    public void setTintList(ColorStateList colorStateList) {
        Drawable drawable = this.f11832a;
        if (drawable != null) {
            C2789a.m3010e(drawable, colorStateList);
            return;
        }
        C3632h c3632h = this.f11834b;
        if (c3632h.f11890c == colorStateList) {
            return;
        }
        c3632h.f11890c = colorStateList;
        this.f11835c = m1968b(colorStateList, c3632h.f11891d);
        invalidateSelf();
    }

    @Override // android.graphics.drawable.Drawable
    public void setTintMode(PorterDuff.Mode mode) {
        Drawable drawable = this.f11832a;
        if (drawable != null) {
            C2789a.m3009f(drawable, mode);
            return;
        }
        C3632h c3632h = this.f11834b;
        if (c3632h.f11891d == mode) {
            return;
        }
        c3632h.f11891d = mode;
        this.f11835c = m1968b(c3632h.f11890c, mode);
        invalidateSelf();
    }

    @Override // android.graphics.drawable.Drawable
    public boolean setVisible(boolean z, boolean z2) {
        Drawable drawable = this.f11832a;
        return drawable != null ? drawable.setVisible(z, z2) : super.setVisible(z, z2);
    }

    @Override // android.graphics.drawable.Drawable
    public void unscheduleSelf(Runnable runnable) {
        Drawable drawable = this.f11832a;
        if (drawable != null) {
            drawable.unscheduleSelf(runnable);
        } else {
            super.unscheduleSelf(runnable);
        }
    }
}

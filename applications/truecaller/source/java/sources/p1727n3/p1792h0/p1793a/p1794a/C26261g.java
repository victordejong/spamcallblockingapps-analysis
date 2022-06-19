package p1727n3.p1792h0.p1793a.p1794a;

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
import android.support.p001v4.media.session.MediaSessionCompat;
import android.util.AttributeSet;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Objects;
import org.xmlpull.v1.XmlPullParser;
import org.xmlpull.v1.XmlPullParserException;
import p1727n3.p1788g.C26174a;
import p1727n3.p1807k.p1809b.p1811d.C26482b;
import p1727n3.p1807k.p1812c.C26495c;
/* renamed from: n3.h0.a.a.g */
/* loaded from: classes-dex2jar.jar:n3/h0/a/a/g.class */
public class C26261g extends AbstractC26260f {

    /* renamed from: j */
    public static final PorterDuff.Mode f73201j = PorterDuff.Mode.SRC_IN;

    /* renamed from: b */
    public C26267h f73202b;

    /* renamed from: c */
    public PorterDuffColorFilter f73203c;

    /* renamed from: d */
    public ColorFilter f73204d;

    /* renamed from: e */
    public boolean f73205e;

    /* renamed from: f */
    public boolean f73206f;

    /* renamed from: g */
    public final float[] f73207g;

    /* renamed from: h */
    public final Matrix f73208h;

    /* renamed from: i */
    public final Rect f73209i;

    /* renamed from: n3.h0.a.a.g$d */
    /* loaded from: classes-dex2jar.jar:n3/h0/a/a/g$d.class */
    public static class C26263d extends AbstractC26264e {

        /* renamed from: a */
        public final Matrix f73210a;

        /* renamed from: b */
        public final ArrayList<AbstractC26264e> f73211b;

        /* renamed from: c */
        public float f73212c;

        /* renamed from: d */
        public float f73213d;

        /* renamed from: e */
        public float f73214e;

        /* renamed from: f */
        public float f73215f;

        /* renamed from: g */
        public float f73216g;

        /* renamed from: h */
        public float f73217h;

        /* renamed from: i */
        public float f73218i;

        /* renamed from: j */
        public final Matrix f73219j;

        /* renamed from: k */
        public int f73220k;

        /* renamed from: l */
        public int[] f73221l;

        /* renamed from: m */
        public String f73222m;

        public C26263d() {
            super(null);
            this.f73210a = new Matrix();
            this.f73211b = new ArrayList<>();
            this.f73212c = 0.0f;
            this.f73213d = 0.0f;
            this.f73214e = 0.0f;
            this.f73215f = 1.0f;
            this.f73216g = 1.0f;
            this.f73217h = 0.0f;
            this.f73218i = 0.0f;
            this.f73219j = new Matrix();
            this.f73222m = null;
        }

        public C26263d(C26263d c26263d, C26174a<String, Object> c26174a) {
            super(null);
            AbstractC26265f abstractC26265f;
            this.f73210a = new Matrix();
            this.f73211b = new ArrayList<>();
            this.f73212c = 0.0f;
            this.f73213d = 0.0f;
            this.f73214e = 0.0f;
            this.f73215f = 1.0f;
            this.f73216g = 1.0f;
            this.f73217h = 0.0f;
            this.f73218i = 0.0f;
            Matrix matrix = new Matrix();
            this.f73219j = matrix;
            this.f73222m = null;
            this.f73212c = c26263d.f73212c;
            this.f73213d = c26263d.f73213d;
            this.f73214e = c26263d.f73214e;
            this.f73215f = c26263d.f73215f;
            this.f73216g = c26263d.f73216g;
            this.f73217h = c26263d.f73217h;
            this.f73218i = c26263d.f73218i;
            this.f73221l = c26263d.f73221l;
            String str = c26263d.f73222m;
            this.f73222m = str;
            this.f73220k = c26263d.f73220k;
            if (str != null) {
                c26174a.put(str, this);
            }
            matrix.set(c26263d.f73219j);
            ArrayList<AbstractC26264e> arrayList = c26263d.f73211b;
            for (int i = 0; i < arrayList.size(); i++) {
                c cVar = arrayList.get(i);
                if (cVar instanceof C26263d) {
                    this.f73211b.add(new C26263d((C26263d) cVar, c26174a));
                } else {
                    if (cVar instanceof c) {
                        abstractC26265f = new c(cVar);
                    } else if (!(cVar instanceof b)) {
                        throw new IllegalStateException("Unknown object in the tree!");
                    } else {
                        abstractC26265f = new b((b) cVar);
                    }
                    this.f73211b.add(abstractC26265f);
                    String str2 = abstractC26265f.f73224b;
                    if (str2 != null) {
                        c26174a.put(str2, abstractC26265f);
                    }
                }
            }
        }

        @Override // p1727n3.p1792h0.p1793a.p1794a.C26261g.AbstractC26264e
        /* renamed from: a */
        public boolean mo2245a() {
            for (int i = 0; i < this.f73211b.size(); i++) {
                if (this.f73211b.get(i).mo2245a()) {
                    return true;
                }
            }
            return false;
        }

        @Override // p1727n3.p1792h0.p1793a.p1794a.C26261g.AbstractC26264e
        /* renamed from: b */
        public boolean mo2244b(int[] iArr) {
            boolean z = false;
            for (int i = 0; i < this.f73211b.size(); i++) {
                z |= this.f73211b.get(i).mo2244b(iArr);
            }
            return z;
        }

        /* renamed from: c */
        public final void m2246c() {
            this.f73219j.reset();
            this.f73219j.postTranslate(-this.f73213d, -this.f73214e);
            this.f73219j.postScale(this.f73215f, this.f73216g);
            this.f73219j.postRotate(this.f73212c, 0.0f, 0.0f);
            this.f73219j.postTranslate(this.f73217h + this.f73213d, this.f73218i + this.f73214e);
        }

        public String getGroupName() {
            return this.f73222m;
        }

        public Matrix getLocalMatrix() {
            return this.f73219j;
        }

        public float getPivotX() {
            return this.f73213d;
        }

        public float getPivotY() {
            return this.f73214e;
        }

        public float getRotation() {
            return this.f73212c;
        }

        public float getScaleX() {
            return this.f73215f;
        }

        public float getScaleY() {
            return this.f73216g;
        }

        public float getTranslateX() {
            return this.f73217h;
        }

        public float getTranslateY() {
            return this.f73218i;
        }

        public void setPivotX(float f) {
            if (f != this.f73213d) {
                this.f73213d = f;
                m2246c();
            }
        }

        public void setPivotY(float f) {
            if (f != this.f73214e) {
                this.f73214e = f;
                m2246c();
            }
        }

        public void setRotation(float f) {
            if (f != this.f73212c) {
                this.f73212c = f;
                m2246c();
            }
        }

        public void setScaleX(float f) {
            if (f != this.f73215f) {
                this.f73215f = f;
                m2246c();
            }
        }

        public void setScaleY(float f) {
            if (f != this.f73216g) {
                this.f73216g = f;
                m2246c();
            }
        }

        public void setTranslateX(float f) {
            if (f != this.f73217h) {
                this.f73217h = f;
                m2246c();
            }
        }

        public void setTranslateY(float f) {
            if (f != this.f73218i) {
                this.f73218i = f;
                m2246c();
            }
        }
    }

    /* renamed from: n3.h0.a.a.g$e */
    /* loaded from: classes-dex2jar.jar:n3/h0/a/a/g$e.class */
    public static abstract class AbstractC26264e {
        public AbstractC26264e() {
        }

        public AbstractC26264e(C26262a c26262a) {
        }

        /* renamed from: a */
        public boolean mo2245a() {
            return false;
        }

        /* renamed from: b */
        public boolean mo2244b(int[] iArr) {
            return false;
        }
    }

    /* renamed from: n3.h0.a.a.g$f */
    /* loaded from: classes-dex2jar.jar:n3/h0/a/a/g$f.class */
    public static abstract class AbstractC26265f extends AbstractC26264e {

        /* renamed from: a */
        public C26495c[] f73223a;

        /* renamed from: b */
        public String f73224b;

        /* renamed from: c */
        public int f73225c;

        /* renamed from: d */
        public int f73226d;

        public AbstractC26265f() {
            super(null);
            this.f73223a = null;
            this.f73225c = 0;
        }

        public AbstractC26265f(AbstractC26265f abstractC26265f) {
            super(null);
            this.f73223a = null;
            this.f73225c = 0;
            this.f73224b = abstractC26265f.f73224b;
            this.f73226d = abstractC26265f.f73226d;
            this.f73223a = MediaSessionCompat.m43270T(abstractC26265f.f73223a);
        }

        /* renamed from: c */
        public boolean m2243c() {
            return false;
        }

        public C26495c[] getPathData() {
            return this.f73223a;
        }

        public String getPathName() {
            return this.f73224b;
        }

        public void setPathData(C26495c[] c26495cArr) {
            if (!MediaSessionCompat.m43220m(this.f73223a, c26495cArr)) {
                this.f73223a = MediaSessionCompat.m43270T(c26495cArr);
                return;
            }
            C26495c[] c26495cArr2 = this.f73223a;
            for (int i = 0; i < c26495cArr.length; i++) {
                c26495cArr2[i].f74281a = c26495cArr[i].f74281a;
                for (int i2 = 0; i2 < c26495cArr[i].f74282b.length; i2++) {
                    c26495cArr2[i].f74282b[i2] = c26495cArr[i].f74282b[i2];
                }
            }
        }
    }

    /* renamed from: n3.h0.a.a.g$g */
    /* loaded from: classes-dex2jar.jar:n3/h0/a/a/g$g.class */
    public static class C26266g {

        /* renamed from: q */
        public static final Matrix f73227q = new Matrix();

        /* renamed from: a */
        public final Path f73228a;

        /* renamed from: b */
        public final Path f73229b;

        /* renamed from: c */
        public final Matrix f73230c;

        /* renamed from: d */
        public Paint f73231d;

        /* renamed from: e */
        public Paint f73232e;

        /* renamed from: f */
        public PathMeasure f73233f;

        /* renamed from: g */
        public int f73234g;

        /* renamed from: h */
        public final C26263d f73235h;

        /* renamed from: i */
        public float f73236i;

        /* renamed from: j */
        public float f73237j;

        /* renamed from: k */
        public float f73238k;

        /* renamed from: l */
        public float f73239l;

        /* renamed from: m */
        public int f73240m;

        /* renamed from: n */
        public String f73241n;

        /* renamed from: o */
        public Boolean f73242o;

        /* renamed from: p */
        public final C26174a<String, Object> f73243p;

        public C26266g() {
            this.f73230c = new Matrix();
            this.f73236i = 0.0f;
            this.f73237j = 0.0f;
            this.f73238k = 0.0f;
            this.f73239l = 0.0f;
            this.f73240m = 255;
            this.f73241n = null;
            this.f73242o = null;
            this.f73243p = new C26174a<>();
            this.f73235h = new C26263d();
            this.f73228a = new Path();
            this.f73229b = new Path();
        }

        public C26266g(C26266g c26266g) {
            this.f73230c = new Matrix();
            this.f73236i = 0.0f;
            this.f73237j = 0.0f;
            this.f73238k = 0.0f;
            this.f73239l = 0.0f;
            this.f73240m = 255;
            this.f73241n = null;
            this.f73242o = null;
            C26174a<String, Object> c26174a = new C26174a<>();
            this.f73243p = c26174a;
            this.f73235h = new C26263d(c26266g.f73235h, c26174a);
            this.f73228a = new Path(c26266g.f73228a);
            this.f73229b = new Path(c26266g.f73229b);
            this.f73236i = c26266g.f73236i;
            this.f73237j = c26266g.f73237j;
            this.f73238k = c26266g.f73238k;
            this.f73239l = c26266g.f73239l;
            this.f73234g = c26266g.f73234g;
            this.f73240m = c26266g.f73240m;
            this.f73241n = c26266g.f73241n;
            String str = c26266g.f73241n;
            if (str != null) {
                c26174a.put(str, this);
            }
            this.f73242o = c26266g.f73242o;
        }

        /* renamed from: a */
        public final void m2242a(C26263d c26263d, Matrix matrix, Canvas canvas, int i, int i2, ColorFilter colorFilter) {
            c26263d.f73210a.set(matrix);
            c26263d.f73210a.preConcat(c26263d.f73219j);
            canvas.save();
            C26266g c26266g = this;
            for (int i3 = 0; i3 < c26263d.f73211b.size(); i3++) {
                c cVar = (AbstractC26264e) c26263d.f73211b.get(i3);
                if (cVar instanceof C26263d) {
                    m2242a((C26263d) cVar, c26263d.f73210a, canvas, i, i2, colorFilter);
                } else if (cVar instanceof AbstractC26265f) {
                    c cVar2 = (AbstractC26265f) cVar;
                    float f = i / c26266g.f73238k;
                    float f2 = i2 / c26266g.f73239l;
                    float min = Math.min(f, f2);
                    Matrix matrix2 = c26263d.f73210a;
                    c26266g.f73230c.set(matrix2);
                    c26266g.f73230c.postScale(f, f2);
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
                        c26266g = this;
                    } else {
                        Path path = this.f73228a;
                        Objects.requireNonNull(cVar2);
                        path.reset();
                        C26495c[] c26495cArr = cVar2.f73223a;
                        if (c26495cArr != null) {
                            C26495c.m1741b(c26495cArr, path);
                        }
                        Path path2 = this.f73228a;
                        this.f73229b.reset();
                        if (cVar2.m2243c()) {
                            this.f73229b.setFillType(cVar2.f73225c == 0 ? Path.FillType.WINDING : Path.FillType.EVEN_ODD);
                            this.f73229b.addPath(path2, this.f73230c);
                            canvas.clipPath(this.f73229b);
                            c26266g = this;
                        } else {
                            c cVar3 = cVar2;
                            float f7 = cVar3.k;
                            if (f7 != 0.0f || cVar3.l != 1.0f) {
                                float f8 = cVar3.m;
                                float f9 = cVar3.l;
                                if (this.f73233f == null) {
                                    this.f73233f = new PathMeasure();
                                }
                                this.f73233f.setPath(this.f73228a, false);
                                float length = this.f73233f.getLength();
                                float f10 = ((f7 + f8) % 1.0f) * length;
                                float f11 = ((f9 + f8) % 1.0f) * length;
                                path2.reset();
                                if (f10 > f11) {
                                    this.f73233f.getSegment(f10, length, path2, true);
                                    this.f73233f.getSegment(0.0f, f11, path2, true);
                                } else {
                                    this.f73233f.getSegment(f10, f11, path2, true);
                                }
                                path2.rLineTo(0.0f, 0.0f);
                            }
                            this.f73229b.addPath(path2, this.f73230c);
                            C26482b c26482b = cVar3.h;
                            if (c26482b.m1768b() || c26482b.f74251c != 0) {
                                C26482b c26482b2 = cVar3.h;
                                if (this.f73232e == null) {
                                    Paint paint = new Paint(1);
                                    this.f73232e = paint;
                                    paint.setStyle(Paint.Style.FILL);
                                }
                                Paint paint2 = this.f73232e;
                                if (c26482b2.m1768b()) {
                                    Shader shader = c26482b2.f74249a;
                                    shader.setLocalMatrix(this.f73230c);
                                    paint2.setShader(shader);
                                    paint2.setAlpha(Math.round(cVar3.j * 255.0f));
                                } else {
                                    paint2.setShader(null);
                                    paint2.setAlpha(255);
                                    int i4 = c26482b2.f74251c;
                                    float f12 = cVar3.j;
                                    PorterDuff.Mode mode = C26261g.f73201j;
                                    paint2.setColor((i4 & 16777215) | (((int) (Color.alpha(i4) * f12)) << 24));
                                }
                                paint2.setColorFilter(colorFilter);
                                this.f73229b.setFillType(cVar3.f73225c == 0 ? Path.FillType.WINDING : Path.FillType.EVEN_ODD);
                                canvas.drawPath(this.f73229b, paint2);
                            }
                            C26482b c26482b3 = cVar3.f;
                            c26266g = this;
                            if (c26482b3.m1768b() || c26482b3.f74251c != 0) {
                                C26482b c26482b4 = cVar3.f;
                                if (this.f73231d == null) {
                                    Paint paint3 = new Paint(1);
                                    this.f73231d = paint3;
                                    paint3.setStyle(Paint.Style.STROKE);
                                }
                                Paint paint4 = this.f73231d;
                                Paint.Join join = cVar3.o;
                                if (join != null) {
                                    paint4.setStrokeJoin(join);
                                }
                                Paint.Cap cap = cVar3.n;
                                if (cap != null) {
                                    paint4.setStrokeCap(cap);
                                }
                                paint4.setStrokeMiter(cVar3.p);
                                if (c26482b4.m1768b()) {
                                    Shader shader2 = c26482b4.f74249a;
                                    shader2.setLocalMatrix(this.f73230c);
                                    paint4.setShader(shader2);
                                    paint4.setAlpha(Math.round(cVar3.i * 255.0f));
                                } else {
                                    paint4.setShader(null);
                                    paint4.setAlpha(255);
                                    int i5 = c26482b4.f74251c;
                                    float f13 = cVar3.i;
                                    PorterDuff.Mode mode2 = C26261g.f73201j;
                                    paint4.setColor((i5 & 16777215) | (((int) (Color.alpha(i5) * f13)) << 24));
                                }
                                paint4.setColorFilter(colorFilter);
                                paint4.setStrokeWidth(cVar3.g * abs * min);
                                canvas.drawPath(this.f73229b, paint4);
                                c26266g = this;
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
            return this.f73240m;
        }

        public void setAlpha(float f) {
            setRootAlpha((int) (f * 255.0f));
        }

        public void setRootAlpha(int i) {
            this.f73240m = i;
        }
    }

    /* renamed from: n3.h0.a.a.g$h */
    /* loaded from: classes-dex2jar.jar:n3/h0/a/a/g$h.class */
    public static class C26267h extends Drawable.ConstantState {

        /* renamed from: a */
        public int f73244a;

        /* renamed from: b */
        public C26266g f73245b;

        /* renamed from: c */
        public ColorStateList f73246c;

        /* renamed from: d */
        public PorterDuff.Mode f73247d;

        /* renamed from: e */
        public boolean f73248e;

        /* renamed from: f */
        public Bitmap f73249f;

        /* renamed from: g */
        public ColorStateList f73250g;

        /* renamed from: h */
        public PorterDuff.Mode f73251h;

        /* renamed from: i */
        public int f73252i;

        /* renamed from: j */
        public boolean f73253j;

        /* renamed from: k */
        public boolean f73254k;

        /* renamed from: l */
        public Paint f73255l;

        public C26267h() {
            this.f73246c = null;
            this.f73247d = C26261g.f73201j;
            this.f73245b = new C26266g();
        }

        public C26267h(C26267h c26267h) {
            this.f73246c = null;
            this.f73247d = C26261g.f73201j;
            if (c26267h != null) {
                this.f73244a = c26267h.f73244a;
                C26266g c26266g = new C26266g(c26267h.f73245b);
                this.f73245b = c26266g;
                if (c26267h.f73245b.f73232e != null) {
                    c26266g.f73232e = new Paint(c26267h.f73245b.f73232e);
                }
                if (c26267h.f73245b.f73231d != null) {
                    this.f73245b.f73231d = new Paint(c26267h.f73245b.f73231d);
                }
                this.f73246c = c26267h.f73246c;
                this.f73247d = c26267h.f73247d;
                this.f73248e = c26267h.f73248e;
            }
        }

        /* renamed from: a */
        public boolean m2241a() {
            C26266g c26266g = this.f73245b;
            if (c26266g.f73242o == null) {
                c26266g.f73242o = Boolean.valueOf(c26266g.f73235h.mo2245a());
            }
            return c26266g.f73242o.booleanValue();
        }

        /* renamed from: b */
        public void m2240b(int i, int i2) {
            this.f73249f.eraseColor(0);
            Canvas canvas = new Canvas(this.f73249f);
            C26266g c26266g = this.f73245b;
            c26266g.m2242a(c26266g.f73235h, C26266g.f73227q, canvas, i, i2, null);
        }

        @Override // android.graphics.drawable.Drawable.ConstantState
        public int getChangingConfigurations() {
            return this.f73244a;
        }

        @Override // android.graphics.drawable.Drawable.ConstantState
        public Drawable newDrawable() {
            return new C26261g(this);
        }

        @Override // android.graphics.drawable.Drawable.ConstantState
        public Drawable newDrawable(Resources resources) {
            return new C26261g(this);
        }
    }

    /* renamed from: n3.h0.a.a.g$i */
    /* loaded from: classes-dex2jar.jar:n3/h0/a/a/g$i.class */
    public static class C26268i extends Drawable.ConstantState {

        /* renamed from: a */
        public final Drawable.ConstantState f73256a;

        public C26268i(Drawable.ConstantState constantState) {
            this.f73256a = constantState;
        }

        @Override // android.graphics.drawable.Drawable.ConstantState
        public boolean canApplyTheme() {
            return this.f73256a.canApplyTheme();
        }

        @Override // android.graphics.drawable.Drawable.ConstantState
        public int getChangingConfigurations() {
            return this.f73256a.getChangingConfigurations();
        }

        @Override // android.graphics.drawable.Drawable.ConstantState
        public Drawable newDrawable() {
            C26261g c26261g = new C26261g();
            c26261g.f73200a = (VectorDrawable) this.f73256a.newDrawable();
            return c26261g;
        }

        @Override // android.graphics.drawable.Drawable.ConstantState
        public Drawable newDrawable(Resources resources) {
            C26261g c26261g = new C26261g();
            c26261g.f73200a = (VectorDrawable) this.f73256a.newDrawable(resources);
            return c26261g;
        }

        @Override // android.graphics.drawable.Drawable.ConstantState
        public Drawable newDrawable(Resources resources, Resources.Theme theme) {
            C26261g c26261g = new C26261g();
            c26261g.f73200a = (VectorDrawable) this.f73256a.newDrawable(resources, theme);
            return c26261g;
        }
    }

    public C26261g() {
        this.f73206f = true;
        this.f73207g = new float[9];
        this.f73208h = new Matrix();
        this.f73209i = new Rect();
        this.f73202b = new C26267h();
    }

    public C26261g(C26267h c26267h) {
        this.f73206f = true;
        this.f73207g = new float[9];
        this.f73208h = new Matrix();
        this.f73209i = new Rect();
        this.f73202b = c26267h;
        this.f73203c = m2247b(c26267h.f73246c, c26267h.f73247d);
    }

    /* renamed from: a */
    public static C26261g m2248a(Resources resources, XmlPullParser xmlPullParser, AttributeSet attributeSet, Resources.Theme theme) throws XmlPullParserException, IOException {
        C26261g c26261g = new C26261g();
        c26261g.inflate(resources, xmlPullParser, attributeSet, theme);
        return c26261g;
    }

    /* renamed from: b */
    public PorterDuffColorFilter m2247b(ColorStateList colorStateList, PorterDuff.Mode mode) {
        if (colorStateList == null || mode == null) {
            return null;
        }
        return new PorterDuffColorFilter(colorStateList.getColorForState(getState(), 0), mode);
    }

    @Override // android.graphics.drawable.Drawable
    public boolean canApplyTheme() {
        Drawable drawable = this.f73200a;
        if (drawable != null) {
            drawable.canApplyTheme();
            return false;
        }
        return false;
    }

    /* JADX WARN: Code restructure failed: missing block: B:40:0x0158, code lost:
        if ((r0 == r0.getWidth() && r0 == r0.f73249f.getHeight()) == false) goto L41;
     */
    @Override // android.graphics.drawable.Drawable
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void draw(android.graphics.Canvas r7) {
        /*
            Method dump skipped, instructions count: 645
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: p1727n3.p1792h0.p1793a.p1794a.C26261g.draw(android.graphics.Canvas):void");
    }

    @Override // android.graphics.drawable.Drawable
    public int getAlpha() {
        Drawable drawable = this.f73200a;
        return drawable != null ? drawable.getAlpha() : this.f73202b.f73245b.getRootAlpha();
    }

    @Override // android.graphics.drawable.Drawable
    public int getChangingConfigurations() {
        Drawable drawable = this.f73200a;
        return drawable != null ? drawable.getChangingConfigurations() : super.getChangingConfigurations() | this.f73202b.getChangingConfigurations();
    }

    @Override // android.graphics.drawable.Drawable
    public ColorFilter getColorFilter() {
        Drawable drawable = this.f73200a;
        return drawable != null ? drawable.getColorFilter() : this.f73204d;
    }

    @Override // android.graphics.drawable.Drawable
    public Drawable.ConstantState getConstantState() {
        if (this.f73200a == null || Build.VERSION.SDK_INT < 24) {
            this.f73202b.f73244a = getChangingConfigurations();
            return this.f73202b;
        }
        return new C26268i(this.f73200a.getConstantState());
    }

    @Override // android.graphics.drawable.Drawable
    public int getIntrinsicHeight() {
        Drawable drawable = this.f73200a;
        return drawable != null ? drawable.getIntrinsicHeight() : (int) this.f73202b.f73245b.f73237j;
    }

    @Override // android.graphics.drawable.Drawable
    public int getIntrinsicWidth() {
        Drawable drawable = this.f73200a;
        return drawable != null ? drawable.getIntrinsicWidth() : (int) this.f73202b.f73245b.f73236i;
    }

    @Override // android.graphics.drawable.Drawable
    public int getOpacity() {
        Drawable drawable = this.f73200a;
        if (drawable != null) {
            return drawable.getOpacity();
        }
        return -3;
    }

    @Override // android.graphics.drawable.Drawable
    public void inflate(Resources resources, XmlPullParser xmlPullParser, AttributeSet attributeSet) throws XmlPullParserException, IOException {
        Drawable drawable = this.f73200a;
        if (drawable != null) {
            drawable.inflate(resources, xmlPullParser, attributeSet);
        } else {
            inflate(resources, xmlPullParser, attributeSet, null);
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:200:0x08d6  */
    /* JADX WARN: Removed duplicated region for block: B:40:0x017a  */
    /* JADX WARN: Removed duplicated region for block: B:43:0x0195  */
    /* JADX WARN: Removed duplicated region for block: B:46:0x01ba  */
    /* JADX WARN: Removed duplicated region for block: B:49:0x01e0  */
    /* JADX WARN: Removed duplicated region for block: B:52:0x01fc  */
    @Override // android.graphics.drawable.Drawable
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void inflate(android.content.res.Resources r9, org.xmlpull.v1.XmlPullParser r10, android.util.AttributeSet r11, android.content.res.Resources.Theme r12) throws org.xmlpull.v1.XmlPullParserException, java.io.IOException {
        /*
            Method dump skipped, instructions count: 2305
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: p1727n3.p1792h0.p1793a.p1794a.C26261g.inflate(android.content.res.Resources, org.xmlpull.v1.XmlPullParser, android.util.AttributeSet, android.content.res.Resources$Theme):void");
    }

    @Override // android.graphics.drawable.Drawable
    public void invalidateSelf() {
        Drawable drawable = this.f73200a;
        if (drawable != null) {
            drawable.invalidateSelf();
        } else {
            super.invalidateSelf();
        }
    }

    @Override // android.graphics.drawable.Drawable
    public boolean isAutoMirrored() {
        Drawable drawable = this.f73200a;
        return drawable != null ? drawable.isAutoMirrored() : this.f73202b.f73248e;
    }

    @Override // android.graphics.drawable.Drawable
    public boolean isStateful() {
        C26267h c26267h;
        ColorStateList colorStateList;
        Drawable drawable = this.f73200a;
        if (drawable != null) {
            return drawable.isStateful();
        }
        return super.isStateful() || ((c26267h = this.f73202b) != null && (c26267h.m2241a() || ((colorStateList = this.f73202b.f73246c) != null && colorStateList.isStateful())));
    }

    @Override // android.graphics.drawable.Drawable
    public Drawable mutate() {
        Drawable drawable = this.f73200a;
        if (drawable != null) {
            drawable.mutate();
            return this;
        }
        if (!this.f73205e && super.mutate() == this) {
            this.f73202b = new C26267h(this.f73202b);
            this.f73205e = true;
        }
        return this;
    }

    @Override // android.graphics.drawable.Drawable
    public void onBoundsChange(Rect rect) {
        Drawable drawable = this.f73200a;
        if (drawable != null) {
            drawable.setBounds(rect);
        }
    }

    @Override // android.graphics.drawable.Drawable
    public boolean onStateChange(int[] iArr) {
        Drawable drawable = this.f73200a;
        if (drawable != null) {
            return drawable.setState(iArr);
        }
        C26267h c26267h = this.f73202b;
        ColorStateList colorStateList = c26267h.f73246c;
        boolean z = false;
        if (colorStateList != null) {
            PorterDuff.Mode mode = c26267h.f73247d;
            z = false;
            if (mode != null) {
                this.f73203c = m2247b(colorStateList, mode);
                invalidateSelf();
                z = true;
            }
        }
        if (c26267h.m2241a()) {
            boolean mo2244b = c26267h.f73245b.f73235h.mo2244b(iArr);
            c26267h.f73254k |= mo2244b;
            if (mo2244b) {
                invalidateSelf();
                z = true;
            }
        }
        return z;
    }

    @Override // android.graphics.drawable.Drawable
    public void scheduleSelf(Runnable runnable, long j) {
        Drawable drawable = this.f73200a;
        if (drawable != null) {
            drawable.scheduleSelf(runnable, j);
        } else {
            super.scheduleSelf(runnable, j);
        }
    }

    @Override // android.graphics.drawable.Drawable
    public void setAlpha(int i) {
        Drawable drawable = this.f73200a;
        if (drawable != null) {
            drawable.setAlpha(i);
        } else if (this.f73202b.f73245b.getRootAlpha() == i) {
        } else {
            this.f73202b.f73245b.setRootAlpha(i);
            invalidateSelf();
        }
    }

    @Override // android.graphics.drawable.Drawable
    public void setAutoMirrored(boolean z) {
        Drawable drawable = this.f73200a;
        if (drawable != null) {
            drawable.setAutoMirrored(z);
        } else {
            this.f73202b.f73248e = z;
        }
    }

    @Override // android.graphics.drawable.Drawable
    public void setColorFilter(ColorFilter colorFilter) {
        Drawable drawable = this.f73200a;
        if (drawable != null) {
            drawable.setColorFilter(colorFilter);
            return;
        }
        this.f73204d = colorFilter;
        invalidateSelf();
    }

    @Override // android.graphics.drawable.Drawable
    public void setTint(int i) {
        Drawable drawable = this.f73200a;
        if (drawable != null) {
            MediaSessionCompat.m43188w1(drawable, i);
        } else {
            setTintList(ColorStateList.valueOf(i));
        }
    }

    @Override // android.graphics.drawable.Drawable
    public void setTintList(ColorStateList colorStateList) {
        Drawable drawable = this.f73200a;
        if (drawable != null) {
            MediaSessionCompat.m43185x1(drawable, colorStateList);
            return;
        }
        C26267h c26267h = this.f73202b;
        if (c26267h.f73246c == colorStateList) {
            return;
        }
        c26267h.f73246c = colorStateList;
        this.f73203c = m2247b(colorStateList, c26267h.f73247d);
        invalidateSelf();
    }

    @Override // android.graphics.drawable.Drawable
    public void setTintMode(PorterDuff.Mode mode) {
        Drawable drawable = this.f73200a;
        if (drawable != null) {
            MediaSessionCompat.m43182y1(drawable, mode);
            return;
        }
        C26267h c26267h = this.f73202b;
        if (c26267h.f73247d == mode) {
            return;
        }
        c26267h.f73247d = mode;
        this.f73203c = m2247b(c26267h.f73246c, mode);
        invalidateSelf();
    }

    @Override // android.graphics.drawable.Drawable
    public boolean setVisible(boolean z, boolean z2) {
        Drawable drawable = this.f73200a;
        return drawable != null ? drawable.setVisible(z, z2) : super.setVisible(z, z2);
    }

    @Override // android.graphics.drawable.Drawable
    public void unscheduleSelf(Runnable runnable) {
        Drawable drawable = this.f73200a;
        if (drawable != null) {
            drawable.unscheduleSelf(runnable);
        } else {
            super.unscheduleSelf(runnable);
        }
    }
}

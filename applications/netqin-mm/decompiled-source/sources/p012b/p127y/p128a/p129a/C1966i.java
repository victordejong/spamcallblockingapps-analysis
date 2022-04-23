package p012b.p127y.p128a.p129a;

import android.content.res.ColorStateList;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.content.res.XmlResourceParser;
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
import android.util.Log;
import android.util.Xml;
import androidx.recyclerview.widget.RecyclerView;
import java.io.IOException;
import java.util.ArrayDeque;
import java.util.ArrayList;
import org.xmlpull.v1.XmlPullParser;
import org.xmlpull.v1.XmlPullParserException;
import p012b.p035f.C0780a;
import p012b.p042i.p044i.p045c.C0873b;
import p012b.p042i.p044i.p045c.C0882f;
import p012b.p042i.p044i.p045c.C0889g;
import p012b.p042i.p046j.C0893d;
import p012b.p042i.p046j.p047m.C0907a;
/* renamed from: b.y.a.a.i */
/* loaded from: classes-dex2jar.jar:b/y/a/a/i.class */
public class C1966i extends AbstractC1965h {

    /* renamed from: j */
    public static final PorterDuff.Mode f7719j = PorterDuff.Mode.SRC_IN;

    /* renamed from: b */
    public C1974h f7720b;

    /* renamed from: c */
    public PorterDuffColorFilter f7721c;

    /* renamed from: d */
    public ColorFilter f7722d;

    /* renamed from: e */
    public boolean f7723e;

    /* renamed from: f */
    public boolean f7724f;

    /* renamed from: g */
    public final float[] f7725g;

    /* renamed from: h */
    public final Matrix f7726h;

    /* renamed from: i */
    public final Rect f7727i;

    /* renamed from: b.y.a.a.i$b */
    /* loaded from: classes-dex2jar.jar:b/y/a/a/i$b.class */
    public static class C1968b extends AbstractC1972f {
        public C1968b() {
        }

        public C1968b(C1968b bVar) {
            super(bVar);
        }

        /* renamed from: a */
        public void m31421a(Resources resources, AttributeSet attributeSet, Resources.Theme theme, XmlPullParser xmlPullParser) {
            if (C0889g.m35618a(xmlPullParser, "pathData")) {
                TypedArray a = C0889g.m35626a(resources, theme, attributeSet, C1954a.f7694d);
                m31420a(a, xmlPullParser);
                a.recycle();
            }
        }

        /* renamed from: a */
        public final void m31420a(TypedArray typedArray, XmlPullParser xmlPullParser) {
            String string = typedArray.getString(0);
            if (string != null) {
                this.f7754b = string;
            }
            String string2 = typedArray.getString(1);
            if (string2 != null) {
                this.f7753a = C0893d.m35598a(string2);
            }
            this.f7755c = C0889g.m35616b(typedArray, xmlPullParser, "fillType", 2, 0);
        }

        @Override // p012b.p127y.p128a.p129a.C1966i.AbstractC1972f
        /* renamed from: b */
        public boolean mo31409b() {
            return true;
        }
    }

    /* renamed from: b.y.a.a.i$c */
    /* loaded from: classes-dex2jar.jar:b/y/a/a/i$c.class */
    public static class C1969c extends AbstractC1972f {

        /* renamed from: e */
        public int[] f7728e;

        /* renamed from: f */
        public C0873b f7729f;

        /* renamed from: g */
        public float f7730g;

        /* renamed from: h */
        public C0873b f7731h;

        /* renamed from: i */
        public float f7732i;

        /* renamed from: j */
        public float f7733j;

        /* renamed from: k */
        public float f7734k;

        /* renamed from: l */
        public float f7735l;

        /* renamed from: m */
        public float f7736m;

        /* renamed from: n */
        public Paint.Cap f7737n;

        /* renamed from: o */
        public Paint.Join f7738o;

        /* renamed from: p */
        public float f7739p;

        public C1969c() {
            this.f7730g = 0.0f;
            this.f7732i = 1.0f;
            this.f7733j = 1.0f;
            this.f7734k = 0.0f;
            this.f7735l = 1.0f;
            this.f7736m = 0.0f;
            this.f7737n = Paint.Cap.BUTT;
            this.f7738o = Paint.Join.MITER;
            this.f7739p = 4.0f;
        }

        public C1969c(C1969c cVar) {
            super(cVar);
            this.f7730g = 0.0f;
            this.f7732i = 1.0f;
            this.f7733j = 1.0f;
            this.f7734k = 0.0f;
            this.f7735l = 1.0f;
            this.f7736m = 0.0f;
            this.f7737n = Paint.Cap.BUTT;
            this.f7738o = Paint.Join.MITER;
            this.f7739p = 4.0f;
            this.f7728e = cVar.f7728e;
            this.f7729f = cVar.f7729f;
            this.f7730g = cVar.f7730g;
            this.f7732i = cVar.f7732i;
            this.f7731h = cVar.f7731h;
            this.f7755c = cVar.f7755c;
            this.f7733j = cVar.f7733j;
            this.f7734k = cVar.f7734k;
            this.f7735l = cVar.f7735l;
            this.f7736m = cVar.f7736m;
            this.f7737n = cVar.f7737n;
            this.f7738o = cVar.f7738o;
            this.f7739p = cVar.f7739p;
        }

        /* renamed from: a */
        public final Paint.Cap m31419a(int i, Paint.Cap cap) {
            return i != 0 ? i != 1 ? i != 2 ? cap : Paint.Cap.SQUARE : Paint.Cap.ROUND : Paint.Cap.BUTT;
        }

        /* renamed from: a */
        public final Paint.Join m31418a(int i, Paint.Join join) {
            return i != 0 ? i != 1 ? i != 2 ? join : Paint.Join.BEVEL : Paint.Join.ROUND : Paint.Join.MITER;
        }

        /* renamed from: a */
        public void m31417a(Resources resources, AttributeSet attributeSet, Resources.Theme theme, XmlPullParser xmlPullParser) {
            TypedArray a = C0889g.m35626a(resources, theme, attributeSet, C1954a.f7693c);
            m31416a(a, xmlPullParser, theme);
            a.recycle();
        }

        /* renamed from: a */
        public final void m31416a(TypedArray typedArray, XmlPullParser xmlPullParser, Resources.Theme theme) {
            this.f7728e = null;
            if (C0889g.m35618a(xmlPullParser, "pathData")) {
                String string = typedArray.getString(0);
                if (string != null) {
                    this.f7754b = string;
                }
                String string2 = typedArray.getString(2);
                if (string2 != null) {
                    this.f7753a = C0893d.m35598a(string2);
                }
                this.f7731h = C0889g.m35624a(typedArray, xmlPullParser, theme, "fillColor", 1, 0);
                this.f7733j = C0889g.m35622a(typedArray, xmlPullParser, "fillAlpha", 12, this.f7733j);
                this.f7737n = m31419a(C0889g.m35616b(typedArray, xmlPullParser, "strokeLineCap", 8, -1), this.f7737n);
                this.f7738o = m31418a(C0889g.m35616b(typedArray, xmlPullParser, "strokeLineJoin", 9, -1), this.f7738o);
                this.f7739p = C0889g.m35622a(typedArray, xmlPullParser, "strokeMiterLimit", 10, this.f7739p);
                this.f7729f = C0889g.m35624a(typedArray, xmlPullParser, theme, "strokeColor", 3, 0);
                this.f7732i = C0889g.m35622a(typedArray, xmlPullParser, "strokeAlpha", 11, this.f7732i);
                this.f7730g = C0889g.m35622a(typedArray, xmlPullParser, "strokeWidth", 4, this.f7730g);
                this.f7735l = C0889g.m35622a(typedArray, xmlPullParser, "trimPathEnd", 6, this.f7735l);
                this.f7736m = C0889g.m35622a(typedArray, xmlPullParser, "trimPathOffset", 7, this.f7736m);
                this.f7734k = C0889g.m35622a(typedArray, xmlPullParser, "trimPathStart", 5, this.f7734k);
                this.f7755c = C0889g.m35616b(typedArray, xmlPullParser, "fillType", 13, this.f7755c);
            }
        }

        @Override // p012b.p127y.p128a.p129a.C1966i.AbstractC1971e
        /* renamed from: a */
        public boolean mo31412a() {
            return this.f7731h.m35664d() || this.f7729f.m35664d();
        }

        @Override // p012b.p127y.p128a.p129a.C1966i.AbstractC1971e
        /* renamed from: a */
        public boolean mo31411a(int[] iArr) {
            return this.f7729f.m35669a(iArr) | this.f7731h.m35669a(iArr);
        }

        public float getFillAlpha() {
            return this.f7733j;
        }

        public int getFillColor() {
            return this.f7731h.m35674a();
        }

        public float getStrokeAlpha() {
            return this.f7732i;
        }

        public int getStrokeColor() {
            return this.f7729f.m35674a();
        }

        public float getStrokeWidth() {
            return this.f7730g;
        }

        public float getTrimPathEnd() {
            return this.f7735l;
        }

        public float getTrimPathOffset() {
            return this.f7736m;
        }

        public float getTrimPathStart() {
            return this.f7734k;
        }

        public void setFillAlpha(float f) {
            this.f7733j = f;
        }

        public void setFillColor(int i) {
            this.f7731h.m35673a(i);
        }

        public void setStrokeAlpha(float f) {
            this.f7732i = f;
        }

        public void setStrokeColor(int i) {
            this.f7729f.m35673a(i);
        }

        public void setStrokeWidth(float f) {
            this.f7730g = f;
        }

        public void setTrimPathEnd(float f) {
            this.f7735l = f;
        }

        public void setTrimPathOffset(float f) {
            this.f7736m = f;
        }

        public void setTrimPathStart(float f) {
            this.f7734k = f;
        }
    }

    /* renamed from: b.y.a.a.i$d */
    /* loaded from: classes-dex2jar.jar:b/y/a/a/i$d.class */
    public static class C1970d extends AbstractC1971e {

        /* renamed from: a */
        public final Matrix f7740a;

        /* renamed from: b */
        public final ArrayList<AbstractC1971e> f7741b;

        /* renamed from: c */
        public float f7742c;

        /* renamed from: d */
        public float f7743d;

        /* renamed from: e */
        public float f7744e;

        /* renamed from: f */
        public float f7745f;

        /* renamed from: g */
        public float f7746g;

        /* renamed from: h */
        public float f7747h;

        /* renamed from: i */
        public float f7748i;

        /* renamed from: j */
        public final Matrix f7749j;

        /* renamed from: k */
        public int f7750k;

        /* renamed from: l */
        public int[] f7751l;

        /* renamed from: m */
        public String f7752m;

        public C1970d() {
            super();
            this.f7740a = new Matrix();
            this.f7741b = new ArrayList<>();
            this.f7742c = 0.0f;
            this.f7743d = 0.0f;
            this.f7744e = 0.0f;
            this.f7745f = 1.0f;
            this.f7746g = 1.0f;
            this.f7747h = 0.0f;
            this.f7748i = 0.0f;
            this.f7749j = new Matrix();
            this.f7752m = null;
        }

        public C1970d(C1970d dVar, C0780a<String, Object> aVar) {
            super();
            AbstractC1972f fVar;
            this.f7740a = new Matrix();
            this.f7741b = new ArrayList<>();
            this.f7742c = 0.0f;
            this.f7743d = 0.0f;
            this.f7744e = 0.0f;
            this.f7745f = 1.0f;
            this.f7746g = 1.0f;
            this.f7747h = 0.0f;
            this.f7748i = 0.0f;
            this.f7749j = new Matrix();
            this.f7752m = null;
            this.f7742c = dVar.f7742c;
            this.f7743d = dVar.f7743d;
            this.f7744e = dVar.f7744e;
            this.f7745f = dVar.f7745f;
            this.f7746g = dVar.f7746g;
            this.f7747h = dVar.f7747h;
            this.f7748i = dVar.f7748i;
            this.f7751l = dVar.f7751l;
            String str = dVar.f7752m;
            this.f7752m = str;
            this.f7750k = dVar.f7750k;
            if (str != null) {
                aVar.put(str, this);
            }
            this.f7749j.set(dVar.f7749j);
            ArrayList<AbstractC1971e> arrayList = dVar.f7741b;
            for (int i = 0; i < arrayList.size(); i++) {
                AbstractC1971e eVar = arrayList.get(i);
                if (eVar instanceof C1970d) {
                    this.f7741b.add(new C1970d((C1970d) eVar, aVar));
                } else {
                    if (eVar instanceof C1969c) {
                        fVar = new C1969c((C1969c) eVar);
                    } else if (eVar instanceof C1968b) {
                        fVar = new C1968b((C1968b) eVar);
                    } else {
                        throw new IllegalStateException("Unknown object in the tree!");
                    }
                    this.f7741b.add(fVar);
                    String str2 = fVar.f7754b;
                    if (str2 != null) {
                        aVar.put(str2, fVar);
                    }
                }
            }
        }

        /* renamed from: a */
        public void m31415a(Resources resources, AttributeSet attributeSet, Resources.Theme theme, XmlPullParser xmlPullParser) {
            TypedArray a = C0889g.m35626a(resources, theme, attributeSet, C1954a.f7692b);
            m31414a(a, xmlPullParser);
            a.recycle();
        }

        /* renamed from: a */
        public final void m31414a(TypedArray typedArray, XmlPullParser xmlPullParser) {
            this.f7751l = null;
            this.f7742c = C0889g.m35622a(typedArray, xmlPullParser, "rotation", 5, this.f7742c);
            this.f7743d = typedArray.getFloat(1, this.f7743d);
            this.f7744e = typedArray.getFloat(2, this.f7744e);
            this.f7745f = C0889g.m35622a(typedArray, xmlPullParser, "scaleX", 3, this.f7745f);
            this.f7746g = C0889g.m35622a(typedArray, xmlPullParser, "scaleY", 4, this.f7746g);
            this.f7747h = C0889g.m35622a(typedArray, xmlPullParser, "translateX", 6, this.f7747h);
            this.f7748i = C0889g.m35622a(typedArray, xmlPullParser, "translateY", 7, this.f7748i);
            String string = typedArray.getString(0);
            if (string != null) {
                this.f7752m = string;
            }
            m31413b();
        }

        @Override // p012b.p127y.p128a.p129a.C1966i.AbstractC1971e
        /* renamed from: a */
        public boolean mo31412a() {
            for (int i = 0; i < this.f7741b.size(); i++) {
                if (this.f7741b.get(i).mo31412a()) {
                    return true;
                }
            }
            return false;
        }

        @Override // p012b.p127y.p128a.p129a.C1966i.AbstractC1971e
        /* renamed from: a */
        public boolean mo31411a(int[] iArr) {
            boolean z = false;
            for (int i = 0; i < this.f7741b.size(); i++) {
                z |= this.f7741b.get(i).mo31411a(iArr);
            }
            return z;
        }

        /* renamed from: b */
        public final void m31413b() {
            this.f7749j.reset();
            this.f7749j.postTranslate(-this.f7743d, -this.f7744e);
            this.f7749j.postScale(this.f7745f, this.f7746g);
            this.f7749j.postRotate(this.f7742c, 0.0f, 0.0f);
            this.f7749j.postTranslate(this.f7747h + this.f7743d, this.f7748i + this.f7744e);
        }

        public String getGroupName() {
            return this.f7752m;
        }

        public Matrix getLocalMatrix() {
            return this.f7749j;
        }

        public float getPivotX() {
            return this.f7743d;
        }

        public float getPivotY() {
            return this.f7744e;
        }

        public float getRotation() {
            return this.f7742c;
        }

        public float getScaleX() {
            return this.f7745f;
        }

        public float getScaleY() {
            return this.f7746g;
        }

        public float getTranslateX() {
            return this.f7747h;
        }

        public float getTranslateY() {
            return this.f7748i;
        }

        public void setPivotX(float f) {
            if (f != this.f7743d) {
                this.f7743d = f;
                m31413b();
            }
        }

        public void setPivotY(float f) {
            if (f != this.f7744e) {
                this.f7744e = f;
                m31413b();
            }
        }

        public void setRotation(float f) {
            if (f != this.f7742c) {
                this.f7742c = f;
                m31413b();
            }
        }

        public void setScaleX(float f) {
            if (f != this.f7745f) {
                this.f7745f = f;
                m31413b();
            }
        }

        public void setScaleY(float f) {
            if (f != this.f7746g) {
                this.f7746g = f;
                m31413b();
            }
        }

        public void setTranslateX(float f) {
            if (f != this.f7747h) {
                this.f7747h = f;
                m31413b();
            }
        }

        public void setTranslateY(float f) {
            if (f != this.f7748i) {
                this.f7748i = f;
                m31413b();
            }
        }
    }

    /* renamed from: b.y.a.a.i$e */
    /* loaded from: classes-dex2jar.jar:b/y/a/a/i$e.class */
    public static abstract class AbstractC1971e {
        public AbstractC1971e() {
        }

        /* renamed from: a */
        public boolean mo31412a() {
            return false;
        }

        /* renamed from: a */
        public boolean mo31411a(int[] iArr) {
            return false;
        }
    }

    /* renamed from: b.y.a.a.i$f */
    /* loaded from: classes-dex2jar.jar:b/y/a/a/i$f.class */
    public static abstract class AbstractC1972f extends AbstractC1971e {

        /* renamed from: a */
        public C0893d.C0895b[] f7753a;

        /* renamed from: b */
        public String f7754b;

        /* renamed from: c */
        public int f7755c;

        /* renamed from: d */
        public int f7756d;

        public AbstractC1972f() {
            super();
            this.f7753a = null;
            this.f7755c = 0;
        }

        public AbstractC1972f(AbstractC1972f fVar) {
            super();
            this.f7753a = null;
            this.f7755c = 0;
            this.f7754b = fVar.f7754b;
            this.f7756d = fVar.f7756d;
            this.f7753a = C0893d.m35593a(fVar.f7753a);
        }

        /* renamed from: a */
        public void m31410a(Path path) {
            path.reset();
            C0893d.C0895b[] bVarArr = this.f7753a;
            if (bVarArr != null) {
                C0893d.C0895b.m35584a(bVarArr, path);
            }
        }

        /* renamed from: b */
        public boolean mo31409b() {
            return false;
        }

        public C0893d.C0895b[] getPathData() {
            return this.f7753a;
        }

        public String getPathName() {
            return this.f7754b;
        }

        public void setPathData(C0893d.C0895b[] bVarArr) {
            if (!C0893d.m35592a(this.f7753a, bVarArr)) {
                this.f7753a = C0893d.m35593a(bVarArr);
            } else {
                C0893d.m35590b(this.f7753a, bVarArr);
            }
        }
    }

    /* renamed from: b.y.a.a.i$g */
    /* loaded from: classes-dex2jar.jar:b/y/a/a/i$g.class */
    public static class C1973g {

        /* renamed from: q */
        public static final Matrix f7757q = new Matrix();

        /* renamed from: a */
        public final Path f7758a;

        /* renamed from: b */
        public final Path f7759b;

        /* renamed from: c */
        public final Matrix f7760c;

        /* renamed from: d */
        public Paint f7761d;

        /* renamed from: e */
        public Paint f7762e;

        /* renamed from: f */
        public PathMeasure f7763f;

        /* renamed from: g */
        public int f7764g;

        /* renamed from: h */
        public final C1970d f7765h;

        /* renamed from: i */
        public float f7766i;

        /* renamed from: j */
        public float f7767j;

        /* renamed from: k */
        public float f7768k;

        /* renamed from: l */
        public float f7769l;

        /* renamed from: m */
        public int f7770m;

        /* renamed from: n */
        public String f7771n;

        /* renamed from: o */
        public Boolean f7772o;

        /* renamed from: p */
        public final C0780a<String, Object> f7773p;

        public C1973g() {
            this.f7760c = new Matrix();
            this.f7766i = 0.0f;
            this.f7767j = 0.0f;
            this.f7768k = 0.0f;
            this.f7769l = 0.0f;
            this.f7770m = 255;
            this.f7771n = null;
            this.f7772o = null;
            this.f7773p = new C0780a<>();
            this.f7765h = new C1970d();
            this.f7758a = new Path();
            this.f7759b = new Path();
        }

        public C1973g(C1973g gVar) {
            this.f7760c = new Matrix();
            this.f7766i = 0.0f;
            this.f7767j = 0.0f;
            this.f7768k = 0.0f;
            this.f7769l = 0.0f;
            this.f7770m = 255;
            this.f7771n = null;
            this.f7772o = null;
            C0780a<String, Object> aVar = new C0780a<>();
            this.f7773p = aVar;
            this.f7765h = new C1970d(gVar.f7765h, aVar);
            this.f7758a = new Path(gVar.f7758a);
            this.f7759b = new Path(gVar.f7759b);
            this.f7766i = gVar.f7766i;
            this.f7767j = gVar.f7767j;
            this.f7768k = gVar.f7768k;
            this.f7769l = gVar.f7769l;
            this.f7764g = gVar.f7764g;
            this.f7770m = gVar.f7770m;
            this.f7771n = gVar.f7771n;
            String str = gVar.f7771n;
            if (str != null) {
                this.f7773p.put(str, this);
            }
            this.f7772o = gVar.f7772o;
        }

        /* renamed from: a */
        public static float m31407a(float f, float f2, float f3, float f4) {
            return (f * f4) - (f2 * f3);
        }

        /* renamed from: a */
        public final float m31405a(Matrix matrix) {
            float[] fArr = {0.0f, 1.0f, 1.0f, 0.0f};
            matrix.mapVectors(fArr);
            float hypot = (float) Math.hypot(fArr[0], fArr[1]);
            float hypot2 = (float) Math.hypot(fArr[2], fArr[3]);
            float a = m31407a(fArr[0], fArr[1], fArr[2], fArr[3]);
            float max = Math.max(hypot, hypot2);
            float f = 0.0f;
            if (max > 0.0f) {
                f = Math.abs(a) / max;
            }
            return f;
        }

        /* renamed from: a */
        public void m31406a(Canvas canvas, int i, int i2, ColorFilter colorFilter) {
            m31404a(this.f7765h, f7757q, canvas, i, i2, colorFilter);
        }

        /* renamed from: a */
        public final void m31404a(C1970d dVar, Matrix matrix, Canvas canvas, int i, int i2, ColorFilter colorFilter) {
            dVar.f7740a.set(matrix);
            dVar.f7740a.preConcat(dVar.f7749j);
            canvas.save();
            for (int i3 = 0; i3 < dVar.f7741b.size(); i3++) {
                AbstractC1971e eVar = dVar.f7741b.get(i3);
                if (eVar instanceof C1970d) {
                    m31404a((C1970d) eVar, dVar.f7740a, canvas, i, i2, colorFilter);
                } else if (eVar instanceof AbstractC1972f) {
                    m31403a(dVar, (AbstractC1972f) eVar, canvas, i, i2, colorFilter);
                }
            }
            canvas.restore();
        }

        /* renamed from: a */
        public final void m31403a(C1970d dVar, AbstractC1972f fVar, Canvas canvas, int i, int i2, ColorFilter colorFilter) {
            float f = i / this.f7768k;
            float f2 = i2 / this.f7769l;
            float min = Math.min(f, f2);
            Matrix matrix = dVar.f7740a;
            this.f7760c.set(matrix);
            this.f7760c.postScale(f, f2);
            float a = m31405a(matrix);
            if (a != 0.0f) {
                fVar.m31410a(this.f7758a);
                Path path = this.f7758a;
                this.f7759b.reset();
                if (fVar.mo31409b()) {
                    this.f7759b.setFillType(fVar.f7755c == 0 ? Path.FillType.WINDING : Path.FillType.EVEN_ODD);
                    this.f7759b.addPath(path, this.f7760c);
                    canvas.clipPath(this.f7759b);
                    return;
                }
                C1969c cVar = (C1969c) fVar;
                if (!(cVar.f7734k == 0.0f && cVar.f7735l == 1.0f)) {
                    float f3 = cVar.f7734k;
                    float f4 = cVar.f7736m;
                    float f5 = cVar.f7735l;
                    if (this.f7763f == null) {
                        this.f7763f = new PathMeasure();
                    }
                    this.f7763f.setPath(this.f7758a, false);
                    float length = this.f7763f.getLength();
                    float f6 = ((f3 + f4) % 1.0f) * length;
                    float f7 = ((f5 + f4) % 1.0f) * length;
                    path.reset();
                    if (f6 > f7) {
                        this.f7763f.getSegment(f6, length, path, true);
                        this.f7763f.getSegment(0.0f, f7, path, true);
                    } else {
                        this.f7763f.getSegment(f6, f7, path, true);
                    }
                    path.rLineTo(0.0f, 0.0f);
                }
                this.f7759b.addPath(path, this.f7760c);
                if (cVar.f7731h.m35663e()) {
                    C0873b bVar = cVar.f7731h;
                    if (this.f7762e == null) {
                        Paint paint = new Paint(1);
                        this.f7762e = paint;
                        paint.setStyle(Paint.Style.FILL);
                    }
                    Paint paint2 = this.f7762e;
                    if (bVar.m35665c()) {
                        Shader b = bVar.m35668b();
                        b.setLocalMatrix(this.f7760c);
                        paint2.setShader(b);
                        paint2.setAlpha(Math.round(cVar.f7733j * 255.0f));
                    } else {
                        paint2.setShader(null);
                        paint2.setAlpha(255);
                        paint2.setColor(C1966i.m31429a(bVar.m35674a(), cVar.f7733j));
                    }
                    paint2.setColorFilter(colorFilter);
                    this.f7759b.setFillType(cVar.f7755c == 0 ? Path.FillType.WINDING : Path.FillType.EVEN_ODD);
                    canvas.drawPath(this.f7759b, paint2);
                }
                if (cVar.f7729f.m35663e()) {
                    C0873b bVar2 = cVar.f7729f;
                    if (this.f7761d == null) {
                        Paint paint3 = new Paint(1);
                        this.f7761d = paint3;
                        paint3.setStyle(Paint.Style.STROKE);
                    }
                    Paint paint4 = this.f7761d;
                    Paint.Join join = cVar.f7738o;
                    if (join != null) {
                        paint4.setStrokeJoin(join);
                    }
                    Paint.Cap cap = cVar.f7737n;
                    if (cap != null) {
                        paint4.setStrokeCap(cap);
                    }
                    paint4.setStrokeMiter(cVar.f7739p);
                    if (bVar2.m35665c()) {
                        Shader b2 = bVar2.m35668b();
                        b2.setLocalMatrix(this.f7760c);
                        paint4.setShader(b2);
                        paint4.setAlpha(Math.round(cVar.f7732i * 255.0f));
                    } else {
                        paint4.setShader(null);
                        paint4.setAlpha(255);
                        paint4.setColor(C1966i.m31429a(bVar2.m35674a(), cVar.f7732i));
                    }
                    paint4.setColorFilter(colorFilter);
                    paint4.setStrokeWidth(cVar.f7730g * min * a);
                    canvas.drawPath(this.f7759b, paint4);
                }
            }
        }

        /* renamed from: a */
        public boolean m31408a() {
            if (this.f7772o == null) {
                this.f7772o = Boolean.valueOf(this.f7765h.mo31412a());
            }
            return this.f7772o.booleanValue();
        }

        /* renamed from: a */
        public boolean m31402a(int[] iArr) {
            return this.f7765h.mo31411a(iArr);
        }

        public float getAlpha() {
            return getRootAlpha() / 255.0f;
        }

        public int getRootAlpha() {
            return this.f7770m;
        }

        public void setAlpha(float f) {
            setRootAlpha((int) (f * 255.0f));
        }

        public void setRootAlpha(int i) {
            this.f7770m = i;
        }
    }

    /* renamed from: b.y.a.a.i$h */
    /* loaded from: classes-dex2jar.jar:b/y/a/a/i$h.class */
    public static class C1974h extends Drawable.ConstantState {

        /* renamed from: a */
        public int f7774a;

        /* renamed from: b */
        public C1973g f7775b;

        /* renamed from: c */
        public ColorStateList f7776c;

        /* renamed from: d */
        public PorterDuff.Mode f7777d;

        /* renamed from: e */
        public boolean f7778e;

        /* renamed from: f */
        public Bitmap f7779f;

        /* renamed from: g */
        public ColorStateList f7780g;

        /* renamed from: h */
        public PorterDuff.Mode f7781h;

        /* renamed from: i */
        public int f7782i;

        /* renamed from: j */
        public boolean f7783j;

        /* renamed from: k */
        public boolean f7784k;

        /* renamed from: l */
        public Paint f7785l;

        public C1974h() {
            this.f7776c = null;
            this.f7777d = C1966i.f7719j;
            this.f7775b = new C1973g();
        }

        public C1974h(C1974h hVar) {
            this.f7776c = null;
            this.f7777d = C1966i.f7719j;
            if (hVar != null) {
                this.f7774a = hVar.f7774a;
                C1973g gVar = new C1973g(hVar.f7775b);
                this.f7775b = gVar;
                if (hVar.f7775b.f7762e != null) {
                    gVar.f7762e = new Paint(hVar.f7775b.f7762e);
                }
                if (hVar.f7775b.f7761d != null) {
                    this.f7775b.f7761d = new Paint(hVar.f7775b.f7761d);
                }
                this.f7776c = hVar.f7776c;
                this.f7777d = hVar.f7777d;
                this.f7778e = hVar.f7778e;
            }
        }

        /* renamed from: a */
        public Paint m31398a(ColorFilter colorFilter) {
            if (!m31396b() && colorFilter == null) {
                return null;
            }
            if (this.f7785l == null) {
                Paint paint = new Paint();
                this.f7785l = paint;
                paint.setFilterBitmap(true);
            }
            this.f7785l.setAlpha(this.f7775b.getRootAlpha());
            this.f7785l.setColorFilter(colorFilter);
            return this.f7785l;
        }

        /* renamed from: a */
        public void m31399a(Canvas canvas, ColorFilter colorFilter, Rect rect) {
            canvas.drawBitmap(this.f7779f, (Rect) null, rect, m31398a(colorFilter));
        }

        /* renamed from: a */
        public boolean m31401a() {
            return !this.f7784k && this.f7780g == this.f7776c && this.f7781h == this.f7777d && this.f7783j == this.f7778e && this.f7782i == this.f7775b.getRootAlpha();
        }

        /* renamed from: a */
        public boolean m31400a(int i, int i2) {
            return i == this.f7779f.getWidth() && i2 == this.f7779f.getHeight();
        }

        /* renamed from: a */
        public boolean m31397a(int[] iArr) {
            boolean a = this.f7775b.m31402a(iArr);
            this.f7784k |= a;
            return a;
        }

        /* renamed from: b */
        public void m31395b(int i, int i2) {
            if (this.f7779f == null || !m31400a(i, i2)) {
                this.f7779f = Bitmap.createBitmap(i, i2, Bitmap.Config.ARGB_8888);
                this.f7784k = true;
            }
        }

        /* renamed from: b */
        public boolean m31396b() {
            return this.f7775b.getRootAlpha() < 255;
        }

        /* renamed from: c */
        public void m31393c(int i, int i2) {
            this.f7779f.eraseColor(0);
            this.f7775b.m31406a(new Canvas(this.f7779f), i, i2, (ColorFilter) null);
        }

        /* renamed from: c */
        public boolean m31394c() {
            return this.f7775b.m31408a();
        }

        /* renamed from: d */
        public void m31392d() {
            this.f7780g = this.f7776c;
            this.f7781h = this.f7777d;
            this.f7782i = this.f7775b.getRootAlpha();
            this.f7783j = this.f7778e;
            this.f7784k = false;
        }

        @Override // android.graphics.drawable.Drawable.ConstantState
        public int getChangingConfigurations() {
            return this.f7774a;
        }

        @Override // android.graphics.drawable.Drawable.ConstantState
        public Drawable newDrawable() {
            return new C1966i(this);
        }

        @Override // android.graphics.drawable.Drawable.ConstantState
        public Drawable newDrawable(Resources resources) {
            return new C1966i(this);
        }
    }

    /* renamed from: b.y.a.a.i$i */
    /* loaded from: classes-dex2jar.jar:b/y/a/a/i$i.class */
    public static class C1975i extends Drawable.ConstantState {

        /* renamed from: a */
        public final Drawable.ConstantState f7786a;

        public C1975i(Drawable.ConstantState constantState) {
            this.f7786a = constantState;
        }

        @Override // android.graphics.drawable.Drawable.ConstantState
        public boolean canApplyTheme() {
            return this.f7786a.canApplyTheme();
        }

        @Override // android.graphics.drawable.Drawable.ConstantState
        public int getChangingConfigurations() {
            return this.f7786a.getChangingConfigurations();
        }

        @Override // android.graphics.drawable.Drawable.ConstantState
        public Drawable newDrawable() {
            C1966i iVar = new C1966i();
            iVar.f7718a = (VectorDrawable) this.f7786a.newDrawable();
            return iVar;
        }

        @Override // android.graphics.drawable.Drawable.ConstantState
        public Drawable newDrawable(Resources resources) {
            C1966i iVar = new C1966i();
            iVar.f7718a = (VectorDrawable) this.f7786a.newDrawable(resources);
            return iVar;
        }

        @Override // android.graphics.drawable.Drawable.ConstantState
        public Drawable newDrawable(Resources resources, Resources.Theme theme) {
            C1966i iVar = new C1966i();
            iVar.f7718a = (VectorDrawable) this.f7786a.newDrawable(resources, theme);
            return iVar;
        }
    }

    public C1966i() {
        this.f7724f = true;
        this.f7725g = new float[9];
        this.f7726h = new Matrix();
        this.f7727i = new Rect();
        this.f7720b = new C1974h();
    }

    public C1966i(C1974h hVar) {
        this.f7724f = true;
        this.f7725g = new float[9];
        this.f7726h = new Matrix();
        this.f7727i = new Rect();
        this.f7720b = hVar;
        this.f7721c = m31424a(this.f7721c, hVar.f7776c, hVar.f7777d);
    }

    /* renamed from: a */
    public static int m31429a(int i, float f) {
        return (i & 16777215) | (((int) (Color.alpha(i) * f)) << 24);
    }

    /* renamed from: a */
    public static PorterDuff.Mode m31428a(int i, PorterDuff.Mode mode) {
        if (i == 3) {
            return PorterDuff.Mode.SRC_OVER;
        }
        if (i == 5) {
            return PorterDuff.Mode.SRC_IN;
        }
        if (i == 9) {
            return PorterDuff.Mode.SRC_ATOP;
        }
        switch (i) {
            case 14:
                return PorterDuff.Mode.MULTIPLY;
            case 15:
                return PorterDuff.Mode.SCREEN;
            case 16:
                return PorterDuff.Mode.ADD;
            default:
                return mode;
        }
    }

    /* renamed from: a */
    public static C1966i m31427a(Resources resources, int i, Resources.Theme theme) {
        int next;
        if (Build.VERSION.SDK_INT >= 24) {
            C1966i iVar = new C1966i();
            iVar.f7718a = C0882f.m35634a(resources, i, theme);
            new C1975i(iVar.f7718a.getConstantState());
            return iVar;
        }
        try {
            XmlResourceParser xml = resources.getXml(i);
            AttributeSet asAttributeSet = Xml.asAttributeSet(xml);
            do {
                next = xml.next();
                if (next == 2) {
                    break;
                }
            } while (next != 1);
            if (next == 2) {
                return createFromXmlInner(resources, (XmlPullParser) xml, asAttributeSet, theme);
            }
            throw new XmlPullParserException("No start tag found");
        } catch (IOException e) {
            Log.e("VectorDrawableCompat", "parser error", e);
            return null;
        } catch (XmlPullParserException e2) {
            Log.e("VectorDrawableCompat", "parser error", e2);
            return null;
        }
    }

    public static C1966i createFromXmlInner(Resources resources, XmlPullParser xmlPullParser, AttributeSet attributeSet, Resources.Theme theme) throws XmlPullParserException, IOException {
        C1966i iVar = new C1966i();
        iVar.inflate(resources, xmlPullParser, attributeSet, theme);
        return iVar;
    }

    /* renamed from: a */
    public PorterDuffColorFilter m31424a(PorterDuffColorFilter porterDuffColorFilter, ColorStateList colorStateList, PorterDuff.Mode mode) {
        if (colorStateList == null || mode == null) {
            return null;
        }
        return new PorterDuffColorFilter(colorStateList.getColorForState(getState(), 0), mode);
    }

    /* renamed from: a */
    public Object m31423a(String str) {
        return this.f7720b.f7775b.f7773p.get(str);
    }

    /* renamed from: a */
    public final void m31426a(Resources resources, XmlPullParser xmlPullParser, AttributeSet attributeSet, Resources.Theme theme) throws XmlPullParserException, IOException {
        C1974h hVar = this.f7720b;
        C1973g gVar = hVar.f7775b;
        ArrayDeque arrayDeque = new ArrayDeque();
        arrayDeque.push(gVar.f7765h);
        int eventType = xmlPullParser.getEventType();
        int depth = xmlPullParser.getDepth();
        boolean z = true;
        while (eventType != 1 && (xmlPullParser.getDepth() >= depth + 1 || eventType != 3)) {
            if (eventType == 2) {
                String name = xmlPullParser.getName();
                C1970d dVar = (C1970d) arrayDeque.peek();
                if ("path".equals(name)) {
                    C1969c cVar = new C1969c();
                    cVar.m31417a(resources, attributeSet, theme, xmlPullParser);
                    dVar.f7741b.add(cVar);
                    if (cVar.getPathName() != null) {
                        gVar.f7773p.put(cVar.getPathName(), cVar);
                    }
                    z = false;
                    hVar.f7774a = cVar.f7756d | hVar.f7774a;
                } else if ("clip-path".equals(name)) {
                    C1968b bVar = new C1968b();
                    bVar.m31421a(resources, attributeSet, theme, xmlPullParser);
                    dVar.f7741b.add(bVar);
                    if (bVar.getPathName() != null) {
                        gVar.f7773p.put(bVar.getPathName(), bVar);
                    }
                    hVar.f7774a = bVar.f7756d | hVar.f7774a;
                    z = z;
                } else {
                    z = z;
                    if ("group".equals(name)) {
                        C1970d dVar2 = new C1970d();
                        dVar2.m31415a(resources, attributeSet, theme, xmlPullParser);
                        dVar.f7741b.add(dVar2);
                        arrayDeque.push(dVar2);
                        if (dVar2.getGroupName() != null) {
                            gVar.f7773p.put(dVar2.getGroupName(), dVar2);
                        }
                        hVar.f7774a = dVar2.f7750k | hVar.f7774a;
                        z = z;
                    }
                }
            } else {
                z = z;
                if (eventType == 3) {
                    z = z;
                    if ("group".equals(xmlPullParser.getName())) {
                        arrayDeque.pop();
                        z = z;
                    }
                }
            }
            eventType = xmlPullParser.next();
        }
        if (z) {
            throw new XmlPullParserException("no path defined");
        }
    }

    /* renamed from: a */
    public final void m31425a(TypedArray typedArray, XmlPullParser xmlPullParser, Resources.Theme theme) throws XmlPullParserException {
        C1974h hVar = this.f7720b;
        C1973g gVar = hVar.f7775b;
        hVar.f7777d = m31428a(C0889g.m35616b(typedArray, xmlPullParser, "tintMode", 6, -1), PorterDuff.Mode.SRC_IN);
        ColorStateList a = C0889g.m35625a(typedArray, xmlPullParser, theme, "tint", 1);
        if (a != null) {
            hVar.f7776c = a;
        }
        hVar.f7778e = C0889g.m35620a(typedArray, xmlPullParser, "autoMirrored", 5, hVar.f7778e);
        gVar.f7768k = C0889g.m35622a(typedArray, xmlPullParser, "viewportWidth", 7, gVar.f7768k);
        float a2 = C0889g.m35622a(typedArray, xmlPullParser, "viewportHeight", 8, gVar.f7769l);
        gVar.f7769l = a2;
        if (gVar.f7768k <= 0.0f) {
            throw new XmlPullParserException(typedArray.getPositionDescription() + "<vector> tag requires viewportWidth > 0");
        } else if (a2 > 0.0f) {
            gVar.f7766i = typedArray.getDimension(3, gVar.f7766i);
            float dimension = typedArray.getDimension(2, gVar.f7767j);
            gVar.f7767j = dimension;
            if (gVar.f7766i <= 0.0f) {
                throw new XmlPullParserException(typedArray.getPositionDescription() + "<vector> tag requires width > 0");
            } else if (dimension > 0.0f) {
                gVar.setAlpha(C0889g.m35622a(typedArray, xmlPullParser, "alpha", 4, gVar.getAlpha()));
                String string = typedArray.getString(0);
                if (string != null) {
                    gVar.f7771n = string;
                    gVar.f7773p.put(string, gVar);
                }
            } else {
                throw new XmlPullParserException(typedArray.getPositionDescription() + "<vector> tag requires height > 0");
            }
        } else {
            throw new XmlPullParserException(typedArray.getPositionDescription() + "<vector> tag requires viewportHeight > 0");
        }
    }

    /* renamed from: a */
    public void m31422a(boolean z) {
        this.f7724f = z;
    }

    /* renamed from: a */
    public final boolean m31430a() {
        boolean z = false;
        if (Build.VERSION.SDK_INT >= 17) {
            z = false;
            if (isAutoMirrored()) {
                z = false;
                if (C0907a.m35518d(this) == 1) {
                    z = true;
                }
            }
        }
        return z;
    }

    @Override // android.graphics.drawable.Drawable
    public boolean canApplyTheme() {
        Drawable drawable = this.f7718a;
        if (drawable == null) {
            return false;
        }
        C0907a.m35530a(drawable);
        return false;
    }

    @Override // android.graphics.drawable.Drawable
    public void draw(Canvas canvas) {
        Drawable drawable = this.f7718a;
        if (drawable != null) {
            drawable.draw(canvas);
            return;
        }
        copyBounds(this.f7727i);
        if (this.f7727i.width() > 0 && this.f7727i.height() > 0) {
            ColorFilter colorFilter = this.f7722d;
            ColorFilter colorFilter2 = colorFilter;
            if (colorFilter == null) {
                colorFilter2 = this.f7721c;
            }
            canvas.getMatrix(this.f7726h);
            this.f7726h.getValues(this.f7725g);
            float abs = Math.abs(this.f7725g[0]);
            float abs2 = Math.abs(this.f7725g[4]);
            float abs3 = Math.abs(this.f7725g[1]);
            float abs4 = Math.abs(this.f7725g[3]);
            if (!(abs3 == 0.0f && abs4 == 0.0f)) {
                abs = 1.0f;
                abs2 = 1.0f;
            }
            int width = (int) (this.f7727i.width() * abs);
            int height = (int) (this.f7727i.height() * abs2);
            int min = Math.min((int) RecyclerView.AbstractC0495b0.FLAG_MOVED, width);
            int min2 = Math.min((int) RecyclerView.AbstractC0495b0.FLAG_MOVED, height);
            if (min > 0 && min2 > 0) {
                int save = canvas.save();
                Rect rect = this.f7727i;
                canvas.translate(rect.left, rect.top);
                if (m31430a()) {
                    canvas.translate(this.f7727i.width(), 0.0f);
                    canvas.scale(-1.0f, 1.0f);
                }
                this.f7727i.offsetTo(0, 0);
                this.f7720b.m31395b(min, min2);
                if (!this.f7724f) {
                    this.f7720b.m31393c(min, min2);
                } else if (!this.f7720b.m31401a()) {
                    this.f7720b.m31393c(min, min2);
                    this.f7720b.m31392d();
                }
                this.f7720b.m31399a(canvas, colorFilter2, this.f7727i);
                canvas.restoreToCount(save);
            }
        }
    }

    @Override // android.graphics.drawable.Drawable
    public int getAlpha() {
        Drawable drawable = this.f7718a;
        return drawable != null ? C0907a.m35521b(drawable) : this.f7720b.f7775b.getRootAlpha();
    }

    @Override // android.graphics.drawable.Drawable
    public int getChangingConfigurations() {
        Drawable drawable = this.f7718a;
        return drawable != null ? drawable.getChangingConfigurations() : super.getChangingConfigurations() | this.f7720b.getChangingConfigurations();
    }

    @Override // android.graphics.drawable.Drawable
    public ColorFilter getColorFilter() {
        Drawable drawable = this.f7718a;
        return drawable != null ? C0907a.m35519c(drawable) : this.f7722d;
    }

    @Override // android.graphics.drawable.Drawable
    public Drawable.ConstantState getConstantState() {
        if (this.f7718a != null && Build.VERSION.SDK_INT >= 24) {
            return new C1975i(this.f7718a.getConstantState());
        }
        this.f7720b.f7774a = getChangingConfigurations();
        return this.f7720b;
    }

    @Override // android.graphics.drawable.Drawable
    public int getIntrinsicHeight() {
        Drawable drawable = this.f7718a;
        return drawable != null ? drawable.getIntrinsicHeight() : (int) this.f7720b.f7775b.f7767j;
    }

    @Override // android.graphics.drawable.Drawable
    public int getIntrinsicWidth() {
        Drawable drawable = this.f7718a;
        return drawable != null ? drawable.getIntrinsicWidth() : (int) this.f7720b.f7775b.f7766i;
    }

    @Override // android.graphics.drawable.Drawable
    public int getOpacity() {
        Drawable drawable = this.f7718a;
        if (drawable != null) {
            return drawable.getOpacity();
        }
        return -3;
    }

    @Override // android.graphics.drawable.Drawable
    public void inflate(Resources resources, XmlPullParser xmlPullParser, AttributeSet attributeSet) throws XmlPullParserException, IOException {
        Drawable drawable = this.f7718a;
        if (drawable != null) {
            drawable.inflate(resources, xmlPullParser, attributeSet);
        } else {
            inflate(resources, xmlPullParser, attributeSet, null);
        }
    }

    @Override // android.graphics.drawable.Drawable
    public void inflate(Resources resources, XmlPullParser xmlPullParser, AttributeSet attributeSet, Resources.Theme theme) throws XmlPullParserException, IOException {
        Drawable drawable = this.f7718a;
        if (drawable != null) {
            C0907a.m35524a(drawable, resources, xmlPullParser, attributeSet, theme);
            return;
        }
        C1974h hVar = this.f7720b;
        hVar.f7775b = new C1973g();
        TypedArray a = C0889g.m35626a(resources, theme, attributeSet, C1954a.f7691a);
        m31425a(a, xmlPullParser, theme);
        a.recycle();
        hVar.f7774a = getChangingConfigurations();
        hVar.f7784k = true;
        m31426a(resources, xmlPullParser, attributeSet, theme);
        this.f7721c = m31424a(this.f7721c, hVar.f7776c, hVar.f7777d);
    }

    @Override // android.graphics.drawable.Drawable
    public void invalidateSelf() {
        Drawable drawable = this.f7718a;
        if (drawable != null) {
            drawable.invalidateSelf();
        } else {
            super.invalidateSelf();
        }
    }

    @Override // android.graphics.drawable.Drawable
    public boolean isAutoMirrored() {
        Drawable drawable = this.f7718a;
        return drawable != null ? C0907a.m35517e(drawable) : this.f7720b.f7778e;
    }

    @Override // android.graphics.drawable.Drawable
    public boolean isStateful() {
        C1974h hVar;
        ColorStateList colorStateList;
        Drawable drawable = this.f7718a;
        if (drawable != null) {
            return drawable.isStateful();
        }
        return super.isStateful() || ((hVar = this.f7720b) != null && (hVar.m31394c() || ((colorStateList = this.f7720b.f7776c) != null && colorStateList.isStateful())));
    }

    @Override // android.graphics.drawable.Drawable
    public Drawable mutate() {
        Drawable drawable = this.f7718a;
        if (drawable != null) {
            drawable.mutate();
            return this;
        }
        if (!this.f7723e && super.mutate() == this) {
            this.f7720b = new C1974h(this.f7720b);
            this.f7723e = true;
        }
        return this;
    }

    @Override // android.graphics.drawable.Drawable
    public void onBoundsChange(Rect rect) {
        Drawable drawable = this.f7718a;
        if (drawable != null) {
            drawable.setBounds(rect);
        }
    }

    @Override // android.graphics.drawable.Drawable
    public boolean onStateChange(int[] iArr) {
        Drawable drawable = this.f7718a;
        if (drawable != null) {
            return drawable.setState(iArr);
        }
        C1974h hVar = this.f7720b;
        ColorStateList colorStateList = hVar.f7776c;
        r13 = true;
        boolean z = false;
        if (colorStateList != null) {
            PorterDuff.Mode mode = hVar.f7777d;
            z = false;
            if (mode != null) {
                this.f7721c = m31424a(this.f7721c, colorStateList, mode);
                invalidateSelf();
                z = true;
            }
        }
        if (hVar.m31394c() && hVar.m31397a(iArr)) {
            invalidateSelf();
        }
        return z;
    }

    @Override // android.graphics.drawable.Drawable
    public void scheduleSelf(Runnable runnable, long j) {
        Drawable drawable = this.f7718a;
        if (drawable != null) {
            drawable.scheduleSelf(runnable, j);
        } else {
            super.scheduleSelf(runnable, j);
        }
    }

    @Override // android.graphics.drawable.Drawable
    public void setAlpha(int i) {
        Drawable drawable = this.f7718a;
        if (drawable != null) {
            drawable.setAlpha(i);
        } else if (this.f7720b.f7775b.getRootAlpha() != i) {
            this.f7720b.f7775b.setRootAlpha(i);
            invalidateSelf();
        }
    }

    @Override // android.graphics.drawable.Drawable
    public void setAutoMirrored(boolean z) {
        Drawable drawable = this.f7718a;
        if (drawable != null) {
            C0907a.m35522a(drawable, z);
        } else {
            this.f7720b.f7778e = z;
        }
    }

    @Override // android.graphics.drawable.Drawable
    public void setColorFilter(ColorFilter colorFilter) {
        Drawable drawable = this.f7718a;
        if (drawable != null) {
            drawable.setColorFilter(colorFilter);
            return;
        }
        this.f7722d = colorFilter;
        invalidateSelf();
    }

    @Override // android.graphics.drawable.Drawable, p012b.p042i.p046j.p047m.AbstractC0908b
    public void setTint(int i) {
        Drawable drawable = this.f7718a;
        if (drawable != null) {
            C0907a.m35520b(drawable, i);
        } else {
            setTintList(ColorStateList.valueOf(i));
        }
    }

    @Override // android.graphics.drawable.Drawable, p012b.p042i.p046j.p047m.AbstractC0908b
    public void setTintList(ColorStateList colorStateList) {
        Drawable drawable = this.f7718a;
        if (drawable != null) {
            C0907a.m35526a(drawable, colorStateList);
            return;
        }
        C1974h hVar = this.f7720b;
        if (hVar.f7776c != colorStateList) {
            hVar.f7776c = colorStateList;
            this.f7721c = m31424a(this.f7721c, colorStateList, hVar.f7777d);
            invalidateSelf();
        }
    }

    @Override // android.graphics.drawable.Drawable, p012b.p042i.p046j.p047m.AbstractC0908b
    public void setTintMode(PorterDuff.Mode mode) {
        Drawable drawable = this.f7718a;
        if (drawable != null) {
            C0907a.m35523a(drawable, mode);
            return;
        }
        C1974h hVar = this.f7720b;
        if (hVar.f7777d != mode) {
            hVar.f7777d = mode;
            this.f7721c = m31424a(this.f7721c, hVar.f7776c, mode);
            invalidateSelf();
        }
    }

    @Override // android.graphics.drawable.Drawable
    public boolean setVisible(boolean z, boolean z2) {
        Drawable drawable = this.f7718a;
        return drawable != null ? drawable.setVisible(z, z2) : super.setVisible(z, z2);
    }

    @Override // android.graphics.drawable.Drawable
    public void unscheduleSelf(Runnable runnable) {
        Drawable drawable = this.f7718a;
        if (drawable != null) {
            drawable.unscheduleSelf(runnable);
        } else {
            super.unscheduleSelf(runnable);
        }
    }
}

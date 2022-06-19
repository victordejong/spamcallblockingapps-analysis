package p020b.p074t.p075a.p076a;

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
import android.graphics.Region;
import android.graphics.Shader;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.VectorDrawable;
import android.os.Build;
import android.util.AttributeSet;
import android.util.Log;
import android.util.Xml;
import androidx.core.content.p007d.C0596b;
import androidx.core.content.p007d.C0605f;
import androidx.core.content.p007d.C0614g;
import androidx.core.graphics.drawable.C0615a;
import java.io.IOException;
import java.util.ArrayDeque;
import java.util.ArrayList;
import org.xmlpull.v1.XmlPullParser;
import org.xmlpull.v1.XmlPullParserException;
import p020b.p036e.C1489a;
import p020b.p041h.p042e.C1524c;
/* renamed from: b.t.a.a.i */
/* loaded from: classes-dex2jar.jar:b/t/a/a/i.class */
public class C1804i extends AbstractC1803h {

    /* renamed from: e */
    static final PorterDuff.Mode f6671e = PorterDuff.Mode.SRC_IN;

    /* renamed from: f */
    private C1812h f6672f;

    /* renamed from: g */
    private PorterDuffColorFilter f6673g;

    /* renamed from: h */
    private ColorFilter f6674h;

    /* renamed from: i */
    private boolean f6675i;

    /* renamed from: j */
    private boolean f6676j;

    /* renamed from: k */
    private Drawable.ConstantState f6677k;

    /* renamed from: l */
    private final float[] f6678l;

    /* renamed from: m */
    private final Matrix f6679m;

    /* renamed from: n */
    private final Rect f6680n;

    /* renamed from: b.t.a.a.i$b */
    /* loaded from: classes-dex2jar.jar:b/t/a/a/i$b.class */
    public static class C1806b extends AbstractC1810f {
        C1806b() {
        }

        C1806b(C1806b c1806b) {
            super(c1806b);
        }

        /* renamed from: f */
        private void m28844f(TypedArray typedArray, XmlPullParser xmlPullParser) {
            String string = typedArray.getString(0);
            if (string != null) {
                this.f6707b = string;
            }
            String string2 = typedArray.getString(1);
            if (string2 != null) {
                this.f6706a = C1524c.m29839d(string2);
            }
            this.f6708c = C0614g.m33253g(typedArray, xmlPullParser, "fillType", 2, 0);
        }

        @Override // p020b.p074t.p075a.p076a.C1804i.AbstractC1810f
        /* renamed from: c */
        public boolean mo28834c() {
            return true;
        }

        /* renamed from: e */
        public void m28845e(Resources resources, AttributeSet attributeSet, Resources.Theme theme, XmlPullParser xmlPullParser) {
            if (!C0614g.m33250j(xmlPullParser, "pathData")) {
                return;
            }
            TypedArray m33249k = C0614g.m33249k(resources, theme, attributeSet, C1792a.f6644d);
            m28844f(m33249k, xmlPullParser);
            m33249k.recycle();
        }
    }

    /* renamed from: b.t.a.a.i$c */
    /* loaded from: classes-dex2jar.jar:b/t/a/a/i$c.class */
    public static class C1807c extends AbstractC1810f {

        /* renamed from: e */
        private int[] f6681e;

        /* renamed from: f */
        C0596b f6682f;

        /* renamed from: g */
        float f6683g;

        /* renamed from: h */
        C0596b f6684h;

        /* renamed from: i */
        float f6685i;

        /* renamed from: j */
        float f6686j;

        /* renamed from: k */
        float f6687k;

        /* renamed from: l */
        float f6688l;

        /* renamed from: m */
        float f6689m;

        /* renamed from: n */
        Paint.Cap f6690n;

        /* renamed from: o */
        Paint.Join f6691o;

        /* renamed from: p */
        float f6692p;

        C1807c() {
            this.f6683g = 0.0f;
            this.f6685i = 1.0f;
            this.f6686j = 1.0f;
            this.f6687k = 0.0f;
            this.f6688l = 1.0f;
            this.f6689m = 0.0f;
            this.f6690n = Paint.Cap.BUTT;
            this.f6691o = Paint.Join.MITER;
            this.f6692p = 4.0f;
        }

        C1807c(C1807c c1807c) {
            super(c1807c);
            this.f6683g = 0.0f;
            this.f6685i = 1.0f;
            this.f6686j = 1.0f;
            this.f6687k = 0.0f;
            this.f6688l = 1.0f;
            this.f6689m = 0.0f;
            this.f6690n = Paint.Cap.BUTT;
            this.f6691o = Paint.Join.MITER;
            this.f6692p = 4.0f;
            this.f6681e = c1807c.f6681e;
            this.f6682f = c1807c.f6682f;
            this.f6683g = c1807c.f6683g;
            this.f6685i = c1807c.f6685i;
            this.f6684h = c1807c.f6684h;
            this.f6708c = c1807c.f6708c;
            this.f6686j = c1807c.f6686j;
            this.f6687k = c1807c.f6687k;
            this.f6688l = c1807c.f6688l;
            this.f6689m = c1807c.f6689m;
            this.f6690n = c1807c.f6690n;
            this.f6691o = c1807c.f6691o;
            this.f6692p = c1807c.f6692p;
        }

        /* renamed from: e */
        private Paint.Cap m28843e(int i, Paint.Cap cap) {
            return i != 0 ? i != 1 ? i != 2 ? cap : Paint.Cap.SQUARE : Paint.Cap.ROUND : Paint.Cap.BUTT;
        }

        /* renamed from: f */
        private Paint.Join m28842f(int i, Paint.Join join) {
            return i != 0 ? i != 1 ? i != 2 ? join : Paint.Join.BEVEL : Paint.Join.ROUND : Paint.Join.MITER;
        }

        /* renamed from: h */
        private void m28840h(TypedArray typedArray, XmlPullParser xmlPullParser, Resources.Theme theme) {
            this.f6681e = null;
            if (!C0614g.m33250j(xmlPullParser, "pathData")) {
                return;
            }
            String string = typedArray.getString(0);
            if (string != null) {
                this.f6707b = string;
            }
            String string2 = typedArray.getString(2);
            if (string2 != null) {
                this.f6706a = C1524c.m29839d(string2);
            }
            this.f6684h = C0614g.m33255e(typedArray, xmlPullParser, theme, "fillColor", 1, 0);
            this.f6686j = C0614g.m33254f(typedArray, xmlPullParser, "fillAlpha", 12, this.f6686j);
            this.f6690n = m28843e(C0614g.m33253g(typedArray, xmlPullParser, "strokeLineCap", 8, -1), this.f6690n);
            this.f6691o = m28842f(C0614g.m33253g(typedArray, xmlPullParser, "strokeLineJoin", 9, -1), this.f6691o);
            this.f6692p = C0614g.m33254f(typedArray, xmlPullParser, "strokeMiterLimit", 10, this.f6692p);
            this.f6682f = C0614g.m33255e(typedArray, xmlPullParser, theme, "strokeColor", 3, 0);
            this.f6685i = C0614g.m33254f(typedArray, xmlPullParser, "strokeAlpha", 11, this.f6685i);
            this.f6683g = C0614g.m33254f(typedArray, xmlPullParser, "strokeWidth", 4, this.f6683g);
            this.f6688l = C0614g.m33254f(typedArray, xmlPullParser, "trimPathEnd", 6, this.f6688l);
            this.f6689m = C0614g.m33254f(typedArray, xmlPullParser, "trimPathOffset", 7, this.f6689m);
            this.f6687k = C0614g.m33254f(typedArray, xmlPullParser, "trimPathStart", 5, this.f6687k);
            this.f6708c = C0614g.m33253g(typedArray, xmlPullParser, "fillType", 13, this.f6708c);
        }

        @Override // p020b.p074t.p075a.p076a.C1804i.AbstractC1809e
        /* renamed from: a */
        public boolean mo28836a() {
            return this.f6684h.m33307i() || this.f6682f.m33307i();
        }

        @Override // p020b.p074t.p075a.p076a.C1804i.AbstractC1809e
        /* renamed from: b */
        public boolean mo28835b(int[] iArr) {
            return this.f6682f.m33306j(iArr) | this.f6684h.m33306j(iArr);
        }

        /* renamed from: g */
        public void m28841g(Resources resources, AttributeSet attributeSet, Resources.Theme theme, XmlPullParser xmlPullParser) {
            TypedArray m33249k = C0614g.m33249k(resources, theme, attributeSet, C1792a.f6643c);
            m28840h(m33249k, xmlPullParser, theme);
            m33249k.recycle();
        }

        float getFillAlpha() {
            return this.f6686j;
        }

        int getFillColor() {
            return this.f6684h.m33311e();
        }

        float getStrokeAlpha() {
            return this.f6685i;
        }

        int getStrokeColor() {
            return this.f6682f.m33311e();
        }

        float getStrokeWidth() {
            return this.f6683g;
        }

        float getTrimPathEnd() {
            return this.f6688l;
        }

        float getTrimPathOffset() {
            return this.f6689m;
        }

        float getTrimPathStart() {
            return this.f6687k;
        }

        void setFillAlpha(float f) {
            this.f6686j = f;
        }

        void setFillColor(int i) {
            this.f6684h.m33305k(i);
        }

        void setStrokeAlpha(float f) {
            this.f6685i = f;
        }

        void setStrokeColor(int i) {
            this.f6682f.m33305k(i);
        }

        void setStrokeWidth(float f) {
            this.f6683g = f;
        }

        void setTrimPathEnd(float f) {
            this.f6688l = f;
        }

        void setTrimPathOffset(float f) {
            this.f6689m = f;
        }

        void setTrimPathStart(float f) {
            this.f6687k = f;
        }
    }

    /* renamed from: b.t.a.a.i$d */
    /* loaded from: classes-dex2jar.jar:b/t/a/a/i$d.class */
    public static class C1808d extends AbstractC1809e {

        /* renamed from: a */
        final Matrix f6693a;

        /* renamed from: b */
        final ArrayList<AbstractC1809e> f6694b;

        /* renamed from: c */
        float f6695c;

        /* renamed from: d */
        private float f6696d;

        /* renamed from: e */
        private float f6697e;

        /* renamed from: f */
        private float f6698f;

        /* renamed from: g */
        private float f6699g;

        /* renamed from: h */
        private float f6700h;

        /* renamed from: i */
        private float f6701i;

        /* renamed from: j */
        final Matrix f6702j;

        /* renamed from: k */
        int f6703k;

        /* renamed from: l */
        private int[] f6704l;

        /* renamed from: m */
        private String f6705m;

        public C1808d() {
            super();
            this.f6693a = new Matrix();
            this.f6694b = new ArrayList<>();
            this.f6695c = 0.0f;
            this.f6696d = 0.0f;
            this.f6697e = 0.0f;
            this.f6698f = 1.0f;
            this.f6699g = 1.0f;
            this.f6700h = 0.0f;
            this.f6701i = 0.0f;
            this.f6702j = new Matrix();
            this.f6705m = null;
        }

        public C1808d(C1808d c1808d, C1489a<String, Object> c1489a) {
            super();
            C1807c c1807c;
            this.f6693a = new Matrix();
            this.f6694b = new ArrayList<>();
            this.f6695c = 0.0f;
            this.f6696d = 0.0f;
            this.f6697e = 0.0f;
            this.f6698f = 1.0f;
            this.f6699g = 1.0f;
            this.f6700h = 0.0f;
            this.f6701i = 0.0f;
            Matrix matrix = new Matrix();
            this.f6702j = matrix;
            this.f6705m = null;
            this.f6695c = c1808d.f6695c;
            this.f6696d = c1808d.f6696d;
            this.f6697e = c1808d.f6697e;
            this.f6698f = c1808d.f6698f;
            this.f6699g = c1808d.f6699g;
            this.f6700h = c1808d.f6700h;
            this.f6701i = c1808d.f6701i;
            this.f6704l = c1808d.f6704l;
            String str = c1808d.f6705m;
            this.f6705m = str;
            this.f6703k = c1808d.f6703k;
            if (str != null) {
                c1489a.put(str, this);
            }
            matrix.set(c1808d.f6702j);
            ArrayList<AbstractC1809e> arrayList = c1808d.f6694b;
            for (int i = 0; i < arrayList.size(); i++) {
                AbstractC1809e abstractC1809e = arrayList.get(i);
                if (abstractC1809e instanceof C1808d) {
                    this.f6694b.add(new C1808d((C1808d) abstractC1809e, c1489a));
                } else {
                    if (abstractC1809e instanceof C1807c) {
                        c1807c = new C1807c((C1807c) abstractC1809e);
                    } else if (!(abstractC1809e instanceof C1806b)) {
                        throw new IllegalStateException("Unknown object in the tree!");
                    } else {
                        c1807c = new C1806b((C1806b) abstractC1809e);
                    }
                    this.f6694b.add(c1807c);
                    String str2 = c1807c.f6707b;
                    if (str2 != null) {
                        c1489a.put(str2, c1807c);
                    }
                }
            }
        }

        /* renamed from: d */
        private void m28838d() {
            this.f6702j.reset();
            this.f6702j.postTranslate(-this.f6696d, -this.f6697e);
            this.f6702j.postScale(this.f6698f, this.f6699g);
            this.f6702j.postRotate(this.f6695c, 0.0f, 0.0f);
            this.f6702j.postTranslate(this.f6700h + this.f6696d, this.f6701i + this.f6697e);
        }

        /* renamed from: e */
        private void m28837e(TypedArray typedArray, XmlPullParser xmlPullParser) {
            this.f6704l = null;
            this.f6695c = C0614g.m33254f(typedArray, xmlPullParser, "rotation", 5, this.f6695c);
            this.f6696d = typedArray.getFloat(1, this.f6696d);
            this.f6697e = typedArray.getFloat(2, this.f6697e);
            this.f6698f = C0614g.m33254f(typedArray, xmlPullParser, "scaleX", 3, this.f6698f);
            this.f6699g = C0614g.m33254f(typedArray, xmlPullParser, "scaleY", 4, this.f6699g);
            this.f6700h = C0614g.m33254f(typedArray, xmlPullParser, "translateX", 6, this.f6700h);
            this.f6701i = C0614g.m33254f(typedArray, xmlPullParser, "translateY", 7, this.f6701i);
            String string = typedArray.getString(0);
            if (string != null) {
                this.f6705m = string;
            }
            m28838d();
        }

        @Override // p020b.p074t.p075a.p076a.C1804i.AbstractC1809e
        /* renamed from: a */
        public boolean mo28836a() {
            for (int i = 0; i < this.f6694b.size(); i++) {
                if (this.f6694b.get(i).mo28836a()) {
                    return true;
                }
            }
            return false;
        }

        @Override // p020b.p074t.p075a.p076a.C1804i.AbstractC1809e
        /* renamed from: b */
        public boolean mo28835b(int[] iArr) {
            boolean z = false;
            for (int i = 0; i < this.f6694b.size(); i++) {
                z |= this.f6694b.get(i).mo28835b(iArr);
            }
            return z;
        }

        /* renamed from: c */
        public void m28839c(Resources resources, AttributeSet attributeSet, Resources.Theme theme, XmlPullParser xmlPullParser) {
            TypedArray m33249k = C0614g.m33249k(resources, theme, attributeSet, C1792a.f6642b);
            m28837e(m33249k, xmlPullParser);
            m33249k.recycle();
        }

        public String getGroupName() {
            return this.f6705m;
        }

        public Matrix getLocalMatrix() {
            return this.f6702j;
        }

        public float getPivotX() {
            return this.f6696d;
        }

        public float getPivotY() {
            return this.f6697e;
        }

        public float getRotation() {
            return this.f6695c;
        }

        public float getScaleX() {
            return this.f6698f;
        }

        public float getScaleY() {
            return this.f6699g;
        }

        public float getTranslateX() {
            return this.f6700h;
        }

        public float getTranslateY() {
            return this.f6701i;
        }

        public void setPivotX(float f) {
            if (f != this.f6696d) {
                this.f6696d = f;
                m28838d();
            }
        }

        public void setPivotY(float f) {
            if (f != this.f6697e) {
                this.f6697e = f;
                m28838d();
            }
        }

        public void setRotation(float f) {
            if (f != this.f6695c) {
                this.f6695c = f;
                m28838d();
            }
        }

        public void setScaleX(float f) {
            if (f != this.f6698f) {
                this.f6698f = f;
                m28838d();
            }
        }

        public void setScaleY(float f) {
            if (f != this.f6699g) {
                this.f6699g = f;
                m28838d();
            }
        }

        public void setTranslateX(float f) {
            if (f != this.f6700h) {
                this.f6700h = f;
                m28838d();
            }
        }

        public void setTranslateY(float f) {
            if (f != this.f6701i) {
                this.f6701i = f;
                m28838d();
            }
        }
    }

    /* renamed from: b.t.a.a.i$e */
    /* loaded from: classes-dex2jar.jar:b/t/a/a/i$e.class */
    public static abstract class AbstractC1809e {
        private AbstractC1809e() {
        }

        /* renamed from: a */
        public boolean mo28836a() {
            return false;
        }

        /* renamed from: b */
        public boolean mo28835b(int[] iArr) {
            return false;
        }
    }

    /* renamed from: b.t.a.a.i$f */
    /* loaded from: classes-dex2jar.jar:b/t/a/a/i$f.class */
    public static abstract class AbstractC1810f extends AbstractC1809e {

        /* renamed from: a */
        protected C1524c.C1526b[] f6706a;

        /* renamed from: b */
        String f6707b;

        /* renamed from: c */
        int f6708c;

        /* renamed from: d */
        int f6709d;

        public AbstractC1810f() {
            super();
            this.f6706a = null;
            this.f6708c = 0;
        }

        public AbstractC1810f(AbstractC1810f abstractC1810f) {
            super();
            this.f6706a = null;
            this.f6708c = 0;
            this.f6707b = abstractC1810f.f6707b;
            this.f6709d = abstractC1810f.f6709d;
            this.f6706a = C1524c.m29837f(abstractC1810f.f6706a);
        }

        /* renamed from: c */
        public boolean mo28834c() {
            return false;
        }

        /* renamed from: d */
        public void m28833d(Path path) {
            path.reset();
            C1524c.C1526b[] c1526bArr = this.f6706a;
            if (c1526bArr != null) {
                C1524c.C1526b.m29828e(c1526bArr, path);
            }
        }

        public C1524c.C1526b[] getPathData() {
            return this.f6706a;
        }

        public String getPathName() {
            return this.f6707b;
        }

        public void setPathData(C1524c.C1526b[] c1526bArr) {
            if (!C1524c.m29841b(this.f6706a, c1526bArr)) {
                this.f6706a = C1524c.m29837f(c1526bArr);
            } else {
                C1524c.m29833j(this.f6706a, c1526bArr);
            }
        }
    }

    /* renamed from: b.t.a.a.i$g */
    /* loaded from: classes-dex2jar.jar:b/t/a/a/i$g.class */
    public static class C1811g {

        /* renamed from: a */
        private static final Matrix f6710a = new Matrix();

        /* renamed from: b */
        private final Path f6711b;

        /* renamed from: c */
        private final Path f6712c;

        /* renamed from: d */
        private final Matrix f6713d;

        /* renamed from: e */
        Paint f6714e;

        /* renamed from: f */
        Paint f6715f;

        /* renamed from: g */
        private PathMeasure f6716g;

        /* renamed from: h */
        private int f6717h;

        /* renamed from: i */
        final C1808d f6718i;

        /* renamed from: j */
        float f6719j;

        /* renamed from: k */
        float f6720k;

        /* renamed from: l */
        float f6721l;

        /* renamed from: m */
        float f6722m;

        /* renamed from: n */
        int f6723n;

        /* renamed from: o */
        String f6724o;

        /* renamed from: p */
        Boolean f6725p;

        /* renamed from: q */
        final C1489a<String, Object> f6726q;

        public C1811g() {
            this.f6713d = new Matrix();
            this.f6719j = 0.0f;
            this.f6720k = 0.0f;
            this.f6721l = 0.0f;
            this.f6722m = 0.0f;
            this.f6723n = 255;
            this.f6724o = null;
            this.f6725p = null;
            this.f6726q = new C1489a<>();
            this.f6718i = new C1808d();
            this.f6711b = new Path();
            this.f6712c = new Path();
        }

        public C1811g(C1811g c1811g) {
            this.f6713d = new Matrix();
            this.f6719j = 0.0f;
            this.f6720k = 0.0f;
            this.f6721l = 0.0f;
            this.f6722m = 0.0f;
            this.f6723n = 255;
            this.f6724o = null;
            this.f6725p = null;
            C1489a<String, Object> c1489a = new C1489a<>();
            this.f6726q = c1489a;
            this.f6718i = new C1808d(c1811g.f6718i, c1489a);
            this.f6711b = new Path(c1811g.f6711b);
            this.f6712c = new Path(c1811g.f6712c);
            this.f6719j = c1811g.f6719j;
            this.f6720k = c1811g.f6720k;
            this.f6721l = c1811g.f6721l;
            this.f6722m = c1811g.f6722m;
            this.f6717h = c1811g.f6717h;
            this.f6723n = c1811g.f6723n;
            this.f6724o = c1811g.f6724o;
            String str = c1811g.f6724o;
            if (str != null) {
                c1489a.put(str, this);
            }
            this.f6725p = c1811g.f6725p;
        }

        /* renamed from: a */
        private static float m28832a(float f, float f2, float f3, float f4) {
            return (f * f4) - (f2 * f3);
        }

        /* renamed from: c */
        private void m28830c(C1808d c1808d, Matrix matrix, Canvas canvas, int i, int i2, ColorFilter colorFilter) {
            c1808d.f6693a.set(matrix);
            c1808d.f6693a.preConcat(c1808d.f6702j);
            canvas.save();
            for (int i3 = 0; i3 < c1808d.f6694b.size(); i3++) {
                AbstractC1809e abstractC1809e = c1808d.f6694b.get(i3);
                if (abstractC1809e instanceof C1808d) {
                    m28830c((C1808d) abstractC1809e, c1808d.f6693a, canvas, i, i2, colorFilter);
                } else if (abstractC1809e instanceof AbstractC1810f) {
                    m28829d(c1808d, (AbstractC1810f) abstractC1809e, canvas, i, i2, colorFilter);
                }
            }
            canvas.restore();
        }

        /* renamed from: d */
        private void m28829d(C1808d c1808d, AbstractC1810f abstractC1810f, Canvas canvas, int i, int i2, ColorFilter colorFilter) {
            float f = i / this.f6721l;
            float f2 = i2 / this.f6722m;
            float min = Math.min(f, f2);
            Matrix matrix = c1808d.f6693a;
            this.f6713d.set(matrix);
            this.f6713d.postScale(f, f2);
            float m28828e = m28828e(matrix);
            if (m28828e == 0.0f) {
                return;
            }
            abstractC1810f.m28833d(this.f6711b);
            Path path = this.f6711b;
            this.f6712c.reset();
            if (abstractC1810f.mo28834c()) {
                this.f6712c.setFillType(abstractC1810f.f6708c == 0 ? Path.FillType.WINDING : Path.FillType.EVEN_ODD);
                this.f6712c.addPath(path, this.f6713d);
                canvas.clipPath(this.f6712c);
                return;
            }
            C1807c c1807c = (C1807c) abstractC1810f;
            float f3 = c1807c.f6687k;
            if (f3 != 0.0f || c1807c.f6688l != 1.0f) {
                float f4 = c1807c.f6689m;
                float f5 = c1807c.f6688l;
                if (this.f6716g == null) {
                    this.f6716g = new PathMeasure();
                }
                this.f6716g.setPath(this.f6711b, false);
                float length = this.f6716g.getLength();
                float f6 = ((f3 + f4) % 1.0f) * length;
                float f7 = ((f5 + f4) % 1.0f) * length;
                path.reset();
                if (f6 > f7) {
                    this.f6716g.getSegment(f6, length, path, true);
                    this.f6716g.getSegment(0.0f, f7, path, true);
                } else {
                    this.f6716g.getSegment(f6, f7, path, true);
                }
                path.rLineTo(0.0f, 0.0f);
            }
            this.f6712c.addPath(path, this.f6713d);
            if (c1807c.f6684h.m33304l()) {
                C0596b c0596b = c1807c.f6684h;
                if (this.f6715f == null) {
                    Paint paint = new Paint(1);
                    this.f6715f = paint;
                    paint.setStyle(Paint.Style.FILL);
                }
                Paint paint2 = this.f6715f;
                if (c0596b.m33308h()) {
                    Shader m33310f = c0596b.m33310f();
                    m33310f.setLocalMatrix(this.f6713d);
                    paint2.setShader(m33310f);
                    paint2.setAlpha(Math.round(c1807c.f6686j * 255.0f));
                } else {
                    paint2.setShader(null);
                    paint2.setAlpha(255);
                    paint2.setColor(C1804i.m28855a(c0596b.m33311e(), c1807c.f6686j));
                }
                paint2.setColorFilter(colorFilter);
                this.f6712c.setFillType(c1807c.f6708c == 0 ? Path.FillType.WINDING : Path.FillType.EVEN_ODD);
                canvas.drawPath(this.f6712c, paint2);
            }
            if (!c1807c.f6682f.m33304l()) {
                return;
            }
            C0596b c0596b2 = c1807c.f6682f;
            if (this.f6714e == null) {
                Paint paint3 = new Paint(1);
                this.f6714e = paint3;
                paint3.setStyle(Paint.Style.STROKE);
            }
            Paint paint4 = this.f6714e;
            Paint.Join join = c1807c.f6691o;
            if (join != null) {
                paint4.setStrokeJoin(join);
            }
            Paint.Cap cap = c1807c.f6690n;
            if (cap != null) {
                paint4.setStrokeCap(cap);
            }
            paint4.setStrokeMiter(c1807c.f6692p);
            if (c0596b2.m33308h()) {
                Shader m33310f2 = c0596b2.m33310f();
                m33310f2.setLocalMatrix(this.f6713d);
                paint4.setShader(m33310f2);
                paint4.setAlpha(Math.round(c1807c.f6685i * 255.0f));
            } else {
                paint4.setShader(null);
                paint4.setAlpha(255);
                paint4.setColor(C1804i.m28855a(c0596b2.m33311e(), c1807c.f6685i));
            }
            paint4.setColorFilter(colorFilter);
            paint4.setStrokeWidth(c1807c.f6683g * min * m28828e);
            canvas.drawPath(this.f6712c, paint4);
        }

        /* renamed from: e */
        private float m28828e(Matrix matrix) {
            float[] fArr = {0.0f, 1.0f, 1.0f, 0.0f};
            matrix.mapVectors(fArr);
            float hypot = (float) Math.hypot(fArr[0], fArr[1]);
            float hypot2 = (float) Math.hypot(fArr[2], fArr[3]);
            float m28832a = m28832a(fArr[0], fArr[1], fArr[2], fArr[3]);
            float max = Math.max(hypot, hypot2);
            float f = 0.0f;
            if (max > 0.0f) {
                f = Math.abs(m28832a) / max;
            }
            return f;
        }

        /* renamed from: b */
        public void m28831b(Canvas canvas, int i, int i2, ColorFilter colorFilter) {
            m28830c(this.f6718i, f6710a, canvas, i, i2, colorFilter);
        }

        /* renamed from: f */
        public boolean m28827f() {
            if (this.f6725p == null) {
                this.f6725p = Boolean.valueOf(this.f6718i.mo28836a());
            }
            return this.f6725p.booleanValue();
        }

        /* renamed from: g */
        public boolean m28826g(int[] iArr) {
            return this.f6718i.mo28835b(iArr);
        }

        public float getAlpha() {
            return getRootAlpha() / 255.0f;
        }

        public int getRootAlpha() {
            return this.f6723n;
        }

        public void setAlpha(float f) {
            setRootAlpha((int) (f * 255.0f));
        }

        public void setRootAlpha(int i) {
            this.f6723n = i;
        }
    }

    /* renamed from: b.t.a.a.i$h */
    /* loaded from: classes-dex2jar.jar:b/t/a/a/i$h.class */
    public static class C1812h extends Drawable.ConstantState {

        /* renamed from: a */
        int f6727a;

        /* renamed from: b */
        C1811g f6728b;

        /* renamed from: c */
        ColorStateList f6729c;

        /* renamed from: d */
        PorterDuff.Mode f6730d;

        /* renamed from: e */
        boolean f6731e;

        /* renamed from: f */
        Bitmap f6732f;

        /* renamed from: g */
        ColorStateList f6733g;

        /* renamed from: h */
        PorterDuff.Mode f6734h;

        /* renamed from: i */
        int f6735i;

        /* renamed from: j */
        boolean f6736j;

        /* renamed from: k */
        boolean f6737k;

        /* renamed from: l */
        Paint f6738l;

        public C1812h() {
            this.f6729c = null;
            this.f6730d = C1804i.f6671e;
            this.f6728b = new C1811g();
        }

        public C1812h(C1812h c1812h) {
            this.f6729c = null;
            this.f6730d = C1804i.f6671e;
            if (c1812h != null) {
                this.f6727a = c1812h.f6727a;
                C1811g c1811g = new C1811g(c1812h.f6728b);
                this.f6728b = c1811g;
                if (c1812h.f6728b.f6715f != null) {
                    c1811g.f6715f = new Paint(c1812h.f6728b.f6715f);
                }
                if (c1812h.f6728b.f6714e != null) {
                    this.f6728b.f6714e = new Paint(c1812h.f6728b.f6714e);
                }
                this.f6729c = c1812h.f6729c;
                this.f6730d = c1812h.f6730d;
                this.f6731e = c1812h.f6731e;
            }
        }

        /* renamed from: a */
        public boolean m28825a(int i, int i2) {
            return i == this.f6732f.getWidth() && i2 == this.f6732f.getHeight();
        }

        /* renamed from: b */
        public boolean m28824b() {
            return !this.f6737k && this.f6733g == this.f6729c && this.f6734h == this.f6730d && this.f6736j == this.f6731e && this.f6735i == this.f6728b.getRootAlpha();
        }

        /* renamed from: c */
        public void m28823c(int i, int i2) {
            if (this.f6732f == null || !m28825a(i, i2)) {
                this.f6732f = Bitmap.createBitmap(i, i2, Bitmap.Config.ARGB_8888);
                this.f6737k = true;
            }
        }

        /* renamed from: d */
        public void m28822d(Canvas canvas, ColorFilter colorFilter, Rect rect) {
            canvas.drawBitmap(this.f6732f, (Rect) null, rect, m28821e(colorFilter));
        }

        /* renamed from: e */
        public Paint m28821e(ColorFilter colorFilter) {
            if (m28820f() || colorFilter != null) {
                if (this.f6738l == null) {
                    Paint paint = new Paint();
                    this.f6738l = paint;
                    paint.setFilterBitmap(true);
                }
                this.f6738l.setAlpha(this.f6728b.getRootAlpha());
                this.f6738l.setColorFilter(colorFilter);
                return this.f6738l;
            }
            return null;
        }

        /* renamed from: f */
        public boolean m28820f() {
            return this.f6728b.getRootAlpha() < 255;
        }

        /* renamed from: g */
        public boolean m28819g() {
            return this.f6728b.m28827f();
        }

        @Override // android.graphics.drawable.Drawable.ConstantState
        public int getChangingConfigurations() {
            return this.f6727a;
        }

        /* renamed from: h */
        public boolean m28818h(int[] iArr) {
            boolean m28826g = this.f6728b.m28826g(iArr);
            this.f6737k |= m28826g;
            return m28826g;
        }

        /* renamed from: i */
        public void m28817i() {
            this.f6733g = this.f6729c;
            this.f6734h = this.f6730d;
            this.f6735i = this.f6728b.getRootAlpha();
            this.f6736j = this.f6731e;
            this.f6737k = false;
        }

        /* renamed from: j */
        public void m28816j(int i, int i2) {
            this.f6732f.eraseColor(0);
            this.f6728b.m28831b(new Canvas(this.f6732f), i, i2, null);
        }

        @Override // android.graphics.drawable.Drawable.ConstantState
        public Drawable newDrawable() {
            return new C1804i(this);
        }

        @Override // android.graphics.drawable.Drawable.ConstantState
        public Drawable newDrawable(Resources resources) {
            return new C1804i(this);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: b.t.a.a.i$i */
    /* loaded from: classes-dex2jar.jar:b/t/a/a/i$i.class */
    public static class C1813i extends Drawable.ConstantState {

        /* renamed from: a */
        private final Drawable.ConstantState f6739a;

        public C1813i(Drawable.ConstantState constantState) {
            this.f6739a = constantState;
        }

        @Override // android.graphics.drawable.Drawable.ConstantState
        public boolean canApplyTheme() {
            return this.f6739a.canApplyTheme();
        }

        @Override // android.graphics.drawable.Drawable.ConstantState
        public int getChangingConfigurations() {
            return this.f6739a.getChangingConfigurations();
        }

        @Override // android.graphics.drawable.Drawable.ConstantState
        public Drawable newDrawable() {
            C1804i c1804i = new C1804i();
            c1804i.f6670d = (VectorDrawable) this.f6739a.newDrawable();
            return c1804i;
        }

        @Override // android.graphics.drawable.Drawable.ConstantState
        public Drawable newDrawable(Resources resources) {
            C1804i c1804i = new C1804i();
            c1804i.f6670d = (VectorDrawable) this.f6739a.newDrawable(resources);
            return c1804i;
        }

        @Override // android.graphics.drawable.Drawable.ConstantState
        public Drawable newDrawable(Resources resources, Resources.Theme theme) {
            C1804i c1804i = new C1804i();
            c1804i.f6670d = (VectorDrawable) this.f6739a.newDrawable(resources, theme);
            return c1804i;
        }
    }

    C1804i() {
        this.f6676j = true;
        this.f6678l = new float[9];
        this.f6679m = new Matrix();
        this.f6680n = new Rect();
        this.f6672f = new C1812h();
    }

    C1804i(C1812h c1812h) {
        this.f6676j = true;
        this.f6678l = new float[9];
        this.f6679m = new Matrix();
        this.f6680n = new Rect();
        this.f6672f = c1812h;
        this.f6673g = m28846j(this.f6673g, c1812h.f6729c, c1812h.f6730d);
    }

    /* renamed from: a */
    static int m28855a(int i, float f) {
        return (i & 16777215) | (((int) (Color.alpha(i) * f)) << 24);
    }

    /* renamed from: b */
    public static C1804i m28854b(Resources resources, int i, Resources.Theme theme) {
        int next;
        if (Build.VERSION.SDK_INT >= 24) {
            C1804i c1804i = new C1804i();
            c1804i.f6670d = C0605f.m33274d(resources, i, theme);
            c1804i.f6677k = new C1813i(c1804i.f6670d.getConstantState());
            return c1804i;
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
            if (next != 2) {
                throw new XmlPullParserException("No start tag found");
            }
            return m28853c(resources, xml, asAttributeSet, theme);
        } catch (IOException e) {
            Log.e("VectorDrawableCompat", "parser error", e);
            return null;
        } catch (XmlPullParserException e2) {
            Log.e("VectorDrawableCompat", "parser error", e2);
            return null;
        }
    }

    /* renamed from: c */
    public static C1804i m28853c(Resources resources, XmlPullParser xmlPullParser, AttributeSet attributeSet, Resources.Theme theme) {
        C1804i c1804i = new C1804i();
        c1804i.inflate(resources, xmlPullParser, attributeSet, theme);
        return c1804i;
    }

    /* renamed from: e */
    private void m28851e(Resources resources, XmlPullParser xmlPullParser, AttributeSet attributeSet, Resources.Theme theme) {
        boolean z;
        boolean z2;
        C1812h c1812h = this.f6672f;
        C1811g c1811g = c1812h.f6728b;
        ArrayDeque arrayDeque = new ArrayDeque();
        arrayDeque.push(c1811g.f6718i);
        int eventType = xmlPullParser.getEventType();
        int depth = xmlPullParser.getDepth();
        boolean z3 = true;
        while (true) {
            z = z3;
            if (eventType == 1 || (xmlPullParser.getDepth() < depth + 1 && eventType == 3)) {
                break;
            }
            if (eventType == 2) {
                String name = xmlPullParser.getName();
                C1808d c1808d = (C1808d) arrayDeque.peek();
                if ("path".equals(name)) {
                    C1807c c1807c = new C1807c();
                    c1807c.m28841g(resources, attributeSet, theme, xmlPullParser);
                    c1808d.f6694b.add(c1807c);
                    if (c1807c.getPathName() != null) {
                        c1811g.f6726q.put(c1807c.getPathName(), c1807c);
                    }
                    z2 = false;
                    c1812h.f6727a = c1807c.f6709d | c1812h.f6727a;
                } else if ("clip-path".equals(name)) {
                    C1806b c1806b = new C1806b();
                    c1806b.m28845e(resources, attributeSet, theme, xmlPullParser);
                    c1808d.f6694b.add(c1806b);
                    if (c1806b.getPathName() != null) {
                        c1811g.f6726q.put(c1806b.getPathName(), c1806b);
                    }
                    c1812h.f6727a = c1806b.f6709d | c1812h.f6727a;
                    z2 = z;
                } else {
                    z2 = z;
                    if ("group".equals(name)) {
                        C1808d c1808d2 = new C1808d();
                        c1808d2.m28839c(resources, attributeSet, theme, xmlPullParser);
                        c1808d.f6694b.add(c1808d2);
                        arrayDeque.push(c1808d2);
                        if (c1808d2.getGroupName() != null) {
                            c1811g.f6726q.put(c1808d2.getGroupName(), c1808d2);
                        }
                        c1812h.f6727a = c1808d2.f6703k | c1812h.f6727a;
                        z2 = z;
                    }
                }
            } else {
                z2 = z;
                if (eventType == 3) {
                    z2 = z;
                    if ("group".equals(xmlPullParser.getName())) {
                        arrayDeque.pop();
                        z2 = z;
                    }
                }
            }
            eventType = xmlPullParser.next();
            z3 = z2;
        }
        if (!z) {
            return;
        }
        throw new XmlPullParserException("no path defined");
    }

    /* renamed from: f */
    private boolean m28850f() {
        boolean z = false;
        if (Build.VERSION.SDK_INT >= 17) {
            z = false;
            if (isAutoMirrored()) {
                z = false;
                if (C0615a.m33224f(this) == 1) {
                    z = true;
                }
            }
        }
        return z;
    }

    /* renamed from: g */
    private static PorterDuff.Mode m28849g(int i, PorterDuff.Mode mode) {
        if (i != 3) {
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
        return PorterDuff.Mode.SRC_OVER;
    }

    /* renamed from: i */
    private void m28847i(TypedArray typedArray, XmlPullParser xmlPullParser, Resources.Theme theme) {
        C1812h c1812h = this.f6672f;
        C1811g c1811g = c1812h.f6728b;
        c1812h.f6730d = m28849g(C0614g.m33253g(typedArray, xmlPullParser, "tintMode", 6, -1), PorterDuff.Mode.SRC_IN);
        ColorStateList m33257c = C0614g.m33257c(typedArray, xmlPullParser, theme, "tint", 1);
        if (m33257c != null) {
            c1812h.f6729c = m33257c;
        }
        c1812h.f6731e = C0614g.m33259a(typedArray, xmlPullParser, "autoMirrored", 5, c1812h.f6731e);
        c1811g.f6721l = C0614g.m33254f(typedArray, xmlPullParser, "viewportWidth", 7, c1811g.f6721l);
        float m33254f = C0614g.m33254f(typedArray, xmlPullParser, "viewportHeight", 8, c1811g.f6722m);
        c1811g.f6722m = m33254f;
        if (c1811g.f6721l <= 0.0f) {
            throw new XmlPullParserException(typedArray.getPositionDescription() + "<vector> tag requires viewportWidth > 0");
        } else if (m33254f <= 0.0f) {
            throw new XmlPullParserException(typedArray.getPositionDescription() + "<vector> tag requires viewportHeight > 0");
        } else {
            c1811g.f6719j = typedArray.getDimension(3, c1811g.f6719j);
            float dimension = typedArray.getDimension(2, c1811g.f6720k);
            c1811g.f6720k = dimension;
            if (c1811g.f6719j <= 0.0f) {
                throw new XmlPullParserException(typedArray.getPositionDescription() + "<vector> tag requires width > 0");
            } else if (dimension <= 0.0f) {
                throw new XmlPullParserException(typedArray.getPositionDescription() + "<vector> tag requires height > 0");
            } else {
                c1811g.setAlpha(C0614g.m33254f(typedArray, xmlPullParser, "alpha", 4, c1811g.getAlpha()));
                String string = typedArray.getString(0);
                if (string == null) {
                    return;
                }
                c1811g.f6724o = string;
                c1811g.f6726q.put(string, c1811g);
            }
        }
    }

    @Override // p020b.p074t.p075a.p076a.AbstractC1803h, android.graphics.drawable.Drawable
    public /* bridge */ /* synthetic */ void applyTheme(Resources.Theme theme) {
        super.applyTheme(theme);
    }

    @Override // android.graphics.drawable.Drawable
    public boolean canApplyTheme() {
        Drawable drawable = this.f6670d;
        if (drawable != null) {
            C0615a.m33228b(drawable);
            return false;
        }
        return false;
    }

    @Override // p020b.p074t.p075a.p076a.AbstractC1803h, android.graphics.drawable.Drawable
    public /* bridge */ /* synthetic */ void clearColorFilter() {
        super.clearColorFilter();
    }

    /* renamed from: d */
    public Object m28852d(String str) {
        return this.f6672f.f6728b.f6726q.get(str);
    }

    @Override // android.graphics.drawable.Drawable
    public void draw(Canvas canvas) {
        Drawable drawable = this.f6670d;
        if (drawable != null) {
            drawable.draw(canvas);
            return;
        }
        copyBounds(this.f6680n);
        if (this.f6680n.width() <= 0 || this.f6680n.height() <= 0) {
            return;
        }
        ColorFilter colorFilter = this.f6674h;
        PorterDuffColorFilter porterDuffColorFilter = colorFilter;
        if (colorFilter == null) {
            porterDuffColorFilter = this.f6673g;
        }
        canvas.getMatrix(this.f6679m);
        this.f6679m.getValues(this.f6678l);
        float abs = Math.abs(this.f6678l[0]);
        float abs2 = Math.abs(this.f6678l[4]);
        float abs3 = Math.abs(this.f6678l[1]);
        float abs4 = Math.abs(this.f6678l[3]);
        if (abs3 != 0.0f || abs4 != 0.0f) {
            abs = 1.0f;
            abs2 = 1.0f;
        }
        int min = Math.min(2048, (int) (this.f6680n.width() * abs));
        int min2 = Math.min(2048, (int) (this.f6680n.height() * abs2));
        if (min <= 0 || min2 <= 0) {
            return;
        }
        int save = canvas.save();
        Rect rect = this.f6680n;
        canvas.translate(rect.left, rect.top);
        if (m28850f()) {
            canvas.translate(this.f6680n.width(), 0.0f);
            canvas.scale(-1.0f, 1.0f);
        }
        this.f6680n.offsetTo(0, 0);
        this.f6672f.m28823c(min, min2);
        if (!this.f6676j) {
            this.f6672f.m28816j(min, min2);
        } else if (!this.f6672f.m28824b()) {
            this.f6672f.m28816j(min, min2);
            this.f6672f.m28817i();
        }
        this.f6672f.m28822d(canvas, porterDuffColorFilter, this.f6680n);
        canvas.restoreToCount(save);
    }

    @Override // android.graphics.drawable.Drawable
    public int getAlpha() {
        Drawable drawable = this.f6670d;
        return drawable != null ? C0615a.m33226d(drawable) : this.f6672f.f6728b.getRootAlpha();
    }

    @Override // android.graphics.drawable.Drawable
    public int getChangingConfigurations() {
        Drawable drawable = this.f6670d;
        return drawable != null ? drawable.getChangingConfigurations() : super.getChangingConfigurations() | this.f6672f.getChangingConfigurations();
    }

    @Override // android.graphics.drawable.Drawable
    public ColorFilter getColorFilter() {
        Drawable drawable = this.f6670d;
        return drawable != null ? C0615a.m33225e(drawable) : this.f6674h;
    }

    @Override // android.graphics.drawable.Drawable
    public Drawable.ConstantState getConstantState() {
        if (this.f6670d == null || Build.VERSION.SDK_INT < 24) {
            this.f6672f.f6727a = getChangingConfigurations();
            return this.f6672f;
        }
        return new C1813i(this.f6670d.getConstantState());
    }

    @Override // p020b.p074t.p075a.p076a.AbstractC1803h, android.graphics.drawable.Drawable
    public /* bridge */ /* synthetic */ Drawable getCurrent() {
        return super.getCurrent();
    }

    @Override // android.graphics.drawable.Drawable
    public int getIntrinsicHeight() {
        Drawable drawable = this.f6670d;
        return drawable != null ? drawable.getIntrinsicHeight() : (int) this.f6672f.f6728b.f6720k;
    }

    @Override // android.graphics.drawable.Drawable
    public int getIntrinsicWidth() {
        Drawable drawable = this.f6670d;
        return drawable != null ? drawable.getIntrinsicWidth() : (int) this.f6672f.f6728b.f6719j;
    }

    @Override // p020b.p074t.p075a.p076a.AbstractC1803h, android.graphics.drawable.Drawable
    public /* bridge */ /* synthetic */ int getMinimumHeight() {
        return super.getMinimumHeight();
    }

    @Override // p020b.p074t.p075a.p076a.AbstractC1803h, android.graphics.drawable.Drawable
    public /* bridge */ /* synthetic */ int getMinimumWidth() {
        return super.getMinimumWidth();
    }

    @Override // android.graphics.drawable.Drawable
    public int getOpacity() {
        Drawable drawable = this.f6670d;
        if (drawable != null) {
            return drawable.getOpacity();
        }
        return -3;
    }

    @Override // p020b.p074t.p075a.p076a.AbstractC1803h, android.graphics.drawable.Drawable
    public /* bridge */ /* synthetic */ boolean getPadding(Rect rect) {
        return super.getPadding(rect);
    }

    @Override // p020b.p074t.p075a.p076a.AbstractC1803h, android.graphics.drawable.Drawable
    public /* bridge */ /* synthetic */ int[] getState() {
        return super.getState();
    }

    @Override // p020b.p074t.p075a.p076a.AbstractC1803h, android.graphics.drawable.Drawable
    public /* bridge */ /* synthetic */ Region getTransparentRegion() {
        return super.getTransparentRegion();
    }

    /* renamed from: h */
    public void m28848h(boolean z) {
        this.f6676j = z;
    }

    @Override // android.graphics.drawable.Drawable
    public void inflate(Resources resources, XmlPullParser xmlPullParser, AttributeSet attributeSet) {
        Drawable drawable = this.f6670d;
        if (drawable != null) {
            drawable.inflate(resources, xmlPullParser, attributeSet);
        } else {
            inflate(resources, xmlPullParser, attributeSet, null);
        }
    }

    @Override // android.graphics.drawable.Drawable
    public void inflate(Resources resources, XmlPullParser xmlPullParser, AttributeSet attributeSet, Resources.Theme theme) {
        Drawable drawable = this.f6670d;
        if (drawable != null) {
            C0615a.m33223g(drawable, resources, xmlPullParser, attributeSet, theme);
            return;
        }
        C1812h c1812h = this.f6672f;
        c1812h.f6728b = new C1811g();
        TypedArray m33249k = C0614g.m33249k(resources, theme, attributeSet, C1792a.f6641a);
        m28847i(m33249k, xmlPullParser, theme);
        m33249k.recycle();
        c1812h.f6727a = getChangingConfigurations();
        c1812h.f6737k = true;
        m28851e(resources, xmlPullParser, attributeSet, theme);
        this.f6673g = m28846j(this.f6673g, c1812h.f6729c, c1812h.f6730d);
    }

    @Override // android.graphics.drawable.Drawable
    public void invalidateSelf() {
        Drawable drawable = this.f6670d;
        if (drawable != null) {
            drawable.invalidateSelf();
        } else {
            super.invalidateSelf();
        }
    }

    @Override // android.graphics.drawable.Drawable
    public boolean isAutoMirrored() {
        Drawable drawable = this.f6670d;
        return drawable != null ? C0615a.m33222h(drawable) : this.f6672f.f6731e;
    }

    @Override // android.graphics.drawable.Drawable
    public boolean isStateful() {
        C1812h c1812h;
        ColorStateList colorStateList;
        Drawable drawable = this.f6670d;
        if (drawable != null) {
            return drawable.isStateful();
        }
        return super.isStateful() || ((c1812h = this.f6672f) != null && (c1812h.m28819g() || ((colorStateList = this.f6672f.f6729c) != null && colorStateList.isStateful())));
    }

    /* renamed from: j */
    PorterDuffColorFilter m28846j(PorterDuffColorFilter porterDuffColorFilter, ColorStateList colorStateList, PorterDuff.Mode mode) {
        if (colorStateList == null || mode == null) {
            return null;
        }
        return new PorterDuffColorFilter(colorStateList.getColorForState(getState(), 0), mode);
    }

    @Override // p020b.p074t.p075a.p076a.AbstractC1803h, android.graphics.drawable.Drawable
    public /* bridge */ /* synthetic */ void jumpToCurrentState() {
        super.jumpToCurrentState();
    }

    @Override // android.graphics.drawable.Drawable
    public Drawable mutate() {
        Drawable drawable = this.f6670d;
        if (drawable != null) {
            drawable.mutate();
            return this;
        }
        if (!this.f6675i && super.mutate() == this) {
            this.f6672f = new C1812h(this.f6672f);
            this.f6675i = true;
        }
        return this;
    }

    @Override // android.graphics.drawable.Drawable
    protected void onBoundsChange(Rect rect) {
        Drawable drawable = this.f6670d;
        if (drawable != null) {
            drawable.setBounds(rect);
        }
    }

    @Override // android.graphics.drawable.Drawable
    protected boolean onStateChange(int[] iArr) {
        Drawable drawable = this.f6670d;
        if (drawable != null) {
            return drawable.setState(iArr);
        }
        C1812h c1812h = this.f6672f;
        ColorStateList colorStateList = c1812h.f6729c;
        boolean z = false;
        if (colorStateList != null) {
            PorterDuff.Mode mode = c1812h.f6730d;
            z = false;
            if (mode != null) {
                this.f6673g = m28846j(this.f6673g, colorStateList, mode);
                invalidateSelf();
                z = true;
            }
        }
        if (c1812h.m28819g() && c1812h.m28818h(iArr)) {
            invalidateSelf();
            z = true;
        }
        return z;
    }

    @Override // android.graphics.drawable.Drawable
    public void scheduleSelf(Runnable runnable, long j) {
        Drawable drawable = this.f6670d;
        if (drawable != null) {
            drawable.scheduleSelf(runnable, j);
        } else {
            super.scheduleSelf(runnable, j);
        }
    }

    @Override // android.graphics.drawable.Drawable
    public void setAlpha(int i) {
        Drawable drawable = this.f6670d;
        if (drawable != null) {
            drawable.setAlpha(i);
        } else if (this.f6672f.f6728b.getRootAlpha() == i) {
        } else {
            this.f6672f.f6728b.setRootAlpha(i);
            invalidateSelf();
        }
    }

    @Override // android.graphics.drawable.Drawable
    public void setAutoMirrored(boolean z) {
        Drawable drawable = this.f6670d;
        if (drawable != null) {
            C0615a.m33220j(drawable, z);
        } else {
            this.f6672f.f6731e = z;
        }
    }

    @Override // p020b.p074t.p075a.p076a.AbstractC1803h, android.graphics.drawable.Drawable
    public /* bridge */ /* synthetic */ void setChangingConfigurations(int i) {
        super.setChangingConfigurations(i);
    }

    @Override // p020b.p074t.p075a.p076a.AbstractC1803h, android.graphics.drawable.Drawable
    public /* bridge */ /* synthetic */ void setColorFilter(int i, PorterDuff.Mode mode) {
        super.setColorFilter(i, mode);
    }

    @Override // android.graphics.drawable.Drawable
    public void setColorFilter(ColorFilter colorFilter) {
        Drawable drawable = this.f6670d;
        if (drawable != null) {
            drawable.setColorFilter(colorFilter);
            return;
        }
        this.f6674h = colorFilter;
        invalidateSelf();
    }

    @Override // p020b.p074t.p075a.p076a.AbstractC1803h, android.graphics.drawable.Drawable
    public /* bridge */ /* synthetic */ void setFilterBitmap(boolean z) {
        super.setFilterBitmap(z);
    }

    @Override // p020b.p074t.p075a.p076a.AbstractC1803h, android.graphics.drawable.Drawable
    public /* bridge */ /* synthetic */ void setHotspot(float f, float f2) {
        super.setHotspot(f, f2);
    }

    @Override // p020b.p074t.p075a.p076a.AbstractC1803h, android.graphics.drawable.Drawable
    public /* bridge */ /* synthetic */ void setHotspotBounds(int i, int i2, int i3, int i4) {
        super.setHotspotBounds(i, i2, i3, i4);
    }

    @Override // p020b.p074t.p075a.p076a.AbstractC1803h, android.graphics.drawable.Drawable
    public /* bridge */ /* synthetic */ boolean setState(int[] iArr) {
        return super.setState(iArr);
    }

    @Override // android.graphics.drawable.Drawable, androidx.core.graphics.drawable.AbstractC0616b
    public void setTint(int i) {
        Drawable drawable = this.f6670d;
        if (drawable != null) {
            C0615a.m33216n(drawable, i);
        } else {
            setTintList(ColorStateList.valueOf(i));
        }
    }

    @Override // android.graphics.drawable.Drawable, androidx.core.graphics.drawable.AbstractC0616b
    public void setTintList(ColorStateList colorStateList) {
        Drawable drawable = this.f6670d;
        if (drawable != null) {
            C0615a.m33215o(drawable, colorStateList);
            return;
        }
        C1812h c1812h = this.f6672f;
        if (c1812h.f6729c == colorStateList) {
            return;
        }
        c1812h.f6729c = colorStateList;
        this.f6673g = m28846j(this.f6673g, colorStateList, c1812h.f6730d);
        invalidateSelf();
    }

    @Override // android.graphics.drawable.Drawable, androidx.core.graphics.drawable.AbstractC0616b
    public void setTintMode(PorterDuff.Mode mode) {
        Drawable drawable = this.f6670d;
        if (drawable != null) {
            C0615a.m33214p(drawable, mode);
            return;
        }
        C1812h c1812h = this.f6672f;
        if (c1812h.f6730d == mode) {
            return;
        }
        c1812h.f6730d = mode;
        this.f6673g = m28846j(this.f6673g, c1812h.f6729c, mode);
        invalidateSelf();
    }

    @Override // android.graphics.drawable.Drawable
    public boolean setVisible(boolean z, boolean z2) {
        Drawable drawable = this.f6670d;
        return drawable != null ? drawable.setVisible(z, z2) : super.setVisible(z, z2);
    }

    @Override // android.graphics.drawable.Drawable
    public void unscheduleSelf(Runnable runnable) {
        Drawable drawable = this.f6670d;
        if (drawable != null) {
            drawable.unscheduleSelf(runnable);
        } else {
            super.unscheduleSelf(runnable);
        }
    }
}

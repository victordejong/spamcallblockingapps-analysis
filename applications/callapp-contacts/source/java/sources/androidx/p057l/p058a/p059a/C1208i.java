package androidx.p057l.p058a.p059a;

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
import android.util.TypedValue;
import android.util.Xml;
import androidx.core.content.res.C0794a;
import androidx.core.content.res.C0795b;
import androidx.core.content.res.C0804f;
import androidx.core.content.res.C0810g;
import androidx.core.graphics.C0836c;
import androidx.core.graphics.drawable.C0840a;
import androidx.p023b.C0428a;
import com.google.android.gms.maps.model.BitmapDescriptorFactory;
import java.io.IOException;
import java.util.ArrayDeque;
import java.util.ArrayList;
import org.xmlpull.v1.XmlPullParser;
import org.xmlpull.v1.XmlPullParserException;
/* renamed from: androidx.l.a.a.i */
/* loaded from: classes-dex2jar.jar:androidx/l/a/a/i.class */
public final class C1208i extends AbstractC1207h {

    /* renamed from: a */
    static final PorterDuff.Mode f4694a = PorterDuff.Mode.SRC_IN;

    /* renamed from: b */
    boolean f4695b;

    /* renamed from: d */
    private C1216g f4696d;

    /* renamed from: e */
    private PorterDuffColorFilter f4697e;

    /* renamed from: f */
    private ColorFilter f4698f;

    /* renamed from: g */
    private boolean f4699g;

    /* renamed from: h */
    private Drawable.ConstantState f4700h;

    /* renamed from: i */
    private final float[] f4701i;

    /* renamed from: j */
    private final Matrix f4702j;

    /* renamed from: k */
    private final Rect f4703k;

    /* renamed from: androidx.l.a.a.i$a */
    /* loaded from: classes-dex2jar.jar:androidx/l/a/a/i$a.class */
    public static final class C1210a extends AbstractC1214e {
        C1210a() {
        }

        C1210a(C1210a c1210a) {
            super(c1210a);
        }

        /* renamed from: a */
        final void m43351a(TypedArray typedArray, XmlPullParser xmlPullParser) {
            String string = typedArray.getString(0);
            if (string != null) {
                this.f4730m = string;
            }
            String string2 = typedArray.getString(1);
            if (string2 != null) {
                this.f4729l = C0836c.m44385b(string2);
            }
            this.f4731n = C0810g.m44454a(typedArray, xmlPullParser, "fillType", 2, 0);
        }

        @Override // androidx.p057l.p058a.p059a.C1208i.AbstractC1214e
        /* renamed from: a */
        public final boolean mo43346a() {
            return true;
        }
    }

    /* renamed from: androidx.l.a.a.i$b */
    /* loaded from: classes-dex2jar.jar:androidx/l/a/a/i$b.class */
    public static final class C1211b extends AbstractC1214e {

        /* renamed from: a */
        C0795b f4704a;

        /* renamed from: b */
        float f4705b;

        /* renamed from: c */
        C0795b f4706c;

        /* renamed from: d */
        float f4707d;

        /* renamed from: e */
        float f4708e;

        /* renamed from: f */
        float f4709f;

        /* renamed from: g */
        float f4710g;

        /* renamed from: h */
        float f4711h;

        /* renamed from: i */
        Paint.Cap f4712i;

        /* renamed from: j */
        Paint.Join f4713j;

        /* renamed from: k */
        float f4714k;

        /* renamed from: p */
        private int[] f4715p;

        C1211b() {
            this.f4705b = BitmapDescriptorFactory.HUE_RED;
            this.f4707d = 1.0f;
            this.f4708e = 1.0f;
            this.f4709f = BitmapDescriptorFactory.HUE_RED;
            this.f4710g = 1.0f;
            this.f4711h = BitmapDescriptorFactory.HUE_RED;
            this.f4712i = Paint.Cap.BUTT;
            this.f4713j = Paint.Join.MITER;
            this.f4714k = 4.0f;
        }

        C1211b(C1211b c1211b) {
            super(c1211b);
            this.f4705b = BitmapDescriptorFactory.HUE_RED;
            this.f4707d = 1.0f;
            this.f4708e = 1.0f;
            this.f4709f = BitmapDescriptorFactory.HUE_RED;
            this.f4710g = 1.0f;
            this.f4711h = BitmapDescriptorFactory.HUE_RED;
            this.f4712i = Paint.Cap.BUTT;
            this.f4713j = Paint.Join.MITER;
            this.f4714k = 4.0f;
            this.f4715p = c1211b.f4715p;
            this.f4704a = c1211b.f4704a;
            this.f4705b = c1211b.f4705b;
            this.f4707d = c1211b.f4707d;
            this.f4706c = c1211b.f4706c;
            this.f4731n = c1211b.f4731n;
            this.f4708e = c1211b.f4708e;
            this.f4709f = c1211b.f4709f;
            this.f4710g = c1211b.f4710g;
            this.f4711h = c1211b.f4711h;
            this.f4712i = c1211b.f4712i;
            this.f4713j = c1211b.f4713j;
            this.f4714k = c1211b.f4714k;
        }

        /* renamed from: a */
        final void m43350a(TypedArray typedArray, XmlPullParser xmlPullParser, Resources.Theme theme) {
            this.f4715p = null;
            if (!C0810g.m44452a(xmlPullParser, "pathData")) {
                return;
            }
            String string = typedArray.getString(0);
            if (string != null) {
                this.f4730m = string;
            }
            String string2 = typedArray.getString(2);
            if (string2 != null) {
                this.f4729l = C0836c.m44385b(string2);
            }
            this.f4706c = C0810g.m44458a(typedArray, xmlPullParser, theme, "fillColor", 1);
            this.f4708e = C0810g.m44455a(typedArray, xmlPullParser, "fillAlpha", 12, this.f4708e);
            int m44454a = C0810g.m44454a(typedArray, xmlPullParser, "strokeLineCap", 8, -1);
            Paint.Cap cap = this.f4712i;
            if (m44454a == 0) {
                cap = Paint.Cap.BUTT;
            } else if (m44454a == 1) {
                cap = Paint.Cap.ROUND;
            } else if (m44454a == 2) {
                cap = Paint.Cap.SQUARE;
            }
            this.f4712i = cap;
            int m44454a2 = C0810g.m44454a(typedArray, xmlPullParser, "strokeLineJoin", 9, -1);
            Paint.Join join = this.f4713j;
            if (m44454a2 == 0) {
                join = Paint.Join.MITER;
            } else if (m44454a2 == 1) {
                join = Paint.Join.ROUND;
            } else if (m44454a2 == 2) {
                join = Paint.Join.BEVEL;
            }
            this.f4713j = join;
            this.f4714k = C0810g.m44455a(typedArray, xmlPullParser, "strokeMiterLimit", 10, this.f4714k);
            this.f4704a = C0810g.m44458a(typedArray, xmlPullParser, theme, "strokeColor", 3);
            this.f4707d = C0810g.m44455a(typedArray, xmlPullParser, "strokeAlpha", 11, this.f4707d);
            this.f4705b = C0810g.m44455a(typedArray, xmlPullParser, "strokeWidth", 4, this.f4705b);
            this.f4710g = C0810g.m44455a(typedArray, xmlPullParser, "trimPathEnd", 6, this.f4710g);
            this.f4711h = C0810g.m44455a(typedArray, xmlPullParser, "trimPathOffset", 7, this.f4711h);
            this.f4709f = C0810g.m44455a(typedArray, xmlPullParser, "trimPathStart", 5, this.f4709f);
            this.f4731n = C0810g.m44454a(typedArray, xmlPullParser, "fillType", 13, this.f4731n);
        }

        @Override // androidx.p057l.p058a.p059a.C1208i.AbstractC1213d
        /* renamed from: a */
        public final boolean mo43348a(int[] iArr) {
            return this.f4704a.m44480a(iArr) | this.f4706c.m44480a(iArr);
        }

        @Override // androidx.p057l.p058a.p059a.C1208i.AbstractC1213d
        /* renamed from: b */
        public final boolean mo43347b() {
            return this.f4706c.m44479b() || this.f4704a.m44479b();
        }

        final float getFillAlpha() {
            return this.f4708e;
        }

        final int getFillColor() {
            return this.f4706c.f3488b;
        }

        final float getStrokeAlpha() {
            return this.f4707d;
        }

        final int getStrokeColor() {
            return this.f4704a.f3488b;
        }

        final float getStrokeWidth() {
            return this.f4705b;
        }

        final float getTrimPathEnd() {
            return this.f4710g;
        }

        final float getTrimPathOffset() {
            return this.f4711h;
        }

        final float getTrimPathStart() {
            return this.f4709f;
        }

        final void setFillAlpha(float f) {
            this.f4708e = f;
        }

        final void setFillColor(int i) {
            this.f4706c.f3488b = i;
        }

        final void setStrokeAlpha(float f) {
            this.f4707d = f;
        }

        final void setStrokeColor(int i) {
            this.f4704a.f3488b = i;
        }

        final void setStrokeWidth(float f) {
            this.f4705b = f;
        }

        final void setTrimPathEnd(float f) {
            this.f4710g = f;
        }

        final void setTrimPathOffset(float f) {
            this.f4711h = f;
        }

        final void setTrimPathStart(float f) {
            this.f4709f = f;
        }
    }

    /* renamed from: androidx.l.a.a.i$c */
    /* loaded from: classes-dex2jar.jar:androidx/l/a/a/i$c.class */
    public static final class C1212c extends AbstractC1213d {

        /* renamed from: a */
        final Matrix f4716a;

        /* renamed from: b */
        final ArrayList<AbstractC1213d> f4717b;

        /* renamed from: c */
        float f4718c;

        /* renamed from: d */
        float f4719d;

        /* renamed from: e */
        float f4720e;

        /* renamed from: f */
        float f4721f;

        /* renamed from: g */
        float f4722g;

        /* renamed from: h */
        float f4723h;

        /* renamed from: i */
        float f4724i;

        /* renamed from: j */
        final Matrix f4725j;

        /* renamed from: k */
        int f4726k;

        /* renamed from: l */
        int[] f4727l;

        /* renamed from: m */
        String f4728m;

        public C1212c() {
            super();
            this.f4716a = new Matrix();
            this.f4717b = new ArrayList<>();
            this.f4718c = BitmapDescriptorFactory.HUE_RED;
            this.f4719d = BitmapDescriptorFactory.HUE_RED;
            this.f4720e = BitmapDescriptorFactory.HUE_RED;
            this.f4721f = 1.0f;
            this.f4722g = 1.0f;
            this.f4723h = BitmapDescriptorFactory.HUE_RED;
            this.f4724i = BitmapDescriptorFactory.HUE_RED;
            this.f4725j = new Matrix();
            this.f4728m = null;
        }

        public C1212c(C1212c c1212c, C0428a<String, Object> c0428a) {
            super();
            C1211b c1211b;
            this.f4716a = new Matrix();
            this.f4717b = new ArrayList<>();
            this.f4718c = BitmapDescriptorFactory.HUE_RED;
            this.f4719d = BitmapDescriptorFactory.HUE_RED;
            this.f4720e = BitmapDescriptorFactory.HUE_RED;
            this.f4721f = 1.0f;
            this.f4722g = 1.0f;
            this.f4723h = BitmapDescriptorFactory.HUE_RED;
            this.f4724i = BitmapDescriptorFactory.HUE_RED;
            Matrix matrix = new Matrix();
            this.f4725j = matrix;
            this.f4728m = null;
            this.f4718c = c1212c.f4718c;
            this.f4719d = c1212c.f4719d;
            this.f4720e = c1212c.f4720e;
            this.f4721f = c1212c.f4721f;
            this.f4722g = c1212c.f4722g;
            this.f4723h = c1212c.f4723h;
            this.f4724i = c1212c.f4724i;
            this.f4727l = c1212c.f4727l;
            String str = c1212c.f4728m;
            this.f4728m = str;
            this.f4726k = c1212c.f4726k;
            if (str != null) {
                c0428a.put(str, this);
            }
            matrix.set(c1212c.f4725j);
            ArrayList<AbstractC1213d> arrayList = c1212c.f4717b;
            for (int i = 0; i < arrayList.size(); i++) {
                AbstractC1213d abstractC1213d = arrayList.get(i);
                if (abstractC1213d instanceof C1212c) {
                    this.f4717b.add(new C1212c((C1212c) abstractC1213d, c0428a));
                } else {
                    if (abstractC1213d instanceof C1211b) {
                        c1211b = new C1211b((C1211b) abstractC1213d);
                    } else if (!(abstractC1213d instanceof C1210a)) {
                        throw new IllegalStateException("Unknown object in the tree!");
                    } else {
                        c1211b = new C1210a((C1210a) abstractC1213d);
                    }
                    this.f4717b.add(c1211b);
                    if (c1211b.f4730m != null) {
                        c0428a.put(c1211b.f4730m, c1211b);
                    }
                }
            }
        }

        /* renamed from: a */
        final void m43349a() {
            this.f4725j.reset();
            this.f4725j.postTranslate(-this.f4719d, -this.f4720e);
            this.f4725j.postScale(this.f4721f, this.f4722g);
            this.f4725j.postRotate(this.f4718c, BitmapDescriptorFactory.HUE_RED, BitmapDescriptorFactory.HUE_RED);
            this.f4725j.postTranslate(this.f4723h + this.f4719d, this.f4724i + this.f4720e);
        }

        @Override // androidx.p057l.p058a.p059a.C1208i.AbstractC1213d
        /* renamed from: a */
        public final boolean mo43348a(int[] iArr) {
            boolean z = false;
            for (int i = 0; i < this.f4717b.size(); i++) {
                z |= this.f4717b.get(i).mo43348a(iArr);
            }
            return z;
        }

        @Override // androidx.p057l.p058a.p059a.C1208i.AbstractC1213d
        /* renamed from: b */
        public final boolean mo43347b() {
            for (int i = 0; i < this.f4717b.size(); i++) {
                if (this.f4717b.get(i).mo43347b()) {
                    return true;
                }
            }
            return false;
        }

        public final String getGroupName() {
            return this.f4728m;
        }

        public final Matrix getLocalMatrix() {
            return this.f4725j;
        }

        public final float getPivotX() {
            return this.f4719d;
        }

        public final float getPivotY() {
            return this.f4720e;
        }

        public final float getRotation() {
            return this.f4718c;
        }

        public final float getScaleX() {
            return this.f4721f;
        }

        public final float getScaleY() {
            return this.f4722g;
        }

        public final float getTranslateX() {
            return this.f4723h;
        }

        public final float getTranslateY() {
            return this.f4724i;
        }

        public final void setPivotX(float f) {
            if (f != this.f4719d) {
                this.f4719d = f;
                m43349a();
            }
        }

        public final void setPivotY(float f) {
            if (f != this.f4720e) {
                this.f4720e = f;
                m43349a();
            }
        }

        public final void setRotation(float f) {
            if (f != this.f4718c) {
                this.f4718c = f;
                m43349a();
            }
        }

        public final void setScaleX(float f) {
            if (f != this.f4721f) {
                this.f4721f = f;
                m43349a();
            }
        }

        public final void setScaleY(float f) {
            if (f != this.f4722g) {
                this.f4722g = f;
                m43349a();
            }
        }

        public final void setTranslateX(float f) {
            if (f != this.f4723h) {
                this.f4723h = f;
                m43349a();
            }
        }

        public final void setTranslateY(float f) {
            if (f != this.f4724i) {
                this.f4724i = f;
                m43349a();
            }
        }
    }

    /* renamed from: androidx.l.a.a.i$d */
    /* loaded from: classes-dex2jar.jar:androidx/l/a/a/i$d.class */
    public static abstract class AbstractC1213d {
        private AbstractC1213d() {
        }

        /* renamed from: a */
        public boolean mo43348a(int[] iArr) {
            return false;
        }

        /* renamed from: b */
        public boolean mo43347b() {
            return false;
        }
    }

    /* renamed from: androidx.l.a.a.i$e */
    /* loaded from: classes-dex2jar.jar:androidx/l/a/a/i$e.class */
    public static abstract class AbstractC1214e extends AbstractC1213d {

        /* renamed from: l */
        protected C0836c.C0838b[] f4729l;

        /* renamed from: m */
        String f4730m;

        /* renamed from: n */
        int f4731n;

        /* renamed from: o */
        int f4732o;

        public AbstractC1214e() {
            super();
            this.f4729l = null;
            this.f4731n = 0;
        }

        public AbstractC1214e(AbstractC1214e abstractC1214e) {
            super();
            this.f4729l = null;
            this.f4731n = 0;
            this.f4730m = abstractC1214e.f4730m;
            this.f4732o = abstractC1214e.f4732o;
            this.f4729l = C0836c.m44387a(abstractC1214e.f4729l);
        }

        /* renamed from: a */
        public final void m43345a(Path path) {
            path.reset();
            C0836c.C0838b[] c0838bArr = this.f4729l;
            if (c0838bArr != null) {
                C0836c.C0838b.m44380a(c0838bArr, path);
            }
        }

        /* renamed from: a */
        public boolean mo43346a() {
            return false;
        }

        public C0836c.C0838b[] getPathData() {
            return this.f4729l;
        }

        public String getPathName() {
            return this.f4730m;
        }

        public void setPathData(C0836c.C0838b[] c0838bArr) {
            if (!C0836c.m44386a(this.f4729l, c0838bArr)) {
                this.f4729l = C0836c.m44387a(c0838bArr);
                return;
            }
            C0836c.C0838b[] c0838bArr2 = this.f4729l;
            for (int i = 0; i < c0838bArr.length; i++) {
                c0838bArr2[i].f3569a = c0838bArr[i].f3569a;
                for (int i2 = 0; i2 < c0838bArr[i].f3570b.length; i2++) {
                    c0838bArr2[i].f3570b[i2] = c0838bArr[i].f3570b[i2];
                }
            }
        }
    }

    /* renamed from: androidx.l.a.a.i$f */
    /* loaded from: classes-dex2jar.jar:androidx/l/a/a/i$f.class */
    public static final class C1215f {

        /* renamed from: n */
        private static final Matrix f4733n = new Matrix();

        /* renamed from: a */
        Paint f4734a;

        /* renamed from: b */
        Paint f4735b;

        /* renamed from: c */
        final C1212c f4736c;

        /* renamed from: d */
        float f4737d;

        /* renamed from: e */
        float f4738e;

        /* renamed from: f */
        float f4739f;

        /* renamed from: g */
        float f4740g;

        /* renamed from: h */
        int f4741h;

        /* renamed from: i */
        String f4742i;

        /* renamed from: j */
        Boolean f4743j;

        /* renamed from: k */
        final C0428a<String, Object> f4744k;

        /* renamed from: l */
        private final Path f4745l;

        /* renamed from: m */
        private final Path f4746m;

        /* renamed from: o */
        private final Matrix f4747o;

        /* renamed from: p */
        private PathMeasure f4748p;

        /* renamed from: q */
        private int f4749q;

        public C1215f() {
            this.f4747o = new Matrix();
            this.f4737d = BitmapDescriptorFactory.HUE_RED;
            this.f4738e = BitmapDescriptorFactory.HUE_RED;
            this.f4739f = BitmapDescriptorFactory.HUE_RED;
            this.f4740g = BitmapDescriptorFactory.HUE_RED;
            this.f4741h = 255;
            this.f4742i = null;
            this.f4743j = null;
            this.f4744k = new C0428a<>();
            this.f4736c = new C1212c();
            this.f4745l = new Path();
            this.f4746m = new Path();
        }

        public C1215f(C1215f c1215f) {
            this.f4747o = new Matrix();
            this.f4737d = BitmapDescriptorFactory.HUE_RED;
            this.f4738e = BitmapDescriptorFactory.HUE_RED;
            this.f4739f = BitmapDescriptorFactory.HUE_RED;
            this.f4740g = BitmapDescriptorFactory.HUE_RED;
            this.f4741h = 255;
            this.f4742i = null;
            this.f4743j = null;
            C0428a<String, Object> c0428a = new C0428a<>();
            this.f4744k = c0428a;
            this.f4736c = new C1212c(c1215f.f4736c, c0428a);
            this.f4745l = new Path(c1215f.f4745l);
            this.f4746m = new Path(c1215f.f4746m);
            this.f4737d = c1215f.f4737d;
            this.f4738e = c1215f.f4738e;
            this.f4739f = c1215f.f4739f;
            this.f4740g = c1215f.f4740g;
            this.f4749q = c1215f.f4749q;
            this.f4741h = c1215f.f4741h;
            this.f4742i = c1215f.f4742i;
            String str = c1215f.f4742i;
            if (str != null) {
                c0428a.put(str, this);
            }
            this.f4743j = c1215f.f4743j;
        }

        /* renamed from: a */
        private void m43342a(C1212c c1212c, Matrix matrix, Canvas canvas, int i, int i2, ColorFilter colorFilter) {
            c1212c.f4716a.set(matrix);
            c1212c.f4716a.preConcat(c1212c.f4725j);
            canvas.save();
            C1215f c1215f = this;
            for (int i3 = 0; i3 < c1212c.f4717b.size(); i3++) {
                AbstractC1213d abstractC1213d = c1212c.f4717b.get(i3);
                if (abstractC1213d instanceof C1212c) {
                    m43342a((C1212c) abstractC1213d, c1212c.f4716a, canvas, i, i2, colorFilter);
                } else if (abstractC1213d instanceof AbstractC1214e) {
                    AbstractC1214e abstractC1214e = (AbstractC1214e) abstractC1213d;
                    float f = i / c1215f.f4739f;
                    float f2 = i2 / c1215f.f4740g;
                    float min = Math.min(f, f2);
                    Matrix matrix2 = c1212c.f4716a;
                    c1215f.f4747o.set(matrix2);
                    c1215f.f4747o.postScale(f, f2);
                    float[] fArr = {BitmapDescriptorFactory.HUE_RED, 1.0f, 1.0f, BitmapDescriptorFactory.HUE_RED};
                    matrix2.mapVectors(fArr);
                    float hypot = (float) Math.hypot(fArr[0], fArr[1]);
                    float hypot2 = (float) Math.hypot(fArr[2], fArr[3]);
                    float f3 = fArr[0];
                    float f4 = fArr[1];
                    float f5 = fArr[2];
                    float f6 = fArr[3];
                    float max = Math.max(hypot, hypot2);
                    float abs = max > BitmapDescriptorFactory.HUE_RED ? Math.abs((f3 * f6) - (f4 * f5)) / max : 0.0f;
                    if (abs != BitmapDescriptorFactory.HUE_RED) {
                        abstractC1214e.m43345a(this.f4745l);
                        Path path = this.f4745l;
                        this.f4746m.reset();
                        if (abstractC1214e.mo43346a()) {
                            this.f4746m.setFillType(abstractC1214e.f4731n == 0 ? Path.FillType.WINDING : Path.FillType.EVEN_ODD);
                            this.f4746m.addPath(path, this.f4747o);
                            canvas.clipPath(this.f4746m);
                            c1215f = this;
                        } else {
                            C1211b c1211b = (C1211b) abstractC1214e;
                            if (c1211b.f4709f != BitmapDescriptorFactory.HUE_RED || c1211b.f4710g != 1.0f) {
                                float f7 = c1211b.f4709f;
                                float f8 = c1211b.f4711h;
                                float f9 = c1211b.f4710g;
                                float f10 = c1211b.f4711h;
                                if (this.f4748p == null) {
                                    this.f4748p = new PathMeasure();
                                }
                                this.f4748p.setPath(this.f4745l, false);
                                float length = this.f4748p.getLength();
                                float f11 = ((f7 + f8) % 1.0f) * length;
                                float f12 = ((f9 + f10) % 1.0f) * length;
                                path.reset();
                                if (f11 > f12) {
                                    this.f4748p.getSegment(f11, length, path, true);
                                    this.f4748p.getSegment(BitmapDescriptorFactory.HUE_RED, f12, path, true);
                                } else {
                                    this.f4748p.getSegment(f11, f12, path, true);
                                }
                                path.rLineTo(BitmapDescriptorFactory.HUE_RED, BitmapDescriptorFactory.HUE_RED);
                            }
                            this.f4746m.addPath(path, this.f4747o);
                            if (c1211b.f4706c.m44478c()) {
                                C0795b c0795b = c1211b.f4706c;
                                if (this.f4735b == null) {
                                    Paint paint = new Paint(1);
                                    this.f4735b = paint;
                                    paint.setStyle(Paint.Style.FILL);
                                }
                                Paint paint2 = this.f4735b;
                                if (c0795b.m44483a()) {
                                    Shader shader = c0795b.f3487a;
                                    shader.setLocalMatrix(this.f4747o);
                                    paint2.setShader(shader);
                                    paint2.setAlpha(Math.round(c1211b.f4708e * 255.0f));
                                } else {
                                    paint2.setShader(null);
                                    paint2.setAlpha(255);
                                    paint2.setColor(C1208i.m43357a(c0795b.f3488b, c1211b.f4708e));
                                }
                                paint2.setColorFilter(colorFilter);
                                this.f4746m.setFillType(c1211b.f4731n == 0 ? Path.FillType.WINDING : Path.FillType.EVEN_ODD);
                                canvas.drawPath(this.f4746m, paint2);
                            }
                            c1215f = this;
                            if (c1211b.f4704a.m44478c()) {
                                C0795b c0795b2 = c1211b.f4704a;
                                if (this.f4734a == null) {
                                    Paint paint3 = new Paint(1);
                                    this.f4734a = paint3;
                                    paint3.setStyle(Paint.Style.STROKE);
                                }
                                Paint paint4 = this.f4734a;
                                if (c1211b.f4713j != null) {
                                    paint4.setStrokeJoin(c1211b.f4713j);
                                }
                                if (c1211b.f4712i != null) {
                                    paint4.setStrokeCap(c1211b.f4712i);
                                }
                                paint4.setStrokeMiter(c1211b.f4714k);
                                if (c0795b2.m44483a()) {
                                    Shader shader2 = c0795b2.f3487a;
                                    shader2.setLocalMatrix(this.f4747o);
                                    paint4.setShader(shader2);
                                    paint4.setAlpha(Math.round(c1211b.f4707d * 255.0f));
                                } else {
                                    paint4.setShader(null);
                                    paint4.setAlpha(255);
                                    paint4.setColor(C1208i.m43357a(c0795b2.f3488b, c1211b.f4707d));
                                }
                                paint4.setColorFilter(colorFilter);
                                paint4.setStrokeWidth(c1211b.f4705b * abs * min);
                                canvas.drawPath(this.f4746m, paint4);
                                c1215f = this;
                            }
                        }
                    } else {
                        c1215f = this;
                    }
                }
            }
            canvas.restore();
        }

        /* renamed from: a */
        public final void m43343a(Canvas canvas, int i, int i2) {
            m43342a(this.f4736c, f4733n, canvas, i, i2, null);
        }

        /* renamed from: a */
        public final boolean m43344a() {
            if (this.f4743j == null) {
                this.f4743j = Boolean.valueOf(this.f4736c.mo43347b());
            }
            return this.f4743j.booleanValue();
        }

        public final float getAlpha() {
            return getRootAlpha() / 255.0f;
        }

        public final int getRootAlpha() {
            return this.f4741h;
        }

        public final void setAlpha(float f) {
            setRootAlpha((int) (f * 255.0f));
        }

        public final void setRootAlpha(int i) {
            this.f4741h = i;
        }
    }

    /* renamed from: androidx.l.a.a.i$g */
    /* loaded from: classes-dex2jar.jar:androidx/l/a/a/i$g.class */
    public static final class C1216g extends Drawable.ConstantState {

        /* renamed from: a */
        int f4750a;

        /* renamed from: b */
        C1215f f4751b;

        /* renamed from: c */
        ColorStateList f4752c;

        /* renamed from: d */
        PorterDuff.Mode f4753d;

        /* renamed from: e */
        boolean f4754e;

        /* renamed from: f */
        Bitmap f4755f;

        /* renamed from: g */
        ColorStateList f4756g;

        /* renamed from: h */
        PorterDuff.Mode f4757h;

        /* renamed from: i */
        int f4758i;

        /* renamed from: j */
        boolean f4759j;

        /* renamed from: k */
        boolean f4760k;

        /* renamed from: l */
        Paint f4761l;

        public C1216g() {
            this.f4752c = null;
            this.f4753d = C1208i.f4694a;
            this.f4751b = new C1215f();
        }

        public C1216g(C1216g c1216g) {
            this.f4752c = null;
            this.f4753d = C1208i.f4694a;
            if (c1216g != null) {
                this.f4750a = c1216g.f4750a;
                this.f4751b = new C1215f(c1216g.f4751b);
                if (c1216g.f4751b.f4735b != null) {
                    this.f4751b.f4735b = new Paint(c1216g.f4751b.f4735b);
                }
                if (c1216g.f4751b.f4734a != null) {
                    this.f4751b.f4734a = new Paint(c1216g.f4751b.f4734a);
                }
                this.f4752c = c1216g.f4752c;
                this.f4753d = c1216g.f4753d;
                this.f4754e = c1216g.f4754e;
            }
        }

        /* renamed from: a */
        public final void m43341a(int i, int i2) {
            this.f4755f.eraseColor(0);
            this.f4751b.m43343a(new Canvas(this.f4755f), i, i2);
        }

        @Override // android.graphics.drawable.Drawable.ConstantState
        public final int getChangingConfigurations() {
            return this.f4750a;
        }

        @Override // android.graphics.drawable.Drawable.ConstantState
        public final Drawable newDrawable() {
            return new C1208i(this);
        }

        @Override // android.graphics.drawable.Drawable.ConstantState
        public final Drawable newDrawable(Resources resources) {
            return new C1208i(this);
        }
    }

    /* renamed from: androidx.l.a.a.i$h */
    /* loaded from: classes-dex2jar.jar:androidx/l/a/a/i$h.class */
    public static final class C1217h extends Drawable.ConstantState {

        /* renamed from: a */
        private final Drawable.ConstantState f4762a;

        public C1217h(Drawable.ConstantState constantState) {
            this.f4762a = constantState;
        }

        @Override // android.graphics.drawable.Drawable.ConstantState
        public final boolean canApplyTheme() {
            return this.f4762a.canApplyTheme();
        }

        @Override // android.graphics.drawable.Drawable.ConstantState
        public final int getChangingConfigurations() {
            return this.f4762a.getChangingConfigurations();
        }

        @Override // android.graphics.drawable.Drawable.ConstantState
        public final Drawable newDrawable() {
            C1208i c1208i = new C1208i();
            c1208i.f4693c = (VectorDrawable) this.f4762a.newDrawable();
            return c1208i;
        }

        @Override // android.graphics.drawable.Drawable.ConstantState
        public final Drawable newDrawable(Resources resources) {
            C1208i c1208i = new C1208i();
            c1208i.f4693c = (VectorDrawable) this.f4762a.newDrawable(resources);
            return c1208i;
        }

        @Override // android.graphics.drawable.Drawable.ConstantState
        public final Drawable newDrawable(Resources resources, Resources.Theme theme) {
            C1208i c1208i = new C1208i();
            c1208i.f4693c = (VectorDrawable) this.f4762a.newDrawable(resources, theme);
            return c1208i;
        }
    }

    C1208i() {
        this.f4695b = true;
        this.f4701i = new float[9];
        this.f4702j = new Matrix();
        this.f4703k = new Rect();
        this.f4696d = new C1216g();
    }

    C1208i(C1216g c1216g) {
        this.f4695b = true;
        this.f4701i = new float[9];
        this.f4702j = new Matrix();
        this.f4703k = new Rect();
        this.f4696d = c1216g;
        this.f4697e = m43356a(c1216g.f4752c, c1216g.f4753d);
    }

    /* renamed from: a */
    static int m43357a(int i, float f) {
        return (i & 16777215) | (((int) (Color.alpha(i) * f)) << 24);
    }

    /* renamed from: a */
    private PorterDuffColorFilter m43356a(ColorStateList colorStateList, PorterDuff.Mode mode) {
        if (colorStateList == null || mode == null) {
            return null;
        }
        return new PorterDuffColorFilter(colorStateList.getColorForState(getState(), 0), mode);
    }

    /* renamed from: a */
    public static C1208i m43355a(Resources resources, int i, Resources.Theme theme) {
        int next;
        if (Build.VERSION.SDK_INT >= 24) {
            C1208i c1208i = new C1208i();
            c1208i.f4693c = C0804f.m44463a(resources, i, theme);
            c1208i.f4700h = new C1217h(c1208i.f4693c.getConstantState());
            return c1208i;
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
            return m43354a(resources, xml, asAttributeSet, theme);
        } catch (IOException e) {
            Log.e("VectorDrawableCompat", "parser error", e);
            return null;
        } catch (XmlPullParserException e2) {
            Log.e("VectorDrawableCompat", "parser error", e2);
            return null;
        }
    }

    /* renamed from: a */
    public static C1208i m43354a(Resources resources, XmlPullParser xmlPullParser, AttributeSet attributeSet, Resources.Theme theme) throws XmlPullParserException, IOException {
        C1208i c1208i = new C1208i();
        c1208i.inflate(resources, xmlPullParser, attributeSet, theme);
        return c1208i;
    }

    /* renamed from: b */
    private void m43352b(Resources resources, XmlPullParser xmlPullParser, AttributeSet attributeSet, Resources.Theme theme) throws XmlPullParserException, IOException {
        boolean z;
        boolean z2;
        C1216g c1216g = this.f4696d;
        C1215f c1215f = c1216g.f4751b;
        ArrayDeque arrayDeque = new ArrayDeque();
        arrayDeque.push(c1215f.f4736c);
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
                C1212c c1212c = (C1212c) arrayDeque.peek();
                if ("path".equals(name)) {
                    C1211b c1211b = new C1211b();
                    TypedArray m44459a = C0810g.m44459a(resources, theme, attributeSet, C1195a.f4666c);
                    c1211b.m43350a(m44459a, xmlPullParser, theme);
                    m44459a.recycle();
                    c1212c.f4717b.add(c1211b);
                    if (c1211b.getPathName() != null) {
                        c1215f.f4744k.put(c1211b.getPathName(), c1211b);
                    }
                    c1216g.f4750a = c1211b.f4732o | c1216g.f4750a;
                    z2 = false;
                } else if ("clip-path".equals(name)) {
                    C1210a c1210a = new C1210a();
                    if (C0810g.m44452a(xmlPullParser, "pathData")) {
                        TypedArray m44459a2 = C0810g.m44459a(resources, theme, attributeSet, C1195a.f4667d);
                        c1210a.m43351a(m44459a2, xmlPullParser);
                        m44459a2.recycle();
                    }
                    c1212c.f4717b.add(c1210a);
                    if (c1210a.getPathName() != null) {
                        c1215f.f4744k.put(c1210a.getPathName(), c1210a);
                    }
                    c1216g.f4750a = c1210a.f4732o | c1216g.f4750a;
                    z2 = z;
                } else {
                    z2 = z;
                    if ("group".equals(name)) {
                        C1212c c1212c2 = new C1212c();
                        TypedArray m44459a3 = C0810g.m44459a(resources, theme, attributeSet, C1195a.f4665b);
                        c1212c2.f4727l = null;
                        c1212c2.f4718c = C0810g.m44455a(m44459a3, xmlPullParser, "rotation", 5, c1212c2.f4718c);
                        c1212c2.f4719d = m44459a3.getFloat(1, c1212c2.f4719d);
                        c1212c2.f4720e = m44459a3.getFloat(2, c1212c2.f4720e);
                        c1212c2.f4721f = C0810g.m44455a(m44459a3, xmlPullParser, "scaleX", 3, c1212c2.f4721f);
                        c1212c2.f4722g = C0810g.m44455a(m44459a3, xmlPullParser, "scaleY", 4, c1212c2.f4722g);
                        c1212c2.f4723h = C0810g.m44455a(m44459a3, xmlPullParser, "translateX", 6, c1212c2.f4723h);
                        c1212c2.f4724i = C0810g.m44455a(m44459a3, xmlPullParser, "translateY", 7, c1212c2.f4724i);
                        String string = m44459a3.getString(0);
                        if (string != null) {
                            c1212c2.f4728m = string;
                        }
                        c1212c2.m43349a();
                        m44459a3.recycle();
                        c1212c.f4717b.add(c1212c2);
                        arrayDeque.push(c1212c2);
                        if (c1212c2.getGroupName() != null) {
                            c1215f.f4744k.put(c1212c2.getGroupName(), c1212c2);
                        }
                        c1216g.f4750a = c1212c2.f4726k | c1216g.f4750a;
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

    /* renamed from: a */
    public final Object m43353a(String str) {
        return this.f4696d.f4751b.f4744k.get(str);
    }

    @Override // androidx.p057l.p058a.p059a.AbstractC1207h, android.graphics.drawable.Drawable
    public final /* bridge */ /* synthetic */ void applyTheme(Resources.Theme theme) {
        super.applyTheme(theme);
    }

    @Override // android.graphics.drawable.Drawable
    public final boolean canApplyTheme() {
        if (this.f4693c != null) {
            C0840a.m44348c(this.f4693c);
            return false;
        }
        return false;
    }

    @Override // androidx.p057l.p058a.p059a.AbstractC1207h, android.graphics.drawable.Drawable
    public final /* bridge */ /* synthetic */ void clearColorFilter() {
        super.clearColorFilter();
    }

    /* JADX WARN: Code restructure failed: missing block: B:42:0x0160, code lost:
        if ((r0 == r0.f4755f.getWidth() && r0 == r0.f4755f.getHeight()) == false) goto L43;
     */
    @Override // android.graphics.drawable.Drawable
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void draw(android.graphics.Canvas r7) {
        /*
            Method dump skipped, instructions count: 650
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.p057l.p058a.p059a.C1208i.draw(android.graphics.Canvas):void");
    }

    @Override // android.graphics.drawable.Drawable
    public final int getAlpha() {
        return this.f4693c != null ? C0840a.m44350b(this.f4693c) : this.f4696d.f4751b.getRootAlpha();
    }

    @Override // android.graphics.drawable.Drawable
    public final int getChangingConfigurations() {
        return this.f4693c != null ? this.f4693c.getChangingConfigurations() : super.getChangingConfigurations() | this.f4696d.getChangingConfigurations();
    }

    @Override // android.graphics.drawable.Drawable
    public final ColorFilter getColorFilter() {
        return this.f4693c != null ? C0840a.m44347d(this.f4693c) : this.f4698f;
    }

    @Override // android.graphics.drawable.Drawable
    public final Drawable.ConstantState getConstantState() {
        if (this.f4693c == null || Build.VERSION.SDK_INT < 24) {
            this.f4696d.f4750a = getChangingConfigurations();
            return this.f4696d;
        }
        return new C1217h(this.f4693c.getConstantState());
    }

    @Override // androidx.p057l.p058a.p059a.AbstractC1207h, android.graphics.drawable.Drawable
    public final /* bridge */ /* synthetic */ Drawable getCurrent() {
        return super.getCurrent();
    }

    @Override // android.graphics.drawable.Drawable
    public final int getIntrinsicHeight() {
        return this.f4693c != null ? this.f4693c.getIntrinsicHeight() : (int) this.f4696d.f4751b.f4738e;
    }

    @Override // android.graphics.drawable.Drawable
    public final int getIntrinsicWidth() {
        return this.f4693c != null ? this.f4693c.getIntrinsicWidth() : (int) this.f4696d.f4751b.f4737d;
    }

    @Override // androidx.p057l.p058a.p059a.AbstractC1207h, android.graphics.drawable.Drawable
    public final /* bridge */ /* synthetic */ int getMinimumHeight() {
        return super.getMinimumHeight();
    }

    @Override // androidx.p057l.p058a.p059a.AbstractC1207h, android.graphics.drawable.Drawable
    public final /* bridge */ /* synthetic */ int getMinimumWidth() {
        return super.getMinimumWidth();
    }

    @Override // android.graphics.drawable.Drawable
    public final int getOpacity() {
        if (this.f4693c != null) {
            return this.f4693c.getOpacity();
        }
        return -3;
    }

    @Override // androidx.p057l.p058a.p059a.AbstractC1207h, android.graphics.drawable.Drawable
    public final /* bridge */ /* synthetic */ boolean getPadding(Rect rect) {
        return super.getPadding(rect);
    }

    @Override // androidx.p057l.p058a.p059a.AbstractC1207h, android.graphics.drawable.Drawable
    public final /* bridge */ /* synthetic */ int[] getState() {
        return super.getState();
    }

    @Override // androidx.p057l.p058a.p059a.AbstractC1207h, android.graphics.drawable.Drawable
    public final /* bridge */ /* synthetic */ Region getTransparentRegion() {
        return super.getTransparentRegion();
    }

    @Override // android.graphics.drawable.Drawable
    public final void inflate(Resources resources, XmlPullParser xmlPullParser, AttributeSet attributeSet) throws XmlPullParserException, IOException {
        if (this.f4693c != null) {
            this.f4693c.inflate(resources, xmlPullParser, attributeSet);
        } else {
            inflate(resources, xmlPullParser, attributeSet, null);
        }
    }

    @Override // android.graphics.drawable.Drawable
    public final void inflate(Resources resources, XmlPullParser xmlPullParser, AttributeSet attributeSet, Resources.Theme theme) throws XmlPullParserException, IOException {
        ColorStateList colorStateList;
        if (this.f4693c != null) {
            C0840a.m44353a(this.f4693c, resources, xmlPullParser, attributeSet, theme);
            return;
        }
        C1216g c1216g = this.f4696d;
        c1216g.f4751b = new C1215f();
        TypedArray m44459a = C0810g.m44459a(resources, theme, attributeSet, C1195a.f4664a);
        C1216g c1216g2 = this.f4696d;
        C1215f c1215f = c1216g2.f4751b;
        int m44454a = C0810g.m44454a(m44459a, xmlPullParser, "tintMode", 6, -1);
        PorterDuff.Mode mode = PorterDuff.Mode.SRC_IN;
        if (m44454a == 3) {
            mode = PorterDuff.Mode.SRC_OVER;
        } else if (m44454a == 5) {
            mode = PorterDuff.Mode.SRC_IN;
        } else if (m44454a != 9) {
            switch (m44454a) {
                case 14:
                    mode = PorterDuff.Mode.MULTIPLY;
                    break;
                case 15:
                    mode = PorterDuff.Mode.SCREEN;
                    break;
                case 16:
                    mode = PorterDuff.Mode.ADD;
                    break;
            }
        } else {
            mode = PorterDuff.Mode.SRC_ATOP;
        }
        c1216g2.f4753d = mode;
        if (C0810g.m44452a(xmlPullParser, "tint")) {
            TypedValue typedValue = new TypedValue();
            m44459a.getValue(1, typedValue);
            if (typedValue.type == 2) {
                throw new UnsupportedOperationException("Failed to resolve attribute at index 1: " + typedValue);
            }
            colorStateList = (typedValue.type < 28 || typedValue.type > 31) ? C0794a.m44487a(m44459a.getResources(), m44459a.getResourceId(1, 0), theme) : ColorStateList.valueOf(typedValue.data);
        } else {
            colorStateList = null;
        }
        if (colorStateList != null) {
            c1216g2.f4752c = colorStateList;
        }
        c1216g2.f4754e = C0810g.m44453a(m44459a, xmlPullParser, "autoMirrored", 5, c1216g2.f4754e);
        c1215f.f4739f = C0810g.m44455a(m44459a, xmlPullParser, "viewportWidth", 7, c1215f.f4739f);
        c1215f.f4740g = C0810g.m44455a(m44459a, xmlPullParser, "viewportHeight", 8, c1215f.f4740g);
        if (c1215f.f4739f <= BitmapDescriptorFactory.HUE_RED) {
            throw new XmlPullParserException(m44459a.getPositionDescription() + "<vector> tag requires viewportWidth > 0");
        } else if (c1215f.f4740g <= BitmapDescriptorFactory.HUE_RED) {
            throw new XmlPullParserException(m44459a.getPositionDescription() + "<vector> tag requires viewportHeight > 0");
        } else {
            c1215f.f4737d = m44459a.getDimension(3, c1215f.f4737d);
            c1215f.f4738e = m44459a.getDimension(2, c1215f.f4738e);
            if (c1215f.f4737d <= BitmapDescriptorFactory.HUE_RED) {
                throw new XmlPullParserException(m44459a.getPositionDescription() + "<vector> tag requires width > 0");
            } else if (c1215f.f4738e <= BitmapDescriptorFactory.HUE_RED) {
                throw new XmlPullParserException(m44459a.getPositionDescription() + "<vector> tag requires height > 0");
            } else {
                c1215f.setAlpha(C0810g.m44455a(m44459a, xmlPullParser, "alpha", 4, c1215f.getAlpha()));
                String string = m44459a.getString(0);
                if (string != null) {
                    c1215f.f4742i = string;
                    c1215f.f4744k.put(string, c1215f);
                }
                m44459a.recycle();
                c1216g.f4750a = getChangingConfigurations();
                c1216g.f4760k = true;
                m43352b(resources, xmlPullParser, attributeSet, theme);
                this.f4697e = m43356a(c1216g.f4752c, c1216g.f4753d);
            }
        }
    }

    @Override // android.graphics.drawable.Drawable
    public final void invalidateSelf() {
        if (this.f4693c != null) {
            this.f4693c.invalidateSelf();
        } else {
            super.invalidateSelf();
        }
    }

    @Override // android.graphics.drawable.Drawable
    public final boolean isAutoMirrored() {
        return this.f4693c != null ? C0840a.m44359a(this.f4693c) : this.f4696d.f4754e;
    }

    @Override // android.graphics.drawable.Drawable
    public final boolean isStateful() {
        if (this.f4693c != null) {
            return this.f4693c.isStateful();
        }
        if (super.isStateful()) {
            return true;
        }
        C1216g c1216g = this.f4696d;
        if (c1216g == null) {
            return false;
        }
        if (c1216g.f4751b.m43344a()) {
            return true;
        }
        return this.f4696d.f4752c != null && this.f4696d.f4752c.isStateful();
    }

    @Override // androidx.p057l.p058a.p059a.AbstractC1207h, android.graphics.drawable.Drawable
    public final /* bridge */ /* synthetic */ void jumpToCurrentState() {
        super.jumpToCurrentState();
    }

    @Override // android.graphics.drawable.Drawable
    public final Drawable mutate() {
        if (this.f4693c != null) {
            this.f4693c.mutate();
            return this;
        }
        if (!this.f4699g && super.mutate() == this) {
            this.f4696d = new C1216g(this.f4696d);
            this.f4699g = true;
        }
        return this;
    }

    @Override // androidx.p057l.p058a.p059a.AbstractC1207h, android.graphics.drawable.Drawable
    protected final void onBoundsChange(Rect rect) {
        if (this.f4693c != null) {
            this.f4693c.setBounds(rect);
        }
    }

    @Override // android.graphics.drawable.Drawable
    protected final boolean onStateChange(int[] iArr) {
        if (this.f4693c != null) {
            return this.f4693c.setState(iArr);
        }
        C1216g c1216g = this.f4696d;
        boolean z = false;
        if (c1216g.f4752c != null) {
            z = false;
            if (c1216g.f4753d != null) {
                this.f4697e = m43356a(c1216g.f4752c, c1216g.f4753d);
                invalidateSelf();
                z = true;
            }
        }
        if (c1216g.f4751b.m43344a()) {
            boolean mo43348a = c1216g.f4751b.f4736c.mo43348a(iArr);
            c1216g.f4760k |= mo43348a;
            if (mo43348a) {
                invalidateSelf();
                z = true;
            }
        }
        return z;
    }

    @Override // android.graphics.drawable.Drawable
    public final void scheduleSelf(Runnable runnable, long j) {
        if (this.f4693c != null) {
            this.f4693c.scheduleSelf(runnable, j);
        } else {
            super.scheduleSelf(runnable, j);
        }
    }

    @Override // android.graphics.drawable.Drawable
    public final void setAlpha(int i) {
        if (this.f4693c != null) {
            this.f4693c.setAlpha(i);
        } else if (this.f4696d.f4751b.getRootAlpha() == i) {
        } else {
            this.f4696d.f4751b.setRootAlpha(i);
            invalidateSelf();
        }
    }

    @Override // android.graphics.drawable.Drawable
    public final void setAutoMirrored(boolean z) {
        if (this.f4693c != null) {
            C0840a.m44351a(this.f4693c, z);
        } else {
            this.f4696d.f4754e = z;
        }
    }

    @Override // androidx.p057l.p058a.p059a.AbstractC1207h, android.graphics.drawable.Drawable
    public final /* bridge */ /* synthetic */ void setChangingConfigurations(int i) {
        super.setChangingConfigurations(i);
    }

    @Override // androidx.p057l.p058a.p059a.AbstractC1207h, android.graphics.drawable.Drawable
    public final /* bridge */ /* synthetic */ void setColorFilter(int i, PorterDuff.Mode mode) {
        super.setColorFilter(i, mode);
    }

    @Override // android.graphics.drawable.Drawable
    public final void setColorFilter(ColorFilter colorFilter) {
        if (this.f4693c != null) {
            this.f4693c.setColorFilter(colorFilter);
            return;
        }
        this.f4698f = colorFilter;
        invalidateSelf();
    }

    @Override // androidx.p057l.p058a.p059a.AbstractC1207h, android.graphics.drawable.Drawable
    public final /* bridge */ /* synthetic */ void setFilterBitmap(boolean z) {
        super.setFilterBitmap(z);
    }

    @Override // androidx.p057l.p058a.p059a.AbstractC1207h, android.graphics.drawable.Drawable
    public final /* bridge */ /* synthetic */ void setHotspot(float f, float f2) {
        super.setHotspot(f, f2);
    }

    @Override // androidx.p057l.p058a.p059a.AbstractC1207h, android.graphics.drawable.Drawable
    public final /* bridge */ /* synthetic */ void setHotspotBounds(int i, int i2, int i3, int i4) {
        super.setHotspotBounds(i, i2, i3, i4);
    }

    @Override // androidx.p057l.p058a.p059a.AbstractC1207h, android.graphics.drawable.Drawable
    public final /* bridge */ /* synthetic */ boolean setState(int[] iArr) {
        return super.setState(iArr);
    }

    @Override // android.graphics.drawable.Drawable, androidx.core.graphics.drawable.AbstractC0841b
    public final void setTint(int i) {
        if (this.f4693c != null) {
            C0840a.m44357a(this.f4693c, i);
        } else {
            setTintList(ColorStateList.valueOf(i));
        }
    }

    @Override // android.graphics.drawable.Drawable, androidx.core.graphics.drawable.AbstractC0841b
    public final void setTintList(ColorStateList colorStateList) {
        if (this.f4693c != null) {
            C0840a.m44355a(this.f4693c, colorStateList);
            return;
        }
        C1216g c1216g = this.f4696d;
        if (c1216g.f4752c == colorStateList) {
            return;
        }
        c1216g.f4752c = colorStateList;
        this.f4697e = m43356a(colorStateList, c1216g.f4753d);
        invalidateSelf();
    }

    @Override // android.graphics.drawable.Drawable, androidx.core.graphics.drawable.AbstractC0841b
    public final void setTintMode(PorterDuff.Mode mode) {
        if (this.f4693c != null) {
            C0840a.m44352a(this.f4693c, mode);
            return;
        }
        C1216g c1216g = this.f4696d;
        if (c1216g.f4753d == mode) {
            return;
        }
        c1216g.f4753d = mode;
        this.f4697e = m43356a(c1216g.f4752c, mode);
        invalidateSelf();
    }

    @Override // android.graphics.drawable.Drawable
    public final boolean setVisible(boolean z, boolean z2) {
        return this.f4693c != null ? this.f4693c.setVisible(z, z2) : super.setVisible(z, z2);
    }

    @Override // android.graphics.drawable.Drawable
    public final void unscheduleSelf(Runnable runnable) {
        if (this.f4693c != null) {
            this.f4693c.unscheduleSelf(runnable);
        } else {
            super.unscheduleSelf(runnable);
        }
    }
}

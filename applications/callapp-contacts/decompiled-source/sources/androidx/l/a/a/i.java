package androidx.l.a.a;

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
import androidx.core.graphics.c;
import com.google.android.gms.maps.model.BitmapDescriptorFactory;
import java.io.IOException;
import java.util.ArrayDeque;
import java.util.ArrayList;
import org.xmlpull.v1.XmlPullParser;
import org.xmlpull.v1.XmlPullParserException;
/* loaded from: classes-dex2jar.jar:androidx/l/a/a/i.class */
public final class i extends androidx.l.a.a.h {

    /* renamed from: a  reason: collision with root package name */
    static final PorterDuff.Mode f2501a = PorterDuff.Mode.SRC_IN;

    /* renamed from: b  reason: collision with root package name */
    boolean f2502b;

    /* renamed from: d  reason: collision with root package name */
    private g f2503d;
    private PorterDuffColorFilter e;
    private ColorFilter f;
    private boolean g;
    private Drawable.ConstantState h;
    private final float[] i;
    private final Matrix j;
    private final Rect k;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes-dex2jar.jar:androidx/l/a/a/i$a.class */
    public static final class a extends e {
        a() {
        }

        a(a aVar) {
            super(aVar);
        }

        final void a(TypedArray typedArray, XmlPullParser xmlPullParser) {
            String string = typedArray.getString(0);
            if (string != null) {
                this.m = string;
            }
            String string2 = typedArray.getString(1);
            if (string2 != null) {
                this.l = androidx.core.graphics.c.b(string2);
            }
            this.n = androidx.core.content.res.g.a(typedArray, xmlPullParser, "fillType", 2, 0);
        }

        @Override // androidx.l.a.a.i.e
        public final boolean a() {
            return true;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes-dex2jar.jar:androidx/l/a/a/i$b.class */
    public static final class b extends e {

        /* renamed from: a  reason: collision with root package name */
        androidx.core.content.res.b f2504a;

        /* renamed from: b  reason: collision with root package name */
        float f2505b;

        /* renamed from: c  reason: collision with root package name */
        androidx.core.content.res.b f2506c;

        /* renamed from: d  reason: collision with root package name */
        float f2507d;
        float e;
        float f;
        float g;
        float h;
        Paint.Cap i;
        Paint.Join j;
        float k;
        private int[] p;

        b() {
            this.f2505b = BitmapDescriptorFactory.HUE_RED;
            this.f2507d = 1.0f;
            this.e = 1.0f;
            this.f = BitmapDescriptorFactory.HUE_RED;
            this.g = 1.0f;
            this.h = BitmapDescriptorFactory.HUE_RED;
            this.i = Paint.Cap.BUTT;
            this.j = Paint.Join.MITER;
            this.k = 4.0f;
        }

        b(b bVar) {
            super(bVar);
            this.f2505b = BitmapDescriptorFactory.HUE_RED;
            this.f2507d = 1.0f;
            this.e = 1.0f;
            this.f = BitmapDescriptorFactory.HUE_RED;
            this.g = 1.0f;
            this.h = BitmapDescriptorFactory.HUE_RED;
            this.i = Paint.Cap.BUTT;
            this.j = Paint.Join.MITER;
            this.k = 4.0f;
            this.p = bVar.p;
            this.f2504a = bVar.f2504a;
            this.f2505b = bVar.f2505b;
            this.f2507d = bVar.f2507d;
            this.f2506c = bVar.f2506c;
            this.n = bVar.n;
            this.e = bVar.e;
            this.f = bVar.f;
            this.g = bVar.g;
            this.h = bVar.h;
            this.i = bVar.i;
            this.j = bVar.j;
            this.k = bVar.k;
        }

        final void a(TypedArray typedArray, XmlPullParser xmlPullParser, Resources.Theme theme) {
            this.p = null;
            if (androidx.core.content.res.g.a(xmlPullParser, "pathData")) {
                String string = typedArray.getString(0);
                if (string != null) {
                    this.m = string;
                }
                String string2 = typedArray.getString(2);
                if (string2 != null) {
                    this.l = androidx.core.graphics.c.b(string2);
                }
                this.f2506c = androidx.core.content.res.g.a(typedArray, xmlPullParser, theme, "fillColor", 1);
                this.e = androidx.core.content.res.g.a(typedArray, xmlPullParser, "fillAlpha", 12, this.e);
                int a2 = androidx.core.content.res.g.a(typedArray, xmlPullParser, "strokeLineCap", 8, -1);
                Paint.Cap cap = this.i;
                if (a2 == 0) {
                    cap = Paint.Cap.BUTT;
                } else if (a2 == 1) {
                    cap = Paint.Cap.ROUND;
                } else if (a2 == 2) {
                    cap = Paint.Cap.SQUARE;
                }
                this.i = cap;
                int a3 = androidx.core.content.res.g.a(typedArray, xmlPullParser, "strokeLineJoin", 9, -1);
                Paint.Join join = this.j;
                if (a3 == 0) {
                    join = Paint.Join.MITER;
                } else if (a3 == 1) {
                    join = Paint.Join.ROUND;
                } else if (a3 == 2) {
                    join = Paint.Join.BEVEL;
                }
                this.j = join;
                this.k = androidx.core.content.res.g.a(typedArray, xmlPullParser, "strokeMiterLimit", 10, this.k);
                this.f2504a = androidx.core.content.res.g.a(typedArray, xmlPullParser, theme, "strokeColor", 3);
                this.f2507d = androidx.core.content.res.g.a(typedArray, xmlPullParser, "strokeAlpha", 11, this.f2507d);
                this.f2505b = androidx.core.content.res.g.a(typedArray, xmlPullParser, "strokeWidth", 4, this.f2505b);
                this.g = androidx.core.content.res.g.a(typedArray, xmlPullParser, "trimPathEnd", 6, this.g);
                this.h = androidx.core.content.res.g.a(typedArray, xmlPullParser, "trimPathOffset", 7, this.h);
                this.f = androidx.core.content.res.g.a(typedArray, xmlPullParser, "trimPathStart", 5, this.f);
                this.n = androidx.core.content.res.g.a(typedArray, xmlPullParser, "fillType", 13, this.n);
            }
        }

        @Override // androidx.l.a.a.i.d
        public final boolean a(int[] iArr) {
            return this.f2504a.a(iArr) | this.f2506c.a(iArr);
        }

        @Override // androidx.l.a.a.i.d
        public final boolean b() {
            return this.f2506c.b() || this.f2504a.b();
        }

        final float getFillAlpha() {
            return this.e;
        }

        final int getFillColor() {
            return this.f2506c.f1834b;
        }

        final float getStrokeAlpha() {
            return this.f2507d;
        }

        final int getStrokeColor() {
            return this.f2504a.f1834b;
        }

        final float getStrokeWidth() {
            return this.f2505b;
        }

        final float getTrimPathEnd() {
            return this.g;
        }

        final float getTrimPathOffset() {
            return this.h;
        }

        final float getTrimPathStart() {
            return this.f;
        }

        final void setFillAlpha(float f) {
            this.e = f;
        }

        final void setFillColor(int i) {
            this.f2506c.f1834b = i;
        }

        final void setStrokeAlpha(float f) {
            this.f2507d = f;
        }

        final void setStrokeColor(int i) {
            this.f2504a.f1834b = i;
        }

        final void setStrokeWidth(float f) {
            this.f2505b = f;
        }

        final void setTrimPathEnd(float f) {
            this.g = f;
        }

        final void setTrimPathOffset(float f) {
            this.h = f;
        }

        final void setTrimPathStart(float f) {
            this.f = f;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes-dex2jar.jar:androidx/l/a/a/i$c.class */
    public static final class c extends d {

        /* renamed from: a  reason: collision with root package name */
        final Matrix f2508a;

        /* renamed from: b  reason: collision with root package name */
        final ArrayList<d> f2509b;

        /* renamed from: c  reason: collision with root package name */
        float f2510c;

        /* renamed from: d  reason: collision with root package name */
        float f2511d;
        float e;
        float f;
        float g;
        float h;
        float i;
        final Matrix j;
        int k;
        int[] l;
        String m;

        public c() {
            super();
            this.f2508a = new Matrix();
            this.f2509b = new ArrayList<>();
            this.f2510c = BitmapDescriptorFactory.HUE_RED;
            this.f2511d = BitmapDescriptorFactory.HUE_RED;
            this.e = BitmapDescriptorFactory.HUE_RED;
            this.f = 1.0f;
            this.g = 1.0f;
            this.h = BitmapDescriptorFactory.HUE_RED;
            this.i = BitmapDescriptorFactory.HUE_RED;
            this.j = new Matrix();
            this.m = null;
        }

        public c(c cVar, androidx.b.a<String, Object> aVar) {
            super();
            e eVar;
            this.f2508a = new Matrix();
            this.f2509b = new ArrayList<>();
            this.f2510c = BitmapDescriptorFactory.HUE_RED;
            this.f2511d = BitmapDescriptorFactory.HUE_RED;
            this.e = BitmapDescriptorFactory.HUE_RED;
            this.f = 1.0f;
            this.g = 1.0f;
            this.h = BitmapDescriptorFactory.HUE_RED;
            this.i = BitmapDescriptorFactory.HUE_RED;
            Matrix matrix = new Matrix();
            this.j = matrix;
            this.m = null;
            this.f2510c = cVar.f2510c;
            this.f2511d = cVar.f2511d;
            this.e = cVar.e;
            this.f = cVar.f;
            this.g = cVar.g;
            this.h = cVar.h;
            this.i = cVar.i;
            this.l = cVar.l;
            String str = cVar.m;
            this.m = str;
            this.k = cVar.k;
            if (str != null) {
                aVar.put(str, this);
            }
            matrix.set(cVar.j);
            ArrayList<d> arrayList = cVar.f2509b;
            for (int i = 0; i < arrayList.size(); i++) {
                d dVar = arrayList.get(i);
                if (dVar instanceof c) {
                    this.f2509b.add(new c((c) dVar, aVar));
                } else {
                    if (dVar instanceof b) {
                        eVar = new b((b) dVar);
                    } else if (dVar instanceof a) {
                        eVar = new a((a) dVar);
                    } else {
                        throw new IllegalStateException("Unknown object in the tree!");
                    }
                    this.f2509b.add(eVar);
                    if (eVar.m != null) {
                        aVar.put(eVar.m, eVar);
                    }
                }
            }
        }

        final void a() {
            this.j.reset();
            this.j.postTranslate(-this.f2511d, -this.e);
            this.j.postScale(this.f, this.g);
            this.j.postRotate(this.f2510c, BitmapDescriptorFactory.HUE_RED, BitmapDescriptorFactory.HUE_RED);
            this.j.postTranslate(this.h + this.f2511d, this.i + this.e);
        }

        @Override // androidx.l.a.a.i.d
        public final boolean a(int[] iArr) {
            boolean z = false;
            for (int i = 0; i < this.f2509b.size(); i++) {
                z |= this.f2509b.get(i).a(iArr);
            }
            return z;
        }

        @Override // androidx.l.a.a.i.d
        public final boolean b() {
            for (int i = 0; i < this.f2509b.size(); i++) {
                if (this.f2509b.get(i).b()) {
                    return true;
                }
            }
            return false;
        }

        public final String getGroupName() {
            return this.m;
        }

        public final Matrix getLocalMatrix() {
            return this.j;
        }

        public final float getPivotX() {
            return this.f2511d;
        }

        public final float getPivotY() {
            return this.e;
        }

        public final float getRotation() {
            return this.f2510c;
        }

        public final float getScaleX() {
            return this.f;
        }

        public final float getScaleY() {
            return this.g;
        }

        public final float getTranslateX() {
            return this.h;
        }

        public final float getTranslateY() {
            return this.i;
        }

        public final void setPivotX(float f) {
            if (f != this.f2511d) {
                this.f2511d = f;
                a();
            }
        }

        public final void setPivotY(float f) {
            if (f != this.e) {
                this.e = f;
                a();
            }
        }

        public final void setRotation(float f) {
            if (f != this.f2510c) {
                this.f2510c = f;
                a();
            }
        }

        public final void setScaleX(float f) {
            if (f != this.f) {
                this.f = f;
                a();
            }
        }

        public final void setScaleY(float f) {
            if (f != this.g) {
                this.g = f;
                a();
            }
        }

        public final void setTranslateX(float f) {
            if (f != this.h) {
                this.h = f;
                a();
            }
        }

        public final void setTranslateY(float f) {
            if (f != this.i) {
                this.i = f;
                a();
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes-dex2jar.jar:androidx/l/a/a/i$d.class */
    public static abstract class d {
        private d() {
        }

        public boolean a(int[] iArr) {
            return false;
        }

        public boolean b() {
            return false;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes-dex2jar.jar:androidx/l/a/a/i$e.class */
    public static abstract class e extends d {
        protected c.b[] l;
        String m;
        int n;
        int o;

        public e() {
            super();
            this.l = null;
            this.n = 0;
        }

        public e(e eVar) {
            super();
            this.l = null;
            this.n = 0;
            this.m = eVar.m;
            this.o = eVar.o;
            this.l = androidx.core.graphics.c.a(eVar.l);
        }

        public final void a(Path path) {
            path.reset();
            c.b[] bVarArr = this.l;
            if (bVarArr != null) {
                c.b.a(bVarArr, path);
            }
        }

        public boolean a() {
            return false;
        }

        public c.b[] getPathData() {
            return this.l;
        }

        public String getPathName() {
            return this.m;
        }

        public void setPathData(c.b[] bVarArr) {
            if (!androidx.core.graphics.c.a(this.l, bVarArr)) {
                this.l = androidx.core.graphics.c.a(bVarArr);
                return;
            }
            c.b[] bVarArr2 = this.l;
            for (int i = 0; i < bVarArr.length; i++) {
                bVarArr2[i].f1901a = bVarArr[i].f1901a;
                for (int i2 = 0; i2 < bVarArr[i].f1902b.length; i2++) {
                    bVarArr2[i].f1902b[i2] = bVarArr[i].f1902b[i2];
                }
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes-dex2jar.jar:androidx/l/a/a/i$f.class */
    public static final class f {
        private static final Matrix n = new Matrix();

        /* renamed from: a  reason: collision with root package name */
        Paint f2512a;

        /* renamed from: b  reason: collision with root package name */
        Paint f2513b;

        /* renamed from: c  reason: collision with root package name */
        final c f2514c;

        /* renamed from: d  reason: collision with root package name */
        float f2515d;
        float e;
        float f;
        float g;
        int h;
        String i;
        Boolean j;
        final androidx.b.a<String, Object> k;
        private final Path l;
        private final Path m;
        private final Matrix o;
        private PathMeasure p;
        private int q;

        public f() {
            this.o = new Matrix();
            this.f2515d = BitmapDescriptorFactory.HUE_RED;
            this.e = BitmapDescriptorFactory.HUE_RED;
            this.f = BitmapDescriptorFactory.HUE_RED;
            this.g = BitmapDescriptorFactory.HUE_RED;
            this.h = 255;
            this.i = null;
            this.j = null;
            this.k = new androidx.b.a<>();
            this.f2514c = new c();
            this.l = new Path();
            this.m = new Path();
        }

        public f(f fVar) {
            this.o = new Matrix();
            this.f2515d = BitmapDescriptorFactory.HUE_RED;
            this.e = BitmapDescriptorFactory.HUE_RED;
            this.f = BitmapDescriptorFactory.HUE_RED;
            this.g = BitmapDescriptorFactory.HUE_RED;
            this.h = 255;
            this.i = null;
            this.j = null;
            androidx.b.a<String, Object> aVar = new androidx.b.a<>();
            this.k = aVar;
            this.f2514c = new c(fVar.f2514c, aVar);
            this.l = new Path(fVar.l);
            this.m = new Path(fVar.m);
            this.f2515d = fVar.f2515d;
            this.e = fVar.e;
            this.f = fVar.f;
            this.g = fVar.g;
            this.q = fVar.q;
            this.h = fVar.h;
            this.i = fVar.i;
            String str = fVar.i;
            if (str != null) {
                aVar.put(str, this);
            }
            this.j = fVar.j;
        }

        private void a(c cVar, Matrix matrix, Canvas canvas, int i, int i2, ColorFilter colorFilter) {
            cVar.f2508a.set(matrix);
            cVar.f2508a.preConcat(cVar.j);
            canvas.save();
            f fVar = this;
            for (int i3 = 0; i3 < cVar.f2509b.size(); i3++) {
                d dVar = cVar.f2509b.get(i3);
                if (dVar instanceof c) {
                    a((c) dVar, cVar.f2508a, canvas, i, i2, colorFilter);
                } else if (dVar instanceof e) {
                    e eVar = (e) dVar;
                    float f = i / fVar.f;
                    float f2 = i2 / fVar.g;
                    float min = Math.min(f, f2);
                    Matrix matrix2 = cVar.f2508a;
                    fVar.o.set(matrix2);
                    fVar.o.postScale(f, f2);
                    float[] fArr = {BitmapDescriptorFactory.HUE_RED, 1.0f, 1.0f, BitmapDescriptorFactory.HUE_RED};
                    matrix2.mapVectors(fArr);
                    float hypot = (float) Math.hypot(fArr[0], fArr[1]);
                    float hypot2 = (float) Math.hypot(fArr[2], fArr[3]);
                    float f3 = fArr[0];
                    float f4 = fArr[1];
                    float f5 = fArr[2];
                    float f6 = fArr[3];
                    float max = Math.max(hypot, hypot2);
                    float abs = max > BitmapDescriptorFactory.HUE_RED ? Math.abs((f3 * f6) - (f4 * f5)) / max : BitmapDescriptorFactory.HUE_RED;
                    if (abs != BitmapDescriptorFactory.HUE_RED) {
                        eVar.a(this.l);
                        Path path = this.l;
                        this.m.reset();
                        if (eVar.a()) {
                            this.m.setFillType(eVar.n == 0 ? Path.FillType.WINDING : Path.FillType.EVEN_ODD);
                            this.m.addPath(path, this.o);
                            canvas.clipPath(this.m);
                            fVar = this;
                        } else {
                            b bVar = (b) eVar;
                            if (!(bVar.f == BitmapDescriptorFactory.HUE_RED && bVar.g == 1.0f)) {
                                float f7 = bVar.f;
                                float f8 = bVar.h;
                                float f9 = bVar.g;
                                float f10 = bVar.h;
                                if (this.p == null) {
                                    this.p = new PathMeasure();
                                }
                                this.p.setPath(this.l, false);
                                float length = this.p.getLength();
                                float f11 = ((f7 + f8) % 1.0f) * length;
                                float f12 = ((f9 + f10) % 1.0f) * length;
                                path.reset();
                                if (f11 > f12) {
                                    this.p.getSegment(f11, length, path, true);
                                    this.p.getSegment(BitmapDescriptorFactory.HUE_RED, f12, path, true);
                                } else {
                                    this.p.getSegment(f11, f12, path, true);
                                }
                                path.rLineTo(BitmapDescriptorFactory.HUE_RED, BitmapDescriptorFactory.HUE_RED);
                            }
                            this.m.addPath(path, this.o);
                            if (bVar.f2506c.c()) {
                                androidx.core.content.res.b bVar2 = bVar.f2506c;
                                if (this.f2513b == null) {
                                    Paint paint = new Paint(1);
                                    this.f2513b = paint;
                                    paint.setStyle(Paint.Style.FILL);
                                }
                                Paint paint2 = this.f2513b;
                                if (bVar2.a()) {
                                    Shader shader = bVar2.f1833a;
                                    shader.setLocalMatrix(this.o);
                                    paint2.setShader(shader);
                                    paint2.setAlpha(Math.round(bVar.e * 255.0f));
                                } else {
                                    paint2.setShader(null);
                                    paint2.setAlpha(255);
                                    paint2.setColor(i.a(bVar2.f1834b, bVar.e));
                                }
                                paint2.setColorFilter(colorFilter);
                                this.m.setFillType(bVar.n == 0 ? Path.FillType.WINDING : Path.FillType.EVEN_ODD);
                                canvas.drawPath(this.m, paint2);
                            }
                            fVar = this;
                            if (bVar.f2504a.c()) {
                                androidx.core.content.res.b bVar3 = bVar.f2504a;
                                if (this.f2512a == null) {
                                    Paint paint3 = new Paint(1);
                                    this.f2512a = paint3;
                                    paint3.setStyle(Paint.Style.STROKE);
                                }
                                Paint paint4 = this.f2512a;
                                if (bVar.j != null) {
                                    paint4.setStrokeJoin(bVar.j);
                                }
                                if (bVar.i != null) {
                                    paint4.setStrokeCap(bVar.i);
                                }
                                paint4.setStrokeMiter(bVar.k);
                                if (bVar3.a()) {
                                    Shader shader2 = bVar3.f1833a;
                                    shader2.setLocalMatrix(this.o);
                                    paint4.setShader(shader2);
                                    paint4.setAlpha(Math.round(bVar.f2507d * 255.0f));
                                } else {
                                    paint4.setShader(null);
                                    paint4.setAlpha(255);
                                    paint4.setColor(i.a(bVar3.f1834b, bVar.f2507d));
                                }
                                paint4.setColorFilter(colorFilter);
                                paint4.setStrokeWidth(bVar.f2505b * abs * min);
                                canvas.drawPath(this.m, paint4);
                                fVar = this;
                            }
                        }
                    } else {
                        fVar = this;
                    }
                }
            }
            canvas.restore();
        }

        public final void a(Canvas canvas, int i, int i2) {
            a(this.f2514c, n, canvas, i, i2, null);
        }

        public final boolean a() {
            if (this.j == null) {
                this.j = Boolean.valueOf(this.f2514c.b());
            }
            return this.j.booleanValue();
        }

        public final float getAlpha() {
            return getRootAlpha() / 255.0f;
        }

        public final int getRootAlpha() {
            return this.h;
        }

        public final void setAlpha(float f) {
            setRootAlpha((int) (f * 255.0f));
        }

        public final void setRootAlpha(int i) {
            this.h = i;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes-dex2jar.jar:androidx/l/a/a/i$g.class */
    public static final class g extends Drawable.ConstantState {

        /* renamed from: a  reason: collision with root package name */
        int f2516a;

        /* renamed from: b  reason: collision with root package name */
        f f2517b;

        /* renamed from: c  reason: collision with root package name */
        ColorStateList f2518c;

        /* renamed from: d  reason: collision with root package name */
        PorterDuff.Mode f2519d;
        boolean e;
        Bitmap f;
        ColorStateList g;
        PorterDuff.Mode h;
        int i;
        boolean j;
        boolean k;
        Paint l;

        public g() {
            this.f2518c = null;
            this.f2519d = i.f2501a;
            this.f2517b = new f();
        }

        public g(g gVar) {
            this.f2518c = null;
            this.f2519d = i.f2501a;
            if (gVar != null) {
                this.f2516a = gVar.f2516a;
                this.f2517b = new f(gVar.f2517b);
                if (gVar.f2517b.f2513b != null) {
                    this.f2517b.f2513b = new Paint(gVar.f2517b.f2513b);
                }
                if (gVar.f2517b.f2512a != null) {
                    this.f2517b.f2512a = new Paint(gVar.f2517b.f2512a);
                }
                this.f2518c = gVar.f2518c;
                this.f2519d = gVar.f2519d;
                this.e = gVar.e;
            }
        }

        public final void a(int i, int i2) {
            this.f.eraseColor(0);
            this.f2517b.a(new Canvas(this.f), i, i2);
        }

        @Override // android.graphics.drawable.Drawable.ConstantState
        public final int getChangingConfigurations() {
            return this.f2516a;
        }

        @Override // android.graphics.drawable.Drawable.ConstantState
        public final Drawable newDrawable() {
            return new i(this);
        }

        @Override // android.graphics.drawable.Drawable.ConstantState
        public final Drawable newDrawable(Resources resources) {
            return new i(this);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes-dex2jar.jar:androidx/l/a/a/i$h.class */
    public static final class h extends Drawable.ConstantState {

        /* renamed from: a  reason: collision with root package name */
        private final Drawable.ConstantState f2520a;

        public h(Drawable.ConstantState constantState) {
            this.f2520a = constantState;
        }

        @Override // android.graphics.drawable.Drawable.ConstantState
        public final boolean canApplyTheme() {
            return this.f2520a.canApplyTheme();
        }

        @Override // android.graphics.drawable.Drawable.ConstantState
        public final int getChangingConfigurations() {
            return this.f2520a.getChangingConfigurations();
        }

        @Override // android.graphics.drawable.Drawable.ConstantState
        public final Drawable newDrawable() {
            i iVar = new i();
            iVar.f2500c = (VectorDrawable) this.f2520a.newDrawable();
            return iVar;
        }

        @Override // android.graphics.drawable.Drawable.ConstantState
        public final Drawable newDrawable(Resources resources) {
            i iVar = new i();
            iVar.f2500c = (VectorDrawable) this.f2520a.newDrawable(resources);
            return iVar;
        }

        @Override // android.graphics.drawable.Drawable.ConstantState
        public final Drawable newDrawable(Resources resources, Resources.Theme theme) {
            i iVar = new i();
            iVar.f2500c = (VectorDrawable) this.f2520a.newDrawable(resources, theme);
            return iVar;
        }
    }

    i() {
        this.f2502b = true;
        this.i = new float[9];
        this.j = new Matrix();
        this.k = new Rect();
        this.f2503d = new g();
    }

    i(g gVar) {
        this.f2502b = true;
        this.i = new float[9];
        this.j = new Matrix();
        this.k = new Rect();
        this.f2503d = gVar;
        this.e = a(gVar.f2518c, gVar.f2519d);
    }

    static int a(int i, float f2) {
        return (i & 16777215) | (((int) (Color.alpha(i) * f2)) << 24);
    }

    private PorterDuffColorFilter a(ColorStateList colorStateList, PorterDuff.Mode mode) {
        if (colorStateList == null || mode == null) {
            return null;
        }
        return new PorterDuffColorFilter(colorStateList.getColorForState(getState(), 0), mode);
    }

    public static i a(Resources resources, int i, Resources.Theme theme) {
        int next;
        if (Build.VERSION.SDK_INT >= 24) {
            i iVar = new i();
            iVar.f2500c = androidx.core.content.res.f.a(resources, i, theme);
            iVar.h = new h(iVar.f2500c.getConstantState());
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
                return a(resources, xml, asAttributeSet, theme);
            }
            throw new XmlPullParserException("No start tag found");
        } catch (IOException e2) {
            Log.e("VectorDrawableCompat", "parser error", e2);
            return null;
        } catch (XmlPullParserException e3) {
            Log.e("VectorDrawableCompat", "parser error", e3);
            return null;
        }
    }

    public static i a(Resources resources, XmlPullParser xmlPullParser, AttributeSet attributeSet, Resources.Theme theme) throws XmlPullParserException, IOException {
        i iVar = new i();
        iVar.inflate(resources, xmlPullParser, attributeSet, theme);
        return iVar;
    }

    private void b(Resources resources, XmlPullParser xmlPullParser, AttributeSet attributeSet, Resources.Theme theme) throws XmlPullParserException, IOException {
        g gVar = this.f2503d;
        f fVar = gVar.f2517b;
        ArrayDeque arrayDeque = new ArrayDeque();
        arrayDeque.push(fVar.f2514c);
        int eventType = xmlPullParser.getEventType();
        int depth = xmlPullParser.getDepth();
        boolean z = true;
        while (eventType != 1 && (xmlPullParser.getDepth() >= depth + 1 || eventType != 3)) {
            if (eventType == 2) {
                String name = xmlPullParser.getName();
                c cVar = (c) arrayDeque.peek();
                if ("path".equals(name)) {
                    b bVar = new b();
                    TypedArray a2 = androidx.core.content.res.g.a(resources, theme, attributeSet, androidx.l.a.a.a.f2485c);
                    bVar.a(a2, xmlPullParser, theme);
                    a2.recycle();
                    cVar.f2509b.add(bVar);
                    if (bVar.getPathName() != null) {
                        fVar.k.put(bVar.getPathName(), bVar);
                    }
                    gVar.f2516a = bVar.o | gVar.f2516a;
                    z = false;
                } else if ("clip-path".equals(name)) {
                    a aVar = new a();
                    if (androidx.core.content.res.g.a(xmlPullParser, "pathData")) {
                        TypedArray a3 = androidx.core.content.res.g.a(resources, theme, attributeSet, androidx.l.a.a.a.f2486d);
                        aVar.a(a3, xmlPullParser);
                        a3.recycle();
                    }
                    cVar.f2509b.add(aVar);
                    if (aVar.getPathName() != null) {
                        fVar.k.put(aVar.getPathName(), aVar);
                    }
                    gVar.f2516a = aVar.o | gVar.f2516a;
                    z = z;
                } else {
                    z = z;
                    if ("group".equals(name)) {
                        c cVar2 = new c();
                        TypedArray a4 = androidx.core.content.res.g.a(resources, theme, attributeSet, androidx.l.a.a.a.f2484b);
                        cVar2.l = null;
                        cVar2.f2510c = androidx.core.content.res.g.a(a4, xmlPullParser, "rotation", 5, cVar2.f2510c);
                        cVar2.f2511d = a4.getFloat(1, cVar2.f2511d);
                        cVar2.e = a4.getFloat(2, cVar2.e);
                        cVar2.f = androidx.core.content.res.g.a(a4, xmlPullParser, "scaleX", 3, cVar2.f);
                        cVar2.g = androidx.core.content.res.g.a(a4, xmlPullParser, "scaleY", 4, cVar2.g);
                        cVar2.h = androidx.core.content.res.g.a(a4, xmlPullParser, "translateX", 6, cVar2.h);
                        cVar2.i = androidx.core.content.res.g.a(a4, xmlPullParser, "translateY", 7, cVar2.i);
                        String string = a4.getString(0);
                        if (string != null) {
                            cVar2.m = string;
                        }
                        cVar2.a();
                        a4.recycle();
                        cVar.f2509b.add(cVar2);
                        arrayDeque.push(cVar2);
                        if (cVar2.getGroupName() != null) {
                            fVar.k.put(cVar2.getGroupName(), cVar2);
                        }
                        gVar.f2516a = cVar2.k | gVar.f2516a;
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

    /* JADX INFO: Access modifiers changed from: package-private */
    public final Object a(String str) {
        return this.f2503d.f2517b.k.get(str);
    }

    @Override // androidx.l.a.a.h, android.graphics.drawable.Drawable
    public final /* bridge */ /* synthetic */ void applyTheme(Resources.Theme theme) {
        super.applyTheme(theme);
    }

    @Override // android.graphics.drawable.Drawable
    public final boolean canApplyTheme() {
        if (this.f2500c == null) {
            return false;
        }
        androidx.core.graphics.drawable.a.c(this.f2500c);
        return false;
    }

    @Override // androidx.l.a.a.h, android.graphics.drawable.Drawable
    public final /* bridge */ /* synthetic */ void clearColorFilter() {
        super.clearColorFilter();
    }

    /* JADX WARN: Code restructure failed: missing block: B:42:0x0160, code lost:
        if ((r0 == r0.f.getWidth() && r0 == r0.f.getHeight()) == false) goto L_0x0163;
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
        throw new UnsupportedOperationException("Method not decompiled: androidx.l.a.a.i.draw(android.graphics.Canvas):void");
    }

    @Override // android.graphics.drawable.Drawable
    public final int getAlpha() {
        return this.f2500c != null ? androidx.core.graphics.drawable.a.b(this.f2500c) : this.f2503d.f2517b.getRootAlpha();
    }

    @Override // android.graphics.drawable.Drawable
    public final int getChangingConfigurations() {
        return this.f2500c != null ? this.f2500c.getChangingConfigurations() : super.getChangingConfigurations() | this.f2503d.getChangingConfigurations();
    }

    @Override // android.graphics.drawable.Drawable
    public final ColorFilter getColorFilter() {
        return this.f2500c != null ? androidx.core.graphics.drawable.a.d(this.f2500c) : this.f;
    }

    @Override // android.graphics.drawable.Drawable
    public final Drawable.ConstantState getConstantState() {
        if (this.f2500c != null && Build.VERSION.SDK_INT >= 24) {
            return new h(this.f2500c.getConstantState());
        }
        this.f2503d.f2516a = getChangingConfigurations();
        return this.f2503d;
    }

    @Override // androidx.l.a.a.h, android.graphics.drawable.Drawable
    public final /* bridge */ /* synthetic */ Drawable getCurrent() {
        return super.getCurrent();
    }

    @Override // android.graphics.drawable.Drawable
    public final int getIntrinsicHeight() {
        return this.f2500c != null ? this.f2500c.getIntrinsicHeight() : (int) this.f2503d.f2517b.e;
    }

    @Override // android.graphics.drawable.Drawable
    public final int getIntrinsicWidth() {
        return this.f2500c != null ? this.f2500c.getIntrinsicWidth() : (int) this.f2503d.f2517b.f2515d;
    }

    @Override // androidx.l.a.a.h, android.graphics.drawable.Drawable
    public final /* bridge */ /* synthetic */ int getMinimumHeight() {
        return super.getMinimumHeight();
    }

    @Override // androidx.l.a.a.h, android.graphics.drawable.Drawable
    public final /* bridge */ /* synthetic */ int getMinimumWidth() {
        return super.getMinimumWidth();
    }

    @Override // android.graphics.drawable.Drawable
    public final int getOpacity() {
        if (this.f2500c != null) {
            return this.f2500c.getOpacity();
        }
        return -3;
    }

    @Override // androidx.l.a.a.h, android.graphics.drawable.Drawable
    public final /* bridge */ /* synthetic */ boolean getPadding(Rect rect) {
        return super.getPadding(rect);
    }

    @Override // androidx.l.a.a.h, android.graphics.drawable.Drawable
    public final /* bridge */ /* synthetic */ int[] getState() {
        return super.getState();
    }

    @Override // androidx.l.a.a.h, android.graphics.drawable.Drawable
    public final /* bridge */ /* synthetic */ Region getTransparentRegion() {
        return super.getTransparentRegion();
    }

    @Override // android.graphics.drawable.Drawable
    public final void inflate(Resources resources, XmlPullParser xmlPullParser, AttributeSet attributeSet) throws XmlPullParserException, IOException {
        if (this.f2500c != null) {
            this.f2500c.inflate(resources, xmlPullParser, attributeSet);
        } else {
            inflate(resources, xmlPullParser, attributeSet, null);
        }
    }

    @Override // android.graphics.drawable.Drawable
    public final void inflate(Resources resources, XmlPullParser xmlPullParser, AttributeSet attributeSet, Resources.Theme theme) throws XmlPullParserException, IOException {
        ColorStateList colorStateList;
        if (this.f2500c != null) {
            androidx.core.graphics.drawable.a.a(this.f2500c, resources, xmlPullParser, attributeSet, theme);
            return;
        }
        g gVar = this.f2503d;
        gVar.f2517b = new f();
        TypedArray a2 = androidx.core.content.res.g.a(resources, theme, attributeSet, androidx.l.a.a.a.f2483a);
        g gVar2 = this.f2503d;
        f fVar = gVar2.f2517b;
        int a3 = androidx.core.content.res.g.a(a2, xmlPullParser, "tintMode", 6, -1);
        PorterDuff.Mode mode = PorterDuff.Mode.SRC_IN;
        if (a3 == 3) {
            mode = PorterDuff.Mode.SRC_OVER;
        } else if (a3 == 5) {
            mode = PorterDuff.Mode.SRC_IN;
        } else if (a3 != 9) {
            switch (a3) {
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
        gVar2.f2519d = mode;
        if (androidx.core.content.res.g.a(xmlPullParser, "tint")) {
            TypedValue typedValue = new TypedValue();
            a2.getValue(1, typedValue);
            if (typedValue.type != 2) {
                colorStateList = (typedValue.type < 28 || typedValue.type > 31) ? androidx.core.content.res.a.a(a2.getResources(), a2.getResourceId(1, 0), theme) : ColorStateList.valueOf(typedValue.data);
            } else {
                throw new UnsupportedOperationException("Failed to resolve attribute at index 1: " + typedValue);
            }
        } else {
            colorStateList = null;
        }
        if (colorStateList != null) {
            gVar2.f2518c = colorStateList;
        }
        gVar2.e = androidx.core.content.res.g.a(a2, xmlPullParser, "autoMirrored", 5, gVar2.e);
        fVar.f = androidx.core.content.res.g.a(a2, xmlPullParser, "viewportWidth", 7, fVar.f);
        fVar.g = androidx.core.content.res.g.a(a2, xmlPullParser, "viewportHeight", 8, fVar.g);
        if (fVar.f <= BitmapDescriptorFactory.HUE_RED) {
            throw new XmlPullParserException(a2.getPositionDescription() + "<vector> tag requires viewportWidth > 0");
        } else if (fVar.g > BitmapDescriptorFactory.HUE_RED) {
            fVar.f2515d = a2.getDimension(3, fVar.f2515d);
            fVar.e = a2.getDimension(2, fVar.e);
            if (fVar.f2515d <= BitmapDescriptorFactory.HUE_RED) {
                throw new XmlPullParserException(a2.getPositionDescription() + "<vector> tag requires width > 0");
            } else if (fVar.e > BitmapDescriptorFactory.HUE_RED) {
                fVar.setAlpha(androidx.core.content.res.g.a(a2, xmlPullParser, "alpha", 4, fVar.getAlpha()));
                String string = a2.getString(0);
                if (string != null) {
                    fVar.i = string;
                    fVar.k.put(string, fVar);
                }
                a2.recycle();
                gVar.f2516a = getChangingConfigurations();
                gVar.k = true;
                b(resources, xmlPullParser, attributeSet, theme);
                this.e = a(gVar.f2518c, gVar.f2519d);
            } else {
                throw new XmlPullParserException(a2.getPositionDescription() + "<vector> tag requires height > 0");
            }
        } else {
            throw new XmlPullParserException(a2.getPositionDescription() + "<vector> tag requires viewportHeight > 0");
        }
    }

    @Override // android.graphics.drawable.Drawable
    public final void invalidateSelf() {
        if (this.f2500c != null) {
            this.f2500c.invalidateSelf();
        } else {
            super.invalidateSelf();
        }
    }

    @Override // android.graphics.drawable.Drawable
    public final boolean isAutoMirrored() {
        return this.f2500c != null ? androidx.core.graphics.drawable.a.a(this.f2500c) : this.f2503d.e;
    }

    @Override // android.graphics.drawable.Drawable
    public final boolean isStateful() {
        if (this.f2500c != null) {
            return this.f2500c.isStateful();
        }
        if (super.isStateful()) {
            return true;
        }
        g gVar = this.f2503d;
        if (gVar == null) {
            return false;
        }
        if (!gVar.f2517b.a()) {
            return this.f2503d.f2518c != null && this.f2503d.f2518c.isStateful();
        }
        return true;
    }

    @Override // androidx.l.a.a.h, android.graphics.drawable.Drawable
    public final /* bridge */ /* synthetic */ void jumpToCurrentState() {
        super.jumpToCurrentState();
    }

    @Override // android.graphics.drawable.Drawable
    public final Drawable mutate() {
        if (this.f2500c != null) {
            this.f2500c.mutate();
            return this;
        }
        if (!this.g && super.mutate() == this) {
            this.f2503d = new g(this.f2503d);
            this.g = true;
        }
        return this;
    }

    @Override // androidx.l.a.a.h, android.graphics.drawable.Drawable
    protected final void onBoundsChange(Rect rect) {
        if (this.f2500c != null) {
            this.f2500c.setBounds(rect);
        }
    }

    @Override // android.graphics.drawable.Drawable
    protected final boolean onStateChange(int[] iArr) {
        if (this.f2500c != null) {
            return this.f2500c.setState(iArr);
        }
        g gVar = this.f2503d;
        r11 = true;
        boolean z = false;
        if (gVar.f2518c != null) {
            z = false;
            if (gVar.f2519d != null) {
                this.e = a(gVar.f2518c, gVar.f2519d);
                invalidateSelf();
                z = true;
            }
        }
        if (gVar.f2517b.a()) {
            boolean a2 = gVar.f2517b.f2514c.a(iArr);
            gVar.k |= a2;
            if (a2) {
                invalidateSelf();
            }
        }
        return z;
    }

    @Override // android.graphics.drawable.Drawable
    public final void scheduleSelf(Runnable runnable, long j) {
        if (this.f2500c != null) {
            this.f2500c.scheduleSelf(runnable, j);
        } else {
            super.scheduleSelf(runnable, j);
        }
    }

    @Override // android.graphics.drawable.Drawable
    public final void setAlpha(int i) {
        if (this.f2500c != null) {
            this.f2500c.setAlpha(i);
        } else if (this.f2503d.f2517b.getRootAlpha() != i) {
            this.f2503d.f2517b.setRootAlpha(i);
            invalidateSelf();
        }
    }

    @Override // android.graphics.drawable.Drawable
    public final void setAutoMirrored(boolean z) {
        if (this.f2500c != null) {
            androidx.core.graphics.drawable.a.a(this.f2500c, z);
        } else {
            this.f2503d.e = z;
        }
    }

    @Override // androidx.l.a.a.h, android.graphics.drawable.Drawable
    public final /* bridge */ /* synthetic */ void setChangingConfigurations(int i) {
        super.setChangingConfigurations(i);
    }

    @Override // androidx.l.a.a.h, android.graphics.drawable.Drawable
    public final /* bridge */ /* synthetic */ void setColorFilter(int i, PorterDuff.Mode mode) {
        super.setColorFilter(i, mode);
    }

    @Override // android.graphics.drawable.Drawable
    public final void setColorFilter(ColorFilter colorFilter) {
        if (this.f2500c != null) {
            this.f2500c.setColorFilter(colorFilter);
            return;
        }
        this.f = colorFilter;
        invalidateSelf();
    }

    @Override // androidx.l.a.a.h, android.graphics.drawable.Drawable
    public final /* bridge */ /* synthetic */ void setFilterBitmap(boolean z) {
        super.setFilterBitmap(z);
    }

    @Override // androidx.l.a.a.h, android.graphics.drawable.Drawable
    public final /* bridge */ /* synthetic */ void setHotspot(float f2, float f3) {
        super.setHotspot(f2, f3);
    }

    @Override // androidx.l.a.a.h, android.graphics.drawable.Drawable
    public final /* bridge */ /* synthetic */ void setHotspotBounds(int i, int i2, int i3, int i4) {
        super.setHotspotBounds(i, i2, i3, i4);
    }

    @Override // androidx.l.a.a.h, android.graphics.drawable.Drawable
    public final /* bridge */ /* synthetic */ boolean setState(int[] iArr) {
        return super.setState(iArr);
    }

    @Override // android.graphics.drawable.Drawable, androidx.core.graphics.drawable.b
    public final void setTint(int i) {
        if (this.f2500c != null) {
            androidx.core.graphics.drawable.a.a(this.f2500c, i);
        } else {
            setTintList(ColorStateList.valueOf(i));
        }
    }

    @Override // android.graphics.drawable.Drawable, androidx.core.graphics.drawable.b
    public final void setTintList(ColorStateList colorStateList) {
        if (this.f2500c != null) {
            androidx.core.graphics.drawable.a.a(this.f2500c, colorStateList);
            return;
        }
        g gVar = this.f2503d;
        if (gVar.f2518c != colorStateList) {
            gVar.f2518c = colorStateList;
            this.e = a(colorStateList, gVar.f2519d);
            invalidateSelf();
        }
    }

    @Override // android.graphics.drawable.Drawable, androidx.core.graphics.drawable.b
    public final void setTintMode(PorterDuff.Mode mode) {
        if (this.f2500c != null) {
            androidx.core.graphics.drawable.a.a(this.f2500c, mode);
            return;
        }
        g gVar = this.f2503d;
        if (gVar.f2519d != mode) {
            gVar.f2519d = mode;
            this.e = a(gVar.f2518c, mode);
            invalidateSelf();
        }
    }

    @Override // android.graphics.drawable.Drawable
    public final boolean setVisible(boolean z, boolean z2) {
        return this.f2500c != null ? this.f2500c.setVisible(z, z2) : super.setVisible(z, z2);
    }

    @Override // android.graphics.drawable.Drawable
    public final void unscheduleSelf(Runnable runnable) {
        if (this.f2500c != null) {
            this.f2500c.unscheduleSelf(runnable);
        } else {
            super.unscheduleSelf(runnable);
        }
    }
}

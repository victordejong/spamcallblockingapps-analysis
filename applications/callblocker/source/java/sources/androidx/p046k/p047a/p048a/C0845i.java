package androidx.p046k.p047a.p048a;

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
import androidx.core.graphics.C0530b;
import androidx.core.graphics.drawable.C0535a;
import androidx.core.p017a.p018a.C0440b;
import androidx.core.p017a.p018a.C0449f;
import androidx.core.p017a.p018a.C0453g;
import androidx.p013b.C0373a;
import java.io.IOException;
import java.util.ArrayDeque;
import java.util.ArrayList;
import org.xmlpull.v1.XmlPullParser;
import org.xmlpull.v1.XmlPullParserException;
/* renamed from: androidx.k.a.a.i */
/* loaded from: classes-dex2jar.jar:androidx/k/a/a/i.class */
public class C0845i extends AbstractC0844h {

    /* renamed from: a */
    static final PorterDuff.Mode f2873a = PorterDuff.Mode.SRC_IN;

    /* renamed from: b */
    private C0853g f2874b;

    /* renamed from: d */
    private PorterDuffColorFilter f2875d;

    /* renamed from: e */
    private ColorFilter f2876e;

    /* renamed from: f */
    private boolean f2877f;

    /* renamed from: g */
    private boolean f2878g;

    /* renamed from: h */
    private Drawable.ConstantState f2879h;

    /* renamed from: i */
    private final float[] f2880i;

    /* renamed from: j */
    private final Matrix f2881j;

    /* renamed from: k */
    private final Rect f2882k;

    /* renamed from: androidx.k.a.a.i$a */
    /* loaded from: classes-dex2jar.jar:androidx/k/a/a/i$a.class */
    public static class C0847a extends AbstractC0851e {
        C0847a() {
        }

        C0847a(C0847a c0847a) {
            super(c0847a);
        }

        /* renamed from: a */
        private void m19281a(TypedArray typedArray, XmlPullParser xmlPullParser) {
            String string = typedArray.getString(0);
            if (string != null) {
                this.f2909m = string;
            }
            String string2 = typedArray.getString(1);
            if (string2 != null) {
                this.f2908l = C0530b.m20624b(string2);
            }
            this.f2910n = C0453g.m20835a(typedArray, xmlPullParser, "fillType", 2, 0);
        }

        /* renamed from: a */
        public void m19282a(Resources resources, AttributeSet attributeSet, Resources.Theme theme, XmlPullParser xmlPullParser) {
            if (!C0453g.m20832a(xmlPullParser, "pathData")) {
                return;
            }
            TypedArray m20840a = C0453g.m20840a(resources, theme, attributeSet, C0833a.f2846d);
            m19281a(m20840a, xmlPullParser);
            m20840a.recycle();
        }

        @Override // androidx.p046k.p047a.p048a.C0845i.AbstractC0851e
        /* renamed from: a */
        public boolean mo19271a() {
            return true;
        }
    }

    /* renamed from: androidx.k.a.a.i$b */
    /* loaded from: classes-dex2jar.jar:androidx/k/a/a/i$b.class */
    public static class C0848b extends AbstractC0851e {

        /* renamed from: a */
        C0440b f2883a;

        /* renamed from: b */
        float f2884b;

        /* renamed from: c */
        C0440b f2885c;

        /* renamed from: d */
        float f2886d;

        /* renamed from: e */
        float f2887e;

        /* renamed from: f */
        float f2888f;

        /* renamed from: g */
        float f2889g;

        /* renamed from: h */
        float f2890h;

        /* renamed from: i */
        Paint.Cap f2891i;

        /* renamed from: j */
        Paint.Join f2892j;

        /* renamed from: k */
        float f2893k;

        /* renamed from: p */
        private int[] f2894p;

        C0848b() {
            this.f2884b = 0.0f;
            this.f2886d = 1.0f;
            this.f2887e = 1.0f;
            this.f2888f = 0.0f;
            this.f2889g = 1.0f;
            this.f2890h = 0.0f;
            this.f2891i = Paint.Cap.BUTT;
            this.f2892j = Paint.Join.MITER;
            this.f2893k = 4.0f;
        }

        C0848b(C0848b c0848b) {
            super(c0848b);
            this.f2884b = 0.0f;
            this.f2886d = 1.0f;
            this.f2887e = 1.0f;
            this.f2888f = 0.0f;
            this.f2889g = 1.0f;
            this.f2890h = 0.0f;
            this.f2891i = Paint.Cap.BUTT;
            this.f2892j = Paint.Join.MITER;
            this.f2893k = 4.0f;
            this.f2894p = c0848b.f2894p;
            this.f2883a = c0848b.f2883a;
            this.f2884b = c0848b.f2884b;
            this.f2886d = c0848b.f2886d;
            this.f2885c = c0848b.f2885c;
            this.f2910n = c0848b.f2910n;
            this.f2887e = c0848b.f2887e;
            this.f2888f = c0848b.f2888f;
            this.f2889g = c0848b.f2889g;
            this.f2890h = c0848b.f2890h;
            this.f2891i = c0848b.f2891i;
            this.f2892j = c0848b.f2892j;
            this.f2893k = c0848b.f2893k;
        }

        /* renamed from: a */
        private Paint.Cap m19280a(int i, Paint.Cap cap) {
            switch (i) {
                case 0:
                    cap = Paint.Cap.BUTT;
                    break;
                case 1:
                    cap = Paint.Cap.ROUND;
                    break;
                case 2:
                    cap = Paint.Cap.SQUARE;
                    break;
            }
            return cap;
        }

        /* renamed from: a */
        private Paint.Join m19279a(int i, Paint.Join join) {
            switch (i) {
                case 0:
                    join = Paint.Join.MITER;
                    break;
                case 1:
                    join = Paint.Join.ROUND;
                    break;
                case 2:
                    join = Paint.Join.BEVEL;
                    break;
            }
            return join;
        }

        /* renamed from: a */
        private void m19277a(TypedArray typedArray, XmlPullParser xmlPullParser, Resources.Theme theme) {
            this.f2894p = null;
            if (!C0453g.m20832a(xmlPullParser, "pathData")) {
                return;
            }
            String string = typedArray.getString(0);
            if (string != null) {
                this.f2909m = string;
            }
            String string2 = typedArray.getString(2);
            if (string2 != null) {
                this.f2908l = C0530b.m20624b(string2);
            }
            this.f2885c = C0453g.m20838a(typedArray, xmlPullParser, theme, "fillColor", 1, 0);
            this.f2887e = C0453g.m20836a(typedArray, xmlPullParser, "fillAlpha", 12, this.f2887e);
            this.f2891i = m19280a(C0453g.m20835a(typedArray, xmlPullParser, "strokeLineCap", 8, -1), this.f2891i);
            this.f2892j = m19279a(C0453g.m20835a(typedArray, xmlPullParser, "strokeLineJoin", 9, -1), this.f2892j);
            this.f2893k = C0453g.m20836a(typedArray, xmlPullParser, "strokeMiterLimit", 10, this.f2893k);
            this.f2883a = C0453g.m20838a(typedArray, xmlPullParser, theme, "strokeColor", 3, 0);
            this.f2886d = C0453g.m20836a(typedArray, xmlPullParser, "strokeAlpha", 11, this.f2886d);
            this.f2884b = C0453g.m20836a(typedArray, xmlPullParser, "strokeWidth", 4, this.f2884b);
            this.f2889g = C0453g.m20836a(typedArray, xmlPullParser, "trimPathEnd", 6, this.f2889g);
            this.f2890h = C0453g.m20836a(typedArray, xmlPullParser, "trimPathOffset", 7, this.f2890h);
            this.f2888f = C0453g.m20836a(typedArray, xmlPullParser, "trimPathStart", 5, this.f2888f);
            this.f2910n = C0453g.m20835a(typedArray, xmlPullParser, "fillType", 13, this.f2910n);
        }

        /* renamed from: a */
        public void m19278a(Resources resources, AttributeSet attributeSet, Resources.Theme theme, XmlPullParser xmlPullParser) {
            TypedArray m20840a = C0453g.m20840a(resources, theme, attributeSet, C0833a.f2845c);
            m19277a(m20840a, xmlPullParser, theme);
            m20840a.recycle();
        }

        @Override // androidx.p046k.p047a.p048a.C0845i.AbstractC0850d
        /* renamed from: a */
        public boolean mo19273a(int[] iArr) {
            return this.f2885c.m20880a(iArr) | this.f2883a.m20880a(iArr);
        }

        @Override // androidx.p046k.p047a.p048a.C0845i.AbstractC0850d
        /* renamed from: b */
        public boolean mo19272b() {
            return this.f2885c.m20875d() || this.f2883a.m20875d();
        }

        float getFillAlpha() {
            return this.f2887e;
        }

        int getFillColor() {
            return this.f2885c.m20879b();
        }

        float getStrokeAlpha() {
            return this.f2886d;
        }

        int getStrokeColor() {
            return this.f2883a.m20879b();
        }

        float getStrokeWidth() {
            return this.f2884b;
        }

        float getTrimPathEnd() {
            return this.f2889g;
        }

        float getTrimPathOffset() {
            return this.f2890h;
        }

        float getTrimPathStart() {
            return this.f2888f;
        }

        void setFillAlpha(float f) {
            this.f2887e = f;
        }

        void setFillColor(int i) {
            this.f2885c.m20878b(i);
        }

        void setStrokeAlpha(float f) {
            this.f2886d = f;
        }

        void setStrokeColor(int i) {
            this.f2883a.m20878b(i);
        }

        void setStrokeWidth(float f) {
            this.f2884b = f;
        }

        void setTrimPathEnd(float f) {
            this.f2889g = f;
        }

        void setTrimPathOffset(float f) {
            this.f2890h = f;
        }

        void setTrimPathStart(float f) {
            this.f2888f = f;
        }
    }

    /* renamed from: androidx.k.a.a.i$c */
    /* loaded from: classes-dex2jar.jar:androidx/k/a/a/i$c.class */
    public static class C0849c extends AbstractC0850d {

        /* renamed from: a */
        final Matrix f2895a;

        /* renamed from: b */
        final ArrayList<AbstractC0850d> f2896b;

        /* renamed from: c */
        float f2897c;

        /* renamed from: d */
        final Matrix f2898d;

        /* renamed from: e */
        int f2899e;

        /* renamed from: f */
        private float f2900f;

        /* renamed from: g */
        private float f2901g;

        /* renamed from: h */
        private float f2902h;

        /* renamed from: i */
        private float f2903i;

        /* renamed from: j */
        private float f2904j;

        /* renamed from: k */
        private float f2905k;

        /* renamed from: l */
        private int[] f2906l;

        /* renamed from: m */
        private String f2907m;

        public C0849c() {
            super();
            this.f2895a = new Matrix();
            this.f2896b = new ArrayList<>();
            this.f2897c = 0.0f;
            this.f2900f = 0.0f;
            this.f2901g = 0.0f;
            this.f2902h = 1.0f;
            this.f2903i = 1.0f;
            this.f2904j = 0.0f;
            this.f2905k = 0.0f;
            this.f2898d = new Matrix();
            this.f2907m = null;
        }

        /* JADX WARN: Multi-variable type inference failed */
        /* JADX WARN: Type inference failed for: r0v43, types: [androidx.k.a.a.i$e] */
        /* JADX WARN: Type inference failed for: r1v40, types: [androidx.k.a.a.i$e] */
        public C0849c(C0849c c0849c, C0373a<String, Object> c0373a) {
            super();
            C0848b c0847a;
            this.f2895a = new Matrix();
            this.f2896b = new ArrayList<>();
            this.f2897c = 0.0f;
            this.f2900f = 0.0f;
            this.f2901g = 0.0f;
            this.f2902h = 1.0f;
            this.f2903i = 1.0f;
            this.f2904j = 0.0f;
            this.f2905k = 0.0f;
            this.f2898d = new Matrix();
            this.f2907m = null;
            this.f2897c = c0849c.f2897c;
            this.f2900f = c0849c.f2900f;
            this.f2901g = c0849c.f2901g;
            this.f2902h = c0849c.f2902h;
            this.f2903i = c0849c.f2903i;
            this.f2904j = c0849c.f2904j;
            this.f2905k = c0849c.f2905k;
            this.f2906l = c0849c.f2906l;
            this.f2907m = c0849c.f2907m;
            this.f2899e = c0849c.f2899e;
            if (this.f2907m != null) {
                c0373a.put(this.f2907m, this);
            }
            this.f2898d.set(c0849c.f2898d);
            ArrayList<AbstractC0850d> arrayList = c0849c.f2896b;
            for (int i = 0; i < arrayList.size(); i++) {
                AbstractC0850d abstractC0850d = arrayList.get(i);
                if (abstractC0850d instanceof C0849c) {
                    this.f2896b.add(new C0849c((C0849c) abstractC0850d, c0373a));
                } else {
                    if (abstractC0850d instanceof C0848b) {
                        c0847a = new C0848b((C0848b) abstractC0850d);
                    } else if (!(abstractC0850d instanceof C0847a)) {
                        throw new IllegalStateException("Unknown object in the tree!");
                    } else {
                        c0847a = new C0847a((C0847a) abstractC0850d);
                    }
                    this.f2896b.add(c0847a);
                    if (c0847a.f2909m != null) {
                        c0373a.put(c0847a.f2909m, c0847a);
                    }
                }
            }
        }

        /* renamed from: a */
        private void m19276a() {
            this.f2898d.reset();
            this.f2898d.postTranslate(-this.f2900f, -this.f2901g);
            this.f2898d.postScale(this.f2902h, this.f2903i);
            this.f2898d.postRotate(this.f2897c, 0.0f, 0.0f);
            this.f2898d.postTranslate(this.f2904j + this.f2900f, this.f2905k + this.f2901g);
        }

        /* renamed from: a */
        private void m19274a(TypedArray typedArray, XmlPullParser xmlPullParser) {
            this.f2906l = null;
            this.f2897c = C0453g.m20836a(typedArray, xmlPullParser, "rotation", 5, this.f2897c);
            this.f2900f = typedArray.getFloat(1, this.f2900f);
            this.f2901g = typedArray.getFloat(2, this.f2901g);
            this.f2902h = C0453g.m20836a(typedArray, xmlPullParser, "scaleX", 3, this.f2902h);
            this.f2903i = C0453g.m20836a(typedArray, xmlPullParser, "scaleY", 4, this.f2903i);
            this.f2904j = C0453g.m20836a(typedArray, xmlPullParser, "translateX", 6, this.f2904j);
            this.f2905k = C0453g.m20836a(typedArray, xmlPullParser, "translateY", 7, this.f2905k);
            String string = typedArray.getString(0);
            if (string != null) {
                this.f2907m = string;
            }
            m19276a();
        }

        /* renamed from: a */
        public void m19275a(Resources resources, AttributeSet attributeSet, Resources.Theme theme, XmlPullParser xmlPullParser) {
            TypedArray m20840a = C0453g.m20840a(resources, theme, attributeSet, C0833a.f2844b);
            m19274a(m20840a, xmlPullParser);
            m20840a.recycle();
        }

        @Override // androidx.p046k.p047a.p048a.C0845i.AbstractC0850d
        /* renamed from: a */
        public boolean mo19273a(int[] iArr) {
            boolean z = false;
            for (int i = 0; i < this.f2896b.size(); i++) {
                z |= this.f2896b.get(i).mo19273a(iArr);
            }
            return z;
        }

        @Override // androidx.p046k.p047a.p048a.C0845i.AbstractC0850d
        /* renamed from: b */
        public boolean mo19272b() {
            boolean z;
            int i = 0;
            while (true) {
                z = false;
                if (i >= this.f2896b.size()) {
                    break;
                } else if (this.f2896b.get(i).mo19272b()) {
                    z = true;
                    break;
                } else {
                    i++;
                }
            }
            return z;
        }

        public String getGroupName() {
            return this.f2907m;
        }

        public Matrix getLocalMatrix() {
            return this.f2898d;
        }

        public float getPivotX() {
            return this.f2900f;
        }

        public float getPivotY() {
            return this.f2901g;
        }

        public float getRotation() {
            return this.f2897c;
        }

        public float getScaleX() {
            return this.f2902h;
        }

        public float getScaleY() {
            return this.f2903i;
        }

        public float getTranslateX() {
            return this.f2904j;
        }

        public float getTranslateY() {
            return this.f2905k;
        }

        public void setPivotX(float f) {
            if (f != this.f2900f) {
                this.f2900f = f;
                m19276a();
            }
        }

        public void setPivotY(float f) {
            if (f != this.f2901g) {
                this.f2901g = f;
                m19276a();
            }
        }

        public void setRotation(float f) {
            if (f != this.f2897c) {
                this.f2897c = f;
                m19276a();
            }
        }

        public void setScaleX(float f) {
            if (f != this.f2902h) {
                this.f2902h = f;
                m19276a();
            }
        }

        public void setScaleY(float f) {
            if (f != this.f2903i) {
                this.f2903i = f;
                m19276a();
            }
        }

        public void setTranslateX(float f) {
            if (f != this.f2904j) {
                this.f2904j = f;
                m19276a();
            }
        }

        public void setTranslateY(float f) {
            if (f != this.f2905k) {
                this.f2905k = f;
                m19276a();
            }
        }
    }

    /* renamed from: androidx.k.a.a.i$d */
    /* loaded from: classes-dex2jar.jar:androidx/k/a/a/i$d.class */
    public static abstract class AbstractC0850d {
        private AbstractC0850d() {
        }

        /* renamed from: a */
        public boolean mo19273a(int[] iArr) {
            return false;
        }

        /* renamed from: b */
        public boolean mo19272b() {
            return false;
        }
    }

    /* renamed from: androidx.k.a.a.i$e */
    /* loaded from: classes-dex2jar.jar:androidx/k/a/a/i$e.class */
    public static abstract class AbstractC0851e extends AbstractC0850d {

        /* renamed from: l */
        protected C0530b.C0532b[] f2908l;

        /* renamed from: m */
        String f2909m;

        /* renamed from: n */
        int f2910n;

        /* renamed from: o */
        int f2911o;

        public AbstractC0851e() {
            super();
            this.f2908l = null;
            this.f2910n = 0;
        }

        public AbstractC0851e(AbstractC0851e abstractC0851e) {
            super();
            this.f2908l = null;
            this.f2910n = 0;
            this.f2909m = abstractC0851e.f2909m;
            this.f2911o = abstractC0851e.f2911o;
            this.f2908l = C0530b.m20626a(abstractC0851e.f2908l);
        }

        /* renamed from: a */
        public void m19270a(Path path) {
            path.reset();
            if (this.f2908l != null) {
                C0530b.C0532b.m20617a(this.f2908l, path);
            }
        }

        /* renamed from: a */
        public boolean mo19271a() {
            return false;
        }

        public C0530b.C0532b[] getPathData() {
            return this.f2908l;
        }

        public String getPathName() {
            return this.f2909m;
        }

        public void setPathData(C0530b.C0532b[] c0532bArr) {
            if (!C0530b.m20625a(this.f2908l, c0532bArr)) {
                this.f2908l = C0530b.m20626a(c0532bArr);
            } else {
                C0530b.m20623b(this.f2908l, c0532bArr);
            }
        }
    }

    /* renamed from: androidx.k.a.a.i$f */
    /* loaded from: classes-dex2jar.jar:androidx/k/a/a/i$f.class */
    public static class C0852f {

        /* renamed from: n */
        private static final Matrix f2912n = new Matrix();

        /* renamed from: a */
        Paint f2913a;

        /* renamed from: b */
        Paint f2914b;

        /* renamed from: c */
        final C0849c f2915c;

        /* renamed from: d */
        float f2916d;

        /* renamed from: e */
        float f2917e;

        /* renamed from: f */
        float f2918f;

        /* renamed from: g */
        float f2919g;

        /* renamed from: h */
        int f2920h;

        /* renamed from: i */
        String f2921i;

        /* renamed from: j */
        Boolean f2922j;

        /* renamed from: k */
        final C0373a<String, Object> f2923k;

        /* renamed from: l */
        private final Path f2924l;

        /* renamed from: m */
        private final Path f2925m;

        /* renamed from: o */
        private final Matrix f2926o;

        /* renamed from: p */
        private PathMeasure f2927p;

        /* renamed from: q */
        private int f2928q;

        public C0852f() {
            this.f2926o = new Matrix();
            this.f2916d = 0.0f;
            this.f2917e = 0.0f;
            this.f2918f = 0.0f;
            this.f2919g = 0.0f;
            this.f2920h = 255;
            this.f2921i = null;
            this.f2922j = null;
            this.f2923k = new C0373a<>();
            this.f2915c = new C0849c();
            this.f2924l = new Path();
            this.f2925m = new Path();
        }

        public C0852f(C0852f c0852f) {
            this.f2926o = new Matrix();
            this.f2916d = 0.0f;
            this.f2917e = 0.0f;
            this.f2918f = 0.0f;
            this.f2919g = 0.0f;
            this.f2920h = 255;
            this.f2921i = null;
            this.f2922j = null;
            this.f2923k = new C0373a<>();
            this.f2915c = new C0849c(c0852f.f2915c, this.f2923k);
            this.f2924l = new Path(c0852f.f2924l);
            this.f2925m = new Path(c0852f.f2925m);
            this.f2916d = c0852f.f2916d;
            this.f2917e = c0852f.f2917e;
            this.f2918f = c0852f.f2918f;
            this.f2919g = c0852f.f2919g;
            this.f2928q = c0852f.f2928q;
            this.f2920h = c0852f.f2920h;
            this.f2921i = c0852f.f2921i;
            if (c0852f.f2921i != null) {
                this.f2923k.put(c0852f.f2921i, this);
            }
            this.f2922j = c0852f.f2922j;
        }

        /* renamed from: a */
        private static float m19268a(float f, float f2, float f3, float f4) {
            return (f * f4) - (f2 * f3);
        }

        /* renamed from: a */
        private float m19266a(Matrix matrix) {
            float f = 0.0f;
            float[] fArr = {0.0f, 1.0f, 1.0f, 0.0f};
            matrix.mapVectors(fArr);
            float hypot = (float) Math.hypot(fArr[0], fArr[1]);
            float hypot2 = (float) Math.hypot(fArr[2], fArr[3]);
            float m19268a = m19268a(fArr[0], fArr[1], fArr[2], fArr[3]);
            float max = Math.max(hypot, hypot2);
            if (max > 0.0f) {
                f = Math.abs(m19268a) / max;
            }
            return f;
        }

        /* renamed from: a */
        private void m19265a(C0849c c0849c, Matrix matrix, Canvas canvas, int i, int i2, ColorFilter colorFilter) {
            c0849c.f2895a.set(matrix);
            c0849c.f2895a.preConcat(c0849c.f2898d);
            canvas.save();
            for (int i3 = 0; i3 < c0849c.f2896b.size(); i3++) {
                AbstractC0850d abstractC0850d = c0849c.f2896b.get(i3);
                if (abstractC0850d instanceof C0849c) {
                    m19265a((C0849c) abstractC0850d, c0849c.f2895a, canvas, i, i2, colorFilter);
                } else if (abstractC0850d instanceof AbstractC0851e) {
                    m19264a(c0849c, (AbstractC0851e) abstractC0850d, canvas, i, i2, colorFilter);
                }
            }
            canvas.restore();
        }

        /* renamed from: a */
        private void m19264a(C0849c c0849c, AbstractC0851e abstractC0851e, Canvas canvas, int i, int i2, ColorFilter colorFilter) {
            float f = i / this.f2918f;
            float f2 = i2 / this.f2919g;
            float min = Math.min(f, f2);
            Matrix matrix = c0849c.f2895a;
            this.f2926o.set(matrix);
            this.f2926o.postScale(f, f2);
            float m19266a = m19266a(matrix);
            if (m19266a == 0.0f) {
                return;
            }
            abstractC0851e.m19270a(this.f2924l);
            Path path = this.f2924l;
            this.f2925m.reset();
            if (abstractC0851e.mo19271a()) {
                this.f2925m.setFillType(abstractC0851e.f2910n == 0 ? Path.FillType.WINDING : Path.FillType.EVEN_ODD);
                this.f2925m.addPath(path, this.f2926o);
                canvas.clipPath(this.f2925m);
                return;
            }
            C0848b c0848b = (C0848b) abstractC0851e;
            if (c0848b.f2888f != 0.0f || c0848b.f2889g != 1.0f) {
                float f3 = c0848b.f2888f;
                float f4 = c0848b.f2890h;
                float f5 = c0848b.f2889g;
                float f6 = c0848b.f2890h;
                if (this.f2927p == null) {
                    this.f2927p = new PathMeasure();
                }
                this.f2927p.setPath(this.f2924l, false);
                float length = this.f2927p.getLength();
                float f7 = ((f3 + f4) % 1.0f) * length;
                float f8 = ((f5 + f6) % 1.0f) * length;
                path.reset();
                if (f7 > f8) {
                    this.f2927p.getSegment(f7, length, path, true);
                    this.f2927p.getSegment(0.0f, f8, path, true);
                } else {
                    this.f2927p.getSegment(f7, f8, path, true);
                }
                path.rLineTo(0.0f, 0.0f);
            }
            this.f2925m.addPath(path, this.f2926o);
            if (c0848b.f2885c.m20874e()) {
                C0440b c0440b = c0848b.f2885c;
                if (this.f2914b == null) {
                    this.f2914b = new Paint(1);
                    this.f2914b.setStyle(Paint.Style.FILL);
                }
                Paint paint = this.f2914b;
                if (c0440b.m20876c()) {
                    Shader m20885a = c0440b.m20885a();
                    m20885a.setLocalMatrix(this.f2926o);
                    paint.setShader(m20885a);
                    paint.setAlpha(Math.round(c0848b.f2887e * 255.0f));
                } else {
                    paint.setShader(null);
                    paint.setAlpha(255);
                    paint.setColor(C0845i.m19291a(c0440b.m20879b(), c0848b.f2887e));
                }
                paint.setColorFilter(colorFilter);
                this.f2925m.setFillType(c0848b.f2910n == 0 ? Path.FillType.WINDING : Path.FillType.EVEN_ODD);
                canvas.drawPath(this.f2925m, paint);
            }
            if (!c0848b.f2883a.m20874e()) {
                return;
            }
            C0440b c0440b2 = c0848b.f2883a;
            if (this.f2913a == null) {
                this.f2913a = new Paint(1);
                this.f2913a.setStyle(Paint.Style.STROKE);
            }
            Paint paint2 = this.f2913a;
            if (c0848b.f2892j != null) {
                paint2.setStrokeJoin(c0848b.f2892j);
            }
            if (c0848b.f2891i != null) {
                paint2.setStrokeCap(c0848b.f2891i);
            }
            paint2.setStrokeMiter(c0848b.f2893k);
            if (c0440b2.m20876c()) {
                Shader m20885a2 = c0440b2.m20885a();
                m20885a2.setLocalMatrix(this.f2926o);
                paint2.setShader(m20885a2);
                paint2.setAlpha(Math.round(c0848b.f2886d * 255.0f));
            } else {
                paint2.setShader(null);
                paint2.setAlpha(255);
                paint2.setColor(C0845i.m19291a(c0440b2.m20879b(), c0848b.f2886d));
            }
            paint2.setColorFilter(colorFilter);
            paint2.setStrokeWidth(min * m19266a * c0848b.f2884b);
            canvas.drawPath(this.f2925m, paint2);
        }

        /* renamed from: a */
        public void m19267a(Canvas canvas, int i, int i2, ColorFilter colorFilter) {
            m19265a(this.f2915c, f2912n, canvas, i, i2, colorFilter);
        }

        /* renamed from: a */
        public boolean m19269a() {
            if (this.f2922j == null) {
                this.f2922j = Boolean.valueOf(this.f2915c.mo19272b());
            }
            return this.f2922j.booleanValue();
        }

        /* renamed from: a */
        public boolean m19263a(int[] iArr) {
            return this.f2915c.mo19273a(iArr);
        }

        public float getAlpha() {
            return getRootAlpha() / 255.0f;
        }

        public int getRootAlpha() {
            return this.f2920h;
        }

        public void setAlpha(float f) {
            setRootAlpha((int) (255.0f * f));
        }

        public void setRootAlpha(int i) {
            this.f2920h = i;
        }
    }

    /* renamed from: androidx.k.a.a.i$g */
    /* loaded from: classes-dex2jar.jar:androidx/k/a/a/i$g.class */
    public static class C0853g extends Drawable.ConstantState {

        /* renamed from: a */
        int f2929a;

        /* renamed from: b */
        C0852f f2930b;

        /* renamed from: c */
        ColorStateList f2931c;

        /* renamed from: d */
        PorterDuff.Mode f2932d;

        /* renamed from: e */
        boolean f2933e;

        /* renamed from: f */
        Bitmap f2934f;

        /* renamed from: g */
        ColorStateList f2935g;

        /* renamed from: h */
        PorterDuff.Mode f2936h;

        /* renamed from: i */
        int f2937i;

        /* renamed from: j */
        boolean f2938j;

        /* renamed from: k */
        boolean f2939k;

        /* renamed from: l */
        Paint f2940l;

        public C0853g() {
            this.f2931c = null;
            this.f2932d = C0845i.f2873a;
            this.f2930b = new C0852f();
        }

        public C0853g(C0853g c0853g) {
            this.f2931c = null;
            this.f2932d = C0845i.f2873a;
            if (c0853g != null) {
                this.f2929a = c0853g.f2929a;
                this.f2930b = new C0852f(c0853g.f2930b);
                if (c0853g.f2930b.f2914b != null) {
                    this.f2930b.f2914b = new Paint(c0853g.f2930b.f2914b);
                }
                if (c0853g.f2930b.f2913a != null) {
                    this.f2930b.f2913a = new Paint(c0853g.f2930b.f2913a);
                }
                this.f2931c = c0853g.f2931c;
                this.f2932d = c0853g.f2932d;
                this.f2933e = c0853g.f2933e;
            }
        }

        /* renamed from: a */
        public Paint m19259a(ColorFilter colorFilter) {
            Paint paint;
            if (m19262a() || colorFilter != null) {
                if (this.f2940l == null) {
                    this.f2940l = new Paint();
                    this.f2940l.setFilterBitmap(true);
                }
                this.f2940l.setAlpha(this.f2930b.getRootAlpha());
                this.f2940l.setColorFilter(colorFilter);
                paint = this.f2940l;
            } else {
                paint = null;
            }
            return paint;
        }

        /* renamed from: a */
        public void m19261a(int i, int i2) {
            this.f2934f.eraseColor(0);
            this.f2930b.m19267a(new Canvas(this.f2934f), i, i2, (ColorFilter) null);
        }

        /* renamed from: a */
        public void m19260a(Canvas canvas, ColorFilter colorFilter, Rect rect) {
            canvas.drawBitmap(this.f2934f, (Rect) null, rect, m19259a(colorFilter));
        }

        /* renamed from: a */
        public boolean m19262a() {
            return this.f2930b.getRootAlpha() < 255;
        }

        /* renamed from: a */
        public boolean m19258a(int[] iArr) {
            boolean m19263a = this.f2930b.m19263a(iArr);
            this.f2939k |= m19263a;
            return m19263a;
        }

        /* renamed from: b */
        public void m19256b(int i, int i2) {
            if (this.f2934f == null || !m19254c(i, i2)) {
                this.f2934f = Bitmap.createBitmap(i, i2, Bitmap.Config.ARGB_8888);
                this.f2939k = true;
            }
        }

        /* renamed from: b */
        public boolean m19257b() {
            return !this.f2939k && this.f2935g == this.f2931c && this.f2936h == this.f2932d && this.f2938j == this.f2933e && this.f2937i == this.f2930b.getRootAlpha();
        }

        /* renamed from: c */
        public void m19255c() {
            this.f2935g = this.f2931c;
            this.f2936h = this.f2932d;
            this.f2937i = this.f2930b.getRootAlpha();
            this.f2938j = this.f2933e;
            this.f2939k = false;
        }

        /* renamed from: c */
        public boolean m19254c(int i, int i2) {
            return i == this.f2934f.getWidth() && i2 == this.f2934f.getHeight();
        }

        /* renamed from: d */
        public boolean m19253d() {
            return this.f2930b.m19269a();
        }

        @Override // android.graphics.drawable.Drawable.ConstantState
        public int getChangingConfigurations() {
            return this.f2929a;
        }

        @Override // android.graphics.drawable.Drawable.ConstantState
        public Drawable newDrawable() {
            return new C0845i(this);
        }

        @Override // android.graphics.drawable.Drawable.ConstantState
        public Drawable newDrawable(Resources resources) {
            return new C0845i(this);
        }
    }

    /* renamed from: androidx.k.a.a.i$h */
    /* loaded from: classes-dex2jar.jar:androidx/k/a/a/i$h.class */
    public static class C0854h extends Drawable.ConstantState {

        /* renamed from: a */
        private final Drawable.ConstantState f2941a;

        public C0854h(Drawable.ConstantState constantState) {
            this.f2941a = constantState;
        }

        @Override // android.graphics.drawable.Drawable.ConstantState
        public boolean canApplyTheme() {
            return this.f2941a.canApplyTheme();
        }

        @Override // android.graphics.drawable.Drawable.ConstantState
        public int getChangingConfigurations() {
            return this.f2941a.getChangingConfigurations();
        }

        @Override // android.graphics.drawable.Drawable.ConstantState
        public Drawable newDrawable() {
            C0845i c0845i = new C0845i();
            c0845i.f2872c = (VectorDrawable) this.f2941a.newDrawable();
            return c0845i;
        }

        @Override // android.graphics.drawable.Drawable.ConstantState
        public Drawable newDrawable(Resources resources) {
            C0845i c0845i = new C0845i();
            c0845i.f2872c = (VectorDrawable) this.f2941a.newDrawable(resources);
            return c0845i;
        }

        @Override // android.graphics.drawable.Drawable.ConstantState
        public Drawable newDrawable(Resources resources, Resources.Theme theme) {
            C0845i c0845i = new C0845i();
            c0845i.f2872c = (VectorDrawable) this.f2941a.newDrawable(resources, theme);
            return c0845i;
        }
    }

    C0845i() {
        this.f2878g = true;
        this.f2880i = new float[9];
        this.f2881j = new Matrix();
        this.f2882k = new Rect();
        this.f2874b = new C0853g();
    }

    C0845i(C0853g c0853g) {
        this.f2878g = true;
        this.f2880i = new float[9];
        this.f2881j = new Matrix();
        this.f2882k = new Rect();
        this.f2874b = c0853g;
        this.f2875d = m19286a(this.f2875d, c0853g.f2931c, c0853g.f2932d);
    }

    /* renamed from: a */
    static int m19291a(int i, float f) {
        return (((int) (Color.alpha(i) * f)) << 24) | (16777215 & i);
    }

    /* renamed from: a */
    private static PorterDuff.Mode m19290a(int i, PorterDuff.Mode mode) {
        PorterDuff.Mode mode2 = mode;
        switch (i) {
            case 3:
                mode2 = PorterDuff.Mode.SRC_OVER;
                break;
            case 4:
            case 6:
            case 7:
            case 8:
            case 10:
            case 11:
            case 12:
            case 13:
                break;
            case 5:
                mode2 = PorterDuff.Mode.SRC_IN;
                break;
            case 9:
                mode2 = PorterDuff.Mode.SRC_ATOP;
                break;
            case 14:
                mode2 = PorterDuff.Mode.MULTIPLY;
                break;
            case 15:
                mode2 = PorterDuff.Mode.SCREEN;
                break;
            case 16:
                mode2 = PorterDuff.Mode.ADD;
                break;
            default:
                mode2 = mode;
                break;
        }
        return mode2;
    }

    /* renamed from: a */
    public static C0845i m19289a(Resources resources, int i, Resources.Theme theme) {
        C0845i c0845i;
        int next;
        if (Build.VERSION.SDK_INT >= 24) {
            C0845i c0845i2 = new C0845i();
            c0845i2.f2872c = C0449f.m20843a(resources, i, theme);
            c0845i2.f2879h = new C0854h(c0845i2.f2872c.getConstantState());
            c0845i = c0845i2;
        } else {
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
                c0845i = m19288a(resources, xml, asAttributeSet, theme);
            } catch (IOException e) {
                Log.e("VectorDrawableCompat", "parser error", e);
                c0845i = null;
                return c0845i;
            } catch (XmlPullParserException e2) {
                Log.e("VectorDrawableCompat", "parser error", e2);
                c0845i = null;
                return c0845i;
            }
        }
        return c0845i;
    }

    /* renamed from: a */
    public static C0845i m19288a(Resources resources, XmlPullParser xmlPullParser, AttributeSet attributeSet, Resources.Theme theme) {
        C0845i c0845i = new C0845i();
        c0845i.inflate(resources, xmlPullParser, attributeSet, theme);
        return c0845i;
    }

    /* renamed from: a */
    private void m19287a(TypedArray typedArray, XmlPullParser xmlPullParser, Resources.Theme theme) {
        C0853g c0853g = this.f2874b;
        C0852f c0852f = c0853g.f2930b;
        c0853g.f2932d = m19290a(C0453g.m20835a(typedArray, xmlPullParser, "tintMode", 6, -1), PorterDuff.Mode.SRC_IN);
        ColorStateList m20839a = C0453g.m20839a(typedArray, xmlPullParser, theme, "tint", 1);
        if (m20839a != null) {
            c0853g.f2931c = m20839a;
        }
        c0853g.f2933e = C0453g.m20834a(typedArray, xmlPullParser, "autoMirrored", 5, c0853g.f2933e);
        c0852f.f2918f = C0453g.m20836a(typedArray, xmlPullParser, "viewportWidth", 7, c0852f.f2918f);
        c0852f.f2919g = C0453g.m20836a(typedArray, xmlPullParser, "viewportHeight", 8, c0852f.f2919g);
        if (c0852f.f2918f <= 0.0f) {
            throw new XmlPullParserException(typedArray.getPositionDescription() + "<vector> tag requires viewportWidth > 0");
        }
        if (c0852f.f2919g <= 0.0f) {
            throw new XmlPullParserException(typedArray.getPositionDescription() + "<vector> tag requires viewportHeight > 0");
        }
        c0852f.f2916d = typedArray.getDimension(3, c0852f.f2916d);
        c0852f.f2917e = typedArray.getDimension(2, c0852f.f2917e);
        if (c0852f.f2916d <= 0.0f) {
            throw new XmlPullParserException(typedArray.getPositionDescription() + "<vector> tag requires width > 0");
        }
        if (c0852f.f2917e <= 0.0f) {
            throw new XmlPullParserException(typedArray.getPositionDescription() + "<vector> tag requires height > 0");
        }
        c0852f.setAlpha(C0453g.m20836a(typedArray, xmlPullParser, "alpha", 4, c0852f.getAlpha()));
        String string = typedArray.getString(0);
        if (string == null) {
            return;
        }
        c0852f.f2921i = string;
        c0852f.f2923k.put(string, c0852f);
    }

    /* renamed from: a */
    private boolean m19292a() {
        boolean z = true;
        if (Build.VERSION.SDK_INT < 17) {
            z = false;
        } else if (!isAutoMirrored() || C0535a.m20582i(this) != 1) {
            z = false;
        }
        return z;
    }

    /* renamed from: b */
    private void m19283b(Resources resources, XmlPullParser xmlPullParser, AttributeSet attributeSet, Resources.Theme theme) {
        boolean z;
        boolean z2;
        C0853g c0853g = this.f2874b;
        C0852f c0852f = c0853g.f2930b;
        ArrayDeque arrayDeque = new ArrayDeque();
        arrayDeque.push(c0852f.f2915c);
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
                C0849c c0849c = (C0849c) arrayDeque.peek();
                if ("path".equals(name)) {
                    C0848b c0848b = new C0848b();
                    c0848b.m19278a(resources, attributeSet, theme, xmlPullParser);
                    c0849c.f2896b.add(c0848b);
                    if (c0848b.getPathName() != null) {
                        c0852f.f2923k.put(c0848b.getPathName(), c0848b);
                    }
                    z = false;
                    c0853g.f2929a = c0848b.f2911o | c0853g.f2929a;
                } else if ("clip-path".equals(name)) {
                    C0847a c0847a = new C0847a();
                    c0847a.m19282a(resources, attributeSet, theme, xmlPullParser);
                    c0849c.f2896b.add(c0847a);
                    if (c0847a.getPathName() != null) {
                        c0852f.f2923k.put(c0847a.getPathName(), c0847a);
                    }
                    c0853g.f2929a |= c0847a.f2911o;
                } else if ("group".equals(name)) {
                    C0849c c0849c2 = new C0849c();
                    c0849c2.m19275a(resources, attributeSet, theme, xmlPullParser);
                    c0849c.f2896b.add(c0849c2);
                    arrayDeque.push(c0849c2);
                    if (c0849c2.getGroupName() != null) {
                        c0852f.f2923k.put(c0849c2.getGroupName(), c0849c2);
                    }
                    c0853g.f2929a |= c0849c2.f2899e;
                }
                z2 = z;
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
        if (z) {
            throw new XmlPullParserException("no path defined");
        }
    }

    /* renamed from: a */
    PorterDuffColorFilter m19286a(PorterDuffColorFilter porterDuffColorFilter, ColorStateList colorStateList, PorterDuff.Mode mode) {
        return (colorStateList == null || mode == null) ? null : new PorterDuffColorFilter(colorStateList.getColorForState(getState(), 0), mode);
    }

    /* renamed from: a */
    public Object m19285a(String str) {
        return this.f2874b.f2930b.f2923k.get(str);
    }

    /* renamed from: a */
    public void m19284a(boolean z) {
        this.f2878g = z;
    }

    @Override // androidx.p046k.p047a.p048a.AbstractC0844h, android.graphics.drawable.Drawable
    public /* bridge */ /* synthetic */ void applyTheme(Resources.Theme theme) {
        super.applyTheme(theme);
    }

    @Override // android.graphics.drawable.Drawable
    public boolean canApplyTheme() {
        if (this.f2872c != null) {
            C0535a.m20587d(this.f2872c);
            return false;
        }
        return false;
    }

    @Override // androidx.p046k.p047a.p048a.AbstractC0844h, android.graphics.drawable.Drawable
    public /* bridge */ /* synthetic */ void clearColorFilter() {
        super.clearColorFilter();
    }

    @Override // android.graphics.drawable.Drawable
    public void draw(Canvas canvas) {
        if (this.f2872c != null) {
            this.f2872c.draw(canvas);
            return;
        }
        copyBounds(this.f2882k);
        if (this.f2882k.width() <= 0 || this.f2882k.height() <= 0) {
            return;
        }
        PorterDuffColorFilter porterDuffColorFilter = this.f2876e == null ? this.f2875d : this.f2876e;
        canvas.getMatrix(this.f2881j);
        this.f2881j.getValues(this.f2880i);
        float abs = Math.abs(this.f2880i[0]);
        float abs2 = Math.abs(this.f2880i[4]);
        float abs3 = Math.abs(this.f2880i[1]);
        float abs4 = Math.abs(this.f2880i[3]);
        if (abs3 != 0.0f || abs4 != 0.0f) {
            abs2 = 1.0f;
            abs = 1.0f;
        }
        int min = Math.min(2048, (int) (abs * this.f2882k.width()));
        int min2 = Math.min(2048, (int) (abs2 * this.f2882k.height()));
        if (min <= 0 || min2 <= 0) {
            return;
        }
        int save = canvas.save();
        canvas.translate(this.f2882k.left, this.f2882k.top);
        if (m19292a()) {
            canvas.translate(this.f2882k.width(), 0.0f);
            canvas.scale(-1.0f, 1.0f);
        }
        this.f2882k.offsetTo(0, 0);
        this.f2874b.m19256b(min, min2);
        if (!this.f2878g) {
            this.f2874b.m19261a(min, min2);
        } else if (!this.f2874b.m19257b()) {
            this.f2874b.m19261a(min, min2);
            this.f2874b.m19255c();
        }
        this.f2874b.m19260a(canvas, porterDuffColorFilter, this.f2882k);
        canvas.restoreToCount(save);
    }

    @Override // android.graphics.drawable.Drawable
    public int getAlpha() {
        return this.f2872c != null ? C0535a.m20588c(this.f2872c) : this.f2874b.f2930b.getRootAlpha();
    }

    @Override // android.graphics.drawable.Drawable
    public int getChangingConfigurations() {
        return this.f2872c != null ? this.f2872c.getChangingConfigurations() : super.getChangingConfigurations() | this.f2874b.getChangingConfigurations();
    }

    @Override // android.graphics.drawable.Drawable
    public ColorFilter getColorFilter() {
        return this.f2872c != null ? C0535a.m20586e(this.f2872c) : this.f2876e;
    }

    @Override // android.graphics.drawable.Drawable
    public Drawable.ConstantState getConstantState() {
        Drawable.ConstantState constantState;
        if (this.f2872c == null || Build.VERSION.SDK_INT < 24) {
            this.f2874b.f2929a = getChangingConfigurations();
            constantState = this.f2874b;
        } else {
            constantState = new C0854h(this.f2872c.getConstantState());
        }
        return constantState;
    }

    @Override // androidx.p046k.p047a.p048a.AbstractC0844h, android.graphics.drawable.Drawable
    public /* bridge */ /* synthetic */ Drawable getCurrent() {
        return super.getCurrent();
    }

    @Override // android.graphics.drawable.Drawable
    public int getIntrinsicHeight() {
        return this.f2872c != null ? this.f2872c.getIntrinsicHeight() : (int) this.f2874b.f2930b.f2917e;
    }

    @Override // android.graphics.drawable.Drawable
    public int getIntrinsicWidth() {
        return this.f2872c != null ? this.f2872c.getIntrinsicWidth() : (int) this.f2874b.f2930b.f2916d;
    }

    @Override // androidx.p046k.p047a.p048a.AbstractC0844h, android.graphics.drawable.Drawable
    public /* bridge */ /* synthetic */ int getMinimumHeight() {
        return super.getMinimumHeight();
    }

    @Override // androidx.p046k.p047a.p048a.AbstractC0844h, android.graphics.drawable.Drawable
    public /* bridge */ /* synthetic */ int getMinimumWidth() {
        return super.getMinimumWidth();
    }

    @Override // android.graphics.drawable.Drawable
    public int getOpacity() {
        return this.f2872c != null ? this.f2872c.getOpacity() : -3;
    }

    @Override // androidx.p046k.p047a.p048a.AbstractC0844h, android.graphics.drawable.Drawable
    public /* bridge */ /* synthetic */ boolean getPadding(Rect rect) {
        return super.getPadding(rect);
    }

    @Override // androidx.p046k.p047a.p048a.AbstractC0844h, android.graphics.drawable.Drawable
    public /* bridge */ /* synthetic */ int[] getState() {
        return super.getState();
    }

    @Override // androidx.p046k.p047a.p048a.AbstractC0844h, android.graphics.drawable.Drawable
    public /* bridge */ /* synthetic */ Region getTransparentRegion() {
        return super.getTransparentRegion();
    }

    @Override // android.graphics.drawable.Drawable
    public void inflate(Resources resources, XmlPullParser xmlPullParser, AttributeSet attributeSet) {
        if (this.f2872c != null) {
            this.f2872c.inflate(resources, xmlPullParser, attributeSet);
        } else {
            inflate(resources, xmlPullParser, attributeSet, null);
        }
    }

    @Override // android.graphics.drawable.Drawable
    public void inflate(Resources resources, XmlPullParser xmlPullParser, AttributeSet attributeSet, Resources.Theme theme) {
        if (this.f2872c != null) {
            C0535a.m20593a(this.f2872c, resources, xmlPullParser, attributeSet, theme);
            return;
        }
        C0853g c0853g = this.f2874b;
        c0853g.f2930b = new C0852f();
        TypedArray m20840a = C0453g.m20840a(resources, theme, attributeSet, C0833a.f2843a);
        m19287a(m20840a, xmlPullParser, theme);
        m20840a.recycle();
        c0853g.f2929a = getChangingConfigurations();
        c0853g.f2939k = true;
        m19283b(resources, xmlPullParser, attributeSet, theme);
        this.f2875d = m19286a(this.f2875d, c0853g.f2931c, c0853g.f2932d);
    }

    @Override // android.graphics.drawable.Drawable
    public void invalidateSelf() {
        if (this.f2872c != null) {
            this.f2872c.invalidateSelf();
        } else {
            super.invalidateSelf();
        }
    }

    @Override // android.graphics.drawable.Drawable
    public boolean isAutoMirrored() {
        return this.f2872c != null ? C0535a.m20590b(this.f2872c) : this.f2874b.f2933e;
    }

    @Override // android.graphics.drawable.Drawable
    public boolean isStateful() {
        return this.f2872c != null ? this.f2872c.isStateful() : super.isStateful() || (this.f2874b != null && (this.f2874b.m19253d() || (this.f2874b.f2931c != null && this.f2874b.f2931c.isStateful())));
    }

    @Override // androidx.p046k.p047a.p048a.AbstractC0844h, android.graphics.drawable.Drawable
    public /* bridge */ /* synthetic */ void jumpToCurrentState() {
        super.jumpToCurrentState();
    }

    @Override // android.graphics.drawable.Drawable
    public Drawable mutate() {
        if (this.f2872c != null) {
            this.f2872c.mutate();
        } else if (!this.f2877f && super.mutate() == this) {
            this.f2874b = new C0853g(this.f2874b);
            this.f2877f = true;
        }
        return this;
    }

    @Override // androidx.p046k.p047a.p048a.AbstractC0844h, android.graphics.drawable.Drawable
    protected void onBoundsChange(Rect rect) {
        if (this.f2872c != null) {
            this.f2872c.setBounds(rect);
        }
    }

    @Override // android.graphics.drawable.Drawable
    protected boolean onStateChange(int[] iArr) {
        boolean z;
        if (this.f2872c != null) {
            z = this.f2872c.setState(iArr);
        } else {
            C0853g c0853g = this.f2874b;
            boolean z2 = false;
            if (c0853g.f2931c != null) {
                z2 = false;
                if (c0853g.f2932d != null) {
                    this.f2875d = m19286a(this.f2875d, c0853g.f2931c, c0853g.f2932d);
                    invalidateSelf();
                    z2 = true;
                }
            }
            z = z2;
            if (c0853g.m19253d()) {
                z = z2;
                if (c0853g.m19258a(iArr)) {
                    invalidateSelf();
                    z = true;
                }
            }
        }
        return z;
    }

    @Override // android.graphics.drawable.Drawable
    public void scheduleSelf(Runnable runnable, long j) {
        if (this.f2872c != null) {
            this.f2872c.scheduleSelf(runnable, j);
        } else {
            super.scheduleSelf(runnable, j);
        }
    }

    @Override // android.graphics.drawable.Drawable
    public void setAlpha(int i) {
        if (this.f2872c != null) {
            this.f2872c.setAlpha(i);
        } else if (this.f2874b.f2930b.getRootAlpha() == i) {
        } else {
            this.f2874b.f2930b.setRootAlpha(i);
            invalidateSelf();
        }
    }

    @Override // android.graphics.drawable.Drawable
    public void setAutoMirrored(boolean z) {
        if (this.f2872c != null) {
            C0535a.m20591a(this.f2872c, z);
        } else {
            this.f2874b.f2933e = z;
        }
    }

    @Override // androidx.p046k.p047a.p048a.AbstractC0844h, android.graphics.drawable.Drawable
    public /* bridge */ /* synthetic */ void setChangingConfigurations(int i) {
        super.setChangingConfigurations(i);
    }

    @Override // androidx.p046k.p047a.p048a.AbstractC0844h, android.graphics.drawable.Drawable
    public /* bridge */ /* synthetic */ void setColorFilter(int i, PorterDuff.Mode mode) {
        super.setColorFilter(i, mode);
    }

    @Override // android.graphics.drawable.Drawable
    public void setColorFilter(ColorFilter colorFilter) {
        if (this.f2872c != null) {
            this.f2872c.setColorFilter(colorFilter);
            return;
        }
        this.f2876e = colorFilter;
        invalidateSelf();
    }

    @Override // androidx.p046k.p047a.p048a.AbstractC0844h, android.graphics.drawable.Drawable
    public /* bridge */ /* synthetic */ void setFilterBitmap(boolean z) {
        super.setFilterBitmap(z);
    }

    @Override // androidx.p046k.p047a.p048a.AbstractC0844h, android.graphics.drawable.Drawable
    public /* bridge */ /* synthetic */ void setHotspot(float f, float f2) {
        super.setHotspot(f, f2);
    }

    @Override // androidx.p046k.p047a.p048a.AbstractC0844h, android.graphics.drawable.Drawable
    public /* bridge */ /* synthetic */ void setHotspotBounds(int i, int i2, int i3, int i4) {
        super.setHotspotBounds(i, i2, i3, i4);
    }

    @Override // androidx.p046k.p047a.p048a.AbstractC0844h, android.graphics.drawable.Drawable
    public /* bridge */ /* synthetic */ boolean setState(int[] iArr) {
        return super.setState(iArr);
    }

    @Override // android.graphics.drawable.Drawable, androidx.core.graphics.drawable.AbstractC0536b
    public void setTint(int i) {
        if (this.f2872c != null) {
            C0535a.m20597a(this.f2872c, i);
        } else {
            setTintList(ColorStateList.valueOf(i));
        }
    }

    @Override // android.graphics.drawable.Drawable, androidx.core.graphics.drawable.AbstractC0536b
    public void setTintList(ColorStateList colorStateList) {
        if (this.f2872c != null) {
            C0535a.m20595a(this.f2872c, colorStateList);
            return;
        }
        C0853g c0853g = this.f2874b;
        if (c0853g.f2931c == colorStateList) {
            return;
        }
        c0853g.f2931c = colorStateList;
        this.f2875d = m19286a(this.f2875d, colorStateList, c0853g.f2932d);
        invalidateSelf();
    }

    @Override // android.graphics.drawable.Drawable, androidx.core.graphics.drawable.AbstractC0536b
    public void setTintMode(PorterDuff.Mode mode) {
        if (this.f2872c != null) {
            C0535a.m20592a(this.f2872c, mode);
            return;
        }
        C0853g c0853g = this.f2874b;
        if (c0853g.f2932d == mode) {
            return;
        }
        c0853g.f2932d = mode;
        this.f2875d = m19286a(this.f2875d, c0853g.f2931c, mode);
        invalidateSelf();
    }

    @Override // android.graphics.drawable.Drawable
    public boolean setVisible(boolean z, boolean z2) {
        return this.f2872c != null ? this.f2872c.setVisible(z, z2) : super.setVisible(z, z2);
    }

    @Override // android.graphics.drawable.Drawable
    public void unscheduleSelf(Runnable runnable) {
        if (this.f2872c != null) {
            this.f2872c.unscheduleSelf(runnable);
        } else {
            super.unscheduleSelf(runnable);
        }
    }
}

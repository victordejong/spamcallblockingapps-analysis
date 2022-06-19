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
import androidx.core.graphics.C0570b;
import androidx.core.graphics.drawable.C0575a;
import androidx.core.p015a.p016a.C0411b;
import androidx.core.p015a.p016a.C0420f;
import androidx.core.p015a.p016a.C0424g;
import androidx.p014c.C0374a;
import com.google.android.flexbox.FlexItem;
import java.io.IOException;
import java.util.ArrayDeque;
import java.util.ArrayList;
import org.xmlpull.v1.XmlPullParser;
import org.xmlpull.v1.XmlPullParserException;
/* renamed from: androidx.k.a.a.i */
/* loaded from: classes-dex2jar.jar:androidx/k/a/a/i.class */
public class C0875i extends AbstractC0874h {

    /* renamed from: a */
    static final PorterDuff.Mode f2740a = PorterDuff.Mode.SRC_IN;

    /* renamed from: b */
    private C0883g f2741b;

    /* renamed from: d */
    private PorterDuffColorFilter f2742d;

    /* renamed from: e */
    private ColorFilter f2743e;

    /* renamed from: f */
    private boolean f2744f;

    /* renamed from: g */
    private boolean f2745g;

    /* renamed from: h */
    private Drawable.ConstantState f2746h;

    /* renamed from: i */
    private final float[] f2747i;

    /* renamed from: j */
    private final Matrix f2748j;

    /* renamed from: k */
    private final Rect f2749k;

    /* renamed from: androidx.k.a.a.i$a */
    /* loaded from: classes-dex2jar.jar:androidx/k/a/a/i$a.class */
    public static class C0877a extends AbstractC0881e {
        C0877a() {
        }

        C0877a(C0877a c0877a) {
            super(c0877a);
        }

        /* renamed from: a */
        private void m5168a(TypedArray typedArray, XmlPullParser xmlPullParser) {
            String string = typedArray.getString(0);
            if (string != null) {
                this.f2776m = string;
            }
            String string2 = typedArray.getString(1);
            if (string2 != null) {
                this.f2775l = C0570b.m6162b(string2);
            }
            this.f2777n = C0424g.m6691a(typedArray, xmlPullParser, "fillType", 2, 0);
        }

        /* renamed from: a */
        public void m5169a(Resources resources, AttributeSet attributeSet, Resources.Theme theme, XmlPullParser xmlPullParser) {
            if (!C0424g.m6688a(xmlPullParser, "pathData")) {
                return;
            }
            TypedArray m6696a = C0424g.m6696a(resources, theme, attributeSet, C0863a.f2713d);
            m5168a(m6696a, xmlPullParser);
            m6696a.recycle();
        }

        @Override // androidx.p046k.p047a.p048a.C0875i.AbstractC0881e
        /* renamed from: a */
        public boolean mo5158a() {
            return true;
        }
    }

    /* renamed from: androidx.k.a.a.i$b */
    /* loaded from: classes-dex2jar.jar:androidx/k/a/a/i$b.class */
    public static class C0878b extends AbstractC0881e {

        /* renamed from: a */
        C0411b f2750a;

        /* renamed from: b */
        float f2751b;

        /* renamed from: c */
        C0411b f2752c;

        /* renamed from: d */
        float f2753d;

        /* renamed from: e */
        float f2754e;

        /* renamed from: f */
        float f2755f;

        /* renamed from: g */
        float f2756g;

        /* renamed from: h */
        float f2757h;

        /* renamed from: i */
        Paint.Cap f2758i;

        /* renamed from: j */
        Paint.Join f2759j;

        /* renamed from: k */
        float f2760k;

        /* renamed from: p */
        private int[] f2761p;

        C0878b() {
            this.f2751b = FlexItem.FLEX_GROW_DEFAULT;
            this.f2753d = 1.0f;
            this.f2754e = 1.0f;
            this.f2755f = FlexItem.FLEX_GROW_DEFAULT;
            this.f2756g = 1.0f;
            this.f2757h = FlexItem.FLEX_GROW_DEFAULT;
            this.f2758i = Paint.Cap.BUTT;
            this.f2759j = Paint.Join.MITER;
            this.f2760k = 4.0f;
        }

        C0878b(C0878b c0878b) {
            super(c0878b);
            this.f2751b = FlexItem.FLEX_GROW_DEFAULT;
            this.f2753d = 1.0f;
            this.f2754e = 1.0f;
            this.f2755f = FlexItem.FLEX_GROW_DEFAULT;
            this.f2756g = 1.0f;
            this.f2757h = FlexItem.FLEX_GROW_DEFAULT;
            this.f2758i = Paint.Cap.BUTT;
            this.f2759j = Paint.Join.MITER;
            this.f2760k = 4.0f;
            this.f2761p = c0878b.f2761p;
            this.f2750a = c0878b.f2750a;
            this.f2751b = c0878b.f2751b;
            this.f2753d = c0878b.f2753d;
            this.f2752c = c0878b.f2752c;
            this.f2777n = c0878b.f2777n;
            this.f2754e = c0878b.f2754e;
            this.f2755f = c0878b.f2755f;
            this.f2756g = c0878b.f2756g;
            this.f2757h = c0878b.f2757h;
            this.f2758i = c0878b.f2758i;
            this.f2759j = c0878b.f2759j;
            this.f2760k = c0878b.f2760k;
        }

        /* renamed from: a */
        private Paint.Cap m5167a(int i, Paint.Cap cap) {
            return i != 0 ? i != 1 ? i != 2 ? cap : Paint.Cap.SQUARE : Paint.Cap.ROUND : Paint.Cap.BUTT;
        }

        /* renamed from: a */
        private Paint.Join m5166a(int i, Paint.Join join) {
            return i != 0 ? i != 1 ? i != 2 ? join : Paint.Join.BEVEL : Paint.Join.ROUND : Paint.Join.MITER;
        }

        /* renamed from: a */
        private void m5164a(TypedArray typedArray, XmlPullParser xmlPullParser, Resources.Theme theme) {
            this.f2761p = null;
            if (!C0424g.m6688a(xmlPullParser, "pathData")) {
                return;
            }
            String string = typedArray.getString(0);
            if (string != null) {
                this.f2776m = string;
            }
            String string2 = typedArray.getString(2);
            if (string2 != null) {
                this.f2775l = C0570b.m6162b(string2);
            }
            this.f2752c = C0424g.m6694a(typedArray, xmlPullParser, theme, "fillColor", 1, 0);
            this.f2754e = C0424g.m6692a(typedArray, xmlPullParser, "fillAlpha", 12, this.f2754e);
            this.f2758i = m5167a(C0424g.m6691a(typedArray, xmlPullParser, "strokeLineCap", 8, -1), this.f2758i);
            this.f2759j = m5166a(C0424g.m6691a(typedArray, xmlPullParser, "strokeLineJoin", 9, -1), this.f2759j);
            this.f2760k = C0424g.m6692a(typedArray, xmlPullParser, "strokeMiterLimit", 10, this.f2760k);
            this.f2750a = C0424g.m6694a(typedArray, xmlPullParser, theme, "strokeColor", 3, 0);
            this.f2753d = C0424g.m6692a(typedArray, xmlPullParser, "strokeAlpha", 11, this.f2753d);
            this.f2751b = C0424g.m6692a(typedArray, xmlPullParser, "strokeWidth", 4, this.f2751b);
            this.f2756g = C0424g.m6692a(typedArray, xmlPullParser, "trimPathEnd", 6, this.f2756g);
            this.f2757h = C0424g.m6692a(typedArray, xmlPullParser, "trimPathOffset", 7, this.f2757h);
            this.f2755f = C0424g.m6692a(typedArray, xmlPullParser, "trimPathStart", 5, this.f2755f);
            this.f2777n = C0424g.m6691a(typedArray, xmlPullParser, "fillType", 13, this.f2777n);
        }

        /* renamed from: a */
        public void m5165a(Resources resources, AttributeSet attributeSet, Resources.Theme theme, XmlPullParser xmlPullParser) {
            TypedArray m6696a = C0424g.m6696a(resources, theme, attributeSet, C0863a.f2712c);
            m5164a(m6696a, xmlPullParser, theme);
            m6696a.recycle();
        }

        @Override // androidx.p046k.p047a.p048a.C0875i.AbstractC0880d
        /* renamed from: a */
        public boolean mo5160a(int[] iArr) {
            return this.f2750a.m6734a(iArr) | this.f2752c.m6734a(iArr);
        }

        @Override // androidx.p046k.p047a.p048a.C0875i.AbstractC0880d
        /* renamed from: b */
        public boolean mo5159b() {
            return this.f2752c.m6729d() || this.f2750a.m6729d();
        }

        float getFillAlpha() {
            return this.f2754e;
        }

        int getFillColor() {
            return this.f2752c.m6733b();
        }

        float getStrokeAlpha() {
            return this.f2753d;
        }

        int getStrokeColor() {
            return this.f2750a.m6733b();
        }

        float getStrokeWidth() {
            return this.f2751b;
        }

        float getTrimPathEnd() {
            return this.f2756g;
        }

        float getTrimPathOffset() {
            return this.f2757h;
        }

        float getTrimPathStart() {
            return this.f2755f;
        }

        void setFillAlpha(float f) {
            this.f2754e = f;
        }

        void setFillColor(int i) {
            this.f2752c.m6732b(i);
        }

        void setStrokeAlpha(float f) {
            this.f2753d = f;
        }

        void setStrokeColor(int i) {
            this.f2750a.m6732b(i);
        }

        void setStrokeWidth(float f) {
            this.f2751b = f;
        }

        void setTrimPathEnd(float f) {
            this.f2756g = f;
        }

        void setTrimPathOffset(float f) {
            this.f2757h = f;
        }

        void setTrimPathStart(float f) {
            this.f2755f = f;
        }
    }

    /* renamed from: androidx.k.a.a.i$c */
    /* loaded from: classes-dex2jar.jar:androidx/k/a/a/i$c.class */
    public static class C0879c extends AbstractC0880d {

        /* renamed from: a */
        final Matrix f2762a;

        /* renamed from: b */
        final ArrayList<AbstractC0880d> f2763b;

        /* renamed from: c */
        float f2764c;

        /* renamed from: d */
        final Matrix f2765d;

        /* renamed from: e */
        int f2766e;

        /* renamed from: f */
        private float f2767f;

        /* renamed from: g */
        private float f2768g;

        /* renamed from: h */
        private float f2769h;

        /* renamed from: i */
        private float f2770i;

        /* renamed from: j */
        private float f2771j;

        /* renamed from: k */
        private float f2772k;

        /* renamed from: l */
        private int[] f2773l;

        /* renamed from: m */
        private String f2774m;

        public C0879c() {
            super();
            this.f2762a = new Matrix();
            this.f2763b = new ArrayList<>();
            this.f2764c = FlexItem.FLEX_GROW_DEFAULT;
            this.f2767f = FlexItem.FLEX_GROW_DEFAULT;
            this.f2768g = FlexItem.FLEX_GROW_DEFAULT;
            this.f2769h = 1.0f;
            this.f2770i = 1.0f;
            this.f2771j = FlexItem.FLEX_GROW_DEFAULT;
            this.f2772k = FlexItem.FLEX_GROW_DEFAULT;
            this.f2765d = new Matrix();
            this.f2774m = null;
        }

        public C0879c(C0879c c0879c, C0374a<String, Object> c0374a) {
            super();
            C0878b c0878b;
            this.f2762a = new Matrix();
            this.f2763b = new ArrayList<>();
            this.f2764c = FlexItem.FLEX_GROW_DEFAULT;
            this.f2767f = FlexItem.FLEX_GROW_DEFAULT;
            this.f2768g = FlexItem.FLEX_GROW_DEFAULT;
            this.f2769h = 1.0f;
            this.f2770i = 1.0f;
            this.f2771j = FlexItem.FLEX_GROW_DEFAULT;
            this.f2772k = FlexItem.FLEX_GROW_DEFAULT;
            this.f2765d = new Matrix();
            this.f2774m = null;
            this.f2764c = c0879c.f2764c;
            this.f2767f = c0879c.f2767f;
            this.f2768g = c0879c.f2768g;
            this.f2769h = c0879c.f2769h;
            this.f2770i = c0879c.f2770i;
            this.f2771j = c0879c.f2771j;
            this.f2772k = c0879c.f2772k;
            this.f2773l = c0879c.f2773l;
            this.f2774m = c0879c.f2774m;
            this.f2766e = c0879c.f2766e;
            String str = this.f2774m;
            if (str != null) {
                c0374a.put(str, this);
            }
            this.f2765d.set(c0879c.f2765d);
            ArrayList<AbstractC0880d> arrayList = c0879c.f2763b;
            for (int i = 0; i < arrayList.size(); i++) {
                AbstractC0880d abstractC0880d = arrayList.get(i);
                if (abstractC0880d instanceof C0879c) {
                    this.f2763b.add(new C0879c((C0879c) abstractC0880d, c0374a));
                } else {
                    if (abstractC0880d instanceof C0878b) {
                        c0878b = new C0878b((C0878b) abstractC0880d);
                    } else if (!(abstractC0880d instanceof C0877a)) {
                        throw new IllegalStateException("Unknown object in the tree!");
                    } else {
                        c0878b = new C0877a((C0877a) abstractC0880d);
                    }
                    this.f2763b.add(c0878b);
                    if (c0878b.f2776m != null) {
                        c0374a.put(c0878b.f2776m, c0878b);
                    }
                }
            }
        }

        /* renamed from: a */
        private void m5163a() {
            this.f2765d.reset();
            this.f2765d.postTranslate(-this.f2767f, -this.f2768g);
            this.f2765d.postScale(this.f2769h, this.f2770i);
            this.f2765d.postRotate(this.f2764c, FlexItem.FLEX_GROW_DEFAULT, FlexItem.FLEX_GROW_DEFAULT);
            this.f2765d.postTranslate(this.f2771j + this.f2767f, this.f2772k + this.f2768g);
        }

        /* renamed from: a */
        private void m5161a(TypedArray typedArray, XmlPullParser xmlPullParser) {
            this.f2773l = null;
            this.f2764c = C0424g.m6692a(typedArray, xmlPullParser, "rotation", 5, this.f2764c);
            this.f2767f = typedArray.getFloat(1, this.f2767f);
            this.f2768g = typedArray.getFloat(2, this.f2768g);
            this.f2769h = C0424g.m6692a(typedArray, xmlPullParser, "scaleX", 3, this.f2769h);
            this.f2770i = C0424g.m6692a(typedArray, xmlPullParser, "scaleY", 4, this.f2770i);
            this.f2771j = C0424g.m6692a(typedArray, xmlPullParser, "translateX", 6, this.f2771j);
            this.f2772k = C0424g.m6692a(typedArray, xmlPullParser, "translateY", 7, this.f2772k);
            String string = typedArray.getString(0);
            if (string != null) {
                this.f2774m = string;
            }
            m5163a();
        }

        /* renamed from: a */
        public void m5162a(Resources resources, AttributeSet attributeSet, Resources.Theme theme, XmlPullParser xmlPullParser) {
            TypedArray m6696a = C0424g.m6696a(resources, theme, attributeSet, C0863a.f2711b);
            m5161a(m6696a, xmlPullParser);
            m6696a.recycle();
        }

        @Override // androidx.p046k.p047a.p048a.C0875i.AbstractC0880d
        /* renamed from: a */
        public boolean mo5160a(int[] iArr) {
            boolean z = false;
            for (int i = 0; i < this.f2763b.size(); i++) {
                z |= this.f2763b.get(i).mo5160a(iArr);
            }
            return z;
        }

        @Override // androidx.p046k.p047a.p048a.C0875i.AbstractC0880d
        /* renamed from: b */
        public boolean mo5159b() {
            for (int i = 0; i < this.f2763b.size(); i++) {
                if (this.f2763b.get(i).mo5159b()) {
                    return true;
                }
            }
            return false;
        }

        public String getGroupName() {
            return this.f2774m;
        }

        public Matrix getLocalMatrix() {
            return this.f2765d;
        }

        public float getPivotX() {
            return this.f2767f;
        }

        public float getPivotY() {
            return this.f2768g;
        }

        public float getRotation() {
            return this.f2764c;
        }

        public float getScaleX() {
            return this.f2769h;
        }

        public float getScaleY() {
            return this.f2770i;
        }

        public float getTranslateX() {
            return this.f2771j;
        }

        public float getTranslateY() {
            return this.f2772k;
        }

        public void setPivotX(float f) {
            if (f != this.f2767f) {
                this.f2767f = f;
                m5163a();
            }
        }

        public void setPivotY(float f) {
            if (f != this.f2768g) {
                this.f2768g = f;
                m5163a();
            }
        }

        public void setRotation(float f) {
            if (f != this.f2764c) {
                this.f2764c = f;
                m5163a();
            }
        }

        public void setScaleX(float f) {
            if (f != this.f2769h) {
                this.f2769h = f;
                m5163a();
            }
        }

        public void setScaleY(float f) {
            if (f != this.f2770i) {
                this.f2770i = f;
                m5163a();
            }
        }

        public void setTranslateX(float f) {
            if (f != this.f2771j) {
                this.f2771j = f;
                m5163a();
            }
        }

        public void setTranslateY(float f) {
            if (f != this.f2772k) {
                this.f2772k = f;
                m5163a();
            }
        }
    }

    /* renamed from: androidx.k.a.a.i$d */
    /* loaded from: classes-dex2jar.jar:androidx/k/a/a/i$d.class */
    public static abstract class AbstractC0880d {
        private AbstractC0880d() {
        }

        /* renamed from: a */
        public boolean mo5160a(int[] iArr) {
            return false;
        }

        /* renamed from: b */
        public boolean mo5159b() {
            return false;
        }
    }

    /* renamed from: androidx.k.a.a.i$e */
    /* loaded from: classes-dex2jar.jar:androidx/k/a/a/i$e.class */
    public static abstract class AbstractC0881e extends AbstractC0880d {

        /* renamed from: l */
        protected C0570b.C0572b[] f2775l;

        /* renamed from: m */
        String f2776m;

        /* renamed from: n */
        int f2777n;

        /* renamed from: o */
        int f2778o;

        public AbstractC0881e() {
            super();
            this.f2775l = null;
            this.f2777n = 0;
        }

        public AbstractC0881e(AbstractC0881e abstractC0881e) {
            super();
            this.f2775l = null;
            this.f2777n = 0;
            this.f2776m = abstractC0881e.f2776m;
            this.f2778o = abstractC0881e.f2778o;
            this.f2775l = C0570b.m6164a(abstractC0881e.f2775l);
        }

        /* renamed from: a */
        public void m5157a(Path path) {
            path.reset();
            C0570b.C0572b[] c0572bArr = this.f2775l;
            if (c0572bArr != null) {
                C0570b.C0572b.m6155a(c0572bArr, path);
            }
        }

        /* renamed from: a */
        public boolean mo5158a() {
            return false;
        }

        public C0570b.C0572b[] getPathData() {
            return this.f2775l;
        }

        public String getPathName() {
            return this.f2776m;
        }

        public void setPathData(C0570b.C0572b[] c0572bArr) {
            if (!C0570b.m6163a(this.f2775l, c0572bArr)) {
                this.f2775l = C0570b.m6164a(c0572bArr);
            } else {
                C0570b.m6161b(this.f2775l, c0572bArr);
            }
        }
    }

    /* renamed from: androidx.k.a.a.i$f */
    /* loaded from: classes-dex2jar.jar:androidx/k/a/a/i$f.class */
    public static class C0882f {

        /* renamed from: n */
        private static final Matrix f2779n = new Matrix();

        /* renamed from: a */
        Paint f2780a;

        /* renamed from: b */
        Paint f2781b;

        /* renamed from: c */
        final C0879c f2782c;

        /* renamed from: d */
        float f2783d;

        /* renamed from: e */
        float f2784e;

        /* renamed from: f */
        float f2785f;

        /* renamed from: g */
        float f2786g;

        /* renamed from: h */
        int f2787h;

        /* renamed from: i */
        String f2788i;

        /* renamed from: j */
        Boolean f2789j;

        /* renamed from: k */
        final C0374a<String, Object> f2790k;

        /* renamed from: l */
        private final Path f2791l;

        /* renamed from: m */
        private final Path f2792m;

        /* renamed from: o */
        private final Matrix f2793o;

        /* renamed from: p */
        private PathMeasure f2794p;

        /* renamed from: q */
        private int f2795q;

        public C0882f() {
            this.f2793o = new Matrix();
            this.f2783d = FlexItem.FLEX_GROW_DEFAULT;
            this.f2784e = FlexItem.FLEX_GROW_DEFAULT;
            this.f2785f = FlexItem.FLEX_GROW_DEFAULT;
            this.f2786g = FlexItem.FLEX_GROW_DEFAULT;
            this.f2787h = 255;
            this.f2788i = null;
            this.f2789j = null;
            this.f2790k = new C0374a<>();
            this.f2782c = new C0879c();
            this.f2791l = new Path();
            this.f2792m = new Path();
        }

        public C0882f(C0882f c0882f) {
            this.f2793o = new Matrix();
            this.f2783d = FlexItem.FLEX_GROW_DEFAULT;
            this.f2784e = FlexItem.FLEX_GROW_DEFAULT;
            this.f2785f = FlexItem.FLEX_GROW_DEFAULT;
            this.f2786g = FlexItem.FLEX_GROW_DEFAULT;
            this.f2787h = 255;
            this.f2788i = null;
            this.f2789j = null;
            this.f2790k = new C0374a<>();
            this.f2782c = new C0879c(c0882f.f2782c, this.f2790k);
            this.f2791l = new Path(c0882f.f2791l);
            this.f2792m = new Path(c0882f.f2792m);
            this.f2783d = c0882f.f2783d;
            this.f2784e = c0882f.f2784e;
            this.f2785f = c0882f.f2785f;
            this.f2786g = c0882f.f2786g;
            this.f2795q = c0882f.f2795q;
            this.f2787h = c0882f.f2787h;
            this.f2788i = c0882f.f2788i;
            String str = c0882f.f2788i;
            if (str != null) {
                this.f2790k.put(str, this);
            }
            this.f2789j = c0882f.f2789j;
        }

        /* renamed from: a */
        private static float m5155a(float f, float f2, float f3, float f4) {
            return (f * f4) - (f2 * f3);
        }

        /* renamed from: a */
        private float m5153a(Matrix matrix) {
            float[] fArr = {FlexItem.FLEX_GROW_DEFAULT, 1.0f, 1.0f, FlexItem.FLEX_GROW_DEFAULT};
            matrix.mapVectors(fArr);
            float hypot = (float) Math.hypot(fArr[0], fArr[1]);
            float hypot2 = (float) Math.hypot(fArr[2], fArr[3]);
            float m5155a = m5155a(fArr[0], fArr[1], fArr[2], fArr[3]);
            float max = Math.max(hypot, hypot2);
            float f = 0.0f;
            if (max > FlexItem.FLEX_GROW_DEFAULT) {
                f = Math.abs(m5155a) / max;
            }
            return f;
        }

        /* renamed from: a */
        private void m5152a(C0879c c0879c, Matrix matrix, Canvas canvas, int i, int i2, ColorFilter colorFilter) {
            c0879c.f2762a.set(matrix);
            c0879c.f2762a.preConcat(c0879c.f2765d);
            canvas.save();
            for (int i3 = 0; i3 < c0879c.f2763b.size(); i3++) {
                AbstractC0880d abstractC0880d = c0879c.f2763b.get(i3);
                if (abstractC0880d instanceof C0879c) {
                    m5152a((C0879c) abstractC0880d, c0879c.f2762a, canvas, i, i2, colorFilter);
                } else if (abstractC0880d instanceof AbstractC0881e) {
                    m5151a(c0879c, (AbstractC0881e) abstractC0880d, canvas, i, i2, colorFilter);
                }
            }
            canvas.restore();
        }

        /* renamed from: a */
        private void m5151a(C0879c c0879c, AbstractC0881e abstractC0881e, Canvas canvas, int i, int i2, ColorFilter colorFilter) {
            float f = i / this.f2785f;
            float f2 = i2 / this.f2786g;
            float min = Math.min(f, f2);
            Matrix matrix = c0879c.f2762a;
            this.f2793o.set(matrix);
            this.f2793o.postScale(f, f2);
            float m5153a = m5153a(matrix);
            if (m5153a == FlexItem.FLEX_GROW_DEFAULT) {
                return;
            }
            abstractC0881e.m5157a(this.f2791l);
            Path path = this.f2791l;
            this.f2792m.reset();
            if (abstractC0881e.mo5158a()) {
                this.f2792m.setFillType(abstractC0881e.f2777n == 0 ? Path.FillType.WINDING : Path.FillType.EVEN_ODD);
                this.f2792m.addPath(path, this.f2793o);
                canvas.clipPath(this.f2792m);
                return;
            }
            C0878b c0878b = (C0878b) abstractC0881e;
            if (c0878b.f2755f != FlexItem.FLEX_GROW_DEFAULT || c0878b.f2756g != 1.0f) {
                float f3 = c0878b.f2755f;
                float f4 = c0878b.f2757h;
                float f5 = c0878b.f2756g;
                float f6 = c0878b.f2757h;
                if (this.f2794p == null) {
                    this.f2794p = new PathMeasure();
                }
                this.f2794p.setPath(this.f2791l, false);
                float length = this.f2794p.getLength();
                float f7 = ((f3 + f4) % 1.0f) * length;
                float f8 = ((f5 + f6) % 1.0f) * length;
                path.reset();
                if (f7 > f8) {
                    this.f2794p.getSegment(f7, length, path, true);
                    this.f2794p.getSegment(FlexItem.FLEX_GROW_DEFAULT, f8, path, true);
                } else {
                    this.f2794p.getSegment(f7, f8, path, true);
                }
                path.rLineTo(FlexItem.FLEX_GROW_DEFAULT, FlexItem.FLEX_GROW_DEFAULT);
            }
            this.f2792m.addPath(path, this.f2793o);
            if (c0878b.f2752c.m6728e()) {
                C0411b c0411b = c0878b.f2752c;
                if (this.f2781b == null) {
                    this.f2781b = new Paint(1);
                    this.f2781b.setStyle(Paint.Style.FILL);
                }
                Paint paint = this.f2781b;
                if (c0411b.m6730c()) {
                    Shader m6739a = c0411b.m6739a();
                    m6739a.setLocalMatrix(this.f2793o);
                    paint.setShader(m6739a);
                    paint.setAlpha(Math.round(c0878b.f2754e * 255.0f));
                } else {
                    paint.setShader(null);
                    paint.setAlpha(255);
                    paint.setColor(C0875i.m5178a(c0411b.m6733b(), c0878b.f2754e));
                }
                paint.setColorFilter(colorFilter);
                this.f2792m.setFillType(c0878b.f2777n == 0 ? Path.FillType.WINDING : Path.FillType.EVEN_ODD);
                canvas.drawPath(this.f2792m, paint);
            }
            if (!c0878b.f2750a.m6728e()) {
                return;
            }
            C0411b c0411b2 = c0878b.f2750a;
            if (this.f2780a == null) {
                this.f2780a = new Paint(1);
                this.f2780a.setStyle(Paint.Style.STROKE);
            }
            Paint paint2 = this.f2780a;
            if (c0878b.f2759j != null) {
                paint2.setStrokeJoin(c0878b.f2759j);
            }
            if (c0878b.f2758i != null) {
                paint2.setStrokeCap(c0878b.f2758i);
            }
            paint2.setStrokeMiter(c0878b.f2760k);
            if (c0411b2.m6730c()) {
                Shader m6739a2 = c0411b2.m6739a();
                m6739a2.setLocalMatrix(this.f2793o);
                paint2.setShader(m6739a2);
                paint2.setAlpha(Math.round(c0878b.f2753d * 255.0f));
            } else {
                paint2.setShader(null);
                paint2.setAlpha(255);
                paint2.setColor(C0875i.m5178a(c0411b2.m6733b(), c0878b.f2753d));
            }
            paint2.setColorFilter(colorFilter);
            paint2.setStrokeWidth(c0878b.f2751b * min * m5153a);
            canvas.drawPath(this.f2792m, paint2);
        }

        /* renamed from: a */
        public void m5154a(Canvas canvas, int i, int i2, ColorFilter colorFilter) {
            m5152a(this.f2782c, f2779n, canvas, i, i2, colorFilter);
        }

        /* renamed from: a */
        public boolean m5156a() {
            if (this.f2789j == null) {
                this.f2789j = Boolean.valueOf(this.f2782c.mo5159b());
            }
            return this.f2789j.booleanValue();
        }

        /* renamed from: a */
        public boolean m5150a(int[] iArr) {
            return this.f2782c.mo5160a(iArr);
        }

        public float getAlpha() {
            return getRootAlpha() / 255.0f;
        }

        public int getRootAlpha() {
            return this.f2787h;
        }

        public void setAlpha(float f) {
            setRootAlpha((int) (f * 255.0f));
        }

        public void setRootAlpha(int i) {
            this.f2787h = i;
        }
    }

    /* renamed from: androidx.k.a.a.i$g */
    /* loaded from: classes-dex2jar.jar:androidx/k/a/a/i$g.class */
    public static class C0883g extends Drawable.ConstantState {

        /* renamed from: a */
        int f2796a;

        /* renamed from: b */
        C0882f f2797b;

        /* renamed from: c */
        ColorStateList f2798c;

        /* renamed from: d */
        PorterDuff.Mode f2799d;

        /* renamed from: e */
        boolean f2800e;

        /* renamed from: f */
        Bitmap f2801f;

        /* renamed from: g */
        ColorStateList f2802g;

        /* renamed from: h */
        PorterDuff.Mode f2803h;

        /* renamed from: i */
        int f2804i;

        /* renamed from: j */
        boolean f2805j;

        /* renamed from: k */
        boolean f2806k;

        /* renamed from: l */
        Paint f2807l;

        public C0883g() {
            this.f2798c = null;
            this.f2799d = C0875i.f2740a;
            this.f2797b = new C0882f();
        }

        public C0883g(C0883g c0883g) {
            this.f2798c = null;
            this.f2799d = C0875i.f2740a;
            if (c0883g != null) {
                this.f2796a = c0883g.f2796a;
                this.f2797b = new C0882f(c0883g.f2797b);
                if (c0883g.f2797b.f2781b != null) {
                    this.f2797b.f2781b = new Paint(c0883g.f2797b.f2781b);
                }
                if (c0883g.f2797b.f2780a != null) {
                    this.f2797b.f2780a = new Paint(c0883g.f2797b.f2780a);
                }
                this.f2798c = c0883g.f2798c;
                this.f2799d = c0883g.f2799d;
                this.f2800e = c0883g.f2800e;
            }
        }

        /* renamed from: a */
        public Paint m5146a(ColorFilter colorFilter) {
            if (m5149a() || colorFilter != null) {
                if (this.f2807l == null) {
                    this.f2807l = new Paint();
                    this.f2807l.setFilterBitmap(true);
                }
                this.f2807l.setAlpha(this.f2797b.getRootAlpha());
                this.f2807l.setColorFilter(colorFilter);
                return this.f2807l;
            }
            return null;
        }

        /* renamed from: a */
        public void m5148a(int i, int i2) {
            this.f2801f.eraseColor(0);
            this.f2797b.m5154a(new Canvas(this.f2801f), i, i2, (ColorFilter) null);
        }

        /* renamed from: a */
        public void m5147a(Canvas canvas, ColorFilter colorFilter, Rect rect) {
            canvas.drawBitmap(this.f2801f, (Rect) null, rect, m5146a(colorFilter));
        }

        /* renamed from: a */
        public boolean m5149a() {
            return this.f2797b.getRootAlpha() < 255;
        }

        /* renamed from: a */
        public boolean m5145a(int[] iArr) {
            boolean m5150a = this.f2797b.m5150a(iArr);
            this.f2806k |= m5150a;
            return m5150a;
        }

        /* renamed from: b */
        public void m5143b(int i, int i2) {
            if (this.f2801f == null || !m5141c(i, i2)) {
                this.f2801f = Bitmap.createBitmap(i, i2, Bitmap.Config.ARGB_8888);
                this.f2806k = true;
            }
        }

        /* renamed from: b */
        public boolean m5144b() {
            return !this.f2806k && this.f2802g == this.f2798c && this.f2803h == this.f2799d && this.f2805j == this.f2800e && this.f2804i == this.f2797b.getRootAlpha();
        }

        /* renamed from: c */
        public void m5142c() {
            this.f2802g = this.f2798c;
            this.f2803h = this.f2799d;
            this.f2804i = this.f2797b.getRootAlpha();
            this.f2805j = this.f2800e;
            this.f2806k = false;
        }

        /* renamed from: c */
        public boolean m5141c(int i, int i2) {
            return i == this.f2801f.getWidth() && i2 == this.f2801f.getHeight();
        }

        /* renamed from: d */
        public boolean m5140d() {
            return this.f2797b.m5156a();
        }

        @Override // android.graphics.drawable.Drawable.ConstantState
        public int getChangingConfigurations() {
            return this.f2796a;
        }

        @Override // android.graphics.drawable.Drawable.ConstantState
        public Drawable newDrawable() {
            return new C0875i(this);
        }

        @Override // android.graphics.drawable.Drawable.ConstantState
        public Drawable newDrawable(Resources resources) {
            return new C0875i(this);
        }
    }

    /* renamed from: androidx.k.a.a.i$h */
    /* loaded from: classes-dex2jar.jar:androidx/k/a/a/i$h.class */
    public static class C0884h extends Drawable.ConstantState {

        /* renamed from: a */
        private final Drawable.ConstantState f2808a;

        public C0884h(Drawable.ConstantState constantState) {
            this.f2808a = constantState;
        }

        @Override // android.graphics.drawable.Drawable.ConstantState
        public boolean canApplyTheme() {
            return this.f2808a.canApplyTheme();
        }

        @Override // android.graphics.drawable.Drawable.ConstantState
        public int getChangingConfigurations() {
            return this.f2808a.getChangingConfigurations();
        }

        @Override // android.graphics.drawable.Drawable.ConstantState
        public Drawable newDrawable() {
            C0875i c0875i = new C0875i();
            c0875i.f2739c = (VectorDrawable) this.f2808a.newDrawable();
            return c0875i;
        }

        @Override // android.graphics.drawable.Drawable.ConstantState
        public Drawable newDrawable(Resources resources) {
            C0875i c0875i = new C0875i();
            c0875i.f2739c = (VectorDrawable) this.f2808a.newDrawable(resources);
            return c0875i;
        }

        @Override // android.graphics.drawable.Drawable.ConstantState
        public Drawable newDrawable(Resources resources, Resources.Theme theme) {
            C0875i c0875i = new C0875i();
            c0875i.f2739c = (VectorDrawable) this.f2808a.newDrawable(resources, theme);
            return c0875i;
        }
    }

    C0875i() {
        this.f2745g = true;
        this.f2747i = new float[9];
        this.f2748j = new Matrix();
        this.f2749k = new Rect();
        this.f2741b = new C0883g();
    }

    C0875i(C0883g c0883g) {
        this.f2745g = true;
        this.f2747i = new float[9];
        this.f2748j = new Matrix();
        this.f2749k = new Rect();
        this.f2741b = c0883g;
        this.f2742d = m5173a(this.f2742d, c0883g.f2798c, c0883g.f2799d);
    }

    /* renamed from: a */
    static int m5178a(int i, float f) {
        return (i & FlexItem.MAX_SIZE) | (((int) (Color.alpha(i) * f)) << 24);
    }

    /* renamed from: a */
    private static PorterDuff.Mode m5177a(int i, PorterDuff.Mode mode) {
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

    /* renamed from: a */
    public static C0875i m5176a(Resources resources, int i, Resources.Theme theme) {
        int next;
        if (Build.VERSION.SDK_INT >= 24) {
            C0875i c0875i = new C0875i();
            c0875i.f2739c = C0420f.m6697a(resources, i, theme);
            c0875i.f2746h = new C0884h(c0875i.f2739c.getConstantState());
            return c0875i;
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
            return m5175a(resources, xml, asAttributeSet, theme);
        } catch (IOException e) {
            Log.e("VectorDrawableCompat", "parser error", e);
            return null;
        } catch (XmlPullParserException e2) {
            Log.e("VectorDrawableCompat", "parser error", e2);
            return null;
        }
    }

    /* renamed from: a */
    public static C0875i m5175a(Resources resources, XmlPullParser xmlPullParser, AttributeSet attributeSet, Resources.Theme theme) {
        C0875i c0875i = new C0875i();
        c0875i.inflate(resources, xmlPullParser, attributeSet, theme);
        return c0875i;
    }

    /* renamed from: a */
    private void m5174a(TypedArray typedArray, XmlPullParser xmlPullParser, Resources.Theme theme) {
        C0883g c0883g = this.f2741b;
        C0882f c0882f = c0883g.f2797b;
        c0883g.f2799d = m5177a(C0424g.m6691a(typedArray, xmlPullParser, "tintMode", 6, -1), PorterDuff.Mode.SRC_IN);
        ColorStateList m6695a = C0424g.m6695a(typedArray, xmlPullParser, theme, "tint", 1);
        if (m6695a != null) {
            c0883g.f2798c = m6695a;
        }
        c0883g.f2800e = C0424g.m6690a(typedArray, xmlPullParser, "autoMirrored", 5, c0883g.f2800e);
        c0882f.f2785f = C0424g.m6692a(typedArray, xmlPullParser, "viewportWidth", 7, c0882f.f2785f);
        c0882f.f2786g = C0424g.m6692a(typedArray, xmlPullParser, "viewportHeight", 8, c0882f.f2786g);
        if (c0882f.f2785f <= FlexItem.FLEX_GROW_DEFAULT) {
            throw new XmlPullParserException(typedArray.getPositionDescription() + "<vector> tag requires viewportWidth > 0");
        } else if (c0882f.f2786g <= FlexItem.FLEX_GROW_DEFAULT) {
            throw new XmlPullParserException(typedArray.getPositionDescription() + "<vector> tag requires viewportHeight > 0");
        } else {
            c0882f.f2783d = typedArray.getDimension(3, c0882f.f2783d);
            c0882f.f2784e = typedArray.getDimension(2, c0882f.f2784e);
            if (c0882f.f2783d <= FlexItem.FLEX_GROW_DEFAULT) {
                throw new XmlPullParserException(typedArray.getPositionDescription() + "<vector> tag requires width > 0");
            } else if (c0882f.f2784e <= FlexItem.FLEX_GROW_DEFAULT) {
                throw new XmlPullParserException(typedArray.getPositionDescription() + "<vector> tag requires height > 0");
            } else {
                c0882f.setAlpha(C0424g.m6692a(typedArray, xmlPullParser, "alpha", 4, c0882f.getAlpha()));
                String string = typedArray.getString(0);
                if (string == null) {
                    return;
                }
                c0882f.f2788i = string;
                c0882f.f2790k.put(string, c0882f);
            }
        }
    }

    /* renamed from: a */
    private boolean m5179a() {
        boolean z = false;
        if (Build.VERSION.SDK_INT >= 17) {
            z = false;
            if (isAutoMirrored()) {
                z = false;
                if (C0575a.m6120i(this) == 1) {
                    z = true;
                }
            }
        }
        return z;
    }

    /* renamed from: b */
    private void m5170b(Resources resources, XmlPullParser xmlPullParser, AttributeSet attributeSet, Resources.Theme theme) {
        boolean z;
        boolean z2;
        C0883g c0883g = this.f2741b;
        C0882f c0882f = c0883g.f2797b;
        ArrayDeque arrayDeque = new ArrayDeque();
        arrayDeque.push(c0882f.f2782c);
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
                C0879c c0879c = (C0879c) arrayDeque.peek();
                if ("path".equals(name)) {
                    C0878b c0878b = new C0878b();
                    c0878b.m5165a(resources, attributeSet, theme, xmlPullParser);
                    c0879c.f2763b.add(c0878b);
                    if (c0878b.getPathName() != null) {
                        c0882f.f2790k.put(c0878b.getPathName(), c0878b);
                    }
                    z2 = false;
                    c0883g.f2796a = c0878b.f2778o | c0883g.f2796a;
                } else if ("clip-path".equals(name)) {
                    C0877a c0877a = new C0877a();
                    c0877a.m5169a(resources, attributeSet, theme, xmlPullParser);
                    c0879c.f2763b.add(c0877a);
                    if (c0877a.getPathName() != null) {
                        c0882f.f2790k.put(c0877a.getPathName(), c0877a);
                    }
                    c0883g.f2796a = c0877a.f2778o | c0883g.f2796a;
                    z2 = z;
                } else {
                    z2 = z;
                    if ("group".equals(name)) {
                        C0879c c0879c2 = new C0879c();
                        c0879c2.m5162a(resources, attributeSet, theme, xmlPullParser);
                        c0879c.f2763b.add(c0879c2);
                        arrayDeque.push(c0879c2);
                        if (c0879c2.getGroupName() != null) {
                            c0882f.f2790k.put(c0879c2.getGroupName(), c0879c2);
                        }
                        c0883g.f2796a = c0879c2.f2766e | c0883g.f2796a;
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
    PorterDuffColorFilter m5173a(PorterDuffColorFilter porterDuffColorFilter, ColorStateList colorStateList, PorterDuff.Mode mode) {
        if (colorStateList == null || mode == null) {
            return null;
        }
        return new PorterDuffColorFilter(colorStateList.getColorForState(getState(), 0), mode);
    }

    /* renamed from: a */
    public Object m5172a(String str) {
        return this.f2741b.f2797b.f2790k.get(str);
    }

    /* renamed from: a */
    public void m5171a(boolean z) {
        this.f2745g = z;
    }

    @Override // androidx.p046k.p047a.p048a.AbstractC0874h, android.graphics.drawable.Drawable
    public /* bridge */ /* synthetic */ void applyTheme(Resources.Theme theme) {
        super.applyTheme(theme);
    }

    @Override // android.graphics.drawable.Drawable
    public boolean canApplyTheme() {
        if (this.f2739c != null) {
            C0575a.m6125d(this.f2739c);
            return false;
        }
        return false;
    }

    @Override // androidx.p046k.p047a.p048a.AbstractC0874h, android.graphics.drawable.Drawable
    public /* bridge */ /* synthetic */ void clearColorFilter() {
        super.clearColorFilter();
    }

    @Override // android.graphics.drawable.Drawable
    public void draw(Canvas canvas) {
        if (this.f2739c != null) {
            this.f2739c.draw(canvas);
            return;
        }
        copyBounds(this.f2749k);
        if (this.f2749k.width() <= 0 || this.f2749k.height() <= 0) {
            return;
        }
        ColorFilter colorFilter = this.f2743e;
        PorterDuffColorFilter porterDuffColorFilter = colorFilter;
        if (colorFilter == null) {
            porterDuffColorFilter = this.f2742d;
        }
        canvas.getMatrix(this.f2748j);
        this.f2748j.getValues(this.f2747i);
        float abs = Math.abs(this.f2747i[0]);
        float abs2 = Math.abs(this.f2747i[4]);
        float abs3 = Math.abs(this.f2747i[1]);
        float abs4 = Math.abs(this.f2747i[3]);
        if (abs3 != FlexItem.FLEX_GROW_DEFAULT || abs4 != FlexItem.FLEX_GROW_DEFAULT) {
            abs = 1.0f;
            abs2 = 1.0f;
        }
        int min = Math.min(2048, (int) (this.f2749k.width() * abs));
        int min2 = Math.min(2048, (int) (this.f2749k.height() * abs2));
        if (min <= 0 || min2 <= 0) {
            return;
        }
        int save = canvas.save();
        canvas.translate(this.f2749k.left, this.f2749k.top);
        if (m5179a()) {
            canvas.translate(this.f2749k.width(), FlexItem.FLEX_GROW_DEFAULT);
            canvas.scale(-1.0f, 1.0f);
        }
        this.f2749k.offsetTo(0, 0);
        this.f2741b.m5143b(min, min2);
        if (!this.f2745g) {
            this.f2741b.m5148a(min, min2);
        } else if (!this.f2741b.m5144b()) {
            this.f2741b.m5148a(min, min2);
            this.f2741b.m5142c();
        }
        this.f2741b.m5147a(canvas, porterDuffColorFilter, this.f2749k);
        canvas.restoreToCount(save);
    }

    @Override // android.graphics.drawable.Drawable
    public int getAlpha() {
        return this.f2739c != null ? C0575a.m6126c(this.f2739c) : this.f2741b.f2797b.getRootAlpha();
    }

    @Override // android.graphics.drawable.Drawable
    public int getChangingConfigurations() {
        return this.f2739c != null ? this.f2739c.getChangingConfigurations() : super.getChangingConfigurations() | this.f2741b.getChangingConfigurations();
    }

    @Override // android.graphics.drawable.Drawable
    public ColorFilter getColorFilter() {
        return this.f2739c != null ? C0575a.m6124e(this.f2739c) : this.f2743e;
    }

    @Override // android.graphics.drawable.Drawable
    public Drawable.ConstantState getConstantState() {
        if (this.f2739c == null || Build.VERSION.SDK_INT < 24) {
            this.f2741b.f2796a = getChangingConfigurations();
            return this.f2741b;
        }
        return new C0884h(this.f2739c.getConstantState());
    }

    @Override // androidx.p046k.p047a.p048a.AbstractC0874h, android.graphics.drawable.Drawable
    public /* bridge */ /* synthetic */ Drawable getCurrent() {
        return super.getCurrent();
    }

    @Override // android.graphics.drawable.Drawable
    public int getIntrinsicHeight() {
        return this.f2739c != null ? this.f2739c.getIntrinsicHeight() : (int) this.f2741b.f2797b.f2784e;
    }

    @Override // android.graphics.drawable.Drawable
    public int getIntrinsicWidth() {
        return this.f2739c != null ? this.f2739c.getIntrinsicWidth() : (int) this.f2741b.f2797b.f2783d;
    }

    @Override // androidx.p046k.p047a.p048a.AbstractC0874h, android.graphics.drawable.Drawable
    public /* bridge */ /* synthetic */ int getMinimumHeight() {
        return super.getMinimumHeight();
    }

    @Override // androidx.p046k.p047a.p048a.AbstractC0874h, android.graphics.drawable.Drawable
    public /* bridge */ /* synthetic */ int getMinimumWidth() {
        return super.getMinimumWidth();
    }

    @Override // android.graphics.drawable.Drawable
    public int getOpacity() {
        if (this.f2739c != null) {
            return this.f2739c.getOpacity();
        }
        return -3;
    }

    @Override // androidx.p046k.p047a.p048a.AbstractC0874h, android.graphics.drawable.Drawable
    public /* bridge */ /* synthetic */ boolean getPadding(Rect rect) {
        return super.getPadding(rect);
    }

    @Override // androidx.p046k.p047a.p048a.AbstractC0874h, android.graphics.drawable.Drawable
    public /* bridge */ /* synthetic */ int[] getState() {
        return super.getState();
    }

    @Override // androidx.p046k.p047a.p048a.AbstractC0874h, android.graphics.drawable.Drawable
    public /* bridge */ /* synthetic */ Region getTransparentRegion() {
        return super.getTransparentRegion();
    }

    @Override // android.graphics.drawable.Drawable
    public void inflate(Resources resources, XmlPullParser xmlPullParser, AttributeSet attributeSet) {
        if (this.f2739c != null) {
            this.f2739c.inflate(resources, xmlPullParser, attributeSet);
        } else {
            inflate(resources, xmlPullParser, attributeSet, null);
        }
    }

    @Override // android.graphics.drawable.Drawable
    public void inflate(Resources resources, XmlPullParser xmlPullParser, AttributeSet attributeSet, Resources.Theme theme) {
        if (this.f2739c != null) {
            C0575a.m6131a(this.f2739c, resources, xmlPullParser, attributeSet, theme);
            return;
        }
        C0883g c0883g = this.f2741b;
        c0883g.f2797b = new C0882f();
        TypedArray m6696a = C0424g.m6696a(resources, theme, attributeSet, C0863a.f2710a);
        m5174a(m6696a, xmlPullParser, theme);
        m6696a.recycle();
        c0883g.f2796a = getChangingConfigurations();
        c0883g.f2806k = true;
        m5170b(resources, xmlPullParser, attributeSet, theme);
        this.f2742d = m5173a(this.f2742d, c0883g.f2798c, c0883g.f2799d);
    }

    @Override // android.graphics.drawable.Drawable
    public void invalidateSelf() {
        if (this.f2739c != null) {
            this.f2739c.invalidateSelf();
        } else {
            super.invalidateSelf();
        }
    }

    @Override // android.graphics.drawable.Drawable
    public boolean isAutoMirrored() {
        return this.f2739c != null ? C0575a.m6128b(this.f2739c) : this.f2741b.f2800e;
    }

    @Override // android.graphics.drawable.Drawable
    public boolean isStateful() {
        C0883g c0883g;
        if (this.f2739c != null) {
            return this.f2739c.isStateful();
        }
        return super.isStateful() || ((c0883g = this.f2741b) != null && (c0883g.m5140d() || (this.f2741b.f2798c != null && this.f2741b.f2798c.isStateful())));
    }

    @Override // androidx.p046k.p047a.p048a.AbstractC0874h, android.graphics.drawable.Drawable
    public /* bridge */ /* synthetic */ void jumpToCurrentState() {
        super.jumpToCurrentState();
    }

    @Override // android.graphics.drawable.Drawable
    public Drawable mutate() {
        if (this.f2739c != null) {
            this.f2739c.mutate();
            return this;
        }
        if (!this.f2744f && super.mutate() == this) {
            this.f2741b = new C0883g(this.f2741b);
            this.f2744f = true;
        }
        return this;
    }

    @Override // androidx.p046k.p047a.p048a.AbstractC0874h, android.graphics.drawable.Drawable
    protected void onBoundsChange(Rect rect) {
        if (this.f2739c != null) {
            this.f2739c.setBounds(rect);
        }
    }

    @Override // android.graphics.drawable.Drawable
    protected boolean onStateChange(int[] iArr) {
        if (this.f2739c != null) {
            return this.f2739c.setState(iArr);
        }
        C0883g c0883g = this.f2741b;
        boolean z = false;
        if (c0883g.f2798c != null) {
            z = false;
            if (c0883g.f2799d != null) {
                this.f2742d = m5173a(this.f2742d, c0883g.f2798c, c0883g.f2799d);
                invalidateSelf();
                z = true;
            }
        }
        boolean z2 = z;
        if (c0883g.m5140d()) {
            z2 = z;
            if (c0883g.m5145a(iArr)) {
                invalidateSelf();
                z2 = true;
            }
        }
        return z2;
    }

    @Override // android.graphics.drawable.Drawable
    public void scheduleSelf(Runnable runnable, long j) {
        if (this.f2739c != null) {
            this.f2739c.scheduleSelf(runnable, j);
        } else {
            super.scheduleSelf(runnable, j);
        }
    }

    @Override // android.graphics.drawable.Drawable
    public void setAlpha(int i) {
        if (this.f2739c != null) {
            this.f2739c.setAlpha(i);
        } else if (this.f2741b.f2797b.getRootAlpha() == i) {
        } else {
            this.f2741b.f2797b.setRootAlpha(i);
            invalidateSelf();
        }
    }

    @Override // android.graphics.drawable.Drawable
    public void setAutoMirrored(boolean z) {
        if (this.f2739c != null) {
            C0575a.m6129a(this.f2739c, z);
        } else {
            this.f2741b.f2800e = z;
        }
    }

    @Override // androidx.p046k.p047a.p048a.AbstractC0874h, android.graphics.drawable.Drawable
    public /* bridge */ /* synthetic */ void setChangingConfigurations(int i) {
        super.setChangingConfigurations(i);
    }

    @Override // androidx.p046k.p047a.p048a.AbstractC0874h, android.graphics.drawable.Drawable
    public /* bridge */ /* synthetic */ void setColorFilter(int i, PorterDuff.Mode mode) {
        super.setColorFilter(i, mode);
    }

    @Override // android.graphics.drawable.Drawable
    public void setColorFilter(ColorFilter colorFilter) {
        if (this.f2739c != null) {
            this.f2739c.setColorFilter(colorFilter);
            return;
        }
        this.f2743e = colorFilter;
        invalidateSelf();
    }

    @Override // androidx.p046k.p047a.p048a.AbstractC0874h, android.graphics.drawable.Drawable
    public /* bridge */ /* synthetic */ void setFilterBitmap(boolean z) {
        super.setFilterBitmap(z);
    }

    @Override // androidx.p046k.p047a.p048a.AbstractC0874h, android.graphics.drawable.Drawable
    public /* bridge */ /* synthetic */ void setHotspot(float f, float f2) {
        super.setHotspot(f, f2);
    }

    @Override // androidx.p046k.p047a.p048a.AbstractC0874h, android.graphics.drawable.Drawable
    public /* bridge */ /* synthetic */ void setHotspotBounds(int i, int i2, int i3, int i4) {
        super.setHotspotBounds(i, i2, i3, i4);
    }

    @Override // androidx.p046k.p047a.p048a.AbstractC0874h, android.graphics.drawable.Drawable
    public /* bridge */ /* synthetic */ boolean setState(int[] iArr) {
        return super.setState(iArr);
    }

    @Override // android.graphics.drawable.Drawable, androidx.core.graphics.drawable.AbstractC0576b
    public void setTint(int i) {
        if (this.f2739c != null) {
            C0575a.m6135a(this.f2739c, i);
        } else {
            setTintList(ColorStateList.valueOf(i));
        }
    }

    @Override // android.graphics.drawable.Drawable, androidx.core.graphics.drawable.AbstractC0576b
    public void setTintList(ColorStateList colorStateList) {
        if (this.f2739c != null) {
            C0575a.m6133a(this.f2739c, colorStateList);
            return;
        }
        C0883g c0883g = this.f2741b;
        if (c0883g.f2798c == colorStateList) {
            return;
        }
        c0883g.f2798c = colorStateList;
        this.f2742d = m5173a(this.f2742d, colorStateList, c0883g.f2799d);
        invalidateSelf();
    }

    @Override // android.graphics.drawable.Drawable, androidx.core.graphics.drawable.AbstractC0576b
    public void setTintMode(PorterDuff.Mode mode) {
        if (this.f2739c != null) {
            C0575a.m6130a(this.f2739c, mode);
            return;
        }
        C0883g c0883g = this.f2741b;
        if (c0883g.f2799d == mode) {
            return;
        }
        c0883g.f2799d = mode;
        this.f2742d = m5173a(this.f2742d, c0883g.f2798c, mode);
        invalidateSelf();
    }

    @Override // android.graphics.drawable.Drawable
    public boolean setVisible(boolean z, boolean z2) {
        return this.f2739c != null ? this.f2739c.setVisible(z, z2) : super.setVisible(z, z2);
    }

    @Override // android.graphics.drawable.Drawable
    public void unscheduleSelf(Runnable runnable) {
        if (this.f2739c != null) {
            this.f2739c.unscheduleSelf(runnable);
        } else {
            super.unscheduleSelf(runnable);
        }
    }
}

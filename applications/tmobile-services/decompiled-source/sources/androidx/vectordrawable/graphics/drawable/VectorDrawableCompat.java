package androidx.vectordrawable.graphics.drawable;

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
import androidx.annotation.ColorInt;
import androidx.annotation.DrawableRes;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.RequiresApi;
import androidx.collection.ArrayMap;
import androidx.core.content.res.ComplexColorCompat;
import androidx.core.content.res.ResourcesCompat;
import androidx.core.content.res.TypedArrayUtils;
import androidx.core.graphics.PathParser;
import androidx.core.graphics.drawable.DrawableCompat;
import java.io.IOException;
import java.util.ArrayDeque;
import java.util.ArrayList;
import org.xmlpull.v1.XmlPullParser;
import org.xmlpull.v1.XmlPullParserException;
/* loaded from: classes-dex2jar.jar:androidx/vectordrawable/graphics/drawable/VectorDrawableCompat.class */
public class VectorDrawableCompat extends VectorDrawableCommon {

    /* renamed from: o */
    static final PorterDuff.Mode f5369o = PorterDuff.Mode.SRC_IN;

    /* renamed from: g */
    private VectorDrawableCompatState f5370g;

    /* renamed from: h */
    private PorterDuffColorFilter f5371h;

    /* renamed from: i */
    private ColorFilter f5372i;

    /* renamed from: j */
    private boolean f5373j;

    /* renamed from: k */
    private boolean f5374k;

    /* renamed from: l */
    private final float[] f5375l;

    /* renamed from: m */
    private final Matrix f5376m;

    /* renamed from: n */
    private final Rect f5377n;

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes-dex2jar.jar:androidx/vectordrawable/graphics/drawable/VectorDrawableCompat$VClipPath.class */
    public static class VClipPath extends VPath {
        VClipPath() {
        }

        VClipPath(VClipPath vClipPath) {
            super(vClipPath);
        }

        /* renamed from: f */
        private void m16607f(TypedArray typedArray, XmlPullParser xmlPullParser) {
            String string = typedArray.getString(0);
            if (string != null) {
                this.f5404b = string;
            }
            String string2 = typedArray.getString(1);
            if (string2 != null) {
                this.f5403a = PathParser.m19577d(string2);
            }
            this.f5405c = TypedArrayUtils.m19596g(typedArray, xmlPullParser, "fillType", 2, 0);
        }

        @Override // androidx.vectordrawable.graphics.drawable.VectorDrawableCompat.VPath
        /* renamed from: c */
        public boolean mo16597c() {
            return true;
        }

        /* renamed from: e */
        public void m16608e(Resources resources, AttributeSet attributeSet, Resources.Theme theme, XmlPullParser xmlPullParser) {
            if (TypedArrayUtils.m19593j(xmlPullParser, "pathData")) {
                TypedArray k = TypedArrayUtils.m19592k(resources, theme, attributeSet, AndroidResources.f5341d);
                m16607f(k, xmlPullParser);
                k.recycle();
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes-dex2jar.jar:androidx/vectordrawable/graphics/drawable/VectorDrawableCompat$VFullPath.class */
    public static class VFullPath extends VPath {

        /* renamed from: e */
        private int[] f5378e;

        /* renamed from: f */
        ComplexColorCompat f5379f;

        /* renamed from: g */
        float f5380g;

        /* renamed from: h */
        ComplexColorCompat f5381h;

        /* renamed from: i */
        float f5382i;

        /* renamed from: j */
        float f5383j;

        /* renamed from: k */
        float f5384k;

        /* renamed from: l */
        float f5385l;

        /* renamed from: m */
        float f5386m;

        /* renamed from: n */
        Paint.Cap f5387n;

        /* renamed from: o */
        Paint.Join f5388o;

        /* renamed from: p */
        float f5389p;

        VFullPath() {
            this.f5380g = 0.0f;
            this.f5382i = 1.0f;
            this.f5383j = 1.0f;
            this.f5384k = 0.0f;
            this.f5385l = 1.0f;
            this.f5386m = 0.0f;
            this.f5387n = Paint.Cap.BUTT;
            this.f5388o = Paint.Join.MITER;
            this.f5389p = 4.0f;
        }

        VFullPath(VFullPath vFullPath) {
            super(vFullPath);
            this.f5380g = 0.0f;
            this.f5382i = 1.0f;
            this.f5383j = 1.0f;
            this.f5384k = 0.0f;
            this.f5385l = 1.0f;
            this.f5386m = 0.0f;
            this.f5387n = Paint.Cap.BUTT;
            this.f5388o = Paint.Join.MITER;
            this.f5389p = 4.0f;
            this.f5378e = vFullPath.f5378e;
            this.f5379f = vFullPath.f5379f;
            this.f5380g = vFullPath.f5380g;
            this.f5382i = vFullPath.f5382i;
            this.f5381h = vFullPath.f5381h;
            this.f5405c = vFullPath.f5405c;
            this.f5383j = vFullPath.f5383j;
            this.f5384k = vFullPath.f5384k;
            this.f5385l = vFullPath.f5385l;
            this.f5386m = vFullPath.f5386m;
            this.f5387n = vFullPath.f5387n;
            this.f5388o = vFullPath.f5388o;
            this.f5389p = vFullPath.f5389p;
        }

        /* renamed from: e */
        private Paint.Cap m16606e(int i, Paint.Cap cap) {
            return i != 0 ? i != 1 ? i != 2 ? cap : Paint.Cap.SQUARE : Paint.Cap.ROUND : Paint.Cap.BUTT;
        }

        /* renamed from: f */
        private Paint.Join m16605f(int i, Paint.Join join) {
            return i != 0 ? i != 1 ? i != 2 ? join : Paint.Join.BEVEL : Paint.Join.ROUND : Paint.Join.MITER;
        }

        /* renamed from: h */
        private void m16603h(TypedArray typedArray, XmlPullParser xmlPullParser, Resources.Theme theme) {
            this.f5378e = null;
            if (TypedArrayUtils.m19593j(xmlPullParser, "pathData")) {
                String string = typedArray.getString(0);
                if (string != null) {
                    this.f5404b = string;
                }
                String string2 = typedArray.getString(2);
                if (string2 != null) {
                    this.f5403a = PathParser.m19577d(string2);
                }
                this.f5381h = TypedArrayUtils.m19598e(typedArray, xmlPullParser, theme, "fillColor", 1, 0);
                this.f5383j = TypedArrayUtils.m19597f(typedArray, xmlPullParser, "fillAlpha", 12, this.f5383j);
                this.f5387n = m16606e(TypedArrayUtils.m19596g(typedArray, xmlPullParser, "strokeLineCap", 8, -1), this.f5387n);
                this.f5388o = m16605f(TypedArrayUtils.m19596g(typedArray, xmlPullParser, "strokeLineJoin", 9, -1), this.f5388o);
                this.f5389p = TypedArrayUtils.m19597f(typedArray, xmlPullParser, "strokeMiterLimit", 10, this.f5389p);
                this.f5379f = TypedArrayUtils.m19598e(typedArray, xmlPullParser, theme, "strokeColor", 3, 0);
                this.f5382i = TypedArrayUtils.m19597f(typedArray, xmlPullParser, "strokeAlpha", 11, this.f5382i);
                this.f5380g = TypedArrayUtils.m19597f(typedArray, xmlPullParser, "strokeWidth", 4, this.f5380g);
                this.f5385l = TypedArrayUtils.m19597f(typedArray, xmlPullParser, "trimPathEnd", 6, this.f5385l);
                this.f5386m = TypedArrayUtils.m19597f(typedArray, xmlPullParser, "trimPathOffset", 7, this.f5386m);
                this.f5384k = TypedArrayUtils.m19597f(typedArray, xmlPullParser, "trimPathStart", 5, this.f5384k);
                this.f5405c = TypedArrayUtils.m19596g(typedArray, xmlPullParser, "fillType", 13, this.f5405c);
            }
        }

        @Override // androidx.vectordrawable.graphics.drawable.VectorDrawableCompat.VObject
        /* renamed from: a */
        public boolean mo16599a() {
            return this.f5381h.m19642i() || this.f5379f.m19642i();
        }

        @Override // androidx.vectordrawable.graphics.drawable.VectorDrawableCompat.VObject
        /* renamed from: b */
        public boolean mo16598b(int[] iArr) {
            return this.f5379f.m19641j(iArr) | this.f5381h.m19641j(iArr);
        }

        /* renamed from: g */
        public void m16604g(Resources resources, AttributeSet attributeSet, Resources.Theme theme, XmlPullParser xmlPullParser) {
            TypedArray k = TypedArrayUtils.m19592k(resources, theme, attributeSet, AndroidResources.f5340c);
            m16603h(k, xmlPullParser, theme);
            k.recycle();
        }

        float getFillAlpha() {
            return this.f5383j;
        }

        @ColorInt
        int getFillColor() {
            return this.f5381h.m19646e();
        }

        float getStrokeAlpha() {
            return this.f5382i;
        }

        @ColorInt
        int getStrokeColor() {
            return this.f5379f.m19646e();
        }

        float getStrokeWidth() {
            return this.f5380g;
        }

        float getTrimPathEnd() {
            return this.f5385l;
        }

        float getTrimPathOffset() {
            return this.f5386m;
        }

        float getTrimPathStart() {
            return this.f5384k;
        }

        void setFillAlpha(float f) {
            this.f5383j = f;
        }

        void setFillColor(int i) {
            this.f5381h.m19640k(i);
        }

        void setStrokeAlpha(float f) {
            this.f5382i = f;
        }

        void setStrokeColor(int i) {
            this.f5379f.m19640k(i);
        }

        void setStrokeWidth(float f) {
            this.f5380g = f;
        }

        void setTrimPathEnd(float f) {
            this.f5385l = f;
        }

        void setTrimPathOffset(float f) {
            this.f5386m = f;
        }

        void setTrimPathStart(float f) {
            this.f5384k = f;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes-dex2jar.jar:androidx/vectordrawable/graphics/drawable/VectorDrawableCompat$VGroup.class */
    public static class VGroup extends VObject {

        /* renamed from: a */
        final Matrix f5390a;

        /* renamed from: b */
        final ArrayList<VObject> f5391b;

        /* renamed from: c */
        float f5392c;

        /* renamed from: d */
        private float f5393d;

        /* renamed from: e */
        private float f5394e;

        /* renamed from: f */
        private float f5395f;

        /* renamed from: g */
        private float f5396g;

        /* renamed from: h */
        private float f5397h;

        /* renamed from: i */
        private float f5398i;

        /* renamed from: j */
        final Matrix f5399j;

        /* renamed from: k */
        int f5400k;

        /* renamed from: l */
        private int[] f5401l;

        /* renamed from: m */
        private String f5402m;

        public VGroup() {
            super();
            this.f5390a = new Matrix();
            this.f5391b = new ArrayList<>();
            this.f5392c = 0.0f;
            this.f5393d = 0.0f;
            this.f5394e = 0.0f;
            this.f5395f = 1.0f;
            this.f5396g = 1.0f;
            this.f5397h = 0.0f;
            this.f5398i = 0.0f;
            this.f5399j = new Matrix();
            this.f5402m = null;
        }

        public VGroup(VGroup vGroup, ArrayMap<String, Object> arrayMap) {
            super();
            VPath vPath;
            this.f5390a = new Matrix();
            this.f5391b = new ArrayList<>();
            this.f5392c = 0.0f;
            this.f5393d = 0.0f;
            this.f5394e = 0.0f;
            this.f5395f = 1.0f;
            this.f5396g = 1.0f;
            this.f5397h = 0.0f;
            this.f5398i = 0.0f;
            this.f5399j = new Matrix();
            this.f5402m = null;
            this.f5392c = vGroup.f5392c;
            this.f5393d = vGroup.f5393d;
            this.f5394e = vGroup.f5394e;
            this.f5395f = vGroup.f5395f;
            this.f5396g = vGroup.f5396g;
            this.f5397h = vGroup.f5397h;
            this.f5398i = vGroup.f5398i;
            this.f5401l = vGroup.f5401l;
            String str = vGroup.f5402m;
            this.f5402m = str;
            this.f5400k = vGroup.f5400k;
            if (str != null) {
                arrayMap.put(str, this);
            }
            this.f5399j.set(vGroup.f5399j);
            ArrayList<VObject> arrayList = vGroup.f5391b;
            for (int i = 0; i < arrayList.size(); i++) {
                VObject vObject = arrayList.get(i);
                if (vObject instanceof VGroup) {
                    this.f5391b.add(new VGroup((VGroup) vObject, arrayMap));
                } else {
                    if (vObject instanceof VFullPath) {
                        vPath = new VFullPath((VFullPath) vObject);
                    } else if (vObject instanceof VClipPath) {
                        vPath = new VClipPath((VClipPath) vObject);
                    } else {
                        throw new IllegalStateException("Unknown object in the tree!");
                    }
                    this.f5391b.add(vPath);
                    String str2 = vPath.f5404b;
                    if (str2 != null) {
                        arrayMap.put(str2, vPath);
                    }
                }
            }
        }

        /* renamed from: d */
        private void m16601d() {
            this.f5399j.reset();
            this.f5399j.postTranslate(-this.f5393d, -this.f5394e);
            this.f5399j.postScale(this.f5395f, this.f5396g);
            this.f5399j.postRotate(this.f5392c, 0.0f, 0.0f);
            this.f5399j.postTranslate(this.f5397h + this.f5393d, this.f5398i + this.f5394e);
        }

        /* renamed from: e */
        private void m16600e(TypedArray typedArray, XmlPullParser xmlPullParser) {
            this.f5401l = null;
            this.f5392c = TypedArrayUtils.m19597f(typedArray, xmlPullParser, "rotation", 5, this.f5392c);
            this.f5393d = typedArray.getFloat(1, this.f5393d);
            this.f5394e = typedArray.getFloat(2, this.f5394e);
            this.f5395f = TypedArrayUtils.m19597f(typedArray, xmlPullParser, "scaleX", 3, this.f5395f);
            this.f5396g = TypedArrayUtils.m19597f(typedArray, xmlPullParser, "scaleY", 4, this.f5396g);
            this.f5397h = TypedArrayUtils.m19597f(typedArray, xmlPullParser, "translateX", 6, this.f5397h);
            this.f5398i = TypedArrayUtils.m19597f(typedArray, xmlPullParser, "translateY", 7, this.f5398i);
            String string = typedArray.getString(0);
            if (string != null) {
                this.f5402m = string;
            }
            m16601d();
        }

        @Override // androidx.vectordrawable.graphics.drawable.VectorDrawableCompat.VObject
        /* renamed from: a */
        public boolean mo16599a() {
            for (int i = 0; i < this.f5391b.size(); i++) {
                if (this.f5391b.get(i).mo16599a()) {
                    return true;
                }
            }
            return false;
        }

        @Override // androidx.vectordrawable.graphics.drawable.VectorDrawableCompat.VObject
        /* renamed from: b */
        public boolean mo16598b(int[] iArr) {
            boolean z = false;
            for (int i = 0; i < this.f5391b.size(); i++) {
                z |= this.f5391b.get(i).mo16598b(iArr);
            }
            return z;
        }

        /* renamed from: c */
        public void m16602c(Resources resources, AttributeSet attributeSet, Resources.Theme theme, XmlPullParser xmlPullParser) {
            TypedArray k = TypedArrayUtils.m19592k(resources, theme, attributeSet, AndroidResources.f5339b);
            m16600e(k, xmlPullParser);
            k.recycle();
        }

        public String getGroupName() {
            return this.f5402m;
        }

        public Matrix getLocalMatrix() {
            return this.f5399j;
        }

        public float getPivotX() {
            return this.f5393d;
        }

        public float getPivotY() {
            return this.f5394e;
        }

        public float getRotation() {
            return this.f5392c;
        }

        public float getScaleX() {
            return this.f5395f;
        }

        public float getScaleY() {
            return this.f5396g;
        }

        public float getTranslateX() {
            return this.f5397h;
        }

        public float getTranslateY() {
            return this.f5398i;
        }

        public void setPivotX(float f) {
            if (f != this.f5393d) {
                this.f5393d = f;
                m16601d();
            }
        }

        public void setPivotY(float f) {
            if (f != this.f5394e) {
                this.f5394e = f;
                m16601d();
            }
        }

        public void setRotation(float f) {
            if (f != this.f5392c) {
                this.f5392c = f;
                m16601d();
            }
        }

        public void setScaleX(float f) {
            if (f != this.f5395f) {
                this.f5395f = f;
                m16601d();
            }
        }

        public void setScaleY(float f) {
            if (f != this.f5396g) {
                this.f5396g = f;
                m16601d();
            }
        }

        public void setTranslateX(float f) {
            if (f != this.f5397h) {
                this.f5397h = f;
                m16601d();
            }
        }

        public void setTranslateY(float f) {
            if (f != this.f5398i) {
                this.f5398i = f;
                m16601d();
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes-dex2jar.jar:androidx/vectordrawable/graphics/drawable/VectorDrawableCompat$VObject.class */
    public static abstract class VObject {
        private VObject() {
        }

        /* renamed from: a */
        public boolean mo16599a() {
            return false;
        }

        /* renamed from: b */
        public boolean mo16598b(int[] iArr) {
            return false;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes-dex2jar.jar:androidx/vectordrawable/graphics/drawable/VectorDrawableCompat$VPath.class */
    public static abstract class VPath extends VObject {

        /* renamed from: a */
        protected PathParser.PathDataNode[] f5403a;

        /* renamed from: b */
        String f5404b;

        /* renamed from: c */
        int f5405c;

        /* renamed from: d */
        int f5406d;

        public VPath() {
            super();
            this.f5403a = null;
            this.f5405c = 0;
        }

        public VPath(VPath vPath) {
            super();
            this.f5403a = null;
            this.f5405c = 0;
            this.f5404b = vPath.f5404b;
            this.f5406d = vPath.f5406d;
            this.f5403a = PathParser.m19575f(vPath.f5403a);
        }

        /* renamed from: c */
        public boolean mo16597c() {
            return false;
        }

        /* renamed from: d */
        public void m16596d(Path path) {
            path.reset();
            PathParser.PathDataNode[] pathDataNodeArr = this.f5403a;
            if (pathDataNodeArr != null) {
                PathParser.PathDataNode.m19566e(pathDataNodeArr, path);
            }
        }

        public PathParser.PathDataNode[] getPathData() {
            return this.f5403a;
        }

        public String getPathName() {
            return this.f5404b;
        }

        public void setPathData(PathParser.PathDataNode[] pathDataNodeArr) {
            if (!PathParser.m19579b(this.f5403a, pathDataNodeArr)) {
                this.f5403a = PathParser.m19575f(pathDataNodeArr);
            } else {
                PathParser.m19571j(this.f5403a, pathDataNodeArr);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes-dex2jar.jar:androidx/vectordrawable/graphics/drawable/VectorDrawableCompat$VPathRenderer.class */
    public static class VPathRenderer {

        /* renamed from: q */
        private static final Matrix f5407q = new Matrix();

        /* renamed from: a */
        private final Path f5408a;

        /* renamed from: b */
        private final Path f5409b;

        /* renamed from: c */
        private final Matrix f5410c;

        /* renamed from: d */
        Paint f5411d;

        /* renamed from: e */
        Paint f5412e;

        /* renamed from: f */
        private PathMeasure f5413f;

        /* renamed from: g */
        private int f5414g;

        /* renamed from: h */
        final VGroup f5415h;

        /* renamed from: i */
        float f5416i;

        /* renamed from: j */
        float f5417j;

        /* renamed from: k */
        float f5418k;

        /* renamed from: l */
        float f5419l;

        /* renamed from: m */
        int f5420m;

        /* renamed from: n */
        String f5421n;

        /* renamed from: o */
        Boolean f5422o;

        /* renamed from: p */
        final ArrayMap<String, Object> f5423p;

        public VPathRenderer() {
            this.f5410c = new Matrix();
            this.f5416i = 0.0f;
            this.f5417j = 0.0f;
            this.f5418k = 0.0f;
            this.f5419l = 0.0f;
            this.f5420m = 255;
            this.f5421n = null;
            this.f5422o = null;
            this.f5423p = new ArrayMap<>();
            this.f5415h = new VGroup();
            this.f5408a = new Path();
            this.f5409b = new Path();
        }

        public VPathRenderer(VPathRenderer vPathRenderer) {
            this.f5410c = new Matrix();
            this.f5416i = 0.0f;
            this.f5417j = 0.0f;
            this.f5418k = 0.0f;
            this.f5419l = 0.0f;
            this.f5420m = 255;
            this.f5421n = null;
            this.f5422o = null;
            ArrayMap<String, Object> arrayMap = new ArrayMap<>();
            this.f5423p = arrayMap;
            this.f5415h = new VGroup(vPathRenderer.f5415h, arrayMap);
            this.f5408a = new Path(vPathRenderer.f5408a);
            this.f5409b = new Path(vPathRenderer.f5409b);
            this.f5416i = vPathRenderer.f5416i;
            this.f5417j = vPathRenderer.f5417j;
            this.f5418k = vPathRenderer.f5418k;
            this.f5419l = vPathRenderer.f5419l;
            this.f5414g = vPathRenderer.f5414g;
            this.f5420m = vPathRenderer.f5420m;
            this.f5421n = vPathRenderer.f5421n;
            String str = vPathRenderer.f5421n;
            if (str != null) {
                this.f5423p.put(str, this);
            }
            this.f5422o = vPathRenderer.f5422o;
        }

        /* renamed from: a */
        private static float m16595a(float f, float f2, float f3, float f4) {
            return (f * f4) - (f2 * f3);
        }

        /* renamed from: c */
        private void m16593c(VGroup vGroup, Matrix matrix, Canvas canvas, int i, int i2, ColorFilter colorFilter) {
            vGroup.f5390a.set(matrix);
            vGroup.f5390a.preConcat(vGroup.f5399j);
            canvas.save();
            for (int i3 = 0; i3 < vGroup.f5391b.size(); i3++) {
                VObject vObject = vGroup.f5391b.get(i3);
                if (vObject instanceof VGroup) {
                    m16593c((VGroup) vObject, vGroup.f5390a, canvas, i, i2, colorFilter);
                } else if (vObject instanceof VPath) {
                    m16592d(vGroup, (VPath) vObject, canvas, i, i2, colorFilter);
                }
            }
            canvas.restore();
        }

        /* renamed from: d */
        private void m16592d(VGroup vGroup, VPath vPath, Canvas canvas, int i, int i2, ColorFilter colorFilter) {
            float f = i / this.f5418k;
            float f2 = i2 / this.f5419l;
            float min = Math.min(f, f2);
            Matrix matrix = vGroup.f5390a;
            this.f5410c.set(matrix);
            this.f5410c.postScale(f, f2);
            float e = m16591e(matrix);
            if (e != 0.0f) {
                vPath.m16596d(this.f5408a);
                Path path = this.f5408a;
                this.f5409b.reset();
                if (vPath.mo16597c()) {
                    this.f5409b.setFillType(vPath.f5405c == 0 ? Path.FillType.WINDING : Path.FillType.EVEN_ODD);
                    this.f5409b.addPath(path, this.f5410c);
                    canvas.clipPath(this.f5409b);
                    return;
                }
                VFullPath vFullPath = (VFullPath) vPath;
                if (!(vFullPath.f5384k == 0.0f && vFullPath.f5385l == 1.0f)) {
                    float f3 = vFullPath.f5384k;
                    float f4 = vFullPath.f5386m;
                    float f5 = vFullPath.f5385l;
                    if (this.f5413f == null) {
                        this.f5413f = new PathMeasure();
                    }
                    this.f5413f.setPath(this.f5408a, false);
                    float length = this.f5413f.getLength();
                    float f6 = ((f3 + f4) % 1.0f) * length;
                    float f7 = ((f5 + f4) % 1.0f) * length;
                    path.reset();
                    if (f6 > f7) {
                        this.f5413f.getSegment(f6, length, path, true);
                        this.f5413f.getSegment(0.0f, f7, path, true);
                    } else {
                        this.f5413f.getSegment(f6, f7, path, true);
                    }
                    path.rLineTo(0.0f, 0.0f);
                }
                this.f5409b.addPath(path, this.f5410c);
                if (vFullPath.f5381h.m19639l()) {
                    ComplexColorCompat complexColorCompat = vFullPath.f5381h;
                    if (this.f5412e == null) {
                        Paint paint = new Paint(1);
                        this.f5412e = paint;
                        paint.setStyle(Paint.Style.FILL);
                    }
                    Paint paint2 = this.f5412e;
                    if (complexColorCompat.m19643h()) {
                        Shader f8 = complexColorCompat.m19645f();
                        f8.setLocalMatrix(this.f5410c);
                        paint2.setShader(f8);
                        paint2.setAlpha(Math.round(vFullPath.f5383j * 255.0f));
                    } else {
                        paint2.setShader(null);
                        paint2.setAlpha(255);
                        paint2.setColor(VectorDrawableCompat.m16618a(complexColorCompat.m19646e(), vFullPath.f5383j));
                    }
                    paint2.setColorFilter(colorFilter);
                    this.f5409b.setFillType(vFullPath.f5405c == 0 ? Path.FillType.WINDING : Path.FillType.EVEN_ODD);
                    canvas.drawPath(this.f5409b, paint2);
                }
                if (vFullPath.f5379f.m19639l()) {
                    ComplexColorCompat complexColorCompat2 = vFullPath.f5379f;
                    if (this.f5411d == null) {
                        Paint paint3 = new Paint(1);
                        this.f5411d = paint3;
                        paint3.setStyle(Paint.Style.STROKE);
                    }
                    Paint paint4 = this.f5411d;
                    Paint.Join join = vFullPath.f5388o;
                    if (join != null) {
                        paint4.setStrokeJoin(join);
                    }
                    Paint.Cap cap = vFullPath.f5387n;
                    if (cap != null) {
                        paint4.setStrokeCap(cap);
                    }
                    paint4.setStrokeMiter(vFullPath.f5389p);
                    if (complexColorCompat2.m19643h()) {
                        Shader f9 = complexColorCompat2.m19645f();
                        f9.setLocalMatrix(this.f5410c);
                        paint4.setShader(f9);
                        paint4.setAlpha(Math.round(vFullPath.f5382i * 255.0f));
                    } else {
                        paint4.setShader(null);
                        paint4.setAlpha(255);
                        paint4.setColor(VectorDrawableCompat.m16618a(complexColorCompat2.m19646e(), vFullPath.f5382i));
                    }
                    paint4.setColorFilter(colorFilter);
                    paint4.setStrokeWidth(vFullPath.f5380g * min * e);
                    canvas.drawPath(this.f5409b, paint4);
                }
            }
        }

        /* renamed from: e */
        private float m16591e(Matrix matrix) {
            float[] fArr = {0.0f, 1.0f, 1.0f, 0.0f};
            matrix.mapVectors(fArr);
            float hypot = (float) Math.hypot(fArr[0], fArr[1]);
            float hypot2 = (float) Math.hypot(fArr[2], fArr[3]);
            float a = m16595a(fArr[0], fArr[1], fArr[2], fArr[3]);
            float max = Math.max(hypot, hypot2);
            float f = 0.0f;
            if (max > 0.0f) {
                f = Math.abs(a) / max;
            }
            return f;
        }

        /* renamed from: b */
        public void m16594b(Canvas canvas, int i, int i2, ColorFilter colorFilter) {
            m16593c(this.f5415h, f5407q, canvas, i, i2, colorFilter);
        }

        /* renamed from: f */
        public boolean m16590f() {
            if (this.f5422o == null) {
                this.f5422o = Boolean.valueOf(this.f5415h.mo16599a());
            }
            return this.f5422o.booleanValue();
        }

        /* renamed from: g */
        public boolean m16589g(int[] iArr) {
            return this.f5415h.mo16598b(iArr);
        }

        public float getAlpha() {
            return getRootAlpha() / 255.0f;
        }

        public int getRootAlpha() {
            return this.f5420m;
        }

        public void setAlpha(float f) {
            setRootAlpha((int) (f * 255.0f));
        }

        public void setRootAlpha(int i) {
            this.f5420m = i;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes-dex2jar.jar:androidx/vectordrawable/graphics/drawable/VectorDrawableCompat$VectorDrawableCompatState.class */
    public static class VectorDrawableCompatState extends Drawable.ConstantState {

        /* renamed from: a */
        int f5424a;

        /* renamed from: b */
        VPathRenderer f5425b;

        /* renamed from: c */
        ColorStateList f5426c;

        /* renamed from: d */
        PorterDuff.Mode f5427d;

        /* renamed from: e */
        boolean f5428e;

        /* renamed from: f */
        Bitmap f5429f;

        /* renamed from: g */
        ColorStateList f5430g;

        /* renamed from: h */
        PorterDuff.Mode f5431h;

        /* renamed from: i */
        int f5432i;

        /* renamed from: j */
        boolean f5433j;

        /* renamed from: k */
        boolean f5434k;

        /* renamed from: l */
        Paint f5435l;

        public VectorDrawableCompatState() {
            this.f5426c = null;
            this.f5427d = VectorDrawableCompat.f5369o;
            this.f5425b = new VPathRenderer();
        }

        public VectorDrawableCompatState(VectorDrawableCompatState vectorDrawableCompatState) {
            this.f5426c = null;
            this.f5427d = VectorDrawableCompat.f5369o;
            if (vectorDrawableCompatState != null) {
                this.f5424a = vectorDrawableCompatState.f5424a;
                VPathRenderer vPathRenderer = new VPathRenderer(vectorDrawableCompatState.f5425b);
                this.f5425b = vPathRenderer;
                if (vectorDrawableCompatState.f5425b.f5412e != null) {
                    vPathRenderer.f5412e = new Paint(vectorDrawableCompatState.f5425b.f5412e);
                }
                if (vectorDrawableCompatState.f5425b.f5411d != null) {
                    this.f5425b.f5411d = new Paint(vectorDrawableCompatState.f5425b.f5411d);
                }
                this.f5426c = vectorDrawableCompatState.f5426c;
                this.f5427d = vectorDrawableCompatState.f5427d;
                this.f5428e = vectorDrawableCompatState.f5428e;
            }
        }

        /* renamed from: a */
        public boolean m16588a(int i, int i2) {
            return i == this.f5429f.getWidth() && i2 == this.f5429f.getHeight();
        }

        /* renamed from: b */
        public boolean m16587b() {
            return !this.f5434k && this.f5430g == this.f5426c && this.f5431h == this.f5427d && this.f5433j == this.f5428e && this.f5432i == this.f5425b.getRootAlpha();
        }

        /* renamed from: c */
        public void m16586c(int i, int i2) {
            if (this.f5429f == null || !m16588a(i, i2)) {
                this.f5429f = Bitmap.createBitmap(i, i2, Bitmap.Config.ARGB_8888);
                this.f5434k = true;
            }
        }

        /* renamed from: d */
        public void m16585d(Canvas canvas, ColorFilter colorFilter, Rect rect) {
            canvas.drawBitmap(this.f5429f, (Rect) null, rect, m16584e(colorFilter));
        }

        /* renamed from: e */
        public Paint m16584e(ColorFilter colorFilter) {
            if (!m16583f() && colorFilter == null) {
                return null;
            }
            if (this.f5435l == null) {
                Paint paint = new Paint();
                this.f5435l = paint;
                paint.setFilterBitmap(true);
            }
            this.f5435l.setAlpha(this.f5425b.getRootAlpha());
            this.f5435l.setColorFilter(colorFilter);
            return this.f5435l;
        }

        /* renamed from: f */
        public boolean m16583f() {
            return this.f5425b.getRootAlpha() < 255;
        }

        /* renamed from: g */
        public boolean m16582g() {
            return this.f5425b.m16590f();
        }

        @Override // android.graphics.drawable.Drawable.ConstantState
        public int getChangingConfigurations() {
            return this.f5424a;
        }

        /* renamed from: h */
        public boolean m16581h(int[] iArr) {
            boolean g = this.f5425b.m16589g(iArr);
            this.f5434k |= g;
            return g;
        }

        /* renamed from: i */
        public void m16580i() {
            this.f5430g = this.f5426c;
            this.f5431h = this.f5427d;
            this.f5432i = this.f5425b.getRootAlpha();
            this.f5433j = this.f5428e;
            this.f5434k = false;
        }

        /* renamed from: j */
        public void m16579j(int i, int i2) {
            this.f5429f.eraseColor(0);
            this.f5425b.m16594b(new Canvas(this.f5429f), i, i2, null);
        }

        @Override // android.graphics.drawable.Drawable.ConstantState
        @NonNull
        public Drawable newDrawable() {
            return new VectorDrawableCompat(this);
        }

        @Override // android.graphics.drawable.Drawable.ConstantState
        @NonNull
        public Drawable newDrawable(Resources resources) {
            return new VectorDrawableCompat(this);
        }
    }

    @RequiresApi
    /* loaded from: classes-dex2jar.jar:androidx/vectordrawable/graphics/drawable/VectorDrawableCompat$VectorDrawableDelegateState.class */
    private static class VectorDrawableDelegateState extends Drawable.ConstantState {

        /* renamed from: a */
        private final Drawable.ConstantState f5436a;

        public VectorDrawableDelegateState(Drawable.ConstantState constantState) {
            this.f5436a = constantState;
        }

        @Override // android.graphics.drawable.Drawable.ConstantState
        public boolean canApplyTheme() {
            return this.f5436a.canApplyTheme();
        }

        @Override // android.graphics.drawable.Drawable.ConstantState
        public int getChangingConfigurations() {
            return this.f5436a.getChangingConfigurations();
        }

        @Override // android.graphics.drawable.Drawable.ConstantState
        public Drawable newDrawable() {
            VectorDrawableCompat vectorDrawableCompat = new VectorDrawableCompat();
            vectorDrawableCompat.f5368f = (VectorDrawable) this.f5436a.newDrawable();
            return vectorDrawableCompat;
        }

        @Override // android.graphics.drawable.Drawable.ConstantState
        public Drawable newDrawable(Resources resources) {
            VectorDrawableCompat vectorDrawableCompat = new VectorDrawableCompat();
            vectorDrawableCompat.f5368f = (VectorDrawable) this.f5436a.newDrawable(resources);
            return vectorDrawableCompat;
        }

        @Override // android.graphics.drawable.Drawable.ConstantState
        public Drawable newDrawable(Resources resources, Resources.Theme theme) {
            VectorDrawableCompat vectorDrawableCompat = new VectorDrawableCompat();
            vectorDrawableCompat.f5368f = (VectorDrawable) this.f5436a.newDrawable(resources, theme);
            return vectorDrawableCompat;
        }
    }

    VectorDrawableCompat() {
        this.f5374k = true;
        this.f5375l = new float[9];
        this.f5376m = new Matrix();
        this.f5377n = new Rect();
        this.f5370g = new VectorDrawableCompatState();
    }

    VectorDrawableCompat(@NonNull VectorDrawableCompatState vectorDrawableCompatState) {
        this.f5374k = true;
        this.f5375l = new float[9];
        this.f5376m = new Matrix();
        this.f5377n = new Rect();
        this.f5370g = vectorDrawableCompatState;
        this.f5371h = m16609j(this.f5371h, vectorDrawableCompatState.f5426c, vectorDrawableCompatState.f5427d);
    }

    /* renamed from: a */
    static int m16618a(int i, float f) {
        return (i & 16777215) | (((int) (Color.alpha(i) * f)) << 24);
    }

    @Nullable
    /* renamed from: b */
    public static VectorDrawableCompat m16617b(@NonNull Resources resources, @DrawableRes int i, @Nullable Resources.Theme theme) {
        int next;
        if (Build.VERSION.SDK_INT >= 24) {
            VectorDrawableCompat vectorDrawableCompat = new VectorDrawableCompat();
            vectorDrawableCompat.f5368f = ResourcesCompat.m19613a(resources, i, theme);
            new VectorDrawableDelegateState(vectorDrawableCompat.f5368f.getConstantState());
            return vectorDrawableCompat;
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
                return m16616c(resources, xml, asAttributeSet, theme);
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

    /* renamed from: c */
    public static VectorDrawableCompat m16616c(Resources resources, XmlPullParser xmlPullParser, AttributeSet attributeSet, Resources.Theme theme) throws XmlPullParserException, IOException {
        VectorDrawableCompat vectorDrawableCompat = new VectorDrawableCompat();
        vectorDrawableCompat.inflate(resources, xmlPullParser, attributeSet, theme);
        return vectorDrawableCompat;
    }

    /* renamed from: e */
    private void m16614e(Resources resources, XmlPullParser xmlPullParser, AttributeSet attributeSet, Resources.Theme theme) throws XmlPullParserException, IOException {
        VectorDrawableCompatState vectorDrawableCompatState = this.f5370g;
        VPathRenderer vPathRenderer = vectorDrawableCompatState.f5425b;
        ArrayDeque arrayDeque = new ArrayDeque();
        arrayDeque.push(vPathRenderer.f5415h);
        int eventType = xmlPullParser.getEventType();
        int depth = xmlPullParser.getDepth();
        boolean z = true;
        while (eventType != 1 && (xmlPullParser.getDepth() >= depth + 1 || eventType != 3)) {
            if (eventType == 2) {
                String name = xmlPullParser.getName();
                VGroup vGroup = (VGroup) arrayDeque.peek();
                if ("path".equals(name)) {
                    VFullPath vFullPath = new VFullPath();
                    vFullPath.m16604g(resources, attributeSet, theme, xmlPullParser);
                    vGroup.f5391b.add(vFullPath);
                    if (vFullPath.getPathName() != null) {
                        vPathRenderer.f5423p.put(vFullPath.getPathName(), vFullPath);
                    }
                    z = false;
                    vectorDrawableCompatState.f5424a = vFullPath.f5406d | vectorDrawableCompatState.f5424a;
                } else if ("clip-path".equals(name)) {
                    VClipPath vClipPath = new VClipPath();
                    vClipPath.m16608e(resources, attributeSet, theme, xmlPullParser);
                    vGroup.f5391b.add(vClipPath);
                    if (vClipPath.getPathName() != null) {
                        vPathRenderer.f5423p.put(vClipPath.getPathName(), vClipPath);
                    }
                    vectorDrawableCompatState.f5424a = vClipPath.f5406d | vectorDrawableCompatState.f5424a;
                    z = z;
                } else {
                    z = z;
                    if ("group".equals(name)) {
                        VGroup vGroup2 = new VGroup();
                        vGroup2.m16602c(resources, attributeSet, theme, xmlPullParser);
                        vGroup.f5391b.add(vGroup2);
                        arrayDeque.push(vGroup2);
                        if (vGroup2.getGroupName() != null) {
                            vPathRenderer.f5423p.put(vGroup2.getGroupName(), vGroup2);
                        }
                        vectorDrawableCompatState.f5424a = vGroup2.f5400k | vectorDrawableCompatState.f5424a;
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

    /* renamed from: f */
    private boolean m16613f() {
        boolean z = false;
        if (Build.VERSION.SDK_INT >= 17) {
            z = false;
            if (isAutoMirrored()) {
                z = false;
                if (DrawableCompat.m19507f(this) == 1) {
                    z = true;
                }
            }
        }
        return z;
    }

    /* renamed from: g */
    private static PorterDuff.Mode m16612g(int i, PorterDuff.Mode mode) {
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

    /* renamed from: i */
    private void m16610i(TypedArray typedArray, XmlPullParser xmlPullParser, Resources.Theme theme) throws XmlPullParserException {
        VectorDrawableCompatState vectorDrawableCompatState = this.f5370g;
        VPathRenderer vPathRenderer = vectorDrawableCompatState.f5425b;
        vectorDrawableCompatState.f5427d = m16612g(TypedArrayUtils.m19596g(typedArray, xmlPullParser, "tintMode", 6, -1), PorterDuff.Mode.SRC_IN);
        ColorStateList c = TypedArrayUtils.m19600c(typedArray, xmlPullParser, theme, "tint", 1);
        if (c != null) {
            vectorDrawableCompatState.f5426c = c;
        }
        vectorDrawableCompatState.f5428e = TypedArrayUtils.m19602a(typedArray, xmlPullParser, "autoMirrored", 5, vectorDrawableCompatState.f5428e);
        vPathRenderer.f5418k = TypedArrayUtils.m19597f(typedArray, xmlPullParser, "viewportWidth", 7, vPathRenderer.f5418k);
        float f = TypedArrayUtils.m19597f(typedArray, xmlPullParser, "viewportHeight", 8, vPathRenderer.f5419l);
        vPathRenderer.f5419l = f;
        if (vPathRenderer.f5418k <= 0.0f) {
            throw new XmlPullParserException(typedArray.getPositionDescription() + "<vector> tag requires viewportWidth > 0");
        } else if (f > 0.0f) {
            vPathRenderer.f5416i = typedArray.getDimension(3, vPathRenderer.f5416i);
            float dimension = typedArray.getDimension(2, vPathRenderer.f5417j);
            vPathRenderer.f5417j = dimension;
            if (vPathRenderer.f5416i <= 0.0f) {
                throw new XmlPullParserException(typedArray.getPositionDescription() + "<vector> tag requires width > 0");
            } else if (dimension > 0.0f) {
                vPathRenderer.setAlpha(TypedArrayUtils.m19597f(typedArray, xmlPullParser, "alpha", 4, vPathRenderer.getAlpha()));
                String string = typedArray.getString(0);
                if (string != null) {
                    vPathRenderer.f5421n = string;
                    vPathRenderer.f5423p.put(string, vPathRenderer);
                }
            } else {
                throw new XmlPullParserException(typedArray.getPositionDescription() + "<vector> tag requires height > 0");
            }
        } else {
            throw new XmlPullParserException(typedArray.getPositionDescription() + "<vector> tag requires viewportHeight > 0");
        }
    }

    @Override // android.graphics.drawable.Drawable
    public boolean canApplyTheme() {
        Drawable drawable = this.f5368f;
        if (drawable == null) {
            return false;
        }
        DrawableCompat.m19511b(drawable);
        return false;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: d */
    public Object m16615d(String str) {
        return this.f5370g.f5425b.f5423p.get(str);
    }

    @Override // android.graphics.drawable.Drawable
    public void draw(Canvas canvas) {
        Drawable drawable = this.f5368f;
        if (drawable != null) {
            drawable.draw(canvas);
            return;
        }
        copyBounds(this.f5377n);
        if (this.f5377n.width() > 0 && this.f5377n.height() > 0) {
            ColorFilter colorFilter = this.f5372i;
            ColorFilter colorFilter2 = colorFilter;
            if (colorFilter == null) {
                colorFilter2 = this.f5371h;
            }
            canvas.getMatrix(this.f5376m);
            this.f5376m.getValues(this.f5375l);
            float abs = Math.abs(this.f5375l[0]);
            float abs2 = Math.abs(this.f5375l[4]);
            float abs3 = Math.abs(this.f5375l[1]);
            float abs4 = Math.abs(this.f5375l[3]);
            if (!(abs3 == 0.0f && abs4 == 0.0f)) {
                abs = 1.0f;
                abs2 = 1.0f;
            }
            int width = (int) (this.f5377n.width() * abs);
            int height = (int) (this.f5377n.height() * abs2);
            int min = Math.min(2048, width);
            int min2 = Math.min(2048, height);
            if (min > 0 && min2 > 0) {
                int save = canvas.save();
                Rect rect = this.f5377n;
                canvas.translate(rect.left, rect.top);
                if (m16613f()) {
                    canvas.translate(this.f5377n.width(), 0.0f);
                    canvas.scale(-1.0f, 1.0f);
                }
                this.f5377n.offsetTo(0, 0);
                this.f5370g.m16586c(min, min2);
                if (!this.f5374k) {
                    this.f5370g.m16579j(min, min2);
                } else if (!this.f5370g.m16587b()) {
                    this.f5370g.m16579j(min, min2);
                    this.f5370g.m16580i();
                }
                this.f5370g.m16585d(canvas, colorFilter2, this.f5377n);
                canvas.restoreToCount(save);
            }
        }
    }

    @Override // android.graphics.drawable.Drawable
    public int getAlpha() {
        Drawable drawable = this.f5368f;
        return drawable != null ? DrawableCompat.m19509d(drawable) : this.f5370g.f5425b.getRootAlpha();
    }

    @Override // android.graphics.drawable.Drawable
    public int getChangingConfigurations() {
        Drawable drawable = this.f5368f;
        return drawable != null ? drawable.getChangingConfigurations() : super.getChangingConfigurations() | this.f5370g.getChangingConfigurations();
    }

    @Override // android.graphics.drawable.Drawable
    public ColorFilter getColorFilter() {
        Drawable drawable = this.f5368f;
        return drawable != null ? DrawableCompat.m19508e(drawable) : this.f5372i;
    }

    @Override // android.graphics.drawable.Drawable
    public Drawable.ConstantState getConstantState() {
        if (this.f5368f != null && Build.VERSION.SDK_INT >= 24) {
            return new VectorDrawableDelegateState(this.f5368f.getConstantState());
        }
        this.f5370g.f5424a = getChangingConfigurations();
        return this.f5370g;
    }

    @Override // android.graphics.drawable.Drawable
    public int getIntrinsicHeight() {
        Drawable drawable = this.f5368f;
        return drawable != null ? drawable.getIntrinsicHeight() : (int) this.f5370g.f5425b.f5417j;
    }

    @Override // android.graphics.drawable.Drawable
    public int getIntrinsicWidth() {
        Drawable drawable = this.f5368f;
        return drawable != null ? drawable.getIntrinsicWidth() : (int) this.f5370g.f5425b.f5416i;
    }

    @Override // android.graphics.drawable.Drawable
    public int getOpacity() {
        Drawable drawable = this.f5368f;
        if (drawable != null) {
            return drawable.getOpacity();
        }
        return -3;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: h */
    public void m16611h(boolean z) {
        this.f5374k = z;
    }

    @Override // android.graphics.drawable.Drawable
    public void inflate(Resources resources, XmlPullParser xmlPullParser, AttributeSet attributeSet) throws XmlPullParserException, IOException {
        Drawable drawable = this.f5368f;
        if (drawable != null) {
            drawable.inflate(resources, xmlPullParser, attributeSet);
        } else {
            inflate(resources, xmlPullParser, attributeSet, null);
        }
    }

    @Override // android.graphics.drawable.Drawable
    public void inflate(Resources resources, XmlPullParser xmlPullParser, AttributeSet attributeSet, Resources.Theme theme) throws XmlPullParserException, IOException {
        Drawable drawable = this.f5368f;
        if (drawable != null) {
            DrawableCompat.m19506g(drawable, resources, xmlPullParser, attributeSet, theme);
            return;
        }
        VectorDrawableCompatState vectorDrawableCompatState = this.f5370g;
        vectorDrawableCompatState.f5425b = new VPathRenderer();
        TypedArray k = TypedArrayUtils.m19592k(resources, theme, attributeSet, AndroidResources.f5338a);
        m16610i(k, xmlPullParser, theme);
        k.recycle();
        vectorDrawableCompatState.f5424a = getChangingConfigurations();
        vectorDrawableCompatState.f5434k = true;
        m16614e(resources, xmlPullParser, attributeSet, theme);
        this.f5371h = m16609j(this.f5371h, vectorDrawableCompatState.f5426c, vectorDrawableCompatState.f5427d);
    }

    @Override // android.graphics.drawable.Drawable
    public void invalidateSelf() {
        Drawable drawable = this.f5368f;
        if (drawable != null) {
            drawable.invalidateSelf();
        } else {
            super.invalidateSelf();
        }
    }

    @Override // android.graphics.drawable.Drawable
    public boolean isAutoMirrored() {
        Drawable drawable = this.f5368f;
        return drawable != null ? DrawableCompat.m19505h(drawable) : this.f5370g.f5428e;
    }

    @Override // android.graphics.drawable.Drawable
    public boolean isStateful() {
        VectorDrawableCompatState vectorDrawableCompatState;
        ColorStateList colorStateList;
        Drawable drawable = this.f5368f;
        if (drawable != null) {
            return drawable.isStateful();
        }
        return super.isStateful() || ((vectorDrawableCompatState = this.f5370g) != null && (vectorDrawableCompatState.m16582g() || ((colorStateList = this.f5370g.f5426c) != null && colorStateList.isStateful())));
    }

    /* renamed from: j */
    PorterDuffColorFilter m16609j(PorterDuffColorFilter porterDuffColorFilter, ColorStateList colorStateList, PorterDuff.Mode mode) {
        if (colorStateList == null || mode == null) {
            return null;
        }
        return new PorterDuffColorFilter(colorStateList.getColorForState(getState(), 0), mode);
    }

    @Override // android.graphics.drawable.Drawable
    public Drawable mutate() {
        Drawable drawable = this.f5368f;
        if (drawable != null) {
            drawable.mutate();
            return this;
        }
        if (!this.f5373j && super.mutate() == this) {
            this.f5370g = new VectorDrawableCompatState(this.f5370g);
            this.f5373j = true;
        }
        return this;
    }

    @Override // androidx.vectordrawable.graphics.drawable.VectorDrawableCommon, android.graphics.drawable.Drawable
    protected void onBoundsChange(Rect rect) {
        Drawable drawable = this.f5368f;
        if (drawable != null) {
            drawable.setBounds(rect);
        }
    }

    @Override // android.graphics.drawable.Drawable
    protected boolean onStateChange(int[] iArr) {
        Drawable drawable = this.f5368f;
        if (drawable != null) {
            return drawable.setState(iArr);
        }
        VectorDrawableCompatState vectorDrawableCompatState = this.f5370g;
        ColorStateList colorStateList = vectorDrawableCompatState.f5426c;
        r12 = true;
        boolean z = false;
        if (colorStateList != null) {
            PorterDuff.Mode mode = vectorDrawableCompatState.f5427d;
            z = false;
            if (mode != null) {
                this.f5371h = m16609j(this.f5371h, colorStateList, mode);
                invalidateSelf();
                z = true;
            }
        }
        if (vectorDrawableCompatState.m16582g() && vectorDrawableCompatState.m16581h(iArr)) {
            invalidateSelf();
        }
        return z;
    }

    @Override // android.graphics.drawable.Drawable
    public void scheduleSelf(Runnable runnable, long j) {
        Drawable drawable = this.f5368f;
        if (drawable != null) {
            drawable.scheduleSelf(runnable, j);
        } else {
            super.scheduleSelf(runnable, j);
        }
    }

    @Override // android.graphics.drawable.Drawable
    public void setAlpha(int i) {
        Drawable drawable = this.f5368f;
        if (drawable != null) {
            drawable.setAlpha(i);
        } else if (this.f5370g.f5425b.getRootAlpha() != i) {
            this.f5370g.f5425b.setRootAlpha(i);
            invalidateSelf();
        }
    }

    @Override // android.graphics.drawable.Drawable
    public void setAutoMirrored(boolean z) {
        Drawable drawable = this.f5368f;
        if (drawable != null) {
            DrawableCompat.m19503j(drawable, z);
        } else {
            this.f5370g.f5428e = z;
        }
    }

    @Override // android.graphics.drawable.Drawable
    public void setColorFilter(ColorFilter colorFilter) {
        Drawable drawable = this.f5368f;
        if (drawable != null) {
            drawable.setColorFilter(colorFilter);
            return;
        }
        this.f5372i = colorFilter;
        invalidateSelf();
    }

    @Override // android.graphics.drawable.Drawable, androidx.core.graphics.drawable.TintAwareDrawable
    public void setTint(int i) {
        Drawable drawable = this.f5368f;
        if (drawable != null) {
            DrawableCompat.m19499n(drawable, i);
        } else {
            setTintList(ColorStateList.valueOf(i));
        }
    }

    @Override // android.graphics.drawable.Drawable, androidx.core.graphics.drawable.TintAwareDrawable
    public void setTintList(ColorStateList colorStateList) {
        Drawable drawable = this.f5368f;
        if (drawable != null) {
            DrawableCompat.m19498o(drawable, colorStateList);
            return;
        }
        VectorDrawableCompatState vectorDrawableCompatState = this.f5370g;
        if (vectorDrawableCompatState.f5426c != colorStateList) {
            vectorDrawableCompatState.f5426c = colorStateList;
            this.f5371h = m16609j(this.f5371h, colorStateList, vectorDrawableCompatState.f5427d);
            invalidateSelf();
        }
    }

    @Override // android.graphics.drawable.Drawable, androidx.core.graphics.drawable.TintAwareDrawable
    public void setTintMode(PorterDuff.Mode mode) {
        Drawable drawable = this.f5368f;
        if (drawable != null) {
            DrawableCompat.m19497p(drawable, mode);
            return;
        }
        VectorDrawableCompatState vectorDrawableCompatState = this.f5370g;
        if (vectorDrawableCompatState.f5427d != mode) {
            vectorDrawableCompatState.f5427d = mode;
            this.f5371h = m16609j(this.f5371h, vectorDrawableCompatState.f5426c, mode);
            invalidateSelf();
        }
    }

    @Override // android.graphics.drawable.Drawable
    public boolean setVisible(boolean z, boolean z2) {
        Drawable drawable = this.f5368f;
        return drawable != null ? drawable.setVisible(z, z2) : super.setVisible(z, z2);
    }

    @Override // android.graphics.drawable.Drawable
    public void unscheduleSelf(Runnable runnable) {
        Drawable drawable = this.f5368f;
        if (drawable != null) {
            drawable.unscheduleSelf(runnable);
        } else {
            super.unscheduleSelf(runnable);
        }
    }
}

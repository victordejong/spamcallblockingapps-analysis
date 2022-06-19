package androidx.transition;

import android.graphics.Path;
import android.graphics.PathMeasure;
import android.graphics.PointF;
import android.util.Property;
/* renamed from: androidx.transition.n */
/* loaded from: classes-dex2jar.jar:androidx/transition/n.class */
class C0504n<T> extends Property<T, Float> {

    /* renamed from: a */
    private final Property<T, PointF> f2743a;

    /* renamed from: b */
    private final PathMeasure f2744b;

    /* renamed from: c */
    private final float f2745c;

    /* renamed from: d */
    private final float[] f2746d = new float[2];

    /* renamed from: e */
    private final PointF f2747e = new PointF();

    /* renamed from: f */
    private float f2748f;

    public C0504n(Property<T, PointF> property, Path path) {
        super(Float.class, property.getName());
        this.f2743a = property;
        PathMeasure pathMeasure = new PathMeasure(path, false);
        this.f2744b = pathMeasure;
        this.f2745c = pathMeasure.getLength();
    }

    /* renamed from: a */
    public Float get(T t) {
        return Float.valueOf(this.f2748f);
    }

    /* renamed from: b */
    public void set(T t, Float f) {
        this.f2748f = f.floatValue();
        this.f2744b.getPosTan(this.f2745c * f.floatValue(), this.f2746d, null);
        PointF pointF = this.f2747e;
        float[] fArr = this.f2746d;
        pointF.x = fArr[0];
        pointF.y = fArr[1];
        this.f2743a.set(t, pointF);
    }
}

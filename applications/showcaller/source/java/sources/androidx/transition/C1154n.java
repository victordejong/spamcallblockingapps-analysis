package androidx.transition;

import android.graphics.Path;
import android.graphics.PathMeasure;
import android.graphics.PointF;
import android.util.Property;
/* renamed from: androidx.transition.n */
/* loaded from: classes-dex2jar.jar:androidx/transition/n.class */
class C1154n<T> extends Property<T, Float> {

    /* renamed from: a */
    private final Property<T, PointF> f4951a;

    /* renamed from: b */
    private final PathMeasure f4952b;

    /* renamed from: c */
    private final float f4953c;

    /* renamed from: d */
    private final float[] f4954d = new float[2];

    /* renamed from: e */
    private final PointF f4955e = new PointF();

    /* renamed from: f */
    private float f4956f;

    public C1154n(Property<T, PointF> property, Path path) {
        super(Float.class, property.getName());
        this.f4951a = property;
        PathMeasure pathMeasure = new PathMeasure(path, false);
        this.f4952b = pathMeasure;
        this.f4953c = pathMeasure.getLength();
    }

    /* renamed from: a */
    public Float get(T t) {
        return Float.valueOf(this.f4956f);
    }

    /* renamed from: b */
    public void set(T t, Float f) {
        this.f4956f = f.floatValue();
        this.f4952b.getPosTan(this.f4953c * f.floatValue(), this.f4954d, null);
        PointF pointF = this.f4955e;
        float[] fArr = this.f4954d;
        pointF.x = fArr[0];
        pointF.y = fArr[1];
        this.f4951a.set(t, pointF);
    }
}

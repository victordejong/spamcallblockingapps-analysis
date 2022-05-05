package androidx.transition;

import android.graphics.Path;
import android.graphics.PathMeasure;
import android.graphics.PointF;
import android.util.Property;
/* loaded from: classes-dex2jar.jar:androidx/transition/PathProperty.class */
class PathProperty<T> extends Property<T, Float> {

    /* renamed from: a */
    private final Property<T, PointF> f5177a;

    /* renamed from: b */
    private final PathMeasure f5178b;

    /* renamed from: c */
    private final float f5179c;

    /* renamed from: d */
    private final float[] f5180d = new float[2];

    /* renamed from: e */
    private final PointF f5181e = new PointF();

    /* renamed from: f */
    private float f5182f;

    /* JADX INFO: Access modifiers changed from: package-private */
    public PathProperty(Property<T, PointF> property, Path path) {
        super(Float.class, property.getName());
        this.f5177a = property;
        PathMeasure pathMeasure = new PathMeasure(path, false);
        this.f5178b = pathMeasure;
        this.f5179c = pathMeasure.getLength();
    }

    /* renamed from: a */
    public Float get(T t) {
        return Float.valueOf(this.f5182f);
    }

    /* renamed from: b */
    public void set(T t, Float f) {
        this.f5182f = f.floatValue();
        this.f5178b.getPosTan(this.f5179c * f.floatValue(), this.f5180d, null);
        PointF pointF = this.f5181e;
        float[] fArr = this.f5180d;
        pointF.x = fArr[0];
        pointF.y = fArr[1];
        this.f5177a.set(t, pointF);
    }
}

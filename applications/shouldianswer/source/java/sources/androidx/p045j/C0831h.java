package androidx.p045j;

import android.graphics.Path;
import android.graphics.PathMeasure;
import android.graphics.PointF;
import android.util.Property;
/* renamed from: androidx.j.h */
/* loaded from: classes-dex2jar.jar:androidx/j/h.class */
class C0831h<T> extends Property<T, Float> {

    /* renamed from: a */
    private final Property<T, PointF> f2651a;

    /* renamed from: b */
    private final PathMeasure f2652b;

    /* renamed from: c */
    private final float f2653c;

    /* renamed from: d */
    private final float[] f2654d = new float[2];

    /* renamed from: e */
    private final PointF f2655e = new PointF();

    /* renamed from: f */
    private float f2656f;

    public C0831h(Property<T, PointF> property, Path path) {
        super(Float.class, property.getName());
        this.f2651a = property;
        this.f2652b = new PathMeasure(path, false);
        this.f2653c = this.f2652b.getLength();
    }

    /* renamed from: a */
    public Float get(T t) {
        return Float.valueOf(this.f2656f);
    }

    /* renamed from: a */
    public void set(T t, Float f) {
        this.f2656f = f.floatValue();
        this.f2652b.getPosTan(this.f2653c * f.floatValue(), this.f2654d, null);
        PointF pointF = this.f2655e;
        float[] fArr = this.f2654d;
        pointF.x = fArr[0];
        pointF.y = fArr[1];
        this.f2651a.set(t, pointF);
    }
}

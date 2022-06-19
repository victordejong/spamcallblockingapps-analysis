package androidx.p045j;

import android.graphics.Path;
import android.graphics.PathMeasure;
import android.graphics.PointF;
import android.util.Property;
/* renamed from: androidx.j.h */
/* loaded from: classes-dex2jar.jar:androidx/j/h.class */
class C0801h<T> extends Property<T, Float> {

    /* renamed from: a */
    private final Property<T, PointF> f2751a;

    /* renamed from: b */
    private final PathMeasure f2752b;

    /* renamed from: c */
    private final float f2753c;

    /* renamed from: d */
    private final float[] f2754d = new float[2];

    /* renamed from: e */
    private final PointF f2755e = new PointF();

    /* renamed from: f */
    private float f2756f;

    public C0801h(Property<T, PointF> property, Path path) {
        super(Float.class, property.getName());
        this.f2751a = property;
        this.f2752b = new PathMeasure(path, false);
        this.f2753c = this.f2752b.getLength();
    }

    /* renamed from: a */
    public Float get(T t) {
        return Float.valueOf(this.f2756f);
    }

    /* renamed from: a */
    public void set(T t, Float f) {
        this.f2756f = f.floatValue();
        this.f2752b.getPosTan(this.f2753c * f.floatValue(), this.f2754d, null);
        this.f2755e.x = this.f2754d[0];
        this.f2755e.y = this.f2754d[1];
        this.f2751a.set(t, this.f2755e);
    }
}

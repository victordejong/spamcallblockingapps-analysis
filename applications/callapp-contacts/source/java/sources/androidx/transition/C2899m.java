package androidx.transition;

import android.graphics.Path;
import android.graphics.PathMeasure;
import android.graphics.PointF;
import android.util.Property;
/* renamed from: androidx.transition.m */
/* loaded from: classes-dex2jar.jar:androidx/transition/m.class */
final class C2899m<T> extends Property<T, Float> {

    /* renamed from: a */
    private final Property<T, PointF> f10892a;

    /* renamed from: b */
    private final PathMeasure f10893b;

    /* renamed from: c */
    private final float f10894c;

    /* renamed from: d */
    private final float[] f10895d = new float[2];

    /* renamed from: e */
    private final PointF f10896e = new PointF();

    /* renamed from: f */
    private float f10897f;

    public C2899m(Property<T, PointF> property, Path path) {
        super(Float.class, property.getName());
        this.f10892a = property;
        PathMeasure pathMeasure = new PathMeasure(path, false);
        this.f10893b = pathMeasure;
        this.f10894c = pathMeasure.getLength();
    }

    @Override // android.util.Property
    public final /* synthetic */ Float get(Object obj) {
        return Float.valueOf(this.f10897f);
    }

    @Override // android.util.Property
    public final /* synthetic */ void set(Object obj, Float f) {
        Float f2 = f;
        this.f10897f = f2.floatValue();
        this.f10893b.getPosTan(this.f10894c * f2.floatValue(), this.f10895d, null);
        this.f10896e.x = this.f10895d[0];
        this.f10896e.y = this.f10895d[1];
        this.f10892a.set(obj, this.f10896e);
    }
}

package androidx.transition;

import android.graphics.Path;
import android.graphics.PathMeasure;
import android.graphics.PointF;
import android.util.Property;
/* loaded from: classes-dex2jar.jar:androidx/transition/m.class */
final class m<T> extends Property<T, Float> {

    /* renamed from: a  reason: collision with root package name */
    private final Property<T, PointF> f5823a;

    /* renamed from: b  reason: collision with root package name */
    private final PathMeasure f5824b;

    /* renamed from: c  reason: collision with root package name */
    private final float f5825c;

    /* renamed from: d  reason: collision with root package name */
    private final float[] f5826d = new float[2];
    private final PointF e = new PointF();
    private float f;

    /* JADX INFO: Access modifiers changed from: package-private */
    public m(Property<T, PointF> property, Path path) {
        super(Float.class, property.getName());
        this.f5823a = property;
        PathMeasure pathMeasure = new PathMeasure(path, false);
        this.f5824b = pathMeasure;
        this.f5825c = pathMeasure.getLength();
    }

    @Override // android.util.Property
    public final /* synthetic */ Float get(Object obj) {
        return Float.valueOf(this.f);
    }

    @Override // android.util.Property
    public final /* synthetic */ void set(Object obj, Float f) {
        Float f2 = f;
        this.f = f2.floatValue();
        this.f5824b.getPosTan(this.f5825c * f2.floatValue(), this.f5826d, null);
        this.e.x = this.f5826d[0];
        this.e.y = this.f5826d[1];
        this.f5823a.set(obj, this.e);
    }
}

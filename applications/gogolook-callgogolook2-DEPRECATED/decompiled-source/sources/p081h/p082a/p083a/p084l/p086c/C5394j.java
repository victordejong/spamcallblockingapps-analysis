package p081h.p082a.p083a.p084l.p086c;

import android.graphics.PointF;
import java.util.List;
import p081h.p082a.p083a.p084l.C5358a;
/* renamed from: h.a.a.l.c.j */
/* loaded from: classes-dex2jar.jar:h/a/a/l/c/j.class */
public class C5394j extends AbstractC5388f<PointF> {

    /* renamed from: f */
    public final PointF f13512f = new PointF();

    public C5394j(List<C5358a<PointF>> list) {
        super(list);
    }

    @Override // p081h.p082a.p083a.p084l.p086c.AbstractC5382a
    /* renamed from: a */
    public PointF mo25515a(C5358a<PointF> aVar, float f) {
        PointF pointF;
        PointF pointF2 = aVar.f13377b;
        if (pointF2 == null || (pointF = aVar.f13378c) == null) {
            throw new IllegalStateException("Missing values for keyframe.");
        }
        PointF pointF3 = pointF2;
        PointF pointF4 = pointF;
        PointF pointF5 = this.f13512f;
        float f2 = pointF3.x;
        float f3 = pointF4.x;
        float f4 = pointF3.y;
        pointF5.set(f2 + ((f3 - f2) * f), f4 + (f * (pointF4.y - f4)));
        return this.f13512f;
    }
}

package p081h.p082a.p083a.p084l.p086c;

import android.graphics.Path;
import android.graphics.PathMeasure;
import android.graphics.PointF;
import java.util.List;
import p081h.p082a.p083a.p084l.C5358a;
/* renamed from: h.a.a.l.c.i */
/* loaded from: classes-dex2jar.jar:h/a/a/l/c/i.class */
public class C5393i extends AbstractC5388f<PointF> {

    /* renamed from: f */
    public final PointF f13508f = new PointF();

    /* renamed from: g */
    public final float[] f13509g = new float[2];

    /* renamed from: h */
    public C5390h f13510h;

    /* renamed from: i */
    public PathMeasure f13511i;

    public C5393i(List<? extends C5358a<PointF>> list) {
        super(list);
    }

    @Override // p081h.p082a.p083a.p084l.p086c.AbstractC5382a
    /* renamed from: a */
    public PointF mo25515a(C5358a<PointF> aVar, float f) {
        C5390h hVar = (C5390h) aVar;
        Path e = hVar.m25520e();
        if (e == null) {
            return aVar.f13377b;
        }
        if (this.f13510h != hVar) {
            this.f13511i = new PathMeasure(e, false);
            this.f13510h = hVar;
        }
        PathMeasure pathMeasure = this.f13511i;
        pathMeasure.getPosTan(f * pathMeasure.getLength(), this.f13509g, null);
        PointF pointF = this.f13508f;
        float[] fArr = this.f13509g;
        pointF.set(fArr[0], fArr[1]);
        return this.f13508f;
    }
}

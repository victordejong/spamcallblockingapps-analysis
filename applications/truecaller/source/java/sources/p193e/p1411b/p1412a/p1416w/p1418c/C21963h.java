package p193e.p1411b.p1412a.p1416w.p1418c;

import android.graphics.Path;
import android.graphics.PathMeasure;
import android.graphics.PointF;
import p193e.p1411b.p1412a.C21913e;
import p193e.p1411b.p1412a.p1414b0.C21905e;
import p193e.p1411b.p1412a.p1415c0.C21907a;
/* renamed from: e.b.a.w.c.h */
/* loaded from: classes-dex2jar.jar:e/b/a/w/c/h.class */
public class C21963h extends C21907a<PointF> {

    /* renamed from: o */
    public Path f60966o;

    /* renamed from: p */
    public final C21907a<PointF> f60967p;

    public C21963h(C21913e c21913e, C21907a<PointF> c21907a) {
        super(c21913e, c21907a.f60804b, c21907a.f60805c, c21907a.f60806d, c21907a.f60807e, c21907a.f60808f);
        this.f60967p = c21907a;
        m8864e();
    }

    /* renamed from: e */
    public void m8864e() {
        T t;
        T t2 = this.f60805c;
        boolean z = (t2 == 0 || (t = this.f60804b) == 0 || !((PointF) t).equals(((PointF) t2).x, ((PointF) t2).y)) ? false : true;
        T t3 = this.f60805c;
        if (t3 == 0 || z) {
            return;
        }
        PointF pointF = (PointF) this.f60804b;
        PointF pointF2 = (PointF) t3;
        C21907a<PointF> c21907a = this.f60967p;
        PointF pointF3 = c21907a.f60815m;
        PointF pointF4 = c21907a.f60816n;
        PathMeasure pathMeasure = C21905e.f60795a;
        Path path = new Path();
        path.moveTo(pointF.x, pointF.y);
        if (pointF3 == null || pointF4 == null || (pointF3.length() == 0.0f && pointF4.length() == 0.0f)) {
            path.lineTo(pointF2.x, pointF2.y);
        } else {
            float f = pointF.x;
            float f2 = pointF3.x;
            float f3 = pointF.y;
            float f4 = pointF3.y;
            float f5 = pointF2.x;
            float f6 = pointF4.x;
            float f7 = pointF2.y;
            path.cubicTo(f2 + f, f3 + f4, f5 + f6, f7 + pointF4.y, f5, f7);
        }
        this.f60966o = path;
    }
}

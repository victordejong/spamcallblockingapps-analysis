package p193e.p1411b.p1412a.p1416w.p1418c;

import android.graphics.Path;
import android.graphics.PointF;
import java.util.List;
import p193e.p1411b.p1412a.C21906c;
import p193e.p1411b.p1412a.p1414b0.C21904d;
import p193e.p1411b.p1412a.p1415c0.C21907a;
import p193e.p1411b.p1412a.p1420y.C21970a;
import p193e.p1411b.p1412a.p1420y.p1422k.C22000l;
import p193e.p1432d.p1439c.p1440a.C22128a;
/* renamed from: e.b.a.w.c.l */
/* loaded from: classes-dex2jar.jar:e/b/a/w/c/l.class */
public class C21964l extends AbstractC21959a<C22000l, Path> {

    /* renamed from: l */
    public final C22000l f60968l = new C22000l();

    /* renamed from: m */
    public final Path f60969m = new Path();

    public C21964l(List<C21907a<C22000l>> list) {
        super(list);
    }

    @Override // p193e.p1411b.p1412a.p1416w.p1418c.AbstractC21959a
    /* renamed from: g */
    public Path mo8854g(C21907a<C22000l> c21907a, float f) {
        C22000l c22000l = c21907a.f60804b;
        C22000l c22000l2 = c21907a.f60805c;
        C22000l c22000l3 = this.f60968l;
        if (c22000l3.f61123b == null) {
            c22000l3.f61123b = new PointF();
        }
        c22000l3.f61124c = c22000l.f61124c || c22000l2.f61124c;
        if (c22000l.f61122a.size() != c22000l2.f61122a.size()) {
            StringBuilder m8728C = C22128a.m8728C("Curves must have the same number of control points. Shape 1: ");
            m8728C.append(c22000l.f61122a.size());
            m8728C.append("\tShape 2: ");
            m8728C.append(c22000l2.f61122a.size());
            C21906c.m8915b(m8728C.toString());
        }
        int min = Math.min(c22000l.f61122a.size(), c22000l2.f61122a.size());
        if (c22000l3.f61122a.size() < min) {
            for (int size = c22000l3.f61122a.size(); size < min; size++) {
                c22000l3.f61122a.add(new C21970a());
            }
        } else if (c22000l3.f61122a.size() > min) {
            for (int size2 = c22000l3.f61122a.size() - 1; size2 >= min; size2--) {
                List<C21970a> list = c22000l3.f61122a;
                list.remove(list.size() - 1);
            }
        }
        PointF pointF = c22000l.f61123b;
        PointF pointF2 = c22000l2.f61123b;
        float m8922e = C21904d.m8922e(pointF.x, pointF2.x, f);
        float m8922e2 = C21904d.m8922e(pointF.y, pointF2.y, f);
        if (c22000l3.f61123b == null) {
            c22000l3.f61123b = new PointF();
        }
        c22000l3.f61123b.set(m8922e, m8922e2);
        for (int size3 = c22000l3.f61122a.size() - 1; size3 >= 0; size3--) {
            C21970a c21970a = c22000l.f61122a.get(size3);
            C21970a c21970a2 = c22000l2.f61122a.get(size3);
            PointF pointF3 = c21970a.f60998a;
            PointF pointF4 = c21970a.f60999b;
            PointF pointF5 = c21970a.f61000c;
            PointF pointF6 = c21970a2.f60998a;
            PointF pointF7 = c21970a2.f60999b;
            PointF pointF8 = c21970a2.f61000c;
            c22000l3.f61122a.get(size3).f60998a.set(C21904d.m8922e(pointF3.x, pointF6.x, f), C21904d.m8922e(pointF3.y, pointF6.y, f));
            c22000l3.f61122a.get(size3).f60999b.set(C21904d.m8922e(pointF4.x, pointF7.x, f), C21904d.m8922e(pointF4.y, pointF7.y, f));
            c22000l3.f61122a.get(size3).f61000c.set(C21904d.m8922e(pointF5.x, pointF8.x, f), C21904d.m8922e(pointF5.y, pointF8.y, f));
        }
        C22000l c22000l4 = this.f60968l;
        Path path = this.f60969m;
        path.reset();
        PointF pointF9 = c22000l4.f61123b;
        path.moveTo(pointF9.x, pointF9.y);
        C21904d.f60794a.set(pointF9.x, pointF9.y);
        for (int i = 0; i < c22000l4.f61122a.size(); i++) {
            C21970a c21970a3 = c22000l4.f61122a.get(i);
            PointF pointF10 = c21970a3.f60998a;
            PointF pointF11 = c21970a3.f60999b;
            PointF pointF12 = c21970a3.f61000c;
            if (!pointF10.equals(C21904d.f60794a) || !pointF11.equals(pointF12)) {
                path.cubicTo(pointF10.x, pointF10.y, pointF11.x, pointF11.y, pointF12.x, pointF12.y);
            } else {
                path.lineTo(pointF12.x, pointF12.y);
            }
            C21904d.f60794a.set(pointF12.x, pointF12.y);
        }
        if (c22000l4.f61124c) {
            path.close();
        }
        return this.f60969m;
    }
}

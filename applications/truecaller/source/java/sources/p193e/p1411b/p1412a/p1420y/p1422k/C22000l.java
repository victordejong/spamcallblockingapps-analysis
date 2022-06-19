package p193e.p1411b.p1412a.p1420y.p1422k;

import android.graphics.PointF;
import java.util.ArrayList;
import java.util.List;
import p193e.p1411b.p1412a.p1420y.C21970a;
import p193e.p1432d.p1439c.p1440a.C22128a;
/* renamed from: e.b.a.y.k.l */
/* loaded from: classes-dex2jar.jar:e/b/a/y/k/l.class */
public class C22000l {

    /* renamed from: a */
    public final List<C21970a> f61122a;

    /* renamed from: b */
    public PointF f61123b;

    /* renamed from: c */
    public boolean f61124c;

    public C22000l() {
        this.f61122a = new ArrayList();
    }

    public C22000l(PointF pointF, boolean z, List<C21970a> list) {
        this.f61123b = pointF;
        this.f61124c = z;
        this.f61122a = new ArrayList(list);
    }

    public String toString() {
        StringBuilder m8728C = C22128a.m8728C("ShapeData{numCurves=");
        m8728C.append(this.f61122a.size());
        m8728C.append("closed=");
        return C22128a.m8598m(m8728C, this.f61124c, '}');
    }
}

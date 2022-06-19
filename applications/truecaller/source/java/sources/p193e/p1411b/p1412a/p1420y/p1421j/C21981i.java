package p193e.p1411b.p1412a.p1420y.p1421j;

import android.graphics.PointF;
import java.util.List;
import p193e.p1411b.p1412a.p1415c0.C21907a;
import p193e.p1411b.p1412a.p1416w.p1418c.AbstractC21959a;
import p193e.p1411b.p1412a.p1416w.p1418c.C21965m;
/* renamed from: e.b.a.y.j.i */
/* loaded from: classes-dex2jar.jar:e/b/a/y/j/i.class */
public class C21981i implements AbstractC21984m<PointF, PointF> {

    /* renamed from: a */
    public final b f61034a;

    /* renamed from: b */
    public final b f61035b;

    public C21981i(b bVar, b bVar2) {
        this.f61034a = bVar;
        this.f61035b = bVar2;
    }

    @Override // p193e.p1411b.p1412a.p1420y.p1421j.AbstractC21984m
    /* renamed from: e */
    public boolean mo8839e() {
        return this.f61034a.mo8839e() && this.f61035b.mo8839e();
    }

    @Override // p193e.p1411b.p1412a.p1420y.p1421j.AbstractC21984m
    /* renamed from: f */
    public AbstractC21959a<PointF, PointF> mo8840f() {
        return new C21965m(this.f61034a.f(), this.f61035b.f());
    }

    @Override // p193e.p1411b.p1412a.p1420y.p1421j.AbstractC21984m
    /* renamed from: g */
    public List<C21907a<PointF>> mo8838g() {
        throw new UnsupportedOperationException("Cannot call getKeyframes on AnimatableSplitDimensionPathValue.");
    }
}

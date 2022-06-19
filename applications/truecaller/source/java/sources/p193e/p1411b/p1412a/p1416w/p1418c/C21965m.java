package p193e.p1411b.p1412a.p1416w.p1418c;

import android.graphics.PointF;
import java.util.Collections;
import p193e.p1411b.p1412a.p1415c0.C21907a;
/* renamed from: e.b.a.w.c.m */
/* loaded from: classes-dex2jar.jar:e/b/a/w/c/m.class */
public class C21965m extends AbstractC21959a<PointF, PointF> {

    /* renamed from: l */
    public final PointF f60970l = new PointF();

    /* renamed from: m */
    public final AbstractC21959a<Float, Float> f60971m;

    /* renamed from: n */
    public final AbstractC21959a<Float, Float> f60972n;

    public C21965m(AbstractC21959a<Float, Float> abstractC21959a, AbstractC21959a<Float, Float> abstractC21959a2) {
        super(Collections.emptyList());
        this.f60971m = abstractC21959a;
        this.f60972n = abstractC21959a2;
        mo8863i(this.f60955d);
    }

    @Override // p193e.p1411b.p1412a.p1416w.p1418c.AbstractC21959a
    /* renamed from: f */
    public PointF mo8855f() {
        return this.f60970l;
    }

    @Override // p193e.p1411b.p1412a.p1416w.p1418c.AbstractC21959a
    /* renamed from: g */
    public PointF mo8854g(C21907a<PointF> c21907a, float f) {
        return this.f60970l;
    }

    @Override // p193e.p1411b.p1412a.p1416w.p1418c.AbstractC21959a
    /* renamed from: i */
    public void mo8863i(float f) {
        this.f60971m.mo8863i(f);
        this.f60972n.mo8863i(f);
        this.f60970l.set(this.f60971m.mo8855f().floatValue(), this.f60972n.mo8855f().floatValue());
        for (int i = 0; i < this.f60952a.size(); i++) {
            this.f60952a.get(i).mo8834d();
        }
    }
}

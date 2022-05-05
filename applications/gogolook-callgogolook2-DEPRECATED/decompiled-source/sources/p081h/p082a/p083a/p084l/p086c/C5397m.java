package p081h.p082a.p083a.p084l.p086c;

import android.graphics.PointF;
import java.util.Collections;
import p081h.p082a.p083a.p084l.C5358a;
/* renamed from: h.a.a.l.c.m */
/* loaded from: classes-dex2jar.jar:h/a/a/l/c/m.class */
public class C5397m extends AbstractC5382a<PointF, PointF> {

    /* renamed from: f */
    public final PointF f13515f = new PointF();

    /* renamed from: g */
    public final AbstractC5382a<Float, Float> f13516g;

    /* renamed from: h */
    public final AbstractC5382a<Float, Float> f13517h;

    public C5397m(AbstractC5382a<Float, Float> aVar, AbstractC5382a<Float, Float> aVar2) {
        super(Collections.emptyList());
        this.f13516g = aVar;
        this.f13517h = aVar2;
    }

    /* JADX WARN: Can't rename method to resolve collision */
    @Override // p081h.p082a.p083a.p084l.p086c.AbstractC5382a
    /* renamed from: a */
    public PointF mo25515a(C5358a<PointF> aVar, float f) {
        return this.f13515f;
    }

    @Override // p081h.p082a.p083a.p084l.p086c.AbstractC5382a
    /* renamed from: a */
    public void mo25518a(float f) {
        this.f13516g.mo25518a(f);
        this.f13517h.mo25518a(f);
        this.f13515f.set(this.f13516g.mo25516f().floatValue(), this.f13517h.mo25516f().floatValue());
        for (int i = 0; i < this.f13498a.size(); i++) {
            this.f13498a.get(i).mo25321a();
        }
    }

    /* JADX WARN: Can't rename method to resolve collision */
    @Override // p081h.p082a.p083a.p084l.p086c.AbstractC5382a
    /* renamed from: f */
    public PointF mo25516f() {
        return mo25515a((C5358a<PointF>) null, 0.0f);
    }
}

package p081h.p082a.p083a.p084l.p086c;

import java.util.List;
import p081h.p082a.p083a.p084l.C5358a;
import p081h.p082a.p083a.p088n.p090l.C5461c;
/* renamed from: h.a.a.l.c.d */
/* loaded from: classes-dex2jar.jar:h/a/a/l/c/d.class */
public class C5386d extends AbstractC5388f<C5461c> {

    /* renamed from: f */
    public final C5461c f13503f;

    public C5386d(List<? extends C5358a<C5461c>> list) {
        super(list);
        int i = 0;
        C5461c cVar = (C5461c) ((C5358a) list.get(0)).f13377b;
        i = cVar != null ? cVar.m25430c() : i;
        this.f13503f = new C5461c(new float[i], new int[i]);
    }

    @Override // p081h.p082a.p083a.p084l.p086c.AbstractC5382a
    /* renamed from: a */
    public C5461c mo25515a(C5358a<C5461c> aVar, float f) {
        this.f13503f.m25432a(aVar.f13377b, aVar.f13378c, f);
        return this.f13503f;
    }
}

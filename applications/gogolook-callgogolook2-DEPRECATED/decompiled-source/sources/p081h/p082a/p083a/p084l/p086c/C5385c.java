package p081h.p082a.p083a.p084l.p086c;

import java.util.List;
import p081h.p082a.p083a.p084l.C5358a;
import p081h.p082a.p083a.p092o.C5529e;
/* renamed from: h.a.a.l.c.c */
/* loaded from: classes-dex2jar.jar:h/a/a/l/c/c.class */
public class C5385c extends AbstractC5388f<Float> {
    public C5385c(List<C5358a<Float>> list) {
        super(list);
    }

    @Override // p081h.p082a.p083a.p084l.p086c.AbstractC5382a
    /* renamed from: a */
    public Float mo25515a(C5358a<Float> aVar, float f) {
        Float f2 = aVar.f13377b;
        if (f2 != null && aVar.f13378c != null) {
            return Float.valueOf(C5529e.m25256b(f2.floatValue(), aVar.f13378c.floatValue(), f));
        }
        throw new IllegalStateException("Missing values for keyframe.");
    }
}

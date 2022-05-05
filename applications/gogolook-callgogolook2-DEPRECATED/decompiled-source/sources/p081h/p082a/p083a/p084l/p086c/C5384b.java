package p081h.p082a.p083a.p084l.p086c;

import java.util.List;
import p081h.p082a.p083a.p084l.C5358a;
import p081h.p082a.p083a.p092o.C5523a;
/* renamed from: h.a.a.l.c.b */
/* loaded from: classes-dex2jar.jar:h/a/a/l/c/b.class */
public class C5384b extends AbstractC5388f<Integer> {
    public C5384b(List<C5358a<Integer>> list) {
        super(list);
    }

    @Override // p081h.p082a.p083a.p084l.p086c.AbstractC5382a
    /* renamed from: a */
    public Integer mo25515a(C5358a<Integer> aVar, float f) {
        Integer num = aVar.f13377b;
        if (num != null && aVar.f13378c != null) {
            return Integer.valueOf(C5523a.m25282a(f, num.intValue(), aVar.f13378c.intValue()));
        }
        throw new IllegalStateException("Missing values for keyframe.");
    }
}

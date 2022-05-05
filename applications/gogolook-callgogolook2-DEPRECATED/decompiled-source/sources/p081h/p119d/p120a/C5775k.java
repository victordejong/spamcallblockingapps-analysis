package p081h.p119d.p120a;

import java.io.InputStream;
import p081h.p119d.p120a.C5780o;
import p081h.p119d.p120a.p124s.p131j.AbstractC5918l;
import p081h.p119d.p120a.p124s.p134k.p139i.C5988b;
import p081h.p119d.p120a.p124s.p134k.p141k.AbstractC6019d;
import p081h.p119d.p120a.p144v.C6048e;
/* renamed from: h.d.a.k */
/* loaded from: classes-dex2jar.jar:h/d/a/k.class */
public class C5775k<ModelType> extends C5774j<ModelType> {
    public C5775k(C5770h<ModelType, ?, ?, ?> hVar, AbstractC5918l<ModelType, InputStream> lVar, C5780o.C5786e eVar) {
        super(m24487a(hVar.f14438c, lVar, C5988b.class, (AbstractC6019d) null), C5988b.class, hVar);
        m24489j();
    }

    /* renamed from: a */
    public static <A, R> C6048e<A, InputStream, C5988b, R> m24487a(C5776l lVar, AbstractC5918l<A, InputStream> lVar2, Class<R> cls, AbstractC6019d<C5988b, R> dVar) {
        if (lVar2 == null) {
            return null;
        }
        AbstractC6019d<C5988b, R> dVar2 = dVar;
        if (dVar == null) {
            dVar2 = lVar.m24472b(C5988b.class, cls);
        }
        return new C6048e<>(lVar2, dVar2, lVar.m24478a(InputStream.class, C5988b.class));
    }
}

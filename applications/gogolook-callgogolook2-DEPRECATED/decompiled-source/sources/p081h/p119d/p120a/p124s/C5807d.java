package p081h.p119d.p120a.p124s;

import java.util.Arrays;
import java.util.Collection;
import java.util.Iterator;
import p081h.p119d.p120a.p124s.p126i.AbstractC5848l;
/* renamed from: h.d.a.s.d */
/* loaded from: classes-dex2jar.jar:h/d/a/s/d.class */
public class C5807d<T> implements AbstractC5810g<T> {

    /* renamed from: a */
    public final Collection<? extends AbstractC5810g<T>> f14654a;

    /* renamed from: b */
    public String f14655b;

    @SafeVarargs
    public C5807d(AbstractC5810g<T>... gVarArr) {
        if (gVarArr.length >= 1) {
            this.f14654a = Arrays.asList(gVarArr);
            return;
        }
        throw new IllegalArgumentException("MultiTransformation must contain at least one Transformation");
    }

    @Override // p081h.p119d.p120a.p124s.AbstractC5810g
    /* renamed from: a */
    public AbstractC5848l<T> mo832a(AbstractC5848l<T> lVar, int i, int i2) {
        Iterator<? extends AbstractC5810g<T>> it = this.f14654a.iterator();
        AbstractC5848l<T> lVar2 = lVar;
        while (it.hasNext()) {
            AbstractC5848l<T> a = ((AbstractC5810g) it.next()).mo832a(lVar2, i, i2);
            if (lVar2 != null && !lVar2.equals(lVar) && !lVar2.equals(a)) {
                lVar2.mo24036b();
            }
            lVar2 = a;
        }
        return lVar2;
    }

    @Override // p081h.p119d.p120a.p124s.AbstractC5810g
    public String getId() {
        if (this.f14655b == null) {
            StringBuilder sb = new StringBuilder();
            Iterator<? extends AbstractC5810g<T>> it = this.f14654a.iterator();
            while (it.hasNext()) {
                sb.append(((AbstractC5810g) it.next()).getId());
            }
            this.f14655b = sb.toString();
        }
        return this.f14655b;
    }
}

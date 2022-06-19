package p193e.p194a.p195a.p200c.p208k;

import p193e.p194a.p1111o2.AbstractC18895d;
import p193e.p194a.p195a.p200c.AbstractC5794w3;
import p193e.p194a.p195a.p231g.p234l0.AbstractC6225a;
import s1.z.c.l;
/* renamed from: e.a.a.c.k.b */
/* loaded from: classes5-dex2jar.jar:e/a/a/c/k/b.class */
public abstract class AbstractC5431b<V> extends AbstractC18895d<V> {

    /* renamed from: b */
    public final AbstractC5794w3 f18532b;

    public AbstractC5431b(AbstractC5794w3 abstractC5794w3) {
        l.e(abstractC5794w3, "items");
        this.f18532b = abstractC5794w3;
    }

    @Override // p193e.p194a.p1111o2.AbstractC18894c, p193e.p194a.p1111o2.AbstractC18893b
    public int getItemCount() {
        return this.f18532b.getCount();
    }

    /* JADX WARN: Type inference failed for: r0v7, types: [long] */
    @Override // p193e.p194a.p1111o2.AbstractC18893b
    public long getItemId(int i) {
        AbstractC6225a item = this.f18532b.getItem(i);
        return item != null ? item.getId() : (char) 65535;
    }
}

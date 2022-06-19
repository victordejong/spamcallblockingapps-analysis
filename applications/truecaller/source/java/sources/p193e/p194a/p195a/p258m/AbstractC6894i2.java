package p193e.p194a.p195a.p258m;

import p193e.p194a.p1111o2.AbstractC18895d;
import s1.z.c.l;
/* renamed from: e.a.a.m.i2 */
/* loaded from: classes7-dex2jar.jar:e/a/a/m/i2.class */
public abstract class AbstractC6894i2<V> extends AbstractC18895d<V> {

    /* renamed from: b */
    public final AbstractC6900j2 f22485b;

    public AbstractC6894i2(AbstractC6900j2 abstractC6900j2) {
        l.e(abstractC6900j2, "promoProvider");
        this.f22485b = abstractC6900j2;
    }

    /* renamed from: A */
    public abstract boolean mo30360A(AbstractC6798d1 abstractC6798d1);

    @Override // p193e.p194a.p1111o2.AbstractC18894c, p193e.p194a.p1111o2.AbstractC18893b
    public int getItemCount() {
        return 1;
    }

    @Override // p193e.p194a.p1111o2.AbstractC18893b
    public long getItemId(int i) {
        return i;
    }

    @Override // p193e.p194a.p1111o2.AbstractC18908p
    /* renamed from: m */
    public boolean mo14344m(int i) {
        return (l.a(this.f22485b.mo30398Ge(), "PromoInboxPersonalTab") || l.a(this.f22485b.mo30398Ge(), "PromoCallTab")) && mo30360A(this.f22485b.mo30397ze());
    }
}

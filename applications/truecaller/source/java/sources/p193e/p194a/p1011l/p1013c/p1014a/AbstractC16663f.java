package p193e.p194a.p1011l.p1013c.p1014a;

import java.util.List;
import p193e.p1432d.p1439c.p1440a.C22128a;
import p193e.p194a.p1011l.p1033v2.p1037i.p1039b.C17288a;
import p193e.p194a.p1111o2.AbstractC18895d;
import s1.a.l;
/* renamed from: e.a.l.c.a.f */
/* loaded from: classes12-dex2jar.jar:e/a/l/c/a/f.class */
public abstract class AbstractC16663f<V> extends AbstractC18895d<V> {

    /* renamed from: c */
    public static final /* synthetic */ l[] f46787c = {C22128a.m8621g0(AbstractC16663f.class, "cards", "getCards()Ljava/util/List;", 0)};

    /* renamed from: b */
    public final AbstractC16701l1 f46788b;

    public AbstractC16663f(AbstractC16701l1 abstractC16701l1) {
        s1.z.c.l.e(abstractC16701l1, "model");
        this.f46788b = abstractC16701l1;
    }

    /* renamed from: A */
    public final List<C16717p> m17148A() {
        return this.f46788b.mo17013A1(this, f46787c[0]);
    }

    @Override // p193e.p194a.p1111o2.AbstractC18894c, p193e.p194a.p1111o2.AbstractC18893b
    /* renamed from: G */
    public void mo11464G(V v, int i) {
        if (v instanceof AbstractC16782z1) {
            C16723q c16723q = m17148A().get(i).f46879a;
            C17288a c17288a = m17148A().get(i).f46881c;
            float f = (c16723q == null || i == 0) ? 0.0f : 15.0f;
            AbstractC16782z1 abstractC16782z1 = (AbstractC16782z1) v;
            abstractC16782z1.mo17053a0(c16723q, f);
            abstractC16782z1.mo17052l3(c17288a);
        }
    }

    @Override // p193e.p194a.p1111o2.AbstractC18894c, p193e.p194a.p1111o2.AbstractC18893b
    public int getItemCount() {
        return m17148A().size();
    }
}

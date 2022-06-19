package p193e.p194a.p1193r5;

import java.util.Objects;
import javax.inject.Inject;
import p193e.p1432d.p1439c.p1440a.C22128a;
import p193e.p194a.p1111o2.AbstractC18894c;
import p193e.p194a.p1111o2.C18900h;
import s1.a.l;
/* renamed from: e.a.r5.a0 */
/* loaded from: classes8-dex2jar.jar:e/a/r5/a0.class */
public final class C19934a0 extends AbstractC18894c<AbstractC19936b0> implements AbstractC19996z {

    /* renamed from: d */
    public static final /* synthetic */ l[] f56382d = {C22128a.m8621g0(C19934a0.class, "enabled", "getEnabled()Z", 0)};

    /* renamed from: b */
    public final AbstractC19953i f56383b;

    /* renamed from: c */
    public final AbstractC19953i f56384c;

    @Inject
    public C19934a0(AbstractC19953i abstractC19953i) {
        s1.z.c.l.e(abstractC19953i, "model");
        this.f56384c = abstractC19953i;
        this.f56383b = abstractC19953i;
    }

    @Override // p193e.p194a.p1111o2.AbstractC18894c, p193e.p194a.p1111o2.AbstractC18893b
    /* renamed from: G */
    public void mo11464G(AbstractC19936b0 abstractC19936b0, int i) {
        AbstractC19936b0 abstractC19936b02 = abstractC19936b0;
        s1.z.c.l.e(abstractC19936b02, "itemView");
        abstractC19936b02.mo11797Q2(this.f56383b.mo11764p5(this, f56382d[0]));
    }

    @Override // p193e.p194a.p1111o2.AbstractC18894c, p193e.p194a.p1111o2.AbstractC18893b
    public int getItemCount() {
        return this.f56384c.mo11765H7() ? 1 : 0;
    }

    @Override // p193e.p194a.p1111o2.AbstractC18893b
    public long getItemId(int i) {
        return -1L;
    }

    @Override // p193e.p194a.p1111o2.AbstractC18904l
    /* renamed from: v */
    public boolean mo10026v(C18900h c18900h) {
        boolean z;
        s1.z.c.l.e(c18900h, "event");
        String str = c18900h.f53001a;
        if (str.hashCode() == 1958463258 && str.equals("ItemEvent.SWITCH_ACTION")) {
            AbstractC19953i abstractC19953i = this.f56384c;
            Object obj = c18900h.f53005e;
            Objects.requireNonNull(obj, "null cannot be cast to non-null type kotlin.Boolean");
            abstractC19953i.mo11763y9(((Boolean) obj).booleanValue());
            z = true;
        } else {
            z = false;
        }
        return z;
    }
}

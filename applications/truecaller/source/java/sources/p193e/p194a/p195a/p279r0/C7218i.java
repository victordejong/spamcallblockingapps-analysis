package p193e.p194a.p195a.p279r0;

import javax.inject.Inject;
import o3.a;
import p193e.p194a.p437c.p524b.AbstractC9685d;
import p193e.p194a.p437c.p548h.AbstractC10254d;
import s1.z.c.l;
/* renamed from: e.a.a.r0.i */
/* loaded from: classes5-dex2jar.jar:e/a/a/r0/i.class */
public final class C7218i implements AbstractC10254d {

    /* renamed from: a */
    public final a<AbstractC9685d> f23113a;

    @Inject
    public C7218i(a<AbstractC9685d> aVar) {
        l.e(aVar, "insightsUpdateListener");
        this.f23113a = aVar;
    }

    @Override // p193e.p194a.p437c.p548h.AbstractC10254d
    /* renamed from: a */
    public void mo26527a(boolean z, int i) {
        ((AbstractC9685d) this.f23113a.get()).mo27313c(z, i);
    }
}

package p193e.p194a.p1159q4;

import java.util.Set;
import javax.inject.Inject;
import s1.u.i;
import s1.z.c.l;
/* renamed from: e.a.q4.k0 */
/* loaded from: classes12-dex2jar.jar:e/a/q4/k0.class */
public final class C19649k0 implements AbstractC19647j0 {

    /* renamed from: a */
    public final Set<AbstractC19647j0> f54574a;

    @Inject
    public C19649k0(C19676v0 c19676v0, C19628c0 c19628c0, C19681z c19681z) {
        l.e(c19676v0, "tcLogger");
        l.e(c19628c0, "fireBaseLogger");
        l.e(c19681z, "cleverTapLogger");
        this.f54574a = i.z0(new AbstractC19647j0[]{c19676v0, c19628c0, c19681z});
    }

    @Override // p193e.p194a.p1159q4.AbstractC19647j0
    /* renamed from: a */
    public void mo13000a(String str) {
        for (AbstractC19647j0 abstractC19647j0 : this.f54574a) {
            abstractC19647j0.mo13000a(str);
        }
    }

    @Override // p193e.p194a.p1159q4.AbstractC19647j0
    /* renamed from: b */
    public void mo12999b(String str, String str2) {
        for (AbstractC19647j0 abstractC19647j0 : this.f54574a) {
            abstractC19647j0.mo12999b(str, str2);
        }
    }
}

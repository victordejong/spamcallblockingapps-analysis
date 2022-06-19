package p193e.p194a.p1159q4;

import javax.inject.Inject;
import p193e.p1681q.p1701f.p1702a.p1704d.C25225a;
import p193e.p194a.p1146q2.p1151d1.AbstractC19494d;
import s1.k;
import s1.z.c.l;
/* renamed from: e.a.q4.c0 */
/* loaded from: classes12-dex2jar.jar:e/a/q4/c0.class */
public final class C19628c0 implements AbstractC19647j0 {

    /* renamed from: a */
    public final AbstractC19494d f54551a;

    @Inject
    public C19628c0(AbstractC19494d abstractC19494d) {
        l.e(abstractC19494d, "fireBaseLogger");
        this.f54551a = abstractC19494d;
    }

    @Override // p193e.p194a.p1159q4.AbstractC19647j0
    /* renamed from: a */
    public void mo13000a(String str) {
        this.f54551a.mo13282c("ReferralSent");
        this.f54551a.mo13283b(C25225a.m3938Z1(new k("SentReferral", String.valueOf(true))));
    }

    @Override // p193e.p194a.p1159q4.AbstractC19647j0
    /* renamed from: b */
    public void mo12999b(String str, String str2) {
        this.f54551a.mo13282c("ReferralReceived");
        this.f54551a.mo13283b(C25225a.m3938Z1(new k("JoinedFromReferral", String.valueOf(true))));
    }
}

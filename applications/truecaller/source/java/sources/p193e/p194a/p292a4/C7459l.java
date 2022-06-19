package p193e.p194a.p292a4;

import p193e.p1432d.p1439c.p1440a.C22128a;
import p193e.p194a.p1272u3.AbstractC20583b;
import p193e.p194a.p1272u3.AbstractC20609r;
import s1.z.c.l;
/* renamed from: e.a.a4.l */
/* loaded from: classes10-dex2jar.jar:e/a/a4/l.class */
public final class C7459l implements AbstractC7460m {

    /* renamed from: a */
    public final String f23705a;

    /* renamed from: b */
    public final AbstractC20583b f23706b;

    /* renamed from: c */
    public final boolean f23707c;

    /* renamed from: d */
    public final boolean f23708d;

    public C7459l(AbstractC20583b abstractC20583b, boolean z, boolean z2) {
        l.e(abstractC20583b, "feature");
        this.f23706b = abstractC20583b;
        this.f23707c = z;
        this.f23708d = z2;
        if (!(abstractC20583b instanceof AbstractC20609r) && z2) {
            abstractC20583b.getDescription();
        }
        StringBuilder m8728C = C22128a.m8728C("Feature condition [");
        m8728C.append(abstractC20583b.getKey().getJiraTicket());
        m8728C.append("]: ");
        m8728C.append(abstractC20583b.getDescription());
        this.f23705a = m8728C.toString();
    }

    @Override // p193e.p194a.p292a4.AbstractC7460m
    /* renamed from: a */
    public boolean mo29587a() {
        return this.f23708d;
    }

    @Override // p193e.p194a.p292a4.AbstractC7460m
    /* renamed from: b */
    public boolean mo29586b() {
        return this.f23706b.isEnabled() == this.f23707c;
    }

    @Override // p193e.p194a.p292a4.AbstractC7460m
    public String getName() {
        return this.f23705a;
    }
}

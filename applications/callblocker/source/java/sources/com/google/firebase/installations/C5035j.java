package com.google.firebase.installations;

import com.google.android.gms.tasks.C4470h;
import com.google.firebase.installations.p167a.AbstractC5010d;
/* renamed from: com.google.firebase.installations.j */
/* loaded from: classes-dex2jar.jar:com/google/firebase/installations/j.class */
class C5035j implements AbstractC5040n {

    /* renamed from: a */
    private final C5041o f21287a;

    /* renamed from: b */
    private final C4470h<AbstractC5037l> f21288b;

    public C5035j(C5041o c5041o, C4470h<AbstractC5037l> c4470h) {
        this.f21287a = c5041o;
        this.f21288b = c4470h;
    }

    @Override // com.google.firebase.installations.AbstractC5040n
    /* renamed from: a */
    public boolean mo1767a(AbstractC5010d abstractC5010d) {
        boolean z;
        if (!abstractC5010d.m1856i() || this.f21287a.m1764a(abstractC5010d)) {
            z = false;
        } else {
            this.f21288b.m3887a((C4470h<AbstractC5037l>) AbstractC5037l.m1775d().mo1772a(abstractC5010d.mo1862c()).mo1773a(abstractC5010d.mo1860e()).mo1771b(abstractC5010d.mo1859f()).mo1774a());
            z = true;
        }
        return z;
    }

    @Override // com.google.firebase.installations.AbstractC5040n
    /* renamed from: a */
    public boolean mo1766a(AbstractC5010d abstractC5010d, Exception exc) {
        boolean z;
        if (abstractC5010d.m1855j() || abstractC5010d.m1853l() || abstractC5010d.m1854k()) {
            this.f21288b.m3886b(exc);
            z = true;
        } else {
            z = false;
        }
        return z;
    }
}

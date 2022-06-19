package com.google.firebase.installations;

import com.google.android.gms.tasks.C4470h;
import com.google.firebase.installations.p167a.AbstractC5010d;
/* renamed from: com.google.firebase.installations.k */
/* loaded from: classes-dex2jar.jar:com/google/firebase/installations/k.class */
class C5036k implements AbstractC5040n {

    /* renamed from: a */
    final C4470h<String> f21289a;

    public C5036k(C4470h<String> c4470h) {
        this.f21289a = c4470h;
    }

    @Override // com.google.firebase.installations.AbstractC5040n
    /* renamed from: a */
    public boolean mo1767a(AbstractC5010d abstractC5010d) {
        boolean z;
        if (abstractC5010d.m1854k() || abstractC5010d.m1856i() || abstractC5010d.m1855j()) {
            this.f21289a.m3885b((C4470h<String>) abstractC5010d.mo1868a());
            z = true;
        } else {
            z = false;
        }
        return z;
    }

    @Override // com.google.firebase.installations.AbstractC5040n
    /* renamed from: a */
    public boolean mo1766a(AbstractC5010d abstractC5010d, Exception exc) {
        return false;
    }
}

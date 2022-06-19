package com.google.firebase.installations;

import com.google.android.gms.tasks.C7968h;
import com.google.firebase.installations.local.AbstractC9225c;
/* renamed from: com.google.firebase.installations.j */
/* loaded from: classes2-dex2jar.jar:com/google/firebase/installations/j.class */
class C9217j implements AbstractC9227m {

    /* renamed from: a */
    final C7968h<String> f39612a;

    public C9217j(C7968h<String> c7968h) {
        this.f39612a = c7968h;
    }

    @Override // com.google.firebase.installations.AbstractC9227m
    /* renamed from: a */
    public boolean mo1478a(Exception exc) {
        return false;
    }

    @Override // com.google.firebase.installations.AbstractC9227m
    /* renamed from: b */
    public boolean mo1477b(AbstractC9225c abstractC9225c) {
        if (abstractC9225c.m1495l() || abstractC9225c.m1496k() || abstractC9225c.m1498i()) {
            this.f39612a.m5803e(abstractC9225c.mo1503d());
            return true;
        }
        return false;
    }
}

package com.google.firebase.installations;

import com.google.android.gms.tasks.C7968h;
import com.google.firebase.installations.local.AbstractC9225c;
/* renamed from: com.google.firebase.installations.i */
/* loaded from: classes2-dex2jar.jar:com/google/firebase/installations/i.class */
class C9216i implements AbstractC9227m {

    /* renamed from: a */
    private final C9228n f39610a;

    /* renamed from: b */
    private final C7968h<AbstractC9218k> f39611b;

    public C9216i(C9228n c9228n, C7968h<AbstractC9218k> c7968h) {
        this.f39610a = c9228n;
        this.f39611b = c7968h;
    }

    @Override // com.google.firebase.installations.AbstractC9227m
    /* renamed from: a */
    public boolean mo1478a(Exception exc) {
        this.f39611b.m5804d(exc);
        return true;
    }

    @Override // com.google.firebase.installations.AbstractC9227m
    /* renamed from: b */
    public boolean mo1477b(AbstractC9225c abstractC9225c) {
        if (!abstractC9225c.m1496k() || this.f39610a.m1471f(abstractC9225c)) {
            return false;
        }
        this.f39611b.m5805c(AbstractC9218k.m1529a().mo1524b(abstractC9225c.mo1505b()).mo1522d(abstractC9225c.mo1504c()).mo1523c(abstractC9225c.mo1499h()).mo1525a());
        return true;
    }
}

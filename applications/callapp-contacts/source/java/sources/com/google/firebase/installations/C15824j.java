package com.google.firebase.installations;

import com.google.android.gms.tasks.C14186i;
import com.google.firebase.installations.C15787a;
import com.google.firebase.installations.p396a.AbstractC15796d;
/* renamed from: com.google.firebase.installations.j */
/* loaded from: classes4-dex2jar.jar:com/google/firebase/installations/j.class */
final class C15824j implements AbstractC15829n {

    /* renamed from: a */
    private final C15830o f56257a;

    /* renamed from: b */
    private final C14186i<AbstractC15826l> f56258b;

    public C15824j(C15830o c15830o, C14186i<AbstractC15826l> c14186i) {
        this.f56257a = c15830o;
        this.f56258b = c14186i;
    }

    @Override // com.google.firebase.installations.AbstractC15829n
    /* renamed from: a */
    public final boolean mo8274a(AbstractC15796d abstractC15796d) {
        if (!abstractC15796d.m8368i() || this.f56257a.m8271a(abstractC15796d)) {
            return false;
        }
        this.f56258b.m11471a((C14186i<AbstractC15826l>) new C15787a.C15789a().mo8277a(abstractC15796d.mo8374c()).mo8278a(abstractC15796d.mo8372e()).mo8276b(abstractC15796d.mo8371f()).mo8279a());
        return true;
    }

    @Override // com.google.firebase.installations.AbstractC15829n
    /* renamed from: a */
    public final boolean mo8273a(Exception exc) {
        this.f56258b.m11470b(exc);
        return true;
    }
}

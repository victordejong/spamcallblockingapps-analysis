package com.google.firebase.installations;

import com.google.android.gms.tasks.C14186i;
import com.google.firebase.installations.p396a.AbstractC15796d;
/* renamed from: com.google.firebase.installations.k */
/* loaded from: classes4-dex2jar.jar:com/google/firebase/installations/k.class */
final class C15825k implements AbstractC15829n {

    /* renamed from: a */
    final C14186i<String> f56259a;

    public C15825k(C14186i<String> c14186i) {
        this.f56259a = c14186i;
    }

    @Override // com.google.firebase.installations.AbstractC15829n
    /* renamed from: a */
    public final boolean mo8274a(AbstractC15796d abstractC15796d) {
        if (abstractC15796d.m8366k() || abstractC15796d.m8368i() || abstractC15796d.m8367j()) {
            this.f56259a.m11469b((C14186i<String>) abstractC15796d.mo8377a());
            return true;
        }
        return false;
    }

    @Override // com.google.firebase.installations.AbstractC15829n
    /* renamed from: a */
    public final boolean mo8273a(Exception exc) {
        return false;
    }
}

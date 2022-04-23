package com.google.firebase.installations;

import com.google.android.gms.tasks.i;
import com.google.firebase.installations.a.d;
/* loaded from: classes4-dex2jar.jar:com/google/firebase/installations/k.class */
final class k implements n {

    /* renamed from: a  reason: collision with root package name */
    final i<String> f32435a;

    public k(i<String> iVar) {
        this.f32435a = iVar;
    }

    @Override // com.google.firebase.installations.n
    public final boolean a(d dVar) {
        if (!dVar.k() && !dVar.i() && !dVar.j()) {
            return false;
        }
        this.f32435a.b((i<String>) dVar.a());
        return true;
    }

    @Override // com.google.firebase.installations.n
    public final boolean a(Exception exc) {
        return false;
    }
}

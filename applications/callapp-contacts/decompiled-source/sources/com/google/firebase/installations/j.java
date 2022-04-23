package com.google.firebase.installations;

import com.google.android.gms.tasks.i;
import com.google.firebase.installations.a;
import com.google.firebase.installations.a.d;
/* loaded from: classes4-dex2jar.jar:com/google/firebase/installations/j.class */
final class j implements n {

    /* renamed from: a  reason: collision with root package name */
    private final o f32433a;

    /* renamed from: b  reason: collision with root package name */
    private final i<l> f32434b;

    public j(o oVar, i<l> iVar) {
        this.f32433a = oVar;
        this.f32434b = iVar;
    }

    @Override // com.google.firebase.installations.n
    public final boolean a(d dVar) {
        if (!dVar.i() || this.f32433a.a(dVar)) {
            return false;
        }
        this.f32434b.a((i<l>) new a.C0519a().a(dVar.c()).a(dVar.e()).b(dVar.f()).a());
        return true;
    }

    @Override // com.google.firebase.installations.n
    public final boolean a(Exception exc) {
        this.f32434b.b(exc);
        return true;
    }
}

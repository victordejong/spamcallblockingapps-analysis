package com.google.android.gms.measurement.internal;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/measurement/internal/ht.class */
public final class ht extends l {

    /* renamed from: a  reason: collision with root package name */
    final /* synthetic */ ik f29792a;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public ht(ik ikVar, fo foVar) {
        super(foVar);
        this.f29792a = ikVar;
    }

    @Override // com.google.android.gms.measurement.internal.l
    public final void a() {
        ik ikVar = this.f29792a;
        ikVar.S_();
        if (ikVar.e()) {
            ikVar.t.c().k.a("Inactivity, disconnecting from the service");
            ikVar.p();
        }
    }
}

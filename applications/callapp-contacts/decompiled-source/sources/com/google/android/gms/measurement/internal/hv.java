package com.google.android.gms.measurement.internal;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/measurement/internal/hv.class */
public final class hv extends l {

    /* renamed from: a  reason: collision with root package name */
    final /* synthetic */ ik f29797a;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public hv(ik ikVar, fo foVar) {
        super(foVar);
        this.f29797a = ikVar;
    }

    @Override // com.google.android.gms.measurement.internal.l
    public final void a() {
        this.f29797a.t.c().f.a("Tasks have been queued for a long time");
    }
}

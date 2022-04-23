package com.google.android.gms.measurement.internal;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/measurement/internal/jb.class */
public final class jb extends l {

    /* renamed from: a  reason: collision with root package name */
    final /* synthetic */ jc f29881a;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public jb(jc jcVar, fo foVar) {
        super(foVar);
        this.f29881a = jcVar;
    }

    @Override // com.google.android.gms.measurement.internal.l
    public final void a() {
        this.f29881a.b();
        this.f29881a.t.c().k.a("Starting upload from DelayedRunnable");
        this.f29881a.f.l();
    }
}

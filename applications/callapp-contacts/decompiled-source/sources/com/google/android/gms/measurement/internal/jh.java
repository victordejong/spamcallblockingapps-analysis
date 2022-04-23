package com.google.android.gms.measurement.internal;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/measurement/internal/jh.class */
public final class jh implements Runnable {

    /* renamed from: a  reason: collision with root package name */
    final /* synthetic */ jp f29888a;

    /* renamed from: b  reason: collision with root package name */
    final /* synthetic */ jo f29889b;

    /* JADX INFO: Access modifiers changed from: package-private */
    public jh(jo joVar, jp jpVar) {
        this.f29889b = joVar;
        this.f29888a = jpVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        jo.a(this.f29889b);
        jo joVar = this.f29889b;
        joVar.d().S_();
        i iVar = joVar.f29905b;
        jo.a(iVar);
        iVar.h();
        if (joVar.e.f29847c.a() == 0) {
            joVar.e.f29847c.a(joVar.Y_().a());
        }
        joVar.m();
    }
}

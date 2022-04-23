package com.google.android.gms.measurement.internal;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/measurement/internal/dv.class */
final class dv implements Runnable {

    /* renamed from: a  reason: collision with root package name */
    final /* synthetic */ boolean f29521a;

    /* renamed from: b  reason: collision with root package name */
    final /* synthetic */ dw f29522b;

    /* JADX INFO: Access modifiers changed from: package-private */
    public dv(dw dwVar, boolean z) {
        this.f29522b = dwVar;
        this.f29521a = z;
    }

    @Override // java.lang.Runnable
    public final void run() {
        jo joVar;
        joVar = this.f29522b.f29524b;
        joVar.m();
    }
}

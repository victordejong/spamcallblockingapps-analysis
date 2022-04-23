package com.google.android.gms.measurement.internal;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/measurement/internal/jf.class */
final class jf implements Runnable {

    /* renamed from: a  reason: collision with root package name */
    final /* synthetic */ jz f29886a;

    /* renamed from: b  reason: collision with root package name */
    final /* synthetic */ AppMeasurementDynamiteService f29887b;

    /* JADX INFO: Access modifiers changed from: package-private */
    public jf(AppMeasurementDynamiteService appMeasurementDynamiteService, jz jzVar) {
        this.f29887b = appMeasurementDynamiteService;
        this.f29886a = jzVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        this.f29887b.f29392a.f().a(this.f29886a);
    }
}

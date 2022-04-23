package com.google.android.gms.measurement.internal;

import com.google.android.gms.internal.measurement.nc;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/measurement/internal/jy.class */
final class jy implements Runnable {

    /* renamed from: a  reason: collision with root package name */
    final /* synthetic */ nc f29923a;

    /* renamed from: b  reason: collision with root package name */
    final /* synthetic */ AppMeasurementDynamiteService f29924b;

    /* JADX INFO: Access modifiers changed from: package-private */
    public jy(AppMeasurementDynamiteService appMeasurementDynamiteService, nc ncVar) {
        this.f29924b = appMeasurementDynamiteService;
        this.f29923a = ncVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        this.f29924b.f29392a.g().a(this.f29923a, this.f29924b.f29392a.q());
    }
}

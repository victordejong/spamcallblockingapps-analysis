package com.google.android.gms.measurement.internal;

import com.google.android.gms.internal.measurement.nc;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/measurement/internal/gd.class */
final class gd implements Runnable {

    /* renamed from: a  reason: collision with root package name */
    final /* synthetic */ nc f29682a;

    /* renamed from: b  reason: collision with root package name */
    final /* synthetic */ AppMeasurementDynamiteService f29683b;

    /* JADX INFO: Access modifiers changed from: package-private */
    public gd(AppMeasurementDynamiteService appMeasurementDynamiteService, nc ncVar) {
        this.f29683b = appMeasurementDynamiteService;
        this.f29682a = ncVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        this.f29683b.f29392a.m().a(this.f29682a);
    }
}

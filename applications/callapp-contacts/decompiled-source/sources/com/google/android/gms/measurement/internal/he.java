package com.google.android.gms.measurement.internal;

import com.google.android.gms.internal.measurement.nc;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/measurement/internal/he.class */
final class he implements Runnable {

    /* renamed from: a  reason: collision with root package name */
    final /* synthetic */ nc f29750a;

    /* renamed from: b  reason: collision with root package name */
    final /* synthetic */ zzas f29751b;

    /* renamed from: c  reason: collision with root package name */
    final /* synthetic */ String f29752c;

    /* renamed from: d  reason: collision with root package name */
    final /* synthetic */ AppMeasurementDynamiteService f29753d;

    /* JADX INFO: Access modifiers changed from: package-private */
    public he(AppMeasurementDynamiteService appMeasurementDynamiteService, nc ncVar, zzas zzasVar, String str) {
        this.f29753d = appMeasurementDynamiteService;
        this.f29750a = ncVar;
        this.f29751b = zzasVar;
        this.f29752c = str;
    }

    @Override // java.lang.Runnable
    public final void run() {
        this.f29753d.f29392a.m().a(this.f29750a, this.f29751b, this.f29752c);
    }
}

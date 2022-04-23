package com.google.android.gms.measurement.internal;

import com.google.android.gms.internal.measurement.nc;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/measurement/internal/ie.class */
final class ie implements Runnable {

    /* renamed from: a  reason: collision with root package name */
    final /* synthetic */ nc f29828a;

    /* renamed from: b  reason: collision with root package name */
    final /* synthetic */ String f29829b;

    /* renamed from: c  reason: collision with root package name */
    final /* synthetic */ String f29830c;

    /* renamed from: d  reason: collision with root package name */
    final /* synthetic */ boolean f29831d;
    final /* synthetic */ AppMeasurementDynamiteService e;

    /* JADX INFO: Access modifiers changed from: package-private */
    public ie(AppMeasurementDynamiteService appMeasurementDynamiteService, nc ncVar, String str, String str2, boolean z) {
        this.e = appMeasurementDynamiteService;
        this.f29828a = ncVar;
        this.f29829b = str;
        this.f29830c = str2;
        this.f29831d = z;
    }

    @Override // java.lang.Runnable
    public final void run() {
        this.e.f29392a.m().a(this.f29828a, this.f29829b, this.f29830c, this.f29831d);
    }
}

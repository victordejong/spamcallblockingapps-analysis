package com.google.android.gms.measurement.internal;

import com.google.android.gms.internal.measurement.nc;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/measurement/internal/jx.class */
final class jx implements Runnable {

    /* renamed from: a  reason: collision with root package name */
    final /* synthetic */ nc f29919a;

    /* renamed from: b  reason: collision with root package name */
    final /* synthetic */ String f29920b;

    /* renamed from: c  reason: collision with root package name */
    final /* synthetic */ String f29921c;

    /* renamed from: d  reason: collision with root package name */
    final /* synthetic */ AppMeasurementDynamiteService f29922d;

    /* JADX INFO: Access modifiers changed from: package-private */
    public jx(AppMeasurementDynamiteService appMeasurementDynamiteService, nc ncVar, String str, String str2) {
        this.f29922d = appMeasurementDynamiteService;
        this.f29919a = ncVar;
        this.f29920b = str;
        this.f29921c = str2;
    }

    @Override // java.lang.Runnable
    public final void run() {
        this.f29922d.f29392a.m().a(this.f29919a, this.f29920b, this.f29921c);
    }
}

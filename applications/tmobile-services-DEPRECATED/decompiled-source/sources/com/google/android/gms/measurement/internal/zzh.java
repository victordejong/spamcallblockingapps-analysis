package com.google.android.gms.measurement.internal;

import com.google.android.gms.internal.measurement.zzw;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/measurement/internal/zzh.class */
final class zzh implements Runnable {

    /* renamed from: f */
    private final /* synthetic */ zzw f9394f;

    /* renamed from: g */
    private final /* synthetic */ AppMeasurementDynamiteService f9395g;

    /* JADX INFO: Access modifiers changed from: package-private */
    public zzh(AppMeasurementDynamiteService appMeasurementDynamiteService, zzw zzwVar) {
        this.f9395g = appMeasurementDynamiteService;
        this.f9394f = zzwVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        this.f9395g.f8821a.m11372P().m11205E(this.f9394f);
    }
}

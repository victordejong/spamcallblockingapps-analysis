package com.google.android.gms.measurement.internal;

import com.google.android.gms.internal.measurement.zzw;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/measurement/internal/zzj.class */
final class zzj implements Runnable {

    /* renamed from: f */
    private final /* synthetic */ zzw f9558f;

    /* renamed from: g */
    private final /* synthetic */ zzar f9559g;

    /* renamed from: h */
    private final /* synthetic */ String f9560h;

    /* renamed from: i */
    private final /* synthetic */ AppMeasurementDynamiteService f9561i;

    /* JADX INFO: Access modifiers changed from: package-private */
    public zzj(AppMeasurementDynamiteService appMeasurementDynamiteService, zzw zzwVar, zzar zzarVar, String str) {
        this.f9561i = appMeasurementDynamiteService;
        this.f9558f = zzwVar;
        this.f9559g = zzarVar;
        this.f9560h = str;
    }

    @Override // java.lang.Runnable
    public final void run() {
        this.f9561i.f8821a.m11372P().m11204F(this.f9558f, this.f9559g, this.f9560h);
    }
}

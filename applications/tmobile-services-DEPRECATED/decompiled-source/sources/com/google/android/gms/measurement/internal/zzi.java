package com.google.android.gms.measurement.internal;

import com.google.android.gms.internal.measurement.zzw;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/measurement/internal/zzi.class */
final class zzi implements Runnable {

    /* renamed from: f */
    private final /* synthetic */ zzw f9472f;

    /* renamed from: g */
    private final /* synthetic */ String f9473g;

    /* renamed from: h */
    private final /* synthetic */ String f9474h;

    /* renamed from: i */
    private final /* synthetic */ boolean f9475i;

    /* renamed from: j */
    private final /* synthetic */ AppMeasurementDynamiteService f9476j;

    /* JADX INFO: Access modifiers changed from: package-private */
    public zzi(AppMeasurementDynamiteService appMeasurementDynamiteService, zzw zzwVar, String str, String str2, boolean z) {
        this.f9476j = appMeasurementDynamiteService;
        this.f9472f = zzwVar;
        this.f9473g = str;
        this.f9474h = str2;
        this.f9475i = z;
    }

    @Override // java.lang.Runnable
    public final void run() {
        this.f9476j.f8821a.m11372P().m11202H(this.f9472f, this.f9473g, this.f9474h, this.f9475i);
    }
}

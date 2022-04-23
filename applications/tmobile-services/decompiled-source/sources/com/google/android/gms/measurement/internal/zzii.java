package com.google.android.gms.measurement.internal;

import android.os.Bundle;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/measurement/internal/zzii.class */
public final class zzii implements Runnable {

    /* renamed from: f */
    private final /* synthetic */ Bundle f9493f;

    /* renamed from: g */
    private final /* synthetic */ zzig f9494g;

    /* renamed from: h */
    private final /* synthetic */ zzig f9495h;

    /* renamed from: i */
    private final /* synthetic */ long f9496i;

    /* renamed from: j */
    private final /* synthetic */ zzij f9497j;

    /* JADX INFO: Access modifiers changed from: package-private */
    public zzii(zzij zzijVar, Bundle bundle, zzig zzigVar, zzig zzigVar2, long j) {
        this.f9497j = zzijVar;
        this.f9493f = bundle;
        this.f9494g = zzigVar;
        this.f9495h = zzigVar2;
        this.f9496i = j;
    }

    @Override // java.lang.Runnable
    public final void run() {
        this.f9497j.m11222J(this.f9493f, this.f9494g, this.f9495h, this.f9496i);
    }
}

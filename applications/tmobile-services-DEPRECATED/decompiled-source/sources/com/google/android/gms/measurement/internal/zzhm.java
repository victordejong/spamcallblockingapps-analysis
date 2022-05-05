package com.google.android.gms.measurement.internal;

import android.os.Bundle;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/measurement/internal/zzhm.class */
public final class zzhm implements Runnable {

    /* renamed from: f */
    private final /* synthetic */ Bundle f9429f;

    /* renamed from: g */
    private final /* synthetic */ zzgy f9430g;

    /* JADX INFO: Access modifiers changed from: package-private */
    public zzhm(zzgy zzgyVar, Bundle bundle) {
        this.f9430g = zzgyVar;
        this.f9429f = bundle;
    }

    @Override // java.lang.Runnable
    public final void run() {
        this.f9430g.m11294C0(this.f9429f);
    }
}

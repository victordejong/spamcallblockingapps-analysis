package com.google.android.gms.measurement.internal;

import android.os.Bundle;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/measurement/internal/zzgx.class */
public final /* synthetic */ class zzgx implements Runnable {

    /* renamed from: a */
    public final /* synthetic */ zzhw f6431a;

    /* renamed from: b */
    public final /* synthetic */ Bundle f6432b;

    /* renamed from: c */
    public final /* synthetic */ long f6433c;

    public /* synthetic */ zzgx(zzhw zzhwVar, Bundle bundle, long j) {
        this.f6431a = zzhwVar;
        this.f6432b = bundle;
        this.f6433c = j;
    }

    @Override // java.lang.Runnable
    public final void run() {
        this.f6431a.y(this.f6432b, this.f6433c);
    }
}

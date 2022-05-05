package com.google.android.gms.measurement.internal;

import android.os.Bundle;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/measurement/internal/zzko.class */
final class zzko implements Runnable {

    /* renamed from: f */
    private final /* synthetic */ String f9694f;

    /* renamed from: g */
    private final /* synthetic */ Bundle f9695g;

    /* renamed from: h */
    private final /* synthetic */ zzkp f9696h;

    /* JADX INFO: Access modifiers changed from: package-private */
    public zzko(zzkp zzkpVar, String str, Bundle bundle) {
        this.f9696h = zzkpVar;
        this.f9694f = str;
        this.f9695g = bundle;
    }

    @Override // java.lang.Runnable
    public final void run() {
        this.f9696h.f9697a.m11051r(this.f9696h.f9697a.m11072g0().m10997D(this.f9694f, "_err", this.f9695g, "auto", this.f9696h.f9697a.mo11085a().mo14335a(), false, false, false), this.f9694f);
    }
}

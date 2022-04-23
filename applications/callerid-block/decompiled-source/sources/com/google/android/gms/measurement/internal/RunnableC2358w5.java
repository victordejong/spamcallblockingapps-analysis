package com.google.android.gms.measurement.internal;

import android.os.Bundle;
/* renamed from: com.google.android.gms.measurement.internal.w5 */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/measurement/internal/w5.class */
final /* synthetic */ class RunnableC2358w5 implements Runnable {

    /* renamed from: b */
    private final v6 f10460b;

    /* renamed from: c */
    private final Bundle f10461c;

    RunnableC2358w5(v6 v6Var, Bundle bundle) {
        this.f10460b = v6Var;
        this.f10461c = bundle;
    }

    @Override // java.lang.Runnable
    public final void run() {
        this.f10460b.H(this.f10461c);
    }
}

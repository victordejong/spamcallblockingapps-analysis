package com.google.android.gms.measurement.internal;

import android.os.Bundle;
/* renamed from: com.google.android.gms.measurement.internal.gr */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/measurement/internal/gr.class */
public final class RunnableC4337gr implements Runnable {

    /* renamed from: a */
    private final /* synthetic */ Bundle f19023a;

    /* renamed from: b */
    private final /* synthetic */ C4330gk f19024b;

    public RunnableC4337gr(C4330gk c4330gk, Bundle bundle) {
        this.f19024b = c4330gk;
        this.f19023a = bundle;
    }

    @Override // java.lang.Runnable
    public final void run() {
        this.f19024b.m4382c(this.f19023a);
    }
}

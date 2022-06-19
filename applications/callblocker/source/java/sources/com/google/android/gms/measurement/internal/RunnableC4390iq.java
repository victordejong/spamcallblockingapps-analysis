package com.google.android.gms.measurement.internal;

import android.content.ComponentName;
import android.content.Context;
/* renamed from: com.google.android.gms.measurement.internal.iq */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/measurement/internal/iq.class */
final class RunnableC4390iq implements Runnable {

    /* renamed from: a */
    private final /* synthetic */ ServiceConnectionC4386im f19183a;

    public RunnableC4390iq(ServiceConnectionC4386im serviceConnectionC4386im) {
        this.f19183a = serviceConnectionC4386im;
    }

    @Override // java.lang.Runnable
    public final void run() {
        C4367hu c4367hu = this.f19183a.f19170a;
        Context mo4034r = this.f19183a.f19170a.mo4034r();
        this.f19183a.f19170a.mo4026y();
        c4367hu.m4334a(new ComponentName(mo4034r, "com.google.android.gms.measurement.AppMeasurementService"));
    }
}

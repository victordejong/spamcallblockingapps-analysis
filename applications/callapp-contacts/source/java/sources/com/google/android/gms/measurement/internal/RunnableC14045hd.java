package com.google.android.gms.measurement.internal;

import android.os.Bundle;
/* renamed from: com.google.android.gms.measurement.internal.hd */
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/measurement/internal/hd.class */
public final class RunnableC14045hd implements Runnable {

    /* renamed from: a */
    final /* synthetic */ Bundle f51769a;

    /* renamed from: b */
    final /* synthetic */ C14044hc f51770b;

    /* renamed from: c */
    final /* synthetic */ C14044hc f51771c;

    /* renamed from: d */
    final /* synthetic */ long f51772d;

    /* renamed from: e */
    final /* synthetic */ C14052hk f51773e;

    public RunnableC14045hd(C14052hk c14052hk, Bundle bundle, C14044hc c14044hc, C14044hc c14044hc2, long j) {
        this.f51773e = c14052hk;
        this.f51769a = bundle;
        this.f51770b = c14044hc;
        this.f51771c = c14044hc2;
        this.f51772d = j;
    }

    @Override // java.lang.Runnable
    public final void run() {
        C14052hk.m11822a(this.f51773e, this.f51769a, this.f51770b, this.f51771c, this.f51772d);
    }
}

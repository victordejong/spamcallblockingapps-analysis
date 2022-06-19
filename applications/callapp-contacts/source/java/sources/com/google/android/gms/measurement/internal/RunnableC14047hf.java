package com.google.android.gms.measurement.internal;

import android.os.Bundle;
/* renamed from: com.google.android.gms.measurement.internal.hf */
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/measurement/internal/hf.class */
public final class RunnableC14047hf implements Runnable {

    /* renamed from: a */
    final /* synthetic */ C14044hc f51778a;

    /* renamed from: b */
    final /* synthetic */ C14044hc f51779b;

    /* renamed from: c */
    final /* synthetic */ long f51780c;

    /* renamed from: d */
    final /* synthetic */ boolean f51781d;

    /* renamed from: e */
    final /* synthetic */ C14052hk f51782e;

    public RunnableC14047hf(C14052hk c14052hk, C14044hc c14044hc, C14044hc c14044hc2, long j, boolean z) {
        this.f51782e = c14052hk;
        this.f51778a = c14044hc;
        this.f51779b = c14044hc2;
        this.f51780c = j;
        this.f51781d = z;
    }

    @Override // java.lang.Runnable
    public final void run() {
        this.f51782e.m11824a(this.f51778a, this.f51779b, this.f51780c, this.f51781d, (Bundle) null);
    }
}

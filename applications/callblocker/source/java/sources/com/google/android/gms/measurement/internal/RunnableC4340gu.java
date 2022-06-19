package com.google.android.gms.measurement.internal;

import android.os.Bundle;
/* renamed from: com.google.android.gms.measurement.internal.gu */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/measurement/internal/gu.class */
public final class RunnableC4340gu implements Runnable {

    /* renamed from: a */
    private final /* synthetic */ Bundle f19029a;

    /* renamed from: b */
    private final /* synthetic */ C4330gk f19030b;

    public RunnableC4340gu(C4330gk c4330gk, Bundle bundle) {
        this.f19030b = c4330gk;
        this.f19029a = bundle;
    }

    @Override // java.lang.Runnable
    public final void run() {
        this.f19030b.m4379d(this.f19029a);
    }
}

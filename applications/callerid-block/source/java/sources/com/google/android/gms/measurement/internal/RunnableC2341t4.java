package com.google.android.gms.measurement.internal;

import android.os.Bundle;
/* renamed from: com.google.android.gms.measurement.internal.t4 */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/measurement/internal/t4.class */
final /* synthetic */ class RunnableC2341t4 implements Runnable {

    /* renamed from: b */
    private final l5 f10416b;

    /* renamed from: c */
    private final String f10417c;

    /* renamed from: d */
    private final Bundle f10418d;

    RunnableC2341t4(l5 l5Var, String str, Bundle bundle) {
        this.f10416b = l5Var;
        this.f10417c = str;
        this.f10418d = bundle;
    }

    @Override // java.lang.Runnable
    public final void run() {
        this.f10416b.g3(this.f10417c, this.f10418d);
    }
}

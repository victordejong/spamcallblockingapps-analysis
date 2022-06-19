package com.google.android.gms.measurement.internal;

import java.util.List;
import java.util.concurrent.Callable;
/* renamed from: com.google.android.gms.measurement.internal.i5 */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/measurement/internal/i5.class */
final class CallableC2275i5 implements Callable<List<C2339s9>> {

    /* renamed from: a */
    final /* synthetic */ String f10235a;

    /* renamed from: b */
    final /* synthetic */ l5 f10236b;

    CallableC2275i5(l5 l5Var, String str) {
        this.f10236b = l5Var;
        this.f10235a = str;
    }

    @Override // java.util.concurrent.Callable
    public final /* bridge */ /* synthetic */ List<C2339s9> call() {
        l5.w4(this.f10236b).k();
        return l5.w4(this.f10236b).V().V(this.f10235a);
    }
}

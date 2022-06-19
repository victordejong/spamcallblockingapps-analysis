package com.google.android.gms.measurement.internal;

import java.util.List;
import java.util.concurrent.Callable;
/* renamed from: com.google.android.gms.measurement.internal.i5 */
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/measurement/internal/i5.class */
final class CallableC7746i5 implements Callable<List<C7863s9>> {

    /* renamed from: a */
    final /* synthetic */ String f35334a;

    /* renamed from: b */
    final /* synthetic */ BinderC7782l5 f35335b;

    public CallableC7746i5(BinderC7782l5 binderC7782l5, String str) {
        this.f35335b = binderC7782l5;
        this.f35334a = str;
    }

    @Override // java.util.concurrent.Callable
    public final /* bridge */ /* synthetic */ List<C7863s9> call() {
        C7819o9 c7819o9;
        C7819o9 c7819o92;
        c7819o9 = this.f35335b.f35423d;
        c7819o9.m6137k();
        c7819o92 = this.f35335b.f35423d;
        return c7819o92.m6158W().m6393V(this.f35334a);
    }
}

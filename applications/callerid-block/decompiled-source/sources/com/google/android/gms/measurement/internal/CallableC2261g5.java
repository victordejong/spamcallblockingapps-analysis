package com.google.android.gms.measurement.internal;

import java.util.concurrent.Callable;
/* renamed from: com.google.android.gms.measurement.internal.g5 */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/measurement/internal/g5.class */
final class CallableC2261g5 implements Callable<byte[]> {

    /* renamed from: a */
    final /* synthetic */ zzas f10208a;

    /* renamed from: b */
    final /* synthetic */ String f10209b;

    /* renamed from: c */
    final /* synthetic */ l5 f10210c;

    CallableC2261g5(l5 l5Var, zzas zzasVar, String str) {
        this.f10210c = l5Var;
        this.f10208a = zzasVar;
        this.f10209b = str;
    }

    @Override // java.util.concurrent.Callable
    public final /* bridge */ /* synthetic */ byte[] call() {
        l5.w4(this.f10210c).k();
        l5.w4(this.f10210c).X().f();
        s4.s();
        throw null;
    }
}

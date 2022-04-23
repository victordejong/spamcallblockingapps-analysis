package com.google.android.gms.measurement.internal;

import java.util.List;
import java.util.concurrent.Callable;
/* renamed from: com.google.android.gms.measurement.internal.w4 */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/measurement/internal/w4.class */
final class CallableC2357w4 implements Callable<List<C2339s9>> {

    /* renamed from: a */
    final /* synthetic */ String f10456a;

    /* renamed from: b */
    final /* synthetic */ String f10457b;

    /* renamed from: c */
    final /* synthetic */ String f10458c;

    /* renamed from: d */
    final /* synthetic */ l5 f10459d;

    CallableC2357w4(l5 l5Var, String str, String str2, String str3) {
        this.f10459d = l5Var;
        this.f10456a = str;
        this.f10457b = str2;
        this.f10458c = str3;
    }

    @Override // java.util.concurrent.Callable
    public final /* bridge */ /* synthetic */ List<C2339s9> call() {
        l5.w4(this.f10459d).k();
        return l5.w4(this.f10459d).V().W(this.f10456a, this.f10457b, this.f10458c);
    }
}

package com.google.android.gms.measurement.internal;

import java.util.List;
import java.util.concurrent.Callable;
/* renamed from: com.google.android.gms.measurement.internal.y4 */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/measurement/internal/y4.class */
final class CallableC2373y4 implements Callable<List<zzaa>> {

    /* renamed from: a */
    final /* synthetic */ String f10493a;

    /* renamed from: b */
    final /* synthetic */ String f10494b;

    /* renamed from: c */
    final /* synthetic */ String f10495c;

    /* renamed from: d */
    final /* synthetic */ l5 f10496d;

    CallableC2373y4(l5 l5Var, String str, String str2, String str3) {
        this.f10496d = l5Var;
        this.f10493a = str;
        this.f10494b = str2;
        this.f10495c = str3;
    }

    @Override // java.util.concurrent.Callable
    public final /* bridge */ /* synthetic */ List<zzaa> call() {
        l5.w4(this.f10496d).k();
        return l5.w4(this.f10496d).V().a0(this.f10493a, this.f10494b, this.f10495c);
    }
}

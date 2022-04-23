package com.google.android.gms.measurement.internal;

import java.util.List;
import java.util.concurrent.Callable;
/* renamed from: com.google.android.gms.measurement.internal.x4 */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/measurement/internal/x4.class */
final class CallableC2364x4 implements Callable<List<C2339s9>> {

    /* renamed from: a */
    final /* synthetic */ String f10465a;

    /* renamed from: b */
    final /* synthetic */ String f10466b;

    /* renamed from: c */
    final /* synthetic */ String f10467c;

    /* renamed from: d */
    final /* synthetic */ l5 f10468d;

    CallableC2364x4(l5 l5Var, String str, String str2, String str3) {
        this.f10468d = l5Var;
        this.f10465a = str;
        this.f10466b = str2;
        this.f10467c = str3;
    }

    @Override // java.util.concurrent.Callable
    public final /* bridge */ /* synthetic */ List<C2339s9> call() {
        l5.w4(this.f10468d).k();
        return l5.w4(this.f10468d).V().W(this.f10465a, this.f10466b, this.f10467c);
    }
}

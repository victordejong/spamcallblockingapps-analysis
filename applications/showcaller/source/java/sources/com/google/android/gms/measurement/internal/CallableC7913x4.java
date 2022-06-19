package com.google.android.gms.measurement.internal;

import java.util.List;
import java.util.concurrent.Callable;
/* renamed from: com.google.android.gms.measurement.internal.x4 */
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/measurement/internal/x4.class */
final class CallableC7913x4 implements Callable<List<C7863s9>> {

    /* renamed from: a */
    final /* synthetic */ String f35786a;

    /* renamed from: b */
    final /* synthetic */ String f35787b;

    /* renamed from: c */
    final /* synthetic */ String f35788c;

    /* renamed from: d */
    final /* synthetic */ BinderC7782l5 f35789d;

    public CallableC7913x4(BinderC7782l5 binderC7782l5, String str, String str2, String str3) {
        this.f35789d = binderC7782l5;
        this.f35786a = str;
        this.f35787b = str2;
        this.f35788c = str3;
    }

    @Override // java.util.concurrent.Callable
    public final /* bridge */ /* synthetic */ List<C7863s9> call() {
        C7819o9 c7819o9;
        C7819o9 c7819o92;
        c7819o9 = this.f35789d.f35423d;
        c7819o9.m6137k();
        c7819o92 = this.f35789d.f35423d;
        return c7819o92.m6158W().m6392W(this.f35786a, this.f35787b, this.f35788c);
    }
}

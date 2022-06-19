package com.google.android.gms.measurement.internal;

import java.util.List;
import java.util.concurrent.Callable;
/* renamed from: com.google.android.gms.measurement.internal.z4 */
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/measurement/internal/z4.class */
final class CallableC7935z4 implements Callable<List<zzaa>> {

    /* renamed from: a */
    final /* synthetic */ String f35843a;

    /* renamed from: b */
    final /* synthetic */ String f35844b;

    /* renamed from: c */
    final /* synthetic */ String f35845c;

    /* renamed from: d */
    final /* synthetic */ BinderC7782l5 f35846d;

    public CallableC7935z4(BinderC7782l5 binderC7782l5, String str, String str2, String str3) {
        this.f35846d = binderC7782l5;
        this.f35843a = str;
        this.f35844b = str2;
        this.f35845c = str3;
    }

    @Override // java.util.concurrent.Callable
    public final /* bridge */ /* synthetic */ List<zzaa> call() {
        C7819o9 c7819o9;
        C7819o9 c7819o92;
        c7819o9 = this.f35846d.f35423d;
        c7819o9.m6137k();
        c7819o92 = this.f35846d.f35423d;
        return c7819o92.m6158W().m6388a0(this.f35843a, this.f35844b, this.f35845c);
    }
}

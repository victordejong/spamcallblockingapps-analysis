package com.google.android.gms.measurement.internal;

import java.util.List;
import java.util.concurrent.Callable;
/* renamed from: com.google.android.gms.measurement.internal.y4 */
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/measurement/internal/y4.class */
final class CallableC7924y4 implements Callable<List<zzaa>> {

    /* renamed from: a */
    final /* synthetic */ String f35816a;

    /* renamed from: b */
    final /* synthetic */ String f35817b;

    /* renamed from: c */
    final /* synthetic */ String f35818c;

    /* renamed from: d */
    final /* synthetic */ BinderC7782l5 f35819d;

    public CallableC7924y4(BinderC7782l5 binderC7782l5, String str, String str2, String str3) {
        this.f35819d = binderC7782l5;
        this.f35816a = str;
        this.f35817b = str2;
        this.f35818c = str3;
    }

    @Override // java.util.concurrent.Callable
    public final /* bridge */ /* synthetic */ List<zzaa> call() {
        C7819o9 c7819o9;
        C7819o9 c7819o92;
        c7819o9 = this.f35819d.f35423d;
        c7819o9.m6137k();
        c7819o92 = this.f35819d.f35423d;
        return c7819o92.m6158W().m6388a0(this.f35816a, this.f35817b, this.f35818c);
    }
}

package com.google.android.gms.measurement.internal;

import java.util.List;
import java.util.concurrent.Callable;
/* renamed from: com.google.android.gms.measurement.internal.ey */
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/measurement/internal/ey.class */
final class CallableC13985ey implements Callable<List<zzaa>> {

    /* renamed from: a */
    final /* synthetic */ String f51564a;

    /* renamed from: b */
    final /* synthetic */ String f51565b;

    /* renamed from: c */
    final /* synthetic */ String f51566c;

    /* renamed from: d */
    final /* synthetic */ BinderC13999fl f51567d;

    public CallableC13985ey(BinderC13999fl binderC13999fl, String str, String str2, String str3) {
        this.f51567d = binderC13999fl;
        this.f51564a = str;
        this.f51565b = str2;
        this.f51566c = str3;
    }

    @Override // java.util.concurrent.Callable
    public final /* synthetic */ List<zzaa> call() throws Exception {
        C14110jo c14110jo;
        C14110jo c14110jo2;
        c14110jo = this.f51567d.f51634a;
        c14110jo.m11648n();
        c14110jo2 = this.f51567d.f51634a;
        return c14110jo2.m11654f().m11789b(this.f51564a, this.f51565b, this.f51566c);
    }
}

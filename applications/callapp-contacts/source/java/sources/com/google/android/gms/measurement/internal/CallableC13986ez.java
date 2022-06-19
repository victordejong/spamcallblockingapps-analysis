package com.google.android.gms.measurement.internal;

import java.util.List;
import java.util.concurrent.Callable;
/* renamed from: com.google.android.gms.measurement.internal.ez */
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/measurement/internal/ez.class */
final class CallableC13986ez implements Callable<List<zzaa>> {

    /* renamed from: a */
    final /* synthetic */ String f51568a;

    /* renamed from: b */
    final /* synthetic */ String f51569b;

    /* renamed from: c */
    final /* synthetic */ String f51570c;

    /* renamed from: d */
    final /* synthetic */ BinderC13999fl f51571d;

    public CallableC13986ez(BinderC13999fl binderC13999fl, String str, String str2, String str3) {
        this.f51571d = binderC13999fl;
        this.f51568a = str;
        this.f51569b = str2;
        this.f51570c = str3;
    }

    @Override // java.util.concurrent.Callable
    public final /* synthetic */ List<zzaa> call() throws Exception {
        C14110jo c14110jo;
        C14110jo c14110jo2;
        c14110jo = this.f51571d.f51634a;
        c14110jo.m11648n();
        c14110jo2 = this.f51571d.f51634a;
        return c14110jo2.m11654f().m11789b(this.f51568a, this.f51569b, this.f51570c);
    }
}

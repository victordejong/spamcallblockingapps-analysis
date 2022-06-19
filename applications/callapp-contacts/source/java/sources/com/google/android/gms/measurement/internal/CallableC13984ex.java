package com.google.android.gms.measurement.internal;

import java.util.List;
import java.util.concurrent.Callable;
/* renamed from: com.google.android.gms.measurement.internal.ex */
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/measurement/internal/ex.class */
final class CallableC13984ex implements Callable<List<C14114js>> {

    /* renamed from: a */
    final /* synthetic */ String f51560a;

    /* renamed from: b */
    final /* synthetic */ String f51561b;

    /* renamed from: c */
    final /* synthetic */ String f51562c;

    /* renamed from: d */
    final /* synthetic */ BinderC13999fl f51563d;

    public CallableC13984ex(BinderC13999fl binderC13999fl, String str, String str2, String str3) {
        this.f51563d = binderC13999fl;
        this.f51560a = str;
        this.f51561b = str2;
        this.f51562c = str3;
    }

    @Override // java.util.concurrent.Callable
    public final /* synthetic */ List<C14114js> call() throws Exception {
        C14110jo c14110jo;
        C14110jo c14110jo2;
        c14110jo = this.f51563d.f51634a;
        c14110jo.m11648n();
        c14110jo2 = this.f51563d.f51634a;
        return c14110jo2.m11654f().m11798a(this.f51560a, this.f51561b, this.f51562c);
    }
}

package com.google.android.gms.measurement.internal;

import java.util.List;
import java.util.concurrent.Callable;
/* renamed from: com.google.android.gms.measurement.internal.ew */
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/measurement/internal/ew.class */
final class CallableC13983ew implements Callable<List<C14114js>> {

    /* renamed from: a */
    final /* synthetic */ String f51556a;

    /* renamed from: b */
    final /* synthetic */ String f51557b;

    /* renamed from: c */
    final /* synthetic */ String f51558c;

    /* renamed from: d */
    final /* synthetic */ BinderC13999fl f51559d;

    public CallableC13983ew(BinderC13999fl binderC13999fl, String str, String str2, String str3) {
        this.f51559d = binderC13999fl;
        this.f51556a = str;
        this.f51557b = str2;
        this.f51558c = str3;
    }

    @Override // java.util.concurrent.Callable
    public final /* synthetic */ List<C14114js> call() throws Exception {
        C14110jo c14110jo;
        C14110jo c14110jo2;
        c14110jo = this.f51559d.f51634a;
        c14110jo.m11648n();
        c14110jo2 = this.f51559d.f51634a;
        return c14110jo2.m11654f().m11798a(this.f51556a, this.f51557b, this.f51558c);
    }
}

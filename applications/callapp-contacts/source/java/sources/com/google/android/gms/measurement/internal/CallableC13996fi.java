package com.google.android.gms.measurement.internal;

import java.util.List;
import java.util.concurrent.Callable;
/* renamed from: com.google.android.gms.measurement.internal.fi */
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/measurement/internal/fi.class */
final class CallableC13996fi implements Callable<List<C14114js>> {

    /* renamed from: a */
    final /* synthetic */ String f51625a;

    /* renamed from: b */
    final /* synthetic */ BinderC13999fl f51626b;

    public CallableC13996fi(BinderC13999fl binderC13999fl, String str) {
        this.f51626b = binderC13999fl;
        this.f51625a = str;
    }

    @Override // java.util.concurrent.Callable
    public final /* synthetic */ List<C14114js> call() throws Exception {
        C14110jo c14110jo;
        C14110jo c14110jo2;
        c14110jo = this.f51626b.f51634a;
        c14110jo.m11648n();
        c14110jo2 = this.f51626b.f51634a;
        return c14110jo2.m11654f().m11801a(this.f51625a);
    }
}

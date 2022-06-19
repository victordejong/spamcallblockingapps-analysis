package com.google.android.gms.measurement.internal;
/* renamed from: com.google.android.gms.measurement.internal.ff */
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/measurement/internal/ff.class */
final class RunnableC13993ff implements Runnable {

    /* renamed from: a */
    final /* synthetic */ zzas f51616a;

    /* renamed from: b */
    final /* synthetic */ String f51617b;

    /* renamed from: c */
    final /* synthetic */ BinderC13999fl f51618c;

    public RunnableC13993ff(BinderC13999fl binderC13999fl, zzas zzasVar, String str) {
        this.f51618c = binderC13999fl;
        this.f51616a = zzasVar;
        this.f51617b = str;
    }

    @Override // java.lang.Runnable
    public final void run() {
        C14110jo c14110jo;
        C14110jo c14110jo2;
        c14110jo = this.f51618c.f51634a;
        c14110jo.m11648n();
        c14110jo2 = this.f51618c.f51634a;
        c14110jo2.m11676a(this.f51616a, this.f51617b);
    }
}

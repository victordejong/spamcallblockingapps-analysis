package com.google.android.gms.measurement.internal;
/* renamed from: com.google.android.gms.measurement.internal.eu */
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/measurement/internal/eu.class */
final class RunnableC13981eu implements Runnable {

    /* renamed from: a */
    final /* synthetic */ zzaa f51551a;

    /* renamed from: b */
    final /* synthetic */ zzp f51552b;

    /* renamed from: c */
    final /* synthetic */ BinderC13999fl f51553c;

    public RunnableC13981eu(BinderC13999fl binderC13999fl, zzaa zzaaVar, zzp zzpVar) {
        this.f51553c = binderC13999fl;
        this.f51551a = zzaaVar;
        this.f51552b = zzpVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        C14110jo c14110jo;
        C14110jo c14110jo2;
        C14110jo c14110jo3;
        c14110jo = this.f51553c.f51634a;
        c14110jo.m11648n();
        if (this.f51551a.zzc.zza() == null) {
            c14110jo3 = this.f51553c.f51634a;
            c14110jo3.m11666b(this.f51551a, this.f51552b);
            return;
        }
        c14110jo2 = this.f51553c.f51634a;
        c14110jo2.m11678a(this.f51551a, this.f51552b);
    }
}

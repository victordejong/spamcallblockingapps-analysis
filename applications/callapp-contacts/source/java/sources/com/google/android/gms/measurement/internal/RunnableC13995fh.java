package com.google.android.gms.measurement.internal;
/* renamed from: com.google.android.gms.measurement.internal.fh */
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/measurement/internal/fh.class */
final class RunnableC13995fh implements Runnable {

    /* renamed from: a */
    final /* synthetic */ zzkl f51622a;

    /* renamed from: b */
    final /* synthetic */ zzp f51623b;

    /* renamed from: c */
    final /* synthetic */ BinderC13999fl f51624c;

    public RunnableC13995fh(BinderC13999fl binderC13999fl, zzkl zzklVar, zzp zzpVar) {
        this.f51624c = binderC13999fl;
        this.f51622a = zzklVar;
        this.f51623b = zzpVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        C14110jo c14110jo;
        C14110jo c14110jo2;
        C14110jo c14110jo3;
        c14110jo = this.f51624c.f51634a;
        c14110jo.m11648n();
        if (this.f51622a.zza() == null) {
            c14110jo3 = this.f51624c.f51634a;
            c14110jo3.m11664b(this.f51622a, this.f51623b);
            return;
        }
        c14110jo2 = this.f51624c.f51634a;
        c14110jo2.m11675a(this.f51622a, this.f51623b);
    }
}

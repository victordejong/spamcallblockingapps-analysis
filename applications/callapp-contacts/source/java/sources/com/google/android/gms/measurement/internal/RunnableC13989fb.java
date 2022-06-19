package com.google.android.gms.measurement.internal;

import com.google.android.gms.common.internal.C12045o;
/* renamed from: com.google.android.gms.measurement.internal.fb */
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/measurement/internal/fb.class */
final class RunnableC13989fb implements Runnable {

    /* renamed from: a */
    final /* synthetic */ zzp f51577a;

    /* renamed from: b */
    final /* synthetic */ BinderC13999fl f51578b;

    public RunnableC13989fb(BinderC13999fl binderC13999fl, zzp zzpVar) {
        this.f51578b = binderC13999fl;
        this.f51577a = zzpVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        C14110jo c14110jo;
        C14110jo c14110jo2;
        c14110jo = this.f51578b.f51634a;
        c14110jo.m11648n();
        c14110jo2 = this.f51578b.f51634a;
        zzp zzpVar = this.f51577a;
        c14110jo2.mo11658d().mo11884S_();
        c14110jo2.m11651i();
        C12045o.m19160a(zzpVar.zza);
        c14110jo2.m11659c(zzpVar);
    }
}

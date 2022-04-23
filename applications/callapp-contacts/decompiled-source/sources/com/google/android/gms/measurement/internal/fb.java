package com.google.android.gms.measurement.internal;

import com.google.android.gms.common.internal.o;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/measurement/internal/fb.class */
final class fb implements Runnable {

    /* renamed from: a  reason: collision with root package name */
    final /* synthetic */ zzp f29616a;

    /* renamed from: b  reason: collision with root package name */
    final /* synthetic */ fl f29617b;

    /* JADX INFO: Access modifiers changed from: package-private */
    public fb(fl flVar, zzp zzpVar) {
        this.f29617b = flVar;
        this.f29616a = zzpVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        jo joVar;
        jo joVar2;
        joVar = this.f29617b.f29644a;
        joVar.n();
        joVar2 = this.f29617b.f29644a;
        zzp zzpVar = this.f29616a;
        joVar2.d().S_();
        joVar2.i();
        o.a(zzpVar.zza);
        joVar2.c(zzpVar);
    }
}

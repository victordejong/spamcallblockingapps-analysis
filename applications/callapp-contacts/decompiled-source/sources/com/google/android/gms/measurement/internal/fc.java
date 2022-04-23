package com.google.android.gms.measurement.internal;

import com.google.android.gms.common.internal.o;
import com.google.android.gms.internal.measurement.jy;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/measurement/internal/fc.class */
final class fc implements Runnable {

    /* renamed from: a  reason: collision with root package name */
    final /* synthetic */ zzp f29618a;

    /* renamed from: b  reason: collision with root package name */
    final /* synthetic */ fl f29619b;

    /* JADX INFO: Access modifiers changed from: package-private */
    public fc(fl flVar, zzp zzpVar) {
        this.f29619b = flVar;
        this.f29618a = zzpVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        jo joVar;
        jo joVar2;
        joVar = this.f29619b.f29644a;
        joVar.n();
        joVar2 = this.f29619b.f29644a;
        zzp zzpVar = this.f29618a;
        jy.b();
        if (joVar2.b().d(null, dc.aw)) {
            joVar2.d().S_();
            joVar2.i();
            o.a(zzpVar.zza);
            f a2 = f.a(zzpVar.zzv);
            f a3 = joVar2.a(zzpVar.zza);
            joVar2.c().k.a("Setting consent, package, consent", zzpVar.zza, a2);
            joVar2.a(zzpVar.zza, a2);
            if (a2.a(a3)) {
                joVar2.a(zzpVar);
            }
        }
    }
}

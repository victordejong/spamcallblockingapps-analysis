package com.google.android.gms.measurement.internal;

import com.google.android.gms.common.internal.o;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/measurement/internal/ev.class */
final class ev implements Runnable {

    /* renamed from: a  reason: collision with root package name */
    final /* synthetic */ zzaa f29593a;

    /* renamed from: b  reason: collision with root package name */
    final /* synthetic */ fl f29594b;

    /* JADX INFO: Access modifiers changed from: package-private */
    public ev(fl flVar, zzaa zzaaVar) {
        this.f29594b = flVar;
        this.f29593a = zzaaVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        jo joVar;
        jo joVar2;
        jo joVar3;
        joVar = this.f29594b.f29644a;
        joVar.n();
        if (this.f29593a.zzc.zza() == null) {
            joVar3 = this.f29594b.f29644a;
            zzaa zzaaVar = this.f29593a;
            zzp b2 = joVar3.b((String) o.a(zzaaVar.zza));
            if (b2 != null) {
                joVar3.b(zzaaVar, b2);
                return;
            }
            return;
        }
        joVar2 = this.f29594b.f29644a;
        zzaa zzaaVar2 = this.f29593a;
        zzp b3 = joVar2.b((String) o.a(zzaaVar2.zza));
        if (b3 != null) {
            joVar2.a(zzaaVar2, b3);
        }
    }
}

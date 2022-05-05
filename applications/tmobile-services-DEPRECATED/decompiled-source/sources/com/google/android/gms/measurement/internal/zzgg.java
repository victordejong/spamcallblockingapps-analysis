package com.google.android.gms.measurement.internal;

import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.internal.measurement.zzmj;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/measurement/internal/zzgg.class */
final class zzgg implements Runnable {

    /* renamed from: f */
    private final /* synthetic */ zzn f9334f;

    /* renamed from: g */
    private final /* synthetic */ zzfw f9335g;

    /* JADX INFO: Access modifiers changed from: package-private */
    public zzgg(zzfw zzfwVar, zzn zznVar) {
        this.f9335g = zzfwVar;
        this.f9334f = zznVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        zzki zzkiVar;
        zzki zzkiVar2;
        zzkiVar = this.f9335g.f9302a;
        zzkiVar.m11066j0();
        zzkiVar2 = this.f9335g.f9302a;
        zzn zznVar = this.f9334f;
        if (zzmj.m11898a() && zzkiVar2.m11099M().m10880r(zzat.f8906J0)) {
            zzkiVar2.mo11083b().mo11316e();
            zzkiVar2.m11070h0();
            Preconditions.m14527g(zznVar.f9725f);
            zzad b = zzad.m11736b(zznVar.f9724B);
            zzad e = zzkiVar2.m11077e(zznVar.f9725f);
            zzkiVar2.m11109C(zznVar.f9725f, b);
            if (b.m11730h(e)) {
                zzkiVar2.m11045x(zznVar);
            }
        }
    }
}

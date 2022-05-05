package com.google.android.gms.measurement.internal;

import com.google.android.gms.common.internal.Preconditions;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/measurement/internal/zzfy.class */
final class zzfy implements Runnable {

    /* renamed from: f */
    private final /* synthetic */ zzn f9307f;

    /* renamed from: g */
    private final /* synthetic */ zzfw f9308g;

    /* JADX INFO: Access modifiers changed from: package-private */
    public zzfy(zzfw zzfwVar, zzn zznVar) {
        this.f9308g = zzfwVar;
        this.f9307f = zznVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        zzki zzkiVar;
        zzki zzkiVar2;
        zzkiVar = this.f9308g.f9302a;
        zzkiVar.m11066j0();
        zzkiVar2 = this.f9308g.f9302a;
        zzn zznVar = this.f9307f;
        zzkiVar2.mo11083b().mo11316e();
        zzkiVar2.m11070h0();
        Preconditions.m14527g(zznVar.f9725f);
        zzkiVar2.m11090V(zznVar);
    }
}

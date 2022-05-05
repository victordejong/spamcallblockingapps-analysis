package com.google.android.gms.measurement.internal;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/measurement/internal/zzgm.class */
final class zzgm implements Runnable {

    /* renamed from: f */
    private final /* synthetic */ zzn f9350f;

    /* renamed from: g */
    private final /* synthetic */ zzfw f9351g;

    /* JADX INFO: Access modifiers changed from: package-private */
    public zzgm(zzfw zzfwVar, zzn zznVar) {
        this.f9351g = zzfwVar;
        this.f9350f = zznVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        zzki zzkiVar;
        zzki zzkiVar2;
        zzkiVar = this.f9351g.f9302a;
        zzkiVar.m11066j0();
        zzkiVar2 = this.f9351g.f9302a;
        zzkiVar2.m11093S(this.f9350f);
    }
}

package com.google.android.gms.measurement.internal;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/measurement/internal/zzgh.class */
final class zzgh implements Runnable {

    /* renamed from: f */
    private final /* synthetic */ zzn f9336f;

    /* renamed from: g */
    private final /* synthetic */ zzfw f9337g;

    /* JADX INFO: Access modifiers changed from: package-private */
    public zzgh(zzfw zzfwVar, zzn zznVar) {
        this.f9337g = zzfwVar;
        this.f9336f = zznVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        zzki zzkiVar;
        zzki zzkiVar2;
        zzkiVar = this.f9337g.f9302a;
        zzkiVar.m11066j0();
        zzkiVar2 = this.f9337g.f9302a;
        zzkiVar2.m11045x(this.f9336f);
    }
}

package com.google.android.gms.measurement.internal;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/measurement/internal/zzga.class */
final class zzga implements Runnable {

    /* renamed from: f */
    private final /* synthetic */ zzw f9313f;

    /* renamed from: g */
    private final /* synthetic */ zzfw f9314g;

    /* JADX INFO: Access modifiers changed from: package-private */
    public zzga(zzfw zzfwVar, zzw zzwVar) {
        this.f9314g = zzfwVar;
        this.f9313f = zzwVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        zzki zzkiVar;
        zzki zzkiVar2;
        zzki zzkiVar3;
        zzkiVar = this.f9314g.f9302a;
        zzkiVar.m11066j0();
        if (this.f9313f.f9778h.m11035B() == null) {
            zzkiVar3 = this.f9314g.f9302a;
            zzkiVar3.m11092T(this.f9313f);
            return;
        }
        zzkiVar2 = this.f9314g.f9302a;
        zzkiVar2.m11044y(this.f9313f);
    }
}

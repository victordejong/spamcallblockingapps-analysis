package com.google.android.gms.measurement.internal;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/measurement/internal/zzgk.class */
final class zzgk implements Runnable {

    /* renamed from: f */
    private final /* synthetic */ zzkr f9344f;

    /* renamed from: g */
    private final /* synthetic */ zzn f9345g;

    /* renamed from: h */
    private final /* synthetic */ zzfw f9346h;

    /* JADX INFO: Access modifiers changed from: package-private */
    public zzgk(zzfw zzfwVar, zzkr zzkrVar, zzn zznVar) {
        this.f9346h = zzfwVar;
        this.f9344f = zzkrVar;
        this.f9345g = zznVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        zzki zzkiVar;
        zzki zzkiVar2;
        zzki zzkiVar3;
        zzkiVar = this.f9346h.f9302a;
        zzkiVar.m11066j0();
        if (this.f9344f.m11035B() == null) {
            zzkiVar3 = this.f9346h.f9302a;
            zzkiVar3.m11094R(this.f9344f, this.f9345g);
            return;
        }
        zzkiVar2 = this.f9346h.f9302a;
        zzkiVar2.m11046w(this.f9344f, this.f9345g);
    }
}

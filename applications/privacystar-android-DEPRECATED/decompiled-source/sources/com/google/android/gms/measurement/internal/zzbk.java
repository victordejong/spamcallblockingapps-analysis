package com.google.android.gms.measurement.internal;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/measurement/internal/zzbk.class */
final class zzbk implements Runnable {
    private final /* synthetic */ zzbt zzaoj;
    private final /* synthetic */ zzap zzaok;

    /* JADX INFO: Access modifiers changed from: package-private */
    public zzbk(zzbj zzbjVar, zzbt zzbtVar, zzap zzapVar) {
        this.zzaoj = zzbtVar;
        this.zzaok = zzapVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        if (this.zzaoj.zzkg() == null) {
            this.zzaok.zzjd().zzbx("Install Referrer Reporter is null");
            return;
        }
        zzbg zzkg = this.zzaoj.zzkg();
        zzkg.zzadj.zzgb();
        zzkg.zzcd(zzkg.zzadj.getContext().getPackageName());
    }
}

package com.google.android.gms.measurement.internal;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/measurement/internal/zzed.class */
public final class zzed implements Runnable {
    private final /* synthetic */ zzh zzaqn;
    private final /* synthetic */ zzfh zzaqs;
    private final /* synthetic */ zzdr zzasg;
    private final /* synthetic */ boolean zzasj;

    /* JADX INFO: Access modifiers changed from: package-private */
    public zzed(zzdr zzdrVar, boolean z, zzfh zzfhVar, zzh zzhVar) {
        this.zzasg = zzdrVar;
        this.zzasj = z;
        this.zzaqs = zzfhVar;
        this.zzaqn = zzhVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        zzag zzagVar;
        zzagVar = this.zzasg.zzasa;
        if (zzagVar == null) {
            this.zzasg.zzgo().zzjd().zzbx("Discarding data. Failed to set user attribute");
            return;
        }
        this.zzasg.zza(zzagVar, this.zzasj ? null : this.zzaqs, this.zzaqn);
        this.zzasg.zzcy();
    }
}

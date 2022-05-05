package com.google.android.gms.measurement.internal;

import android.os.RemoteException;
import android.text.TextUtils;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/measurement/internal/zzdz.class */
public final class zzdz implements Runnable {
    private final /* synthetic */ zzh zzaqn;
    private final /* synthetic */ String zzaqq;
    private final /* synthetic */ zzad zzaqr;
    private final /* synthetic */ zzdr zzasg;
    private final /* synthetic */ boolean zzasi;
    private final /* synthetic */ boolean zzasj;

    /* JADX INFO: Access modifiers changed from: package-private */
    public zzdz(zzdr zzdrVar, boolean z, boolean z2, zzad zzadVar, zzh zzhVar, String str) {
        this.zzasg = zzdrVar;
        this.zzasi = z;
        this.zzasj = z2;
        this.zzaqr = zzadVar;
        this.zzaqn = zzhVar;
        this.zzaqq = str;
    }

    @Override // java.lang.Runnable
    public final void run() {
        zzag zzagVar;
        zzagVar = this.zzasg.zzasa;
        if (zzagVar == null) {
            this.zzasg.zzgo().zzjd().zzbx("Discarding data. Failed to send event to service");
            return;
        }
        if (this.zzasi) {
            this.zzasg.zza(zzagVar, this.zzasj ? null : this.zzaqr, this.zzaqn);
        } else {
            try {
                if (TextUtils.isEmpty(this.zzaqq)) {
                    zzagVar.zza(this.zzaqr, this.zzaqn);
                } else {
                    zzagVar.zza(this.zzaqr, this.zzaqq, this.zzasg.zzgo().zzjn());
                }
            } catch (RemoteException e) {
                this.zzasg.zzgo().zzjd().zzg("Failed to send event to the service", e);
            }
        }
        this.zzasg.zzcy();
    }
}

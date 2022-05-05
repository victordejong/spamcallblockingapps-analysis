package com.google.android.gms.measurement.internal;

import android.os.RemoteException;
import android.text.TextUtils;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/measurement/internal/zzea.class */
public final class zzea implements Runnable {
    private final /* synthetic */ zzh zzaqn;
    private final /* synthetic */ zzdr zzasg;
    private final /* synthetic */ boolean zzasi;
    private final /* synthetic */ boolean zzasj;
    private final /* synthetic */ zzl zzask;
    private final /* synthetic */ zzl zzasl;

    /* JADX INFO: Access modifiers changed from: package-private */
    public zzea(zzdr zzdrVar, boolean z, boolean z2, zzl zzlVar, zzh zzhVar, zzl zzlVar2) {
        this.zzasg = zzdrVar;
        this.zzasi = z;
        this.zzasj = z2;
        this.zzask = zzlVar;
        this.zzaqn = zzhVar;
        this.zzasl = zzlVar2;
    }

    @Override // java.lang.Runnable
    public final void run() {
        zzag zzagVar;
        zzagVar = this.zzasg.zzasa;
        if (zzagVar == null) {
            this.zzasg.zzgo().zzjd().zzbx("Discarding data. Failed to send conditional user property to service");
            return;
        }
        if (this.zzasi) {
            this.zzasg.zza(zzagVar, this.zzasj ? null : this.zzask, this.zzaqn);
        } else {
            try {
                if (TextUtils.isEmpty(this.zzasl.packageName)) {
                    zzagVar.zza(this.zzask, this.zzaqn);
                } else {
                    zzagVar.zzb(this.zzask);
                }
            } catch (RemoteException e) {
                this.zzasg.zzgo().zzjd().zzg("Failed to send conditional user property to the service", e);
            }
        }
        this.zzasg.zzcy();
    }
}

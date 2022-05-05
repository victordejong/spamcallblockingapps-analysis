package com.google.android.gms.measurement.internal;

import android.os.RemoteException;
import java.util.concurrent.atomic.AtomicReference;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/measurement/internal/zzdu.class */
public final class zzdu implements Runnable {
    private final /* synthetic */ zzh zzaqn;
    private final /* synthetic */ zzdr zzasg;
    private final /* synthetic */ AtomicReference zzash;

    /* JADX INFO: Access modifiers changed from: package-private */
    public zzdu(zzdr zzdrVar, AtomicReference atomicReference, zzh zzhVar) {
        this.zzasg = zzdrVar;
        this.zzash = atomicReference;
        this.zzaqn = zzhVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        zzag zzagVar;
        synchronized (this.zzash) {
            try {
                zzagVar = this.zzasg.zzasa;
            } catch (RemoteException e) {
                this.zzasg.zzgo().zzjd().zzg("Failed to get app instance id", e);
                this.zzash.notify();
            }
            if (zzagVar == null) {
                this.zzasg.zzgo().zzjd().zzbx("Failed to get app instance id");
                this.zzash.notify();
                return;
            }
            this.zzash.set(zzagVar.zzc(this.zzaqn));
            String str = (String) this.zzash.get();
            if (str != null) {
                this.zzasg.zzge().zzcm(str);
                this.zzasg.zzgp().zzanl.zzcc(str);
            }
            this.zzasg.zzcy();
            this.zzash.notify();
        }
    }
}

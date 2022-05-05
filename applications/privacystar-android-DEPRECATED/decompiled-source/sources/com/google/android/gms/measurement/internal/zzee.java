package com.google.android.gms.measurement.internal;

import android.os.RemoteException;
import java.util.concurrent.atomic.AtomicReference;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/measurement/internal/zzee.class */
public final class zzee implements Runnable {
    private final /* synthetic */ boolean zzaev;
    private final /* synthetic */ zzh zzaqn;
    private final /* synthetic */ zzdr zzasg;
    private final /* synthetic */ AtomicReference zzash;

    /* JADX INFO: Access modifiers changed from: package-private */
    public zzee(zzdr zzdrVar, AtomicReference atomicReference, zzh zzhVar, boolean z) {
        this.zzasg = zzdrVar;
        this.zzash = atomicReference;
        this.zzaqn = zzhVar;
        this.zzaev = z;
    }

    @Override // java.lang.Runnable
    public final void run() {
        zzag zzagVar;
        synchronized (this.zzash) {
            try {
                zzagVar = this.zzasg.zzasa;
            } catch (RemoteException e) {
                this.zzasg.zzgo().zzjd().zzg("Failed to get user properties", e);
                this.zzash.notify();
            }
            if (zzagVar == null) {
                this.zzasg.zzgo().zzjd().zzbx("Failed to get user properties");
                this.zzash.notify();
                return;
            }
            this.zzash.set(zzagVar.zza(this.zzaqn, this.zzaev));
            this.zzasg.zzcy();
            this.zzash.notify();
        }
    }
}

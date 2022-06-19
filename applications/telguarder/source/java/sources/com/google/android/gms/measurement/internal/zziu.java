package com.google.android.gms.measurement.internal;

import android.os.RemoteException;
import android.text.TextUtils;
import com.google.android.gms.common.internal.Preconditions;
import java.util.Collections;
import java.util.concurrent.atomic.AtomicReference;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/measurement/internal/zziu.class */
public final class zziu implements Runnable {
    final /* synthetic */ AtomicReference zza;
    final /* synthetic */ String zzb;
    final /* synthetic */ String zzc;
    final /* synthetic */ zzp zzd;
    final /* synthetic */ boolean zze;
    final /* synthetic */ zzjb zzf;

    public zziu(zzjb zzjbVar, AtomicReference atomicReference, String str, String str2, String str3, zzp zzpVar, boolean z) {
        this.zzf = zzjbVar;
        this.zza = atomicReference;
        this.zzb = str2;
        this.zzc = str3;
        this.zzd = zzpVar;
        this.zze = z;
    }

    @Override // java.lang.Runnable
    public final void run() {
        AtomicReference atomicReference;
        zzdz zzdzVar;
        synchronized (this.zza) {
            try {
                zzdzVar = this.zzf.zzb;
            } catch (RemoteException e) {
                this.zzf.zzx.zzat().zzb().zzd("(legacy) Failed to get user properties; remote exception", null, this.zzb, e);
                this.zza.set(Collections.emptyList());
                atomicReference = this.zza;
            }
            if (zzdzVar == null) {
                this.zzf.zzx.zzat().zzb().zzd("(legacy) Failed to get user properties; not connected to service", null, this.zzb, this.zzc);
                this.zza.set(Collections.emptyList());
                this.zza.notify();
                return;
            }
            if (TextUtils.isEmpty(null)) {
                Preconditions.checkNotNull(this.zzd);
                this.zza.set(zzdzVar.zzo(this.zzb, this.zzc, this.zze, this.zzd));
            } else {
                this.zza.set(zzdzVar.zzp(null, this.zzb, this.zzc, this.zze));
            }
            this.zzf.zzP();
            atomicReference = this.zza;
            atomicReference.notify();
        }
    }
}

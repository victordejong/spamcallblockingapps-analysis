package com.google.android.gms.measurement.internal;

import android.os.RemoteException;
import android.text.TextUtils;
import com.google.android.gms.common.internal.Preconditions;
import java.util.Collections;
import java.util.concurrent.atomic.AtomicReference;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/measurement/internal/zzjd.class */
public final class zzjd implements Runnable {
    public final /* synthetic */ AtomicReference zza;
    public final /* synthetic */ String zzb;
    public final /* synthetic */ String zzc;
    public final /* synthetic */ zzp zzd;
    public final /* synthetic */ boolean zze;
    public final /* synthetic */ zzjk zzf;

    public zzjd(zzjk zzjkVar, AtomicReference atomicReference, String str, String str2, String str3, zzp zzpVar, boolean z) {
        this.zzf = zzjkVar;
        this.zza = atomicReference;
        this.zzb = str2;
        this.zzc = str3;
        this.zzd = zzpVar;
        this.zze = z;
    }

    @Override // java.lang.Runnable
    public final void run() {
        AtomicReference atomicReference;
        zzed zzedVar;
        synchronized (this.zza) {
            try {
                zzedVar = this.zzf.zzb;
            } catch (RemoteException e) {
                this.zzf.zzs.zzau().zzb().zzd("(legacy) Failed to get user properties; remote exception", null, this.zzb, e);
                this.zza.set(Collections.emptyList());
                atomicReference = this.zza;
            }
            if (zzedVar == null) {
                this.zzf.zzs.zzau().zzb().zzd("(legacy) Failed to get user properties; not connected to service", null, this.zzb, this.zzc);
                this.zza.set(Collections.emptyList());
                this.zza.notify();
                return;
            }
            if (TextUtils.isEmpty(null)) {
                Preconditions.checkNotNull(this.zzd);
                this.zza.set(zzedVar.zzo(this.zzb, this.zzc, this.zze, this.zzd));
            } else {
                this.zza.set(zzedVar.zzp(null, this.zzb, this.zzc, this.zze));
            }
            this.zzf.zzP();
            atomicReference = this.zza;
            atomicReference.notify();
        }
    }
}

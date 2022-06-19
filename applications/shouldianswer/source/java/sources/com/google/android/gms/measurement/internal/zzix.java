package com.google.android.gms.measurement.internal;

import android.os.RemoteException;
import android.text.TextUtils;
import java.util.Collections;
import java.util.concurrent.atomic.AtomicReference;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/measurement/internal/zzix.class */
public final class zzix implements Runnable {
    private final /* synthetic */ AtomicReference zza;
    private final /* synthetic */ String zzb;
    private final /* synthetic */ String zzc;
    private final /* synthetic */ String zzd;
    private final /* synthetic */ zzm zze;
    private final /* synthetic */ zzij zzf;

    public zzix(zzij zzijVar, AtomicReference atomicReference, String str, String str2, String str3, zzm zzmVar) {
        this.zzf = zzijVar;
        this.zza = atomicReference;
        this.zzb = str;
        this.zzc = str2;
        this.zzd = str3;
        this.zze = zzmVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        zzeo zzeoVar;
        synchronized (this.zza) {
            try {
                zzeoVar = this.zzf.zzb;
            } catch (RemoteException e) {
                this.zzf.zzr().zzf().zza("Failed to get conditional properties", zzew.zza(this.zzb), this.zzc, e);
                this.zza.set(Collections.emptyList());
                this.zza.notify();
            }
            if (zzeoVar == null) {
                this.zzf.zzr().zzf().zza("Failed to get conditional properties", zzew.zza(this.zzb), this.zzc, this.zzd);
                this.zza.set(Collections.emptyList());
                this.zza.notify();
                return;
            }
            if (TextUtils.isEmpty(this.zzb)) {
                this.zza.set(zzeoVar.zza(this.zzc, this.zzd, this.zze));
            } else {
                this.zza.set(zzeoVar.zza(this.zzb, this.zzc, this.zzd));
            }
            this.zzf.zzaj();
            this.zza.notify();
        }
    }
}

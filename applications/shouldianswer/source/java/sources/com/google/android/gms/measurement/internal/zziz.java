package com.google.android.gms.measurement.internal;

import android.os.RemoteException;
import android.text.TextUtils;
import java.util.Collections;
import java.util.concurrent.atomic.AtomicReference;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/measurement/internal/zziz.class */
public final class zziz implements Runnable {
    private final /* synthetic */ AtomicReference zza;
    private final /* synthetic */ String zzb;
    private final /* synthetic */ String zzc;
    private final /* synthetic */ String zzd;
    private final /* synthetic */ boolean zze;
    private final /* synthetic */ zzm zzf;
    private final /* synthetic */ zzij zzg;

    public zziz(zzij zzijVar, AtomicReference atomicReference, String str, String str2, String str3, boolean z, zzm zzmVar) {
        this.zzg = zzijVar;
        this.zza = atomicReference;
        this.zzb = str;
        this.zzc = str2;
        this.zzd = str3;
        this.zze = z;
        this.zzf = zzmVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        zzeo zzeoVar;
        synchronized (this.zza) {
            try {
                zzeoVar = this.zzg.zzb;
            } catch (RemoteException e) {
                this.zzg.zzr().zzf().zza("Failed to get user properties", zzew.zza(this.zzb), this.zzc, e);
                this.zza.set(Collections.emptyList());
                this.zza.notify();
            }
            if (zzeoVar == null) {
                this.zzg.zzr().zzf().zza("Failed to get user properties", zzew.zza(this.zzb), this.zzc, this.zzd);
                this.zza.set(Collections.emptyList());
                this.zza.notify();
                return;
            }
            if (TextUtils.isEmpty(this.zzb)) {
                this.zza.set(zzeoVar.zza(this.zzc, this.zzd, this.zze, this.zzf));
            } else {
                this.zza.set(zzeoVar.zza(this.zzb, this.zzc, this.zzd, this.zze));
            }
            this.zzg.zzaj();
            this.zza.notify();
        }
    }
}

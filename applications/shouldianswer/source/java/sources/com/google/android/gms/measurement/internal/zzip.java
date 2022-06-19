package com.google.android.gms.measurement.internal;

import android.os.RemoteException;
import com.google.android.gms.internal.measurement.zzn;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/measurement/internal/zzip.class */
public final class zzip implements Runnable {
    private final /* synthetic */ zzm zza;
    private final /* synthetic */ zzn zzb;
    private final /* synthetic */ zzij zzc;

    public zzip(zzij zzijVar, zzm zzmVar, zzn zznVar) {
        this.zzc = zzijVar;
        this.zza = zzmVar;
        this.zzb = zznVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        zzeo zzeoVar;
        String str = null;
        str = null;
        try {
            zzeoVar = this.zzc.zzb;
            if (zzeoVar == null) {
                this.zzc.zzr().zzf().zza("Failed to get app instance id");
                this.zzc.zzp().zza(this.zzb, (String) null);
                return;
            }
            str = zzeoVar.zzc(this.zza);
            if (str != null) {
                this.zzc.zzf().zza(str);
                this.zzc.zzs().zzj.zza(str);
            }
            this.zzc.zzaj();
        } catch (RemoteException e) {
            this.zzc.zzr().zzf().zza("Failed to get app instance id", e);
        } finally {
            this.zzc.zzp().zza(this.zzb, str);
        }
    }
}

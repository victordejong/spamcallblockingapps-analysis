package com.google.android.gms.measurement.internal;

import android.os.RemoteException;
import com.google.android.gms.internal.measurement.zzn;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/measurement/internal/zziu.class */
public final class zziu implements Runnable {
    private final /* synthetic */ zzan zza;
    private final /* synthetic */ String zzb;
    private final /* synthetic */ zzn zzc;
    private final /* synthetic */ zzij zzd;

    public zziu(zzij zzijVar, zzan zzanVar, String str, zzn zznVar) {
        this.zzd = zzijVar;
        this.zza = zzanVar;
        this.zzb = str;
        this.zzc = zznVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        zzeo zzeoVar;
        byte[] bArr = null;
        bArr = null;
        try {
            zzeoVar = this.zzd.zzb;
            if (zzeoVar == null) {
                this.zzd.zzr().zzf().zza("Discarding data. Failed to send event to service to bundle");
                this.zzd.zzp().zza(this.zzc, (byte[]) null);
                return;
            }
            bArr = zzeoVar.zza(this.zza, this.zzb);
            this.zzd.zzaj();
        } catch (RemoteException e) {
            this.zzd.zzr().zzf().zza("Failed to send event to the service to bundle", e);
        } finally {
            this.zzd.zzp().zza(this.zzc, bArr);
        }
    }
}

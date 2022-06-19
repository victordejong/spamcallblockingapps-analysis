package com.google.android.gms.measurement.internal;

import android.os.Bundle;
import android.os.RemoteException;
import com.google.android.gms.internal.measurement.zzn;
import java.util.ArrayList;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/measurement/internal/zzja.class */
public final class zzja implements Runnable {
    private final /* synthetic */ String zza;
    private final /* synthetic */ String zzb;
    private final /* synthetic */ zzm zzc;
    private final /* synthetic */ zzn zzd;
    private final /* synthetic */ zzij zze;

    public zzja(zzij zzijVar, String str, String str2, zzm zzmVar, zzn zznVar) {
        this.zze = zzijVar;
        this.zza = str;
        this.zzb = str2;
        this.zzc = zzmVar;
        this.zzd = zznVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        zzeo zzeoVar;
        ArrayList<Bundle> arrayList = new ArrayList<>();
        try {
            zzeoVar = this.zze.zzb;
            if (zzeoVar == null) {
                this.zze.zzr().zzf().zza("Failed to get conditional properties", this.zza, this.zzb);
                return;
            }
            arrayList = zzkm.zzb(zzeoVar.zza(this.zza, this.zzb, this.zzc));
            this.zze.zzaj();
        } catch (RemoteException e) {
            this.zze.zzr().zzf().zza("Failed to get conditional properties", this.zza, this.zzb, e);
        } finally {
            this.zze.zzp().zza(this.zzd, arrayList);
        }
    }
}

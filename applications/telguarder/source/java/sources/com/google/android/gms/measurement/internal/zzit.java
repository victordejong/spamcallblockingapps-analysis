package com.google.android.gms.measurement.internal;

import android.os.Bundle;
import android.os.RemoteException;
import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.internal.measurement.zzs;
import java.util.ArrayList;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/measurement/internal/zzit.class */
public final class zzit implements Runnable {
    final /* synthetic */ String zza;
    final /* synthetic */ String zzb;
    final /* synthetic */ zzp zzc;
    final /* synthetic */ zzs zzd;
    final /* synthetic */ zzjb zze;

    public zzit(zzjb zzjbVar, String str, String str2, zzp zzpVar, zzs zzsVar) {
        this.zze = zzjbVar;
        this.zza = str;
        this.zzb = str2;
        this.zzc = zzpVar;
        this.zzd = zzsVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        zzdz zzdzVar;
        ArrayList<Bundle> arrayList = new ArrayList<>();
        zzfl zzflVar = arrayList;
        ArrayList<Bundle> arrayList2 = arrayList;
        try {
            try {
                zzdzVar = this.zze.zzb;
                if (zzdzVar == null) {
                    this.zze.zzx.zzat().zzb().zzc("Failed to get conditional properties; not connected to service", this.zza, this.zzb);
                    zzflVar = this.zze.zzx;
                    arrayList2 = arrayList;
                } else {
                    Preconditions.checkNotNull(this.zzc);
                    ArrayList<Bundle> zzak = zzkk.zzak(zzdzVar.zzq(this.zza, this.zzb, this.zzc));
                    this.zze.zzP();
                    zzflVar = this.zze.zzx;
                    arrayList2 = zzak;
                }
            } catch (RemoteException e) {
                zzflVar = arrayList2;
                this.zze.zzx.zzat().zzb().zzd("Failed to get conditional properties; remote exception", this.zza, this.zzb, e);
                zzflVar = this.zze.zzx;
            }
            zzflVar.zzl().zzaj(this.zzd, arrayList2);
        } catch (Throwable th) {
            this.zze.zzx.zzl().zzaj(this.zzd, zzflVar);
            throw th;
        }
    }
}

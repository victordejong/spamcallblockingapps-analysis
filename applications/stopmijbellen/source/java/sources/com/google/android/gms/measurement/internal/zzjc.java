package com.google.android.gms.measurement.internal;

import android.os.Bundle;
import android.os.RemoteException;
import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.internal.measurement.zzcf;
import java.util.ArrayList;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/measurement/internal/zzjc.class */
public final class zzjc implements Runnable {
    public final /* synthetic */ String zza;
    public final /* synthetic */ String zzb;
    public final /* synthetic */ zzp zzc;
    public final /* synthetic */ zzcf zzd;
    public final /* synthetic */ zzjk zze;

    public zzjc(zzjk zzjkVar, String str, String str2, zzp zzpVar, zzcf zzcfVar) {
        this.zze = zzjkVar;
        this.zza = str;
        this.zzb = str2;
        this.zzc = zzpVar;
        this.zzd = zzcfVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        zzed zzedVar;
        ArrayList<Bundle> arrayList = new ArrayList<>();
        zzfu zzfuVar = arrayList;
        ArrayList<Bundle> arrayList2 = arrayList;
        try {
            try {
                zzedVar = this.zze.zzb;
                if (zzedVar == null) {
                    this.zze.zzs.zzau().zzb().zzc("Failed to get conditional properties; not connected to service", this.zza, this.zzb);
                    zzfuVar = this.zze.zzs;
                    arrayList2 = arrayList;
                } else {
                    Preconditions.checkNotNull(this.zzc);
                    ArrayList<Bundle> zzak = zzku.zzak(zzedVar.zzq(this.zza, this.zzb, this.zzc));
                    this.zze.zzP();
                    zzfuVar = this.zze.zzs;
                    arrayList2 = zzak;
                }
            } catch (RemoteException e) {
                zzfuVar = arrayList2;
                this.zze.zzs.zzau().zzb().zzd("Failed to get conditional properties; remote exception", this.zza, this.zzb, e);
                zzfuVar = this.zze.zzs;
            }
            zzfuVar.zzl().zzaj(this.zzd, arrayList2);
        } catch (Throwable th) {
            this.zze.zzs.zzl().zzaj(this.zzd, zzfuVar);
            throw th;
        }
    }
}

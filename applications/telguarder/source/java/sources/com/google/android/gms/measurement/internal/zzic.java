package com.google.android.gms.measurement.internal;

import android.os.Bundle;
import android.os.RemoteException;
import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.internal.measurement.zzs;
import java.util.List;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/measurement/internal/zzic.class */
public final class zzic implements Runnable {
    final /* synthetic */ String zza;
    final /* synthetic */ String zzb;
    final /* synthetic */ zzp zzc;
    final /* synthetic */ boolean zzd;
    final /* synthetic */ zzs zze;
    final /* synthetic */ zzjb zzf;

    public zzic(zzjb zzjbVar, String str, String str2, zzp zzpVar, boolean z, zzs zzsVar) {
        this.zzf = zzjbVar;
        this.zza = str;
        this.zzb = str2;
        this.zzc = zzpVar;
        this.zzd = z;
        this.zze = zzsVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        Throwable th;
        RemoteException e;
        Bundle bundle;
        zzdz zzdzVar;
        Bundle bundle2 = new Bundle();
        try {
            try {
                zzdzVar = this.zzf.zzb;
                if (zzdzVar == null) {
                    this.zzf.zzx.zzat().zzb().zzc("Failed to get user properties; not connected to service", this.zza, this.zzb);
                    this.zzf.zzx.zzl().zzai(this.zze, bundle2);
                    return;
                }
                Preconditions.checkNotNull(this.zzc);
                List<zzkg> zzo = zzdzVar.zzo(this.zza, this.zzb, this.zzd, this.zzc);
                bundle = new Bundle();
                if (zzo != null) {
                    for (zzkg zzkgVar : zzo) {
                        String str = zzkgVar.zze;
                        if (str != null) {
                            bundle.putString(zzkgVar.zzb, str);
                        } else {
                            Long l = zzkgVar.zzd;
                            if (l != null) {
                                bundle.putLong(zzkgVar.zzb, l.longValue());
                            } else {
                                Double d = zzkgVar.zzg;
                                if (d != null) {
                                    bundle.putDouble(zzkgVar.zzb, d.doubleValue());
                                }
                            }
                        }
                    }
                }
                try {
                    this.zzf.zzP();
                    this.zzf.zzx.zzl().zzai(this.zze, bundle);
                } catch (RemoteException e2) {
                    e = e2;
                    this.zzf.zzx.zzat().zzb().zzc("Failed to get user properties; remote exception", this.zza, e);
                    this.zzf.zzx.zzl().zzai(this.zze, bundle);
                }
            } catch (Throwable th2) {
                th = th2;
                this.zzf.zzx.zzl().zzai(this.zze, bundle2);
                throw th;
            }
        } catch (RemoteException e3) {
            e = e3;
            bundle = bundle2;
        } catch (Throwable th3) {
            th = th3;
            this.zzf.zzx.zzl().zzai(this.zze, bundle2);
            throw th;
        }
    }
}

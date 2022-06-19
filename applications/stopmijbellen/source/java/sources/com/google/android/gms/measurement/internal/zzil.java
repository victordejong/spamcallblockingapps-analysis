package com.google.android.gms.measurement.internal;

import android.os.Bundle;
import android.os.RemoteException;
import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.internal.measurement.zzcf;
import java.util.List;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/measurement/internal/zzil.class */
public final class zzil implements Runnable {
    public final /* synthetic */ String zza;
    public final /* synthetic */ String zzb;
    public final /* synthetic */ zzp zzc;
    public final /* synthetic */ boolean zzd;
    public final /* synthetic */ zzcf zze;
    public final /* synthetic */ zzjk zzf;

    public zzil(zzjk zzjkVar, String str, String str2, zzp zzpVar, boolean z, zzcf zzcfVar) {
        this.zzf = zzjkVar;
        this.zza = str;
        this.zzb = str2;
        this.zzc = zzpVar;
        this.zzd = z;
        this.zze = zzcfVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        Throwable th;
        RemoteException e;
        Bundle bundle;
        zzed zzedVar;
        Bundle bundle2 = new Bundle();
        try {
            try {
                zzedVar = this.zzf.zzb;
                if (zzedVar == null) {
                    this.zzf.zzs.zzau().zzb().zzc("Failed to get user properties; not connected to service", this.zza, this.zzb);
                    this.zzf.zzs.zzl().zzai(this.zze, bundle2);
                    return;
                }
                Preconditions.checkNotNull(this.zzc);
                List<zzkq> zzo = zzedVar.zzo(this.zza, this.zzb, this.zzd, this.zzc);
                bundle = new Bundle();
                if (zzo != null) {
                    for (zzkq zzkqVar : zzo) {
                        String str = zzkqVar.zze;
                        if (str != null) {
                            bundle.putString(zzkqVar.zzb, str);
                        } else {
                            Long l = zzkqVar.zzd;
                            if (l != null) {
                                bundle.putLong(zzkqVar.zzb, l.longValue());
                            } else {
                                Double d = zzkqVar.zzg;
                                if (d != null) {
                                    bundle.putDouble(zzkqVar.zzb, d.doubleValue());
                                }
                            }
                        }
                    }
                }
                try {
                    this.zzf.zzP();
                    this.zzf.zzs.zzl().zzai(this.zze, bundle);
                } catch (RemoteException e2) {
                    e = e2;
                    this.zzf.zzs.zzau().zzb().zzc("Failed to get user properties; remote exception", this.zza, e);
                    this.zzf.zzs.zzl().zzai(this.zze, bundle);
                }
            } catch (Throwable th2) {
                th = th2;
                this.zzf.zzs.zzl().zzai(this.zze, bundle2);
                throw th;
            }
        } catch (RemoteException e3) {
            e = e3;
            bundle = bundle2;
        } catch (Throwable th3) {
            th = th3;
            this.zzf.zzs.zzl().zzai(this.zze, bundle2);
            throw th;
        }
    }
}

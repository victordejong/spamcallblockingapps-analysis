package com.google.android.gms.internal.ads;

import android.os.RemoteException;
import com.google.android.gms.dynamic.IObjectWrapper;
import java.util.concurrent.Executor;
import javax.annotation.concurrent.GuardedBy;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzejq.class */
public final class zzejq extends zzceq implements zzdgb {
    @GuardedBy("this")
    private zzcer zza;
    @GuardedBy("this")
    private zzdga zzb;
    @GuardedBy("this")
    private zzdmo zzc;

    @Override // com.google.android.gms.internal.ads.zzdgb
    public final void zza(zzdga zzdgaVar) {
        synchronized (this) {
            this.zzb = zzdgaVar;
        }
    }

    public final void zzc(zzcer zzcerVar) {
        synchronized (this) {
            this.zza = zzcerVar;
        }
    }

    public final void zzd(zzdmo zzdmoVar) {
        synchronized (this) {
            this.zzc = zzdmoVar;
        }
    }

    @Override // com.google.android.gms.internal.ads.zzcer
    public final void zze(IObjectWrapper iObjectWrapper) throws RemoteException {
        synchronized (this) {
            zzcer zzcerVar = this.zza;
            if (zzcerVar != null) {
                ((zzemj) zzcerVar).zzb.onAdClicked();
            }
        }
    }

    @Override // com.google.android.gms.internal.ads.zzcer
    public final void zzf(IObjectWrapper iObjectWrapper) throws RemoteException {
        synchronized (this) {
            zzcer zzcerVar = this.zza;
            if (zzcerVar != null) {
                zzcerVar.zzf(iObjectWrapper);
            }
        }
    }

    @Override // com.google.android.gms.internal.ads.zzcer
    public final void zzg(IObjectWrapper iObjectWrapper, int i) throws RemoteException {
        synchronized (this) {
            zzdga zzdgaVar = this.zzb;
            if (zzdgaVar != null) {
                zzdgaVar.zza(i);
            }
        }
    }

    @Override // com.google.android.gms.internal.ads.zzcer
    public final void zzh(IObjectWrapper iObjectWrapper) throws RemoteException {
        synchronized (this) {
            zzcer zzcerVar = this.zza;
            if (zzcerVar != null) {
                ((zzemj) zzcerVar).zzc.zzb();
            }
        }
    }

    @Override // com.google.android.gms.internal.ads.zzcer
    public final void zzi(IObjectWrapper iObjectWrapper) throws RemoteException {
        synchronized (this) {
            zzdga zzdgaVar = this.zzb;
            if (zzdgaVar != null) {
                zzdgaVar.zzd();
            }
        }
    }

    @Override // com.google.android.gms.internal.ads.zzcer
    public final void zzj(IObjectWrapper iObjectWrapper) throws RemoteException {
        synchronized (this) {
            zzcer zzcerVar = this.zza;
            if (zzcerVar != null) {
                ((zzemj) zzcerVar).zza.zzb();
            }
        }
    }

    @Override // com.google.android.gms.internal.ads.zzcer
    public final void zzk(IObjectWrapper iObjectWrapper, int i) throws RemoteException {
        synchronized (this) {
            zzdmo zzdmoVar = this.zzc;
            if (zzdmoVar != null) {
                String valueOf = String.valueOf(((zzemi) zzdmoVar).zzc.zza);
                zzciz.zzj(valueOf.length() != 0 ? "Fail to initialize adapter ".concat(valueOf) : new String("Fail to initialize adapter "));
            }
        }
    }

    @Override // com.google.android.gms.internal.ads.zzcer
    public final void zzl(IObjectWrapper iObjectWrapper) throws RemoteException {
        Executor executor;
        synchronized (this) {
            zzdmo zzdmoVar = this.zzc;
            if (zzdmoVar != null) {
                executor = ((zzemi) zzdmoVar).zzd.zzb;
                final zzfdz zzfdzVar = ((zzemi) zzdmoVar).zza;
                final zzfdn zzfdnVar = ((zzemi) zzdmoVar).zzb;
                final zzehw zzehwVar = ((zzemi) zzdmoVar).zzc;
                final zzemi zzemiVar = (zzemi) zzdmoVar;
                executor.execute(new Runnable() { // from class: com.google.android.gms.internal.ads.zzemh
                    @Override // java.lang.Runnable
                    public final void run() {
                        zzemi zzemiVar2 = zzemi.this;
                        zzfdz zzfdzVar2 = zzfdzVar;
                        zzfdn zzfdnVar2 = zzfdnVar;
                        zzehw zzehwVar2 = zzehwVar;
                        zzemk zzemkVar = zzemiVar2.zzd;
                        zzemk.zze(zzfdzVar2, zzfdnVar2, zzehwVar2);
                    }
                });
            }
        }
    }

    @Override // com.google.android.gms.internal.ads.zzcer
    public final void zzm(IObjectWrapper iObjectWrapper, zzces zzcesVar) throws RemoteException {
        synchronized (this) {
            zzcer zzcerVar = this.zza;
            if (zzcerVar != null) {
                ((zzemj) zzcerVar).zzd.zza(zzcesVar);
            }
        }
    }

    @Override // com.google.android.gms.internal.ads.zzcer
    public final void zzn(IObjectWrapper iObjectWrapper) throws RemoteException {
        synchronized (this) {
            zzcer zzcerVar = this.zza;
            if (zzcerVar != null) {
                ((zzemj) zzcerVar).zzc.zze();
            }
        }
    }

    @Override // com.google.android.gms.internal.ads.zzcer
    public final void zzo(IObjectWrapper iObjectWrapper) throws RemoteException {
        synchronized (this) {
            zzcer zzcerVar = this.zza;
            if (zzcerVar != null) {
                ((zzemj) zzcerVar).zzd.zzc();
            }
        }
    }
}

package com.google.android.gms.internal.ads;

import android.os.RemoteException;
import com.google.android.gms.dynamic.IObjectWrapper;
import java.util.concurrent.Executor;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzefz.class */
public final class zzefz extends zzccj implements zzdcm {
    private zzcck zza;
    private zzdcl zzb;
    private zzdiz zzc;

    @Override // com.google.android.gms.internal.ads.zzdcm
    public final void zza(zzdcl zzdclVar) {
        synchronized (this) {
            this.zzb = zzdclVar;
        }
    }

    public final void zzc(zzcck zzcckVar) {
        synchronized (this) {
            this.zza = zzcckVar;
        }
    }

    public final void zzd(zzdiz zzdizVar) {
        synchronized (this) {
            this.zzc = zzdizVar;
        }
    }

    @Override // com.google.android.gms.internal.ads.zzcck
    public final void zze(IObjectWrapper iObjectWrapper) throws RemoteException {
        Executor executor;
        synchronized (this) {
            zzdiz zzdizVar = this.zzc;
            if (zzdizVar != null) {
                executor = ((zzeir) zzdizVar).zzd.zzb;
                executor.execute(new Runnable((zzeir) zzdizVar, ((zzeir) zzdizVar).zza, ((zzeir) zzdizVar).zzb, ((zzeir) zzdizVar).zzc) { // from class: com.google.android.gms.internal.ads.zzeiq
                    private final zzeir zza;
                    private final zzfal zzb;
                    private final zzezz zzc;
                    private final zzeef zzd;

                    {
                        this.zza = zzeirVar;
                        this.zzb = zzfalVar;
                        this.zzc = zzezzVar;
                        this.zzd = zzeefVar;
                    }

                    @Override // java.lang.Runnable
                    public final void run() {
                        zzeir zzeirVar2 = this.zza;
                        zzfal zzfalVar2 = this.zzb;
                        zzezz zzezzVar2 = this.zzc;
                        zzeef zzeefVar2 = this.zzd;
                        zzeit zzeitVar = zzeirVar2.zzd;
                        zzeit.zze(zzfalVar2, zzezzVar2, zzeefVar2);
                    }
                });
            }
        }
    }

    @Override // com.google.android.gms.internal.ads.zzcck
    public final void zzf(IObjectWrapper iObjectWrapper, int i) throws RemoteException {
        synchronized (this) {
            zzdiz zzdizVar = this.zzc;
            if (zzdizVar != null) {
                String valueOf = String.valueOf(((zzeir) zzdizVar).zzc.zza);
                zzcgt.zzi(valueOf.length() != 0 ? "Fail to initialize adapter ".concat(valueOf) : new String("Fail to initialize adapter "));
            }
        }
    }

    @Override // com.google.android.gms.internal.ads.zzcck
    public final void zzg(IObjectWrapper iObjectWrapper) throws RemoteException {
        synchronized (this) {
            zzdcl zzdclVar = this.zzb;
            if (zzdclVar != null) {
                zzdclVar.zza();
            }
        }
    }

    @Override // com.google.android.gms.internal.ads.zzcck
    public final void zzh(IObjectWrapper iObjectWrapper) throws RemoteException {
        synchronized (this) {
            zzcck zzcckVar = this.zza;
            if (zzcckVar != null) {
                ((zzeis) zzcckVar).zza.zzbp();
            }
        }
    }

    @Override // com.google.android.gms.internal.ads.zzcck
    public final void zzi(IObjectWrapper iObjectWrapper) throws RemoteException {
        synchronized (this) {
            zzcck zzcckVar = this.zza;
            if (zzcckVar != null) {
                ((zzeis) zzcckVar).zzd.zza();
            }
        }
    }

    @Override // com.google.android.gms.internal.ads.zzcck
    public final void zzj(IObjectWrapper iObjectWrapper) throws RemoteException {
        synchronized (this) {
            zzcck zzcckVar = this.zza;
            if (zzcckVar != null) {
                zzcckVar.zzj(iObjectWrapper);
            }
        }
    }

    @Override // com.google.android.gms.internal.ads.zzcck
    public final void zzk(IObjectWrapper iObjectWrapper, zzccl zzcclVar) throws RemoteException {
        synchronized (this) {
            zzcck zzcckVar = this.zza;
            if (zzcckVar != null) {
                ((zzeis) zzcckVar).zzd.zzb(zzcclVar);
            }
        }
    }

    @Override // com.google.android.gms.internal.ads.zzcck
    public final void zzl(IObjectWrapper iObjectWrapper) throws RemoteException {
        synchronized (this) {
            zzcck zzcckVar = this.zza;
            if (zzcckVar != null) {
                ((zzeis) zzcckVar).zzb.onAdClicked();
            }
        }
    }

    @Override // com.google.android.gms.internal.ads.zzcck
    public final void zzm(IObjectWrapper iObjectWrapper, int i) throws RemoteException {
        synchronized (this) {
            zzdcl zzdclVar = this.zzb;
            if (zzdclVar != null) {
                zzdclVar.zzb(i);
            }
        }
    }

    @Override // com.google.android.gms.internal.ads.zzcck
    public final void zzn(IObjectWrapper iObjectWrapper) throws RemoteException {
        synchronized (this) {
            zzcck zzcckVar = this.zza;
            if (zzcckVar != null) {
                ((zzeis) zzcckVar).zzc.zzb();
            }
        }
    }

    @Override // com.google.android.gms.internal.ads.zzcck
    public final void zzo(IObjectWrapper iObjectWrapper) throws RemoteException {
        synchronized (this) {
            zzcck zzcckVar = this.zza;
            if (zzcckVar != null) {
                ((zzeis) zzcckVar).zzc.zzf();
            }
        }
    }
}

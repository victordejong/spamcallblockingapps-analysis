package com.google.android.gms.internal.ads;

import android.os.RemoteException;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzefy.class */
public final class zzefy extends zzbvl implements zzdcm {
    private zzbvm zza;
    private zzdcl zzb;

    @Override // com.google.android.gms.internal.ads.zzdcm
    public final void zza(zzdcl zzdclVar) {
        synchronized (this) {
            this.zzb = zzdclVar;
        }
    }

    public final void zzc(zzbvm zzbvmVar) {
        synchronized (this) {
            this.zza = zzbvmVar;
        }
    }

    @Override // com.google.android.gms.internal.ads.zzbvm
    public final void zze() throws RemoteException {
        synchronized (this) {
            zzbvm zzbvmVar = this.zza;
            if (zzbvmVar != null) {
                zzbvmVar.zze();
            }
        }
    }

    @Override // com.google.android.gms.internal.ads.zzbvm
    public final void zzf() throws RemoteException {
        synchronized (this) {
            zzbvm zzbvmVar = this.zza;
            if (zzbvmVar != null) {
                zzbvmVar.zzf();
            }
        }
    }

    @Override // com.google.android.gms.internal.ads.zzbvm
    public final void zzg(int i) throws RemoteException {
        synchronized (this) {
            zzdcl zzdclVar = this.zzb;
            if (zzdclVar != null) {
                zzdclVar.zzb(i);
            }
        }
    }

    @Override // com.google.android.gms.internal.ads.zzbvm
    public final void zzh() throws RemoteException {
        synchronized (this) {
            zzbvm zzbvmVar = this.zza;
            if (zzbvmVar != null) {
                zzbvmVar.zzh();
            }
        }
    }

    @Override // com.google.android.gms.internal.ads.zzbvm
    public final void zzi() throws RemoteException {
        synchronized (this) {
            zzbvm zzbvmVar = this.zza;
            if (zzbvmVar != null) {
                zzbvmVar.zzi();
            }
        }
    }

    @Override // com.google.android.gms.internal.ads.zzbvm
    public final void zzj() throws RemoteException {
        synchronized (this) {
            zzbvm zzbvmVar = this.zza;
            if (zzbvmVar != null) {
                zzbvmVar.zzj();
            }
            zzdcl zzdclVar = this.zzb;
            if (zzdclVar != null) {
                zzdclVar.zza();
            }
        }
    }

    @Override // com.google.android.gms.internal.ads.zzbvm
    public final void zzk() throws RemoteException {
        synchronized (this) {
            zzbvm zzbvmVar = this.zza;
            if (zzbvmVar != null) {
                zzbvmVar.zzk();
            }
        }
    }

    @Override // com.google.android.gms.internal.ads.zzbvm
    public final void zzl(String str, String str2) throws RemoteException {
        synchronized (this) {
            zzbvm zzbvmVar = this.zza;
            if (zzbvmVar != null) {
                zzbvmVar.zzl(str, str2);
            }
        }
    }

    @Override // com.google.android.gms.internal.ads.zzbvm
    public final void zzm(zzbnb zzbnbVar, String str) throws RemoteException {
        synchronized (this) {
        }
    }

    @Override // com.google.android.gms.internal.ads.zzbvm
    public final void zzn() throws RemoteException {
        synchronized (this) {
            zzbvm zzbvmVar = this.zza;
            if (zzbvmVar != null) {
                zzbvmVar.zzn();
            }
        }
    }

    @Override // com.google.android.gms.internal.ads.zzbvm
    public final void zzo() throws RemoteException {
        synchronized (this) {
            zzbvm zzbvmVar = this.zza;
            if (zzbvmVar != null) {
                zzbvmVar.zzo();
            }
        }
    }

    @Override // com.google.android.gms.internal.ads.zzbvm
    public final void zzp(zzccl zzcclVar) throws RemoteException {
        synchronized (this) {
            zzbvm zzbvmVar = this.zza;
            if (zzbvmVar != null) {
                zzbvmVar.zzp(zzcclVar);
            }
        }
    }

    @Override // com.google.android.gms.internal.ads.zzbvm
    public final void zzq() throws RemoteException {
        synchronized (this) {
            zzbvm zzbvmVar = this.zza;
            if (zzbvmVar != null) {
                zzbvmVar.zzq();
            }
        }
    }

    @Override // com.google.android.gms.internal.ads.zzbvm
    public final void zzr(zzccp zzccpVar) throws RemoteException {
        synchronized (this) {
            zzbvm zzbvmVar = this.zza;
            if (zzbvmVar != null) {
                zzbvmVar.zzr(zzccpVar);
            }
        }
    }

    @Override // com.google.android.gms.internal.ads.zzbvm
    public final void zzs(int i) throws RemoteException {
        synchronized (this) {
            zzbvm zzbvmVar = this.zza;
            if (zzbvmVar != null) {
                zzbvmVar.zzs(i);
            }
        }
    }

    @Override // com.google.android.gms.internal.ads.zzbvm
    public final void zzt() throws RemoteException {
        synchronized (this) {
            zzbvm zzbvmVar = this.zza;
            if (zzbvmVar != null) {
                zzbvmVar.zzt();
            }
        }
    }

    @Override // com.google.android.gms.internal.ads.zzbvm
    public final void zzu() throws RemoteException {
        synchronized (this) {
            zzbvm zzbvmVar = this.zza;
            if (zzbvmVar != null) {
                zzbvmVar.zzu();
            }
        }
    }

    @Override // com.google.android.gms.internal.ads.zzbvm
    public final void zzv(String str) throws RemoteException {
        synchronized (this) {
            zzbvm zzbvmVar = this.zza;
            if (zzbvmVar != null) {
                zzbvmVar.zzv(str);
            }
        }
    }

    @Override // com.google.android.gms.internal.ads.zzbvm
    public final void zzw(int i, String str) throws RemoteException {
        synchronized (this) {
            zzdcl zzdclVar = this.zzb;
            if (zzdclVar != null) {
                zzdclVar.zzc(i, str);
            }
        }
    }

    @Override // com.google.android.gms.internal.ads.zzbvm
    public final void zzx(zzbcz zzbczVar) throws RemoteException {
        synchronized (this) {
            zzdcl zzdclVar = this.zzb;
            if (zzdclVar != null) {
                zzdclVar.zzd(zzbczVar);
            }
        }
    }

    @Override // com.google.android.gms.internal.ads.zzbvm
    public final void zzy(zzbcz zzbczVar) throws RemoteException {
        synchronized (this) {
            zzbvm zzbvmVar = this.zza;
            if (zzbvmVar != null) {
                zzbvmVar.zzy(zzbczVar);
            }
        }
    }
}

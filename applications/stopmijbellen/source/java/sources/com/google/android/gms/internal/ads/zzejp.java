package com.google.android.gms.internal.ads;

import android.os.RemoteException;
import javax.annotation.concurrent.GuardedBy;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzejp.class */
public final class zzejp extends zzbxm implements zzdgb {
    @GuardedBy("this")
    private zzbxn zza;
    @GuardedBy("this")
    private zzdga zzb;

    @Override // com.google.android.gms.internal.ads.zzdgb
    public final void zza(zzdga zzdgaVar) {
        synchronized (this) {
            this.zzb = zzdgaVar;
        }
    }

    public final void zzc(zzbxn zzbxnVar) {
        synchronized (this) {
            this.zza = zzbxnVar;
        }
    }

    @Override // com.google.android.gms.internal.ads.zzbxn
    public final void zze() throws RemoteException {
        synchronized (this) {
            zzbxn zzbxnVar = this.zza;
            if (zzbxnVar != null) {
                zzbxnVar.zze();
            }
        }
    }

    @Override // com.google.android.gms.internal.ads.zzbxn
    public final void zzf() throws RemoteException {
        synchronized (this) {
            zzbxn zzbxnVar = this.zza;
            if (zzbxnVar != null) {
                zzbxnVar.zzf();
            }
        }
    }

    @Override // com.google.android.gms.internal.ads.zzbxn
    public final void zzg(int i) throws RemoteException {
        synchronized (this) {
            zzdga zzdgaVar = this.zzb;
            if (zzdgaVar != null) {
                zzdgaVar.zza(i);
            }
        }
    }

    @Override // com.google.android.gms.internal.ads.zzbxn
    public final void zzh(zzbew zzbewVar) throws RemoteException {
        synchronized (this) {
            zzdga zzdgaVar = this.zzb;
            if (zzdgaVar != null) {
                zzdgaVar.zzb(zzbewVar);
            }
        }
    }

    @Override // com.google.android.gms.internal.ads.zzbxn
    public final void zzi(int i, String str) throws RemoteException {
        synchronized (this) {
            zzdga zzdgaVar = this.zzb;
            if (zzdgaVar != null) {
                zzdgaVar.zzc(i, str);
            }
        }
    }

    @Override // com.google.android.gms.internal.ads.zzbxn
    public final void zzj(int i) throws RemoteException {
        synchronized (this) {
            zzbxn zzbxnVar = this.zza;
            if (zzbxnVar != null) {
                zzbxnVar.zzj(i);
            }
        }
    }

    @Override // com.google.android.gms.internal.ads.zzbxn
    public final void zzk(zzbew zzbewVar) throws RemoteException {
        synchronized (this) {
            zzbxn zzbxnVar = this.zza;
            if (zzbxnVar != null) {
                zzbxnVar.zzk(zzbewVar);
            }
        }
    }

    @Override // com.google.android.gms.internal.ads.zzbxn
    public final void zzl(String str) throws RemoteException {
        synchronized (this) {
            zzbxn zzbxnVar = this.zza;
            if (zzbxnVar != null) {
                zzbxnVar.zzl(str);
            }
        }
    }

    @Override // com.google.android.gms.internal.ads.zzbxn
    public final void zzm() throws RemoteException {
        synchronized (this) {
            zzbxn zzbxnVar = this.zza;
            if (zzbxnVar != null) {
                zzbxnVar.zzm();
            }
        }
    }

    @Override // com.google.android.gms.internal.ads.zzbxn
    public final void zzn() throws RemoteException {
        synchronized (this) {
            zzbxn zzbxnVar = this.zza;
            if (zzbxnVar != null) {
                zzbxnVar.zzn();
            }
        }
    }

    @Override // com.google.android.gms.internal.ads.zzbxn
    public final void zzo() throws RemoteException {
        synchronized (this) {
            zzbxn zzbxnVar = this.zza;
            if (zzbxnVar != null) {
                zzbxnVar.zzo();
            }
            zzdga zzdgaVar = this.zzb;
            if (zzdgaVar != null) {
                zzdgaVar.zzd();
            }
        }
    }

    @Override // com.google.android.gms.internal.ads.zzbxn
    public final void zzp() throws RemoteException {
        synchronized (this) {
            zzbxn zzbxnVar = this.zza;
            if (zzbxnVar != null) {
                zzbxnVar.zzp();
            }
        }
    }

    @Override // com.google.android.gms.internal.ads.zzbxn
    public final void zzq(String str, String str2) throws RemoteException {
        synchronized (this) {
            zzbxn zzbxnVar = this.zza;
            if (zzbxnVar != null) {
                zzbxnVar.zzq(str, str2);
            }
        }
    }

    @Override // com.google.android.gms.internal.ads.zzbxn
    public final void zzr(zzbpc zzbpcVar, String str) throws RemoteException {
        synchronized (this) {
        }
    }

    @Override // com.google.android.gms.internal.ads.zzbxn
    public final void zzs(zzces zzcesVar) throws RemoteException {
        synchronized (this) {
            zzbxn zzbxnVar = this.zza;
            if (zzbxnVar != null) {
                zzbxnVar.zzs(zzcesVar);
            }
        }
    }

    @Override // com.google.android.gms.internal.ads.zzbxn
    public final void zzt(zzcew zzcewVar) throws RemoteException {
        synchronized (this) {
            zzbxn zzbxnVar = this.zza;
            if (zzbxnVar != null) {
                zzbxnVar.zzt(zzcewVar);
            }
        }
    }

    @Override // com.google.android.gms.internal.ads.zzbxn
    public final void zzu() throws RemoteException {
        synchronized (this) {
            zzbxn zzbxnVar = this.zza;
            if (zzbxnVar != null) {
                zzbxnVar.zzu();
            }
        }
    }

    @Override // com.google.android.gms.internal.ads.zzbxn
    public final void zzv() throws RemoteException {
        synchronized (this) {
            zzbxn zzbxnVar = this.zza;
            if (zzbxnVar != null) {
                zzbxnVar.zzv();
            }
        }
    }

    @Override // com.google.android.gms.internal.ads.zzbxn
    public final void zzw() throws RemoteException {
        synchronized (this) {
            zzbxn zzbxnVar = this.zza;
            if (zzbxnVar != null) {
                zzbxnVar.zzw();
            }
        }
    }

    @Override // com.google.android.gms.internal.ads.zzbxn
    public final void zzx() throws RemoteException {
        synchronized (this) {
            zzbxn zzbxnVar = this.zza;
            if (zzbxnVar != null) {
                zzbxnVar.zzx();
            }
        }
    }

    @Override // com.google.android.gms.internal.ads.zzbxn
    public final void zzy() throws RemoteException {
        synchronized (this) {
            zzbxn zzbxnVar = this.zza;
            if (zzbxnVar != null) {
                zzbxnVar.zzy();
            }
        }
    }
}

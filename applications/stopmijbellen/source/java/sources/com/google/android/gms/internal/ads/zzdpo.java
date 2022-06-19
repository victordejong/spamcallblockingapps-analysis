package com.google.android.gms.internal.ads;

import android.graphics.drawable.Drawable;
import android.os.RemoteException;
import com.google.android.gms.dynamic.IObjectWrapper;
import com.google.android.gms.dynamic.ObjectWrapper;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzdpo.class */
public final class zzdpo extends zzboe {
    private final zzdqc zza;
    private IObjectWrapper zzb;

    public zzdpo(zzdqc zzdqcVar) {
        this.zza = zzdqcVar;
    }

    private static float zzb(IObjectWrapper iObjectWrapper) {
        if (iObjectWrapper == null) {
            return 0.0f;
        }
        Drawable drawable = (Drawable) ObjectWrapper.unwrap(iObjectWrapper);
        float f = 0.0f;
        if (drawable != null) {
            f = 0.0f;
            if (drawable.getIntrinsicWidth() != -1) {
                f = 0.0f;
                if (drawable.getIntrinsicHeight() != -1) {
                    f = drawable.getIntrinsicWidth() / drawable.getIntrinsicHeight();
                }
            }
        }
        return f;
    }

    @Override // com.google.android.gms.internal.ads.zzbof
    public final float zze() throws RemoteException {
        float f;
        float f2 = 0.0f;
        if (!((Boolean) zzbgq.zzc().zzb(zzblj.zzeH)).booleanValue()) {
            return 0.0f;
        }
        if (this.zza.zzb() != 0.0f) {
            return this.zza.zzb();
        }
        if (this.zza.zzj() != null) {
            try {
                f2 = this.zza.zzj().zze();
            } catch (RemoteException e) {
                zzciz.zzh("Remote exception getting video controller aspect ratio.", e);
            }
            return f2;
        }
        IObjectWrapper iObjectWrapper = this.zzb;
        if (iObjectWrapper != null) {
            f = zzb(iObjectWrapper);
        } else {
            zzboi zzm = this.zza.zzm();
            if (zzm == null) {
                f = 0.0f;
            } else {
                f = (zzm.zzd() == -1 || zzm.zzc() == -1) ? 0.0f : zzm.zzd() / zzm.zzc();
                if (f == 0.0f) {
                    return zzb(zzm.zzf());
                }
            }
        }
        return f;
    }

    @Override // com.google.android.gms.internal.ads.zzbof
    public final float zzf() throws RemoteException {
        if (((Boolean) zzbgq.zzc().zzb(zzblj.zzeI)).booleanValue() && this.zza.zzj() != null) {
            return this.zza.zzj().zzf();
        }
        return 0.0f;
    }

    @Override // com.google.android.gms.internal.ads.zzbof
    public final float zzg() throws RemoteException {
        if (((Boolean) zzbgq.zzc().zzb(zzblj.zzeI)).booleanValue() && this.zza.zzj() != null) {
            return this.zza.zzj().zzg();
        }
        return 0.0f;
    }

    @Override // com.google.android.gms.internal.ads.zzbof
    public final zzbiz zzh() throws RemoteException {
        if (!((Boolean) zzbgq.zzc().zzb(zzblj.zzeI)).booleanValue()) {
            return null;
        }
        return this.zza.zzj();
    }

    @Override // com.google.android.gms.internal.ads.zzbof
    public final IObjectWrapper zzi() throws RemoteException {
        IObjectWrapper iObjectWrapper = this.zzb;
        if (iObjectWrapper != null) {
            return iObjectWrapper;
        }
        zzboi zzm = this.zza.zzm();
        if (zzm != null) {
            return zzm.zzf();
        }
        return null;
    }

    @Override // com.google.android.gms.internal.ads.zzbof
    public final void zzj(IObjectWrapper iObjectWrapper) {
        this.zzb = iObjectWrapper;
    }

    @Override // com.google.android.gms.internal.ads.zzbof
    public final boolean zzk() throws RemoteException {
        return ((Boolean) zzbgq.zzc().zzb(zzblj.zzeI)).booleanValue() && this.zza.zzj() != null;
    }

    @Override // com.google.android.gms.internal.ads.zzbof
    public final void zzl(zzbpq zzbpqVar) {
        if (((Boolean) zzbgq.zzc().zzb(zzblj.zzeI)).booleanValue() && (this.zza.zzj() instanceof zzcpl)) {
            ((zzcpl) this.zza.zzj()).zzv(zzbpqVar);
        }
    }
}

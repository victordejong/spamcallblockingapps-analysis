package com.google.android.gms.internal.ads;

import android.graphics.drawable.Drawable;
import android.os.RemoteException;
import com.google.android.gms.dynamic.IObjectWrapper;
import com.google.android.gms.dynamic.ObjectWrapper;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzdly.class */
public final class zzdly extends zzbmd {
    private final zzdmm zza;
    private IObjectWrapper zzb;

    public zzdly(zzdmm zzdmmVar) {
        this.zza = zzdmmVar;
    }

    private static float zzb(IObjectWrapper iObjectWrapper) {
        if (iObjectWrapper == null) {
            return 0.0f;
        }
        Drawable drawable = (Drawable) ObjectWrapper.m38746B1(iObjectWrapper);
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

    @Override // com.google.android.gms.internal.ads.zzbme
    public final float zze() throws RemoteException {
        float f;
        float f2 = 0.0f;
        if (!((Boolean) zzbet.zzc().zzc(zzbjl.zzeA)).booleanValue()) {
            return 0.0f;
        }
        if (this.zza.zzW() != 0.0f) {
            return this.zza.zzW();
        }
        if (this.zza.zzw() != null) {
            try {
                f2 = this.zza.zzw().zzm();
            } catch (RemoteException e) {
                zzcgt.zzg("Remote exception getting video controller aspect ratio.", e);
            }
            return f2;
        }
        IObjectWrapper iObjectWrapper = this.zzb;
        if (iObjectWrapper != null) {
            f = zzb(iObjectWrapper);
        } else {
            zzbmh zzB = this.zza.zzB();
            if (zzB == null) {
                f = 0.0f;
            } else {
                f = (zzB.zze() == -1 || zzB.zzf() == -1) ? 0.0f : zzB.zze() / zzB.zzf();
                if (f == 0.0f) {
                    return zzb(zzB.zzb());
                }
            }
        }
        return f;
    }

    @Override // com.google.android.gms.internal.ads.zzbme
    public final void zzf(IObjectWrapper iObjectWrapper) {
        this.zzb = iObjectWrapper;
    }

    @Override // com.google.android.gms.internal.ads.zzbme
    public final IObjectWrapper zzg() throws RemoteException {
        IObjectWrapper iObjectWrapper = this.zzb;
        if (iObjectWrapper != null) {
            return iObjectWrapper;
        }
        zzbmh zzB = this.zza.zzB();
        if (zzB != null) {
            return zzB.zzb();
        }
        return null;
    }

    @Override // com.google.android.gms.internal.ads.zzbme
    public final float zzh() throws RemoteException {
        if (((Boolean) zzbet.zzc().zzc(zzbjl.zzeB)).booleanValue() && this.zza.zzw() != null) {
            return this.zza.zzw().zzj();
        }
        return 0.0f;
    }

    @Override // com.google.android.gms.internal.ads.zzbme
    public final float zzi() throws RemoteException {
        if (((Boolean) zzbet.zzc().zzc(zzbjl.zzeB)).booleanValue() && this.zza.zzw() != null) {
            return this.zza.zzw().zzk();
        }
        return 0.0f;
    }

    @Override // com.google.android.gms.internal.ads.zzbme
    public final zzbhc zzj() throws RemoteException {
        if (!((Boolean) zzbet.zzc().zzc(zzbjl.zzeB)).booleanValue()) {
            return null;
        }
        return this.zza.zzw();
    }

    @Override // com.google.android.gms.internal.ads.zzbme
    public final boolean zzk() throws RemoteException {
        return ((Boolean) zzbet.zzc().zzc(zzbjl.zzeB)).booleanValue() && this.zza.zzw() != null;
    }

    @Override // com.google.android.gms.internal.ads.zzbme
    public final void zzl(zzbnp zzbnpVar) {
        if (((Boolean) zzbet.zzc().zzc(zzbjl.zzeB)).booleanValue() && (this.zza.zzw() instanceof zzcnh)) {
            ((zzcnh) this.zza.zzw()).zzv(zzbnpVar);
        }
    }
}

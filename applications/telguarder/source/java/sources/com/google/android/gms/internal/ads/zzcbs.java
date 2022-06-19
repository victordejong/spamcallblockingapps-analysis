package com.google.android.gms.internal.ads;

import android.graphics.drawable.Drawable;
import android.os.RemoteException;
import com.google.android.gms.ads.internal.util.zzd;
import com.google.android.gms.dynamic.IObjectWrapper;
import com.google.android.gms.dynamic.ObjectWrapper;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzcbs.class */
public final class zzcbs extends zzaep {
    private final zzccd zzgch;
    private IObjectWrapper zzgdf;

    public zzcbs(zzccd zzccdVar) {
        this.zzgch = zzccdVar;
    }

    private final float zzano() {
        try {
            return this.zzgch.getVideoController().getAspectRatio();
        } catch (RemoteException e) {
            zzd.zzc("Remote exception getting video controller aspect ratio.", e);
            return 0.0f;
        }
    }

    private static float zzas(IObjectWrapper iObjectWrapper) {
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

    @Override // com.google.android.gms.internal.ads.zzaem
    public final float getAspectRatio() throws RemoteException {
        if (!((Boolean) zzwr.zzqr().zzd(zzabp.zzcyb)).booleanValue()) {
            return 0.0f;
        }
        if (this.zzgch.getMediaContentAspectRatio() != 0.0f) {
            return this.zzgch.getMediaContentAspectRatio();
        }
        if (this.zzgch.getVideoController() != null) {
            return zzano();
        }
        IObjectWrapper iObjectWrapper = this.zzgdf;
        if (iObjectWrapper != null) {
            return zzas(iObjectWrapper);
        }
        zzaer zzanw = this.zzgch.zzanw();
        if (zzanw == null) {
            return 0.0f;
        }
        float width = (zzanw == null || zzanw.getWidth() == -1 || zzanw.getHeight() == -1) ? 0.0f : zzanw.getWidth() / zzanw.getHeight();
        return width != 0.0f ? width : zzas(zzanw.zzti());
    }

    @Override // com.google.android.gms.internal.ads.zzaem
    public final float getCurrentTime() throws RemoteException {
        if (((Boolean) zzwr.zzqr().zzd(zzabp.zzcyc)).booleanValue() && this.zzgch.getVideoController() != null) {
            return this.zzgch.getVideoController().getCurrentTime();
        }
        return 0.0f;
    }

    @Override // com.google.android.gms.internal.ads.zzaem
    public final float getDuration() throws RemoteException {
        if (((Boolean) zzwr.zzqr().zzd(zzabp.zzcyc)).booleanValue() && this.zzgch.getVideoController() != null) {
            return this.zzgch.getVideoController().getDuration();
        }
        return 0.0f;
    }

    @Override // com.google.android.gms.internal.ads.zzaem
    public final zzzc getVideoController() throws RemoteException {
        if (!((Boolean) zzwr.zzqr().zzd(zzabp.zzcyc)).booleanValue()) {
            return null;
        }
        return this.zzgch.getVideoController();
    }

    @Override // com.google.android.gms.internal.ads.zzaem
    public final boolean hasVideoContent() throws RemoteException {
        return ((Boolean) zzwr.zzqr().zzd(zzabp.zzcyc)).booleanValue() && this.zzgch.getVideoController() != null;
    }

    @Override // com.google.android.gms.internal.ads.zzaem
    public final void zza(zzagd zzagdVar) {
        if (((Boolean) zzwr.zzqr().zzd(zzabp.zzcyc)).booleanValue() && (this.zzgch.getVideoController() instanceof zzbev)) {
            ((zzbev) this.zzgch.getVideoController()).zza(zzagdVar);
        }
    }

    @Override // com.google.android.gms.internal.ads.zzaem
    public final void zzo(IObjectWrapper iObjectWrapper) {
        if (((Boolean) zzwr.zzqr().zzd(zzabp.zzcte)).booleanValue()) {
            this.zzgdf = iObjectWrapper;
        }
    }

    @Override // com.google.android.gms.internal.ads.zzaem
    public final IObjectWrapper zztl() throws RemoteException {
        IObjectWrapper iObjectWrapper = this.zzgdf;
        if (iObjectWrapper != null) {
            return iObjectWrapper;
        }
        zzaer zzanw = this.zzgch.zzanw();
        if (zzanw != null) {
            return zzanw.zzti();
        }
        return null;
    }
}

package com.google.android.gms.internal.ads;

import android.os.RemoteException;
import com.google.android.gms.ads.internal.util.zzd;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzcys.class */
public final class zzcys implements zzvc {
    private zzww zzgyk;

    @Override // com.google.android.gms.internal.ads.zzvc
    public final void onAdClicked() {
        synchronized (this) {
            zzww zzwwVar = this.zzgyk;
            if (zzwwVar != null) {
                try {
                    zzwwVar.onAdClicked();
                } catch (RemoteException e) {
                    zzd.zzd("Remote Exception at onAdClicked.", e);
                }
            }
        }
    }

    public final void zzb(zzww zzwwVar) {
        synchronized (this) {
            this.zzgyk = zzwwVar;
        }
    }
}

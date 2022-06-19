package com.google.android.gms.internal.ads;

import android.content.Context;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzcsw.class */
public final class zzcsw implements zzdbx {
    private final zzfbi zza;

    public zzcsw(zzfbi zzfbiVar) {
        this.zza = zzfbiVar;
    }

    @Override // com.google.android.gms.internal.ads.zzdbx
    public final void zza(Context context) {
        try {
            this.zza.zzi();
        } catch (zzfaw e) {
            zzcgt.zzj("Cannot invoke onPause for the mediation adapter.", e);
        }
    }

    @Override // com.google.android.gms.internal.ads.zzdbx
    public final void zzb(Context context) {
        try {
            this.zza.zzj();
            if (context == null) {
                return;
            }
            this.zza.zzp(context);
        } catch (zzfaw e) {
            zzcgt.zzj("Cannot invoke onResume for the mediation adapter.", e);
        }
    }

    @Override // com.google.android.gms.internal.ads.zzdbx
    public final void zzbo(Context context) {
        try {
            this.zza.zzf();
        } catch (zzfaw e) {
            zzcgt.zzj("Cannot invoke onDestroy for the mediation adapter.", e);
        }
    }
}

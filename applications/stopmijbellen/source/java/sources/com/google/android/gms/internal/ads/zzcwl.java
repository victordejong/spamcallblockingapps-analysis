package com.google.android.gms.internal.ads;

import android.content.Context;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzcwl.class */
public final class zzcwl implements zzdfm {
    private final zzfev zza;

    public zzcwl(zzfev zzfevVar) {
        this.zza = zzfevVar;
    }

    @Override // com.google.android.gms.internal.ads.zzdfm
    public final void zzbA(Context context) {
        try {
            this.zza.zzs();
        } catch (zzfek e) {
            zzciz.zzk("Cannot invoke onPause for the mediation adapter.", e);
        }
    }

    @Override // com.google.android.gms.internal.ads.zzdfm
    public final void zzbB(Context context) {
        try {
            this.zza.zzt();
            if (context == null) {
                return;
            }
            this.zza.zzr(context);
        } catch (zzfek e) {
            zzciz.zzk("Cannot invoke onResume for the mediation adapter.", e);
        }
    }

    @Override // com.google.android.gms.internal.ads.zzdfm
    public final void zzby(Context context) {
        try {
            this.zza.zzg();
        } catch (zzfek e) {
            zzciz.zzk("Cannot invoke onDestroy for the mediation adapter.", e);
        }
    }
}

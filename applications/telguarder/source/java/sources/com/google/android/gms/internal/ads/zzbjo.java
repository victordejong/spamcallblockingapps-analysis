package com.google.android.gms.internal.ads;

import android.content.Context;
import com.google.android.gms.ads.internal.util.zzd;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzbjo.class */
public final class zzbjo implements zzbsh {
    private final zzdog zzfrg;

    public zzbjo(zzdog zzdogVar) {
        this.zzfrg = zzdogVar;
    }

    @Override // com.google.android.gms.internal.ads.zzbsh
    public final void zzcb(Context context) {
        try {
            this.zzfrg.pause();
        } catch (zzdnt e) {
            zzd.zzd("Cannot invoke onPause for the mediation adapter.", e);
        }
    }

    @Override // com.google.android.gms.internal.ads.zzbsh
    public final void zzcc(Context context) {
        try {
            this.zzfrg.resume();
            if (context == null) {
                return;
            }
            this.zzfrg.onContextChanged(context);
        } catch (zzdnt e) {
            zzd.zzd("Cannot invoke onResume for the mediation adapter.", e);
        }
    }

    @Override // com.google.android.gms.internal.ads.zzbsh
    public final void zzcd(Context context) {
        try {
            this.zzfrg.destroy();
        } catch (zzdnt e) {
            zzd.zzd("Cannot invoke onDestroy for the mediation adapter.", e);
        }
    }
}

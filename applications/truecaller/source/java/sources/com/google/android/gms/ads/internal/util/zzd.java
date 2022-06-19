package com.google.android.gms.ads.internal.util;

import android.content.Context;
import com.google.android.gms.internal.ads.zzcgs;
import com.google.android.gms.internal.ads.zzcgt;
import com.google.android.gms.internal.ads.zzchj;
import com.google.android.gms.internal.ads.zzfsm;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/ads/internal/util/zzd.class */
public final class zzd {
    public static void zza(Context context) {
        if (zzcgs.zzk(context) && !zzcgs.zzi()) {
            zzfsm<?> zzc = new zzc(context).zzc();
            zzcgt.zzh("Updating ad debug logging enablement.");
            zzchj.zza(zzc, "AdDebugLogUpdater.updateEnablement");
        }
    }
}

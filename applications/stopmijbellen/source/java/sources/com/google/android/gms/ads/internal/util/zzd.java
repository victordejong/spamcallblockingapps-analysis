package com.google.android.gms.ads.internal.util;

import android.content.Context;
import com.google.android.gms.internal.ads.zzciy;
import com.google.android.gms.internal.ads.zzciz;
import com.google.android.gms.internal.ads.zzcjp;
import com.google.android.gms.internal.ads.zzfxa;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/ads/internal/util/zzd.class */
public final class zzd {
    public static void zza(Context context) {
        if (zzciy.zzk(context) && !zzciy.zzm()) {
            zzfxa<?> zzb = new zzc(context).zzb();
            zzciz.zzi("Updating ad debug logging enablement.");
            zzcjp.zza(zzb, "AdDebugLogUpdater.updateEnablement");
        }
    }
}

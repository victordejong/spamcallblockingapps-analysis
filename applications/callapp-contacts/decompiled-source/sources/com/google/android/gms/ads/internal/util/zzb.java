package com.google.android.gms.ads.internal.util;

import android.content.Context;
import com.google.android.gms.internal.ads.dbt;
import com.google.android.gms.internal.ads.yu;
import com.google.android.gms.internal.ads.zl;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/ads/internal/util/zzb.class */
public final class zzb {
    public static void zzam(Context context) {
        if (yu.a(context) && !yu.b()) {
            dbt<?> zzyx = new zze(context).zzyx();
            zzd.zzey("Updating ad debug logging enablement.");
            zl.a(zzyx, "AdDebugLogUpdater.updateEnablement");
        }
    }
}

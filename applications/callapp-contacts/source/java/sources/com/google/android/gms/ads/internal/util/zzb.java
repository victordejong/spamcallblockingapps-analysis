package com.google.android.gms.ads.internal.util;

import android.content.Context;
import com.google.android.gms.internal.ads.C13081yu;
import com.google.android.gms.internal.ads.C13099zl;
import com.google.android.gms.internal.ads.dbt;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/ads/internal/util/zzb.class */
public final class zzb {
    public static void zzam(Context context) {
        if (C13081yu.m13924a(context) && !C13081yu.m13911b()) {
            dbt<?> zzyx = new zze(context).zzyx();
            zzd.zzey("Updating ad debug logging enablement.");
            C13099zl.m13900a(zzyx, "AdDebugLogUpdater.updateEnablement");
        }
    }
}

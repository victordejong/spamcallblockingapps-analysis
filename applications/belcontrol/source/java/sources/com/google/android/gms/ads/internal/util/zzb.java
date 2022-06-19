package com.google.android.gms.ads.internal.util;

import android.content.Context;
import com.google.android.gms.internal.ads.zzaze;
import com.google.android.gms.internal.ads.zzazk;
import com.google.android.gms.internal.ads.zzazw;
import com.google.android.gms.internal.ads.zzdzw;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/ads/internal/util/zzb.class */
public final class zzb {
    public static void zzaj(Context context) {
        if (zzaze.zzbs(context) && !zzaze.zzaaa()) {
            zzdzw<?> zzye = new zze(context).zzye();
            zzazk.zzew("Updating ad debug logging enablement.");
            zzazw.zza(zzye, "AdDebugLogUpdater.updateEnablement");
        }
    }
}

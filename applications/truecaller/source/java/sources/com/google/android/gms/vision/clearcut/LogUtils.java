package com.google.android.gms.vision.clearcut;

import android.content.Context;
import android.content.pm.PackageManager;
import androidx.annotation.Keep;
import com.google.android.gms.common.wrappers.Wrappers;
import com.google.android.gms.internal.vision.zzea;
import com.google.android.gms.internal.vision.zzgs;
import com.google.android.gms.vision.C2072L;
@Keep
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/vision/clearcut/LogUtils.class */
public class LogUtils {
    public static zzea.zza zza(Context context) {
        zzea.zza.zza zzl = zzea.zza.zzcj().zzl(context.getPackageName());
        String zzb = zzb(context);
        if (zzb != null) {
            zzl.zzm(zzb);
        }
        return (zzgs) zzl.zzgc();
    }

    private static String zzb(Context context) {
        try {
            return Wrappers.m38764a(context).m38766c(context.getPackageName(), 0).versionName;
        } catch (PackageManager.NameNotFoundException e) {
            C2072L.m38488e(e, "Unable to find calling package info for %s", context.getPackageName());
            return null;
        }
    }
}

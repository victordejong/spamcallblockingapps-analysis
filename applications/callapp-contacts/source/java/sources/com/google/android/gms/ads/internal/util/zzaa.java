package com.google.android.gms.ads.internal.util;

import android.app.Activity;
import android.content.res.Configuration;
import android.util.DisplayMetrics;
import android.view.WindowManager;
import com.google.android.gms.ads.internal.zzr;
import com.google.android.gms.internal.ads.C12187aq;
import com.google.android.gms.internal.ads.C13077yq;
import com.google.android.gms.internal.ads.ekb;
import com.mopub.common.Constants;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/ads/internal/util/zzaa.class */
public class zzaa extends zzx {
    private static boolean zze(int i, int i2, int i3) {
        return Math.abs(i - i2) <= i3;
    }

    @Override // com.google.android.gms.ads.internal.util.zzr
    public final boolean zza(Activity activity, Configuration configuration) {
        if (!((Boolean) ekb.m14831e().m18571a(C12187aq.f42753cJ)).booleanValue()) {
            return false;
        }
        if (((Boolean) ekb.m14831e().m18571a(C12187aq.f42755cL)).booleanValue()) {
            return activity.isInMultiWindowMode();
        }
        ekb.m14835a();
        int m13950a = C13077yq.m13950a(activity, configuration.screenHeightDp);
        int m13950a2 = C13077yq.m13950a(activity, configuration.screenWidthDp);
        zzr.zzkv();
        DisplayMetrics zza = zzj.zza((WindowManager) activity.getApplicationContext().getSystemService("window"));
        int i = zza.heightPixels;
        int i2 = zza.widthPixels;
        int identifier = activity.getResources().getIdentifier("status_bar_height", "dimen", Constants.ANDROID_PLATFORM);
        int dimensionPixelSize = identifier > 0 ? activity.getResources().getDimensionPixelSize(identifier) : 0;
        int round = ((int) Math.round(activity.getResources().getDisplayMetrics().density + 0.5d)) * ((Integer) ekb.m14831e().m18571a(C12187aq.f42752cI)).intValue();
        return !(zze(i, m13950a + dimensionPixelSize, round) && zze(i2, m13950a2, round));
    }
}

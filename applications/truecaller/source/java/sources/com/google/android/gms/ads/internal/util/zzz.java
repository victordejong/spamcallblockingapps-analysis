package com.google.android.gms.ads.internal.util;

import android.app.Activity;
import android.content.res.Configuration;
import android.util.DisplayMetrics;
import android.view.WindowManager;
import com.google.android.gms.ads.internal.zzt;
import com.google.android.gms.internal.ads.zzber;
import com.google.android.gms.internal.ads.zzbet;
import com.google.android.gms.internal.ads.zzbjl;
import com.google.android.gms.internal.ads.zzcgm;
import com.mopub.common.Constants;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/ads/internal/util/zzz.class */
public class zzz extends zzx {
    public static final boolean zzp(int i, int i2, int i3) {
        return Math.abs(i - i2) <= i3;
    }

    @Override // com.google.android.gms.ads.internal.util.zzad
    public final boolean zzo(Activity activity, Configuration configuration) {
        boolean z = false;
        if (!((Boolean) zzbet.zzc().zzc(zzbjl.zzdk)).booleanValue()) {
            return false;
        }
        if (((Boolean) zzbet.zzc().zzc(zzbjl.zzdm)).booleanValue()) {
            return activity.isInMultiWindowMode();
        }
        zzber.zza();
        int zzs = zzcgm.zzs(activity, configuration.screenHeightDp);
        int zzs2 = zzcgm.zzs(activity, configuration.screenWidthDp);
        zzt.zzc();
        DisplayMetrics zzy = zzs.zzy((WindowManager) activity.getApplicationContext().getSystemService("window"));
        int i = zzy.heightPixels;
        int i2 = zzy.widthPixels;
        int identifier = activity.getResources().getIdentifier("status_bar_height", "dimen", Constants.ANDROID_PLATFORM);
        int dimensionPixelSize = identifier > 0 ? activity.getResources().getDimensionPixelSize(identifier) : 0;
        int intValue = ((Integer) zzbet.zzc().zzc(zzbjl.zzdi)).intValue() * ((int) Math.round(activity.getResources().getDisplayMetrics().density + 0.5d));
        if (!zzp(i, zzs + dimensionPixelSize, intValue)) {
            z = true;
        } else if (!zzp(i2, zzs2, intValue)) {
            return true;
        }
        return z;
    }
}

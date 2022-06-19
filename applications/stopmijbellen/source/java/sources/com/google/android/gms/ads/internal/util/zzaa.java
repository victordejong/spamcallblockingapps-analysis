package com.google.android.gms.ads.internal.util;

import android.annotation.TargetApi;
import android.content.Context;
import android.telephony.TelephonyManager;
import com.google.android.gms.ads.internal.zzt;
@TargetApi(26)
/* loaded from: classes-dex2jar.jar:com/google/android/gms/ads/internal/util/zzaa.class */
public class zzaa extends zzz {
    @Override // com.google.android.gms.ads.internal.util.zzae
    public final int zzq(Context context, TelephonyManager telephonyManager) {
        zzt.zzp();
        return (!zzt.zzF(context, "android.permission.ACCESS_NETWORK_STATE") || !telephonyManager.isDataEnabled()) ? 1 : 2;
    }
}

package com.google.android.gms.ads.internal.util;

import android.content.Context;
import android.telephony.TelephonyManager;
import com.google.android.gms.ads.internal.zzt;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/ads/internal/util/zzaa.class */
public class zzaa extends zzz {
    @Override // com.google.android.gms.ads.internal.util.zzad
    public final int zzq(Context context, TelephonyManager telephonyManager) {
        zzt.zzc();
        return (!zzs.zzE(context, "android.permission.ACCESS_NETWORK_STATE") || !telephonyManager.isDataEnabled()) ? 1 : 2;
    }
}

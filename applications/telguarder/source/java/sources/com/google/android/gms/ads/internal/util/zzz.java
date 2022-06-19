package com.google.android.gms.ads.internal.util;

import android.content.Context;
import android.telephony.TelephonyManager;
import com.google.android.gms.ads.internal.zzr;
import com.google.android.gms.internal.ads.zzuq;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/ads/internal/util/zzz.class */
public class zzz extends zzaa {
    @Override // com.google.android.gms.ads.internal.util.zzr
    public final zzuq zza(Context context, TelephonyManager telephonyManager) {
        zzr.zzkr();
        if (zzj.zzp(context, "android.permission.ACCESS_NETWORK_STATE") && telephonyManager.isDataEnabled()) {
            return zzuq.ENUM_TRUE;
        }
        return zzuq.ENUM_FALSE;
    }
}

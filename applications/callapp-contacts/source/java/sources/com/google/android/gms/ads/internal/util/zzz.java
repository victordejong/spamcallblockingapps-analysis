package com.google.android.gms.ads.internal.util;

import android.content.Context;
import android.telephony.TelephonyManager;
import com.google.android.gms.ads.internal.zzr;
import com.google.android.gms.internal.ads.eid;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/ads/internal/util/zzz.class */
public class zzz extends zzaa {
    @Override // com.google.android.gms.ads.internal.util.zzr
    public final eid zza(Context context, TelephonyManager telephonyManager) {
        zzr.zzkv();
        if (zzj.zzp(context, "android.permission.ACCESS_NETWORK_STATE") && telephonyManager.isDataEnabled()) {
            return eid.ENUM_TRUE;
        }
        return eid.ENUM_FALSE;
    }
}

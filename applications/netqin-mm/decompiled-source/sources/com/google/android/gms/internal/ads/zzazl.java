package com.google.android.gms.internal.ads;

import android.content.Context;
import android.telephony.TelephonyManager;
import com.google.android.gms.ads.internal.zzp;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzazl.class */
public class zzazl extends zzazi {
    @Override // com.google.android.gms.internal.ads.zzazd
    /* renamed from: a */
    public final zzuk mo16024a(Context context, TelephonyManager telephonyManager) {
        zzp.m17969c();
        if (zzayu.m16111b(context, "android.permission.ACCESS_NETWORK_STATE") && telephonyManager.isDataEnabled()) {
            return zzuk.ENUM_TRUE;
        }
        return zzuk.ENUM_FALSE;
    }
}

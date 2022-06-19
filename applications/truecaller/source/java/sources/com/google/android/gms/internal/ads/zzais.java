package com.google.android.gms.internal.ads;

import android.content.Context;
import android.net.wifi.WifiManager;
import com.razorpay.AnalyticsConstants;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzais.class */
public final class zzais {
    private final WifiManager zza;

    public zzais(Context context) {
        this.zza = (WifiManager) context.getApplicationContext().getSystemService(AnalyticsConstants.WIFI);
    }
}

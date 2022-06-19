package com.google.android.gms.internal.ads;

import android.content.Context;
import android.net.wifi.WifiManager;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzjc.class */
final class zzjc {
    private final WifiManager zza;

    public zzjc(Context context) {
        this.zza = (WifiManager) context.getApplicationContext().getSystemService("wifi");
    }
}

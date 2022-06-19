package com.amazon.device.ads;

import android.net.ConnectivityManager;
import android.net.NetworkInfo;
/* loaded from: classes-dex2jar.jar:com/amazon/device/ads/DtbNetworkState.class */
public class DtbNetworkState {
    public static final DtbNetworkState INSTANCE = new DtbNetworkState();
    private final ConnectivityManager connectivityManager = (ConnectivityManager) AdRegistration.getContext().getSystemService("connectivity");

    private DtbNetworkState() {
    }

    public boolean isWifiConnection() {
        NetworkInfo activeNetworkInfo = this.connectivityManager.getActiveNetworkInfo();
        return activeNetworkInfo != null && activeNetworkInfo.getTypeName().equals("WIFI");
    }
}

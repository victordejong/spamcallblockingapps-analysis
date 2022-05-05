package com.mixpanel.android.mpmetrics;

import android.annotation.SuppressLint;
import android.bluetooth.BluetoothAdapter;
import android.content.Context;
import android.net.ConnectivityManager;
import android.net.NetworkInfo;
import android.os.Build;
import android.telephony.TelephonyManager;
import android.util.DisplayMetrics;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes-dex2jar.jar:com/mixpanel/android/mpmetrics/SystemInformation.class */
public class SystemInformation {
    private static final String LOGTAG = "MixpanelAPI.SysInfo";
    private static SystemInformation sInstance;
    private static final Object sInstanceLock = new Object();
    private final String mAppName;
    private final Integer mAppVersionCode;
    private final String mAppVersionName;
    private final Context mContext;
    private final DisplayMetrics mDisplayMetrics;
    private final Boolean mHasNFC;
    private final Boolean mHasTelephony;

    /* JADX WARN: Removed duplicated region for block: B:11:0x0062  */
    /* JADX WARN: Removed duplicated region for block: B:15:0x007e  */
    /* JADX WARN: Removed duplicated region for block: B:31:0x00f6  */
    /* JADX WARN: Removed duplicated region for block: B:45:0x00ac A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private SystemInformation(android.content.Context r8) {
        /*
            Method dump skipped, instructions count: 313
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.mixpanel.android.mpmetrics.SystemInformation.<init>(android.content.Context):void");
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static SystemInformation getInstance(Context context) {
        synchronized (sInstanceLock) {
            if (sInstance == null) {
                sInstance = new SystemInformation(context.getApplicationContext());
            }
        }
        return sInstance;
    }

    public String getAppName() {
        return this.mAppName;
    }

    public Integer getAppVersionCode() {
        return this.mAppVersionCode;
    }

    public String getAppVersionName() {
        return this.mAppVersionName;
    }

    public String getBluetoothVersion() {
        String str = "none";
        if (Build.VERSION.SDK_INT >= 18 && this.mContext.getPackageManager().hasSystemFeature("android.hardware.bluetooth_le")) {
            str = "ble";
        } else if (this.mContext.getPackageManager().hasSystemFeature("android.hardware.bluetooth")) {
            str = "classic";
        }
        return str;
    }

    public String getCurrentNetworkOperator() {
        TelephonyManager telephonyManager = (TelephonyManager) this.mContext.getSystemService("phone");
        return telephonyManager != null ? telephonyManager.getNetworkOperatorName() : null;
    }

    public DisplayMetrics getDisplayMetrics() {
        return this.mDisplayMetrics;
    }

    public String getPhoneRadioType() {
        TelephonyManager telephonyManager = (TelephonyManager) this.mContext.getSystemService("phone");
        String str = null;
        if (telephonyManager != null) {
            switch (telephonyManager.getPhoneType()) {
                case 0:
                    str = "none";
                    break;
                case 1:
                    str = "gsm";
                    break;
                case 2:
                    str = "cdma";
                    break;
                case 3:
                    str = "sip";
                    break;
                default:
                    str = null;
                    break;
            }
        }
        return str;
    }

    public boolean hasNFC() {
        return this.mHasNFC.booleanValue();
    }

    public boolean hasTelephony() {
        return this.mHasTelephony.booleanValue();
    }

    @SuppressLint({"MissingPermission"})
    public Boolean isBluetoothEnabled() {
        Boolean bool = null;
        try {
            if (this.mContext.getPackageManager().checkPermission("android.permission.BLUETOOTH", this.mContext.getPackageName()) == 0) {
                BluetoothAdapter defaultAdapter = BluetoothAdapter.getDefaultAdapter();
                bool = null;
                if (defaultAdapter != null) {
                    bool = Boolean.valueOf(defaultAdapter.isEnabled());
                }
            }
        } catch (NoClassDefFoundError | SecurityException e) {
            bool = null;
        }
        return bool;
    }

    @SuppressLint({"MissingPermission"})
    public Boolean isWifiConnected() {
        Boolean bool = null;
        NetworkInfo networkInfo = null;
        if (this.mContext.checkCallingOrSelfPermission("android.permission.ACCESS_NETWORK_STATE") == 0) {
            ConnectivityManager connectivityManager = (ConnectivityManager) this.mContext.getSystemService("connectivity");
            if (connectivityManager != null) {
                networkInfo = connectivityManager.getActiveNetworkInfo();
            }
            boolean z = true;
            if (networkInfo == null || networkInfo.getType() != 1 || !networkInfo.isConnected()) {
                z = false;
            }
            bool = Boolean.valueOf(z);
        }
        return bool;
    }
}

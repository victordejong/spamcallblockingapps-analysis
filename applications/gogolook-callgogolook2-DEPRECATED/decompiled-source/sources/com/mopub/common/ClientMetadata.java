package com.mopub.common;

import android.annotation.SuppressLint;
import android.content.Context;
import android.content.pm.ApplicationInfo;
import android.content.pm.PackageManager;
import android.graphics.Point;
import android.net.ConnectivityManager;
import android.net.Network;
import android.net.NetworkCapabilities;
import android.net.NetworkInfo;
import android.os.Build;
import android.telephony.TelephonyManager;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.mopub.common.Preconditions;
import com.mopub.common.logging.MoPubLog;
import com.mopub.common.privacy.MoPubIdentifier;
import com.mopub.common.util.DeviceUtils;
import com.mopub.common.util.Dips;
import java.util.Locale;
/* loaded from: classes2-dex2jar.jar:com/mopub/common/ClientMetadata.class */
public class ClientMetadata {

    /* renamed from: s */
    public static volatile ClientMetadata f8002s;

    /* renamed from: a */
    public String f8003a;

    /* renamed from: b */
    public String f8004b;

    /* renamed from: c */
    public String f8005c;

    /* renamed from: d */
    public String f8006d;

    /* renamed from: e */
    public String f8007e;

    /* renamed from: f */
    public String f8008f;

    /* renamed from: g */
    public String f8009g;
    @NonNull

    /* renamed from: h */
    public final MoPubIdentifier f8010h;

    /* renamed from: i */
    public final String f8011i = Build.MANUFACTURER;

    /* renamed from: j */
    public final String f8012j = Build.MODEL;

    /* renamed from: k */
    public final String f8013k = Build.PRODUCT;

    /* renamed from: l */
    public final String f8014l = Build.VERSION.RELEASE;

    /* renamed from: m */
    public final String f8015m = "5.11.1";

    /* renamed from: n */
    public final String f8016n;

    /* renamed from: o */
    public final String f8017o;

    /* renamed from: p */
    public String f8018p;

    /* renamed from: q */
    public final Context f8019q;

    /* renamed from: r */
    public final ConnectivityManager f8020r;

    /* loaded from: classes2-dex2jar.jar:com/mopub/common/ClientMetadata$MoPubNetworkType.class */
    public enum MoPubNetworkType {
        UNKNOWN(0),
        ETHERNET(1),
        WIFI(2),
        MOBILE(3),
        GG(4),
        GGG(5),
        GGGG(6);
        

        /* renamed from: a */
        public final int f8023a;

        MoPubNetworkType(int i) {
            this.f8023a = i;
        }

        public int getId() {
            return this.f8023a;
        }

        @Override // java.lang.Enum
        public String toString() {
            return Integer.toString(this.f8023a);
        }
    }

    public ClientMetadata(@NonNull Context context) {
        ApplicationInfo applicationInfo;
        Preconditions.checkNotNull(context);
        this.f8019q = context.getApplicationContext();
        this.f8020r = (ConnectivityManager) this.f8019q.getSystemService("connectivity");
        this.f8016n = m30856a(this.f8019q);
        PackageManager packageManager = this.f8019q.getPackageManager();
        this.f8017o = this.f8019q.getPackageName();
        try {
            applicationInfo = packageManager.getApplicationInfo(this.f8017o, 0);
        } catch (PackageManager.NameNotFoundException e) {
            applicationInfo = null;
        }
        if (applicationInfo != null) {
            this.f8018p = (String) packageManager.getApplicationLabel(applicationInfo);
        }
        TelephonyManager telephonyManager = (TelephonyManager) this.f8019q.getSystemService("phone");
        if (telephonyManager != null) {
            this.f8003a = telephonyManager.getNetworkOperator();
            this.f8004b = telephonyManager.getNetworkOperator();
            if (telephonyManager.getPhoneType() == 2 && telephonyManager.getSimState() == 5) {
                this.f8003a = telephonyManager.getSimOperator();
                this.f8005c = telephonyManager.getSimOperator();
            }
            if (MoPub.canCollectPersonalInformation()) {
                this.f8006d = telephonyManager.getNetworkCountryIso();
                this.f8007e = telephonyManager.getSimCountryIso();
            } else {
                this.f8006d = "";
                this.f8007e = "";
            }
            try {
                this.f8008f = telephonyManager.getNetworkOperatorName();
                if (telephonyManager.getSimState() == 5) {
                    this.f8009g = telephonyManager.getSimOperatorName();
                }
            } catch (SecurityException e2) {
                this.f8008f = null;
                this.f8009g = null;
            }
        }
        this.f8010h = new MoPubIdentifier(this.f8019q);
    }

    /* renamed from: a */
    public static String m30856a(Context context) {
        try {
            return context.getPackageManager().getPackageInfo(context.getPackageName(), 0).versionName;
        } catch (Exception e) {
            MoPubLog.log(MoPubLog.SdkLogEvent.CUSTOM, "Failed to retrieve PackageInfo#versionName.");
            return null;
        }
    }

    @Deprecated
    @VisibleForTesting
    public static void clearForTesting() {
        f8002s = null;
    }

    @NonNull
    public static String getCurrentLanguage(@NonNull Context context) {
        String trim = Locale.getDefault().getLanguage().trim();
        Locale locale = context.getResources().getConfiguration().locale;
        String str = trim;
        if (locale != null) {
            str = trim;
            if (!locale.getLanguage().trim().isEmpty()) {
                str = locale.getLanguage().trim();
            }
        }
        return str;
    }

    @Nullable
    public static ClientMetadata getInstance() {
        ClientMetadata clientMetadata = f8002s;
        ClientMetadata clientMetadata2 = clientMetadata;
        if (clientMetadata == null) {
            synchronized (ClientMetadata.class) {
                try {
                    clientMetadata2 = f8002s;
                } catch (Throwable th) {
                    throw th;
                }
            }
        }
        return clientMetadata2;
    }

    @NonNull
    public static ClientMetadata getInstance(@NonNull Context context) {
        ClientMetadata clientMetadata = f8002s;
        ClientMetadata clientMetadata2 = clientMetadata;
        if (clientMetadata == null) {
            synchronized (ClientMetadata.class) {
                try {
                    ClientMetadata clientMetadata3 = f8002s;
                    clientMetadata2 = clientMetadata3;
                    if (clientMetadata3 == null) {
                        clientMetadata2 = new ClientMetadata(context);
                        f8002s = clientMetadata2;
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
        }
        return clientMetadata2;
    }

    @Deprecated
    @VisibleForTesting
    public static void setInstance(ClientMetadata clientMetadata) {
        synchronized (ClientMetadata.class) {
            try {
                f8002s = clientMetadata;
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    @SuppressLint({"MissingPermission"})
    public MoPubNetworkType getActiveNetworkType() {
        if (!DeviceUtils.isPermissionGranted(this.f8019q, "android.permission.ACCESS_NETWORK_STATE")) {
            return MoPubNetworkType.UNKNOWN;
        }
        NetworkInfo activeNetworkInfo = this.f8020r.getActiveNetworkInfo();
        if (activeNetworkInfo == null || !activeNetworkInfo.isConnected()) {
            return MoPubNetworkType.UNKNOWN;
        }
        if (Build.VERSION.SDK_INT >= 21) {
            for (Network network : this.f8020r.getAllNetworks()) {
                NetworkCapabilities networkCapabilities = this.f8020r.getNetworkCapabilities(network);
                if (networkCapabilities != null && networkCapabilities.hasTransport(3)) {
                    return MoPubNetworkType.ETHERNET;
                }
            }
        } else if (activeNetworkInfo.getType() == 9) {
            return MoPubNetworkType.ETHERNET;
        }
        NetworkInfo networkInfo = this.f8020r.getNetworkInfo(1);
        if (networkInfo != null && networkInfo.isConnected()) {
            return MoPubNetworkType.WIFI;
        }
        NetworkInfo networkInfo2 = this.f8020r.getNetworkInfo(0);
        if (networkInfo2 == null || !networkInfo2.isConnected()) {
            return MoPubNetworkType.UNKNOWN;
        }
        switch (networkInfo2.getSubtype()) {
            case 1:
            case 2:
            case 4:
            case 7:
            case 11:
                return MoPubNetworkType.GG;
            case 3:
            case 5:
            case 6:
            case 8:
            case 9:
            case 10:
            case 12:
            case 14:
                return MoPubNetworkType.GGG;
            case 13:
            case 15:
                return MoPubNetworkType.GGGG;
            default:
                return MoPubNetworkType.MOBILE;
        }
    }

    public String getAppName() {
        return this.f8018p;
    }

    public String getAppPackageName() {
        return this.f8017o;
    }

    public String getAppVersion() {
        return this.f8016n;
    }

    public float getDensity() {
        return this.f8019q.getResources().getDisplayMetrics().density;
    }

    public Point getDeviceDimensions() {
        return Preconditions.NoThrow.checkNotNull(this.f8019q) ? DeviceUtils.getDeviceDimensions(this.f8019q) : new Point(0, 0);
    }

    public Locale getDeviceLocale() {
        return this.f8019q.getResources().getConfiguration().locale;
    }

    public String getDeviceManufacturer() {
        return this.f8011i;
    }

    public String getDeviceModel() {
        return this.f8012j;
    }

    public String getDeviceOsVersion() {
        return this.f8014l;
    }

    public String getDeviceProduct() {
        return this.f8013k;
    }

    public int getDeviceScreenHeightDip() {
        return Dips.screenHeightAsIntDips(this.f8019q);
    }

    public int getDeviceScreenWidthDip() {
        return Dips.screenWidthAsIntDips(this.f8019q);
    }

    public String getIsoCountryCode() {
        return MoPub.canCollectPersonalInformation() ? this.f8006d : "";
    }

    @NonNull
    public MoPubIdentifier getMoPubIdentifier() {
        return this.f8010h;
    }

    public String getNetworkOperator() {
        return this.f8004b;
    }

    public String getNetworkOperatorForUrl() {
        return this.f8003a;
    }

    public String getNetworkOperatorName() {
        return this.f8008f;
    }

    public String getOrientationString() {
        int i = this.f8019q.getResources().getConfiguration().orientation;
        return i == 1 ? "p" : i == 2 ? "l" : i == 3 ? "s" : "u";
    }

    public String getSdkVersion() {
        return this.f8015m;
    }

    public String getSimIsoCountryCode() {
        return MoPub.canCollectPersonalInformation() ? this.f8007e : "";
    }

    public String getSimOperator() {
        return this.f8005c;
    }

    public String getSimOperatorName() {
        return this.f8009g;
    }

    public void repopulateCountryData() {
        TelephonyManager telephonyManager = (TelephonyManager) this.f8019q.getSystemService("phone");
        if (MoPub.canCollectPersonalInformation() && telephonyManager != null) {
            this.f8006d = telephonyManager.getNetworkCountryIso();
            this.f8007e = telephonyManager.getSimCountryIso();
        }
    }
}

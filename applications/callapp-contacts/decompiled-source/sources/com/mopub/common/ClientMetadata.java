package com.mopub.common;

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
import com.callapp.contacts.model.Constants;
import com.mopub.common.Preconditions;
import com.mopub.common.logging.MoPubLog;
import com.mopub.common.privacy.MoPubIdentifier;
import com.mopub.common.util.DeviceUtils;
import com.mopub.common.util.Dips;
import java.util.Locale;
/* loaded from: classes4-dex2jar.jar:com/mopub/common/ClientMetadata.class */
public class ClientMetadata {
    private static volatile ClientMetadata i;

    /* renamed from: a  reason: collision with root package name */
    private String f33790a;

    /* renamed from: b  reason: collision with root package name */
    private String f33791b;

    /* renamed from: c  reason: collision with root package name */
    private String f33792c;

    /* renamed from: d  reason: collision with root package name */
    private String f33793d;
    private String e;
    private String f;
    private String g;
    private final MoPubIdentifier h;
    private final String j = Build.MANUFACTURER;
    private final String k = Build.MODEL;
    private final String l = Build.PRODUCT;
    private final String m = Build.VERSION.RELEASE;
    private final String n = "5.16.4";
    private final String o;
    private final String p;
    private String q;
    private final Context r;
    private final ConnectivityManager s;

    /* loaded from: classes4-dex2jar.jar:com/mopub/common/ClientMetadata$MoPubNetworkType.class */
    public enum MoPubNetworkType {
        UNKNOWN(0),
        ETHERNET(1),
        WIFI(2),
        MOBILE(3),
        GG(4),
        GGG(5),
        GGGG(6),
        GGGGG(7);
        
        private final int mId;

        MoPubNetworkType(int i) {
            this.mId = i;
        }

        public final int getId() {
            return this.mId;
        }

        @Override // java.lang.Enum
        public final String toString() {
            return Integer.toString(this.mId);
        }
    }

    private ClientMetadata(Context context) {
        ApplicationInfo applicationInfo;
        Preconditions.checkNotNull(context);
        Context applicationContext = context.getApplicationContext();
        this.r = applicationContext;
        this.s = (ConnectivityManager) applicationContext.getSystemService("connectivity");
        this.o = a(applicationContext);
        PackageManager packageManager = applicationContext.getPackageManager();
        String packageName = applicationContext.getPackageName();
        this.p = packageName;
        try {
            applicationInfo = packageManager.getApplicationInfo(packageName, 0);
        } catch (PackageManager.NameNotFoundException e) {
            applicationInfo = null;
        }
        if (applicationInfo != null) {
            this.q = (String) packageManager.getApplicationLabel(applicationInfo);
        }
        TelephonyManager telephonyManager = (TelephonyManager) this.r.getSystemService(Constants.EXTRA_PHONE_NUMBER);
        if (telephonyManager != null) {
            this.f33790a = telephonyManager.getNetworkOperator();
            this.f33791b = telephonyManager.getNetworkOperator();
            if (telephonyManager.getPhoneType() == 2 && telephonyManager.getSimState() == 5) {
                this.f33790a = telephonyManager.getSimOperator();
                this.f33792c = telephonyManager.getSimOperator();
            }
            if (MoPub.canCollectPersonalInformation()) {
                this.f33793d = telephonyManager.getNetworkCountryIso();
                this.e = telephonyManager.getSimCountryIso();
            } else {
                this.f33793d = "";
                this.e = "";
            }
            try {
                this.f = telephonyManager.getNetworkOperatorName();
                if (telephonyManager.getSimState() == 5) {
                    this.g = telephonyManager.getSimOperatorName();
                }
            } catch (SecurityException e2) {
                this.f = null;
                this.g = null;
            }
        }
        this.h = new MoPubIdentifier(this.r);
    }

    private static String a(Context context) {
        try {
            return context.getPackageManager().getPackageInfo(context.getPackageName(), 0).versionName;
        } catch (Exception e) {
            MoPubLog.log(MoPubLog.SdkLogEvent.CUSTOM, "Failed to retrieve PackageInfo#versionName.");
            return null;
        }
    }

    @Deprecated
    public static void clearForTesting() {
        i = null;
    }

    public static String getCurrentLanguage(Context context) {
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

    public static ClientMetadata getInstance() {
        ClientMetadata clientMetadata = i;
        ClientMetadata clientMetadata2 = clientMetadata;
        if (clientMetadata == null) {
            synchronized (ClientMetadata.class) {
                try {
                    clientMetadata2 = i;
                } catch (Throwable th) {
                    throw th;
                }
            }
        }
        return clientMetadata2;
    }

    public static ClientMetadata getInstance(Context context) {
        ClientMetadata clientMetadata = i;
        ClientMetadata clientMetadata2 = clientMetadata;
        if (clientMetadata == null) {
            synchronized (ClientMetadata.class) {
                try {
                    ClientMetadata clientMetadata3 = i;
                    clientMetadata2 = clientMetadata3;
                    if (clientMetadata3 == null) {
                        clientMetadata2 = new ClientMetadata(context);
                        i = clientMetadata2;
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
        }
        return clientMetadata2;
    }

    @Deprecated
    public static void setInstance(ClientMetadata clientMetadata) {
        synchronized (ClientMetadata.class) {
            try {
                i = clientMetadata;
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public MoPubNetworkType getActiveNetworkType() {
        if (!DeviceUtils.isPermissionGranted(this.r, "android.permission.ACCESS_NETWORK_STATE")) {
            return MoPubNetworkType.UNKNOWN;
        }
        NetworkInfo activeNetworkInfo = this.s.getActiveNetworkInfo();
        if (activeNetworkInfo == null || !activeNetworkInfo.isConnected()) {
            return MoPubNetworkType.UNKNOWN;
        }
        if (Build.VERSION.SDK_INT >= 21) {
            for (Network network : this.s.getAllNetworks()) {
                NetworkCapabilities networkCapabilities = this.s.getNetworkCapabilities(network);
                if (networkCapabilities != null && networkCapabilities.hasTransport(3)) {
                    return MoPubNetworkType.ETHERNET;
                }
            }
        } else if (activeNetworkInfo.getType() == 9) {
            return MoPubNetworkType.ETHERNET;
        }
        NetworkInfo networkInfo = this.s.getNetworkInfo(1);
        if (networkInfo != null && networkInfo.isConnected()) {
            return MoPubNetworkType.WIFI;
        }
        NetworkInfo networkInfo2 = this.s.getNetworkInfo(0);
        if (networkInfo2 == null || !networkInfo2.isConnected()) {
            return MoPubNetworkType.UNKNOWN;
        }
        int subtype = networkInfo2.getSubtype();
        if (subtype == 20) {
            return MoPubNetworkType.GGGGG;
        }
        switch (subtype) {
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
        return this.q;
    }

    public String getAppPackageName() {
        return this.p;
    }

    public String getAppVersion() {
        return this.o;
    }

    public float getDensity() {
        return this.r.getResources().getDisplayMetrics().density;
    }

    public Point getDeviceDimensions() {
        return Preconditions.NoThrow.checkNotNull(this.r) ? DeviceUtils.getDeviceDimensions(this.r) : new Point(0, 0);
    }

    public Locale getDeviceLocale() {
        return this.r.getResources().getConfiguration().locale;
    }

    public String getDeviceManufacturer() {
        return this.j;
    }

    public String getDeviceModel() {
        return this.k;
    }

    public String getDeviceOsVersion() {
        return this.m;
    }

    public String getDeviceProduct() {
        return this.l;
    }

    public int getDeviceScreenHeightDip() {
        return Dips.screenHeightAsIntDips(this.r);
    }

    public int getDeviceScreenWidthDip() {
        return Dips.screenWidthAsIntDips(this.r);
    }

    public String getIsoCountryCode() {
        return MoPub.canCollectPersonalInformation() ? this.f33793d : "";
    }

    public MoPubIdentifier getMoPubIdentifier() {
        return this.h;
    }

    public String getNetworkOperator() {
        return this.f33791b;
    }

    public String getNetworkOperatorForUrl() {
        return this.f33790a;
    }

    public String getNetworkOperatorName() {
        return this.f;
    }

    public String getOrientationString() {
        int i2 = this.r.getResources().getConfiguration().orientation;
        return i2 == 1 ? "p" : i2 == 2 ? "l" : i2 == 3 ? "s" : "u";
    }

    public String getSdkVersion() {
        return this.n;
    }

    public String getSimIsoCountryCode() {
        return MoPub.canCollectPersonalInformation() ? this.e : "";
    }

    public String getSimOperator() {
        return this.f33792c;
    }

    public String getSimOperatorName() {
        return this.g;
    }

    public void repopulateCountryData() {
        TelephonyManager telephonyManager = (TelephonyManager) this.r.getSystemService(Constants.EXTRA_PHONE_NUMBER);
        if (MoPub.canCollectPersonalInformation() && telephonyManager != null) {
            this.f33793d = telephonyManager.getNetworkCountryIso();
            this.e = telephonyManager.getSimCountryIso();
        }
    }
}

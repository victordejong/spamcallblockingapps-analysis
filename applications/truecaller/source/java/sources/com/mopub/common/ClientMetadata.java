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
import com.mopub.common.Preconditions;
import com.mopub.common.logging.MoPubLog;
import com.mopub.common.privacy.MoPubIdentifier;
import com.mopub.common.util.DeviceUtils;
import com.mopub.common.util.Dips;
import com.razorpay.AnalyticsConstants;
import java.util.Locale;
/* loaded from: classes3-dex2jar.jar:com/mopub/common/ClientMetadata.class */
public class ClientMetadata {

    /* renamed from: s */
    public static volatile ClientMetadata f8422s;

    /* renamed from: a */
    public String f8423a;

    /* renamed from: b */
    public String f8424b;

    /* renamed from: c */
    public String f8425c;

    /* renamed from: d */
    public String f8426d;

    /* renamed from: e */
    public String f8427e;

    /* renamed from: f */
    public String f8428f;

    /* renamed from: g */
    public String f8429g;

    /* renamed from: h */
    public final MoPubIdentifier f8430h;

    /* renamed from: i */
    public final String f8431i = Build.MANUFACTURER;

    /* renamed from: j */
    public final String f8432j = Build.MODEL;

    /* renamed from: k */
    public final String f8433k = Build.PRODUCT;

    /* renamed from: l */
    public final String f8434l = Build.VERSION.RELEASE;

    /* renamed from: m */
    public final String f8435m = "5.16.4";

    /* renamed from: n */
    public final String f8436n;

    /* renamed from: o */
    public final String f8437o;

    /* renamed from: p */
    public String f8438p;

    /* renamed from: q */
    public final Context f8439q;

    /* renamed from: r */
    public final ConnectivityManager f8440r;

    /* loaded from: classes3-dex2jar.jar:com/mopub/common/ClientMetadata$MoPubNetworkType.class */
    public enum MoPubNetworkType {
        UNKNOWN(0),
        ETHERNET(1),
        WIFI(2),
        MOBILE(3),
        GG(4),
        GGG(5),
        GGGG(6),
        GGGGG(7);
        

        /* renamed from: a */
        public final int f8443a;

        MoPubNetworkType(int i) {
            this.f8443a = i;
        }

        public int getId() {
            return this.f8443a;
        }

        @Override // java.lang.Enum
        public String toString() {
            return Integer.toString(this.f8443a);
        }
    }

    public ClientMetadata(Context context) {
        String str;
        ApplicationInfo applicationInfo;
        Preconditions.checkNotNull(context);
        Context applicationContext = context.getApplicationContext();
        this.f8439q = applicationContext;
        this.f8440r = (ConnectivityManager) applicationContext.getSystemService("connectivity");
        try {
            str = applicationContext.getPackageManager().getPackageInfo(applicationContext.getPackageName(), 0).versionName;
        } catch (Exception e) {
            MoPubLog.log(MoPubLog.SdkLogEvent.CUSTOM, "Failed to retrieve PackageInfo#versionName.");
            str = null;
        }
        this.f8436n = str;
        PackageManager packageManager = this.f8439q.getPackageManager();
        String packageName = this.f8439q.getPackageName();
        this.f8437o = packageName;
        try {
            applicationInfo = packageManager.getApplicationInfo(packageName, 0);
        } catch (PackageManager.NameNotFoundException e2) {
            applicationInfo = null;
        }
        if (applicationInfo != null) {
            this.f8438p = (String) packageManager.getApplicationLabel(applicationInfo);
        }
        TelephonyManager telephonyManager = (TelephonyManager) this.f8439q.getSystemService(AnalyticsConstants.PHONE);
        if (telephonyManager != null) {
            this.f8423a = telephonyManager.getNetworkOperator();
            this.f8424b = telephonyManager.getNetworkOperator();
            if (telephonyManager.getPhoneType() == 2 && telephonyManager.getSimState() == 5) {
                this.f8423a = telephonyManager.getSimOperator();
                this.f8425c = telephonyManager.getSimOperator();
            }
            if (MoPub.canCollectPersonalInformation()) {
                this.f8426d = telephonyManager.getNetworkCountryIso();
                this.f8427e = telephonyManager.getSimCountryIso();
            } else {
                this.f8426d = "";
                this.f8427e = "";
            }
            try {
                this.f8428f = telephonyManager.getNetworkOperatorName();
                if (telephonyManager.getSimState() == 5) {
                    this.f8429g = telephonyManager.getSimOperatorName();
                }
            } catch (SecurityException e3) {
                this.f8428f = null;
                this.f8429g = null;
            }
        }
        this.f8430h = new MoPubIdentifier(this.f8439q);
    }

    @Deprecated
    @VisibleForTesting
    public static void clearForTesting() {
        f8422s = null;
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
        ClientMetadata clientMetadata = f8422s;
        ClientMetadata clientMetadata2 = clientMetadata;
        if (clientMetadata == null) {
            synchronized (ClientMetadata.class) {
                try {
                    clientMetadata2 = f8422s;
                } catch (Throwable th) {
                    throw th;
                }
            }
        }
        return clientMetadata2;
    }

    public static ClientMetadata getInstance(Context context) {
        ClientMetadata clientMetadata = f8422s;
        ClientMetadata clientMetadata2 = clientMetadata;
        if (clientMetadata == null) {
            synchronized (ClientMetadata.class) {
                try {
                    ClientMetadata clientMetadata3 = f8422s;
                    clientMetadata2 = clientMetadata3;
                    if (clientMetadata3 == null) {
                        clientMetadata2 = new ClientMetadata(context);
                        f8422s = clientMetadata2;
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
                f8422s = clientMetadata;
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public MoPubNetworkType getActiveNetworkType() {
        if (!DeviceUtils.isPermissionGranted(this.f8439q, "android.permission.ACCESS_NETWORK_STATE")) {
            return MoPubNetworkType.UNKNOWN;
        }
        NetworkInfo activeNetworkInfo = this.f8440r.getActiveNetworkInfo();
        if (activeNetworkInfo == null || !activeNetworkInfo.isConnected()) {
            return MoPubNetworkType.UNKNOWN;
        }
        for (Network network : this.f8440r.getAllNetworks()) {
            NetworkCapabilities networkCapabilities = this.f8440r.getNetworkCapabilities(network);
            if (networkCapabilities != null && networkCapabilities.hasTransport(3)) {
                return MoPubNetworkType.ETHERNET;
            }
        }
        NetworkInfo networkInfo = this.f8440r.getNetworkInfo(1);
        if (networkInfo != null && networkInfo.isConnected()) {
            return MoPubNetworkType.WIFI;
        }
        NetworkInfo networkInfo2 = this.f8440r.getNetworkInfo(0);
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
        return this.f8438p;
    }

    public String getAppPackageName() {
        return this.f8437o;
    }

    public String getAppVersion() {
        return this.f8436n;
    }

    public float getDensity() {
        return this.f8439q.getResources().getDisplayMetrics().density;
    }

    public Point getDeviceDimensions() {
        return Preconditions.NoThrow.checkNotNull(this.f8439q) ? DeviceUtils.getDeviceDimensions(this.f8439q) : new Point(0, 0);
    }

    public Locale getDeviceLocale() {
        return this.f8439q.getResources().getConfiguration().locale;
    }

    public String getDeviceManufacturer() {
        return this.f8431i;
    }

    public String getDeviceModel() {
        return this.f8432j;
    }

    public String getDeviceOsVersion() {
        return this.f8434l;
    }

    public String getDeviceProduct() {
        return this.f8433k;
    }

    public int getDeviceScreenHeightDip() {
        return Dips.screenHeightAsIntDips(this.f8439q);
    }

    public int getDeviceScreenWidthDip() {
        return Dips.screenWidthAsIntDips(this.f8439q);
    }

    public String getIsoCountryCode() {
        return MoPub.canCollectPersonalInformation() ? this.f8426d : "";
    }

    public MoPubIdentifier getMoPubIdentifier() {
        return this.f8430h;
    }

    public String getNetworkOperator() {
        return this.f8424b;
    }

    public String getNetworkOperatorForUrl() {
        return this.f8423a;
    }

    public String getNetworkOperatorName() {
        return this.f8428f;
    }

    public String getOrientationString() {
        int i = this.f8439q.getResources().getConfiguration().orientation;
        return i == 1 ? "p" : i == 2 ? "l" : i == 3 ? "s" : "u";
    }

    public String getSdkVersion() {
        return this.f8435m;
    }

    public String getSimIsoCountryCode() {
        return MoPub.canCollectPersonalInformation() ? this.f8427e : "";
    }

    public String getSimOperator() {
        return this.f8425c;
    }

    public String getSimOperatorName() {
        return this.f8429g;
    }

    public void repopulateCountryData() {
        TelephonyManager telephonyManager = (TelephonyManager) this.f8439q.getSystemService(AnalyticsConstants.PHONE);
        if (!MoPub.canCollectPersonalInformation() || telephonyManager == null) {
            return;
        }
        this.f8426d = telephonyManager.getNetworkCountryIso();
        this.f8427e = telephonyManager.getSimCountryIso();
    }
}

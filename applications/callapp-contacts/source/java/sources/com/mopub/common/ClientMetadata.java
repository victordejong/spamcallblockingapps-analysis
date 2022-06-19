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

    /* renamed from: i */
    private static volatile ClientMetadata f58665i;

    /* renamed from: a */
    private String f58666a;

    /* renamed from: b */
    private String f58667b;

    /* renamed from: c */
    private String f58668c;

    /* renamed from: d */
    private String f58669d;

    /* renamed from: e */
    private String f58670e;

    /* renamed from: f */
    private String f58671f;

    /* renamed from: g */
    private String f58672g;

    /* renamed from: h */
    private final MoPubIdentifier f58673h;

    /* renamed from: j */
    private final String f58674j = Build.MANUFACTURER;

    /* renamed from: k */
    private final String f58675k = Build.MODEL;

    /* renamed from: l */
    private final String f58676l = Build.PRODUCT;

    /* renamed from: m */
    private final String f58677m = Build.VERSION.RELEASE;

    /* renamed from: n */
    private final String f58678n = "5.16.4";

    /* renamed from: o */
    private final String f58679o;

    /* renamed from: p */
    private final String f58680p;

    /* renamed from: q */
    private String f58681q;

    /* renamed from: r */
    private final Context f58682r;

    /* renamed from: s */
    private final ConnectivityManager f58683s;

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
        this.f58682r = applicationContext;
        this.f58683s = (ConnectivityManager) applicationContext.getSystemService("connectivity");
        this.f58679o = m6779a(applicationContext);
        PackageManager packageManager = applicationContext.getPackageManager();
        String packageName = applicationContext.getPackageName();
        this.f58680p = packageName;
        try {
            applicationInfo = packageManager.getApplicationInfo(packageName, 0);
        } catch (PackageManager.NameNotFoundException e) {
            applicationInfo = null;
        }
        if (applicationInfo != null) {
            this.f58681q = (String) packageManager.getApplicationLabel(applicationInfo);
        }
        TelephonyManager telephonyManager = (TelephonyManager) this.f58682r.getSystemService(Constants.EXTRA_PHONE_NUMBER);
        if (telephonyManager != null) {
            this.f58666a = telephonyManager.getNetworkOperator();
            this.f58667b = telephonyManager.getNetworkOperator();
            if (telephonyManager.getPhoneType() == 2 && telephonyManager.getSimState() == 5) {
                this.f58666a = telephonyManager.getSimOperator();
                this.f58668c = telephonyManager.getSimOperator();
            }
            if (MoPub.canCollectPersonalInformation()) {
                this.f58669d = telephonyManager.getNetworkCountryIso();
                this.f58670e = telephonyManager.getSimCountryIso();
            } else {
                this.f58669d = "";
                this.f58670e = "";
            }
            try {
                this.f58671f = telephonyManager.getNetworkOperatorName();
                if (telephonyManager.getSimState() == 5) {
                    this.f58672g = telephonyManager.getSimOperatorName();
                }
            } catch (SecurityException e2) {
                this.f58671f = null;
                this.f58672g = null;
            }
        }
        this.f58673h = new MoPubIdentifier(this.f58682r);
    }

    /* renamed from: a */
    private static String m6779a(Context context) {
        try {
            return context.getPackageManager().getPackageInfo(context.getPackageName(), 0).versionName;
        } catch (Exception e) {
            MoPubLog.log(MoPubLog.SdkLogEvent.CUSTOM, "Failed to retrieve PackageInfo#versionName.");
            return null;
        }
    }

    @Deprecated
    public static void clearForTesting() {
        f58665i = null;
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
        ClientMetadata clientMetadata = f58665i;
        ClientMetadata clientMetadata2 = clientMetadata;
        if (clientMetadata == null) {
            synchronized (ClientMetadata.class) {
                try {
                    clientMetadata2 = f58665i;
                } catch (Throwable th) {
                    throw th;
                }
            }
        }
        return clientMetadata2;
    }

    public static ClientMetadata getInstance(Context context) {
        ClientMetadata clientMetadata = f58665i;
        ClientMetadata clientMetadata2 = clientMetadata;
        if (clientMetadata == null) {
            synchronized (ClientMetadata.class) {
                try {
                    ClientMetadata clientMetadata3 = f58665i;
                    clientMetadata2 = clientMetadata3;
                    if (clientMetadata3 == null) {
                        clientMetadata2 = new ClientMetadata(context);
                        f58665i = clientMetadata2;
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
                f58665i = clientMetadata;
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public MoPubNetworkType getActiveNetworkType() {
        if (!DeviceUtils.isPermissionGranted(this.f58682r, "android.permission.ACCESS_NETWORK_STATE")) {
            return MoPubNetworkType.UNKNOWN;
        }
        NetworkInfo activeNetworkInfo = this.f58683s.getActiveNetworkInfo();
        if (activeNetworkInfo == null || !activeNetworkInfo.isConnected()) {
            return MoPubNetworkType.UNKNOWN;
        }
        if (Build.VERSION.SDK_INT >= 21) {
            for (Network network : this.f58683s.getAllNetworks()) {
                NetworkCapabilities networkCapabilities = this.f58683s.getNetworkCapabilities(network);
                if (networkCapabilities != null && networkCapabilities.hasTransport(3)) {
                    return MoPubNetworkType.ETHERNET;
                }
            }
        } else if (activeNetworkInfo.getType() == 9) {
            return MoPubNetworkType.ETHERNET;
        }
        NetworkInfo networkInfo = this.f58683s.getNetworkInfo(1);
        if (networkInfo != null && networkInfo.isConnected()) {
            return MoPubNetworkType.WIFI;
        }
        NetworkInfo networkInfo2 = this.f58683s.getNetworkInfo(0);
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
        return this.f58681q;
    }

    public String getAppPackageName() {
        return this.f58680p;
    }

    public String getAppVersion() {
        return this.f58679o;
    }

    public float getDensity() {
        return this.f58682r.getResources().getDisplayMetrics().density;
    }

    public Point getDeviceDimensions() {
        return Preconditions.NoThrow.checkNotNull(this.f58682r) ? DeviceUtils.getDeviceDimensions(this.f58682r) : new Point(0, 0);
    }

    public Locale getDeviceLocale() {
        return this.f58682r.getResources().getConfiguration().locale;
    }

    public String getDeviceManufacturer() {
        return this.f58674j;
    }

    public String getDeviceModel() {
        return this.f58675k;
    }

    public String getDeviceOsVersion() {
        return this.f58677m;
    }

    public String getDeviceProduct() {
        return this.f58676l;
    }

    public int getDeviceScreenHeightDip() {
        return Dips.screenHeightAsIntDips(this.f58682r);
    }

    public int getDeviceScreenWidthDip() {
        return Dips.screenWidthAsIntDips(this.f58682r);
    }

    public String getIsoCountryCode() {
        return MoPub.canCollectPersonalInformation() ? this.f58669d : "";
    }

    public MoPubIdentifier getMoPubIdentifier() {
        return this.f58673h;
    }

    public String getNetworkOperator() {
        return this.f58667b;
    }

    public String getNetworkOperatorForUrl() {
        return this.f58666a;
    }

    public String getNetworkOperatorName() {
        return this.f58671f;
    }

    public String getOrientationString() {
        int i = this.f58682r.getResources().getConfiguration().orientation;
        return i == 1 ? "p" : i == 2 ? "l" : i == 3 ? "s" : "u";
    }

    public String getSdkVersion() {
        return this.f58678n;
    }

    public String getSimIsoCountryCode() {
        return MoPub.canCollectPersonalInformation() ? this.f58670e : "";
    }

    public String getSimOperator() {
        return this.f58668c;
    }

    public String getSimOperatorName() {
        return this.f58672g;
    }

    public void repopulateCountryData() {
        TelephonyManager telephonyManager = (TelephonyManager) this.f58682r.getSystemService(Constants.EXTRA_PHONE_NUMBER);
        if (!MoPub.canCollectPersonalInformation() || telephonyManager == null) {
            return;
        }
        this.f58669d = telephonyManager.getNetworkCountryIso();
        this.f58670e = telephonyManager.getSimCountryIso();
    }
}

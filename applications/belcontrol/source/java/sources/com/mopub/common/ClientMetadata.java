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
import com.google.android.exoplayer2.text.ttml.TtmlNode;
import com.mopub.common.Preconditions;
import com.mopub.common.logging.MoPubLog;
import com.mopub.common.privacy.MoPubIdentifier;
import com.mopub.common.util.DeviceUtils;
import com.mopub.common.util.Dips;
import java.util.Locale;
/* loaded from: classes3-dex2jar.jar:com/mopub/common/ClientMetadata.class */
public class ClientMetadata {

    /* renamed from: s */
    public static volatile ClientMetadata f4159s;

    /* renamed from: a */
    public String f4160a;

    /* renamed from: b */
    public String f4161b;

    /* renamed from: c */
    public String f4162c;

    /* renamed from: d */
    public String f4163d;

    /* renamed from: e */
    public String f4164e;

    /* renamed from: f */
    public String f4165f;

    /* renamed from: g */
    public String f4166g;

    /* renamed from: h */
    public final MoPubIdentifier f4167h;

    /* renamed from: i */
    public final String f4168i = Build.MANUFACTURER;

    /* renamed from: j */
    public final String f4169j = Build.MODEL;

    /* renamed from: k */
    public final String f4170k = Build.PRODUCT;

    /* renamed from: l */
    public final String f4171l = Build.VERSION.RELEASE;

    /* renamed from: m */
    public final String f4172m = "5.15.0";

    /* renamed from: n */
    public final String f4173n;

    /* renamed from: o */
    public final String f4174o;

    /* renamed from: p */
    public String f4175p;

    /* renamed from: q */
    public final Context f4176q;

    /* renamed from: r */
    public final ConnectivityManager f4177r;

    /* loaded from: classes3-dex2jar.jar:com/mopub/common/ClientMetadata$MoPubNetworkType.class */
    public enum MoPubNetworkType {
        UNKNOWN(0),
        ETHERNET(1),
        WIFI(2),
        MOBILE(3),
        GG(4),
        GGG(5),
        GGGG(6);
        

        /* renamed from: a */
        public final int f4180a;

        MoPubNetworkType(int i) {
            this.f4180a = i;
        }

        public int getId() {
            return this.f4180a;
        }

        @Override // java.lang.Enum
        public String toString() {
            return Integer.toString(this.f4180a);
        }
    }

    public ClientMetadata(Context context) {
        ApplicationInfo applicationInfo;
        String str;
        Preconditions.checkNotNull(context);
        Context applicationContext = context.getApplicationContext();
        this.f4176q = applicationContext;
        this.f4177r = (ConnectivityManager) applicationContext.getSystemService("connectivity");
        this.f4173n = m4014a(applicationContext);
        PackageManager packageManager = applicationContext.getPackageManager();
        String packageName = applicationContext.getPackageName();
        this.f4174o = packageName;
        try {
            applicationInfo = packageManager.getApplicationInfo(packageName, 0);
        } catch (PackageManager.NameNotFoundException e) {
            applicationInfo = null;
        }
        if (applicationInfo != null) {
            this.f4175p = (String) packageManager.getApplicationLabel(applicationInfo);
        }
        TelephonyManager telephonyManager = (TelephonyManager) this.f4176q.getSystemService("phone");
        if (telephonyManager != null) {
            this.f4160a = telephonyManager.getNetworkOperator();
            this.f4161b = telephonyManager.getNetworkOperator();
            if (telephonyManager.getPhoneType() == 2 && telephonyManager.getSimState() == 5) {
                this.f4160a = telephonyManager.getSimOperator();
                this.f4162c = telephonyManager.getSimOperator();
            }
            if (MoPub.canCollectPersonalInformation()) {
                this.f4163d = telephonyManager.getNetworkCountryIso();
                str = telephonyManager.getSimCountryIso();
            } else {
                str = "";
                this.f4163d = "";
            }
            this.f4164e = str;
            try {
                this.f4165f = telephonyManager.getNetworkOperatorName();
                if (telephonyManager.getSimState() == 5) {
                    this.f4166g = telephonyManager.getSimOperatorName();
                }
            } catch (SecurityException e2) {
                this.f4165f = null;
                this.f4166g = null;
            }
        }
        this.f4167h = new MoPubIdentifier(this.f4176q);
    }

    /* renamed from: a */
    public static String m4014a(Context context) {
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
        f4159s = null;
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
        ClientMetadata clientMetadata = f4159s;
        ClientMetadata clientMetadata2 = clientMetadata;
        if (clientMetadata == null) {
            synchronized (ClientMetadata.class) {
                try {
                    clientMetadata2 = f4159s;
                } catch (Throwable th) {
                    throw th;
                }
            }
        }
        return clientMetadata2;
    }

    public static ClientMetadata getInstance(Context context) {
        ClientMetadata clientMetadata = f4159s;
        ClientMetadata clientMetadata2 = clientMetadata;
        if (clientMetadata == null) {
            synchronized (ClientMetadata.class) {
                try {
                    ClientMetadata clientMetadata3 = f4159s;
                    clientMetadata2 = clientMetadata3;
                    if (clientMetadata3 == null) {
                        clientMetadata2 = new ClientMetadata(context);
                        f4159s = clientMetadata2;
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
                f4159s = clientMetadata;
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    @SuppressLint({"MissingPermission"})
    public MoPubNetworkType getActiveNetworkType() {
        if (!DeviceUtils.isPermissionGranted(this.f4176q, "android.permission.ACCESS_NETWORK_STATE")) {
            return MoPubNetworkType.UNKNOWN;
        }
        NetworkInfo activeNetworkInfo = this.f4177r.getActiveNetworkInfo();
        if (activeNetworkInfo == null || !activeNetworkInfo.isConnected()) {
            return MoPubNetworkType.UNKNOWN;
        }
        if (Build.VERSION.SDK_INT >= 21) {
            for (Network network : this.f4177r.getAllNetworks()) {
                NetworkCapabilities networkCapabilities = this.f4177r.getNetworkCapabilities(network);
                if (networkCapabilities != null && networkCapabilities.hasTransport(3)) {
                    return MoPubNetworkType.ETHERNET;
                }
            }
        } else if (activeNetworkInfo.getType() == 9) {
            return MoPubNetworkType.ETHERNET;
        }
        NetworkInfo networkInfo = this.f4177r.getNetworkInfo(1);
        if (networkInfo != null && networkInfo.isConnected()) {
            return MoPubNetworkType.WIFI;
        }
        NetworkInfo networkInfo2 = this.f4177r.getNetworkInfo(0);
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
        return this.f4175p;
    }

    public String getAppPackageName() {
        return this.f4174o;
    }

    public String getAppVersion() {
        return this.f4173n;
    }

    public float getDensity() {
        return this.f4176q.getResources().getDisplayMetrics().density;
    }

    public Point getDeviceDimensions() {
        return Preconditions.NoThrow.checkNotNull(this.f4176q) ? DeviceUtils.getDeviceDimensions(this.f4176q) : new Point(0, 0);
    }

    public Locale getDeviceLocale() {
        return this.f4176q.getResources().getConfiguration().locale;
    }

    public String getDeviceManufacturer() {
        return this.f4168i;
    }

    public String getDeviceModel() {
        return this.f4169j;
    }

    public String getDeviceOsVersion() {
        return this.f4171l;
    }

    public String getDeviceProduct() {
        return this.f4170k;
    }

    public int getDeviceScreenHeightDip() {
        return Dips.screenHeightAsIntDips(this.f4176q);
    }

    public int getDeviceScreenWidthDip() {
        return Dips.screenWidthAsIntDips(this.f4176q);
    }

    public String getIsoCountryCode() {
        return MoPub.canCollectPersonalInformation() ? this.f4163d : "";
    }

    public MoPubIdentifier getMoPubIdentifier() {
        return this.f4167h;
    }

    public String getNetworkOperator() {
        return this.f4161b;
    }

    public String getNetworkOperatorForUrl() {
        return this.f4160a;
    }

    public String getNetworkOperatorName() {
        return this.f4165f;
    }

    public String getOrientationString() {
        int i = this.f4176q.getResources().getConfiguration().orientation;
        return i == 1 ? TtmlNode.TAG_P : i == 2 ? "l" : i == 3 ? "s" : "u";
    }

    public String getSdkVersion() {
        return this.f4172m;
    }

    public String getSimIsoCountryCode() {
        return MoPub.canCollectPersonalInformation() ? this.f4164e : "";
    }

    public String getSimOperator() {
        return this.f4162c;
    }

    public String getSimOperatorName() {
        return this.f4166g;
    }

    public void repopulateCountryData() {
        TelephonyManager telephonyManager = (TelephonyManager) this.f4176q.getSystemService("phone");
        if (!MoPub.canCollectPersonalInformation() || telephonyManager == null) {
            return;
        }
        this.f4163d = telephonyManager.getNetworkCountryIso();
        this.f4164e = telephonyManager.getSimCountryIso();
    }
}

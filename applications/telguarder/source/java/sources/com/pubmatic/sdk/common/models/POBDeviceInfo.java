package com.pubmatic.sdk.common.models;

import android.content.Context;
import android.content.SharedPreferences;
import android.os.Build;
import android.provider.Settings;
import android.telephony.TelephonyManager;
import android.text.TextUtils;
import android.util.DisplayMetrics;
import android.view.WindowManager;
import android.webkit.WebSettings;
import com.pubmatic.sdk.common.POBCommonConstants;
import com.pubmatic.sdk.common.log.PMLog;
import com.pubmatic.sdk.common.utility.POBAdvertisingIdClient;
import com.pubmatic.sdk.common.utility.POBUtils;
import java.text.SimpleDateFormat;
import java.util.Calendar;
import java.util.Locale;
import java.util.TimeZone;
/* loaded from: classes2-dex2jar.jar:com/pubmatic/sdk/common/models/POBDeviceInfo.class */
public class POBDeviceInfo {

    /* renamed from: a */
    private int f449a;

    /* renamed from: b */
    private String f450b = null;

    /* renamed from: c */
    private String f451c = null;

    /* renamed from: d */
    private Boolean f452d = null;

    /* renamed from: e */
    private String f453e = null;

    /* renamed from: f */
    private String f454f = null;

    /* renamed from: g */
    private String f455g = null;

    /* renamed from: h */
    private String f456h = null;

    /* renamed from: i */
    private String f457i = null;

    /* renamed from: j */
    private String f458j = null;

    /* renamed from: k */
    private String f459k = null;

    /* renamed from: l */
    private String f460l = null;

    /* renamed from: m */
    private String f461m = null;

    /* renamed from: n */
    private String f462n = null;

    /* renamed from: o */
    private Context f463o;

    /* renamed from: p */
    private float f464p;

    /* renamed from: q */
    private String f465q;
    public int screenHeight;
    public int screenWidth;

    /* loaded from: classes2-dex2jar.jar:com/pubmatic/sdk/common/models/POBDeviceInfo$DEVICE_ID_TYPE.class */
    public enum DEVICE_ID_TYPE {
        ANDROID_ID("3"),
        ADVERTISING_ID("9");
        

        /* renamed from: a */
        private final String f467a;

        DEVICE_ID_TYPE(String str) {
            this.f467a = str;
        }

        public String getValue() {
            return this.f467a;
        }
    }

    /* renamed from: com.pubmatic.sdk.common.models.POBDeviceInfo$a */
    /* loaded from: classes2-dex2jar.jar:com/pubmatic/sdk/common/models/POBDeviceInfo$a.class */
    public class C1863a extends Thread {
        C1863a() {
            POBDeviceInfo.this = r4;
        }

        @Override // java.lang.Thread, java.lang.Runnable
        public void run() {
            try {
                POBAdvertisingIdClient.AdInfo advertisingIdInfo = POBAdvertisingIdClient.getAdvertisingIdInfo(POBDeviceInfo.this.f463o);
                if (advertisingIdInfo == null || POBUtils.isNullOrEmpty(advertisingIdInfo.getId())) {
                    return;
                }
                POBDeviceInfo.this.f451c = advertisingIdInfo.getId();
                POBDeviceInfo.this.f452d = Boolean.valueOf(advertisingIdInfo.isLimitAdTrackingEnabled());
                if (!POBDeviceInfo.this.f451c.equals(POBDeviceInfo.this.m1047a())) {
                    POBDeviceInfo pOBDeviceInfo = POBDeviceInfo.this;
                    pOBDeviceInfo.m1041a(pOBDeviceInfo.f451c);
                }
                if (POBDeviceInfo.this.f452d == null || (!POBDeviceInfo.this.f452d.booleanValue()) != POBDeviceInfo.this.m1039b()) {
                    return;
                }
                POBDeviceInfo pOBDeviceInfo2 = POBDeviceInfo.this;
                pOBDeviceInfo2.m1040a(pOBDeviceInfo2.f452d.booleanValue());
            } catch (Exception e) {
                PMLog.error("PMDeviceInfo", "Failed to retrieve advertising Id from device : %s", e.getLocalizedMessage());
            }
        }
    }

    public POBDeviceInfo(Context context) {
        this.f463o = context;
        m1038b(context);
    }

    /* renamed from: a */
    public String m1047a() {
        Context context = this.f463o;
        if (context != null) {
            return context.getSharedPreferences("aid_shared_preference", 0).getString("aid_key", null);
        }
        return null;
    }

    /* renamed from: a */
    private String m1046a(Context context) {
        String string = Settings.Secure.getString(context.getContentResolver(), "android_id");
        String str = string;
        if (string == null) {
            str = "";
        }
        return str;
    }

    /* renamed from: a */
    public void m1041a(String str) {
        SharedPreferences.Editor edit = this.f463o.getSharedPreferences("aid_shared_preference", 0).edit();
        if (edit != null) {
            edit.putString("aid_key", str);
            edit.apply();
        }
    }

    /* renamed from: a */
    public void m1040a(boolean z) {
        SharedPreferences.Editor edit = this.f463o.getSharedPreferences("aid_shared_preference", 0).edit();
        if (edit != null) {
            edit.putBoolean("limited_tracking_ad_key", z);
            edit.apply();
        }
    }

    /* renamed from: b */
    private void m1038b(Context context) {
        String m1047a = m1047a();
        this.f451c = m1047a;
        if (m1047a != null) {
            this.f452d = Boolean.valueOf(m1039b());
        }
        updateAdvertisingIdInfo();
        this.f450b = m1046a(context);
        TelephonyManager telephonyManager = (TelephonyManager) context.getSystemService("phone");
        if (telephonyManager != null) {
            if (telephonyManager.getPhoneType() != 2) {
                String networkCountryIso = telephonyManager.getNetworkCountryIso();
                String str = networkCountryIso;
                if (networkCountryIso != null) {
                    str = networkCountryIso;
                    if (networkCountryIso.length() <= 0) {
                        str = telephonyManager.getSimCountryIso();
                    }
                }
                if (str != null && str.length() > 0) {
                    this.f453e = new Locale(Locale.getDefault().getLanguage(), str).getISO3Country();
                }
                String networkOperator = telephonyManager.getNetworkOperator();
                if (!TextUtils.isEmpty(networkOperator)) {
                    int parseInt = Integer.parseInt(networkOperator.substring(0, 3));
                    int parseInt2 = Integer.parseInt(networkOperator.substring(3));
                    this.f465q = "" + parseInt + "-" + parseInt2;
                }
            }
            this.f454f = telephonyManager.getNetworkOperatorName();
        }
        this.f455g = Locale.getDefault().getLanguage();
        this.f456h = Build.MANUFACTURER;
        this.f457i = Build.MODEL;
        this.f458j = POBCommonConstants.OS_NAME_VALUE;
        this.f459k = Build.VERSION.RELEASE;
        DisplayMetrics displayMetrics = new DisplayMetrics();
        WindowManager windowManager = (WindowManager) context.getSystemService("window");
        if (windowManager != null) {
            windowManager.getDefaultDisplay().getMetrics(displayMetrics);
            this.screenWidth = displayMetrics.widthPixels;
            this.screenHeight = displayMetrics.heightPixels;
            this.f460l = displayMetrics.widthPixels + "x" + displayMetrics.heightPixels;
        }
        this.f462n = new SimpleDateFormat("ZZZZZ", Locale.getDefault()).format(Calendar.getInstance(TimeZone.getTimeZone("GMT"), Locale.getDefault()).getTime());
        this.f464p = this.f463o.getResources().getDisplayMetrics().density;
        this.f449a = POBUtils.getTimeOffsetInMinutes();
    }

    /* renamed from: b */
    public boolean m1039b() {
        Context context = this.f463o;
        if (context != null) {
            return context.getSharedPreferences("aid_shared_preference", 0).getBoolean("limited_tracking_ad_key", false);
        }
        return false;
    }

    public String getAcceptLanguage() {
        return this.f455g;
    }

    public String getAdvertisingID() {
        return this.f451c;
    }

    public String getAndroidId() {
        return this.f450b;
    }

    public DEVICE_ID_TYPE getAndroidIdType(boolean z) {
        return z ? DEVICE_ID_TYPE.ADVERTISING_ID : DEVICE_ID_TYPE.ANDROID_ID;
    }

    public String getCarrierName() {
        return this.f454f;
    }

    public String getCountryCode() {
        return this.f453e;
    }

    public String getCurrentTime() {
        return new SimpleDateFormat("yyyy-MM-dd HH:mm:ss", Locale.US).format(Calendar.getInstance().getTime());
    }

    public String getCurrentTimeZone() {
        return this.f462n;
    }

    public Boolean getLmtEnabled() {
        return this.f452d;
    }

    public String getMake() {
        return this.f456h;
    }

    public String getMccmnc() {
        return this.f465q;
    }

    public String getModel() {
        return this.f457i;
    }

    public int getOrientation() {
        return this.f463o.getResources().getConfiguration().orientation;
    }

    public String getOsName() {
        return this.f458j;
    }

    public String getOsVersion() {
        return this.f459k;
    }

    public float getPxratio() {
        return this.f464p;
    }

    public int getScreenHeight() {
        return this.screenHeight;
    }

    public String getScreenResolution() {
        return this.f460l;
    }

    public int getScreenWidth() {
        return this.screenWidth;
    }

    public int getTimeZoneOffsetInMinutes() {
        return this.f449a;
    }

    public String getUserAgent() {
        String str = this.f461m;
        if (str != null) {
            return str;
        }
        try {
            String defaultUserAgent = WebSettings.getDefaultUserAgent(this.f463o);
            this.f461m = defaultUserAgent;
            return defaultUserAgent;
        } catch (Exception e) {
            PMLog.error("PMDeviceInfo", "Failed to retrieve user agent from web view, %s", e.getLocalizedMessage());
            try {
                String property = System.getProperty("http.agent");
                return property != null ? property : "";
            } catch (Exception e2) {
                PMLog.error("PMDeviceInfo", "Failed to retrieve user agent (using http.agent) from WebView, %s", e2.getLocalizedMessage());
                return "";
            }
        }
    }

    public void updateAdvertisingIdInfo() {
        new C1863a().start();
    }
}

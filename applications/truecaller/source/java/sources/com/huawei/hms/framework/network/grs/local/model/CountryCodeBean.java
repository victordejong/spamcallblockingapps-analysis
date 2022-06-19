package com.huawei.hms.framework.network.grs.local.model;

import android.content.Context;
import android.os.Build;
import android.telephony.TelephonyManager;
import android.text.TextUtils;
import com.huawei.hms.framework.common.EmuiUtil;
import com.huawei.hms.framework.common.Logger;
import com.huawei.hms.framework.common.SystemPropUtils;
import com.huawei.hms.framework.network.grs.GrsBaseInfo;
import com.razorpay.AnalyticsConstants;
import com.tenor.android.core.constant.StringConstant;
import java.util.Locale;
import java.util.Objects;
import p193e.p1432d.p1439c.p1440a.C22128a;
/* loaded from: classes3-dex2jar.jar:com/huawei/hms/framework/network/grs/local/model/CountryCodeBean.class */
public class CountryCodeBean {
    private static final String ANDRIOD_SYSTEMPROP = "android.os.SystemProperties";
    private static final int ANDROID_9_API_LEVEL = 28;
    private static final int COUNTRYCODE_SIZE = 2;
    private static final String KEY_VERSION_EMUI = "ro.build.version.emui";
    private static final String LOCALE_COUNTRYSYSTEMPROP = "ro.product.locale";
    private static final String LOCALE_REGION_COUNTRYSYSTEMPROP = "ro.product.locale.region";
    private static final String SPECIAL_COUNTRYCODE_CN = "cn";
    private static final String SPECIAL_COUNTRYCODE_EU = "eu";
    private static final String SPECIAL_COUNTRYCODE_GB = "gb";
    private static final String SPECIAL_COUNTRYCODE_LA = "la";
    private static final String SPECIAL_COUNTRYCODE_UK = "uk";
    private static final String TAG = "CountryCodeBean";
    private static final String VENDORCOUNTRY_SYSTEMPROP = "ro.hw.country";
    private String countryCode;
    private String countrySource = "UNKNOWN";

    public CountryCodeBean(Context context, boolean z) {
        this.countryCode = "UNKNOWN";
        init(context, z);
        this.countryCode = this.countryCode.toUpperCase(Locale.ENGLISH);
    }

    private void checkCodeLenth() {
        String str = this.countryCode;
        if (str == null || str.length() != 2) {
            this.countryCode = "UNKNOWN";
            this.countrySource = "UNKNOWN";
        }
    }

    private void getLocaleCountryCode() {
        Object obj;
        String str;
        if (!SystemPropUtils.getProperty("get", KEY_VERSION_EMUI, ANDRIOD_SYSTEMPROP, "").isEmpty()) {
            if (EmuiUtil.isUpPVersion()) {
                getRegionSettingCountryCode();
                str = TAG;
                obj = "EMUI 9.0 upper System, get countryCode form Locale.getDefault().getCountry()";
            } else {
                getProductCountryCode();
                str = TAG;
                obj = "EMUI 9.0 lower System, get countryCode form ro.product.locale.region or locale";
            }
        } else if (Build.VERSION.SDK_INT >= 28 || Build.VERSION.RELEASE.charAt(0) >= '9') {
            getRegionSettingCountryCode();
            str = TAG;
            obj = "other Android 9.0 upper， get countryCode form Locale.getDefault().getCountry()";
        } else {
            getProductCountryCode();
            str = TAG;
            obj = "other Android 9.0 lower, get countryCode form ro.product.locale.region or locale";
        }
        Logger.m38044i(str, obj);
        this.countrySource = GrsBaseInfo.CountryCodeSource.LOCALE_INFO;
    }

    private void getProductCountryCode() {
        int lastIndexOf;
        this.countryCode = SystemPropUtils.getProperty("get", LOCALE_REGION_COUNTRYSYSTEMPROP, ANDRIOD_SYSTEMPROP, "UNKNOWN");
        String str = TAG;
        StringBuilder m8728C = C22128a.m8728C("countryCode by ro.product.locale.region is:");
        m8728C.append(this.countryCode);
        Logger.m38044i(str, m8728C.toString());
        if (TextUtils.isEmpty(this.countryCode) || "UNKNOWN".equals(this.countryCode)) {
            String property = SystemPropUtils.getProperty("get", LOCALE_COUNTRYSYSTEMPROP, ANDRIOD_SYSTEMPROP, "UNKNOWN");
            if (!TextUtils.isEmpty(property) && (lastIndexOf = property.lastIndexOf(StringConstant.DASH)) != -1) {
                this.countryCode = property.substring(lastIndexOf + 1);
                StringBuilder m8728C2 = C22128a.m8728C("countryCode by ro.product.locale is:");
                m8728C2.append(this.countryCode);
                Logger.m38044i(str, m8728C2.toString());
            }
        }
        if (!SPECIAL_COUNTRYCODE_CN.equalsIgnoreCase(this.countryCode)) {
            this.countryCode = "UNKNOWN";
        }
    }

    private void getRegionSettingCountryCode() {
        this.countryCode = Locale.getDefault().getCountry();
        String str = TAG;
        StringBuilder m8728C = C22128a.m8728C("countryCode by system's region setting is: ");
        m8728C.append(this.countryCode);
        Logger.m38044i(str, m8728C.toString());
        if (TextUtils.isEmpty(this.countryCode)) {
            this.countryCode = "UNKNOWN";
        }
    }

    private void getSimCountryCode(Context context) {
        getSimCountryCode(context, false);
    }

    private void getSimCountryCode(Context context, boolean z) {
        String str;
        StringBuilder sb;
        String str2;
        TelephonyManager telephonyManager = (TelephonyManager) context.getApplicationContext().getSystemService(AnalyticsConstants.PHONE);
        if (telephonyManager != null) {
            if (!z || telephonyManager.getPhoneType() == 2) {
                this.countryCode = telephonyManager.getSimCountryIso();
                this.countrySource = GrsBaseInfo.CountryCodeSource.SIM_COUNTRY;
                str2 = TAG;
                sb = new StringBuilder();
                str = "countryCode by SimCountryIso is: ";
            } else {
                this.countryCode = telephonyManager.getNetworkCountryIso();
                this.countrySource = GrsBaseInfo.CountryCodeSource.NETWORK_COUNTRY;
                str2 = TAG;
                sb = new StringBuilder();
                str = "countryCode by NetworkCountryIso is: ";
            }
            sb.append(str);
            sb.append(this.countryCode);
            Logger.m38044i(str2, sb.toString());
        }
        checkCodeLenth();
    }

    private void getVendorCountryCode() {
        this.countrySource = GrsBaseInfo.CountryCodeSource.VENDOR_COUNTRY;
        this.countryCode = SystemPropUtils.getProperty("get", VENDORCOUNTRY_SYSTEMPROP, ANDRIOD_SYSTEMPROP, "UNKNOWN");
        String str = TAG;
        StringBuilder m8728C = C22128a.m8728C("countryCode by ro.hw.country is: ");
        m8728C.append(this.countryCode);
        Logger.m38044i(str, m8728C.toString());
        if (SPECIAL_COUNTRYCODE_EU.equalsIgnoreCase(this.countryCode) || SPECIAL_COUNTRYCODE_LA.equalsIgnoreCase(this.countryCode)) {
            this.countryCode = "UNKNOWN";
            this.countrySource = "UNKNOWN";
        } else if (!SPECIAL_COUNTRYCODE_UK.equalsIgnoreCase(this.countryCode)) {
            checkCodeLenth();
        } else {
            Logger.m38044i(str, "special country of UK to map GB.");
            this.countryCode = SPECIAL_COUNTRYCODE_GB;
            this.countrySource = GrsBaseInfo.CountryCodeSource.VENDOR_COUNTRY;
        }
    }

    private void init(Context context, boolean z) {
        Objects.requireNonNull(context, "context must be not null.Please provide app's Context");
        try {
            getVendorCountryCode();
            if (isCodeValidate()) {
                Logger.m38044i(TAG, "get issue_country code from VENDOR_COUNTRY");
                return;
            }
            getSimCountryCode(context);
            if (isCodeValidate()) {
                Logger.m38044i(TAG, "get issue_country code from SIM_COUNTRY");
                return;
            }
            getLocaleCountryCode();
            if (!isCodeValidate()) {
                return;
            }
            Logger.m38044i(TAG, "get issue_country code from LOCALE_INFO");
        } catch (Exception e) {
            Logger.m38040w(TAG, "get CountryCode error");
        }
    }

    private boolean isCodeValidate() {
        return !"UNKNOWN".equals(this.countryCode);
    }

    public String getCountryCode() {
        return this.countryCode;
    }

    public String getCountrySource() {
        return this.countrySource;
    }
}

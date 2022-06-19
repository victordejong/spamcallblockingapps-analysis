package com.telguarder.helpers.country;

import android.content.Context;
import android.content.res.Configuration;
import android.os.Build;
import android.telephony.SubscriptionInfo;
import android.telephony.SubscriptionManager;
import android.telephony.TelephonyManager;
import android.text.TextUtils;
import androidx.core.content.ContextCompat;
import com.telguarder.helpers.analytics.AnalyticsManager;
import com.telguarder.helpers.preferences.PreferencesManager;
import java.util.Arrays;
import java.util.List;
import java.util.Locale;
/* loaded from: classes2-dex2jar.jar:com/telguarder/helpers/country/CountryManager.class */
public class CountryManager {
    private static CountryManager mInstance;
    private String lastMCCQuery;
    private long lastMCCQueryTime = 0;
    private String mCountryIso;
    public Configuration newConfig;

    private CountryManager() {
    }

    public static CountryManager getInstance() {
        CountryManager countryManager;
        synchronized (CountryManager.class) {
            try {
                if (mInstance == null) {
                    mInstance = new CountryManager();
                }
                countryManager = mInstance;
            } catch (Throwable th) {
                throw th;
            }
        }
        return countryManager;
    }

    private String getMccHomeNetFromCdma() {
        try {
            Class<?> cls = Class.forName("android.os.SystemProperties");
            return ((String) cls.getMethod("get", String.class).invoke(cls, "ro.cdma.home.operator.numeric")).substring(0, 3);
        } catch (Exception e) {
            return null;
        }
    }

    private String getMccHomeNetFromResourceConfig(Context context) {
        return String.valueOf(context.getResources().getConfiguration().mcc);
    }

    private boolean isMccUsable(String str) {
        return !TextUtils.isEmpty(str) && str.length() == 3;
    }

    public String getCountryIso(Context context) {
        if (this.mCountryIso == null) {
            String simCountryIso = getSimCountryIso(context);
            this.mCountryIso = simCountryIso;
            if (simCountryIso == null) {
                this.mCountryIso = getNetworkCountryIso(context);
            }
        }
        return this.mCountryIso;
    }

    public String getDefaultRegion(Context context) {
        return getDefaultRegionForCalls(context);
    }

    public String getDefaultRegionForCalls(Context context) {
        String simCountryIso = getSimCountryIso(context);
        String str = simCountryIso;
        if (!TextUtils.isEmpty(simCountryIso)) {
            str = simCountryIso.toUpperCase();
        }
        return str;
    }

    public String getDeviceLanguage() {
        String deviceLanguageTag = getDeviceLanguageTag();
        if (Arrays.asList("es-US", "es-AR", "es-BO", "es-CL", "es-CO", "es-CR", "es-DO", "es-EC", "es-SV", "es-GT", "es-HN", "es-MX", "es-NI", "es-PA", "es-PY", "es-PE", "es-PR", "es-UY", "es-VE").contains(deviceLanguageTag)) {
            return "esLA";
        }
        if ("pt-BR".equals(deviceLanguageTag)) {
            return "ptBR";
        }
        Configuration configuration = this.newConfig;
        return (configuration != null ? getNewConfigLocale(configuration) : Locale.getDefault()).getLanguage();
    }

    public String getDeviceLanguageTag() {
        Configuration configuration = this.newConfig;
        return (configuration != null ? getNewConfigLocale(configuration) : Locale.getDefault()).toLanguageTag();
    }

    public String getMCC(Context context) {
        if (TextUtils.isEmpty(this.lastMCCQuery) || System.currentTimeMillis() - this.lastMCCQueryTime > 60000) {
            String cachedMCC = PreferencesManager.getInstance().getCachedMCC();
            String mccFromNetworkOperator = getMccFromNetworkOperator(context);
            String str = mccFromNetworkOperator;
            if (!isMccUsable(mccFromNetworkOperator)) {
                TelephonyManager telephonyManager = (TelephonyManager) context.getSystemService("phone");
                if (telephonyManager == null || telephonyManager.getPhoneType() != 2) {
                    String mccFromSimOperator = getMccFromSimOperator(context);
                    String str2 = mccFromSimOperator;
                    if (!isMccUsable(mccFromSimOperator)) {
                        str2 = getMccHomeNetFromResourceConfig(context);
                    }
                    str = str2;
                    if (!isMccUsable(str2)) {
                        str = !TextUtils.isEmpty(cachedMCC) ? cachedMCC : null;
                    }
                } else {
                    str = getMccHomeNetFromCdma();
                }
            }
            if (TextUtils.isEmpty(cachedMCC) || !cachedMCC.equals(str)) {
                PreferencesManager.getInstance().saveCachedMCC(str);
            }
            this.lastMCCQuery = str;
            this.lastMCCQueryTime = System.currentTimeMillis();
            return str;
        }
        return this.lastMCCQuery;
    }

    public String getMccFromNetworkOperator(Context context) {
        TelephonyManager telephonyManager = (TelephonyManager) context.getSystemService("phone");
        if (telephonyManager != null) {
            String networkOperator = telephonyManager.getNetworkOperator();
            if (TextUtils.isEmpty(networkOperator)) {
                return null;
            }
            try {
                return networkOperator.substring(0, 3);
            } catch (Exception e) {
                return null;
            }
        }
        return null;
    }

    public String getMccFromSimOperator(Context context) {
        String simOperator;
        SubscriptionInfo subscriptionInfo;
        int i = 0;
        if (Build.VERSION.SDK_INT < 22 || ContextCompat.checkSelfPermission(context, "android.permission.READ_PHONE_STATE") != 0) {
            TelephonyManager telephonyManager = (TelephonyManager) context.getSystemService("phone");
            if (telephonyManager == null || (simOperator = telephonyManager.getSimOperator()) == null) {
                return null;
            }
            try {
                return simOperator.substring(0, 3);
            } catch (Exception e) {
                return null;
            }
        }
        SubscriptionManager subscriptionManager = (SubscriptionManager) context.getSystemService("telephony_subscription_service");
        List<SubscriptionInfo> activeSubscriptionInfoList = subscriptionManager != null ? subscriptionManager.getActiveSubscriptionInfoList() : null;
        if (activeSubscriptionInfoList == null || activeSubscriptionInfoList.size() <= 0) {
            return null;
        }
        SubscriptionInfo subscriptionInfo2 = null;
        while (true) {
            SubscriptionInfo subscriptionInfo3 = subscriptionInfo2;
            if (i >= activeSubscriptionInfoList.size()) {
                if (subscriptionInfo3 == null) {
                    return null;
                }
                return Build.VERSION.SDK_INT >= 29 ? subscriptionInfo3.getMccString() : String.valueOf(subscriptionInfo3.getMcc());
            }
            SubscriptionInfo subscriptionInfo4 = activeSubscriptionInfoList.get(i);
            if (!subscriptionManager.isNetworkRoaming(subscriptionInfo4.getSubscriptionId())) {
                return Build.VERSION.SDK_INT >= 29 ? subscriptionInfo4.getMccString() : String.valueOf(subscriptionInfo4.getMcc());
            }
            if (subscriptionInfo3 != null) {
                subscriptionInfo = subscriptionInfo3;
                if (subscriptionInfo4.getSimSlotIndex() >= subscriptionInfo3.getSimSlotIndex()) {
                    i++;
                    subscriptionInfo2 = subscriptionInfo;
                }
            }
            subscriptionInfo = subscriptionInfo4;
            i++;
            subscriptionInfo2 = subscriptionInfo;
        }
    }

    public String getNetworkCountryIso(Context context) {
        TelephonyManager telephonyManager = (TelephonyManager) context.getSystemService("phone");
        return telephonyManager != null ? telephonyManager.getNetworkCountryIso() : Locale.getDefault().getCountry();
    }

    public Locale getNewConfigLocale(Configuration configuration) {
        return Build.VERSION.SDK_INT >= 24 ? getSystemLocale(configuration) : getSystemLocaleLegacy(configuration);
    }

    public String getSimCountryIso(Context context) {
        SubscriptionInfo subscriptionInfo;
        if (Build.VERSION.SDK_INT < 22 || ContextCompat.checkSelfPermission(context, "android.permission.READ_PHONE_STATE") != 0) {
            TelephonyManager telephonyManager = (TelephonyManager) context.getSystemService("phone");
            return (telephonyManager == null || telephonyManager.getSimState() != 5) ? Locale.getDefault().getCountry() : telephonyManager.getSimCountryIso();
        }
        SubscriptionManager subscriptionManager = (SubscriptionManager) context.getSystemService("telephony_subscription_service");
        SubscriptionInfo subscriptionInfo2 = null;
        List<SubscriptionInfo> activeSubscriptionInfoList = subscriptionManager != null ? subscriptionManager.getActiveSubscriptionInfoList() : null;
        if (activeSubscriptionInfoList == null || activeSubscriptionInfoList.size() <= 0) {
            return Locale.getDefault().getCountry();
        }
        int i = 0;
        while (i < activeSubscriptionInfoList.size()) {
            SubscriptionInfo subscriptionInfo3 = activeSubscriptionInfoList.get(i);
            if (!subscriptionManager.isNetworkRoaming(subscriptionInfo3.getSubscriptionId())) {
                return subscriptionInfo3.getCountryIso();
            }
            if (subscriptionInfo2 != null) {
                subscriptionInfo = subscriptionInfo2;
                if (subscriptionInfo3.getSimSlotIndex() >= subscriptionInfo2.getSimSlotIndex()) {
                    i++;
                    subscriptionInfo2 = subscriptionInfo;
                }
            }
            subscriptionInfo = subscriptionInfo3;
            i++;
            subscriptionInfo2 = subscriptionInfo;
        }
        return subscriptionInfo2 != null ? subscriptionInfo2.getCountryIso() : Locale.getDefault().getCountry();
    }

    public Locale getSystemLocale(Configuration configuration) {
        return configuration.getLocales().get(0);
    }

    public Locale getSystemLocaleLegacy(Configuration configuration) {
        return configuration.locale;
    }

    public void initCountryManager() {
        AnalyticsManager.getInstance().sendPhoneLanguageVsBackendParamLangCode();
    }
}

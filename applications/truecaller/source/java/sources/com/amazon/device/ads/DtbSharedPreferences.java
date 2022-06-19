package com.amazon.device.ads;

import android.content.SharedPreferences;
import java.util.Set;
import org.json.JSONObject;
import p193e.p1432d.p1439c.p1440a.C22128a;
/* loaded from: classes-dex2jar.jar:com/amazon/device/ads/DtbSharedPreferences.class */
public class DtbSharedPreferences {
    private static final String AAX_HOSTNAME_PREF_NAME = "amzn-dtb-ad-aax-hostname";
    private static final String ADID_PREF_NAME = "amzn-dtb-ad-id";
    private static final String CONFIG_LAST_CHECKIN_PREF_NAME = "amzn-dtb-ad-sis-last-checkin";
    private static final String CONFIG_TTL_PREF_NAME = "amzn-dtb-ad-config-ttl";
    private static final String DTB_VERSION_IN_USE = "amzn-dtb-version_in_use";
    private static final String ENCODED_PRICE_CHECK_PREF_NAME = "amzn-dtb-enable-encoded-price-check";
    private static final String IDFA_PREF_NAME = "amzn-dtb-idfa";
    private static final String IS_ADID_CHANGED_PREF_NAME = "amzn-dtb-adid-changed";
    private static final String IS_ADID_NEW_PREF_NAME = "amzn-dtb-adid-new";
    private static final String IS_GPS_UNAVAILABLE_PREF_NAME = "amzn-dtb-is-gps-unavailable";
    private static boolean IS_SIS_REGISTERATION_SUCCESSFUL = false;
    private static final String NON_IAB_CMP_FLAVOR = "NON_IAB_CMP_FLAVOR";
    private static final String NON_IAB_CONSENT_STATUS = "NON_IAB_CONSENT_STATUS";
    private static final String NON_IAB_CUSTOM_CONSENT = "NON_IAB_Custom_Consent";
    private static final String NON_IAB_VENDORLIST = "NON_IAB_VENDORLIST";
    private static final String OO_PREF_NAME = "amzn-dtb-oo";
    private static final String PJ_TEMPLATE_PREF_NAME = "amzn-dtb-pj-template";
    private static final String PREF_FILE_NAME = "com.amazon.device.ads.dtb.preferences";
    private static final String SDK_WRAPPER_PING = "sdk-wrapper-ping";
    private static final String SIS_ENDPOINT_PREF_NAME = "amzn-dtb-ad-sis-endpoint";
    private static final String SIS_LAST_CHECKIN_PREF_NAME = "amzn-dtb-ad-sis-last-checkin";
    private static final String SIS_LAST_PING_PREF_NAME = "amzn-dtb-ad-sis-last-ping";
    private static final String SIS_LAST_PING_WEB_RESOURCES = "amzn-dtb-web-resource-ping";
    public static DtbSharedPreferences dtbSharedPreferencesInstance;
    private static boolean isIgnore = false;
    private static SharedPreferences sharedPreferences;
    private final String LOG_TAG = DtbSharedPreferences.class.getSimpleName();

    public DtbSharedPreferences() {
        if (AdRegistration.getContext() != null) {
            sharedPreferences = AdRegistration.getContext().getSharedPreferences(PREF_FILE_NAME, 0);
        }
    }

    private static boolean containsPreference(String str) {
        return getSharedPreferences().contains(str);
    }

    public static DtbSharedPreferences createInstance() {
        DtbSharedPreferences dtbSharedPreferences = new DtbSharedPreferences();
        dtbSharedPreferencesInstance = dtbSharedPreferences;
        return dtbSharedPreferences;
    }

    private static void flushPreference(String str) {
        SharedPreferences sharedPreferences2 = getSharedPreferences();
        if (sharedPreferences2.contains(str)) {
            SharedPreferences.Editor edit = sharedPreferences2.edit();
            edit.remove(str);
            edit.apply();
        }
    }

    public static DtbSharedPreferences getInstance() {
        DtbSharedPreferences dtbSharedPreferences = dtbSharedPreferencesInstance;
        if (dtbSharedPreferences != null) {
            return dtbSharedPreferences;
        }
        throw new IllegalArgumentException("unable to retrieve shared preferences without initialization");
    }

    private static <T> T getPref(String str, Class<T> cls) {
        if (isIgnore) {
            return null;
        }
        SharedPreferences sharedPreferences2 = getSharedPreferences();
        if (cls.isAssignableFrom(String.class)) {
            return (T) sharedPreferences2.getString(str, null);
        }
        if (cls.isAssignableFrom(Set.class)) {
            return (T) sharedPreferences2.getStringSet(str, null);
        }
        if (cls.isAssignableFrom(Boolean.class)) {
            return (T) Boolean.valueOf(sharedPreferences2.getBoolean(str, false));
        }
        if (cls.isAssignableFrom(Long.class)) {
            return (T) Long.valueOf(sharedPreferences2.getLong(str, 0L));
        }
        if (cls.isAssignableFrom(Integer.class)) {
            return (T) Integer.valueOf(sharedPreferences2.getInt(str, 0));
        }
        if (!cls.isAssignableFrom(Float.class)) {
            throw new IllegalArgumentException(C22128a.m8639b2(cls, new StringBuilder(), " is not supported"));
        }
        return (T) Float.valueOf(sharedPreferences2.getFloat(str, 0.0f));
    }

    private static SharedPreferences getSharedPreferences() {
        if (sharedPreferences == null) {
            sharedPreferences = AdRegistration.getContext().getSharedPreferences(PREF_FILE_NAME, 0);
        }
        return sharedPreferences;
    }

    private static <T> void savePref(String str, T t) {
        SharedPreferences sharedPreferences2;
        if (!isIgnore && (sharedPreferences2 = getSharedPreferences()) != null) {
            SharedPreferences.Editor edit = sharedPreferences2.edit();
            if (t instanceof Boolean) {
                edit.putBoolean(str, ((Boolean) t).booleanValue());
            } else if (t instanceof String) {
                edit.putString(str, (String) t);
            } else if (t instanceof Integer) {
                edit.putInt(str, ((Integer) t).intValue());
            } else if (t instanceof Float) {
                edit.putFloat(str, ((Float) t).floatValue());
            } else if (t instanceof Long) {
                edit.putLong(str, ((Long) t).longValue());
            } else if (!(t instanceof Set)) {
                StringBuilder m8728C = C22128a.m8728C("Saving of ");
                m8728C.append(t.getClass());
                m8728C.append(" is not supported.");
                throw new IllegalArgumentException(m8728C.toString());
            } else {
                edit.putStringSet(str, (Set) t);
            }
            edit.commit();
        }
    }

    public static void setIgnoreMode() {
        isIgnore = true;
    }

    public String getAaxHostname() {
        String str = (String) getPref(AAX_HOSTNAME_PREF_NAME, String.class);
        if (!AdRegistration.isTestMode() || !DtbDebugProperties.isInternalDebugMode) {
            String str2 = str;
            if (DtbCommonUtils.isNullOrEmpty(str)) {
                str2 = DtbConstants.AAX_HOSTNAME;
            }
            return str2;
        }
        String str3 = str;
        if (str == null) {
            str3 = DtbConstants.AAX_HOSTNAME;
        }
        return DtbDebugProperties.getAaxHostName(str3);
    }

    public String getAdId() {
        return (String) getPref(ADID_PREF_NAME, String.class);
    }

    public String getCMPFlavor() {
        return (String) getPref(NON_IAB_CMP_FLAVOR, String.class);
    }

    public Long getConfigLastCheckIn() {
        return (Long) getPref("amzn-dtb-ad-sis-last-checkin", Long.class);
    }

    public long getConfigTtl() {
        long longValue = ((Long) getPref(CONFIG_TTL_PREF_NAME, Long.class)).longValue();
        return (longValue < 1 || longValue > DtbConstants.CONFIG_CHECKIN_INTERVAL) ? DtbConstants.CONFIG_CHECKIN_INTERVAL : longValue;
    }

    public String getConsentStatus() {
        return (String) getPref(NON_IAB_CONSENT_STATUS, String.class);
    }

    public String getIdfa() {
        return (String) getPref(IDFA_PREF_NAME, String.class);
    }

    public boolean getIsAdIdChanged() {
        return ((Boolean) getPref(IS_ADID_CHANGED_PREF_NAME, Boolean.class)).booleanValue();
    }

    public boolean getIsAdIdNew() {
        return ((Boolean) getPref(IS_ADID_NEW_PREF_NAME, Boolean.class)).booleanValue();
    }

    public boolean getIsSisRegisterationSuccessful() {
        return IS_SIS_REGISTERATION_SUCCESSFUL;
    }

    public String getNonIABCustomConsent() {
        return (String) getPref(NON_IAB_CUSTOM_CONSENT, String.class);
    }

    public Boolean getOptOut() {
        synchronized (this) {
            if (!containsPreference(OO_PREF_NAME)) {
                return null;
            }
            return (Boolean) getPref(OO_PREF_NAME, Boolean.class);
        }
    }

    public JSONObject getPJTemplate() {
        JSONObject jSONObject;
        try {
            jSONObject = new JSONObject((String) getPref(PJ_TEMPLATE_PREF_NAME, String.class));
        } catch (Exception e) {
            jSONObject = new JSONObject();
            DtbLog.warn(this.LOG_TAG, "Get Pj template failed when fetching from Cache");
        }
        return jSONObject;
    }

    public String getRoute53EnabledCNAME() {
        return (!AdRegistration.isTestMode() || !DtbDebugProperties.isInternalDebugMode) ? DtbConstants.AAX_ROUTE53_ENABLED_CNAME : DtbDebugProperties.getRoute53EnabledCNAME(DtbConstants.AAX_ROUTE53_ENABLED_CNAME);
    }

    public String getSisEndpoint() {
        String str = (String) getPref(SIS_ENDPOINT_PREF_NAME, String.class);
        String str2 = str;
        if (DtbCommonUtils.isNullOrEmpty(str)) {
            str2 = C22128a.m8618h(new StringBuilder(), DtbConstants.SIS_END_POINT, DtbConstants.SIS_SERVER_PATH);
        }
        return str2;
    }

    public Long getSisLastCheckIn() {
        return (Long) getPref("amzn-dtb-ad-sis-last-checkin", Long.class);
    }

    public long getSisLastPing() {
        return ((Long) getPref(SIS_LAST_PING_PREF_NAME, Long.class)).longValue();
    }

    public String getVendorList() {
        return (String) getPref(NON_IAB_VENDORLIST, String.class);
    }

    public String getVersionInUse() {
        return (String) getPref(DTB_VERSION_IN_USE, String.class);
    }

    public Long getWebResoucesLastPing() {
        return (Long) getPref(SIS_LAST_PING_WEB_RESOURCES, Long.class);
    }

    public Long getWrapperDetectionLastPing() {
        return (Long) getPref(SDK_WRAPPER_PING, Long.class);
    }

    public boolean isGooglePlayServicesUnavailable() {
        return ((Boolean) getPref(IS_GPS_UNAVAILABLE_PREF_NAME, Boolean.class)).booleanValue();
    }

    public void removeAdid() {
        flushPreference(ADID_PREF_NAME);
    }

    public void removeCMPFlavor() {
        flushPreference(NON_IAB_CMP_FLAVOR);
    }

    public void removeConsentStatus() {
        flushPreference(NON_IAB_CONSENT_STATUS);
    }

    public void removeNonIABCustomConsent() {
        flushPreference(NON_IAB_CUSTOM_CONSENT);
    }

    public void removePJTemplate() {
        flushPreference(PJ_TEMPLATE_PREF_NAME);
    }

    public void removeVendorList() {
        flushPreference(NON_IAB_VENDORLIST);
    }

    public void resetWebResoucesLastPing() {
        SharedPreferences sharedPreferences2 = getSharedPreferences();
        if (sharedPreferences2 != null) {
            SharedPreferences.Editor edit = sharedPreferences2.edit();
            edit.remove(SIS_LAST_PING_WEB_RESOURCES);
            edit.commit();
        }
    }

    public void resetWrapperDetectionLastPing() {
        SharedPreferences sharedPreferences2 = getSharedPreferences();
        if (sharedPreferences2 != null) {
            SharedPreferences.Editor edit = sharedPreferences2.edit();
            edit.remove(SDK_WRAPPER_PING);
            edit.commit();
        }
    }

    public void saveAaxHostname(String str) {
        if (!DtbCommonUtils.isNullOrEmpty(str)) {
            savePref(AAX_HOSTNAME_PREF_NAME, str);
        } else {
            savePref(AAX_HOSTNAME_PREF_NAME, DtbConstants.AAX_HOSTNAME);
        }
    }

    public void saveAdId(String str) {
        if (str != null) {
            savePref(ADID_PREF_NAME, str);
        }
    }

    public void saveCMPFlavor(String str) {
        savePref(NON_IAB_CMP_FLAVOR, str);
    }

    public void saveConfigLastCheckIn(long j) {
        savePref("amzn-dtb-ad-sis-last-checkin", Long.valueOf(j));
    }

    public void saveConfigTtl(long j) {
        if (j < 1 || j > DtbConstants.CONFIG_CHECKIN_INTERVAL) {
            savePref(CONFIG_TTL_PREF_NAME, Long.valueOf((long) DtbConstants.CONFIG_CHECKIN_INTERVAL));
        } else {
            savePref(CONFIG_TTL_PREF_NAME, Long.valueOf(j));
        }
    }

    public void saveConsentStatus(String str) {
        savePref(NON_IAB_CONSENT_STATUS, str);
    }

    public void saveIdfa(String str) {
        if (str != null) {
            savePref(IDFA_PREF_NAME, str);
        } else {
            savePref(IDFA_PREF_NAME, "");
        }
    }

    public void saveIsAdIdChanged(boolean z) {
        savePref(IS_ADID_CHANGED_PREF_NAME, Boolean.valueOf(z));
    }

    public void saveIsAdIdNew(boolean z) {
        savePref(IS_ADID_NEW_PREF_NAME, Boolean.valueOf(z));
    }

    public void saveNonIABCustomConsent(String str) {
        savePref(NON_IAB_CUSTOM_CONSENT, str);
    }

    public void saveOptOut(Boolean bool) {
        synchronized (this) {
            flushPreference(OO_PREF_NAME);
            if (bool != null) {
                savePref(OO_PREF_NAME, bool);
            }
        }
    }

    public void savePJTemplate(JSONObject jSONObject) {
        if (jSONObject != null) {
            savePref(PJ_TEMPLATE_PREF_NAME, jSONObject.toString());
        }
    }

    public boolean saveSisEndpoint(String str) {
        if (DtbCommonUtils.isNullOrEmpty(str)) {
            savePref(SIS_ENDPOINT_PREF_NAME, C22128a.m8618h(new StringBuilder(), DtbConstants.SIS_END_POINT, DtbConstants.SIS_SERVER_PATH));
            return false;
        }
        String str2 = (String) getPref(SIS_ENDPOINT_PREF_NAME, String.class);
        String m8543z2 = C22128a.m8543z2(str, DtbConstants.SIS_SERVER_PATH);
        if (str2 != null && str2.equals(m8543z2)) {
            return false;
        }
        savePref(SIS_ENDPOINT_PREF_NAME, m8543z2);
        return true;
    }

    public void saveSisLastCheckIn(long j) {
        savePref("amzn-dtb-ad-sis-last-checkin", Long.valueOf(j));
    }

    public void saveSisLastPing(long j) {
        savePref(SIS_LAST_PING_PREF_NAME, Long.valueOf(j));
    }

    public void saveVendorList(String str) {
        savePref(NON_IAB_VENDORLIST, str);
    }

    public void saveWebResoucesLastPing(long j) {
        savePref(SIS_LAST_PING_WEB_RESOURCES, Long.valueOf(j));
    }

    public void saveWrapperDetectionLastPing(long j) {
        savePref(SDK_WRAPPER_PING, Long.valueOf(j));
    }

    public void setGooglePlayServicesUnavailable(boolean z) {
        savePref(IS_GPS_UNAVAILABLE_PREF_NAME, Boolean.valueOf(z));
    }

    public void setIsSisRegisterationSuccessful(boolean z) {
        IS_SIS_REGISTERATION_SUCCESSFUL = z;
    }

    public void setVersionInUse(String str) {
        savePref(DTB_VERSION_IN_USE, str);
    }
}

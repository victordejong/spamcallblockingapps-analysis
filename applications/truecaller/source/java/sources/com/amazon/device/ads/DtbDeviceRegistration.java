package com.amazon.device.ads;

import android.content.Context;
import android.content.SharedPreferences;
import android.preference.PreferenceManager;
import com.huawei.hms.push.constant.RemoteMessageConst;
import com.razorpay.AnalyticsConstants;
import java.util.HashMap;
import org.json.JSONException;
import org.json.JSONObject;
import org.json.JSONTokener;
import p193e.p1425c.p1430b.p1431a.RunnableC22042j0;
import p193e.p1432d.p1439c.p1440a.C22128a;
/* loaded from: classes-dex2jar.jar:com/amazon/device/ads/DtbDeviceRegistration.class */
public class DtbDeviceRegistration {
    private static final String LOG_TAG = "com.amazon.device.ads.DtbDeviceRegistration";
    private static String amznAdId;
    private static String appId;
    private static DtbDeviceRegistration dtbDeviceRegistrationInstance;
    private final DtbMetrics metrics = new DtbMetrics();

    private DtbDeviceRegistration() {
        DtbLog.debug("Running the initialization in background thread.");
        initializeAds();
    }

    private HashMap<String, Object> buildConfigInfoParams(String str) {
        HashMap<String, Object> m8667T = C22128a.m8667T("appId", str);
        m8667T.put("sdkVer", DtbCommonUtils.getSDKVersion());
        m8667T.put("fp", "false");
        m8667T.put("testMode", Boolean.toString(AdRegistration.isTestMode()));
        JSONObject paramsJsonGetSafe = DtbDeviceData.getDeviceDataInstance().getParamsJsonGetSafe();
        if (paramsJsonGetSafe != null) {
            m8667T.put("dinfo", paramsJsonGetSafe);
        }
        JSONObject paramsJson = DtbPackageNativeData.getPackageNativeDataInstance(AdRegistration.getContext()).getParamsJson();
        if (paramsJson != null) {
            m8667T.put("pkg", paramsJson);
        }
        if (Math.random() <= DTBMetricsConfiguration.getClientConfigVal(DTBMetricsConfiguration.DISTRIBUTION_PIXEL_SAMPLE_RATE_KEY_NAME, DTBMetricsConfiguration.DISTRIBUTION_PIXEL_DEFAULT_VALUE.intValue(), DTBMetricsConfiguration.SAMPLE_RATES_KEY_NAME).intValue() / 100.0f) {
            String sDKDistributionPlace = AdRegistration.getSDKDistributionPlace();
            if (!DtbCommonUtils.isNullOrEmpty(sDKDistributionPlace)) {
                m8667T.put(DtbConstants.SDK_DISTRIBUTION_KEY_NAME, sDKDistributionPlace);
            }
        }
        return m8667T;
    }

    private HashMap<String, Object> buildSISParams(String str) {
        HashMap<String, Object> hashMap = new HashMap<>(DtbDeviceData.getDeviceDataInstance().getDeviceParams());
        String adId = DtbSharedPreferences.getInstance().getAdId();
        if (adId != null) {
            hashMap.put("adId", adId);
        }
        String idfa = DtbSharedPreferences.getInstance().getIdfa();
        Boolean optOut = DtbSharedPreferences.getInstance().getOptOut();
        if (!DtbCommonUtils.isNullOrEmpty(idfa)) {
            hashMap.put("idfa", idfa);
        } else {
            hashMap.putAll(DtbDeviceData.getDeviceDataInstance().getOptionalParams());
        }
        hashMap.put("oo", convertBooleanToFlag(optOut));
        if (str != null) {
            hashMap.put("appId", str);
        }
        JSONObject paramsJson = DtbPackageNativeData.getPackageNativeDataInstance(AdRegistration.getContext()).getParamsJson();
        if (paramsJson != null) {
            hashMap.put("pkg", paramsJson);
        }
        Context context = AdRegistration.getContext();
        if (context != null) {
            SharedPreferences defaultSharedPreferences = PreferenceManager.getDefaultSharedPreferences(context);
            Object obj = defaultSharedPreferences.contains(DtbConstants.IABTCF_GDPR_APPLIES) ? defaultSharedPreferences.getAll().get(DtbConstants.IABTCF_GDPR_APPLIES) : null;
            String string = defaultSharedPreferences.getString(DtbConstants.IABTCF_TC_STRING, null);
            if (obj != null) {
                try {
                    if ((obj instanceof Integer) && (((Integer) obj).intValue() == 1 || ((Integer) obj).intValue() == 0)) {
                        hashMap.put("gdpr", obj);
                    } else if ((!(obj instanceof String) || !((String) obj).equals("1")) && !((String) obj).equals(DtbConstants.NETWORK_TYPE_UNKNOWN)) {
                        DtbLog.info("IABTCF_gdprApplies should be a 1 or 0 as per IAB guideline");
                    } else {
                        hashMap.put("gdpr", obj);
                    }
                } catch (ClassCastException e) {
                    DtbLog.info("IABTCF_gdprApplies should be a number as per IAB guideline");
                }
            }
            if (string != null) {
                hashMap.put("gdpr_consent", string);
            }
        }
        String encodedNonIABString = AdRegistration.getEncodedNonIABString();
        if (!DtbCommonUtils.isNullOrEmpty(encodedNonIABString)) {
            hashMap.put("gdpr_custom", encodedNonIABString);
        }
        return hashMap;
    }

    private static String convertBooleanToFlag(Boolean bool) {
        String str = DtbConstants.NETWORK_TYPE_UNKNOWN;
        if (bool == null) {
            return DtbConstants.NETWORK_TYPE_UNKNOWN;
        }
        if (bool.booleanValue()) {
            str = "1";
        }
        return str;
    }

    public void initializeAds() {
        synchronized (this) {
            long currentTimeMillis = System.currentTimeMillis();
            long longValue = DtbSharedPreferences.getInstance().getSisLastCheckIn().longValue();
            if (DtbSharedPreferences.getInstance().getIsSisRegisterationSuccessful()) {
                long j = currentTimeMillis - longValue;
                if (j <= DtbConstants.SIS_CHECKIN_INTERVAL) {
                    DtbLog.debug("SIS call not required, last registration duration:" + j + ", expiration:" + DtbConstants.SIS_CHECKIN_INTERVAL);
                    return;
                }
            }
            if (!DtbCommonUtils.isNetworkConnected()) {
                DtbLog.debug("Network is not available");
                return;
            }
            appId = AdRegistration.getAppKey();
            if (DtbCommonUtils.isOnMainThread()) {
                DtbLog.error(LOG_TAG, "Unable to fetch advertising indentifier information on main thread.");
                return;
            }
            new DtbAdvertisingInfo();
            DtbDebugProperties.getInstance();
            registerConfig(appId);
            String sisEndpoint = DtbSharedPreferences.getInstance().getSisEndpoint();
            if (sisEndpoint.startsWith(AnalyticsConstants.NULL)) {
                DtbLog.debug("SIS is not ready");
                return;
            }
            StringBuilder sb = new StringBuilder(DtbDebugProperties.getSISUrl(sisEndpoint));
            boolean z = false;
            if (longValue == 0) {
                DtbLog.info(LOG_TAG, "Trying to register ad id..");
                sb.append(DtbConstants.generatePath);
            } else {
                DtbLog.info(LOG_TAG, "Trying to update ad id..");
                sb.append(DtbConstants.updatePath);
                z = true;
            }
            HashMap<String, Object> buildSISParams = buildSISParams(appId);
            try {
                DtbHttpClient dtbHttpClient = new DtbHttpClient(sb.toString());
                dtbHttpClient.setUseSecure(DtbDebugProperties.getIsSecure(true));
                dtbHttpClient.setParams(buildSISParams);
                dtbHttpClient.enableQueryParams();
                DtbMetric dtbMetric = z ? DtbMetric.SIS_LATENCY_UPDATE_DEVICE_INFO : DtbMetric.SIS_LATENCY_REGISTER_EVENT;
                DtbMetric dtbMetric2 = dtbMetric;
                this.metrics.startTimer(dtbMetric);
                DtbMetric dtbMetric3 = dtbMetric;
                dtbHttpClient.executePOST();
                DtbMetric dtbMetric4 = dtbMetric;
                this.metrics.stopTimer(dtbMetric);
                DtbMetric dtbMetric5 = dtbMetric;
                if (DtbCommonUtils.isNullOrEmpty(dtbHttpClient.getResponse())) {
                    DtbMetric dtbMetric6 = dtbMetric;
                    DtbLog.debug("No response from sis call.");
                    DtbMetric dtbMetric7 = dtbMetric;
                    DtbMetric dtbMetric8 = dtbMetric;
                    DtbMetric dtbMetric9 = dtbMetric;
                    throw new Exception("SIS Response is null");
                }
                DtbMetric dtbMetric10 = dtbMetric;
                DtbMetric dtbMetric11 = dtbMetric;
                JSONTokener jSONTokener = new JSONTokener(dtbHttpClient.getResponse());
                DtbMetric dtbMetric12 = dtbMetric;
                JSONObject jSONObject = (JSONObject) jSONTokener.nextValue();
                DtbMetric dtbMetric13 = dtbMetric;
                DtbSharedPreferences.getInstance().setIsSisRegisterationSuccessful(isRegistrationRequestSuccessful(jSONObject));
                DtbMetric dtbMetric14 = dtbMetric;
                if (DtbSharedPreferences.getInstance().getIsSisRegisterationSuccessful()) {
                    if (dtbMetric != null) {
                        this.metrics.resetMetric(dtbMetric);
                    }
                    pingSis(sisEndpoint, appId);
                    return;
                }
                String str = LOG_TAG;
                DtbMetric dtbMetric15 = dtbMetric;
                DtbMetric dtbMetric16 = dtbMetric;
                StringBuilder sb2 = new StringBuilder();
                DtbMetric dtbMetric17 = dtbMetric;
                sb2.append("ad id failed registration: ");
                DtbMetric dtbMetric18 = dtbMetric;
                sb2.append(jSONObject.toString());
                DtbMetric dtbMetric19 = dtbMetric;
                DtbLog.info(str, sb2.toString());
                DtbMetric dtbMetric20 = dtbMetric;
                DtbMetric dtbMetric21 = dtbMetric;
                DtbMetric dtbMetric22 = dtbMetric;
                throw new Exception("ad id failed registration: ");
            } catch (JSONException e) {
                StringBuilder sb3 = new StringBuilder();
                sb3.append("JSON error parsing return from SIS: ");
                sb3.append(e.getMessage());
                DtbLog.error(sb3.toString());
                if (0 != 0) {
                    this.metrics.resetMetric(null);
                }
            } catch (Exception e2) {
                StringBuilder sb4 = new StringBuilder();
                sb4.append("Error registering device for ads:");
                sb4.append(e2.toString());
                DtbLog.error(sb4.toString());
                if (0 != 0) {
                    this.metrics.resetMetric(null);
                }
            }
        }
    }

    private boolean isPingRequestSuccessful(JSONObject jSONObject) throws JSONException {
        if (jSONObject.has("rcode")) {
            if (jSONObject.getInt("rcode") == 1) {
                DtbSharedPreferences.getInstance().saveSisLastPing(System.currentTimeMillis());
                DtbLog.info(LOG_TAG, "ad id is registered or updated successfully.");
                return true;
            } else if (jSONObject.getInt("rcode") != 103 && (jSONObject.getInt("rcode") != 101 || !jSONObject.has(RemoteMessageConst.MessageBody.MSG) || jSONObject.getInt(RemoteMessageConst.MessageBody.MSG) != 103)) {
                return false;
            } else {
                DtbSharedPreferences.getInstance().saveSisLastPing(System.currentTimeMillis());
                DtbLog.info("gdpr consent not granted");
                return true;
            }
        }
        return false;
    }

    private boolean isRegistrationRequestSuccessful(JSONObject jSONObject) throws JSONException {
        if (jSONObject.has("rcode")) {
            DtbSharedPreferences.getInstance().saveSisLastCheckIn(System.currentTimeMillis());
            if (jSONObject.getInt("rcode") != 1 || !jSONObject.has("adId")) {
                if (jSONObject.getInt("rcode") != 103 && (jSONObject.getInt("rcode") != 101 || !jSONObject.has(RemoteMessageConst.MessageBody.MSG) || jSONObject.getInt(RemoteMessageConst.MessageBody.MSG) != 103)) {
                    return false;
                }
                DtbSharedPreferences.getInstance().removeAdid();
                DtbLog.debug("No ad-id returned , gdpr consent not granted");
                return true;
            }
            String string = jSONObject.getString("adId");
            if (jSONObject.has("idChanged") && jSONObject.getBoolean("idChanged")) {
                DtbLog.info(LOG_TAG, "ad id has changed, updating..");
                this.metrics.incrementMetric(DtbMetric.SIS_COUNTER_IDENTIFIED_DEVICE_CHANGED);
            }
            DtbSharedPreferences.getInstance().saveAdId(string);
            DtbLog.info(LOG_TAG, "ad id is registered or updated successfully.");
            return true;
        }
        return false;
    }

    private boolean parseRegisterConfigResponse(String str, long j, boolean z) throws Exception {
        JSONObject jSONObject = (JSONObject) new JSONTokener(str).nextValue();
        if (jSONObject.has("pj")) {
            DtbSharedPreferences.getInstance().savePJTemplate(jSONObject.getJSONObject("pj"));
        } else {
            DtbSharedPreferences.getInstance().removePJTemplate();
        }
        if (!jSONObject.has(DtbDebugProperties.AAX_HOSTNAME) && !jSONObject.has("sisURL")) {
            String str2 = LOG_TAG;
            StringBuilder m8728C = C22128a.m8728C("ad configuration failed load: ");
            m8728C.append(jSONObject.toString());
            DtbLog.info(str2, m8728C.toString());
            throw new Exception("ad configuration failed load");
        }
        if (jSONObject.has(DtbDebugProperties.AAX_HOSTNAME)) {
            DtbSharedPreferences.getInstance().saveAaxHostname(jSONObject.getString(DtbDebugProperties.AAX_HOSTNAME));
        }
        if (jSONObject.has("sisURL")) {
            z = DtbSharedPreferences.getInstance().saveSisEndpoint(jSONObject.getString("sisURL"));
        }
        if (jSONObject.has(RemoteMessageConst.TTL)) {
            DtbSharedPreferences.getInstance().saveConfigTtl(DtbCommonUtils.getMilliSeconds(jSONObject.getString(RemoteMessageConst.TTL)));
        }
        DtbSharedPreferences.getInstance().saveConfigLastCheckIn(j);
        DtbLog.info(LOG_TAG, "ad configuration loaded successfully.");
        return z;
    }

    private void pingSis(String str, String str2) {
        if (System.currentTimeMillis() - DtbSharedPreferences.getInstance().getSisLastPing() < DtbConstants.SIS_PING_INTERVAL) {
            return;
        }
        String adId = DtbSharedPreferences.getInstance().getAdId();
        if (adId == null || adId.isEmpty()) {
            DtbLog.info("error retrieving ad id, cancelling sis ping");
            return;
        }
        try {
            if (!DtbCommonUtils.isNetworkConnected()) {
                DtbLog.debug("Network is not available");
                return;
            }
            DtbHttpClient dtbHttpClient = new DtbHttpClient(str + DtbConstants.pingPath);
            dtbHttpClient.setUseSecure(DtbDebugProperties.getIsSecure(true));
            HashMap<String, Object> hashMap = new HashMap<>();
            hashMap.put("appId", str2);
            hashMap.put("adId", adId);
            Context context = AdRegistration.getContext();
            if (context != null) {
                SharedPreferences defaultSharedPreferences = PreferenceManager.getDefaultSharedPreferences(context);
                Object obj = defaultSharedPreferences.contains(DtbConstants.IABTCF_GDPR_APPLIES) ? defaultSharedPreferences.getAll().get(DtbConstants.IABTCF_GDPR_APPLIES) : null;
                String string = defaultSharedPreferences.getString(DtbConstants.IABTCF_TC_STRING, null);
                if (obj != null) {
                    try {
                        if ((obj instanceof Integer) && (((Integer) obj).intValue() == 1 || ((Integer) obj).intValue() == 0)) {
                            hashMap.put("gdpr", obj);
                        } else if ((!(obj instanceof String) || !((String) obj).equals("1")) && !((String) obj).equals(DtbConstants.NETWORK_TYPE_UNKNOWN)) {
                            DtbLog.info("IABTCF_gdprApplies should be a 1 or 0 as per IAB guideline");
                        } else {
                            hashMap.put("gdpr", obj);
                        }
                    } catch (ClassCastException e) {
                        DtbLog.info("IABTCF_gdprApplies should be a number as per IAB guideline");
                    }
                }
                if (string != null) {
                    hashMap.put("gdpr_consent", string);
                }
            }
            String encodedNonIABString = AdRegistration.getEncodedNonIABString();
            if (!DtbCommonUtils.isNullOrEmpty(encodedNonIABString)) {
                hashMap.put("gdpr_custom", encodedNonIABString);
            }
            dtbHttpClient.setParams(hashMap);
            dtbHttpClient.executeGET();
            if (DtbCommonUtils.isNullOrEmpty(dtbHttpClient.getResponse())) {
                DtbLog.debug("No response from sis ping.");
                throw new Exception("Ping SIS Response is null");
            }
            JSONObject jSONObject = (JSONObject) new JSONTokener(dtbHttpClient.getResponse()).nextValue();
            if (isPingRequestSuccessful(jSONObject)) {
                return;
            }
            String str3 = LOG_TAG;
            DtbLog.info(str3, "sis ping failed failed registration: " + jSONObject.toString());
            throw new Exception("sis ping failed registration: ");
        } catch (Exception e2) {
            StringBuilder m8728C = C22128a.m8728C("Error pinging sis: ");
            m8728C.append(e2.toString());
            DtbLog.error(m8728C.toString());
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:34:0x0185, code lost:
        if (r0.trim().isEmpty() != false) goto L35;
     */
    /* JADX WARN: Code restructure failed: missing block: B:41:0x01a0, code lost:
        if (r0.trim().isEmpty() != false) goto L42;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private boolean registerConfig(java.lang.String r7) {
        /*
            Method dump skipped, instructions count: 459
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.amazon.device.ads.DtbDeviceRegistration.registerConfig(java.lang.String):boolean");
    }

    public static void verifyRegistration() {
        if (dtbDeviceRegistrationInstance == null) {
            dtbDeviceRegistrationInstance = new DtbDeviceRegistration();
        }
        DtbThreadService.getInstance().execute(RunnableC22042j0.f61275a);
    }
}

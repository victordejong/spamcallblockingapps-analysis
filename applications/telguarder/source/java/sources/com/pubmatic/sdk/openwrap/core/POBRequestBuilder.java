package com.pubmatic.sdk.openwrap.core;

import android.content.Context;
import android.preference.PreferenceManager;
import com.pubmatic.sdk.common.POBCommonConstants;
import com.pubmatic.sdk.common.POBInstanceProvider;
import com.pubmatic.sdk.common.base.POBRequestBuilding;
import com.pubmatic.sdk.common.log.PMLog;
import com.pubmatic.sdk.common.models.POBAppInfo;
import com.pubmatic.sdk.common.models.POBApplicationInfo;
import com.pubmatic.sdk.common.models.POBDeviceInfo;
import com.pubmatic.sdk.common.models.POBLocation;
import com.pubmatic.sdk.common.models.POBUserInfo;
import com.pubmatic.sdk.common.network.POBHttpRequest;
import com.pubmatic.sdk.common.utility.POBLocationDetector;
import com.pubmatic.sdk.common.utility.POBUtils;
import java.util.HashMap;
import java.util.UUID;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;
/* loaded from: classes2-dex2jar.jar:com/pubmatic/sdk/openwrap/core/POBRequestBuilder.class */
public class POBRequestBuilder implements POBRequestBuilding {

    /* renamed from: a */
    private final String f752a;

    /* renamed from: b */
    private final POBRequest f753b;

    /* renamed from: c */
    private final Context f754c;

    /* renamed from: d */
    private final Boolean f755d;

    /* renamed from: e */
    private POBLocationDetector f756e;

    /* renamed from: f */
    private POBDeviceInfo f757f;

    /* renamed from: g */
    private POBAppInfo f758g;

    /* renamed from: com.pubmatic.sdk.openwrap.core.POBRequestBuilder$a */
    /* loaded from: classes2-dex2jar.jar:com/pubmatic/sdk/openwrap/core/POBRequestBuilder$a.class */
    public static /* synthetic */ class C1939a {

        /* renamed from: a */
        static final /* synthetic */ int[] f759a;

        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:10:0x002f -> B:16:0x001f). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:9:0x002b -> B:12:0x0014). Please submit an issue!!! */
        static {
            int[] iArr = new int[POBUserInfo.Gender.values().length];
            f759a = iArr;
            try {
                iArr[POBUserInfo.Gender.MALE.ordinal()] = 1;
            } catch (NoSuchFieldError e) {
            }
            try {
                f759a[POBUserInfo.Gender.FEMALE.ordinal()] = 2;
            } catch (NoSuchFieldError e2) {
            }
            try {
                f759a[POBUserInfo.Gender.OTHER.ordinal()] = 3;
            } catch (NoSuchFieldError e3) {
            }
        }
    }

    public POBRequestBuilder(POBRequest pOBRequest, String str, Context context) {
        this.f754c = context.getApplicationContext();
        this.f752a = str;
        this.f753b = pOBRequest;
        this.f755d = Boolean.valueOf((context.getApplicationInfo().flags & 2) != 0);
    }

    /* renamed from: a */
    private String m837a(Context context) {
        return PreferenceManager.getDefaultSharedPreferences(context).getString("IABUSPrivacy_String", null);
    }

    /* renamed from: a */
    private JSONObject m838a() {
        JSONObject jSONObject = new JSONObject();
        try {
            JSONObject jSONObject2 = new JSONObject();
            jSONObject2.put("profileid", this.f753b.getProfileId());
            if (this.f755d.booleanValue() && this.f753b.getVersionId() != null) {
                jSONObject2.put("versionid", this.f753b.getVersionId());
            }
            if (!this.f753b.m839a()) {
                jSONObject2.put("sumry_disable", 1);
            }
            jSONObject2.put("clientconfig", 1);
            if (POBInstanceProvider.getPartnerServices() != null) {
                jSONObject2.put(POBConstants.KEY_LOGINFO, 1);
            }
            jSONObject.put(POBConstants.KEY_WRAPPER, jSONObject2);
        } catch (JSONException e) {
            PMLog.error("POBRequestBuilder", "Exception occurred in getExtObject() : " + e.getMessage(), new Object[0]);
        }
        return jSONObject;
    }

    /* renamed from: b */
    private JSONObject m836b() {
        int accuracy;
        JSONObject jSONObject = new JSONObject();
        try {
            POBUserInfo userInfo = POBInstanceProvider.getSdkConfig().getUserInfo();
            if (userInfo != null) {
                addParamToJson(jSONObject, "region", userInfo.getRegion());
                addParamToJson(jSONObject, POBCommonConstants.USER_CITY, userInfo.getCity());
                addParamToJson(jSONObject, "metro", userInfo.getMetro());
                addParamToJson(jSONObject, POBCommonConstants.ZIP_PARAM, userInfo.getZip());
                addParamToJson(jSONObject, "country", userInfo.getCountry());
            }
            POBLocation location = POBUtils.getLocation(this.f756e);
            if (location != null) {
                jSONObject.put("type", location.getSource().getValue());
                jSONObject.put("lat", location.getLatitude());
                jSONObject.put("lon", location.getLongitude());
                if (location.getSource() == POBLocation.Source.GPS && (accuracy = (int) location.getAccuracy()) > 0) {
                    jSONObject.put("accuracy", accuracy);
                }
                long lastFixInMillis = location.getLastFixInMillis();
                if (lastFixInMillis > 0) {
                    jSONObject.put("lastfix", lastFixInMillis / 1000);
                }
            }
            POBDeviceInfo pOBDeviceInfo = this.f757f;
            if (pOBDeviceInfo != null) {
                jSONObject.put("utcoffset", pOBDeviceInfo.getTimeZoneOffsetInMinutes());
            }
        } catch (Exception e) {
            PMLog.error("POBRequestBuilder", "Exception occurred in getGeoObject() : " + e.getMessage(), new Object[0]);
        }
        return jSONObject;
    }

    /* renamed from: c */
    private JSONArray m835c() {
        JSONArray jSONArray = new JSONArray();
        POBImpression[] impressions = this.f753b.getImpressions();
        if (impressions != null) {
            for (POBImpression pOBImpression : impressions) {
                try {
                    jSONArray.put(pOBImpression.getImpressionJson());
                } catch (JSONException e) {
                    PMLog.error("POBRequestBuilder", "Exception occurred in getImpressionJson() : " + e.getMessage(), new Object[0]);
                }
            }
        }
        return jSONArray;
    }

    /* renamed from: d */
    private JSONObject m834d() {
        try {
            JSONObject jSONObject = new JSONObject();
            JSONObject jSONObject2 = new JSONObject();
            jSONObject2.putOpt("omidpn", POBCommonConstants.PARTNER_NAME);
            jSONObject2.putOpt("omidpv", "1.8.2");
            jSONObject.putOpt(POBConstants.KEY_EXTENSION, jSONObject2);
            return jSONObject;
        } catch (JSONException e) {
            PMLog.error("POBRequestBuilder", "Exception occurred in getMeasurementParam() : " + e.getMessage(), new Object[0]);
            return null;
        }
    }

    /* renamed from: e */
    private String m833e() {
        String adServerUrl = this.f753b.getAdServerUrl() != null ? this.f753b.getAdServerUrl() : this.f752a;
        String str = adServerUrl;
        if (this.f753b.isDebugStateEnabled()) {
            str = adServerUrl + "debug=1";
        }
        return str;
    }

    /* renamed from: f */
    private JSONObject m832f() {
        JSONObject jSONObject = new JSONObject();
        try {
            POBUserInfo userInfo = POBInstanceProvider.getSdkConfig().getUserInfo();
            if (userInfo != null) {
                if (userInfo.getGender() != null) {
                    int i = C1939a.f759a[userInfo.getGender().ordinal()];
                    jSONObject.put(POBCommonConstants.GENDER_PARAM, i != 1 ? i != 2 ? "O" : "F" : "M");
                }
                if (userInfo.getBirthYear() > 0) {
                    jSONObject.put(POBCommonConstants.YOB_PARAM, userInfo.getBirthYear());
                }
            }
            if (userInfo != null && !POBUtils.isNullOrEmpty(userInfo.getKeywords())) {
                jSONObject.put(POBCommonConstants.KEYWORDS_PARAM, userInfo.getKeywords());
            }
            if (!POBUtils.isNullOrEmpty(POBInstanceProvider.getSdkConfig().getGdprConsent())) {
                JSONObject jSONObject2 = new JSONObject();
                jSONObject2.put(POBConstants.KEY_GDPR_CONSENT, POBInstanceProvider.getSdkConfig().getGdprConsent());
                jSONObject.put(POBConstants.KEY_EXTENSION, jSONObject2);
            }
        } catch (Exception e) {
            PMLog.error("POBRequestBuilder", "Exception occurred in getUserJson() : " + e.getMessage(), new Object[0]);
        }
        return jSONObject;
    }

    /* renamed from: g */
    private void m831g() {
        POBDeviceInfo pOBDeviceInfo = this.f757f;
        if (pOBDeviceInfo != null) {
            pOBDeviceInfo.updateAdvertisingIdInfo();
        }
    }

    public void addParamToJson(JSONObject jSONObject, String str, String str2) {
        if (jSONObject == null || POBUtils.isNullOrEmpty(str2)) {
            return;
        }
        try {
            jSONObject.put(str, str2);
        } catch (JSONException e) {
            PMLog.warn("POBRequestBuilder", "Unable to add " + str + " and " + str2, new Object[0]);
        }
    }

    @Override // com.pubmatic.sdk.common.base.POBRequestBuilding
    public POBHttpRequest build() {
        return prepareHttpRequest(m833e(), getBody().toString(), POBConstants.ORTB_VERSION);
    }

    public JSONObject getAppJson(String str) {
        JSONObject jSONObject = new JSONObject();
        try {
            addParamToJson(jSONObject, "name", this.f758g.getAppName());
            addParamToJson(jSONObject, "bundle", this.f758g.getPackageName());
            POBApplicationInfo applicationInfo = POBInstanceProvider.getSdkConfig().getApplicationInfo();
            if (applicationInfo != null) {
                addParamToJson(jSONObject, "domain", applicationInfo.getDomain());
                if (applicationInfo.getStoreURL() != null) {
                    addParamToJson(jSONObject, POBCommonConstants.STORE_URL_PARAM, applicationInfo.getStoreURL().toString());
                } else {
                    PMLog.warn("POBRequestBuilder", "Missing \"storeURL\" in the request. It is required for platform identification", new Object[0]);
                }
                if (applicationInfo.isPaid() != null) {
                    jSONObject.put(POBCommonConstants.PAID_PARAM, applicationInfo.isPaid().booleanValue() ? 1 : 0);
                }
                if (applicationInfo.getCategories() != null) {
                    jSONObject.put("cat", new JSONArray(applicationInfo.getCategories().split(",")));
                }
                if (!POBUtils.isNullOrEmpty(applicationInfo.getKeywords())) {
                    jSONObject.put(POBCommonConstants.KEYWORDS_PARAM, applicationInfo.getKeywords());
                }
            }
            jSONObject.put("ver", this.f758g.getAppVersion());
            JSONObject jSONObject2 = new JSONObject();
            jSONObject2.put("id", str);
            jSONObject.put(POBConstants.KEY_PUBLISHER, jSONObject2);
        } catch (JSONException e) {
            PMLog.error("POBRequestBuilder", "Exception occurred in getAppJson() : " + e.getMessage(), new Object[0]);
        }
        return jSONObject;
    }

    public JSONObject getBody() {
        m831g();
        JSONObject jSONObject = new JSONObject();
        try {
            jSONObject.put("id", UUID.randomUUID().toString());
            jSONObject.put(POBConstants.KEY_AT, 1);
            jSONObject.put(POBConstants.KEY_CURRENCY, getCurrencyJson());
            jSONObject.put(POBConstants.KEY_IMPRESSION, m835c());
            jSONObject.put(POBConstants.KEY_APP, getAppJson(this.f753b.getPubId()));
            jSONObject.put(POBConstants.KEY_DEVICE, getDeviceObject());
            if (POBInstanceProvider.getSdkConfig().getHtmlMeasurementProvider() != null) {
                jSONObject.put("source", m834d());
            }
            JSONObject m832f = m832f();
            if (m832f != null && m832f.length() > 0) {
                jSONObject.put(POBConstants.KEY_USER, m832f);
            }
            if (this.f753b.getTestMode() != null && this.f753b.getTestMode().booleanValue()) {
                jSONObject.put(POBConstants.TEST_MODE, 1);
            }
            JSONObject regsJson = getRegsJson();
            if (regsJson != null && regsJson.length() > 0) {
                jSONObject.put(POBConstants.KEY_REGS, regsJson);
            }
            jSONObject.put(POBConstants.KEY_EXTENSION, m838a());
        } catch (JSONException e) {
            PMLog.error("POBRequestBuilder", "Exception occurred in getBody() : " + e.getMessage(), new Object[0]);
        }
        return jSONObject;
    }

    public JSONArray getCurrencyJson() {
        JSONArray jSONArray = new JSONArray();
        jSONArray.put("USD");
        return jSONArray;
    }

    public JSONObject getDeviceObject() {
        JSONObject jSONObject = new JSONObject();
        if (this.f757f != null) {
            try {
                jSONObject.put("geo", m836b());
                jSONObject.put(POBConstants.KEY_PXRATIO, this.f757f.getPxratio());
                jSONObject.put(POBConstants.KEY_MCCMNC, this.f757f.getMccmnc());
                if (this.f757f.getLmtEnabled() != null) {
                    jSONObject.put("lmt", this.f757f.getLmtEnabled().booleanValue() ? 1 : 0);
                }
                String advertisingID = this.f757f.getAdvertisingID();
                if (POBInstanceProvider.getSdkConfig().isAllowAdvertisingId() && advertisingID != null) {
                    jSONObject.put(POBConstants.KEY_IFA, advertisingID);
                }
                jSONObject.put(POBConstants.KEY_CONNECTION_TYPE, POBInstanceProvider.getNetworkMonitor(this.f754c).getConnectionType().getValue());
                addParamToJson(jSONObject, "carrier", this.f757f.getCarrierName());
                jSONObject.put("js", 1);
                jSONObject.put(POBConstants.KEY_USER_AGENT, this.f757f.getUserAgent());
                jSONObject.put("make", this.f757f.getMake());
                jSONObject.put("model", this.f757f.getModel());
                jSONObject.put("os", this.f757f.getOsName());
                jSONObject.put("osv", this.f757f.getOsVersion());
                jSONObject.put(POBConstants.KEY_H, this.f757f.getScreenHeight());
                jSONObject.put(POBConstants.KEY_W, this.f757f.getScreenWidth());
                jSONObject.put(POBConstants.KEY_LANGUAGE, this.f757f.getAcceptLanguage());
                if (POBUtils.isTablet(this.f754c)) {
                    jSONObject.put(POBConstants.KEY_DEVICE_TYPE, 5);
                } else {
                    jSONObject.put(POBConstants.KEY_DEVICE_TYPE, 4);
                }
            } catch (Exception e) {
                PMLog.error("POBRequestBuilder", "Exception occurred in getDeviceObject() : " + e.getMessage(), new Object[0]);
            }
        }
        return jSONObject;
    }

    public JSONObject getRegsJson() {
        try {
            JSONObject jSONObject = new JSONObject();
            if (POBInstanceProvider.getSdkConfig().isCoppa() != null) {
                jSONObject.put(POBCommonConstants.COPPA_PARAM, POBInstanceProvider.getSdkConfig().isCoppa().booleanValue() ? 1 : 0);
            }
            Boolean isGdprEnabled = POBInstanceProvider.getSdkConfig().isGdprEnabled();
            JSONObject jSONObject2 = new JSONObject();
            if (isGdprEnabled != null) {
                jSONObject2.put("gdpr", isGdprEnabled.booleanValue() ? 1 : 0);
            }
            String ccpa = POBInstanceProvider.getSdkConfig().getCCPA();
            String str = ccpa;
            if (POBUtils.isNullOrEmpty(ccpa)) {
                str = m837a(this.f754c);
            }
            if (!POBUtils.isNullOrEmpty(str)) {
                jSONObject2.put("us_privacy", str);
            }
            if (jSONObject2.length() != 0) {
                jSONObject.put(POBConstants.KEY_EXTENSION, jSONObject2);
            }
            return jSONObject;
        } catch (JSONException e) {
            PMLog.error("POBRequestBuilder", "Exception occurred in getRegsJson() : " + e.getMessage(), new Object[0]);
            return null;
        }
    }

    public POBHttpRequest prepareHttpRequest(String str, String str2, String str3) {
        HashMap hashMap = new HashMap();
        hashMap.put("Content-Type", POBCommonConstants.RESPONSE_HEADER_CONTENT_TYPE_JSON);
        if (str3 != null) {
            hashMap.put(POBConstants.ORTB_VERSION_PARAM, str3);
        }
        POBHttpRequest pOBHttpRequest = new POBHttpRequest();
        pOBHttpRequest.setRequestMethod(POBHttpRequest.HTTP_METHOD.POST);
        pOBHttpRequest.setPostData(str2);
        pOBHttpRequest.setUrl(str);
        pOBHttpRequest.setTimeout(this.f753b.getNetworkTimeout() * 1000);
        pOBHttpRequest.setRequestTag(String.valueOf(hashCode()));
        pOBHttpRequest.setHeaders(hashMap);
        return pOBHttpRequest;
    }

    @Override // com.pubmatic.sdk.common.base.POBRequestBuilding
    public void setAppInfo(POBAppInfo pOBAppInfo) {
        this.f758g = pOBAppInfo;
    }

    @Override // com.pubmatic.sdk.common.base.POBRequestBuilding
    public void setDeviceInfo(POBDeviceInfo pOBDeviceInfo) {
        this.f757f = pOBDeviceInfo;
    }

    @Override // com.pubmatic.sdk.common.base.POBRequestBuilding
    public void setLocationDetector(POBLocationDetector pOBLocationDetector) {
        this.f756e = pOBLocationDetector;
    }
}

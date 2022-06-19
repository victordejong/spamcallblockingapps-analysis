package com.google.firebase.crashlytics.internal.settings.network;

import android.text.TextUtils;
import com.google.firebase.crashlytics.internal.Logger;
import com.google.firebase.crashlytics.internal.common.CrashlyticsCore;
import com.google.firebase.crashlytics.internal.network.HttpGetRequest;
import com.google.firebase.crashlytics.internal.network.HttpRequestFactory;
import com.google.firebase.crashlytics.internal.network.HttpResponse;
import com.google.firebase.crashlytics.internal.settings.model.SettingsRequest;
import java.io.IOException;
import java.util.HashMap;
import java.util.Map;
import org.json.JSONObject;
/* loaded from: classes4-dex2jar.jar:com/google/firebase/crashlytics/internal/settings/network/DefaultSettingsSpiCall.class */
public class DefaultSettingsSpiCall implements SettingsSpiCall {
    static final String ACCEPT_JSON_VALUE = "application/json";
    static final String ANDROID_CLIENT_TYPE = "android";
    static final String BUILD_VERSION_PARAM = "build_version";
    static final String CRASHLYTICS_USER_AGENT = "Crashlytics Android SDK/";
    static final String DISPLAY_VERSION_PARAM = "display_version";
    static final String HEADER_ACCEPT = "Accept";
    static final String HEADER_CLIENT_TYPE = "X-CRASHLYTICS-API-CLIENT-TYPE";
    static final String HEADER_CLIENT_VERSION = "X-CRASHLYTICS-API-CLIENT-VERSION";
    static final String HEADER_DEVICE_MODEL = "X-CRASHLYTICS-DEVICE-MODEL";
    static final String HEADER_GOOGLE_APP_ID = "X-CRASHLYTICS-GOOGLE-APP-ID";
    static final String HEADER_INSTALLATION_ID = "X-CRASHLYTICS-INSTALLATION-ID";
    static final String HEADER_OS_BUILD_VERSION = "X-CRASHLYTICS-OS-BUILD-VERSION";
    static final String HEADER_OS_DISPLAY_VERSION = "X-CRASHLYTICS-OS-DISPLAY-VERSION";
    static final String HEADER_USER_AGENT = "User-Agent";
    static final String INSTANCE_PARAM = "instance";
    static final String SOURCE_PARAM = "source";
    private final Logger logger;
    private final HttpRequestFactory requestFactory;
    private final String url;

    public DefaultSettingsSpiCall(String str, HttpRequestFactory httpRequestFactory) {
        this(str, httpRequestFactory, Logger.getLogger());
    }

    DefaultSettingsSpiCall(String str, HttpRequestFactory httpRequestFactory, Logger logger) {
        if (str != null) {
            this.logger = logger;
            this.requestFactory = httpRequestFactory;
            this.url = str;
            return;
        }
        throw new IllegalArgumentException("url must not be null.");
    }

    private HttpGetRequest applyHeadersTo(HttpGetRequest httpGetRequest, SettingsRequest settingsRequest) {
        applyNonNullHeader(httpGetRequest, HEADER_GOOGLE_APP_ID, settingsRequest.googleAppId);
        applyNonNullHeader(httpGetRequest, HEADER_CLIENT_TYPE, "android");
        applyNonNullHeader(httpGetRequest, HEADER_CLIENT_VERSION, CrashlyticsCore.getVersion());
        applyNonNullHeader(httpGetRequest, HEADER_ACCEPT, ACCEPT_JSON_VALUE);
        applyNonNullHeader(httpGetRequest, HEADER_DEVICE_MODEL, settingsRequest.deviceModel);
        applyNonNullHeader(httpGetRequest, HEADER_OS_BUILD_VERSION, settingsRequest.osBuildVersion);
        applyNonNullHeader(httpGetRequest, HEADER_OS_DISPLAY_VERSION, settingsRequest.osDisplayVersion);
        applyNonNullHeader(httpGetRequest, HEADER_INSTALLATION_ID, settingsRequest.installIdProvider.getCrashlyticsInstallId());
        return httpGetRequest;
    }

    private void applyNonNullHeader(HttpGetRequest httpGetRequest, String str, String str2) {
        if (str2 != null) {
            httpGetRequest.header(str, str2);
        }
    }

    private JSONObject getJsonObjectFrom(String str) {
        try {
            return new JSONObject(str);
        } catch (Exception e) {
            Logger logger = this.logger;
            logger.m8479w("Failed to parse settings JSON from " + this.url, e);
            this.logger.m8480w("Settings response ".concat(String.valueOf(str)));
            return null;
        }
    }

    private Map<String, String> getQueryParamsFor(SettingsRequest settingsRequest) {
        HashMap hashMap = new HashMap();
        hashMap.put(BUILD_VERSION_PARAM, settingsRequest.buildVersion);
        hashMap.put(DISPLAY_VERSION_PARAM, settingsRequest.displayVersion);
        hashMap.put("source", Integer.toString(settingsRequest.source));
        String str = settingsRequest.instanceId;
        if (!TextUtils.isEmpty(str)) {
            hashMap.put(INSTANCE_PARAM, str);
        }
        return hashMap;
    }

    protected HttpGetRequest createHttpGetRequest(Map<String, String> map) {
        HttpGetRequest buildHttpGetRequest = this.requestFactory.buildHttpGetRequest(this.url, map);
        return buildHttpGetRequest.header(HEADER_USER_AGENT, CRASHLYTICS_USER_AGENT + CrashlyticsCore.getVersion()).header("X-CRASHLYTICS-DEVELOPER-TOKEN", "470fa2b4ae81cd56ecbcda9735803434cec591fa");
    }

    JSONObject handleResponse(HttpResponse httpResponse) {
        JSONObject jSONObject;
        int code = httpResponse.code();
        this.logger.m8482v("Settings response code was: ".concat(String.valueOf(code)));
        if (requestWasSuccessful(code)) {
            jSONObject = getJsonObjectFrom(httpResponse.body());
        } else {
            Logger logger = this.logger;
            logger.m8486e("Settings request failed; (status: " + code + ") from " + this.url);
            jSONObject = null;
        }
        return jSONObject;
    }

    @Override // com.google.firebase.crashlytics.internal.settings.network.SettingsSpiCall
    public JSONObject invoke(SettingsRequest settingsRequest, boolean z) {
        JSONObject jSONObject;
        if (z) {
            try {
                Map<String, String> queryParamsFor = getQueryParamsFor(settingsRequest);
                HttpGetRequest applyHeadersTo = applyHeadersTo(createHttpGetRequest(queryParamsFor), settingsRequest);
                this.logger.m8488d("Requesting settings from " + this.url);
                this.logger.m8482v("Settings query params were: ".concat(String.valueOf(queryParamsFor)));
                jSONObject = handleResponse(applyHeadersTo.execute());
            } catch (IOException e) {
                this.logger.m8485e("Settings request failed.", e);
                jSONObject = null;
            }
            return jSONObject;
        }
        throw new RuntimeException("An invalid data collection token was used.");
    }

    boolean requestWasSuccessful(int i) {
        return i == 200 || i == 201 || i == 202 || i == 203;
    }
}

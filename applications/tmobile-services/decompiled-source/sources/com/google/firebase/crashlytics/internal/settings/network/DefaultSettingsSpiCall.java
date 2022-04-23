package com.google.firebase.crashlytics.internal.settings.network;

import com.google.firebase.crashlytics.internal.Logger;
import com.google.firebase.crashlytics.internal.common.AbstractSpiCall;
import com.google.firebase.crashlytics.internal.common.CommonUtils;
import com.google.firebase.crashlytics.internal.common.CrashlyticsCore;
import com.google.firebase.crashlytics.internal.network.HttpMethod;
import com.google.firebase.crashlytics.internal.network.HttpRequest;
import com.google.firebase.crashlytics.internal.network.HttpRequestFactory;
import com.google.firebase.crashlytics.internal.network.HttpResponse;
import com.google.firebase.crashlytics.internal.settings.model.SettingsRequest;
import java.io.IOException;
import java.util.HashMap;
import java.util.Map;
import org.json.JSONObject;
/* loaded from: classes-dex2jar.jar:com/google/firebase/crashlytics/internal/settings/network/DefaultSettingsSpiCall.class */
public class DefaultSettingsSpiCall extends AbstractSpiCall implements SettingsSpiCall {
    static final String BUILD_VERSION_PARAM = "build_version";
    static final String DISPLAY_VERSION_PARAM = "display_version";
    static final String HEADER_DEVICE_MODEL = "X-CRASHLYTICS-DEVICE-MODEL";
    static final String HEADER_INSTALLATION_ID = "X-CRASHLYTICS-INSTALLATION-ID";
    static final String HEADER_OS_BUILD_VERSION = "X-CRASHLYTICS-OS-BUILD-VERSION";
    static final String HEADER_OS_DISPLAY_VERSION = "X-CRASHLYTICS-OS-DISPLAY-VERSION";
    static final String INSTANCE_PARAM = "instance";
    static final String SOURCE_PARAM = "source";
    private Logger logger;

    public DefaultSettingsSpiCall(String str, String str2, HttpRequestFactory httpRequestFactory) {
        this(str, str2, httpRequestFactory, HttpMethod.GET, Logger.getLogger());
    }

    DefaultSettingsSpiCall(String str, String str2, HttpRequestFactory httpRequestFactory, HttpMethod httpMethod, Logger logger) {
        super(str, str2, httpRequestFactory, httpMethod);
        this.logger = logger;
    }

    private HttpRequest applyHeadersTo(HttpRequest httpRequest, SettingsRequest settingsRequest) {
        applyNonNullHeader(httpRequest, AbstractSpiCall.HEADER_GOOGLE_APP_ID, settingsRequest.googleAppId);
        applyNonNullHeader(httpRequest, AbstractSpiCall.HEADER_CLIENT_TYPE, AbstractSpiCall.ANDROID_CLIENT_TYPE);
        applyNonNullHeader(httpRequest, AbstractSpiCall.HEADER_CLIENT_VERSION, CrashlyticsCore.getVersion());
        applyNonNullHeader(httpRequest, AbstractSpiCall.HEADER_ACCEPT, AbstractSpiCall.ACCEPT_JSON_VALUE);
        applyNonNullHeader(httpRequest, HEADER_DEVICE_MODEL, settingsRequest.deviceModel);
        applyNonNullHeader(httpRequest, HEADER_OS_BUILD_VERSION, settingsRequest.osBuildVersion);
        applyNonNullHeader(httpRequest, HEADER_OS_DISPLAY_VERSION, settingsRequest.osDisplayVersion);
        applyNonNullHeader(httpRequest, HEADER_INSTALLATION_ID, settingsRequest.installIdProvider.getCrashlyticsInstallId());
        return httpRequest;
    }

    private void applyNonNullHeader(HttpRequest httpRequest, String str, String str2) {
        if (str2 != null) {
            httpRequest.header(str, str2);
        }
    }

    private JSONObject getJsonObjectFrom(String str) {
        try {
            return new JSONObject(str);
        } catch (Exception e) {
            Logger logger = this.logger;
            logger.m8449d("Failed to parse settings JSON from " + getUrl(), e);
            Logger logger2 = this.logger;
            logger2.m8450d("Settings response " + str);
            return null;
        }
    }

    private Map<String, String> getQueryParamsFor(SettingsRequest settingsRequest) {
        HashMap hashMap = new HashMap();
        hashMap.put(BUILD_VERSION_PARAM, settingsRequest.buildVersion);
        hashMap.put(DISPLAY_VERSION_PARAM, settingsRequest.displayVersion);
        hashMap.put("source", Integer.toString(settingsRequest.source));
        String str = settingsRequest.instanceId;
        if (!CommonUtils.isNullOrEmpty(str)) {
            hashMap.put(INSTANCE_PARAM, str);
        }
        return hashMap;
    }

    JSONObject handleResponse(HttpResponse httpResponse) {
        JSONObject jSONObject;
        int code = httpResponse.code();
        Logger logger = this.logger;
        logger.m8450d("Settings result was: " + code);
        if (requestWasSuccessful(code)) {
            jSONObject = getJsonObjectFrom(httpResponse.body());
        } else {
            Logger logger2 = this.logger;
            logger2.m8448e("Failed to retrieve settings from " + getUrl());
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
                HttpRequest applyHeadersTo = applyHeadersTo(getHttpRequest(queryParamsFor), settingsRequest);
                Logger logger = this.logger;
                logger.m8450d("Requesting settings from " + getUrl());
                Logger logger2 = this.logger;
                logger2.m8450d("Settings query params were: " + queryParamsFor);
                HttpResponse execute = applyHeadersTo.execute();
                Logger logger3 = this.logger;
                logger3.m8450d("Settings request ID: " + execute.header(AbstractSpiCall.HEADER_REQUEST_ID));
                jSONObject = handleResponse(execute);
            } catch (IOException e) {
                this.logger.m8447e("Settings request failed.", e);
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

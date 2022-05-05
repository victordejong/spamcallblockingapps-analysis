package com.apptentive.android.sdk.comm;

import com.apptentive.android.sdk.debug.Assert;
import com.apptentive.android.sdk.model.ConversationTokenRequest;
import com.apptentive.android.sdk.model.PayloadData;
import com.apptentive.android.sdk.network.HttpJsonRequest;
import com.apptentive.android.sdk.network.HttpRequest;
import com.apptentive.android.sdk.network.HttpRequestManager;
import com.apptentive.android.sdk.network.HttpRequestMethod;
import com.apptentive.android.sdk.network.RawHttpRequest;
import com.apptentive.android.sdk.storage.AppRelease;
import com.apptentive.android.sdk.storage.AppReleaseManager;
import com.apptentive.android.sdk.storage.Device;
import com.apptentive.android.sdk.storage.DeviceManager;
import com.apptentive.android.sdk.storage.PayloadRequestSender;
import com.apptentive.android.sdk.storage.Sdk;
import com.apptentive.android.sdk.storage.SdkManager;
import com.apptentive.android.sdk.util.Constants;
import com.apptentive.android.sdk.util.StringUtils;
import org.json.JSONException;
import org.json.JSONObject;
/* loaded from: classes-dex2jar.jar:com/apptentive/android/sdk/comm/ApptentiveHttpClient.class */
public class ApptentiveHttpClient implements PayloadRequestSender {
    private static final int DEFAULT_HTTP_CONNECT_TIMEOUT = 45000;
    private static final int DEFAULT_HTTP_SOCKET_TIMEOUT = 45000;
    private static final String ENDPOINT_CONFIGURATION = "/conversations/%s/configuration";
    private static final String ENDPOINT_CONVERSATION = "/conversation";
    private static final String ENDPOINT_INTERACTIONS = "/conversations/%s/interactions";
    private static final String ENDPOINT_LEGACY_CONVERSATION = "/conversation/token";
    private static final String ENDPOINT_LOG_IN_TO_EXISTING_CONVERSATION = "/conversations/%s/session";
    private static final String ENDPOINT_LOG_IN_TO_NEW_CONVERSATION = "/conversations";
    private static final String ENDPOINT_MESSAGES = "/conversations/%s/messages?count=%s&starts_after=%s&before_id=%s";
    public static final String USER_AGENT_STRING = "Apptentive/%s (Android)";
    private final String apptentiveKey;
    private final String apptentiveSignature;
    private final String serverURL;
    private final String userAgentString;

    public ApptentiveHttpClient(String str, String str2, String str3) {
        if (StringUtils.isNullOrEmpty(str)) {
            throw new IllegalArgumentException("Illegal Apptentive Key: '" + str + "'");
        } else if (StringUtils.isNullOrEmpty(str2)) {
            throw new IllegalArgumentException("Illegal Apptentive Signature: '" + str2 + "'");
        } else if (StringUtils.isNullOrEmpty(str3)) {
            throw new IllegalArgumentException("Illegal server URL: '" + str3 + "'");
        } else {
            this.apptentiveKey = str;
            this.apptentiveSignature = str2;
            this.serverURL = str3;
            this.userAgentString = String.format(USER_AGENT_STRING, Constants.getApptentiveSdkVersion());
        }
    }

    private String createEndpointURL(String str) {
        return this.serverURL + str;
    }

    private HttpJsonRequest createJsonRequest(String str, JSONObject jSONObject, HttpRequestMethod httpRequestMethod) {
        if (str == null) {
            throw new IllegalArgumentException("Endpoint is null");
        } else if (jSONObject == null) {
            throw new IllegalArgumentException("Json is null");
        } else if (httpRequestMethod == null) {
            throw new IllegalArgumentException("Method is null");
        } else {
            HttpJsonRequest httpJsonRequest = new HttpJsonRequest(createEndpointURL(str), jSONObject);
            setupRequestDefaults(httpJsonRequest);
            httpJsonRequest.setMethod(httpRequestMethod);
            httpJsonRequest.setRequestProperty("Content-Type", "application/json");
            return httpJsonRequest;
        }
    }

    private HttpRequest createPayloadRequest(PayloadData payloadData) {
        String authToken = payloadData.getAuthToken();
        RawHttpRequest createRawRequest = createRawRequest((String) Assert.notNull(payloadData.getHttpRequestPath()), payloadData.getData(), (HttpRequestMethod) Assert.notNull(payloadData.getHttpRequestMethod()), (String) Assert.notNull(payloadData.getContentType()));
        if (!StringUtils.isNullOrEmpty(authToken)) {
            createRawRequest.setRequestProperty("Authorization", "Bearer " + authToken);
        }
        if (payloadData.isAuthenticated()) {
            createRawRequest.setRequestProperty("APPTENTIVE-ENCRYPTED", Boolean.TRUE);
        }
        return createRawRequest;
    }

    private RawHttpRequest createRawRequest(String str, byte[] bArr, HttpRequestMethod httpRequestMethod, String str2) {
        if (str == null) {
            throw new IllegalArgumentException("Endpoint is null");
        } else if (bArr == null) {
            throw new IllegalArgumentException("Payload is null");
        } else if (httpRequestMethod == null) {
            throw new IllegalArgumentException("Method is null");
        } else if (str2 == null) {
            throw new IllegalArgumentException("ContentType is null");
        } else {
            RawHttpRequest rawHttpRequest = new RawHttpRequest(createEndpointURL(str), bArr);
            setupRequestDefaults(rawHttpRequest);
            rawHttpRequest.setMethod(httpRequestMethod);
            rawHttpRequest.setRequestProperty("Content-Type", str2);
            return rawHttpRequest;
        }
    }

    private void setupRequestDefaults(HttpRequest httpRequest) {
        httpRequest.setRequestManager(HttpRequestManager.sharedManager());
        httpRequest.setRequestProperty("User-Agent", this.userAgentString);
        httpRequest.setRequestProperty("Connection", "Keep-Alive");
        httpRequest.setRequestProperty(io.fabric.sdk.android.services.network.HttpRequest.HEADER_ACCEPT_ENCODING, io.fabric.sdk.android.services.network.HttpRequest.ENCODING_GZIP);
        httpRequest.setRequestProperty("Accept", "application/json");
        httpRequest.setRequestProperty("APPTENTIVE-KEY", this.apptentiveKey);
        httpRequest.setRequestProperty("APPTENTIVE-SIGNATURE", this.apptentiveSignature);
        httpRequest.setRequestProperty("X-API-Version", String.valueOf(9));
        httpRequest.setConnectTimeout(45000);
        httpRequest.setReadTimeout(45000);
    }

    public HttpJsonRequest createAppConfigurationRequest(String str, String str2, HttpRequest.Listener<HttpJsonRequest> listener) {
        if (StringUtils.isNullOrEmpty(str)) {
            throw new IllegalArgumentException("Conversation id is null or empty");
        } else if (StringUtils.isNullOrEmpty(str2)) {
            throw new IllegalArgumentException("Conversation token is null or empty");
        } else {
            HttpJsonRequest createJsonRequest = createJsonRequest(StringUtils.format(ENDPOINT_CONFIGURATION, str), new JSONObject(), HttpRequestMethod.GET);
            createJsonRequest.setRequestProperty("Authorization", "Bearer " + str2);
            createJsonRequest.addListener(listener);
            return createJsonRequest;
        }
    }

    public HttpJsonRequest createConversationTokenRequest(ConversationTokenRequest conversationTokenRequest, HttpRequest.Listener<HttpJsonRequest> listener) {
        HttpJsonRequest createJsonRequest = createJsonRequest(ENDPOINT_CONVERSATION, conversationTokenRequest, HttpRequestMethod.POST);
        createJsonRequest.addListener(listener);
        return createJsonRequest;
    }

    public HttpJsonRequest createFetchInteractionsRequest(String str, String str2, HttpRequest.Listener<HttpJsonRequest> listener) {
        if (StringUtils.isNullOrEmpty(str)) {
            throw new IllegalArgumentException("Conversation token is null or empty");
        } else if (StringUtils.isNullOrEmpty(str2)) {
            throw new IllegalArgumentException("Conversation id is null or empty");
        } else {
            HttpJsonRequest createJsonRequest = createJsonRequest(StringUtils.format(ENDPOINT_INTERACTIONS, str2), new JSONObject(), HttpRequestMethod.GET);
            createJsonRequest.setRequestProperty("Authorization", "Bearer " + str);
            createJsonRequest.addListener(listener);
            return createJsonRequest;
        }
    }

    public HttpJsonRequest createFetchMessagesRequest(String str, String str2, String str3, String str4, Integer num, HttpRequest.Listener<HttpJsonRequest> listener) {
        if (StringUtils.isNullOrEmpty(str)) {
            throw new IllegalArgumentException("Conversation token is null or empty");
        } else if (StringUtils.isNullOrEmpty(str2)) {
            throw new IllegalArgumentException("Conversation id is null or empty");
        } else {
            String num2 = num == null ? "" : num.toString();
            String str5 = str3;
            if (str3 == null) {
                str5 = "";
            }
            String str6 = str4;
            if (str4 == null) {
                str6 = "";
            }
            HttpJsonRequest createJsonRequest = createJsonRequest(String.format(ENDPOINT_MESSAGES, str2, num2, str5, str6), new JSONObject(), HttpRequestMethod.GET);
            createJsonRequest.setRequestProperty("Authorization", "Bearer " + str);
            createJsonRequest.addListener(listener);
            return createJsonRequest;
        }
    }

    public HttpJsonRequest createFirstLoginRequest(String str, AppRelease appRelease, Sdk sdk, Device device, HttpRequest.Listener<HttpJsonRequest> listener) {
        if (str == null) {
            throw new IllegalArgumentException("Token is null");
        }
        ConversationTokenRequest conversationTokenRequest = new ConversationTokenRequest();
        conversationTokenRequest.setSdkAndAppRelease(SdkManager.getPayload(sdk), AppReleaseManager.getPayload(appRelease));
        conversationTokenRequest.setDevice(DeviceManager.getDiffPayload(null, device));
        try {
            conversationTokenRequest.put("token", str);
        } catch (JSONException e) {
        }
        HttpJsonRequest createJsonRequest = createJsonRequest(ENDPOINT_LOG_IN_TO_NEW_CONVERSATION, conversationTokenRequest, HttpRequestMethod.POST);
        createJsonRequest.addListener(listener);
        return createJsonRequest;
    }

    public HttpJsonRequest createLegacyConversationIdRequest(String str, HttpRequest.Listener<HttpJsonRequest> listener) {
        if (StringUtils.isNullOrEmpty(str)) {
            throw new IllegalArgumentException("Conversation token is null or empty");
        }
        HttpJsonRequest createJsonRequest = createJsonRequest(ENDPOINT_LEGACY_CONVERSATION, new JSONObject(), HttpRequestMethod.GET);
        createJsonRequest.setRequestProperty("Authorization", "OAuth " + str);
        createJsonRequest.addListener(listener);
        return createJsonRequest;
    }

    public HttpJsonRequest createLoginRequest(String str, String str2, HttpRequest.Listener<HttpJsonRequest> listener) {
        if (str2 == null) {
            throw new IllegalArgumentException("Token is null");
        }
        JSONObject jSONObject = new JSONObject();
        try {
            jSONObject.put("token", str2);
        } catch (JSONException e) {
        }
        HttpJsonRequest createJsonRequest = createJsonRequest(str == null ? ENDPOINT_LOG_IN_TO_NEW_CONVERSATION : StringUtils.format(ENDPOINT_LOG_IN_TO_EXISTING_CONVERSATION, str), jSONObject, HttpRequestMethod.POST);
        createJsonRequest.addListener(listener);
        return createJsonRequest;
    }

    @Override // com.apptentive.android.sdk.storage.PayloadRequestSender
    public HttpRequest createPayloadSendRequest(PayloadData payloadData, HttpRequest.Listener<HttpRequest> listener) {
        if (payloadData == null) {
            throw new IllegalArgumentException("Payload is null");
        }
        HttpRequest createPayloadRequest = createPayloadRequest(payloadData);
        createPayloadRequest.addListener(listener);
        return createPayloadRequest;
    }

    public HttpRequest findRequest(String str) {
        return HttpRequestManager.sharedManager().findRequest(str);
    }
}

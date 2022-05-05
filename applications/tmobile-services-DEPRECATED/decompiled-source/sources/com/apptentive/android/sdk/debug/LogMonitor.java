package com.apptentive.android.sdk.debug;

import android.content.Context;
import androidx.annotation.Nullable;
import com.apptentive.android.sdk.ApptentiveHelper;
import com.apptentive.android.sdk.ApptentiveLog;
import com.apptentive.android.sdk.ApptentiveLogTag;
import com.apptentive.android.sdk.network.HttpJsonRequest;
import com.apptentive.android.sdk.network.HttpRequest;
import com.apptentive.android.sdk.network.HttpRequestManager;
import com.apptentive.android.sdk.network.HttpRequestMethod;
import com.apptentive.android.sdk.network.HttpRequestRetryPolicy;
import com.apptentive.android.sdk.network.HttpRequestRetryPolicyDefault;
import com.apptentive.android.sdk.util.Constants;
import com.apptentive.android.sdk.util.StringUtils;
import com.apptentive.android.sdk.util.Util;
import com.apptentive.android.sdk.util.threading.DispatchTask;
import com.facebook.stetho.server.http.HttpHeaders;
import com.google.firebase.crashlytics.internal.common.AbstractSpiCall;
import org.json.JSONException;
import org.json.JSONObject;
/* loaded from: classes-dex2jar.jar:com/apptentive/android/sdk/debug/LogMonitor.class */
public final class LogMonitor {
    @Nullable
    private static LogMonitorSession currentSession;

    private LogMonitor() {
    }

    private static HttpRequest createTokenVerificationRequest(String str, String str2, String str3, HttpRequest.Listener<HttpJsonRequest> listener) {
        HttpJsonRequest httpJsonRequest = new HttpJsonRequest("https://api.apptentive.com/debug_token/verify", createVerityRequestObject(str3));
        httpJsonRequest.setTag("VERIFICATION_REQUEST");
        httpJsonRequest.setMethod(HttpRequestMethod.POST);
        httpJsonRequest.setRequestManager(HttpRequestManager.sharedManager());
        httpJsonRequest.setRequestProperty("X-API-Version", 9);
        httpJsonRequest.setRequestProperty("APPTENTIVE-KEY", str);
        httpJsonRequest.setRequestProperty("APPTENTIVE-SIGNATURE", str2);
        httpJsonRequest.setRequestProperty(HttpHeaders.CONTENT_TYPE, AbstractSpiCall.ACCEPT_JSON_VALUE);
        httpJsonRequest.setRequestProperty(AbstractSpiCall.HEADER_ACCEPT, AbstractSpiCall.ACCEPT_JSON_VALUE);
        httpJsonRequest.setRequestProperty(AbstractSpiCall.HEADER_USER_AGENT, String.format("Apptentive/%s (Android)", Constants.getApptentiveSdkVersion()));
        httpJsonRequest.setRetryPolicy(createVerityRequestRetryPolicy());
        httpJsonRequest.addListener(listener);
        return httpJsonRequest;
    }

    private static JSONObject createVerityRequestObject(String str) {
        try {
            JSONObject jSONObject = new JSONObject();
            jSONObject.put("debug_token", str);
            return jSONObject;
        } catch (JSONException e) {
            throw new IllegalArgumentException("Token is invalid:" + str, e);
        }
    }

    private static HttpRequestRetryPolicy createVerityRequestRetryPolicy() {
        return new HttpRequestRetryPolicyDefault() { // from class: com.apptentive.android.sdk.debug.LogMonitor.4
            @Override // com.apptentive.android.sdk.network.HttpRequestRetryPolicyDefault, com.apptentive.android.sdk.network.HttpRequestRetryPolicy
            public boolean shouldRetryRequest(int i, int i2) {
                return false;
            }
        };
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static void logException(Exception exc) {
        ErrorMetrics.logException(exc);
    }

    @Nullable
    private static String readAccessTokenFromClipboard(Context context) {
        String clipboardText = Util.getClipboardText(context);
        if (StringUtils.isNullOrEmpty(clipboardText)) {
            return null;
        }
        String replaceAll = clipboardText.replaceAll("\\s+", "");
        if (!replaceAll.startsWith("com.apptentive.debug:")) {
            return null;
        }
        return replaceAll.substring(21);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static void startSession(Context context, LogMonitorSession logMonitorSession) {
        currentSession = logMonitorSession;
        logMonitorSession.start(context);
    }

    public static void startSession(final Context context, final String str, final String str2) {
        ApptentiveHelper.dispatchOnConversationQueue(new DispatchTask() { // from class: com.apptentive.android.sdk.debug.LogMonitor.1
            @Override // com.apptentive.android.sdk.util.threading.DispatchTask
            protected void execute() {
                try {
                    LogMonitor.startSessionGuarded(context, str, str2);
                } catch (Exception e) {
                    ApptentiveLog.m15643e(ApptentiveLogTag.TROUBLESHOOT, e, "Unable to start Apptentive Log Monitor", new Object[0]);
                    LogMonitor.logException(e);
                }
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static void startSessionGuarded(final Context context, String str, String str2) {
        ApptentiveHelper.checkConversationQueue();
        if (currentSession == null) {
            LogMonitorSession readCurrentSession = LogMonitorSessionIO.readCurrentSession(context);
            if (readCurrentSession != null) {
                ApptentiveLog.m15640i(ApptentiveLogTag.TROUBLESHOOT, "Previous Apptentive Log Monitor session loaded from persistent storage: %s", readCurrentSession);
                startSession(context, readCurrentSession);
                return;
            }
            final String readAccessTokenFromClipboard = readAccessTokenFromClipboard(context);
            if (readAccessTokenFromClipboard == null) {
                ApptentiveLog.m15638v(ApptentiveLogTag.TROUBLESHOOT, "No access token found in clipboard", new Object[0]);
                return;
            }
            Util.setClipboardText(context, "");
            if (HttpRequestManager.sharedManager().findRequest("VERIFICATION_REQUEST") != null) {
                ApptentiveLog.m15638v(ApptentiveLogTag.TROUBLESHOOT, "Another access token verification request is running", new Object[0]);
                return;
            }
            HttpRequest createTokenVerificationRequest = createTokenVerificationRequest(str, str2, readAccessTokenFromClipboard, new HttpRequest.Adapter<HttpJsonRequest>() { // from class: com.apptentive.android.sdk.debug.LogMonitor.2
                public void onFail(HttpJsonRequest httpJsonRequest, String str3) {
                    ApptentiveLog.m15644e(ApptentiveLogTag.TROUBLESHOOT, "Unable to start Apptentive Log Monitor: failed to verify the access token (%s)\n%s", readAccessTokenFromClipboard, str3);
                    Util.showToast(context, "Can't verify token", 1);
                }

                public void onFinish(HttpJsonRequest httpJsonRequest) {
                    ApptentiveHelper.checkConversationQueue();
                    if (!httpJsonRequest.getResponseObject().optBoolean("valid", false)) {
                        ApptentiveLog.m15635w(ApptentiveLogTag.TROUBLESHOOT, "Unable to start Apptentive Log Monitor: the access token was rejected on the server (%s)", readAccessTokenFromClipboard);
                        Util.showToast(context, "Token rejected", 1);
                        return;
                    }
                    LogMonitorSession readSessionFromJWT = LogMonitorSessionIO.readSessionFromJWT(readAccessTokenFromClipboard);
                    if (readSessionFromJWT == null) {
                        ApptentiveLog.m15635w(ApptentiveLogTag.TROUBLESHOOT, "Unable to start Apptentive Log Monitor: failed to parse the access token (%s)", readAccessTokenFromClipboard);
                        Util.showToast(context, "Token invalid", 1);
                        return;
                    }
                    LogMonitorSessionIO.saveCurrentSession(context, readSessionFromJWT);
                    LogMonitor.startSession(context, readSessionFromJWT);
                }
            });
            createTokenVerificationRequest.setCallbackQueue(ApptentiveHelper.conversationQueue());
            createTokenVerificationRequest.start();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static void stopSession(final Context context) {
        ApptentiveHelper.dispatchOnConversationQueue(new DispatchTask() { // from class: com.apptentive.android.sdk.debug.LogMonitor.3
            @Override // com.apptentive.android.sdk.util.threading.DispatchTask
            protected void execute() {
                if (LogMonitor.currentSession != null) {
                    LogMonitor.currentSession.stop();
                    LogMonitorSession unused = LogMonitor.currentSession = null;
                }
                LogMonitorSessionIO.deleteCurrentSession(context);
            }
        });
    }
}

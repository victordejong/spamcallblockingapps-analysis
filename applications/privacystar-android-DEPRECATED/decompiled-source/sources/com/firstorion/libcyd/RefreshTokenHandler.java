package com.firstorion.libcyd;

import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.os.Build;
import android.util.Log;
import io.fabric.sdk.android.services.common.AbstractSpiCall;
import io.fabric.sdk.android.services.network.HttpRequest;
import java.io.OutputStream;
import java.io.OutputStreamWriter;
import java.net.HttpURLConnection;
import java.util.Locale;
import java.util.UUID;
import org.json.JSONObject;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes-dex2jar.jar:com/firstorion/libcyd/RefreshTokenHandler.class */
public final class RefreshTokenHandler {
    private static final String CYD_REFRESH_TOKEN_ACTION = "cyd:refresh_token:request";
    private static final String CYD_REFRESH_TOKEN_EXTRA_APIKEY = "cyd:refresh_token:request:apikey";
    private static final String CYD_REFRESH_TOKEN_EXTRA_TOKEN = "cyd:refresh_token:request:token";

    private RefreshTokenHandler() {
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static void addFilters(IntentFilter intentFilter) {
        intentFilter.addAction(CYD_REFRESH_TOKEN_ACTION);
    }

    private static void doRefreshToken(Context context, final Intent intent) {
        Log.d("libcyd.app", "Refreshing push token.");
        final CYDApplication instance = CYDApplication.getInstance();
        final Context applicationContext = context.getApplicationContext();
        final String stringExtra = intent.getStringExtra(CYD_REFRESH_TOKEN_EXTRA_TOKEN);
        final CYDApplicationParams instance2 = CYDApplicationParams.getInstance(applicationContext);
        final String uuid = UUID.randomUUID().toString();
        Globals.THREAD_POOL.execute(new Runnable() { // from class: com.firstorion.libcyd.RefreshTokenHandler.1
            @Override // java.lang.Runnable
            public void run() {
                Throwable th;
                String str;
                boolean isEnabled;
                boolean hasOverlayPermission;
                String oldValues;
                JSONObject put;
                Throwable th2;
                OutputStream outputStream;
                OutputStreamWriter outputStreamWriter;
                Intent intent2 = new Intent(TokenRefreshResult.ACTION);
                String stringExtra2 = intent.getStringExtra(RefreshTokenHandler.CYD_REFRESH_TOKEN_EXTRA_APIKEY);
                HttpURLConnection httpURLConnection = null;
                OutputStreamWriter outputStreamWriter2 = null;
                if (stringExtra2 == null) {
                    Log.w("libcyd.app", "Failed to refresh push token. No api key.");
                    intent2.putExtra(TokenRefreshResult.EXTRA_STATUS, TokenRefreshResult.STATUS_FAILURE);
                    intent2.putExtra(TokenRefreshResult.EXTRA_FAILURE_REASON, TokenRefreshResult.FAILURE_REASON_NOT_VERIFIED);
                    instance.sendLocalBroadcast(applicationContext, intent2);
                    instance.getTelemetryHost().putTelemetryEvent(new TelemetryEvent(uuid, null, 51, 1));
                    return;
                }
                try {
                    str = Build.VERSION.RELEASE;
                    isEnabled = instance.getIsEnabled(applicationContext);
                    hasOverlayPermission = instance.hasOverlayPermission(applicationContext);
                    oldValues = TokenHelper.getOldValues(applicationContext);
                    put = oldValues == null ? new JSONObject().put("token", stringExtra).put("tokenType", instance2.tokenType).put("enabled", isEnabled).put("sdkVersion", BuildConfig.VERSION_NAME).put("osVersion", str).put("hasPermissions", hasOverlayPermission) : new JSONObject(oldValues);
                } catch (Throwable th3) {
                    th = th3;
                }
                if (oldValues == null || !stringExtra.equals(put.optString("token", "")) || !instance2.tokenType.equals(put.optString("tokenType", "")) || isEnabled != put.getBoolean("enabled") || !BuildConfig.VERSION_NAME.equals(put.getString("sdkVersion")) || !str.equals(put.getString("osVersion")) || hasOverlayPermission != put.getBoolean("hasPermissions")) {
                    String jSONObject = new JSONObject().put("token", stringExtra).put("tokenType", instance2.tokenType).put("enabled", isEnabled).put("sdkVersion", BuildConfig.VERSION_NAME).put("os", AbstractSpiCall.ANDROID_CLIENT_TYPE).put("osVersion", str).put("model", Build.MODEL).put("hasPermissions", hasOverlayPermission).put("dpi", Integer.toString(instance.getDpi())).toString();
                    httpURLConnection = Constants.getConnection("https://api.calleryd.com/tokens/v1");
                    try {
                        httpURLConnection.setRequestProperty("Content-Type", "application/json");
                        httpURLConnection.setRequestProperty("Authorization", "Bearer " + stringExtra2);
                        httpURLConnection.setDoInput(true);
                        httpURLConnection.setDoOutput(false);
                        httpURLConnection.setRequestMethod(HttpRequest.METHOD_PUT);
                        try {
                            outputStream = httpURLConnection.getOutputStream();
                            try {
                                outputStreamWriter = new OutputStreamWriter(outputStream);
                            } catch (Throwable th4) {
                                th2 = th4;
                            }
                        } catch (Throwable th5) {
                            th2 = th5;
                            outputStream = null;
                        }
                    } catch (Throwable th6) {
                        th = th6;
                        HttpURLConnection httpURLConnection2 = httpURLConnection;
                        try {
                            Log.e("libcyd.app", "Token refresh failed.", th);
                            intent2.putExtra(TokenRefreshResult.EXTRA_STATUS, TokenRefreshResult.STATUS_FAILURE);
                            intent2.putExtra(TokenRefreshResult.EXTRA_FAILURE_REASON, th.getMessage());
                            httpURLConnection2 = httpURLConnection;
                            instance.getTelemetryHost().putTelemetryEvent(new TelemetryEvent(uuid, null, 51, 4, th.getMessage()));
                            if (httpURLConnection != null) {
                                httpURLConnection.disconnect();
                            }
                            instance.sendLocalBroadcast(applicationContext, intent2);
                        } catch (Throwable th7) {
                            if (httpURLConnection2 != null) {
                                httpURLConnection2.disconnect();
                            }
                            throw th7;
                        }
                    }
                    try {
                        outputStreamWriter.write(jSONObject);
                        if (outputStreamWriter != null) {
                            outputStreamWriter.close();
                        }
                        if (outputStream != null) {
                            outputStream.close();
                        }
                        int responseCode = httpURLConnection.getResponseCode();
                        Globals.tryPrintRequestId(httpURLConnection, "doRefreshToken");
                        if (responseCode == 200) {
                            Log.d("libcyd.app", "Token refreshed.");
                            if (RefreshApiKeyHandler.shouldUpdateApiKey(httpURLConnection.getHeaderField("x-cyd-refresh-key"))) {
                                RefreshApiKeyHandler.broadcastRefreshApiKey(applicationContext);
                            }
                            intent2.putExtra(TokenRefreshResult.EXTRA_STATUS, "success");
                            TokenHelper.putOldValues(applicationContext, jSONObject);
                            instance.getTelemetryHost().putTelemetryEvent(new TelemetryEvent(uuid, null, 51, 0));
                        } else {
                            Log.e("libcyd.app", String.format("Token refresh failed. Server code: %d.", Integer.valueOf(responseCode)));
                            intent2.putExtra(TokenRefreshResult.EXTRA_STATUS, TokenRefreshResult.STATUS_FAILURE);
                            intent2.putExtra(TokenRefreshResult.EXTRA_FAILURE_REASON, httpURLConnection.getResponseMessage());
                            instance.getTelemetryHost().putTelemetryEvent(new TelemetryEvent(uuid, null, 51, 3, String.format(Locale.US, "code: %d, message: %s", Integer.valueOf(responseCode), httpURLConnection.getResponseMessage())));
                        }
                        if (httpURLConnection != null) {
                            httpURLConnection.disconnect();
                        }
                        instance.sendLocalBroadcast(applicationContext, intent2);
                    } catch (Throwable th8) {
                        th2 = th8;
                        outputStreamWriter2 = outputStreamWriter;
                        if (outputStreamWriter2 != null) {
                            outputStreamWriter2.close();
                        }
                        if (outputStream != null) {
                            outputStream.close();
                        }
                        throw th2;
                    }
                } else {
                    Log.d("libcyd.app", "Skipping token refresh. Nothing to do.");
                    intent2.putExtra(TokenRefreshResult.EXTRA_STATUS, "success");
                    instance.sendLocalBroadcast(applicationContext, intent2);
                    instance.getTelemetryHost().putTelemetryEvent(new TelemetryEvent(uuid, null, 51, 2));
                }
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static boolean handle(Context context, Intent intent) {
        if (!CYD_REFRESH_TOKEN_ACTION.equals(intent.getAction())) {
            return false;
        }
        doRefreshToken(context.getApplicationContext(), intent);
        return true;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static void sendRefreshExistingTokenBroadcast(Context context, String str) {
        String optString;
        if (context == null) {
            throw new NullPointerException("context");
        }
        try {
            Context applicationContext = context.getApplicationContext();
            String oldValues = TokenHelper.getOldValues(applicationContext);
            if (oldValues != null && (optString = new JSONObject(oldValues).optString("token")) != null) {
                sendRefreshTokenBroadcast(applicationContext, optString, str);
            }
        } catch (Throwable th) {
            Log.e("libcyd.app", "Caught error raising token refresh broadcast.", th);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static void sendRefreshTokenBroadcast(Context context, String str, String str2) {
        if (context == null) {
            throw new NullPointerException("applicationContext");
        }
        CYDApplication instance = CYDApplication.getInstance();
        Intent intent = new Intent();
        intent.setAction(CYD_REFRESH_TOKEN_ACTION);
        intent.putExtra(CYD_REFRESH_TOKEN_EXTRA_TOKEN, str);
        intent.putExtra(CYD_REFRESH_TOKEN_EXTRA_APIKEY, str2);
        instance.sendLocalBroadcast(context, intent);
    }
}

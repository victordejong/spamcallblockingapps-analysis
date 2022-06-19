package com.facebook.gamingservices.cloudgaming;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.os.Handler;
import android.os.HandlerThread;
import com.facebook.FacebookRequestError;
import com.facebook.GraphRequest;
import com.facebook.GraphResponse;
import com.facebook.gamingservices.cloudgaming.internal.SDKConstants;
import com.facebook.gamingservices.cloudgaming.internal.SDKLogger;
import java.net.HttpURLConnection;
import java.util.concurrent.CompletableFuture;
import java.util.concurrent.ConcurrentHashMap;
import org.json.JSONException;
import org.json.JSONObject;
/* loaded from: classes-dex2jar.jar:com/facebook/gamingservices/cloudgaming/DaemonReceiver.class */
public class DaemonReceiver {
    private static SDKLogger mLogger;
    private static ConcurrentHashMap<String, CompletableFuture<GraphResponse>> requestStore;
    private static DaemonReceiver single_instance;

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes-dex2jar.jar:com/facebook/gamingservices/cloudgaming/DaemonReceiver$DaemonBroadcastReceiver.class */
    public static class DaemonBroadcastReceiver extends BroadcastReceiver {
        private DaemonBroadcastReceiver() {
        }

        @Override // android.content.BroadcastReceiver
        public void onReceive(Context context, Intent intent) {
            CompletableFuture completableFuture;
            try {
                JSONObject jSONObject = new JSONObject(intent.getStringExtra(SDKConstants.RECEIVER_PAYLOAD));
                String string = jSONObject.getString(SDKConstants.REQUEST_ID);
                if (!DaemonReceiver.requestStore.containsKey(string) || (completableFuture = (CompletableFuture) DaemonReceiver.requestStore.remove(string)) == null) {
                    return;
                }
                completableFuture.complete(DaemonReceiver.processResponse(jSONObject, string));
            } catch (JSONException e) {
            }
        }
    }

    private DaemonReceiver(Context context) {
        IntentFilter intentFilter = new IntentFilter(SDKConstants.RECEIVER_INTENT);
        HandlerThread handlerThread = new HandlerThread(SDKConstants.RECEIVER_HANDLER);
        handlerThread.start();
        context.registerReceiver(new DaemonBroadcastReceiver(), intentFilter, null, new Handler(handlerThread.getLooper()));
        requestStore = new ConcurrentHashMap<>();
        mLogger = SDKLogger.getInstance(context);
    }

    private static GraphResponse createDefaultErrorResponse(String str) {
        return createErrorResponse(new FacebookRequestError(20, "UNSUPPORTED_FORMAT", "The response format is invalid."), str);
    }

    public static GraphResponse createErrorResponse(FacebookRequestError facebookRequestError, String str) {
        mLogger.logSendingErrorResponse(facebookRequestError, str);
        return new GraphResponse(null, null, facebookRequestError);
    }

    private static GraphResponse createErrorResponse(JSONObject jSONObject, String str) {
        JSONObject optJSONObject = jSONObject.optJSONObject("error");
        return optJSONObject != null ? createErrorResponse(new FacebookRequestError(optJSONObject.optInt("code"), optJSONObject.optString("type"), optJSONObject.optString("message")), str) : createDefaultErrorResponse(str);
    }

    private static GraphResponse createSuccessResponse(JSONObject jSONObject, String str) {
        if (jSONObject.optJSONObject("success") != null) {
            mLogger.logSendingSuccessResponse(str);
            return new GraphResponse((GraphRequest) null, (HttpURLConnection) null, (String) null, jSONObject.optJSONObject("success"));
        } else if (jSONObject.optJSONArray("success") == null) {
            return createDefaultErrorResponse(str);
        } else {
            mLogger.logSendingSuccessResponse(str);
            return new GraphResponse((GraphRequest) null, (HttpURLConnection) null, (String) null, jSONObject.optJSONArray("success"));
        }
    }

    public static DaemonReceiver getInstance(Context context) {
        DaemonReceiver daemonReceiver;
        synchronized (DaemonReceiver.class) {
            try {
                if (single_instance == null) {
                    single_instance = new DaemonReceiver(context);
                }
                daemonReceiver = single_instance;
            } catch (Throwable th) {
                throw th;
            }
        }
        return daemonReceiver;
    }

    public static GraphResponse processResponse(JSONObject jSONObject, String str) {
        return !jSONObject.isNull("success") ? createSuccessResponse(jSONObject, str) : !jSONObject.isNull("error") ? createErrorResponse(jSONObject, str) : createDefaultErrorResponse(str);
    }

    public ConcurrentHashMap<String, CompletableFuture<GraphResponse>> getRequestStore() {
        ConcurrentHashMap<String, CompletableFuture<GraphResponse>> concurrentHashMap;
        synchronized (this) {
            concurrentHashMap = requestStore;
        }
        return concurrentHashMap;
    }
}

package com.facebook.internal;

import android.content.Context;
import android.os.Bundle;
import android.os.Handler;
import android.os.Looper;
import com.facebook.FacebookSdk;
import com.facebook.GraphRequest;
import com.facebook.gamingservices.cloudgaming.internal.SDKConstants;
import com.facebook.internal.instrument.crashshield.CrashShieldHandler;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.ConcurrentLinkedQueue;
import java.util.concurrent.Executor;
import java.util.concurrent.atomic.AtomicBoolean;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;
/* loaded from: classes-dex2jar.jar:com/facebook/internal/FetchedAppGateKeepersManager.class */
public final class FetchedAppGateKeepersManager {
    private static final String APPLICATION_FIELDS = "fields";
    private static final long APPLICATION_GATEKEEPER_CACHE_TIMEOUT = 3600000;
    private static final String APPLICATION_GATEKEEPER_EDGE = "mobile_sdk_gk";
    private static final String APPLICATION_GATEKEEPER_FIELD = "gatekeepers";
    private static final String APPLICATION_GRAPH_DATA = "data";
    private static final String APPLICATION_PLATFORM = "platform";
    private static final String APPLICATION_SDK_VERSION = "sdk_version";
    private static final String APP_GATEKEEPERS_PREFS_KEY_FORMAT = "com.facebook.internal.APP_GATEKEEPERS.%s";
    private static final String APP_GATEKEEPERS_PREFS_STORE = "com.facebook.internal.preferences.APP_GATEKEEPERS";
    private static final String APP_PLATFORM = "android";
    private static final String TAG = "com.facebook.internal.FetchedAppGateKeepersManager";
    private static Long timestamp;
    private static final AtomicBoolean isLoading = new AtomicBoolean(false);
    private static final ConcurrentLinkedQueue<Callback> callbacks = new ConcurrentLinkedQueue<>();
    private static final Map<String, JSONObject> fetchedAppGateKeepers = new ConcurrentHashMap();

    /* loaded from: classes-dex2jar.jar:com/facebook/internal/FetchedAppGateKeepersManager$Callback.class */
    public interface Callback {
        void onCompleted();
    }

    public static JSONObject getAppGateKeepersQueryResponse(String str) {
        Bundle bundle = new Bundle();
        bundle.putString(APPLICATION_PLATFORM, "android");
        bundle.putString(APPLICATION_SDK_VERSION, FacebookSdk.getSdkVersion());
        bundle.putString("fields", APPLICATION_GATEKEEPER_FIELD);
        GraphRequest newGraphPathRequest = GraphRequest.newGraphPathRequest(null, String.format("%s/%s", str, APPLICATION_GATEKEEPER_EDGE), null);
        newGraphPathRequest.setSkipClientToken(true);
        newGraphPathRequest.setParameters(bundle);
        return newGraphPathRequest.executeAndWait().getJSONObject();
    }

    public static boolean getGateKeeperForKey(String str, String str2, boolean z) {
        Boolean bool;
        Map<String, Boolean> gateKeepersForApplication = getGateKeepersForApplication(str2);
        if (gateKeepersForApplication.containsKey(str) && (bool = gateKeepersForApplication.get(str)) != null) {
            return bool.booleanValue();
        }
        return z;
    }

    public static Map<String, Boolean> getGateKeepersForApplication(String str) {
        loadAppGateKeepersAsync();
        if (str != null) {
            Map<String, JSONObject> map = fetchedAppGateKeepers;
            if (map.containsKey(str)) {
                HashMap hashMap = new HashMap();
                JSONObject jSONObject = map.get(str);
                if (jSONObject == null) {
                    return new HashMap();
                }
                Iterator<String> keys = jSONObject.keys();
                while (keys.hasNext()) {
                    String next = keys.next();
                    hashMap.put(next, Boolean.valueOf(jSONObject.optBoolean(next)));
                }
                return hashMap;
            }
        }
        return new HashMap();
    }

    private static boolean isTimestampValid(Long l) {
        boolean z = false;
        if (l == null) {
            return false;
        }
        if (System.currentTimeMillis() - l.longValue() < APPLICATION_GATEKEEPER_CACHE_TIMEOUT) {
            z = true;
        }
        return z;
    }

    static void loadAppGateKeepersAsync() {
        loadAppGateKeepersAsync(null);
    }

    public static void loadAppGateKeepersAsync(Callback callback) {
        synchronized (FetchedAppGateKeepersManager.class) {
            if (callback != null) {
                try {
                    callbacks.add(callback);
                } catch (Throwable th) {
                    throw th;
                }
            }
            if (isTimestampValid(timestamp)) {
                pollCallbacks();
                return;
            }
            final Context applicationContext = FacebookSdk.getApplicationContext();
            final String applicationId = FacebookSdk.getApplicationId();
            final String format = String.format(APP_GATEKEEPERS_PREFS_KEY_FORMAT, applicationId);
            if (applicationContext == null) {
                return;
            }
            JSONObject jSONObject = null;
            String string = applicationContext.getSharedPreferences(APP_GATEKEEPERS_PREFS_STORE, 0).getString(format, null);
            if (!Utility.isNullOrEmpty(string)) {
                try {
                    jSONObject = new JSONObject(string);
                } catch (JSONException e) {
                    Utility.logd("FacebookSDK", e);
                }
                if (jSONObject != null) {
                    parseAppGateKeepersFromJSON(applicationId, jSONObject);
                }
            }
            Executor executor = FacebookSdk.getExecutor();
            if (executor == null) {
                return;
            }
            if (!isLoading.compareAndSet(false, true)) {
                return;
            }
            executor.execute(new Runnable() { // from class: com.facebook.internal.FetchedAppGateKeepersManager.1
                @Override // java.lang.Runnable
                public void run() {
                    if (CrashShieldHandler.isObjectCrashing(this)) {
                        return;
                    }
                    try {
                        JSONObject appGateKeepersQueryResponse = FetchedAppGateKeepersManager.getAppGateKeepersQueryResponse(applicationId);
                        if (appGateKeepersQueryResponse != null) {
                            FetchedAppGateKeepersManager.parseAppGateKeepersFromJSON(applicationId, appGateKeepersQueryResponse);
                            applicationContext.getSharedPreferences(FetchedAppGateKeepersManager.APP_GATEKEEPERS_PREFS_STORE, 0).edit().putString(format, appGateKeepersQueryResponse.toString()).apply();
                            Long unused = FetchedAppGateKeepersManager.timestamp = Long.valueOf(System.currentTimeMillis());
                        }
                        FetchedAppGateKeepersManager.pollCallbacks();
                        FetchedAppGateKeepersManager.isLoading.set(false);
                    } catch (Throwable th2) {
                        CrashShieldHandler.handleThrowable(th2, this);
                    }
                }
            });
        }
    }

    protected static JSONObject parseAppGateKeepersFromJSON(String str, JSONObject jSONObject) {
        JSONObject jSONObject2;
        synchronized (FetchedAppGateKeepersManager.class) {
            try {
                Map<String, JSONObject> map = fetchedAppGateKeepers;
                jSONObject2 = map.containsKey(str) ? map.get(str) : new JSONObject();
                JSONArray optJSONArray = jSONObject.optJSONArray("data");
                JSONObject jSONObject3 = null;
                int i = 0;
                if (optJSONArray != null) {
                    jSONObject3 = optJSONArray.optJSONObject(0);
                }
                if (jSONObject3 != null && jSONObject3.optJSONArray(APPLICATION_GATEKEEPER_FIELD) != null) {
                    JSONArray optJSONArray2 = jSONObject3.optJSONArray(APPLICATION_GATEKEEPER_FIELD);
                    while (true) {
                        if (i >= optJSONArray2.length()) {
                            break;
                        }
                        try {
                            JSONObject jSONObject4 = optJSONArray2.getJSONObject(i);
                            jSONObject2.put(jSONObject4.getString(SDKConstants.PARAM_KEY), jSONObject4.getBoolean("value"));
                        } catch (JSONException e) {
                            Utility.logd("FacebookSDK", e);
                        }
                        i++;
                    }
                }
                fetchedAppGateKeepers.put(str, jSONObject2);
            } catch (Throwable th) {
                throw th;
            }
        }
        return jSONObject2;
    }

    public static void pollCallbacks() {
        Handler handler = new Handler(Looper.getMainLooper());
        while (true) {
            ConcurrentLinkedQueue<Callback> concurrentLinkedQueue = callbacks;
            if (!concurrentLinkedQueue.isEmpty()) {
                final Callback poll = concurrentLinkedQueue.poll();
                if (poll != null) {
                    handler.post(new Runnable() { // from class: com.facebook.internal.FetchedAppGateKeepersManager.2
                        @Override // java.lang.Runnable
                        public void run() {
                            if (CrashShieldHandler.isObjectCrashing(this)) {
                                return;
                            }
                            try {
                                poll.onCompleted();
                            } catch (Throwable th) {
                                CrashShieldHandler.handleThrowable(th, this);
                            }
                        }
                    });
                }
            } else {
                return;
            }
        }
    }

    public static JSONObject queryAppGateKeepers(String str, boolean z) {
        if (!z) {
            Map<String, JSONObject> map = fetchedAppGateKeepers;
            if (map.containsKey(str)) {
                return map.get(str);
            }
        }
        JSONObject appGateKeepersQueryResponse = getAppGateKeepersQueryResponse(str);
        if (appGateKeepersQueryResponse == null) {
            return null;
        }
        FacebookSdk.getApplicationContext().getSharedPreferences(APP_GATEKEEPERS_PREFS_STORE, 0).edit().putString(String.format(APP_GATEKEEPERS_PREFS_KEY_FORMAT, str), appGateKeepersQueryResponse.toString()).apply();
        return parseAppGateKeepersFromJSON(str, appGateKeepersQueryResponse);
    }
}

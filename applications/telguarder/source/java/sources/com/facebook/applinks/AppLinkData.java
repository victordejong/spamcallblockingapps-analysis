package com.facebook.applinks;

import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.net.Uri;
import android.os.Bundle;
import android.text.TextUtils;
import androidx.core.app.NotificationCompat;
import com.facebook.FacebookException;
import com.facebook.FacebookSdk;
import com.facebook.GraphRequest;
import com.facebook.appevents.AppEventsLogger;
import com.facebook.internal.AttributionIdentifiers;
import com.facebook.internal.Utility;
import com.facebook.internal.Validate;
import com.facebook.internal.instrument.crashshield.CrashShieldHandler;
import java.util.Iterator;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;
/* loaded from: classes-dex2jar.jar:com/facebook/applinks/AppLinkData.class */
public class AppLinkData {
    private static final String APPLINK_BRIDGE_ARGS_KEY = "bridge_args";
    private static final String APPLINK_METHOD_ARGS_KEY = "method_args";
    private static final String APPLINK_VERSION_KEY = "version";
    public static final String ARGUMENTS_EXTRAS_KEY = "extras";
    public static final String ARGUMENTS_NATIVE_CLASS_KEY = "com.facebook.platform.APPLINK_NATIVE_CLASS";
    public static final String ARGUMENTS_NATIVE_URL = "com.facebook.platform.APPLINK_NATIVE_URL";
    public static final String ARGUMENTS_REFERER_DATA_KEY = "referer_data";
    public static final String ARGUMENTS_TAPTIME_KEY = "com.facebook.platform.APPLINK_TAP_TIME_UTC";
    private static final String AUTO_APPLINK_FLAG_KEY = "is_auto_applink";
    private static final String BRIDGE_ARGS_METHOD_KEY = "method";
    private static final String BUNDLE_AL_APPLINK_DATA_KEY = "al_applink_data";
    private static final String BUNDLE_APPLINK_ARGS_KEY = "com.facebook.platform.APPLINK_ARGS";
    private static final String DEFERRED_APP_LINK_ARGS_FIELD = "applink_args";
    private static final String DEFERRED_APP_LINK_CLASS_FIELD = "applink_class";
    private static final String DEFERRED_APP_LINK_CLICK_TIME_FIELD = "click_time";
    private static final String DEFERRED_APP_LINK_EVENT = "DEFERRED_APP_LINK";
    private static final String DEFERRED_APP_LINK_PATH = "%s/activities";
    private static final String DEFERRED_APP_LINK_URL_FIELD = "applink_url";
    private static final String EXTRAS_DEEPLINK_CONTEXT_KEY = "deeplink_context";
    private static final String METHOD_ARGS_REF_KEY = "ref";
    private static final String METHOD_ARGS_TARGET_URL_KEY = "target_url";
    private static final String PROMOTION_CODE_KEY = "promo_code";
    private static final String REFERER_DATA_REF_KEY = "fb_ref";
    private static final String TAG = "com.facebook.applinks.AppLinkData";
    private JSONObject appLinkData;
    private Bundle argumentBundle;
    private JSONObject arguments;
    private String promotionCode;
    private String ref;
    private Uri targetUri;

    /* loaded from: classes-dex2jar.jar:com/facebook/applinks/AppLinkData$CompletionHandler.class */
    public interface CompletionHandler {
        void onDeferredAppLinkDataFetched(AppLinkData appLinkData);
    }

    private AppLinkData() {
    }

    public static AppLinkData createFromActivity(Activity activity) {
        if (CrashShieldHandler.isObjectCrashing(AppLinkData.class)) {
            return null;
        }
        try {
            Validate.notNull(activity, "activity");
            Intent intent = activity.getIntent();
            if (intent == null) {
                return null;
            }
            AppLinkData createFromAlApplinkData = createFromAlApplinkData(intent);
            AppLinkData appLinkData = createFromAlApplinkData;
            if (createFromAlApplinkData == null) {
                appLinkData = createFromJson(intent.getStringExtra(BUNDLE_APPLINK_ARGS_KEY));
            }
            AppLinkData appLinkData2 = appLinkData;
            if (appLinkData == null) {
                appLinkData2 = createFromUri(intent.getData());
            }
            return appLinkData2;
        } catch (Throwable th) {
            CrashShieldHandler.handleThrowable(th, AppLinkData.class);
            return null;
        }
    }

    public static AppLinkData createFromAlApplinkData(Intent intent) {
        String string;
        String string2;
        if (!CrashShieldHandler.isObjectCrashing(AppLinkData.class) && intent != null) {
            try {
                Bundle bundleExtra = intent.getBundleExtra(BUNDLE_AL_APPLINK_DATA_KEY);
                if (bundleExtra == null) {
                    return null;
                }
                AppLinkData appLinkData = new AppLinkData();
                Uri data = intent.getData();
                appLinkData.targetUri = data;
                appLinkData.appLinkData = getAppLinkData(data);
                if (appLinkData.targetUri == null && (string2 = bundleExtra.getString(METHOD_ARGS_TARGET_URL_KEY)) != null) {
                    appLinkData.targetUri = Uri.parse(string2);
                }
                appLinkData.argumentBundle = bundleExtra;
                appLinkData.arguments = null;
                Bundle bundle = bundleExtra.getBundle(ARGUMENTS_REFERER_DATA_KEY);
                if (bundle != null) {
                    appLinkData.ref = bundle.getString(REFERER_DATA_REF_KEY);
                }
                Bundle bundle2 = bundleExtra.getBundle(ARGUMENTS_EXTRAS_KEY);
                if (bundle2 != null && (string = bundle2.getString("deeplink_context")) != null) {
                    try {
                        JSONObject jSONObject = new JSONObject(string);
                        if (jSONObject.has("promo_code")) {
                            appLinkData.promotionCode = jSONObject.getString("promo_code");
                        }
                    } catch (JSONException e) {
                        Utility.logd(TAG, "Unable to parse deeplink_context JSON", e);
                    }
                }
                return appLinkData;
            } catch (Throwable th) {
                CrashShieldHandler.handleThrowable(th, AppLinkData.class);
                return null;
            }
        }
        return null;
    }

    private static AppLinkData createFromJson(String str) {
        if (str == null) {
            return null;
        }
        try {
            JSONObject jSONObject = new JSONObject(str);
            String string = jSONObject.getString("version");
            if (!jSONObject.getJSONObject("bridge_args").getString("method").equals("applink") || !string.equals("2")) {
                return null;
            }
            AppLinkData appLinkData = new AppLinkData();
            JSONObject jSONObject2 = jSONObject.getJSONObject("method_args");
            appLinkData.arguments = jSONObject2;
            if (jSONObject2.has(METHOD_ARGS_REF_KEY)) {
                appLinkData.ref = appLinkData.arguments.getString(METHOD_ARGS_REF_KEY);
            } else if (appLinkData.arguments.has(ARGUMENTS_REFERER_DATA_KEY)) {
                JSONObject jSONObject3 = appLinkData.arguments.getJSONObject(ARGUMENTS_REFERER_DATA_KEY);
                if (jSONObject3.has(REFERER_DATA_REF_KEY)) {
                    appLinkData.ref = jSONObject3.getString(REFERER_DATA_REF_KEY);
                }
            }
            if (appLinkData.arguments.has(METHOD_ARGS_TARGET_URL_KEY)) {
                Uri parse = Uri.parse(appLinkData.arguments.getString(METHOD_ARGS_TARGET_URL_KEY));
                appLinkData.targetUri = parse;
                appLinkData.appLinkData = getAppLinkData(parse);
            }
            if (appLinkData.arguments.has(ARGUMENTS_EXTRAS_KEY)) {
                JSONObject jSONObject4 = appLinkData.arguments.getJSONObject(ARGUMENTS_EXTRAS_KEY);
                if (jSONObject4.has("deeplink_context")) {
                    JSONObject jSONObject5 = jSONObject4.getJSONObject("deeplink_context");
                    if (jSONObject5.has("promo_code")) {
                        appLinkData.promotionCode = jSONObject5.getString("promo_code");
                    }
                }
            }
            appLinkData.argumentBundle = toBundle(appLinkData.arguments);
            return appLinkData;
        } catch (FacebookException e) {
            Utility.logd(TAG, "Unable to parse AppLink JSON", e);
            return null;
        } catch (JSONException e2) {
            Utility.logd(TAG, "Unable to parse AppLink JSON", e2);
            return null;
        }
    }

    private static AppLinkData createFromUri(Uri uri) {
        if (uri == null) {
            return null;
        }
        AppLinkData appLinkData = new AppLinkData();
        appLinkData.targetUri = uri;
        appLinkData.appLinkData = getAppLinkData(uri);
        return appLinkData;
    }

    public static void fetchDeferredAppLinkData(Context context, CompletionHandler completionHandler) {
        fetchDeferredAppLinkData(context, null, completionHandler);
    }

    public static void fetchDeferredAppLinkData(Context context, String str, final CompletionHandler completionHandler) {
        Validate.notNull(context, "context");
        Validate.notNull(completionHandler, "completionHandler");
        String str2 = str;
        if (str == null) {
            str2 = Utility.getMetadataApplicationId(context);
        }
        Validate.notNull(str2, "applicationId");
        final Context applicationContext = context.getApplicationContext();
        final String str3 = str2;
        FacebookSdk.getExecutor().execute(new Runnable() { // from class: com.facebook.applinks.AppLinkData.1
            @Override // java.lang.Runnable
            public void run() {
                if (CrashShieldHandler.isObjectCrashing(this)) {
                    return;
                }
                try {
                    AppLinkData.fetchDeferredAppLinkFromServer(applicationContext, str3, completionHandler);
                } catch (Throwable th) {
                    CrashShieldHandler.handleThrowable(th, this);
                }
            }
        });
    }

    public static void fetchDeferredAppLinkFromServer(Context context, String str, CompletionHandler completionHandler) {
        AppLinkData appLinkData;
        JSONObject jSONObject = new JSONObject();
        try {
            jSONObject.put(NotificationCompat.CATEGORY_EVENT, DEFERRED_APP_LINK_EVENT);
            Utility.setAppEventAttributionParameters(jSONObject, AttributionIdentifiers.getAttributionIdentifiers(context), AppEventsLogger.getAnonymousAppDeviceGUID(context), FacebookSdk.getLimitEventAndDataUsage(context));
            Utility.setAppEventExtendedDeviceInfoParameters(jSONObject, FacebookSdk.getApplicationContext());
            jSONObject.put("application_package_name", context.getPackageName());
            AppLinkData appLinkData2 = null;
            try {
                JSONObject jSONObject2 = GraphRequest.newPostRequest(null, String.format(DEFERRED_APP_LINK_PATH, str), jSONObject, null).executeAndWait().getJSONObject();
                appLinkData = null;
                if (jSONObject2 != null) {
                    String optString = jSONObject2.optString(DEFERRED_APP_LINK_ARGS_FIELD);
                    long optLong = jSONObject2.optLong(DEFERRED_APP_LINK_CLICK_TIME_FIELD, -1L);
                    String optString2 = jSONObject2.optString(DEFERRED_APP_LINK_CLASS_FIELD);
                    String optString3 = jSONObject2.optString(DEFERRED_APP_LINK_URL_FIELD);
                    appLinkData = null;
                    if (!TextUtils.isEmpty(optString)) {
                        AppLinkData createFromJson = createFromJson(optString);
                        appLinkData = createFromJson;
                        if (createFromJson != null) {
                            if (optLong != -1) {
                                appLinkData2 = createFromJson;
                                try {
                                    JSONObject jSONObject3 = createFromJson.arguments;
                                    if (jSONObject3 != null) {
                                        jSONObject3.put(ARGUMENTS_TAPTIME_KEY, optLong);
                                    }
                                    Bundle bundle = createFromJson.argumentBundle;
                                    if (bundle != null) {
                                        appLinkData2 = createFromJson;
                                        bundle.putString(ARGUMENTS_TAPTIME_KEY, Long.toString(optLong));
                                    }
                                } catch (JSONException e) {
                                    Utility.logd(TAG, "Unable to put tap time in AppLinkData.arguments");
                                }
                            }
                            if (optString2 != null) {
                                appLinkData2 = createFromJson;
                                try {
                                    JSONObject jSONObject4 = createFromJson.arguments;
                                    if (jSONObject4 != null) {
                                        jSONObject4.put(ARGUMENTS_NATIVE_CLASS_KEY, optString2);
                                    }
                                    Bundle bundle2 = createFromJson.argumentBundle;
                                    if (bundle2 != null) {
                                        appLinkData2 = createFromJson;
                                        bundle2.putString(ARGUMENTS_NATIVE_CLASS_KEY, optString2);
                                    }
                                } catch (JSONException e2) {
                                    Utility.logd(TAG, "Unable to put app link class name in AppLinkData.arguments");
                                }
                            }
                            appLinkData = createFromJson;
                            if (optString3 != null) {
                                appLinkData2 = createFromJson;
                                try {
                                    JSONObject jSONObject5 = createFromJson.arguments;
                                    if (jSONObject5 != null) {
                                        jSONObject5.put(ARGUMENTS_NATIVE_URL, optString3);
                                    }
                                    Bundle bundle3 = createFromJson.argumentBundle;
                                    appLinkData = createFromJson;
                                    if (bundle3 != null) {
                                        appLinkData2 = createFromJson;
                                        bundle3.putString(ARGUMENTS_NATIVE_URL, optString3);
                                        appLinkData = createFromJson;
                                    }
                                } catch (JSONException e3) {
                                    appLinkData2 = createFromJson;
                                    Utility.logd(TAG, "Unable to put app link URL in AppLinkData.arguments");
                                    appLinkData = createFromJson;
                                }
                            }
                        }
                    }
                }
            } catch (Exception e4) {
                Utility.logd(TAG, "Unable to fetch deferred applink from server");
                appLinkData = appLinkData2;
            }
            completionHandler.onDeferredAppLinkDataFetched(appLinkData);
        } catch (JSONException e5) {
            throw new FacebookException("An error occurred while preparing deferred app link", e5);
        }
    }

    private static JSONObject getAppLinkData(Uri uri) {
        if (!CrashShieldHandler.isObjectCrashing(AppLinkData.class) && uri != null) {
            try {
                String queryParameter = uri.getQueryParameter(BUNDLE_AL_APPLINK_DATA_KEY);
                if (queryParameter == null) {
                    return null;
                }
                try {
                    return new JSONObject(queryParameter);
                } catch (JSONException e) {
                    return null;
                }
            } catch (Throwable th) {
                CrashShieldHandler.handleThrowable(th, AppLinkData.class);
                return null;
            }
        }
        return null;
    }

    private static Bundle toBundle(JSONObject jSONObject) throws JSONException {
        Bundle bundle = new Bundle();
        Iterator<String> keys = jSONObject.keys();
        while (keys.hasNext()) {
            String next = keys.next();
            Object obj = jSONObject.get(next);
            if (obj instanceof JSONObject) {
                bundle.putBundle(next, toBundle((JSONObject) obj));
            } else if (obj instanceof JSONArray) {
                JSONArray jSONArray = (JSONArray) obj;
                if (jSONArray.length() == 0) {
                    bundle.putStringArray(next, new String[0]);
                } else {
                    Object obj2 = jSONArray.get(0);
                    if (obj2 instanceof JSONObject) {
                        Bundle[] bundleArr = new Bundle[jSONArray.length()];
                        for (int i = 0; i < jSONArray.length(); i++) {
                            bundleArr[i] = toBundle(jSONArray.getJSONObject(i));
                        }
                        bundle.putParcelableArray(next, bundleArr);
                    } else if (obj2 instanceof JSONArray) {
                        throw new FacebookException("Nested arrays are not supported.");
                    } else {
                        String[] strArr = new String[jSONArray.length()];
                        for (int i2 = 0; i2 < jSONArray.length(); i2++) {
                            strArr[i2] = jSONArray.get(i2).toString();
                        }
                        bundle.putStringArray(next, strArr);
                    }
                }
            } else {
                bundle.putString(next, obj.toString());
            }
        }
        return bundle;
    }

    public JSONObject getAppLinkData() {
        JSONObject jSONObject = this.appLinkData;
        if (jSONObject == null) {
            jSONObject = new JSONObject();
        }
        return jSONObject;
    }

    public Bundle getArgumentBundle() {
        return this.argumentBundle;
    }

    public String getPromotionCode() {
        return this.promotionCode;
    }

    public String getRef() {
        return this.ref;
    }

    public Bundle getRefererData() {
        Bundle bundle = this.argumentBundle;
        if (bundle != null) {
            return bundle.getBundle(ARGUMENTS_REFERER_DATA_KEY);
        }
        return null;
    }

    public Uri getTargetUri() {
        return this.targetUri;
    }

    public boolean isAutoAppLink() {
        Uri uri = this.targetUri;
        if (uri == null) {
            return false;
        }
        String host = uri.getHost();
        String scheme = this.targetUri.getScheme();
        String format = String.format("fb%s", FacebookSdk.getApplicationId());
        JSONObject jSONObject = this.appLinkData;
        boolean z = false;
        if (jSONObject != null && jSONObject.optBoolean(AUTO_APPLINK_FLAG_KEY)) {
            z = false;
            if ("applinks".equals(host)) {
                z = false;
                if (format.equals(scheme)) {
                    z = true;
                }
            }
        }
        return z;
    }
}

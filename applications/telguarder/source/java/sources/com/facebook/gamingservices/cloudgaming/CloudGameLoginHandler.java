package com.facebook.gamingservices.cloudgaming;

import android.content.Context;
import android.content.SharedPreferences;
import com.facebook.AccessToken;
import com.facebook.AccessTokenSource;
import com.facebook.FacebookException;
import com.facebook.GraphResponse;
import com.facebook.Profile;
import com.facebook.gamingservices.cloudgaming.internal.SDKConstants;
import com.facebook.gamingservices.cloudgaming.internal.SDKLogger;
import com.facebook.gamingservices.cloudgaming.internal.SDKMessageEnum;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;
/* loaded from: classes-dex2jar.jar:com/facebook/gamingservices/cloudgaming/CloudGameLoginHandler.class */
public class CloudGameLoginHandler {
    private static final int DEFAULT_TIMEOUT_IN_SEC = 5;
    private static boolean IS_RUNNING_IN_CLOUD = false;
    private static SDKLogger mLogger;

    private static List<String> convertPermissionsStringIntoPermissionsList(String str) throws JSONException {
        ArrayList arrayList = new ArrayList();
        if (!str.isEmpty()) {
            JSONArray jSONArray = new JSONArray(str);
            for (int i = 0; i < jSONArray.length(); i++) {
                arrayList.add(jSONArray.get(i).toString());
            }
        }
        return arrayList;
    }

    public static AccessToken init(Context context) throws FacebookException {
        AccessToken init;
        synchronized (CloudGameLoginHandler.class) {
            try {
                init = init(context, 5);
            } catch (Throwable th) {
                throw th;
            }
        }
        return init;
    }

    public static AccessToken init(Context context, int i) throws FacebookException {
        AccessToken currentAccessToken;
        synchronized (CloudGameLoginHandler.class) {
            int i2 = i;
            if (i <= 0) {
                i2 = 5;
            }
            try {
                if (!isCloudEnvReady(context, i2)) {
                    throw new FacebookException("Not running in Cloud environment.");
                }
                mLogger = SDKLogger.getInstance(context);
                GraphResponse executeAndWait = DaemonRequest.executeAndWait(context, null, SDKMessageEnum.GET_ACCESS_TOKEN, i2);
                if (executeAndWait == null || executeAndWait.getJSONObject() == null) {
                    throw new FacebookException("Cannot receive response.");
                }
                if (executeAndWait.getError() != null) {
                    throw new FacebookException(executeAndWait.getError().getErrorMessage());
                }
                setPackageName(executeAndWait.getJSONObject(), context);
                try {
                    currentAccessToken = setCurrentAccessToken(executeAndWait.getJSONObject());
                    Profile.fetchProfileForCurrentAccessToken();
                    IS_RUNNING_IN_CLOUD = true;
                    mLogger.logLoginSuccess();
                } catch (JSONException e) {
                    throw new FacebookException("Cannot properly handle response.", e);
                }
            } catch (Throwable th) {
                throw th;
            }
        }
        return currentAccessToken;
    }

    private static boolean isCloudEnvReady(Context context, int i) {
        GraphResponse executeAndWait = DaemonRequest.executeAndWait(context, null, SDKMessageEnum.IS_ENV_READY, i);
        boolean z = false;
        if (executeAndWait != null) {
            if (executeAndWait.getJSONObject() == null) {
                z = false;
            } else {
                z = false;
                if (executeAndWait.getError() == null) {
                    z = true;
                }
            }
        }
        return z;
    }

    public static boolean isRunningInCloud() {
        return IS_RUNNING_IN_CLOUD;
    }

    private static AccessToken setCurrentAccessToken(JSONObject jSONObject) throws JSONException {
        String optString = jSONObject.optString(SDKConstants.PARAM_ACCESS_TOKEN);
        String optString2 = jSONObject.optString(SDKConstants.PARAM_ACCESS_TOKEN_SOURCE);
        String optString3 = jSONObject.optString(SDKConstants.PARAM_APP_ID);
        String optString4 = jSONObject.optString(SDKConstants.PARAM_DECLINED_PERMISSIONS);
        String optString5 = jSONObject.optString(SDKConstants.PARAM_EXPIRED_PERMISSIONS);
        String optString6 = jSONObject.optString(SDKConstants.PARAM_EXPIRATION_TIME);
        String optString7 = jSONObject.optString(SDKConstants.PARAM_DATA_ACCESS_EXPIRATION_TIME);
        String optString8 = jSONObject.optString(SDKConstants.PARAM_GRAPH_DOMAIN);
        String optString9 = jSONObject.optString(SDKConstants.PARAM_LAST_REFRESH_TIME);
        String optString10 = jSONObject.optString("permissions");
        String optString11 = jSONObject.optString(SDKConstants.PARAM_USER_ID);
        String optString12 = jSONObject.optString(SDKConstants.PARAM_SESSION_ID);
        String str = null;
        if (optString.isEmpty() || optString3.isEmpty() || optString11.isEmpty()) {
            return null;
        }
        SDKLogger sDKLogger = mLogger;
        if (sDKLogger != null) {
            sDKLogger.setAppID(optString3);
            mLogger.setUserID(optString11);
            mLogger.setSessionID(optString12);
        }
        List<String> convertPermissionsStringIntoPermissionsList = convertPermissionsStringIntoPermissionsList(optString10);
        List<String> convertPermissionsStringIntoPermissionsList2 = convertPermissionsStringIntoPermissionsList(optString4);
        List<String> convertPermissionsStringIntoPermissionsList3 = convertPermissionsStringIntoPermissionsList(optString5);
        AccessTokenSource valueOf = !optString2.isEmpty() ? AccessTokenSource.valueOf(optString2) : null;
        Date date = !optString6.isEmpty() ? new Date(Integer.parseInt(optString6) * 1000) : null;
        Date date2 = !optString9.isEmpty() ? new Date(Integer.parseInt(optString9) * 1000) : null;
        Date date3 = !optString7.isEmpty() ? new Date(Integer.parseInt(optString7) * 1000) : null;
        if (!optString8.isEmpty()) {
            str = optString8;
        }
        AccessToken accessToken = new AccessToken(optString, optString3, optString11, convertPermissionsStringIntoPermissionsList, convertPermissionsStringIntoPermissionsList2, convertPermissionsStringIntoPermissionsList3, valueOf, date, date2, date3, str);
        AccessToken.setCurrentAccessToken(accessToken);
        return accessToken;
    }

    private static void setPackageName(JSONObject jSONObject, Context context) {
        String optString = jSONObject.optString(SDKConstants.PARAM_DAEMON_PACKAGE_NAME);
        if (!optString.isEmpty()) {
            SharedPreferences.Editor edit = context.getSharedPreferences(SDKConstants.PREF_DAEMON_PACKAGE_NAME, 0).edit();
            edit.putString(SDKConstants.PARAM_DAEMON_PACKAGE_NAME, optString);
            edit.commit();
            return;
        }
        throw new FacebookException("Could not establish a secure connection.");
    }
}

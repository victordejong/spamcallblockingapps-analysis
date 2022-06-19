package com.mopub.network;

import android.content.Context;
import android.net.Uri;
import android.text.TextUtils;
import com.mopub.common.Constants;
import com.mopub.common.Preconditions;
import com.mopub.common.logging.MoPubLog;
import java.util.HashMap;
import java.util.Map;
import org.json.JSONException;
import org.json.JSONObject;
/* loaded from: classes3-dex2jar.jar:com/mopub/network/MoPubRequestUtils.class */
public class MoPubRequestUtils {
    private MoPubRequestUtils() {
    }

    public static int chooseMethod(String str) {
        return isMoPubRequest(str) ? 1 : 0;
    }

    public static Map<String, String> convertQueryToMap(Context context, String str) {
        Preconditions.checkNotNull(context);
        Preconditions.checkNotNull(str);
        return getQueryParamMap(Uri.parse(Networking.getUrlRewriter().rewriteUrl(str)));
    }

    public static String generateBodyFromParams(Map<String, String> map, String str) {
        Preconditions.checkNotNull(str);
        if (!isMoPubRequest(str) || map == null || map.isEmpty()) {
            return null;
        }
        JSONObject jSONObject = new JSONObject();
        for (String str2 : map.keySet()) {
            try {
                jSONObject.put(str2, map.get(str2));
            } catch (JSONException e) {
                MoPubLog.SdkLogEvent sdkLogEvent = MoPubLog.SdkLogEvent.CUSTOM;
                MoPubLog.log(sdkLogEvent, "Unable to add " + str2 + " to JSON body.");
            }
        }
        return jSONObject.toString();
    }

    public static Map<String, String> getQueryParamMap(Uri uri) {
        Preconditions.checkNotNull(uri);
        HashMap hashMap = new HashMap();
        for (String str : uri.getQueryParameterNames()) {
            hashMap.put(str, TextUtils.join(",", uri.getQueryParameters(str)));
        }
        return hashMap;
    }

    public static boolean isMoPubRequest(String str) {
        Preconditions.checkNotNull(str);
        return str.startsWith("https://" + Constants.HOST);
    }

    public static String truncateQueryParamsIfPost(String str) {
        int indexOf;
        Preconditions.checkNotNull(str);
        if (isMoPubRequest(str) && (indexOf = str.indexOf(63)) != -1) {
            return str.substring(0, indexOf);
        }
        return str;
    }
}

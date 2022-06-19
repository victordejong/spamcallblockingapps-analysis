package net.pubnative.lite.sdk.viewability;

import android.text.TextUtils;
import com.iab.omid.library.pubnativenet.adsession.C16426j;
import java.net.URL;
import java.util.regex.Matcher;
import java.util.regex.Pattern;
import net.pubnative.lite.sdk.utils.Logger;
import org.json.JSONObject;
/* loaded from: classes5-dex2jar.jar:net/pubnative/lite/sdk/viewability/HyBidViewabilityVerificationScriptParser.class */
public class HyBidViewabilityVerificationScriptParser {
    private static final String KEY_HASH = "#";
    private static final String KEY_VIEWABILITY = "viewability";
    private static final Pattern PATTERN_SRC_VALUE = Pattern.compile("src=\"(.*?)\"");
    private static final Pattern PATTERN_VENDORKEY_VALUE = Pattern.compile("vk=(.*?);");
    private static final String RESPONSE_KEY_CONFIG = "config";
    private static final String TAG = "HyBidViewabilityVerificationScriptParser";

    public static C16426j parseViewabilityObjectfromAdObject(JSONObject jSONObject) {
        String str;
        if (jSONObject == null) {
            return null;
        }
        try {
            str = jSONObject.getString(RESPONSE_KEY_CONFIG);
        } catch (Exception e) {
            str = "";
        }
        if (TextUtils.isEmpty(str)) {
            return null;
        }
        try {
            Matcher matcher = PATTERN_SRC_VALUE.matcher(str);
            matcher.find(0);
            String[] split = matcher.group(1).split(KEY_HASH, 2);
            URL url = new URL(split[0]);
            String str2 = split[1];
            Matcher matcher2 = PATTERN_VENDORKEY_VALUE.matcher(str2);
            matcher2.find(0);
            return C16426j.m7276a(matcher2.group(1), url, str2);
        } catch (Exception e2) {
            String str3 = TAG;
            Logger.m630d(str3, " Exception: " + e2.getMessage());
            return null;
        }
    }
}

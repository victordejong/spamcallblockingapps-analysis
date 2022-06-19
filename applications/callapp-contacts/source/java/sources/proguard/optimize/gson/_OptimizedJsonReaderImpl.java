package proguard.optimize.gson;

import com.facebook.AccessToken;
import com.google.gson.stream.JsonReader;
import com.mopub.common.Constants;
import java.io.IOException;
import java.util.HashMap;
import java.util.Map;
/* loaded from: classes5-dex2jar.jar:proguard/optimize/gson/_OptimizedJsonReaderImpl.class */
public class _OptimizedJsonReaderImpl implements _OptimizedJsonReader {

    /* renamed from: a */
    private static final Map<String, Integer> f67631a = m124a();

    /* renamed from: a */
    private static Map<String, Integer> m124a() {
        HashMap hashMap = new HashMap();
        hashMap.put(Constants.VAST_URL_NETWORK_MEDIA_FILE, 0);
        hashMap.put("transferServiceCheckTimeInterval", 1);
        hashMap.put(Constants.VAST_COMPANION_ADS, 2);
        hashMap.put("type", 3);
        hashMap.put("IMAGE", 4);
        hashMap.put(Constants.VAST_DSP_CREATIVE_ID, 5);
        hashMap.put("CREATOR", 6);
        hashMap.put("verificationNotExecuted", 7);
        hashMap.put("ERROR", 8);
        hashMap.put("queueARN", 9);
        hashMap.put("BLURRED_LAST_FRAME", 10);
        hashMap.put("NONE", 11);
        hashMap.put(Constants.VAST_TRACKER_PERCENT_VIEWABLE, 12);
        hashMap.put(Constants.VIDEO_TRACKING_EVENTS_KEY, 13);
        hashMap.put("height", 14);
        hashMap.put("STATIC_RESOURCE", 15);
        hashMap.put("QUARTILE_EVENT", 16);
        hashMap.put(Constants.VAST_TRACKERS_ABSOLUTE, 17);
        hashMap.put("VALID_APPLICATION_TYPES", 18);
        hashMap.put(Constants.VAST_TRACKER_REPEATABLE, 19);
        hashMap.put(Constants.VAST_TRACKER_MESSAGE_TYPE, 20);
        hashMap.put("TRACKING_URL", 21);
        hashMap.put(AccessToken.ACCESS_TOKEN_KEY, 22);
        hashMap.put(Constants.VAST_TRACKERS_CLICK, 23);
        hashMap.put("VALID_IMAGE_TYPES", 24);
        hashMap.put("WIFI", 25);
        hashMap.put("cloudFunctionARN", 26);
        hashMap.put(Constants.VAST_URL_CLICKTHROUGH, 27);
        hashMap.put("JAVASCRIPT", 28);
        hashMap.put("transferNetworkConnectionType", 29);
        hashMap.put(Constants.VAST_TRACKERS_CLOSE, 30);
        hashMap.put("created_at", 31);
        hashMap.put("secret", 32);
        hashMap.put("OFF", 33);
        hashMap.put("invocationRoleARN", 34);
        hashMap.put("HTML_RESOURCE", 35);
        hashMap.put("topicARN", 36);
        hashMap.put("transferThreadPoolSize", 37);
        hashMap.put(Constants.VAST_TRACKERS_ERROR, 38);
        hashMap.put("filterRules", 39);
        hashMap.put(Constants.VAST_TRACKERS_FRACTIONAL, 40);
        hashMap.put(Constants.VAST_PRIVACY_ICON_IMAGE_URL, 41);
        hashMap.put(Constants.VAST_IS_REWARDED, 42);
        hashMap.put("token", 43);
        hashMap.put("filter", 44);
        hashMap.put("isTracked", 45);
        hashMap.put("javascriptResourceUrl", 46);
        hashMap.put("width", 47);
        hashMap.put(Constants.VAST_PRIVACY_ICON_CLICK_URL, 48);
        hashMap.put(Constants.VAST_ENABLE_CLICK_EXP, 49);
        hashMap.put("MOBILE", 50);
        hashMap.put("ALL", 51);
        hashMap.put(Constants.VIEWABILITY_VERIFICATION_RESOURCES, 52);
        hashMap.put("INFO", 53);
        hashMap.put("objectPrefixes", 54);
        hashMap.put(Constants.VAST_TRACKER_TRACKING_FRACTION, 55);
        hashMap.put(Constants.VAST_ICON_CONFIG, 56);
        hashMap.put("tag", 57);
        hashMap.put("functionARN", 58);
        hashMap.put("verificationParameters", 59);
        hashMap.put(Constants.VAST_SKIP_OFFSET_MS, 60);
        hashMap.put("level", 61);
        hashMap.put(Constants.VAST_RESOURCE, 62);
        hashMap.put(Constants.VAST_VIDEO_VIEWABILITY_TRACKER, 63);
        hashMap.put(Constants.VAST_CUSTOM_TEXT_SKIP, 64);
        hashMap.put("WARN", 65);
        hashMap.put(Constants.VAST_DURATION_MS, 66);
        hashMap.put(Constants.VAST_TRACKER_PLAYTIME_MS, 67);
        hashMap.put("vendorKey", 68);
        hashMap.put(Constants.VAST_TRACKERS_IMPRESSION, 69);
        hashMap.put(Constants.VAST_TRACKERS_RESUME, 70);
        hashMap.put(Constants.VAST_CUSTOM_CLOSE_ICON_URL, 71);
        hashMap.put("name", 72);
        hashMap.put(Constants.VAST_COUNTDOWN_TIMER_DURATION, 73);
        hashMap.put("errors", 74);
        hashMap.put("code", 75);
        hashMap.put("ANY", 76);
        hashMap.put("token_type", 77);
        hashMap.put(Constants.VAST_CUSTOM_TEXT_CTA, 78);
        hashMap.put(Constants.VAST_TRACKER_CONTENT, 79);
        hashMap.put("Companion", 80);
        hashMap.put(Constants.VAST_TRACKERS_SKIP, 81);
        hashMap.put("percentagePattern", 82);
        hashMap.put(Constants.VAST_TRACKER_TRACKING_MS, 83);
        hashMap.put("creative_type", 84);
        hashMap.put(Constants.VAST_TRACKERS_PAUSE, 85);
        hashMap.put(Constants.VAST_URL_DISK_MEDIA_FILE, 86);
        hashMap.put("IFRAME_RESOURCE", 87);
        hashMap.put("value", 88);
        hashMap.put("TRACE", 89);
        hashMap.put("TOKEN_TYPE_BEARER", 90);
        hashMap.put("message", 91);
        hashMap.put("DEBUG", 92);
        hashMap.put("s3KeyFilter", 93);
        hashMap.put(Constants.VAST_SKIP_OFFSET, 94);
        hashMap.put("absolutePattern", 95);
        hashMap.put(Constants.VAST_TRACKERS_COMPLETE, 96);
        return hashMap;
    }

    @Override // proguard.optimize.gson._OptimizedJsonReader
    /* renamed from: b */
    public int mo123b(JsonReader jsonReader) throws IOException {
        Integer num = f67631a.get(jsonReader.nextName());
        if (num == null) {
            return -1;
        }
        return num.intValue();
    }

    @Override // proguard.optimize.gson._OptimizedJsonReader
    /* renamed from: c */
    public int mo122c(JsonReader jsonReader) throws IOException {
        Integer num = f67631a.get(jsonReader.nextString());
        if (num == null) {
            return -1;
        }
        return num.intValue();
    }
}

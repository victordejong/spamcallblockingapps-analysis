package proguard.optimize.gson;

import com.facebook.AccessToken;
import com.google.gson.stream.JsonWriter;
import com.mopub.common.Constants;
import java.io.IOException;
/* loaded from: classes5-dex2jar.jar:proguard/optimize/gson/_OptimizedJsonWriterImpl.class */
public class _OptimizedJsonWriterImpl implements _OptimizedJsonWriter {

    /* renamed from: a */
    private static final String[] f67632a = m121a();

    /* renamed from: a */
    private static String[] m121a() {
        return new String[]{Constants.VAST_URL_NETWORK_MEDIA_FILE, "transferServiceCheckTimeInterval", Constants.VAST_COMPANION_ADS, "type", "IMAGE", Constants.VAST_DSP_CREATIVE_ID, "CREATOR", "verificationNotExecuted", "ERROR", "queueARN", "BLURRED_LAST_FRAME", "NONE", Constants.VAST_TRACKER_PERCENT_VIEWABLE, Constants.VIDEO_TRACKING_EVENTS_KEY, "height", "STATIC_RESOURCE", "QUARTILE_EVENT", Constants.VAST_TRACKERS_ABSOLUTE, "VALID_APPLICATION_TYPES", Constants.VAST_TRACKER_REPEATABLE, Constants.VAST_TRACKER_MESSAGE_TYPE, "TRACKING_URL", AccessToken.ACCESS_TOKEN_KEY, Constants.VAST_TRACKERS_CLICK, "VALID_IMAGE_TYPES", "WIFI", "cloudFunctionARN", Constants.VAST_URL_CLICKTHROUGH, "JAVASCRIPT", "transferNetworkConnectionType", Constants.VAST_TRACKERS_CLOSE, "created_at", "secret", "OFF", "invocationRoleARN", "HTML_RESOURCE", "topicARN", "transferThreadPoolSize", Constants.VAST_TRACKERS_ERROR, "filterRules", Constants.VAST_TRACKERS_FRACTIONAL, Constants.VAST_PRIVACY_ICON_IMAGE_URL, Constants.VAST_IS_REWARDED, "token", "filter", "isTracked", "javascriptResourceUrl", "width", Constants.VAST_PRIVACY_ICON_CLICK_URL, Constants.VAST_ENABLE_CLICK_EXP, "MOBILE", "ALL", Constants.VIEWABILITY_VERIFICATION_RESOURCES, "INFO", "objectPrefixes", Constants.VAST_TRACKER_TRACKING_FRACTION, Constants.VAST_ICON_CONFIG, "tag", "functionARN", "verificationParameters", Constants.VAST_SKIP_OFFSET_MS, "level", Constants.VAST_RESOURCE, Constants.VAST_VIDEO_VIEWABILITY_TRACKER, Constants.VAST_CUSTOM_TEXT_SKIP, "WARN", Constants.VAST_DURATION_MS, Constants.VAST_TRACKER_PLAYTIME_MS, "vendorKey", Constants.VAST_TRACKERS_IMPRESSION, Constants.VAST_TRACKERS_RESUME, Constants.VAST_CUSTOM_CLOSE_ICON_URL, "name", Constants.VAST_COUNTDOWN_TIMER_DURATION, "errors", "code", "ANY", "token_type", Constants.VAST_CUSTOM_TEXT_CTA, Constants.VAST_TRACKER_CONTENT, "Companion", Constants.VAST_TRACKERS_SKIP, "percentagePattern", Constants.VAST_TRACKER_TRACKING_MS, "creative_type", Constants.VAST_TRACKERS_PAUSE, Constants.VAST_URL_DISK_MEDIA_FILE, "IFRAME_RESOURCE", "value", "TRACE", "TOKEN_TYPE_BEARER", "message", "DEBUG", "s3KeyFilter", Constants.VAST_SKIP_OFFSET, "absolutePattern", Constants.VAST_TRACKERS_COMPLETE};
    }

    @Override // proguard.optimize.gson._OptimizedJsonWriter
    /* renamed from: b */
    public void mo120b(JsonWriter jsonWriter, int i) throws IOException {
        jsonWriter.name(f67632a[i]);
    }

    @Override // proguard.optimize.gson._OptimizedJsonWriter
    /* renamed from: c */
    public void mo119c(JsonWriter jsonWriter, int i) throws IOException {
        jsonWriter.value(f67632a[i]);
    }
}

package net.pubnative.lite.sdk.analytics;
/* loaded from: classes5-dex2jar.jar:net/pubnative/lite/sdk/analytics/Reporting.class */
public class Reporting {

    /* loaded from: classes5-dex2jar.jar:net/pubnative/lite/sdk/analytics/Reporting$AdFormat.class */
    public final class AdFormat {
        public static final String BANNER = "banner";
        public static final String FULLSCREEN = "fullscreen";
        public static final String NATIVE = "native";
        public static final String REWARDED = "rewarded";

        public AdFormat() {
            Reporting.this = r4;
        }
    }

    /* loaded from: classes5-dex2jar.jar:net/pubnative/lite/sdk/analytics/Reporting$CreativeType.class */
    public final class CreativeType {
        public static final String STANDARD = "standard";
        public static final String VIDEO = "video";

        public CreativeType() {
            Reporting.this = r4;
        }
    }

    /* loaded from: classes5-dex2jar.jar:net/pubnative/lite/sdk/analytics/Reporting$EventType.class */
    public final class EventType {
        public static final String AUCTION_FINISHED = "auction_finished";
        public static final String AUCTION_NEXT_ITEM = "auction_next_item";
        public static final String AUCTION_START = "auction_start";
        public static final String CLICK = "click";
        public static final String ERROR = "error";
        public static final String FILL = "fill";
        public static final String IMPRESSION = "impression";
        public static final String INTERSTITIAL_CLOSED = "interstitial_closed";
        public static final String NEXT_AD_SOURCE = "next_ad_source";
        public static final String NO_FILL = "no_fill";
        public static final String VIDEO_AD_BUFFER_FINISH = "buffer_finish";
        public static final String VIDEO_AD_BUFFER_START = "buffer_start";
        public static final String VIDEO_AD_CLICKED = "clicked";
        public static final String VIDEO_AD_COMPLETE = "ad_complete";
        public static final String VIDEO_AD_FIRST_QUARTILE = "first_quartile";
        public static final String VIDEO_AD_IMPRESSION = "impression";
        public static final String VIDEO_AD_MIDPOINT = "midpoint";
        public static final String VIDEO_AD_PAUSE = "pause";
        public static final String VIDEO_AD_RESUME = "resume";
        public static final String VIDEO_AD_SESSION_INITIALIZED = "session_initialized";
        public static final String VIDEO_AD_SESSION_LOADED = "session_loaded";
        public static final String VIDEO_AD_SESSION_STARTED = "session_started";
        public static final String VIDEO_AD_SESSION_STOPPED = "session_stopped";
        public static final String VIDEO_AD_SKIPPED = "skipped";
        public static final String VIDEO_AD_THIRD_QUARTILE = "third_quartile";
        public static final String VIDEO_AD_VOLUME_CHANGE = "volume_change";
        public static final String VIDEO_DISMISSED = "video_dismissed";
        public static final String VIDEO_FINISHED = "video_finished";
        public static final String VIDEO_MUTE = "video_mute";
        public static final String VIDEO_STARTED = "video_started";
        public static final String VIDEO_UNMUTE = "video_unmute";
        public static final String WEB_AD_SESSION_INITIALIZED = "web_ad_session_started";
        public static final String WINNER = "winner";

        public EventType() {
            Reporting.this = r4;
        }
    }

    /* loaded from: classes5-dex2jar.jar:net/pubnative/lite/sdk/analytics/Reporting$Key.class */
    public final class Key {
        public static final String AD_FORMAT = "ad_format";
        public static final String AD_SIZE = "ad_size";
        public static final String CAMPAIGN_ID = "campaign_id";
        public static final String CATEGORY_ID = "category_id";
        public static final String CREATIVE_ID = "creative_id";
        public static final String CREATIVE_TYPE = "creative_type";
        public static final String EVENT_TYPE = "event_type";
        public static final String PARTICIPANTS = "participants";
        public static final String TIMESTAMP = "timestamp";

        public Key() {
            Reporting.this = r4;
        }
    }
}

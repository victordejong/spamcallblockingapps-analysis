package net.pubnative.lite.sdk.consent.model;

import com.amazonaws.auth.policy.internal.JsonDocumentFields;
import com.mopub.nativeads.FacebookNative;
import io.objectbox.model.PropertyFlags;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.p;
import net.pubnative.lite.sdk.analytics.Reporting;
import net.pubnative.lite.sdk.consent.db.Database;
import net.pubnative.lite.sdk.consent.db.Schema;
@Database(tableName = "ad_analytics_aggregated")
@Metadata(bv = {1, 0, 3}, d1 = {"��(\n\u0002\u0018\u0002\n\u0002\u0010��\n��\n\u0002\u0010\b\n\u0002\b\u0005\n\u0002\u0010\t\n\u0002\bE\n\u0002\u0010\u000b\n\u0002\b\u0003\n\u0002\u0010\u000e\n��\b\u0087\b\u0018��2\u00020\u0001Bµ\u0001\u0012\n\b\u0002\u0010\u0002\u001a\u0004\u0018\u00010\u0003\u0012\n\b\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u0003\u0012\n\b\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u0003\u0012\b\u0010\u0006\u001a\u0004\u0018\u00010\u0003\u0012\b\u0010\u0007\u001a\u0004\u0018\u00010\u0003\u0012\b\u0010\b\u001a\u0004\u0018\u00010\t\u0012\b\u0010\n\u001a\u0004\u0018\u00010\t\u0012\b\u0010\u000b\u001a\u0004\u0018\u00010\t\u0012\b\u0010\f\u001a\u0004\u0018\u00010\t\u0012\b\u0010\r\u001a\u0004\u0018\u00010\t\u0012\b\u0010\u000e\u001a\u0004\u0018\u00010\t\u0012\b\u0010\u000f\u001a\u0004\u0018\u00010\t\u0012\b\u0010\u0010\u001a\u0004\u0018\u00010\t\u0012\b\u0010\u0011\u001a\u0004\u0018\u00010\t\u0012\b\u0010\u0012\u001a\u0004\u0018\u00010\t\u0012\b\u0010\u0013\u001a\u0004\u0018\u00010\t\u0012\b\u0010\u0014\u001a\u0004\u0018\u00010\t¢\u0006\u0002\u0010\u0015J\u0010\u0010;\u001a\u0004\u0018\u00010\u0003HÆ\u0003¢\u0006\u0002\u0010\u001cJ\u0010\u0010<\u001a\u0004\u0018\u00010\tHÆ\u0003¢\u0006\u0002\u0010\u0017J\u0010\u0010=\u001a\u0004\u0018\u00010\tHÆ\u0003¢\u0006\u0002\u0010\u0017J\u0010\u0010>\u001a\u0004\u0018\u00010\tHÆ\u0003¢\u0006\u0002\u0010\u0017J\u0010\u0010?\u001a\u0004\u0018\u00010\tHÆ\u0003¢\u0006\u0002\u0010\u0017J\u0010\u0010@\u001a\u0004\u0018\u00010\tHÆ\u0003¢\u0006\u0002\u0010\u0017J\u0010\u0010A\u001a\u0004\u0018\u00010\tHÆ\u0003¢\u0006\u0002\u0010\u0017J\u0010\u0010B\u001a\u0004\u0018\u00010\tHÆ\u0003¢\u0006\u0002\u0010\u0017J\u0010\u0010C\u001a\u0004\u0018\u00010\tHÆ\u0003¢\u0006\u0002\u0010\u0017J\u0010\u0010D\u001a\u0004\u0018\u00010\u0003HÆ\u0003¢\u0006\u0002\u0010\u001cJ\u0010\u0010E\u001a\u0004\u0018\u00010\u0003HÆ\u0003¢\u0006\u0002\u0010\u001cJ\u0010\u0010F\u001a\u0004\u0018\u00010\u0003HÆ\u0003¢\u0006\u0002\u0010\u001cJ\u0010\u0010G\u001a\u0004\u0018\u00010\u0003HÆ\u0003¢\u0006\u0002\u0010\u001cJ\u0010\u0010H\u001a\u0004\u0018\u00010\tHÆ\u0003¢\u0006\u0002\u0010\u0017J\u0010\u0010I\u001a\u0004\u0018\u00010\tHÆ\u0003¢\u0006\u0002\u0010\u0017J\u0010\u0010J\u001a\u0004\u0018\u00010\tHÆ\u0003¢\u0006\u0002\u0010\u0017J\u0010\u0010K\u001a\u0004\u0018\u00010\tHÆ\u0003¢\u0006\u0002\u0010\u0017JÚ\u0001\u0010L\u001a\u00020��2\n\b\u0002\u0010\u0002\u001a\u0004\u0018\u00010\u00032\n\b\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u00032\n\b\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u00032\n\b\u0002\u0010\u0006\u001a\u0004\u0018\u00010\u00032\n\b\u0002\u0010\u0007\u001a\u0004\u0018\u00010\u00032\n\b\u0002\u0010\b\u001a\u0004\u0018\u00010\t2\n\b\u0002\u0010\n\u001a\u0004\u0018\u00010\t2\n\b\u0002\u0010\u000b\u001a\u0004\u0018\u00010\t2\n\b\u0002\u0010\f\u001a\u0004\u0018\u00010\t2\n\b\u0002\u0010\r\u001a\u0004\u0018\u00010\t2\n\b\u0002\u0010\u000e\u001a\u0004\u0018\u00010\t2\n\b\u0002\u0010\u000f\u001a\u0004\u0018\u00010\t2\n\b\u0002\u0010\u0010\u001a\u0004\u0018\u00010\t2\n\b\u0002\u0010\u0011\u001a\u0004\u0018\u00010\t2\n\b\u0002\u0010\u0012\u001a\u0004\u0018\u00010\t2\n\b\u0002\u0010\u0013\u001a\u0004\u0018\u00010\t2\n\b\u0002\u0010\u0014\u001a\u0004\u0018\u00010\tHÆ\u0001¢\u0006\u0002\u0010MJ\u0013\u0010N\u001a\u00020O2\b\u0010P\u001a\u0004\u0018\u00010\u0001HÖ\u0003J\t\u0010Q\u001a\u00020\u0003HÖ\u0001J\t\u0010R\u001a\u00020SHÖ\u0001R\"\u0010\u000e\u001a\u0004\u0018\u00010\t8\u0006@\u0006X\u0087\u000e¢\u0006\u0010\n\u0002\u0010\u001a\u001a\u0004\b\u0016\u0010\u0017\"\u0004\b\u0018\u0010\u0019R\"\u0010\u0007\u001a\u0004\u0018\u00010\u00038\u0006@\u0006X\u0087\u000e¢\u0006\u0010\n\u0002\u0010\u001f\u001a\u0004\b\u001b\u0010\u001c\"\u0004\b\u001d\u0010\u001eR\u001a\u0010\u0004\u001a\u0004\u0018\u00010\u00038\u0006X\u0087\u0004¢\u0006\n\n\u0002\u0010\u001f\u001a\u0004\b \u0010\u001cR\u001a\u0010\u0002\u001a\u0004\u0018\u00010\u00038\u0006X\u0087\u0004¢\u0006\n\n\u0002\u0010\u001f\u001a\u0004\b!\u0010\u001cR\"\u0010\u0006\u001a\u0004\u0018\u00010\u00038\u0006@\u0006X\u0087\u000e¢\u0006\u0010\n\u0002\u0010\u001f\u001a\u0004\b\"\u0010\u001c\"\u0004\b#\u0010\u001eR\"\u0010\r\u001a\u0004\u0018\u00010\t8\u0006@\u0006X\u0087\u000e¢\u0006\u0010\n\u0002\u0010\u001a\u001a\u0004\b$\u0010\u0017\"\u0004\b%\u0010\u0019R\u001a\u0010\u0005\u001a\u0004\u0018\u00010\u00038\u0006X\u0087\u0004¢\u0006\n\n\u0002\u0010\u001f\u001a\u0004\b&\u0010\u001cR\"\u0010\u0011\u001a\u0004\u0018\u00010\t8\u0006@\u0006X\u0087\u000e¢\u0006\u0010\n\u0002\u0010\u001a\u001a\u0004\b'\u0010\u0017\"\u0004\b(\u0010\u0019R\"\u0010\u0012\u001a\u0004\u0018\u00010\t8\u0006@\u0006X\u0087\u000e¢\u0006\u0010\n\u0002\u0010\u001a\u001a\u0004\b)\u0010\u0017\"\u0004\b*\u0010\u0019R\"\u0010\u000b\u001a\u0004\u0018\u00010\t8\u0006@\u0006X\u0087\u000e¢\u0006\u0010\n\u0002\u0010\u001a\u001a\u0004\b+\u0010\u0017\"\u0004\b,\u0010\u0019R\"\u0010\n\u001a\u0004\u0018\u00010\t8\u0006@\u0006X\u0087\u000e¢\u0006\u0010\n\u0002\u0010\u001a\u001a\u0004\b-\u0010\u0017\"\u0004\b.\u0010\u0019R\"\u0010\u000f\u001a\u0004\u0018\u00010\t8\u0006@\u0006X\u0087\u000e¢\u0006\u0010\n\u0002\u0010\u001a\u001a\u0004\b/\u0010\u0017\"\u0004\b0\u0010\u0019R\"\u0010\u0013\u001a\u0004\u0018\u00010\t8\u0006@\u0006X\u0087\u000e¢\u0006\u0010\n\u0002\u0010\u001a\u001a\u0004\b1\u0010\u0017\"\u0004\b2\u0010\u0019R\"\u0010\u0014\u001a\u0004\u0018\u00010\t8\u0006@\u0006X\u0087\u000e¢\u0006\u0010\n\u0002\u0010\u001a\u001a\u0004\b3\u0010\u0017\"\u0004\b4\u0010\u0019R\"\u0010\b\u001a\u0004\u0018\u00010\t8\u0006@\u0006X\u0087\u000e¢\u0006\u0010\n\u0002\u0010\u001a\u001a\u0004\b5\u0010\u0017\"\u0004\b6\u0010\u0019R\"\u0010\u0010\u001a\u0004\u0018\u00010\t8\u0006@\u0006X\u0087\u000e¢\u0006\u0010\n\u0002\u0010\u001a\u001a\u0004\b7\u0010\u0017\"\u0004\b8\u0010\u0019R\"\u0010\f\u001a\u0004\u0018\u00010\t8\u0006@\u0006X\u0087\u000e¢\u0006\u0010\n\u0002\u0010\u001a\u001a\u0004\b9\u0010\u0017\"\u0004\b:\u0010\u0019¨\u0006T"}, d2 = {"Lnet/pubnative/lite/sdk/consent/model/AdAnalyticsEventAggregated;", "", "id", "", Reporting.Key.CREATIVE_ID, FacebookNative.PLACEMENT_ID_KEY, "impressions", "clicks", Reporting.EventType.VIDEO_STARTED, "", Reporting.EventType.VIDEO_FINISHED, Reporting.EventType.VIDEO_DISMISSED, "video_view_time", "interstitial_visible_time", "banner_visible_time", "video_muted", "video_unmuted", "time_to_click_html", "time_to_click_vast", "video_position_click", "video_position_dismiss", "(Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Long;)V", "getBanner_visible_time", "()Ljava/lang/Long;", "setBanner_visible_time", "(Ljava/lang/Long;)V", "Ljava/lang/Long;", "getClicks", "()Ljava/lang/Integer;", "setClicks", "(Ljava/lang/Integer;)V", "Ljava/lang/Integer;", "getCreative_id", "getId", "getImpressions", "setImpressions", "getInterstitial_visible_time", "setInterstitial_visible_time", "getPlacement_id", "getTime_to_click_html", "setTime_to_click_html", "getTime_to_click_vast", "setTime_to_click_vast", "getVideo_dismissed", "setVideo_dismissed", "getVideo_finished", "setVideo_finished", "getVideo_muted", "setVideo_muted", "getVideo_position_click", "setVideo_position_click", "getVideo_position_dismiss", "setVideo_position_dismiss", "getVideo_started", "setVideo_started", "getVideo_unmuted", "setVideo_unmuted", "getVideo_view_time", "setVideo_view_time", "component1", "component10", "component11", "component12", "component13", "component14", "component15", "component16", "component17", "component2", "component3", "component4", "component5", "component6", "component7", "component8", "component9", "copy", "(Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Long;)Lnet/pubnative/lite/sdk/consent/model/AdAnalyticsEventAggregated;", "equals", "", "other", "hashCode", "toString", "", "hybid.sdk.voyager_release"}, k = 1, mv = {1, 4, 2})
/* loaded from: classes5-dex2jar.jar:net/pubnative/lite/sdk/consent/model/AdAnalyticsEventAggregated.class */
public final class AdAnalyticsEventAggregated {
    @Schema(field = "banner_visible_time")
    private Long banner_visible_time;
    @Schema(field = "clicks")
    private Integer clicks;
    @Schema(field = Reporting.Key.CREATIVE_ID)
    private final Integer creative_id;
    @Schema(autoIncrease = true, field = JsonDocumentFields.POLICY_ID, generatedId = true, nonNullable = true)
    private final Integer id;
    @Schema(field = "impressions")
    private Integer impressions;
    @Schema(field = "interstitial_visible_time")
    private Long interstitial_visible_time;
    @Schema(field = FacebookNative.PLACEMENT_ID_KEY)
    private final Integer placement_id;
    @Schema(field = "time_to_click_html")
    private Long time_to_click_html;
    @Schema(field = "time_to_click_vast")
    private Long time_to_click_vast;
    @Schema(field = Reporting.EventType.VIDEO_DISMISSED)
    private Long video_dismissed;
    @Schema(field = Reporting.EventType.VIDEO_FINISHED)
    private Long video_finished;
    @Schema(field = "video_muted")
    private Long video_muted;
    @Schema(field = "video_position_click")
    private Long video_position_click;
    @Schema(field = "video_position_dismiss")
    private Long video_position_dismiss;
    @Schema(field = Reporting.EventType.VIDEO_STARTED)
    private Long video_started;
    @Schema(field = "video_unmuted")
    private Long video_unmuted;
    @Schema(field = "video_view_time")
    private Long video_view_time;

    public AdAnalyticsEventAggregated(Integer num, Integer num2, Integer num3, Integer num4, Integer num5, Long l, Long l2, Long l3, Long l4, Long l5, Long l6, Long l7, Long l8, Long l9, Long l10, Long l11, Long l12) {
        this.id = num;
        this.creative_id = num2;
        this.placement_id = num3;
        this.impressions = num4;
        this.clicks = num5;
        this.video_started = l;
        this.video_finished = l2;
        this.video_dismissed = l3;
        this.video_view_time = l4;
        this.interstitial_visible_time = l5;
        this.banner_visible_time = l6;
        this.video_muted = l7;
        this.video_unmuted = l8;
        this.time_to_click_html = l9;
        this.time_to_click_vast = l10;
        this.video_position_click = l11;
        this.video_position_dismiss = l12;
    }

    public /* synthetic */ AdAnalyticsEventAggregated(Integer num, Integer num2, Integer num3, Integer num4, Integer num5, Long l, Long l2, Long l3, Long l4, Long l5, Long l6, Long l7, Long l8, Long l9, Long l10, Long l11, Long l12, int i, DefaultConstructorMarker defaultConstructorMarker) {
        this((i & 1) != 0 ? 0 : num, (i & 2) != 0 ? 0 : num2, (i & 4) != 0 ? 0 : num3, num4, num5, l, l2, l3, l4, l5, l6, l7, l8, l9, l10, l11, l12);
    }

    public static /* synthetic */ AdAnalyticsEventAggregated copy$default(AdAnalyticsEventAggregated adAnalyticsEventAggregated, Integer num, Integer num2, Integer num3, Integer num4, Integer num5, Long l, Long l2, Long l3, Long l4, Long l5, Long l6, Long l7, Long l8, Long l9, Long l10, Long l11, Long l12, int i, Object obj) {
        if ((i & 1) != 0) {
            num = adAnalyticsEventAggregated.id;
        }
        if ((i & 2) != 0) {
            num2 = adAnalyticsEventAggregated.creative_id;
        }
        if ((i & 4) != 0) {
            num3 = adAnalyticsEventAggregated.placement_id;
        }
        if ((i & 8) != 0) {
            num4 = adAnalyticsEventAggregated.impressions;
        }
        if ((i & 16) != 0) {
            num5 = adAnalyticsEventAggregated.clicks;
        }
        if ((i & 32) != 0) {
            l = adAnalyticsEventAggregated.video_started;
        }
        if ((i & 64) != 0) {
            l2 = adAnalyticsEventAggregated.video_finished;
        }
        if ((i & 128) != 0) {
            l3 = adAnalyticsEventAggregated.video_dismissed;
        }
        if ((i & PropertyFlags.INDEX_PARTIAL_SKIP_NULL) != 0) {
            l4 = adAnalyticsEventAggregated.video_view_time;
        }
        if ((i & 512) != 0) {
            l5 = adAnalyticsEventAggregated.interstitial_visible_time;
        }
        if ((i & 1024) != 0) {
            l6 = adAnalyticsEventAggregated.banner_visible_time;
        }
        if ((i & 2048) != 0) {
            l7 = adAnalyticsEventAggregated.video_muted;
        }
        if ((i & 4096) != 0) {
            l8 = adAnalyticsEventAggregated.video_unmuted;
        }
        if ((i & PropertyFlags.UNSIGNED) != 0) {
            l9 = adAnalyticsEventAggregated.time_to_click_html;
        }
        if ((i & 16384) != 0) {
            l10 = adAnalyticsEventAggregated.time_to_click_vast;
        }
        if ((i & 32768) != 0) {
            l11 = adAnalyticsEventAggregated.video_position_click;
        }
        if ((i & 65536) != 0) {
            l12 = adAnalyticsEventAggregated.video_position_dismiss;
        }
        return adAnalyticsEventAggregated.copy(num, num2, num3, num4, num5, l, l2, l3, l4, l5, l6, l7, l8, l9, l10, l11, l12);
    }

    public final Integer component1() {
        return this.id;
    }

    public final Long component10() {
        return this.interstitial_visible_time;
    }

    public final Long component11() {
        return this.banner_visible_time;
    }

    public final Long component12() {
        return this.video_muted;
    }

    public final Long component13() {
        return this.video_unmuted;
    }

    public final Long component14() {
        return this.time_to_click_html;
    }

    public final Long component15() {
        return this.time_to_click_vast;
    }

    public final Long component16() {
        return this.video_position_click;
    }

    public final Long component17() {
        return this.video_position_dismiss;
    }

    public final Integer component2() {
        return this.creative_id;
    }

    public final Integer component3() {
        return this.placement_id;
    }

    public final Integer component4() {
        return this.impressions;
    }

    public final Integer component5() {
        return this.clicks;
    }

    public final Long component6() {
        return this.video_started;
    }

    public final Long component7() {
        return this.video_finished;
    }

    public final Long component8() {
        return this.video_dismissed;
    }

    public final Long component9() {
        return this.video_view_time;
    }

    public final AdAnalyticsEventAggregated copy(Integer num, Integer num2, Integer num3, Integer num4, Integer num5, Long l, Long l2, Long l3, Long l4, Long l5, Long l6, Long l7, Long l8, Long l9, Long l10, Long l11, Long l12) {
        return new AdAnalyticsEventAggregated(num, num2, num3, num4, num5, l, l2, l3, l4, l5, l6, l7, l8, l9, l10, l11, l12);
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof AdAnalyticsEventAggregated)) {
            return false;
        }
        AdAnalyticsEventAggregated adAnalyticsEventAggregated = (AdAnalyticsEventAggregated) obj;
        return p.a(this.id, adAnalyticsEventAggregated.id) && p.a(this.creative_id, adAnalyticsEventAggregated.creative_id) && p.a(this.placement_id, adAnalyticsEventAggregated.placement_id) && p.a(this.impressions, adAnalyticsEventAggregated.impressions) && p.a(this.clicks, adAnalyticsEventAggregated.clicks) && p.a(this.video_started, adAnalyticsEventAggregated.video_started) && p.a(this.video_finished, adAnalyticsEventAggregated.video_finished) && p.a(this.video_dismissed, adAnalyticsEventAggregated.video_dismissed) && p.a(this.video_view_time, adAnalyticsEventAggregated.video_view_time) && p.a(this.interstitial_visible_time, adAnalyticsEventAggregated.interstitial_visible_time) && p.a(this.banner_visible_time, adAnalyticsEventAggregated.banner_visible_time) && p.a(this.video_muted, adAnalyticsEventAggregated.video_muted) && p.a(this.video_unmuted, adAnalyticsEventAggregated.video_unmuted) && p.a(this.time_to_click_html, adAnalyticsEventAggregated.time_to_click_html) && p.a(this.time_to_click_vast, adAnalyticsEventAggregated.time_to_click_vast) && p.a(this.video_position_click, adAnalyticsEventAggregated.video_position_click) && p.a(this.video_position_dismiss, adAnalyticsEventAggregated.video_position_dismiss);
    }

    public final Long getBanner_visible_time() {
        return this.banner_visible_time;
    }

    public final Integer getClicks() {
        return this.clicks;
    }

    public final Integer getCreative_id() {
        return this.creative_id;
    }

    public final Integer getId() {
        return this.id;
    }

    public final Integer getImpressions() {
        return this.impressions;
    }

    public final Long getInterstitial_visible_time() {
        return this.interstitial_visible_time;
    }

    public final Integer getPlacement_id() {
        return this.placement_id;
    }

    public final Long getTime_to_click_html() {
        return this.time_to_click_html;
    }

    public final Long getTime_to_click_vast() {
        return this.time_to_click_vast;
    }

    public final Long getVideo_dismissed() {
        return this.video_dismissed;
    }

    public final Long getVideo_finished() {
        return this.video_finished;
    }

    public final Long getVideo_muted() {
        return this.video_muted;
    }

    public final Long getVideo_position_click() {
        return this.video_position_click;
    }

    public final Long getVideo_position_dismiss() {
        return this.video_position_dismiss;
    }

    public final Long getVideo_started() {
        return this.video_started;
    }

    public final Long getVideo_unmuted() {
        return this.video_unmuted;
    }

    public final Long getVideo_view_time() {
        return this.video_view_time;
    }

    public final int hashCode() {
        Integer num = this.id;
        int i = 0;
        int hashCode = num != null ? num.hashCode() : 0;
        Integer num2 = this.creative_id;
        int hashCode2 = num2 != null ? num2.hashCode() : 0;
        Integer num3 = this.placement_id;
        int hashCode3 = num3 != null ? num3.hashCode() : 0;
        Integer num4 = this.impressions;
        int hashCode4 = num4 != null ? num4.hashCode() : 0;
        Integer num5 = this.clicks;
        int hashCode5 = num5 != null ? num5.hashCode() : 0;
        Long l = this.video_started;
        int hashCode6 = l != null ? l.hashCode() : 0;
        Long l2 = this.video_finished;
        int hashCode7 = l2 != null ? l2.hashCode() : 0;
        Long l3 = this.video_dismissed;
        int hashCode8 = l3 != null ? l3.hashCode() : 0;
        Long l4 = this.video_view_time;
        int hashCode9 = l4 != null ? l4.hashCode() : 0;
        Long l5 = this.interstitial_visible_time;
        int hashCode10 = l5 != null ? l5.hashCode() : 0;
        Long l6 = this.banner_visible_time;
        int hashCode11 = l6 != null ? l6.hashCode() : 0;
        Long l7 = this.video_muted;
        int hashCode12 = l7 != null ? l7.hashCode() : 0;
        Long l8 = this.video_unmuted;
        int hashCode13 = l8 != null ? l8.hashCode() : 0;
        Long l9 = this.time_to_click_html;
        int hashCode14 = l9 != null ? l9.hashCode() : 0;
        Long l10 = this.time_to_click_vast;
        int hashCode15 = l10 != null ? l10.hashCode() : 0;
        Long l11 = this.video_position_click;
        int hashCode16 = l11 != null ? l11.hashCode() : 0;
        Long l12 = this.video_position_dismiss;
        if (l12 != null) {
            i = l12.hashCode();
        }
        return (((((((((((((((((((((((((((((((hashCode * 31) + hashCode2) * 31) + hashCode3) * 31) + hashCode4) * 31) + hashCode5) * 31) + hashCode6) * 31) + hashCode7) * 31) + hashCode8) * 31) + hashCode9) * 31) + hashCode10) * 31) + hashCode11) * 31) + hashCode12) * 31) + hashCode13) * 31) + hashCode14) * 31) + hashCode15) * 31) + hashCode16) * 31) + i;
    }

    public final void setBanner_visible_time(Long l) {
        this.banner_visible_time = l;
    }

    public final void setClicks(Integer num) {
        this.clicks = num;
    }

    public final void setImpressions(Integer num) {
        this.impressions = num;
    }

    public final void setInterstitial_visible_time(Long l) {
        this.interstitial_visible_time = l;
    }

    public final void setTime_to_click_html(Long l) {
        this.time_to_click_html = l;
    }

    public final void setTime_to_click_vast(Long l) {
        this.time_to_click_vast = l;
    }

    public final void setVideo_dismissed(Long l) {
        this.video_dismissed = l;
    }

    public final void setVideo_finished(Long l) {
        this.video_finished = l;
    }

    public final void setVideo_muted(Long l) {
        this.video_muted = l;
    }

    public final void setVideo_position_click(Long l) {
        this.video_position_click = l;
    }

    public final void setVideo_position_dismiss(Long l) {
        this.video_position_dismiss = l;
    }

    public final void setVideo_started(Long l) {
        this.video_started = l;
    }

    public final void setVideo_unmuted(Long l) {
        this.video_unmuted = l;
    }

    public final void setVideo_view_time(Long l) {
        this.video_view_time = l;
    }

    public final String toString() {
        return "AdAnalyticsEventAggregated(id=" + this.id + ", creative_id=" + this.creative_id + ", placement_id=" + this.placement_id + ", impressions=" + this.impressions + ", clicks=" + this.clicks + ", video_started=" + this.video_started + ", video_finished=" + this.video_finished + ", video_dismissed=" + this.video_dismissed + ", video_view_time=" + this.video_view_time + ", interstitial_visible_time=" + this.interstitial_visible_time + ", banner_visible_time=" + this.banner_visible_time + ", video_muted=" + this.video_muted + ", video_unmuted=" + this.video_unmuted + ", time_to_click_html=" + this.time_to_click_html + ", time_to_click_vast=" + this.time_to_click_vast + ", video_position_click=" + this.video_position_click + ", video_position_dismiss=" + this.video_position_dismiss + ")";
    }
}

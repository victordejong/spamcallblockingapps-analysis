package net.pubnative.lite.sdk.consent.model;

import com.amazonaws.auth.policy.internal.JsonDocumentFields;
import com.mopub.nativeads.FacebookNative;
import io.objectbox.model.PropertyFlags;
import kotlin.Metadata;
import kotlin.jvm.internal.C18524p;
import kotlin.jvm.internal.DefaultConstructorMarker;
import net.pubnative.lite.sdk.analytics.Reporting;
import net.pubnative.lite.sdk.consent.p573db.Database;
import net.pubnative.lite.sdk.consent.p573db.Schema;
@Database(tableName = "ad_analytics_event")
@Metadata(m4300bv = {1, 0, 3}, m4299d1 = {"��(\n\u0002\u0018\u0002\n\u0002\u0010��\n��\n\u0002\u0010\b\n��\n\u0002\u0010\u000e\n\u0002\b\u0005\n\u0002\u0010\t\n\u0002\b,\n\u0002\u0010\u000b\n\u0002\b\u0004\b\u0087\b\u0018��2\u00020\u0001Bk\u0012\n\b\u0002\u0010\u0002\u001a\u0004\u0018\u00010\u0003\u0012\b\u0010\u0004\u001a\u0004\u0018\u00010\u0005\u0012\b\u0010\u0006\u001a\u0004\u0018\u00010\u0005\u0012\b\u0010\u0007\u001a\u0004\u0018\u00010\u0005\u0012\b\u0010\b\u001a\u0004\u0018\u00010\u0005\u0012\b\u0010\t\u001a\u0004\u0018\u00010\u0005\u0012\b\u0010\n\u001a\u0004\u0018\u00010\u000b\u0012\b\u0010\f\u001a\u0004\u0018\u00010\u000b\u0012\b\u0010\r\u001a\u0004\u0018\u00010\u000b\u0012\b\u0010\u000e\u001a\u0004\u0018\u00010\u0003¢\u0006\u0002\u0010\u000fJ\u0010\u0010+\u001a\u0004\u0018\u00010\u0003HÆ\u0003¢\u0006\u0002\u0010 J\u0010\u0010,\u001a\u0004\u0018\u00010\u0003HÆ\u0003¢\u0006\u0002\u0010 J\u000b\u0010-\u001a\u0004\u0018\u00010\u0005HÆ\u0003J\u000b\u0010.\u001a\u0004\u0018\u00010\u0005HÆ\u0003J\u000b\u0010/\u001a\u0004\u0018\u00010\u0005HÆ\u0003J\u000b\u00100\u001a\u0004\u0018\u00010\u0005HÆ\u0003J\u000b\u00101\u001a\u0004\u0018\u00010\u0005HÆ\u0003J\u0010\u00102\u001a\u0004\u0018\u00010\u000bHÆ\u0003¢\u0006\u0002\u0010\u0019J\u0010\u00103\u001a\u0004\u0018\u00010\u000bHÆ\u0003¢\u0006\u0002\u0010\u0019J\u0010\u00104\u001a\u0004\u0018\u00010\u000bHÆ\u0003¢\u0006\u0002\u0010\u0019J\u0086\u0001\u00105\u001a\u00020��2\n\b\u0002\u0010\u0002\u001a\u0004\u0018\u00010\u00032\n\b\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u00052\n\b\u0002\u0010\u0006\u001a\u0004\u0018\u00010\u00052\n\b\u0002\u0010\u0007\u001a\u0004\u0018\u00010\u00052\n\b\u0002\u0010\b\u001a\u0004\u0018\u00010\u00052\n\b\u0002\u0010\t\u001a\u0004\u0018\u00010\u00052\n\b\u0002\u0010\n\u001a\u0004\u0018\u00010\u000b2\n\b\u0002\u0010\f\u001a\u0004\u0018\u00010\u000b2\n\b\u0002\u0010\r\u001a\u0004\u0018\u00010\u000b2\n\b\u0002\u0010\u000e\u001a\u0004\u0018\u00010\u0003HÆ\u0001¢\u0006\u0002\u00106J\u0013\u00107\u001a\u0002082\b\u00109\u001a\u0004\u0018\u00010\u0001HÖ\u0003J\t\u0010:\u001a\u00020\u0003HÖ\u0001J\t\u0010;\u001a\u00020\u0005HÖ\u0001R \u0010\b\u001a\u0004\u0018\u00010\u00058\u0006@\u0006X\u0087\u000e¢\u0006\u000e\n��\u001a\u0004\b\u0010\u0010\u0011\"\u0004\b\u0012\u0010\u0013R \u0010\t\u001a\u0004\u0018\u00010\u00058\u0006@\u0006X\u0087\u000e¢\u0006\u000e\n��\u001a\u0004\b\u0014\u0010\u0011\"\u0004\b\u0015\u0010\u0013R \u0010\u0007\u001a\u0004\u0018\u00010\u00058\u0006@\u0006X\u0087\u000e¢\u0006\u000e\n��\u001a\u0004\b\u0016\u0010\u0011\"\u0004\b\u0017\u0010\u0013R\"\u0010\n\u001a\u0004\u0018\u00010\u000b8\u0006@\u0006X\u0087\u000e¢\u0006\u0010\n\u0002\u0010\u001c\u001a\u0004\b\u0018\u0010\u0019\"\u0004\b\u001a\u0010\u001bR \u0010\u0006\u001a\u0004\u0018\u00010\u00058\u0006@\u0006X\u0087\u000e¢\u0006\u000e\n��\u001a\u0004\b\u001d\u0010\u0011\"\u0004\b\u001e\u0010\u0013R\u001a\u0010\u0002\u001a\u0004\u0018\u00010\u00038\u0006X\u0087\u0004¢\u0006\n\n\u0002\u0010!\u001a\u0004\b\u001f\u0010 R \u0010\u0004\u001a\u0004\u0018\u00010\u00058\u0006@\u0006X\u0087\u000e¢\u0006\u000e\n��\u001a\u0004\b\"\u0010\u0011\"\u0004\b#\u0010\u0013R\"\u0010\f\u001a\u0004\u0018\u00010\u000b8\u0006@\u0006X\u0087\u000e¢\u0006\u0010\n\u0002\u0010\u001c\u001a\u0004\b$\u0010\u0019\"\u0004\b%\u0010\u001bR\"\u0010\r\u001a\u0004\u0018\u00010\u000b8\u0006@\u0006X\u0087\u000e¢\u0006\u0010\n\u0002\u0010\u001c\u001a\u0004\b&\u0010\u0019\"\u0004\b'\u0010\u001bR\"\u0010\u000e\u001a\u0004\u0018\u00010\u00038\u0006@\u0006X\u0087\u000e¢\u0006\u0010\n\u0002\u0010!\u001a\u0004\b(\u0010 \"\u0004\b)\u0010*¨\u0006<"}, m4298d2 = {"Lnet/pubnative/lite/sdk/consent/model/AdAnalyticsEvent;", "", "id", "", FacebookNative.PLACEMENT_ID_KEY, "", Reporting.Key.EVENT_TYPE, "creative_type", Reporting.Key.AD_FORMAT, Reporting.Key.AD_SIZE, "datetime", "", "time_from_load", "time_from_show", "video_position", "(Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Integer;)V", "getAd_format", "()Ljava/lang/String;", "setAd_format", "(Ljava/lang/String;)V", "getAd_size", "setAd_size", "getCreative_type", "setCreative_type", "getDatetime", "()Ljava/lang/Long;", "setDatetime", "(Ljava/lang/Long;)V", "Ljava/lang/Long;", "getEvent_type", "setEvent_type", "getId", "()Ljava/lang/Integer;", "Ljava/lang/Integer;", "getPlacement_id", "setPlacement_id", "getTime_from_load", "setTime_from_load", "getTime_from_show", "setTime_from_show", "getVideo_position", "setVideo_position", "(Ljava/lang/Integer;)V", "component1", "component10", "component2", "component3", "component4", "component5", "component6", "component7", "component8", "component9", "copy", "(Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Integer;)Lnet/pubnative/lite/sdk/consent/model/AdAnalyticsEvent;", "equals", "", "other", "hashCode", "toString", "hybid.sdk.voyager_release"}, m4297k = 1, m4296mv = {1, 4, 2})
/* loaded from: classes5-dex2jar.jar:net/pubnative/lite/sdk/consent/model/AdAnalyticsEvent.class */
public final class AdAnalyticsEvent {
    @Schema(field = Reporting.Key.AD_FORMAT)
    private String ad_format;
    @Schema(field = Reporting.Key.AD_SIZE)
    private String ad_size;
    @Schema(field = "creative_type")
    private String creative_type;
    @Schema(field = "datetime")
    private Long datetime;
    @Schema(field = Reporting.Key.EVENT_TYPE)
    private String event_type;
    @Schema(autoIncrease = true, field = JsonDocumentFields.POLICY_ID, generatedId = true, nonNullable = true)

    /* renamed from: id */
    private final Integer f67051id;
    @Schema(field = FacebookNative.PLACEMENT_ID_KEY)
    private String placement_id;
    @Schema(field = "time_from_load")
    private Long time_from_load;
    @Schema(field = "time_from_show")
    private Long time_from_show;
    @Schema(field = "video_position")
    private Integer video_position;

    public AdAnalyticsEvent(Integer num, String str, String str2, String str3, String str4, String str5, Long l, Long l2, Long l3, Integer num2) {
        this.f67051id = num;
        this.placement_id = str;
        this.event_type = str2;
        this.creative_type = str3;
        this.ad_format = str4;
        this.ad_size = str5;
        this.datetime = l;
        this.time_from_load = l2;
        this.time_from_show = l3;
        this.video_position = num2;
    }

    public /* synthetic */ AdAnalyticsEvent(Integer num, String str, String str2, String str3, String str4, String str5, Long l, Long l2, Long l3, Integer num2, int i, DefaultConstructorMarker defaultConstructorMarker) {
        this((i & 1) != 0 ? 0 : num, str, str2, str3, str4, str5, l, l2, l3, num2);
    }

    public static /* synthetic */ AdAnalyticsEvent copy$default(AdAnalyticsEvent adAnalyticsEvent, Integer num, String str, String str2, String str3, String str4, String str5, Long l, Long l2, Long l3, Integer num2, int i, Object obj) {
        if ((i & 1) != 0) {
            num = adAnalyticsEvent.f67051id;
        }
        if ((i & 2) != 0) {
            str = adAnalyticsEvent.placement_id;
        }
        if ((i & 4) != 0) {
            str2 = adAnalyticsEvent.event_type;
        }
        if ((i & 8) != 0) {
            str3 = adAnalyticsEvent.creative_type;
        }
        if ((i & 16) != 0) {
            str4 = adAnalyticsEvent.ad_format;
        }
        if ((i & 32) != 0) {
            str5 = adAnalyticsEvent.ad_size;
        }
        if ((i & 64) != 0) {
            l = adAnalyticsEvent.datetime;
        }
        if ((i & 128) != 0) {
            l2 = adAnalyticsEvent.time_from_load;
        }
        if ((i & PropertyFlags.INDEX_PARTIAL_SKIP_NULL) != 0) {
            l3 = adAnalyticsEvent.time_from_show;
        }
        if ((i & 512) != 0) {
            num2 = adAnalyticsEvent.video_position;
        }
        return adAnalyticsEvent.copy(num, str, str2, str3, str4, str5, l, l2, l3, num2);
    }

    public final Integer component1() {
        return this.f67051id;
    }

    public final Integer component10() {
        return this.video_position;
    }

    public final String component2() {
        return this.placement_id;
    }

    public final String component3() {
        return this.event_type;
    }

    public final String component4() {
        return this.creative_type;
    }

    public final String component5() {
        return this.ad_format;
    }

    public final String component6() {
        return this.ad_size;
    }

    public final Long component7() {
        return this.datetime;
    }

    public final Long component8() {
        return this.time_from_load;
    }

    public final Long component9() {
        return this.time_from_show;
    }

    public final AdAnalyticsEvent copy(Integer num, String str, String str2, String str3, String str4, String str5, Long l, Long l2, Long l3, Integer num2) {
        return new AdAnalyticsEvent(num, str, str2, str3, str4, str5, l, l2, l3, num2);
    }

    public final boolean equals(Object obj) {
        if (this != obj) {
            if (!(obj instanceof AdAnalyticsEvent)) {
                return false;
            }
            AdAnalyticsEvent adAnalyticsEvent = (AdAnalyticsEvent) obj;
            return C18524p.m3850a(this.f67051id, adAnalyticsEvent.f67051id) && C18524p.m3850a((Object) this.placement_id, (Object) adAnalyticsEvent.placement_id) && C18524p.m3850a((Object) this.event_type, (Object) adAnalyticsEvent.event_type) && C18524p.m3850a((Object) this.creative_type, (Object) adAnalyticsEvent.creative_type) && C18524p.m3850a((Object) this.ad_format, (Object) adAnalyticsEvent.ad_format) && C18524p.m3850a((Object) this.ad_size, (Object) adAnalyticsEvent.ad_size) && C18524p.m3850a(this.datetime, adAnalyticsEvent.datetime) && C18524p.m3850a(this.time_from_load, adAnalyticsEvent.time_from_load) && C18524p.m3850a(this.time_from_show, adAnalyticsEvent.time_from_show) && C18524p.m3850a(this.video_position, adAnalyticsEvent.video_position);
        }
        return true;
    }

    public final String getAd_format() {
        return this.ad_format;
    }

    public final String getAd_size() {
        return this.ad_size;
    }

    public final String getCreative_type() {
        return this.creative_type;
    }

    public final Long getDatetime() {
        return this.datetime;
    }

    public final String getEvent_type() {
        return this.event_type;
    }

    public final Integer getId() {
        return this.f67051id;
    }

    public final String getPlacement_id() {
        return this.placement_id;
    }

    public final Long getTime_from_load() {
        return this.time_from_load;
    }

    public final Long getTime_from_show() {
        return this.time_from_show;
    }

    public final Integer getVideo_position() {
        return this.video_position;
    }

    public final int hashCode() {
        Integer num = this.f67051id;
        int i = 0;
        int hashCode = num != null ? num.hashCode() : 0;
        String str = this.placement_id;
        int hashCode2 = str != null ? str.hashCode() : 0;
        String str2 = this.event_type;
        int hashCode3 = str2 != null ? str2.hashCode() : 0;
        String str3 = this.creative_type;
        int hashCode4 = str3 != null ? str3.hashCode() : 0;
        String str4 = this.ad_format;
        int hashCode5 = str4 != null ? str4.hashCode() : 0;
        String str5 = this.ad_size;
        int hashCode6 = str5 != null ? str5.hashCode() : 0;
        Long l = this.datetime;
        int hashCode7 = l != null ? l.hashCode() : 0;
        Long l2 = this.time_from_load;
        int hashCode8 = l2 != null ? l2.hashCode() : 0;
        Long l3 = this.time_from_show;
        int hashCode9 = l3 != null ? l3.hashCode() : 0;
        Integer num2 = this.video_position;
        if (num2 != null) {
            i = num2.hashCode();
        }
        return (((((((((((((((((hashCode * 31) + hashCode2) * 31) + hashCode3) * 31) + hashCode4) * 31) + hashCode5) * 31) + hashCode6) * 31) + hashCode7) * 31) + hashCode8) * 31) + hashCode9) * 31) + i;
    }

    public final void setAd_format(String str) {
        this.ad_format = str;
    }

    public final void setAd_size(String str) {
        this.ad_size = str;
    }

    public final void setCreative_type(String str) {
        this.creative_type = str;
    }

    public final void setDatetime(Long l) {
        this.datetime = l;
    }

    public final void setEvent_type(String str) {
        this.event_type = str;
    }

    public final void setPlacement_id(String str) {
        this.placement_id = str;
    }

    public final void setTime_from_load(Long l) {
        this.time_from_load = l;
    }

    public final void setTime_from_show(Long l) {
        this.time_from_show = l;
    }

    public final void setVideo_position(Integer num) {
        this.video_position = num;
    }

    public final String toString() {
        return "AdAnalyticsEvent(id=" + this.f67051id + ", placement_id=" + this.placement_id + ", event_type=" + this.event_type + ", creative_type=" + this.creative_type + ", ad_format=" + this.ad_format + ", ad_size=" + this.ad_size + ", datetime=" + this.datetime + ", time_from_load=" + this.time_from_load + ", time_from_show=" + this.time_from_show + ", video_position=" + this.video_position + ")";
    }
}

package net.pubnative.lite.sdk.consent.model;

import com.amazonaws.auth.policy.internal.JsonDocumentFields;
import kotlin.Metadata;
import kotlin.jvm.internal.C18524p;
import kotlin.jvm.internal.DefaultConstructorMarker;
import net.pubnative.lite.sdk.consent.p573db.Database;
import net.pubnative.lite.sdk.consent.p573db.Schema;
@Database(tableName = "ad_analytics")
@Metadata(m4300bv = {1, 0, 3}, m4299d1 = {"��*\n\u0002\u0018\u0002\n\u0002\u0010��\n��\n\u0002\u0010\b\n\u0002\b\u0003\n\u0002\u0010\u000e\n\u0002\b\u0003\n\u0002\u0010\u0006\n\u0002\b%\n\u0002\u0010\u000b\n\u0002\b\u0004\b\u0087\b\u0018��2\u00020\u0001BU\u0012\b\b\u0002\u0010\u0002\u001a\u00020\u0003\u0012\b\u0010\u0004\u001a\u0004\u0018\u00010\u0003\u0012\b\u0010\u0005\u001a\u0004\u0018\u00010\u0003\u0012\b\u0010\u0006\u001a\u0004\u0018\u00010\u0007\u0012\b\u0010\b\u001a\u0004\u0018\u00010\u0007\u0012\b\u0010\t\u001a\u0004\u0018\u00010\u0007\u0012\b\u0010\n\u001a\u0004\u0018\u00010\u000b\u0012\b\u0010\f\u001a\u0004\u0018\u00010\u000b¢\u0006\u0002\u0010\rJ\t\u0010&\u001a\u00020\u0003HÆ\u0003J\u0010\u0010'\u001a\u0004\u0018\u00010\u0003HÆ\u0003¢\u0006\u0002\u0010\u0013J\u0010\u0010(\u001a\u0004\u0018\u00010\u0003HÆ\u0003¢\u0006\u0002\u0010\u0013J\u000b\u0010)\u001a\u0004\u0018\u00010\u0007HÆ\u0003J\u000b\u0010*\u001a\u0004\u0018\u00010\u0007HÆ\u0003J\u000b\u0010+\u001a\u0004\u0018\u00010\u0007HÆ\u0003J\u0010\u0010,\u001a\u0004\u0018\u00010\u000bHÆ\u0003¢\u0006\u0002\u0010\u001cJ\u0010\u0010-\u001a\u0004\u0018\u00010\u000bHÆ\u0003¢\u0006\u0002\u0010\u001cJl\u0010.\u001a\u00020��2\b\b\u0002\u0010\u0002\u001a\u00020\u00032\n\b\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u00032\n\b\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u00032\n\b\u0002\u0010\u0006\u001a\u0004\u0018\u00010\u00072\n\b\u0002\u0010\b\u001a\u0004\u0018\u00010\u00072\n\b\u0002\u0010\t\u001a\u0004\u0018\u00010\u00072\n\b\u0002\u0010\n\u001a\u0004\u0018\u00010\u000b2\n\b\u0002\u0010\f\u001a\u0004\u0018\u00010\u000bHÆ\u0001¢\u0006\u0002\u0010/J\u0013\u00100\u001a\u0002012\b\u00102\u001a\u0004\u0018\u00010\u0001HÖ\u0003J\t\u00103\u001a\u00020\u0003HÖ\u0001J\t\u00104\u001a\u00020\u0007HÖ\u0001R \u0010\b\u001a\u0004\u0018\u00010\u00078\u0006@\u0006X\u0087\u000e¢\u0006\u000e\n��\u001a\u0004\b\u000e\u0010\u000f\"\u0004\b\u0010\u0010\u0011R\"\u0010\u0005\u001a\u0004\u0018\u00010\u00038\u0006@\u0006X\u0087\u000e¢\u0006\u0010\n\u0002\u0010\u0016\u001a\u0004\b\u0012\u0010\u0013\"\u0004\b\u0014\u0010\u0015R\u0016\u0010\u0002\u001a\u00020\u00038\u0006X\u0087\u0004¢\u0006\b\n��\u001a\u0004\b\u0017\u0010\u0018R\"\u0010\u0004\u001a\u0004\u0018\u00010\u00038\u0006@\u0006X\u0087\u000e¢\u0006\u0010\n\u0002\u0010\u0016\u001a\u0004\b\u0019\u0010\u0013\"\u0004\b\u001a\u0010\u0015R\"\u0010\f\u001a\u0004\u0018\u00010\u000b8\u0006@\u0006X\u0087\u000e¢\u0006\u0010\n\u0002\u0010\u001f\u001a\u0004\b\u001b\u0010\u001c\"\u0004\b\u001d\u0010\u001eR\"\u0010\n\u001a\u0004\u0018\u00010\u000b8\u0006@\u0006X\u0087\u000e¢\u0006\u0010\n\u0002\u0010\u001f\u001a\u0004\b \u0010\u001c\"\u0004\b!\u0010\u001eR \u0010\u0006\u001a\u0004\u0018\u00010\u00078\u0006@\u0006X\u0087\u000e¢\u0006\u000e\n��\u001a\u0004\b\"\u0010\u000f\"\u0004\b#\u0010\u0011R \u0010\t\u001a\u0004\u0018\u00010\u00078\u0006@\u0006X\u0087\u000e¢\u0006\u000e\n��\u001a\u0004\b$\u0010\u000f\"\u0004\b%\u0010\u0011¨\u00065"}, m4298d2 = {"Lnet/pubnative/lite/sdk/consent/model/AdAnalytics;", "", "id", "", "impressions", "clicks", "time_between_impression_and_click", "", "average_view_time", "time_to_close", "percentage_of_view", "", "percentage_before_skip", "(ILjava/lang/Integer;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Double;Ljava/lang/Double;)V", "getAverage_view_time", "()Ljava/lang/String;", "setAverage_view_time", "(Ljava/lang/String;)V", "getClicks", "()Ljava/lang/Integer;", "setClicks", "(Ljava/lang/Integer;)V", "Ljava/lang/Integer;", "getId", "()I", "getImpressions", "setImpressions", "getPercentage_before_skip", "()Ljava/lang/Double;", "setPercentage_before_skip", "(Ljava/lang/Double;)V", "Ljava/lang/Double;", "getPercentage_of_view", "setPercentage_of_view", "getTime_between_impression_and_click", "setTime_between_impression_and_click", "getTime_to_close", "setTime_to_close", "component1", "component2", "component3", "component4", "component5", "component6", "component7", "component8", "copy", "(ILjava/lang/Integer;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Double;Ljava/lang/Double;)Lnet/pubnative/lite/sdk/consent/model/AdAnalytics;", "equals", "", "other", "hashCode", "toString", "hybid.sdk.voyager_release"}, m4297k = 1, m4296mv = {1, 4, 2})
/* loaded from: classes5-dex2jar.jar:net/pubnative/lite/sdk/consent/model/AdAnalytics.class */
public final class AdAnalytics {
    @Schema(field = "average_view_time")
    private String average_view_time;
    @Schema(field = "clicks")
    private Integer clicks;
    @Schema(autoIncrease = true, field = JsonDocumentFields.POLICY_ID, generatedId = true, nonNullable = true)

    /* renamed from: id */
    private final int f67050id;
    @Schema(field = "impressions")
    private Integer impressions;
    @Schema(field = "percentage_before_skip")
    private Double percentage_before_skip;
    @Schema(field = "percentage_of_view")
    private Double percentage_of_view;
    @Schema(field = "time_between_impression_and_click")
    private String time_between_impression_and_click;
    @Schema(field = "time_to_close")
    private String time_to_close;

    public AdAnalytics(int i, Integer num, Integer num2, String str, String str2, String str3, Double d, Double d2) {
        this.f67050id = i;
        this.impressions = num;
        this.clicks = num2;
        this.time_between_impression_and_click = str;
        this.average_view_time = str2;
        this.time_to_close = str3;
        this.percentage_of_view = d;
        this.percentage_before_skip = d2;
    }

    public /* synthetic */ AdAnalytics(int i, Integer num, Integer num2, String str, String str2, String str3, Double d, Double d2, int i2, DefaultConstructorMarker defaultConstructorMarker) {
        this((i2 & 1) != 0 ? 0 : i, num, num2, str, str2, str3, d, d2);
    }

    public static /* synthetic */ AdAnalytics copy$default(AdAnalytics adAnalytics, int i, Integer num, Integer num2, String str, String str2, String str3, Double d, Double d2, int i2, Object obj) {
        if ((i2 & 1) != 0) {
            i = adAnalytics.f67050id;
        }
        if ((i2 & 2) != 0) {
            num = adAnalytics.impressions;
        }
        if ((i2 & 4) != 0) {
            num2 = adAnalytics.clicks;
        }
        if ((i2 & 8) != 0) {
            str = adAnalytics.time_between_impression_and_click;
        }
        if ((i2 & 16) != 0) {
            str2 = adAnalytics.average_view_time;
        }
        if ((i2 & 32) != 0) {
            str3 = adAnalytics.time_to_close;
        }
        if ((i2 & 64) != 0) {
            d = adAnalytics.percentage_of_view;
        }
        if ((i2 & 128) != 0) {
            d2 = adAnalytics.percentage_before_skip;
        }
        return adAnalytics.copy(i, num, num2, str, str2, str3, d, d2);
    }

    public final int component1() {
        return this.f67050id;
    }

    public final Integer component2() {
        return this.impressions;
    }

    public final Integer component3() {
        return this.clicks;
    }

    public final String component4() {
        return this.time_between_impression_and_click;
    }

    public final String component5() {
        return this.average_view_time;
    }

    public final String component6() {
        return this.time_to_close;
    }

    public final Double component7() {
        return this.percentage_of_view;
    }

    public final Double component8() {
        return this.percentage_before_skip;
    }

    public final AdAnalytics copy(int i, Integer num, Integer num2, String str, String str2, String str3, Double d, Double d2) {
        return new AdAnalytics(i, num, num2, str, str2, str3, d, d2);
    }

    public final boolean equals(Object obj) {
        if (this != obj) {
            if (!(obj instanceof AdAnalytics)) {
                return false;
            }
            AdAnalytics adAnalytics = (AdAnalytics) obj;
            return this.f67050id == adAnalytics.f67050id && C18524p.m3850a(this.impressions, adAnalytics.impressions) && C18524p.m3850a(this.clicks, adAnalytics.clicks) && C18524p.m3850a((Object) this.time_between_impression_and_click, (Object) adAnalytics.time_between_impression_and_click) && C18524p.m3850a((Object) this.average_view_time, (Object) adAnalytics.average_view_time) && C18524p.m3850a((Object) this.time_to_close, (Object) adAnalytics.time_to_close) && C18524p.m3850a(this.percentage_of_view, adAnalytics.percentage_of_view) && C18524p.m3850a(this.percentage_before_skip, adAnalytics.percentage_before_skip);
        }
        return true;
    }

    public final String getAverage_view_time() {
        return this.average_view_time;
    }

    public final Integer getClicks() {
        return this.clicks;
    }

    public final int getId() {
        return this.f67050id;
    }

    public final Integer getImpressions() {
        return this.impressions;
    }

    public final Double getPercentage_before_skip() {
        return this.percentage_before_skip;
    }

    public final Double getPercentage_of_view() {
        return this.percentage_of_view;
    }

    public final String getTime_between_impression_and_click() {
        return this.time_between_impression_and_click;
    }

    public final String getTime_to_close() {
        return this.time_to_close;
    }

    public final int hashCode() {
        int i = this.f67050id;
        Integer num = this.impressions;
        int i2 = 0;
        int hashCode = num != null ? num.hashCode() : 0;
        Integer num2 = this.clicks;
        int hashCode2 = num2 != null ? num2.hashCode() : 0;
        String str = this.time_between_impression_and_click;
        int hashCode3 = str != null ? str.hashCode() : 0;
        String str2 = this.average_view_time;
        int hashCode4 = str2 != null ? str2.hashCode() : 0;
        String str3 = this.time_to_close;
        int hashCode5 = str3 != null ? str3.hashCode() : 0;
        Double d = this.percentage_of_view;
        int hashCode6 = d != null ? d.hashCode() : 0;
        Double d2 = this.percentage_before_skip;
        if (d2 != null) {
            i2 = d2.hashCode();
        }
        return (((((((((((((i * 31) + hashCode) * 31) + hashCode2) * 31) + hashCode3) * 31) + hashCode4) * 31) + hashCode5) * 31) + hashCode6) * 31) + i2;
    }

    public final void setAverage_view_time(String str) {
        this.average_view_time = str;
    }

    public final void setClicks(Integer num) {
        this.clicks = num;
    }

    public final void setImpressions(Integer num) {
        this.impressions = num;
    }

    public final void setPercentage_before_skip(Double d) {
        this.percentage_before_skip = d;
    }

    public final void setPercentage_of_view(Double d) {
        this.percentage_of_view = d;
    }

    public final void setTime_between_impression_and_click(String str) {
        this.time_between_impression_and_click = str;
    }

    public final void setTime_to_close(String str) {
        this.time_to_close = str;
    }

    public final String toString() {
        return "AdAnalytics(id=" + this.f67050id + ", impressions=" + this.impressions + ", clicks=" + this.clicks + ", time_between_impression_and_click=" + this.time_between_impression_and_click + ", average_view_time=" + this.average_view_time + ", time_to_close=" + this.time_to_close + ", percentage_of_view=" + this.percentage_of_view + ", percentage_before_skip=" + this.percentage_before_skip + ")";
    }
}

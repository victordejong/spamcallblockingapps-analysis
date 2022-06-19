package net.pubnative.lite.sdk.consent.model;

import com.amazonaws.auth.policy.internal.JsonDocumentFields;
import kotlin.Metadata;
import kotlin.jvm.internal.C18524p;
import kotlin.jvm.internal.DefaultConstructorMarker;
import net.pubnative.lite.sdk.consent.p573db.Database;
import net.pubnative.lite.sdk.consent.p573db.Schema;
@Database(tableName = "audience")
@Metadata(m4300bv = {1, 0, 3}, m4299d1 = {"�� \n\u0002\u0018\u0002\n\u0002\u0010��\n��\n\u0002\u0010\b\n��\n\u0002\u0010\u000e\n\u0002\b&\n\u0002\u0010\u000b\n\u0002\b\u0004\b\u0087\b\u0018��2\u00020\u0001BW\u0012\n\b\u0002\u0010\u0002\u001a\u0004\u0018\u00010\u0003\u0012\b\u0010\u0004\u001a\u0004\u0018\u00010\u0005\u0012\b\u0010\u0006\u001a\u0004\u0018\u00010\u0005\u0012\b\u0010\u0007\u001a\u0004\u0018\u00010\u0005\u0012\b\u0010\b\u001a\u0004\u0018\u00010\u0003\u0012\b\u0010\t\u001a\u0004\u0018\u00010\u0003\u0012\b\u0010\n\u001a\u0004\u0018\u00010\u0003\u0012\b\u0010\u000b\u001a\u0004\u0018\u00010\u0005¢\u0006\u0002\u0010\fJ\u0010\u0010!\u001a\u0004\u0018\u00010\u0003HÆ\u0003¢\u0006\u0002\u0010\u0012J\u000b\u0010\"\u001a\u0004\u0018\u00010\u0005HÆ\u0003J\u000b\u0010#\u001a\u0004\u0018\u00010\u0005HÆ\u0003J\u000b\u0010$\u001a\u0004\u0018\u00010\u0005HÆ\u0003J\u0010\u0010%\u001a\u0004\u0018\u00010\u0003HÆ\u0003¢\u0006\u0002\u0010\u0012J\u0010\u0010&\u001a\u0004\u0018\u00010\u0003HÆ\u0003¢\u0006\u0002\u0010\u0012J\u0010\u0010'\u001a\u0004\u0018\u00010\u0003HÆ\u0003¢\u0006\u0002\u0010\u0012J\u000b\u0010(\u001a\u0004\u0018\u00010\u0005HÆ\u0003Jn\u0010)\u001a\u00020��2\n\b\u0002\u0010\u0002\u001a\u0004\u0018\u00010\u00032\n\b\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u00052\n\b\u0002\u0010\u0006\u001a\u0004\u0018\u00010\u00052\n\b\u0002\u0010\u0007\u001a\u0004\u0018\u00010\u00052\n\b\u0002\u0010\b\u001a\u0004\u0018\u00010\u00032\n\b\u0002\u0010\t\u001a\u0004\u0018\u00010\u00032\n\b\u0002\u0010\n\u001a\u0004\u0018\u00010\u00032\n\b\u0002\u0010\u000b\u001a\u0004\u0018\u00010\u0005HÆ\u0001¢\u0006\u0002\u0010*J\u0013\u0010+\u001a\u00020,2\b\u0010-\u001a\u0004\u0018\u00010\u0001HÖ\u0003J\t\u0010.\u001a\u00020\u0003HÖ\u0001J\t\u0010/\u001a\u00020\u0005HÖ\u0001R \u0010\u0004\u001a\u0004\u0018\u00010\u00058\u0006@\u0006X\u0087\u000e¢\u0006\u000e\n��\u001a\u0004\b\r\u0010\u000e\"\u0004\b\u000f\u0010\u0010R\"\u0010\t\u001a\u0004\u0018\u00010\u00038\u0006@\u0006X\u0087\u000e¢\u0006\u0010\n\u0002\u0010\u0015\u001a\u0004\b\u0011\u0010\u0012\"\u0004\b\u0013\u0010\u0014R\u001a\u0010\u0002\u001a\u0004\u0018\u00010\u00038\u0006X\u0087\u0004¢\u0006\n\n\u0002\u0010\u0015\u001a\u0004\b\u0016\u0010\u0012R \u0010\u000b\u001a\u0004\u0018\u00010\u00058\u0006@\u0006X\u0087\u000e¢\u0006\u000e\n��\u001a\u0004\b\u0017\u0010\u000e\"\u0004\b\u0018\u0010\u0010R\"\u0010\b\u001a\u0004\u0018\u00010\u00038\u0006@\u0006X\u0087\u000e¢\u0006\u0010\n\u0002\u0010\u0015\u001a\u0004\b\u0019\u0010\u0012\"\u0004\b\u001a\u0010\u0014R \u0010\u0006\u001a\u0004\u0018\u00010\u00058\u0006@\u0006X\u0087\u000e¢\u0006\u000e\n��\u001a\u0004\b\u001b\u0010\u000e\"\u0004\b\u001c\u0010\u0010R \u0010\u0007\u001a\u0004\u0018\u00010\u00058\u0006@\u0006X\u0087\u000e¢\u0006\u000e\n��\u001a\u0004\b\u001d\u0010\u000e\"\u0004\b\u001e\u0010\u0010R\"\u0010\n\u001a\u0004\u0018\u00010\u00038\u0006@\u0006X\u0087\u000e¢\u0006\u0010\n\u0002\u0010\u0015\u001a\u0004\b\u001f\u0010\u0012\"\u0004\b \u0010\u0014¨\u00060"}, m4298d2 = {"Lnet/pubnative/lite/sdk/consent/model/Audience;", "", "id", "", "audience_id", "", "taxonomy2_ids", "taxonomy3_ids", "start_time", "end_time", "upper_limit", "name_query", "(Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/String;)V", "getAudience_id", "()Ljava/lang/String;", "setAudience_id", "(Ljava/lang/String;)V", "getEnd_time", "()Ljava/lang/Integer;", "setEnd_time", "(Ljava/lang/Integer;)V", "Ljava/lang/Integer;", "getId", "getName_query", "setName_query", "getStart_time", "setStart_time", "getTaxonomy2_ids", "setTaxonomy2_ids", "getTaxonomy3_ids", "setTaxonomy3_ids", "getUpper_limit", "setUpper_limit", "component1", "component2", "component3", "component4", "component5", "component6", "component7", "component8", "copy", "(Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/String;)Lnet/pubnative/lite/sdk/consent/model/Audience;", "equals", "", "other", "hashCode", "toString", "hybid.sdk.voyager_release"}, m4297k = 1, m4296mv = {1, 4, 2})
/* loaded from: classes5-dex2jar.jar:net/pubnative/lite/sdk/consent/model/Audience.class */
public final class Audience {
    @Schema(field = "audience_id")
    private String audience_id;
    @Schema(field = "end_time")
    private Integer end_time;
    @Schema(autoIncrease = true, field = JsonDocumentFields.POLICY_ID, generatedId = true, nonNullable = true)

    /* renamed from: id */
    private final Integer f67053id;
    @Schema(field = "name_query")
    private String name_query;
    @Schema(field = "start_time")
    private Integer start_time;
    @Schema(field = "taxonomy2_ids")
    private String taxonomy2_ids;
    @Schema(field = "taxonomy3_ids")
    private String taxonomy3_ids;
    @Schema(field = "upper_limit")
    private Integer upper_limit;

    public Audience(Integer num, String str, String str2, String str3, Integer num2, Integer num3, Integer num4, String str4) {
        this.f67053id = num;
        this.audience_id = str;
        this.taxonomy2_ids = str2;
        this.taxonomy3_ids = str3;
        this.start_time = num2;
        this.end_time = num3;
        this.upper_limit = num4;
        this.name_query = str4;
    }

    public /* synthetic */ Audience(Integer num, String str, String str2, String str3, Integer num2, Integer num3, Integer num4, String str4, int i, DefaultConstructorMarker defaultConstructorMarker) {
        this((i & 1) != 0 ? 0 : num, str, str2, str3, num2, num3, num4, str4);
    }

    public static /* synthetic */ Audience copy$default(Audience audience, Integer num, String str, String str2, String str3, Integer num2, Integer num3, Integer num4, String str4, int i, Object obj) {
        if ((i & 1) != 0) {
            num = audience.f67053id;
        }
        if ((i & 2) != 0) {
            str = audience.audience_id;
        }
        if ((i & 4) != 0) {
            str2 = audience.taxonomy2_ids;
        }
        if ((i & 8) != 0) {
            str3 = audience.taxonomy3_ids;
        }
        if ((i & 16) != 0) {
            num2 = audience.start_time;
        }
        if ((i & 32) != 0) {
            num3 = audience.end_time;
        }
        if ((i & 64) != 0) {
            num4 = audience.upper_limit;
        }
        if ((i & 128) != 0) {
            str4 = audience.name_query;
        }
        return audience.copy(num, str, str2, str3, num2, num3, num4, str4);
    }

    public final Integer component1() {
        return this.f67053id;
    }

    public final String component2() {
        return this.audience_id;
    }

    public final String component3() {
        return this.taxonomy2_ids;
    }

    public final String component4() {
        return this.taxonomy3_ids;
    }

    public final Integer component5() {
        return this.start_time;
    }

    public final Integer component6() {
        return this.end_time;
    }

    public final Integer component7() {
        return this.upper_limit;
    }

    public final String component8() {
        return this.name_query;
    }

    public final Audience copy(Integer num, String str, String str2, String str3, Integer num2, Integer num3, Integer num4, String str4) {
        return new Audience(num, str, str2, str3, num2, num3, num4, str4);
    }

    public final boolean equals(Object obj) {
        if (this != obj) {
            if (!(obj instanceof Audience)) {
                return false;
            }
            Audience audience = (Audience) obj;
            return C18524p.m3850a(this.f67053id, audience.f67053id) && C18524p.m3850a((Object) this.audience_id, (Object) audience.audience_id) && C18524p.m3850a((Object) this.taxonomy2_ids, (Object) audience.taxonomy2_ids) && C18524p.m3850a((Object) this.taxonomy3_ids, (Object) audience.taxonomy3_ids) && C18524p.m3850a(this.start_time, audience.start_time) && C18524p.m3850a(this.end_time, audience.end_time) && C18524p.m3850a(this.upper_limit, audience.upper_limit) && C18524p.m3850a((Object) this.name_query, (Object) audience.name_query);
        }
        return true;
    }

    public final String getAudience_id() {
        return this.audience_id;
    }

    public final Integer getEnd_time() {
        return this.end_time;
    }

    public final Integer getId() {
        return this.f67053id;
    }

    public final String getName_query() {
        return this.name_query;
    }

    public final Integer getStart_time() {
        return this.start_time;
    }

    public final String getTaxonomy2_ids() {
        return this.taxonomy2_ids;
    }

    public final String getTaxonomy3_ids() {
        return this.taxonomy3_ids;
    }

    public final Integer getUpper_limit() {
        return this.upper_limit;
    }

    public final int hashCode() {
        Integer num = this.f67053id;
        int i = 0;
        int hashCode = num != null ? num.hashCode() : 0;
        String str = this.audience_id;
        int hashCode2 = str != null ? str.hashCode() : 0;
        String str2 = this.taxonomy2_ids;
        int hashCode3 = str2 != null ? str2.hashCode() : 0;
        String str3 = this.taxonomy3_ids;
        int hashCode4 = str3 != null ? str3.hashCode() : 0;
        Integer num2 = this.start_time;
        int hashCode5 = num2 != null ? num2.hashCode() : 0;
        Integer num3 = this.end_time;
        int hashCode6 = num3 != null ? num3.hashCode() : 0;
        Integer num4 = this.upper_limit;
        int hashCode7 = num4 != null ? num4.hashCode() : 0;
        String str4 = this.name_query;
        if (str4 != null) {
            i = str4.hashCode();
        }
        return (((((((((((((hashCode * 31) + hashCode2) * 31) + hashCode3) * 31) + hashCode4) * 31) + hashCode5) * 31) + hashCode6) * 31) + hashCode7) * 31) + i;
    }

    public final void setAudience_id(String str) {
        this.audience_id = str;
    }

    public final void setEnd_time(Integer num) {
        this.end_time = num;
    }

    public final void setName_query(String str) {
        this.name_query = str;
    }

    public final void setStart_time(Integer num) {
        this.start_time = num;
    }

    public final void setTaxonomy2_ids(String str) {
        this.taxonomy2_ids = str;
    }

    public final void setTaxonomy3_ids(String str) {
        this.taxonomy3_ids = str;
    }

    public final void setUpper_limit(Integer num) {
        this.upper_limit = num;
    }

    public final String toString() {
        return "Audience(id=" + this.f67053id + ", audience_id=" + this.audience_id + ", taxonomy2_ids=" + this.taxonomy2_ids + ", taxonomy3_ids=" + this.taxonomy3_ids + ", start_time=" + this.start_time + ", end_time=" + this.end_time + ", upper_limit=" + this.upper_limit + ", name_query=" + this.name_query + ")";
    }
}

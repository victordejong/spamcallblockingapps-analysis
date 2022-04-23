package net.pubnative.lite.sdk.consent.model;

import com.amazonaws.auth.policy.internal.JsonDocumentFields;
import io.objectbox.model.PropertyFlags;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.p;
import net.pubnative.lite.sdk.consent.db.Database;
import net.pubnative.lite.sdk.consent.db.Schema;
@Database(tableName = "visit")
@Metadata(bv = {1, 0, 3}, d1 = {"��.\n\u0002\u0018\u0002\n\u0002\u0010��\n��\n\u0002\u0010\b\n��\n\u0002\u0010\u000e\n��\n\u0002\u0010\t\n\u0002\b\u0002\n\u0002\u0010\u0006\n\u0002\b,\n\u0002\u0010\u000b\n\u0002\b\u0004\b\u0087\b\u0018��2\u00020\u0001Ba\u0012\n\b\u0002\u0010\u0002\u001a\u0004\u0018\u00010\u0003\u0012\b\u0010\u0004\u001a\u0004\u0018\u00010\u0005\u0012\b\u0010\u0006\u001a\u0004\u0018\u00010\u0007\u0012\b\u0010\b\u001a\u0004\u0018\u00010\u0007\u0012\b\u0010\t\u001a\u0004\u0018\u00010\n\u0012\b\u0010\u000b\u001a\u0004\u0018\u00010\n\u0012\b\u0010\f\u001a\u0004\u0018\u00010\n\u0012\b\u0010\r\u001a\u0004\u0018\u00010\n\u0012\b\u0010\u000e\u001a\u0004\u0018\u00010\n¢\u0006\u0002\u0010\u000fJ\u0010\u0010+\u001a\u0004\u0018\u00010\u0003HÆ\u0003¢\u0006\u0002\u0010!J\u000b\u0010,\u001a\u0004\u0018\u00010\u0005HÆ\u0003J\u0010\u0010-\u001a\u0004\u0018\u00010\u0007HÆ\u0003¢\u0006\u0002\u0010\u001aJ\u0010\u0010.\u001a\u0004\u0018\u00010\u0007HÆ\u0003¢\u0006\u0002\u0010\u001aJ\u0010\u0010/\u001a\u0004\u0018\u00010\nHÆ\u0003¢\u0006\u0002\u0010\u0011J\u0010\u00100\u001a\u0004\u0018\u00010\nHÆ\u0003¢\u0006\u0002\u0010\u0011J\u0010\u00101\u001a\u0004\u0018\u00010\nHÆ\u0003¢\u0006\u0002\u0010\u0011J\u0010\u00102\u001a\u0004\u0018\u00010\nHÆ\u0003¢\u0006\u0002\u0010\u0011J\u0010\u00103\u001a\u0004\u0018\u00010\nHÆ\u0003¢\u0006\u0002\u0010\u0011Jz\u00104\u001a\u00020��2\n\b\u0002\u0010\u0002\u001a\u0004\u0018\u00010\u00032\n\b\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u00052\n\b\u0002\u0010\u0006\u001a\u0004\u0018\u00010\u00072\n\b\u0002\u0010\b\u001a\u0004\u0018\u00010\u00072\n\b\u0002\u0010\t\u001a\u0004\u0018\u00010\n2\n\b\u0002\u0010\u000b\u001a\u0004\u0018\u00010\n2\n\b\u0002\u0010\f\u001a\u0004\u0018\u00010\n2\n\b\u0002\u0010\r\u001a\u0004\u0018\u00010\n2\n\b\u0002\u0010\u000e\u001a\u0004\u0018\u00010\nHÆ\u0001¢\u0006\u0002\u00105J\u0013\u00106\u001a\u0002072\b\u00108\u001a\u0004\u0018\u00010\u0001HÖ\u0003J\t\u00109\u001a\u00020\u0003HÖ\u0001J\t\u0010:\u001a\u00020\u0005HÖ\u0001R\"\u0010\u000b\u001a\u0004\u0018\u00010\n8\u0006@\u0006X\u0087\u000e¢\u0006\u0010\n\u0002\u0010\u0014\u001a\u0004\b\u0010\u0010\u0011\"\u0004\b\u0012\u0010\u0013R\"\u0010\t\u001a\u0004\u0018\u00010\n8\u0006@\u0006X\u0087\u000e¢\u0006\u0010\n\u0002\u0010\u0014\u001a\u0004\b\u0015\u0010\u0011\"\u0004\b\u0016\u0010\u0013R\"\u0010\f\u001a\u0004\u0018\u00010\n8\u0006@\u0006X\u0087\u000e¢\u0006\u0010\n\u0002\u0010\u0014\u001a\u0004\b\u0017\u0010\u0011\"\u0004\b\u0018\u0010\u0013R\"\u0010\b\u001a\u0004\u0018\u00010\u00078\u0006@\u0006X\u0087\u000e¢\u0006\u0010\n\u0002\u0010\u001d\u001a\u0004\b\u0019\u0010\u001a\"\u0004\b\u001b\u0010\u001cR\"\u0010\u000e\u001a\u0004\u0018\u00010\n8\u0006@\u0006X\u0087\u000e¢\u0006\u0010\n\u0002\u0010\u0014\u001a\u0004\b\u001e\u0010\u0011\"\u0004\b\u001f\u0010\u0013R\u001a\u0010\u0002\u001a\u0004\u0018\u00010\u00038\u0006X\u0087\u0004¢\u0006\n\n\u0002\u0010\"\u001a\u0004\b \u0010!R \u0010\u0004\u001a\u0004\u0018\u00010\u00058\u0006@\u0006X\u0087\u000e¢\u0006\u000e\n��\u001a\u0004\b#\u0010$\"\u0004\b%\u0010&R\"\u0010\u0006\u001a\u0004\u0018\u00010\u00078\u0006@\u0006X\u0087\u000e¢\u0006\u0010\n\u0002\u0010\u001d\u001a\u0004\b'\u0010\u001a\"\u0004\b(\u0010\u001cR\"\u0010\r\u001a\u0004\u0018\u00010\n8\u0006@\u0006X\u0087\u000e¢\u0006\u0010\n\u0002\u0010\u0014\u001a\u0004\b)\u0010\u0011\"\u0004\b*\u0010\u0013¨\u0006;"}, d2 = {"Lnet/pubnative/lite/sdk/consent/model/Visit;", "", "id", "", "session_id", "", "start_time", "", "end_time", "cluster_longitude", "", "cluster_latitude", "distance", "usability_score", "final_score", "(Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Double;Ljava/lang/Double;Ljava/lang/Double;Ljava/lang/Double;Ljava/lang/Double;)V", "getCluster_latitude", "()Ljava/lang/Double;", "setCluster_latitude", "(Ljava/lang/Double;)V", "Ljava/lang/Double;", "getCluster_longitude", "setCluster_longitude", "getDistance", "setDistance", "getEnd_time", "()Ljava/lang/Long;", "setEnd_time", "(Ljava/lang/Long;)V", "Ljava/lang/Long;", "getFinal_score", "setFinal_score", "getId", "()Ljava/lang/Integer;", "Ljava/lang/Integer;", "getSession_id", "()Ljava/lang/String;", "setSession_id", "(Ljava/lang/String;)V", "getStart_time", "setStart_time", "getUsability_score", "setUsability_score", "component1", "component2", "component3", "component4", "component5", "component6", "component7", "component8", "component9", "copy", "(Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Double;Ljava/lang/Double;Ljava/lang/Double;Ljava/lang/Double;Ljava/lang/Double;)Lnet/pubnative/lite/sdk/consent/model/Visit;", "equals", "", "other", "hashCode", "toString", "hybid.sdk.voyager_release"}, k = 1, mv = {1, 4, 2})
/* loaded from: classes5-dex2jar.jar:net/pubnative/lite/sdk/consent/model/Visit.class */
public final class Visit {
    @Schema(field = "cluster_latitude")
    private Double cluster_latitude;
    @Schema(field = "cluster_longitude")
    private Double cluster_longitude;
    @Schema(field = "distance")
    private Double distance;
    @Schema(field = "end_time")
    private Long end_time;
    @Schema(field = "final_score")
    private Double final_score;
    @Schema(autoIncrease = true, field = JsonDocumentFields.POLICY_ID, generatedId = true, nonNullable = true)
    private final Integer id;
    @Schema(field = "session_id")
    private String session_id;
    @Schema(field = "start_time")
    private Long start_time;
    @Schema(field = "usability_score")
    private Double usability_score;

    public Visit(Integer num, String str, Long l, Long l2, Double d2, Double d3, Double d4, Double d5, Double d6) {
        this.id = num;
        this.session_id = str;
        this.start_time = l;
        this.end_time = l2;
        this.cluster_longitude = d2;
        this.cluster_latitude = d3;
        this.distance = d4;
        this.usability_score = d5;
        this.final_score = d6;
    }

    public /* synthetic */ Visit(Integer num, String str, Long l, Long l2, Double d2, Double d3, Double d4, Double d5, Double d6, int i, DefaultConstructorMarker defaultConstructorMarker) {
        this((i & 1) != 0 ? 0 : num, str, l, l2, d2, d3, d4, d5, d6);
    }

    public static /* synthetic */ Visit copy$default(Visit visit, Integer num, String str, Long l, Long l2, Double d2, Double d3, Double d4, Double d5, Double d6, int i, Object obj) {
        if ((i & 1) != 0) {
            num = visit.id;
        }
        if ((i & 2) != 0) {
            str = visit.session_id;
        }
        if ((i & 4) != 0) {
            l = visit.start_time;
        }
        if ((i & 8) != 0) {
            l2 = visit.end_time;
        }
        if ((i & 16) != 0) {
            d2 = visit.cluster_longitude;
        }
        if ((i & 32) != 0) {
            d3 = visit.cluster_latitude;
        }
        if ((i & 64) != 0) {
            d4 = visit.distance;
        }
        if ((i & 128) != 0) {
            d5 = visit.usability_score;
        }
        if ((i & PropertyFlags.INDEX_PARTIAL_SKIP_NULL) != 0) {
            d6 = visit.final_score;
        }
        return visit.copy(num, str, l, l2, d2, d3, d4, d5, d6);
    }

    public final Integer component1() {
        return this.id;
    }

    public final String component2() {
        return this.session_id;
    }

    public final Long component3() {
        return this.start_time;
    }

    public final Long component4() {
        return this.end_time;
    }

    public final Double component5() {
        return this.cluster_longitude;
    }

    public final Double component6() {
        return this.cluster_latitude;
    }

    public final Double component7() {
        return this.distance;
    }

    public final Double component8() {
        return this.usability_score;
    }

    public final Double component9() {
        return this.final_score;
    }

    public final Visit copy(Integer num, String str, Long l, Long l2, Double d2, Double d3, Double d4, Double d5, Double d6) {
        return new Visit(num, str, l, l2, d2, d3, d4, d5, d6);
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof Visit)) {
            return false;
        }
        Visit visit = (Visit) obj;
        return p.a(this.id, visit.id) && p.a((Object) this.session_id, (Object) visit.session_id) && p.a(this.start_time, visit.start_time) && p.a(this.end_time, visit.end_time) && p.a(this.cluster_longitude, visit.cluster_longitude) && p.a(this.cluster_latitude, visit.cluster_latitude) && p.a(this.distance, visit.distance) && p.a(this.usability_score, visit.usability_score) && p.a(this.final_score, visit.final_score);
    }

    public final Double getCluster_latitude() {
        return this.cluster_latitude;
    }

    public final Double getCluster_longitude() {
        return this.cluster_longitude;
    }

    public final Double getDistance() {
        return this.distance;
    }

    public final Long getEnd_time() {
        return this.end_time;
    }

    public final Double getFinal_score() {
        return this.final_score;
    }

    public final Integer getId() {
        return this.id;
    }

    public final String getSession_id() {
        return this.session_id;
    }

    public final Long getStart_time() {
        return this.start_time;
    }

    public final Double getUsability_score() {
        return this.usability_score;
    }

    public final int hashCode() {
        Integer num = this.id;
        int i = 0;
        int hashCode = num != null ? num.hashCode() : 0;
        String str = this.session_id;
        int hashCode2 = str != null ? str.hashCode() : 0;
        Long l = this.start_time;
        int hashCode3 = l != null ? l.hashCode() : 0;
        Long l2 = this.end_time;
        int hashCode4 = l2 != null ? l2.hashCode() : 0;
        Double d2 = this.cluster_longitude;
        int hashCode5 = d2 != null ? d2.hashCode() : 0;
        Double d3 = this.cluster_latitude;
        int hashCode6 = d3 != null ? d3.hashCode() : 0;
        Double d4 = this.distance;
        int hashCode7 = d4 != null ? d4.hashCode() : 0;
        Double d5 = this.usability_score;
        int hashCode8 = d5 != null ? d5.hashCode() : 0;
        Double d6 = this.final_score;
        if (d6 != null) {
            i = d6.hashCode();
        }
        return (((((((((((((((hashCode * 31) + hashCode2) * 31) + hashCode3) * 31) + hashCode4) * 31) + hashCode5) * 31) + hashCode6) * 31) + hashCode7) * 31) + hashCode8) * 31) + i;
    }

    public final void setCluster_latitude(Double d2) {
        this.cluster_latitude = d2;
    }

    public final void setCluster_longitude(Double d2) {
        this.cluster_longitude = d2;
    }

    public final void setDistance(Double d2) {
        this.distance = d2;
    }

    public final void setEnd_time(Long l) {
        this.end_time = l;
    }

    public final void setFinal_score(Double d2) {
        this.final_score = d2;
    }

    public final void setSession_id(String str) {
        this.session_id = str;
    }

    public final void setStart_time(Long l) {
        this.start_time = l;
    }

    public final void setUsability_score(Double d2) {
        this.usability_score = d2;
    }

    public final String toString() {
        return "Visit(id=" + this.id + ", session_id=" + this.session_id + ", start_time=" + this.start_time + ", end_time=" + this.end_time + ", cluster_longitude=" + this.cluster_longitude + ", cluster_latitude=" + this.cluster_latitude + ", distance=" + this.distance + ", usability_score=" + this.usability_score + ", final_score=" + this.final_score + ")";
    }
}

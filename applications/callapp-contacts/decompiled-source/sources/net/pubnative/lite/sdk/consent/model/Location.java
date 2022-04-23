package net.pubnative.lite.sdk.consent.model;

import com.amazonaws.auth.policy.internal.JsonDocumentFields;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.p;
import net.pubnative.lite.sdk.consent.db.Database;
import net.pubnative.lite.sdk.consent.db.Schema;
@Database(tableName = "location")
@Metadata(bv = {1, 0, 3}, d1 = {"��(\n\u0002\u0018\u0002\n\u0002\u0010��\n��\n\u0002\u0010\b\n��\n\u0002\u0010\u0006\n\u0002\b\u0003\n\u0002\u0010\u000e\n\u0002\b\u001d\n\u0002\u0010\u000b\n\u0002\b\u0004\b\u0087\b\u0018��2\u00020\u0001BC\u0012\n\b\u0002\u0010\u0002\u001a\u0004\u0018\u00010\u0003\u0012\b\u0010\u0004\u001a\u0004\u0018\u00010\u0005\u0012\b\u0010\u0006\u001a\u0004\u0018\u00010\u0005\u0012\b\u0010\u0007\u001a\u0004\u0018\u00010\u0005\u0012\b\u0010\b\u001a\u0004\u0018\u00010\t\u0012\b\u0010\n\u001a\u0004\u0018\u00010\t¢\u0006\u0002\u0010\u000bJ\u0010\u0010\u001e\u001a\u0004\u0018\u00010\u0003HÆ\u0003¢\u0006\u0002\u0010\u0016J\u0010\u0010\u001f\u001a\u0004\u0018\u00010\u0005HÆ\u0003¢\u0006\u0002\u0010\u0011J\u0010\u0010 \u001a\u0004\u0018\u00010\u0005HÆ\u0003¢\u0006\u0002\u0010\u0011J\u0010\u0010!\u001a\u0004\u0018\u00010\u0005HÆ\u0003¢\u0006\u0002\u0010\u0011J\u000b\u0010\"\u001a\u0004\u0018\u00010\tHÆ\u0003J\u000b\u0010#\u001a\u0004\u0018\u00010\tHÆ\u0003JV\u0010$\u001a\u00020��2\n\b\u0002\u0010\u0002\u001a\u0004\u0018\u00010\u00032\n\b\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u00052\n\b\u0002\u0010\u0006\u001a\u0004\u0018\u00010\u00052\n\b\u0002\u0010\u0007\u001a\u0004\u0018\u00010\u00052\n\b\u0002\u0010\b\u001a\u0004\u0018\u00010\t2\n\b\u0002\u0010\n\u001a\u0004\u0018\u00010\tHÆ\u0001¢\u0006\u0002\u0010%J\u0013\u0010&\u001a\u00020'2\b\u0010(\u001a\u0004\u0018\u00010\u0001HÖ\u0003J\t\u0010)\u001a\u00020\u0003HÖ\u0001J\t\u0010*\u001a\u00020\tHÖ\u0001R \u0010\b\u001a\u0004\u0018\u00010\t8\u0006@\u0006X\u0087\u000e¢\u0006\u000e\n��\u001a\u0004\b\f\u0010\r\"\u0004\b\u000e\u0010\u000fR\"\u0010\u0007\u001a\u0004\u0018\u00010\u00058\u0006@\u0006X\u0087\u000e¢\u0006\u0010\n\u0002\u0010\u0014\u001a\u0004\b\u0010\u0010\u0011\"\u0004\b\u0012\u0010\u0013R\u001a\u0010\u0002\u001a\u0004\u0018\u00010\u00038\u0006X\u0087\u0004¢\u0006\n\n\u0002\u0010\u0017\u001a\u0004\b\u0015\u0010\u0016R\"\u0010\u0004\u001a\u0004\u0018\u00010\u00058\u0006@\u0006X\u0087\u000e¢\u0006\u0010\n\u0002\u0010\u0014\u001a\u0004\b\u0018\u0010\u0011\"\u0004\b\u0019\u0010\u0013R\"\u0010\u0006\u001a\u0004\u0018\u00010\u00058\u0006@\u0006X\u0087\u000e¢\u0006\u0010\n\u0002\u0010\u0014\u001a\u0004\b\u001a\u0010\u0011\"\u0004\b\u001b\u0010\u0013R \u0010\n\u001a\u0004\u0018\u00010\t8\u0006@\u0006X\u0087\u000e¢\u0006\u000e\n��\u001a\u0004\b\u001c\u0010\r\"\u0004\b\u001d\u0010\u000f¨\u0006+"}, d2 = {"Lnet/pubnative/lite/sdk/consent/model/Location;", "", "id", "", "latitude", "", "longitude", "horizontal_accuracy", "connection_type", "", "session_ID", "(Ljava/lang/Integer;Ljava/lang/Double;Ljava/lang/Double;Ljava/lang/Double;Ljava/lang/String;Ljava/lang/String;)V", "getConnection_type", "()Ljava/lang/String;", "setConnection_type", "(Ljava/lang/String;)V", "getHorizontal_accuracy", "()Ljava/lang/Double;", "setHorizontal_accuracy", "(Ljava/lang/Double;)V", "Ljava/lang/Double;", "getId", "()Ljava/lang/Integer;", "Ljava/lang/Integer;", "getLatitude", "setLatitude", "getLongitude", "setLongitude", "getSession_ID", "setSession_ID", "component1", "component2", "component3", "component4", "component5", "component6", "copy", "(Ljava/lang/Integer;Ljava/lang/Double;Ljava/lang/Double;Ljava/lang/Double;Ljava/lang/String;Ljava/lang/String;)Lnet/pubnative/lite/sdk/consent/model/Location;", "equals", "", "other", "hashCode", "toString", "hybid.sdk.voyager_release"}, k = 1, mv = {1, 4, 2})
/* loaded from: classes5-dex2jar.jar:net/pubnative/lite/sdk/consent/model/Location.class */
public final class Location {
    @Schema(field = "connection_type")
    private String connection_type;
    @Schema(field = "horizontal_accuracy")
    private Double horizontal_accuracy;
    @Schema(autoIncrease = true, field = JsonDocumentFields.POLICY_ID, generatedId = true, nonNullable = true)
    private final Integer id;
    @Schema(field = "latitude")
    private Double latitude;
    @Schema(field = "longitude")
    private Double longitude;
    @Schema(field = "session_ID")
    private String session_ID;

    public Location(Integer num, Double d2, Double d3, Double d4, String str, String str2) {
        this.id = num;
        this.latitude = d2;
        this.longitude = d3;
        this.horizontal_accuracy = d4;
        this.connection_type = str;
        this.session_ID = str2;
    }

    public /* synthetic */ Location(Integer num, Double d2, Double d3, Double d4, String str, String str2, int i, DefaultConstructorMarker defaultConstructorMarker) {
        this((i & 1) != 0 ? 0 : num, d2, d3, d4, str, str2);
    }

    public static /* synthetic */ Location copy$default(Location location, Integer num, Double d2, Double d3, Double d4, String str, String str2, int i, Object obj) {
        if ((i & 1) != 0) {
            num = location.id;
        }
        if ((i & 2) != 0) {
            d2 = location.latitude;
        }
        if ((i & 4) != 0) {
            d3 = location.longitude;
        }
        if ((i & 8) != 0) {
            d4 = location.horizontal_accuracy;
        }
        if ((i & 16) != 0) {
            str = location.connection_type;
        }
        if ((i & 32) != 0) {
            str2 = location.session_ID;
        }
        return location.copy(num, d2, d3, d4, str, str2);
    }

    public final Integer component1() {
        return this.id;
    }

    public final Double component2() {
        return this.latitude;
    }

    public final Double component3() {
        return this.longitude;
    }

    public final Double component4() {
        return this.horizontal_accuracy;
    }

    public final String component5() {
        return this.connection_type;
    }

    public final String component6() {
        return this.session_ID;
    }

    public final Location copy(Integer num, Double d2, Double d3, Double d4, String str, String str2) {
        return new Location(num, d2, d3, d4, str, str2);
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof Location)) {
            return false;
        }
        Location location = (Location) obj;
        return p.a(this.id, location.id) && p.a(this.latitude, location.latitude) && p.a(this.longitude, location.longitude) && p.a(this.horizontal_accuracy, location.horizontal_accuracy) && p.a((Object) this.connection_type, (Object) location.connection_type) && p.a((Object) this.session_ID, (Object) location.session_ID);
    }

    public final String getConnection_type() {
        return this.connection_type;
    }

    public final Double getHorizontal_accuracy() {
        return this.horizontal_accuracy;
    }

    public final Integer getId() {
        return this.id;
    }

    public final Double getLatitude() {
        return this.latitude;
    }

    public final Double getLongitude() {
        return this.longitude;
    }

    public final String getSession_ID() {
        return this.session_ID;
    }

    public final int hashCode() {
        Integer num = this.id;
        int i = 0;
        int hashCode = num != null ? num.hashCode() : 0;
        Double d2 = this.latitude;
        int hashCode2 = d2 != null ? d2.hashCode() : 0;
        Double d3 = this.longitude;
        int hashCode3 = d3 != null ? d3.hashCode() : 0;
        Double d4 = this.horizontal_accuracy;
        int hashCode4 = d4 != null ? d4.hashCode() : 0;
        String str = this.connection_type;
        int hashCode5 = str != null ? str.hashCode() : 0;
        String str2 = this.session_ID;
        if (str2 != null) {
            i = str2.hashCode();
        }
        return (((((((((hashCode * 31) + hashCode2) * 31) + hashCode3) * 31) + hashCode4) * 31) + hashCode5) * 31) + i;
    }

    public final void setConnection_type(String str) {
        this.connection_type = str;
    }

    public final void setHorizontal_accuracy(Double d2) {
        this.horizontal_accuracy = d2;
    }

    public final void setLatitude(Double d2) {
        this.latitude = d2;
    }

    public final void setLongitude(Double d2) {
        this.longitude = d2;
    }

    public final void setSession_ID(String str) {
        this.session_ID = str;
    }

    public final String toString() {
        return "Location(id=" + this.id + ", latitude=" + this.latitude + ", longitude=" + this.longitude + ", horizontal_accuracy=" + this.horizontal_accuracy + ", connection_type=" + this.connection_type + ", session_ID=" + this.session_ID + ")";
    }
}

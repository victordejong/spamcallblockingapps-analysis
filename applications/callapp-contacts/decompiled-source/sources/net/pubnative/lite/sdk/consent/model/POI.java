package net.pubnative.lite.sdk.consent.model;

import com.amazonaws.auth.policy.internal.JsonDocumentFields;
import io.objectbox.model.PropertyFlags;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.p;
import net.pubnative.lite.sdk.consent.db.Database;
import net.pubnative.lite.sdk.consent.db.Schema;
@Database(tableName = "poi")
@Metadata(bv = {1, 0, 3}, d1 = {"��(\n\u0002\u0018\u0002\n\u0002\u0010��\n��\n\u0002\u0010\b\n��\n\u0002\u0010\u000e\n\u0002\b\u0006\n\u0002\u0010\u0006\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0002\b/\b\u0087\b\u0018��2\u00020\u0001Bk\u0012\n\b\u0002\u0010\u0002\u001a\u0004\u0018\u00010\u0003\u0012\b\u0010\u0004\u001a\u0004\u0018\u00010\u0005\u0012\b\u0010\u0006\u001a\u0004\u0018\u00010\u0003\u0012\b\u0010\u0007\u001a\u0004\u0018\u00010\u0003\u0012\b\u0010\b\u001a\u0004\u0018\u00010\u0005\u0012\b\u0010\t\u001a\u0004\u0018\u00010\u0005\u0012\b\u0010\n\u001a\u0004\u0018\u00010\u0005\u0012\b\u0010\u000b\u001a\u0004\u0018\u00010\f\u0012\b\u0010\r\u001a\u0004\u0018\u00010\f\u0012\b\u0010\u000e\u001a\u0004\u0018\u00010\u000f¢\u0006\u0002\u0010\u0010J\u0010\u0010.\u001a\u0004\u0018\u00010\u0003HÆ\u0003¢\u0006\u0002\u0010\u0016J\u0010\u0010/\u001a\u0004\u0018\u00010\u000fHÆ\u0003¢\u0006\u0002\u0010\u0018J\u000b\u00100\u001a\u0004\u0018\u00010\u0005HÆ\u0003J\u0010\u00101\u001a\u0004\u0018\u00010\u0003HÆ\u0003¢\u0006\u0002\u0010\u0016J\u0010\u00102\u001a\u0004\u0018\u00010\u0003HÆ\u0003¢\u0006\u0002\u0010\u0016J\u000b\u00103\u001a\u0004\u0018\u00010\u0005HÆ\u0003J\u000b\u00104\u001a\u0004\u0018\u00010\u0005HÆ\u0003J\u000b\u00105\u001a\u0004\u0018\u00010\u0005HÆ\u0003J\u0010\u00106\u001a\u0004\u0018\u00010\fHÆ\u0003¢\u0006\u0002\u0010\u001dJ\u0010\u00107\u001a\u0004\u0018\u00010\fHÆ\u0003¢\u0006\u0002\u0010\u001dJ\u0086\u0001\u00108\u001a\u00020��2\n\b\u0002\u0010\u0002\u001a\u0004\u0018\u00010\u00032\n\b\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u00052\n\b\u0002\u0010\u0006\u001a\u0004\u0018\u00010\u00032\n\b\u0002\u0010\u0007\u001a\u0004\u0018\u00010\u00032\n\b\u0002\u0010\b\u001a\u0004\u0018\u00010\u00052\n\b\u0002\u0010\t\u001a\u0004\u0018\u00010\u00052\n\b\u0002\u0010\n\u001a\u0004\u0018\u00010\u00052\n\b\u0002\u0010\u000b\u001a\u0004\u0018\u00010\f2\n\b\u0002\u0010\r\u001a\u0004\u0018\u00010\f2\n\b\u0002\u0010\u000e\u001a\u0004\u0018\u00010\u000fHÆ\u0001¢\u0006\u0002\u00109J\u0013\u0010:\u001a\u00020\u000f2\b\u0010;\u001a\u0004\u0018\u00010\u0001HÖ\u0003J\t\u0010<\u001a\u00020\u0003HÖ\u0001J\t\u0010=\u001a\u00020\u0005HÖ\u0001R \u0010\n\u001a\u0004\u0018\u00010\u00058\u0006@\u0006X\u0087\u000e¢\u0006\u000e\n��\u001a\u0004\b\u0011\u0010\u0012\"\u0004\b\u0013\u0010\u0014R\u001a\u0010\u0002\u001a\u0004\u0018\u00010\u00038\u0006X\u0087\u0004¢\u0006\n\n\u0002\u0010\u0017\u001a\u0004\b\u0015\u0010\u0016R\"\u0010\u000e\u001a\u0004\u0018\u00010\u000f8\u0006@\u0006X\u0087\u000e¢\u0006\u0010\n\u0002\u0010\u001b\u001a\u0004\b\u000e\u0010\u0018\"\u0004\b\u0019\u0010\u001aR\"\u0010\u000b\u001a\u0004\u0018\u00010\f8\u0006@\u0006X\u0087\u000e¢\u0006\u0010\n\u0002\u0010 \u001a\u0004\b\u001c\u0010\u001d\"\u0004\b\u001e\u0010\u001fR\"\u0010\r\u001a\u0004\u0018\u00010\f8\u0006@\u0006X\u0087\u000e¢\u0006\u0010\n\u0002\u0010 \u001a\u0004\b!\u0010\u001d\"\u0004\b\"\u0010\u001fR \u0010\u0004\u001a\u0004\u0018\u00010\u00058\u0006@\u0006X\u0087\u000e¢\u0006\u000e\n��\u001a\u0004\b#\u0010\u0012\"\u0004\b$\u0010\u0014R\"\u0010\u0006\u001a\u0004\u0018\u00010\u00038\u0006@\u0006X\u0087\u000e¢\u0006\u0010\n\u0002\u0010\u0017\u001a\u0004\b%\u0010\u0016\"\u0004\b&\u0010'R\"\u0010\u0007\u001a\u0004\u0018\u00010\u00038\u0006@\u0006X\u0087\u000e¢\u0006\u0010\n\u0002\u0010\u0017\u001a\u0004\b(\u0010\u0016\"\u0004\b)\u0010'R \u0010\b\u001a\u0004\u0018\u00010\u00058\u0006@\u0006X\u0087\u000e¢\u0006\u000e\n��\u001a\u0004\b*\u0010\u0012\"\u0004\b+\u0010\u0014R \u0010\t\u001a\u0004\u0018\u00010\u00058\u0006@\u0006X\u0087\u000e¢\u0006\u000e\n��\u001a\u0004\b,\u0010\u0012\"\u0004\b-\u0010\u0014¨\u0006>"}, d2 = {"Lnet/pubnative/lite/sdk/consent/model/POI;", "", "id", "", "name", "", "place_taxonomy2_id", "place_taxonomy3_id", "zipcode", "zipcode_suffix", "country", "latitude", "", "longitude", "is_active", "", "(Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Double;Ljava/lang/Double;Ljava/lang/Boolean;)V", "getCountry", "()Ljava/lang/String;", "setCountry", "(Ljava/lang/String;)V", "getId", "()Ljava/lang/Integer;", "Ljava/lang/Integer;", "()Ljava/lang/Boolean;", "set_active", "(Ljava/lang/Boolean;)V", "Ljava/lang/Boolean;", "getLatitude", "()Ljava/lang/Double;", "setLatitude", "(Ljava/lang/Double;)V", "Ljava/lang/Double;", "getLongitude", "setLongitude", "getName", "setName", "getPlace_taxonomy2_id", "setPlace_taxonomy2_id", "(Ljava/lang/Integer;)V", "getPlace_taxonomy3_id", "setPlace_taxonomy3_id", "getZipcode", "setZipcode", "getZipcode_suffix", "setZipcode_suffix", "component1", "component10", "component2", "component3", "component4", "component5", "component6", "component7", "component8", "component9", "copy", "(Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Double;Ljava/lang/Double;Ljava/lang/Boolean;)Lnet/pubnative/lite/sdk/consent/model/POI;", "equals", "other", "hashCode", "toString", "hybid.sdk.voyager_release"}, k = 1, mv = {1, 4, 2})
/* loaded from: classes5-dex2jar.jar:net/pubnative/lite/sdk/consent/model/POI.class */
public final class POI {
    @Schema(field = "country")
    private String country;
    @Schema(autoIncrease = true, field = JsonDocumentFields.POLICY_ID, generatedId = true, nonNullable = true)
    private final Integer id;
    @Schema(field = "is_active")
    private Boolean is_active;
    @Schema(field = "latitude")
    private Double latitude;
    @Schema(field = "longitude")
    private Double longitude;
    @Schema(field = "name")
    private String name;
    @Schema(field = "place_taxonomy2_id")
    private Integer place_taxonomy2_id;
    @Schema(field = "place_taxonomy3_id")
    private Integer place_taxonomy3_id;
    @Schema(field = "zipcode")
    private String zipcode;
    @Schema(field = "zipcode_suffix")
    private String zipcode_suffix;

    public POI(Integer num, String str, Integer num2, Integer num3, String str2, String str3, String str4, Double d2, Double d3, Boolean bool) {
        this.id = num;
        this.name = str;
        this.place_taxonomy2_id = num2;
        this.place_taxonomy3_id = num3;
        this.zipcode = str2;
        this.zipcode_suffix = str3;
        this.country = str4;
        this.latitude = d2;
        this.longitude = d3;
        this.is_active = bool;
    }

    public /* synthetic */ POI(Integer num, String str, Integer num2, Integer num3, String str2, String str3, String str4, Double d2, Double d3, Boolean bool, int i, DefaultConstructorMarker defaultConstructorMarker) {
        this((i & 1) != 0 ? 0 : num, str, num2, num3, str2, str3, str4, d2, d3, bool);
    }

    public static /* synthetic */ POI copy$default(POI poi, Integer num, String str, Integer num2, Integer num3, String str2, String str3, String str4, Double d2, Double d3, Boolean bool, int i, Object obj) {
        if ((i & 1) != 0) {
            num = poi.id;
        }
        if ((i & 2) != 0) {
            str = poi.name;
        }
        if ((i & 4) != 0) {
            num2 = poi.place_taxonomy2_id;
        }
        if ((i & 8) != 0) {
            num3 = poi.place_taxonomy3_id;
        }
        if ((i & 16) != 0) {
            str2 = poi.zipcode;
        }
        if ((i & 32) != 0) {
            str3 = poi.zipcode_suffix;
        }
        if ((i & 64) != 0) {
            str4 = poi.country;
        }
        if ((i & 128) != 0) {
            d2 = poi.latitude;
        }
        if ((i & PropertyFlags.INDEX_PARTIAL_SKIP_NULL) != 0) {
            d3 = poi.longitude;
        }
        if ((i & 512) != 0) {
            bool = poi.is_active;
        }
        return poi.copy(num, str, num2, num3, str2, str3, str4, d2, d3, bool);
    }

    public final Integer component1() {
        return this.id;
    }

    public final Boolean component10() {
        return this.is_active;
    }

    public final String component2() {
        return this.name;
    }

    public final Integer component3() {
        return this.place_taxonomy2_id;
    }

    public final Integer component4() {
        return this.place_taxonomy3_id;
    }

    public final String component5() {
        return this.zipcode;
    }

    public final String component6() {
        return this.zipcode_suffix;
    }

    public final String component7() {
        return this.country;
    }

    public final Double component8() {
        return this.latitude;
    }

    public final Double component9() {
        return this.longitude;
    }

    public final POI copy(Integer num, String str, Integer num2, Integer num3, String str2, String str3, String str4, Double d2, Double d3, Boolean bool) {
        return new POI(num, str, num2, num3, str2, str3, str4, d2, d3, bool);
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof POI)) {
            return false;
        }
        POI poi = (POI) obj;
        return p.a(this.id, poi.id) && p.a((Object) this.name, (Object) poi.name) && p.a(this.place_taxonomy2_id, poi.place_taxonomy2_id) && p.a(this.place_taxonomy3_id, poi.place_taxonomy3_id) && p.a((Object) this.zipcode, (Object) poi.zipcode) && p.a((Object) this.zipcode_suffix, (Object) poi.zipcode_suffix) && p.a((Object) this.country, (Object) poi.country) && p.a(this.latitude, poi.latitude) && p.a(this.longitude, poi.longitude) && p.a(this.is_active, poi.is_active);
    }

    public final String getCountry() {
        return this.country;
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

    public final String getName() {
        return this.name;
    }

    public final Integer getPlace_taxonomy2_id() {
        return this.place_taxonomy2_id;
    }

    public final Integer getPlace_taxonomy3_id() {
        return this.place_taxonomy3_id;
    }

    public final String getZipcode() {
        return this.zipcode;
    }

    public final String getZipcode_suffix() {
        return this.zipcode_suffix;
    }

    public final int hashCode() {
        Integer num = this.id;
        int i = 0;
        int hashCode = num != null ? num.hashCode() : 0;
        String str = this.name;
        int hashCode2 = str != null ? str.hashCode() : 0;
        Integer num2 = this.place_taxonomy2_id;
        int hashCode3 = num2 != null ? num2.hashCode() : 0;
        Integer num3 = this.place_taxonomy3_id;
        int hashCode4 = num3 != null ? num3.hashCode() : 0;
        String str2 = this.zipcode;
        int hashCode5 = str2 != null ? str2.hashCode() : 0;
        String str3 = this.zipcode_suffix;
        int hashCode6 = str3 != null ? str3.hashCode() : 0;
        String str4 = this.country;
        int hashCode7 = str4 != null ? str4.hashCode() : 0;
        Double d2 = this.latitude;
        int hashCode8 = d2 != null ? d2.hashCode() : 0;
        Double d3 = this.longitude;
        int hashCode9 = d3 != null ? d3.hashCode() : 0;
        Boolean bool = this.is_active;
        if (bool != null) {
            i = bool.hashCode();
        }
        return (((((((((((((((((hashCode * 31) + hashCode2) * 31) + hashCode3) * 31) + hashCode4) * 31) + hashCode5) * 31) + hashCode6) * 31) + hashCode7) * 31) + hashCode8) * 31) + hashCode9) * 31) + i;
    }

    public final Boolean is_active() {
        return this.is_active;
    }

    public final void setCountry(String str) {
        this.country = str;
    }

    public final void setLatitude(Double d2) {
        this.latitude = d2;
    }

    public final void setLongitude(Double d2) {
        this.longitude = d2;
    }

    public final void setName(String str) {
        this.name = str;
    }

    public final void setPlace_taxonomy2_id(Integer num) {
        this.place_taxonomy2_id = num;
    }

    public final void setPlace_taxonomy3_id(Integer num) {
        this.place_taxonomy3_id = num;
    }

    public final void setZipcode(String str) {
        this.zipcode = str;
    }

    public final void setZipcode_suffix(String str) {
        this.zipcode_suffix = str;
    }

    public final void set_active(Boolean bool) {
        this.is_active = bool;
    }

    public final String toString() {
        return "POI(id=" + this.id + ", name=" + this.name + ", place_taxonomy2_id=" + this.place_taxonomy2_id + ", place_taxonomy3_id=" + this.place_taxonomy3_id + ", zipcode=" + this.zipcode + ", zipcode_suffix=" + this.zipcode_suffix + ", country=" + this.country + ", latitude=" + this.latitude + ", longitude=" + this.longitude + ", is_active=" + this.is_active + ")";
    }
}

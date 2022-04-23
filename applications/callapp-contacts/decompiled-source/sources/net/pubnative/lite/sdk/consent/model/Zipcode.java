package net.pubnative.lite.sdk.consent.model;

import com.amazonaws.auth.policy.internal.JsonDocumentFields;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.p;
import net.pubnative.lite.sdk.consent.db.Database;
import net.pubnative.lite.sdk.consent.db.Schema;
@Database(tableName = "zipcode")
@Metadata(bv = {1, 0, 3}, d1 = {"�� \n\u0002\u0018\u0002\n\u0002\u0010��\n��\n\u0002\u0010\b\n��\n\u0002\u0010\u000e\n\u0002\b\u001e\n\u0002\u0010\u000b\n\u0002\b\u0004\b\u0087\b\u0018��2\u00020\u0001BC\u0012\n\b\u0002\u0010\u0002\u001a\u0004\u0018\u00010\u0003\u0012\b\u0010\u0004\u001a\u0004\u0018\u00010\u0005\u0012\b\u0010\u0006\u001a\u0004\u0018\u00010\u0005\u0012\b\u0010\u0007\u001a\u0004\u0018\u00010\u0005\u0012\b\u0010\b\u001a\u0004\u0018\u00010\u0005\u0012\b\u0010\t\u001a\u0004\u0018\u00010\u0003¢\u0006\u0002\u0010\nJ\u0010\u0010\u001b\u001a\u0004\u0018\u00010\u0003HÆ\u0003¢\u0006\u0002\u0010\u0012J\u000b\u0010\u001c\u001a\u0004\u0018\u00010\u0005HÆ\u0003J\u000b\u0010\u001d\u001a\u0004\u0018\u00010\u0005HÆ\u0003J\u000b\u0010\u001e\u001a\u0004\u0018\u00010\u0005HÆ\u0003J\u000b\u0010\u001f\u001a\u0004\u0018\u00010\u0005HÆ\u0003J\u0010\u0010 \u001a\u0004\u0018\u00010\u0003HÆ\u0003¢\u0006\u0002\u0010\u0012JV\u0010!\u001a\u00020��2\n\b\u0002\u0010\u0002\u001a\u0004\u0018\u00010\u00032\n\b\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u00052\n\b\u0002\u0010\u0006\u001a\u0004\u0018\u00010\u00052\n\b\u0002\u0010\u0007\u001a\u0004\u0018\u00010\u00052\n\b\u0002\u0010\b\u001a\u0004\u0018\u00010\u00052\n\b\u0002\u0010\t\u001a\u0004\u0018\u00010\u0003HÆ\u0001¢\u0006\u0002\u0010\"J\u0013\u0010#\u001a\u00020$2\b\u0010%\u001a\u0004\u0018\u00010\u0001HÖ\u0003J\t\u0010&\u001a\u00020\u0003HÖ\u0001J\t\u0010'\u001a\u00020\u0005HÖ\u0001R \u0010\u0007\u001a\u0004\u0018\u00010\u00058\u0006@\u0006X\u0087\u000e¢\u0006\u000e\n��\u001a\u0004\b\u000b\u0010\f\"\u0004\b\r\u0010\u000eR \u0010\b\u001a\u0004\u0018\u00010\u00058\u0006@\u0006X\u0087\u000e¢\u0006\u000e\n��\u001a\u0004\b\u000f\u0010\f\"\u0004\b\u0010\u0010\u000eR\u001a\u0010\u0002\u001a\u0004\u0018\u00010\u00038\u0006X\u0087\u0004¢\u0006\n\n\u0002\u0010\u0013\u001a\u0004\b\u0011\u0010\u0012R\"\u0010\t\u001a\u0004\u0018\u00010\u00038\u0006@\u0006X\u0087\u000e¢\u0006\u0010\n\u0002\u0010\u0013\u001a\u0004\b\u0014\u0010\u0012\"\u0004\b\u0015\u0010\u0016R \u0010\u0004\u001a\u0004\u0018\u00010\u00058\u0006@\u0006X\u0087\u000e¢\u0006\u000e\n��\u001a\u0004\b\u0017\u0010\f\"\u0004\b\u0018\u0010\u000eR \u0010\u0006\u001a\u0004\u0018\u00010\u00058\u0006@\u0006X\u0087\u000e¢\u0006\u000e\n��\u001a\u0004\b\u0019\u0010\f\"\u0004\b\u001a\u0010\u000e¨\u0006("}, d2 = {"Lnet/pubnative/lite/sdk/consent/model/Zipcode;", "", "id", "", "zipcode", "", "zipcode_suffix", "date_created", "date_updated", "poi_count", "(Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;)V", "getDate_created", "()Ljava/lang/String;", "setDate_created", "(Ljava/lang/String;)V", "getDate_updated", "setDate_updated", "getId", "()Ljava/lang/Integer;", "Ljava/lang/Integer;", "getPoi_count", "setPoi_count", "(Ljava/lang/Integer;)V", "getZipcode", "setZipcode", "getZipcode_suffix", "setZipcode_suffix", "component1", "component2", "component3", "component4", "component5", "component6", "copy", "(Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;)Lnet/pubnative/lite/sdk/consent/model/Zipcode;", "equals", "", "other", "hashCode", "toString", "hybid.sdk.voyager_release"}, k = 1, mv = {1, 4, 2})
/* loaded from: classes5-dex2jar.jar:net/pubnative/lite/sdk/consent/model/Zipcode.class */
public final class Zipcode {
    @Schema(field = "date_created")
    private String date_created;
    @Schema(field = "date_updated")
    private String date_updated;
    @Schema(autoIncrease = true, field = JsonDocumentFields.POLICY_ID, generatedId = true, nonNullable = true)
    private final Integer id;
    @Schema(field = "poi_count")
    private Integer poi_count;
    @Schema(field = "zipcode")
    private String zipcode;
    @Schema(field = "zipcode_suffix")
    private String zipcode_suffix;

    public Zipcode(Integer num, String str, String str2, String str3, String str4, Integer num2) {
        this.id = num;
        this.zipcode = str;
        this.zipcode_suffix = str2;
        this.date_created = str3;
        this.date_updated = str4;
        this.poi_count = num2;
    }

    public /* synthetic */ Zipcode(Integer num, String str, String str2, String str3, String str4, Integer num2, int i, DefaultConstructorMarker defaultConstructorMarker) {
        this((i & 1) != 0 ? 0 : num, str, str2, str3, str4, num2);
    }

    public static /* synthetic */ Zipcode copy$default(Zipcode zipcode, Integer num, String str, String str2, String str3, String str4, Integer num2, int i, Object obj) {
        if ((i & 1) != 0) {
            num = zipcode.id;
        }
        if ((i & 2) != 0) {
            str = zipcode.zipcode;
        }
        if ((i & 4) != 0) {
            str2 = zipcode.zipcode_suffix;
        }
        if ((i & 8) != 0) {
            str3 = zipcode.date_created;
        }
        if ((i & 16) != 0) {
            str4 = zipcode.date_updated;
        }
        if ((i & 32) != 0) {
            num2 = zipcode.poi_count;
        }
        return zipcode.copy(num, str, str2, str3, str4, num2);
    }

    public final Integer component1() {
        return this.id;
    }

    public final String component2() {
        return this.zipcode;
    }

    public final String component3() {
        return this.zipcode_suffix;
    }

    public final String component4() {
        return this.date_created;
    }

    public final String component5() {
        return this.date_updated;
    }

    public final Integer component6() {
        return this.poi_count;
    }

    public final Zipcode copy(Integer num, String str, String str2, String str3, String str4, Integer num2) {
        return new Zipcode(num, str, str2, str3, str4, num2);
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof Zipcode)) {
            return false;
        }
        Zipcode zipcode = (Zipcode) obj;
        return p.a(this.id, zipcode.id) && p.a((Object) this.zipcode, (Object) zipcode.zipcode) && p.a((Object) this.zipcode_suffix, (Object) zipcode.zipcode_suffix) && p.a((Object) this.date_created, (Object) zipcode.date_created) && p.a((Object) this.date_updated, (Object) zipcode.date_updated) && p.a(this.poi_count, zipcode.poi_count);
    }

    public final String getDate_created() {
        return this.date_created;
    }

    public final String getDate_updated() {
        return this.date_updated;
    }

    public final Integer getId() {
        return this.id;
    }

    public final Integer getPoi_count() {
        return this.poi_count;
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
        String str = this.zipcode;
        int hashCode2 = str != null ? str.hashCode() : 0;
        String str2 = this.zipcode_suffix;
        int hashCode3 = str2 != null ? str2.hashCode() : 0;
        String str3 = this.date_created;
        int hashCode4 = str3 != null ? str3.hashCode() : 0;
        String str4 = this.date_updated;
        int hashCode5 = str4 != null ? str4.hashCode() : 0;
        Integer num2 = this.poi_count;
        if (num2 != null) {
            i = num2.hashCode();
        }
        return (((((((((hashCode * 31) + hashCode2) * 31) + hashCode3) * 31) + hashCode4) * 31) + hashCode5) * 31) + i;
    }

    public final void setDate_created(String str) {
        this.date_created = str;
    }

    public final void setDate_updated(String str) {
        this.date_updated = str;
    }

    public final void setPoi_count(Integer num) {
        this.poi_count = num;
    }

    public final void setZipcode(String str) {
        this.zipcode = str;
    }

    public final void setZipcode_suffix(String str) {
        this.zipcode_suffix = str;
    }

    public final String toString() {
        return "Zipcode(id=" + this.id + ", zipcode=" + this.zipcode + ", zipcode_suffix=" + this.zipcode_suffix + ", date_created=" + this.date_created + ", date_updated=" + this.date_updated + ", poi_count=" + this.poi_count + ")";
    }
}

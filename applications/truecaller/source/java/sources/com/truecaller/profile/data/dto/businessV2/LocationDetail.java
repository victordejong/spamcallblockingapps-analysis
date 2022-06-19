package com.truecaller.profile.data.dto.businessV2;

import android.os.Parcel;
import android.os.Parcelable;
import androidx.annotation.Keep;
import com.mopub.network.ImpressionData;
import java.util.ArrayList;
import java.util.List;
import kotlin.Metadata;
import p193e.p1432d.p1439c.p1440a.C22128a;
import s1.z.c.f;
import s1.z.c.l;
@Metadata(bv = {1, 0, 3}, d1 = {"��R\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\b\t\n\u0002\u0010\u0006\n\u0002\b\u0004\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\t\n\u0002\b\u0013\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0010��\n��\n\u0002\u0010\u000b\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b)\b\u0087\b\u0018��2\u00020\u0001Bµ\u0001\u0012\n\b\u0002\u0010\u0019\u001a\u0004\u0018\u00010\u0002\u0012\n\b\u0002\u0010\u001a\u001a\u0004\u0018\u00010\u0002\u0012\n\b\u0002\u0010\u001b\u001a\u0004\u0018\u00010\u0002\u0012\n\b\u0002\u0010\u001c\u001a\u0004\u0018\u00010\u0002\u0012\n\b\u0002\u0010\u001d\u001a\u0004\u0018\u00010\u0002\u0012\n\b\u0002\u0010\u001e\u001a\u0004\u0018\u00010\u0002\u0012\n\b\u0002\u0010\u001f\u001a\u0004\u0018\u00010\u0002\u0012\n\b\u0002\u0010 \u001a\u0004\u0018\u00010\u0002\u0012\n\b\u0002\u0010!\u001a\u0004\u0018\u00010\f\u0012\n\b\u0002\u0010\"\u001a\u0004\u0018\u00010\f\u0012\n\b\u0002\u0010#\u001a\u0004\u0018\u00010\u0002\u0012\u0010\b\u0002\u0010$\u001a\n\u0012\u0004\u0012\u00020\u0012\u0018\u00010\u0011\u0012\n\b\u0002\u0010%\u001a\u0004\u0018\u00010\u0002\u0012\n\b\u0002\u0010&\u001a\u0004\u0018\u00010\u0016¢\u0006\u0004\b]\u0010^J\u0012\u0010\u0003\u001a\u0004\u0018\u00010\u0002HÆ\u0003¢\u0006\u0004\b\u0003\u0010\u0004J\u0012\u0010\u0005\u001a\u0004\u0018\u00010\u0002HÆ\u0003¢\u0006\u0004\b\u0005\u0010\u0004J\u0012\u0010\u0006\u001a\u0004\u0018\u00010\u0002HÆ\u0003¢\u0006\u0004\b\u0006\u0010\u0004J\u0012\u0010\u0007\u001a\u0004\u0018\u00010\u0002HÆ\u0003¢\u0006\u0004\b\u0007\u0010\u0004J\u0012\u0010\b\u001a\u0004\u0018\u00010\u0002HÆ\u0003¢\u0006\u0004\b\b\u0010\u0004J\u0012\u0010\t\u001a\u0004\u0018\u00010\u0002HÆ\u0003¢\u0006\u0004\b\t\u0010\u0004J\u0012\u0010\n\u001a\u0004\u0018\u00010\u0002HÆ\u0003¢\u0006\u0004\b\n\u0010\u0004J\u0012\u0010\u000b\u001a\u0004\u0018\u00010\u0002HÆ\u0003¢\u0006\u0004\b\u000b\u0010\u0004J\u0012\u0010\r\u001a\u0004\u0018\u00010\fHÆ\u0003¢\u0006\u0004\b\r\u0010\u000eJ\u0012\u0010\u000f\u001a\u0004\u0018\u00010\fHÆ\u0003¢\u0006\u0004\b\u000f\u0010\u000eJ\u0012\u0010\u0010\u001a\u0004\u0018\u00010\u0002HÆ\u0003¢\u0006\u0004\b\u0010\u0010\u0004J\u0018\u0010\u0013\u001a\n\u0012\u0004\u0012\u00020\u0012\u0018\u00010\u0011HÆ\u0003¢\u0006\u0004\b\u0013\u0010\u0014J\u0012\u0010\u0015\u001a\u0004\u0018\u00010\u0002HÆ\u0003¢\u0006\u0004\b\u0015\u0010\u0004J\u0012\u0010\u0017\u001a\u0004\u0018\u00010\u0016HÆ\u0003¢\u0006\u0004\b\u0017\u0010\u0018J¾\u0001\u0010'\u001a\u00020��2\n\b\u0002\u0010\u0019\u001a\u0004\u0018\u00010\u00022\n\b\u0002\u0010\u001a\u001a\u0004\u0018\u00010\u00022\n\b\u0002\u0010\u001b\u001a\u0004\u0018\u00010\u00022\n\b\u0002\u0010\u001c\u001a\u0004\u0018\u00010\u00022\n\b\u0002\u0010\u001d\u001a\u0004\u0018\u00010\u00022\n\b\u0002\u0010\u001e\u001a\u0004\u0018\u00010\u00022\n\b\u0002\u0010\u001f\u001a\u0004\u0018\u00010\u00022\n\b\u0002\u0010 \u001a\u0004\u0018\u00010\u00022\n\b\u0002\u0010!\u001a\u0004\u0018\u00010\f2\n\b\u0002\u0010\"\u001a\u0004\u0018\u00010\f2\n\b\u0002\u0010#\u001a\u0004\u0018\u00010\u00022\u0010\b\u0002\u0010$\u001a\n\u0012\u0004\u0012\u00020\u0012\u0018\u00010\u00112\n\b\u0002\u0010%\u001a\u0004\u0018\u00010\u00022\n\b\u0002\u0010&\u001a\u0004\u0018\u00010\u0016HÆ\u0001¢\u0006\u0004\b'\u0010(J\u0010\u0010)\u001a\u00020\u0002HÖ\u0001¢\u0006\u0004\b)\u0010\u0004J\u0010\u0010+\u001a\u00020*HÖ\u0001¢\u0006\u0004\b+\u0010,J\u001a\u00100\u001a\u00020/2\b\u0010.\u001a\u0004\u0018\u00010-HÖ\u0003¢\u0006\u0004\b0\u00101J\u0010\u00102\u001a\u00020*HÖ\u0001¢\u0006\u0004\b2\u0010,J \u00107\u001a\u0002062\u0006\u00104\u001a\u0002032\u0006\u00105\u001a\u00020*HÖ\u0001¢\u0006\u0004\b7\u00108R$\u0010\u0019\u001a\u0004\u0018\u00010\u00028\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u0019\u00109\u001a\u0004\b:\u0010\u0004\"\u0004\b;\u0010<R$\u0010!\u001a\u0004\u0018\u00010\f8\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b!\u0010=\u001a\u0004\b>\u0010\u000e\"\u0004\b?\u0010@R$\u0010\"\u001a\u0004\u0018\u00010\f8\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\"\u0010=\u001a\u0004\bA\u0010\u000e\"\u0004\bB\u0010@R$\u0010%\u001a\u0004\u0018\u00010\u00028\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b%\u00109\u001a\u0004\bC\u0010\u0004\"\u0004\bD\u0010<R$\u0010\u001b\u001a\u0004\u0018\u00010\u00028\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u001b\u00109\u001a\u0004\bE\u0010\u0004\"\u0004\bF\u0010<R*\u0010$\u001a\n\u0012\u0004\u0012\u00020\u0012\u0018\u00010\u00118\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b$\u0010G\u001a\u0004\bH\u0010\u0014\"\u0004\bI\u0010JR$\u0010\u001e\u001a\u0004\u0018\u00010\u00028\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u001e\u00109\u001a\u0004\bK\u0010\u0004\"\u0004\bL\u0010<R$\u0010#\u001a\u0004\u0018\u00010\u00028\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b#\u00109\u001a\u0004\bM\u0010\u0004\"\u0004\bN\u0010<R$\u0010\u001d\u001a\u0004\u0018\u00010\u00028\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u001d\u00109\u001a\u0004\bO\u0010\u0004\"\u0004\bP\u0010<R$\u0010\u001f\u001a\u0004\u0018\u00010\u00028\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u001f\u00109\u001a\u0004\bQ\u0010\u0004\"\u0004\bR\u0010<R$\u0010\u001c\u001a\u0004\u0018\u00010\u00028\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u001c\u00109\u001a\u0004\bS\u0010\u0004\"\u0004\bT\u0010<R$\u0010&\u001a\u0004\u0018\u00010\u00168\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b&\u0010U\u001a\u0004\bV\u0010\u0018\"\u0004\bW\u0010XR$\u0010 \u001a\u0004\u0018\u00010\u00028\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b \u00109\u001a\u0004\bY\u0010\u0004\"\u0004\bZ\u0010<R$\u0010\u001a\u001a\u0004\u0018\u00010\u00028\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u001a\u00109\u001a\u0004\b[\u0010\u0004\"\u0004\b\\\u0010<¨\u0006_"}, d2 = {"Lcom/truecaller/profile/data/dto/businessV2/LocationDetail;", "Landroid/os/Parcelable;", "", "component1", "()Ljava/lang/String;", "component2", "component3", "component4", "component5", "component6", "component7", "component8", "", "component9", "()Ljava/lang/Double;", "component10", "component11", "", "Lcom/truecaller/profile/data/dto/businessV2/OpenHours;", "component12", "()Ljava/util/List;", "component13", "", "component14", "()Ljava/lang/Long;", "locId", "addressLine1", "addressLine2", "street", "city", "zipCode", "state", ImpressionData.COUNTRY, "latitude", "longitude", "landmark", "openHours", "branch", "landline", "copy", "(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Double;Ljava/lang/Double;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;Ljava/lang/Long;)Lcom/truecaller/profile/data/dto/businessV2/LocationDetail;", "toString", "", "hashCode", "()I", "", "other", "", "equals", "(Ljava/lang/Object;)Z", "describeContents", "Landroid/os/Parcel;", "parcel", "flags", "Ls1/s;", "writeToParcel", "(Landroid/os/Parcel;I)V", "Ljava/lang/String;", "getLocId", "setLocId", "(Ljava/lang/String;)V", "Ljava/lang/Double;", "getLatitude", "setLatitude", "(Ljava/lang/Double;)V", "getLongitude", "setLongitude", "getBranch", "setBranch", "getAddressLine2", "setAddressLine2", "Ljava/util/List;", "getOpenHours", "setOpenHours", "(Ljava/util/List;)V", "getZipCode", "setZipCode", "getLandmark", "setLandmark", "getCity", "setCity", "getState", "setState", "getStreet", "setStreet", "Ljava/lang/Long;", "getLandline", "setLandline", "(Ljava/lang/Long;)V", "getCountry", "setCountry", "getAddressLine1", "setAddressLine1", "<init>", "(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Double;Ljava/lang/Double;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;Ljava/lang/Long;)V", "profile_release"}, k = 1, mv = {1, 4, 1})
@Keep
/* loaded from: classes12-dex2jar.jar:com/truecaller/profile/data/dto/businessV2/LocationDetail.class */
public final class LocationDetail implements Parcelable {
    public static final Parcelable.Creator<LocationDetail> CREATOR = new C4380a();
    private String addressLine1;
    private String addressLine2;
    private String branch;
    private String city;
    private String country;
    private Long landline;
    private String landmark;
    private Double latitude;
    private String locId;
    private Double longitude;
    private List<OpenHours> openHours;
    private String state;
    private String street;
    private String zipCode;

    /* renamed from: com.truecaller.profile.data.dto.businessV2.LocationDetail$a */
    /* loaded from: classes12-dex2jar.jar:com/truecaller/profile/data/dto/businessV2/LocationDetail$a.class */
    public static final class C4380a implements Parcelable.Creator<LocationDetail> {
        @Override // android.os.Parcelable.Creator
        public LocationDetail createFromParcel(Parcel parcel) {
            ArrayList arrayList;
            l.e(parcel, "in");
            String readString = parcel.readString();
            String readString2 = parcel.readString();
            String readString3 = parcel.readString();
            String readString4 = parcel.readString();
            String readString5 = parcel.readString();
            String readString6 = parcel.readString();
            String readString7 = parcel.readString();
            String readString8 = parcel.readString();
            Double valueOf = parcel.readInt() != 0 ? Double.valueOf(parcel.readDouble()) : null;
            Double valueOf2 = parcel.readInt() != 0 ? Double.valueOf(parcel.readDouble()) : null;
            String readString9 = parcel.readString();
            if (parcel.readInt() != 0) {
                int readInt = parcel.readInt();
                ArrayList arrayList2 = new ArrayList(readInt);
                while (true) {
                    arrayList = arrayList2;
                    if (readInt == 0) {
                        break;
                    }
                    arrayList2.add(OpenHours.CREATOR.createFromParcel(parcel));
                    readInt--;
                }
            } else {
                arrayList = null;
            }
            return new LocationDetail(readString, readString2, readString3, readString4, readString5, readString6, readString7, readString8, valueOf, valueOf2, readString9, arrayList, parcel.readString(), parcel.readInt() != 0 ? Long.valueOf(parcel.readLong()) : null);
        }

        @Override // android.os.Parcelable.Creator
        public LocationDetail[] newArray(int i) {
            return new LocationDetail[i];
        }
    }

    public LocationDetail() {
        this(null, null, null, null, null, null, null, null, null, null, null, null, null, null, 16383, null);
    }

    public LocationDetail(String str, String str2, String str3, String str4, String str5, String str6, String str7, String str8, Double d, Double d2, String str9, List<OpenHours> list, String str10, Long l) {
        this.locId = str;
        this.addressLine1 = str2;
        this.addressLine2 = str3;
        this.street = str4;
        this.city = str5;
        this.zipCode = str6;
        this.state = str7;
        this.country = str8;
        this.latitude = d;
        this.longitude = d2;
        this.landmark = str9;
        this.openHours = list;
        this.branch = str10;
        this.landline = l;
    }

    public /* synthetic */ LocationDetail(String str, String str2, String str3, String str4, String str5, String str6, String str7, String str8, Double d, Double d2, String str9, List list, String str10, Long l, int i, f fVar) {
        this((i & 1) != 0 ? null : str, (i & 2) != 0 ? null : str2, (i & 4) != 0 ? null : str3, (i & 8) != 0 ? null : str4, (i & 16) != 0 ? null : str5, (i & 32) != 0 ? null : str6, (i & 64) != 0 ? null : str7, (i & 128) != 0 ? null : str8, (i & 256) != 0 ? null : d, (i & 512) != 0 ? null : d2, (i & 1024) != 0 ? null : str9, (i & 2048) != 0 ? null : list, (i & 4096) != 0 ? null : str10, (i & 8192) != 0 ? null : l);
    }

    public static /* synthetic */ LocationDetail copy$default(LocationDetail locationDetail, String str, String str2, String str3, String str4, String str5, String str6, String str7, String str8, Double d, Double d2, String str9, List list, String str10, Long l, int i, Object obj) {
        if ((i & 1) != 0) {
            str = locationDetail.locId;
        }
        if ((i & 2) != 0) {
            str2 = locationDetail.addressLine1;
        }
        if ((i & 4) != 0) {
            str3 = locationDetail.addressLine2;
        }
        if ((i & 8) != 0) {
            str4 = locationDetail.street;
        }
        if ((i & 16) != 0) {
            str5 = locationDetail.city;
        }
        if ((i & 32) != 0) {
            str6 = locationDetail.zipCode;
        }
        if ((i & 64) != 0) {
            str7 = locationDetail.state;
        }
        if ((i & 128) != 0) {
            str8 = locationDetail.country;
        }
        if ((i & 256) != 0) {
            d = locationDetail.latitude;
        }
        if ((i & 512) != 0) {
            d2 = locationDetail.longitude;
        }
        if ((i & 1024) != 0) {
            str9 = locationDetail.landmark;
        }
        if ((i & 2048) != 0) {
            list = locationDetail.openHours;
        }
        if ((i & 4096) != 0) {
            str10 = locationDetail.branch;
        }
        if ((i & 8192) != 0) {
            l = locationDetail.landline;
        }
        return locationDetail.copy(str, str2, str3, str4, str5, str6, str7, str8, d, d2, str9, list, str10, l);
    }

    public final String component1() {
        return this.locId;
    }

    public final Double component10() {
        return this.longitude;
    }

    public final String component11() {
        return this.landmark;
    }

    public final List<OpenHours> component12() {
        return this.openHours;
    }

    public final String component13() {
        return this.branch;
    }

    public final Long component14() {
        return this.landline;
    }

    public final String component2() {
        return this.addressLine1;
    }

    public final String component3() {
        return this.addressLine2;
    }

    public final String component4() {
        return this.street;
    }

    public final String component5() {
        return this.city;
    }

    public final String component6() {
        return this.zipCode;
    }

    public final String component7() {
        return this.state;
    }

    public final String component8() {
        return this.country;
    }

    public final Double component9() {
        return this.latitude;
    }

    public final LocationDetail copy(String str, String str2, String str3, String str4, String str5, String str6, String str7, String str8, Double d, Double d2, String str9, List<OpenHours> list, String str10, Long l) {
        return new LocationDetail(str, str2, str3, str4, str5, str6, str7, str8, d, d2, str9, list, str10, l);
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    public boolean equals(Object obj) {
        if (this != obj) {
            if (!(obj instanceof LocationDetail)) {
                return false;
            }
            LocationDetail locationDetail = (LocationDetail) obj;
            return l.a(this.locId, locationDetail.locId) && l.a(this.addressLine1, locationDetail.addressLine1) && l.a(this.addressLine2, locationDetail.addressLine2) && l.a(this.street, locationDetail.street) && l.a(this.city, locationDetail.city) && l.a(this.zipCode, locationDetail.zipCode) && l.a(this.state, locationDetail.state) && l.a(this.country, locationDetail.country) && l.a(this.latitude, locationDetail.latitude) && l.a(this.longitude, locationDetail.longitude) && l.a(this.landmark, locationDetail.landmark) && l.a(this.openHours, locationDetail.openHours) && l.a(this.branch, locationDetail.branch) && l.a(this.landline, locationDetail.landline);
        }
        return true;
    }

    public final String getAddressLine1() {
        return this.addressLine1;
    }

    public final String getAddressLine2() {
        return this.addressLine2;
    }

    public final String getBranch() {
        return this.branch;
    }

    public final String getCity() {
        return this.city;
    }

    public final String getCountry() {
        return this.country;
    }

    public final Long getLandline() {
        return this.landline;
    }

    public final String getLandmark() {
        return this.landmark;
    }

    public final Double getLatitude() {
        return this.latitude;
    }

    public final String getLocId() {
        return this.locId;
    }

    public final Double getLongitude() {
        return this.longitude;
    }

    public final List<OpenHours> getOpenHours() {
        return this.openHours;
    }

    public final String getState() {
        return this.state;
    }

    public final String getStreet() {
        return this.street;
    }

    public final String getZipCode() {
        return this.zipCode;
    }

    public int hashCode() {
        String str = this.locId;
        int i = 0;
        int hashCode = str != null ? str.hashCode() : 0;
        String str2 = this.addressLine1;
        int hashCode2 = str2 != null ? str2.hashCode() : 0;
        String str3 = this.addressLine2;
        int hashCode3 = str3 != null ? str3.hashCode() : 0;
        String str4 = this.street;
        int hashCode4 = str4 != null ? str4.hashCode() : 0;
        String str5 = this.city;
        int hashCode5 = str5 != null ? str5.hashCode() : 0;
        String str6 = this.zipCode;
        int hashCode6 = str6 != null ? str6.hashCode() : 0;
        String str7 = this.state;
        int hashCode7 = str7 != null ? str7.hashCode() : 0;
        String str8 = this.country;
        int hashCode8 = str8 != null ? str8.hashCode() : 0;
        Double d = this.latitude;
        int hashCode9 = d != null ? d.hashCode() : 0;
        Double d2 = this.longitude;
        int hashCode10 = d2 != null ? d2.hashCode() : 0;
        String str9 = this.landmark;
        int hashCode11 = str9 != null ? str9.hashCode() : 0;
        List<OpenHours> list = this.openHours;
        int hashCode12 = list != null ? list.hashCode() : 0;
        String str10 = this.branch;
        int hashCode13 = str10 != null ? str10.hashCode() : 0;
        Long l = this.landline;
        if (l != null) {
            i = l.hashCode();
        }
        return (((((((((((((((((((((((((hashCode * 31) + hashCode2) * 31) + hashCode3) * 31) + hashCode4) * 31) + hashCode5) * 31) + hashCode6) * 31) + hashCode7) * 31) + hashCode8) * 31) + hashCode9) * 31) + hashCode10) * 31) + hashCode11) * 31) + hashCode12) * 31) + hashCode13) * 31) + i;
    }

    public final void setAddressLine1(String str) {
        this.addressLine1 = str;
    }

    public final void setAddressLine2(String str) {
        this.addressLine2 = str;
    }

    public final void setBranch(String str) {
        this.branch = str;
    }

    public final void setCity(String str) {
        this.city = str;
    }

    public final void setCountry(String str) {
        this.country = str;
    }

    public final void setLandline(Long l) {
        this.landline = l;
    }

    public final void setLandmark(String str) {
        this.landmark = str;
    }

    public final void setLatitude(Double d) {
        this.latitude = d;
    }

    public final void setLocId(String str) {
        this.locId = str;
    }

    public final void setLongitude(Double d) {
        this.longitude = d;
    }

    public final void setOpenHours(List<OpenHours> list) {
        this.openHours = list;
    }

    public final void setState(String str) {
        this.state = str;
    }

    public final void setStreet(String str) {
        this.street = str;
    }

    public final void setZipCode(String str) {
        this.zipCode = str;
    }

    public String toString() {
        StringBuilder m8728C = C22128a.m8728C("LocationDetail(locId=");
        m8728C.append(this.locId);
        m8728C.append(", addressLine1=");
        m8728C.append(this.addressLine1);
        m8728C.append(", addressLine2=");
        m8728C.append(this.addressLine2);
        m8728C.append(", street=");
        m8728C.append(this.street);
        m8728C.append(", city=");
        m8728C.append(this.city);
        m8728C.append(", zipCode=");
        m8728C.append(this.zipCode);
        m8728C.append(", state=");
        m8728C.append(this.state);
        m8728C.append(", country=");
        m8728C.append(this.country);
        m8728C.append(", latitude=");
        m8728C.append(this.latitude);
        m8728C.append(", longitude=");
        m8728C.append(this.longitude);
        m8728C.append(", landmark=");
        m8728C.append(this.landmark);
        m8728C.append(", openHours=");
        m8728C.append(this.openHours);
        m8728C.append(", branch=");
        m8728C.append(this.branch);
        m8728C.append(", landline=");
        m8728C.append(this.landline);
        m8728C.append(")");
        return m8728C.toString();
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        l.e(parcel, "parcel");
        parcel.writeString(this.locId);
        parcel.writeString(this.addressLine1);
        parcel.writeString(this.addressLine2);
        parcel.writeString(this.street);
        parcel.writeString(this.city);
        parcel.writeString(this.zipCode);
        parcel.writeString(this.state);
        parcel.writeString(this.country);
        Double d = this.latitude;
        if (d != null) {
            parcel.writeInt(1);
            parcel.writeDouble(d.doubleValue());
        } else {
            parcel.writeInt(0);
        }
        Double d2 = this.longitude;
        if (d2 != null) {
            parcel.writeInt(1);
            parcel.writeDouble(d2.doubleValue());
        } else {
            parcel.writeInt(0);
        }
        parcel.writeString(this.landmark);
        List<OpenHours> list = this.openHours;
        if (list != null) {
            parcel.writeInt(1);
            parcel.writeInt(list.size());
            for (OpenHours openHours : list) {
                openHours.writeToParcel(parcel, 0);
            }
        } else {
            parcel.writeInt(0);
        }
        parcel.writeString(this.branch);
        Long l = this.landline;
        if (l == null) {
            parcel.writeInt(0);
            return;
        }
        parcel.writeInt(1);
        parcel.writeLong(l.longValue());
    }
}

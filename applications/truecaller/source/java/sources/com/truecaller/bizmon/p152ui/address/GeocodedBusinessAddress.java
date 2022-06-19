package com.truecaller.bizmon.p152ui.address;

import android.os.Parcel;
import android.os.Parcelable;
import androidx.annotation.Keep;
import kotlin.Metadata;
import s1.z.c.l;
@Metadata(bv = {1, 0, 3}, d1 = {"��0\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0006\n\u0002\u0010\u0006\n\u0002\b\r\b\u0007\u0018��2\u00020\u0001B?\u0012\b\u0010\u001b\u001a\u0004\u0018\u00010\u000b\u0012\b\u0010\f\u001a\u0004\u0018\u00010\u000b\u0012\b\u0010\u0010\u001a\u0004\u0018\u00010\u000b\u0012\b\u0010\u0019\u001a\u0004\u0018\u00010\u000b\u0012\u0006\u0010\u0013\u001a\u00020\u0012\u0012\u0006\u0010\u0017\u001a\u00020\u0012¢\u0006\u0004\b\u001d\u0010\u001eJ\u0010\u0010\u0003\u001a\u00020\u0002HÖ\u0001¢\u0006\u0004\b\u0003\u0010\u0004J \u0010\t\u001a\u00020\b2\u0006\u0010\u0006\u001a\u00020\u00052\u0006\u0010\u0007\u001a\u00020\u0002HÖ\u0001¢\u0006\u0004\b\t\u0010\nR\u001b\u0010\f\u001a\u0004\u0018\u00010\u000b8\u0006@\u0006¢\u0006\f\n\u0004\b\f\u0010\r\u001a\u0004\b\u000e\u0010\u000fR\u001b\u0010\u0010\u001a\u0004\u0018\u00010\u000b8\u0006@\u0006¢\u0006\f\n\u0004\b\u0010\u0010\r\u001a\u0004\b\u0011\u0010\u000fR\u0019\u0010\u0013\u001a\u00020\u00128\u0006@\u0006¢\u0006\f\n\u0004\b\u0013\u0010\u0014\u001a\u0004\b\u0015\u0010\u0016R\u0019\u0010\u0017\u001a\u00020\u00128\u0006@\u0006¢\u0006\f\n\u0004\b\u0017\u0010\u0014\u001a\u0004\b\u0018\u0010\u0016R\u001b\u0010\u0019\u001a\u0004\u0018\u00010\u000b8\u0006@\u0006¢\u0006\f\n\u0004\b\u0019\u0010\r\u001a\u0004\b\u001a\u0010\u000fR\u001b\u0010\u001b\u001a\u0004\u0018\u00010\u000b8\u0006@\u0006¢\u0006\f\n\u0004\b\u001b\u0010\r\u001a\u0004\b\u001c\u0010\u000f¨\u0006\u001f"}, d2 = {"Lcom/truecaller/bizmon/ui/address/GeocodedBusinessAddress;", "Landroid/os/Parcelable;", "", "describeContents", "()I", "Landroid/os/Parcel;", "parcel", "flags", "Ls1/s;", "writeToParcel", "(Landroid/os/Parcel;I)V", "", "zipCode", "Ljava/lang/String;", "getZipCode", "()Ljava/lang/String;", "city", "getCity", "", "latitude", "D", "getLatitude", "()D", "longitude", "getLongitude", "countryCode", "getCountryCode", "street", "getStreet", "<init>", "(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;DD)V", "bizmon_release"}, k = 1, mv = {1, 4, 1})
@Keep
/* renamed from: com.truecaller.bizmon.ui.address.GeocodedBusinessAddress */
/* loaded from: classes6-dex2jar.jar:com/truecaller/bizmon/ui/address/GeocodedBusinessAddress.class */
public final class GeocodedBusinessAddress implements Parcelable {
    public static final Parcelable.Creator<GeocodedBusinessAddress> CREATOR = new C3519a();
    private final String city;
    private final String countryCode;
    private final double latitude;
    private final double longitude;
    private final String street;
    private final String zipCode;

    /* renamed from: com.truecaller.bizmon.ui.address.GeocodedBusinessAddress$a */
    /* loaded from: classes6-dex2jar.jar:com/truecaller/bizmon/ui/address/GeocodedBusinessAddress$a.class */
    public static final class C3519a implements Parcelable.Creator<GeocodedBusinessAddress> {
        @Override // android.os.Parcelable.Creator
        public GeocodedBusinessAddress createFromParcel(Parcel parcel) {
            l.e(parcel, "in");
            return new GeocodedBusinessAddress(parcel.readString(), parcel.readString(), parcel.readString(), parcel.readString(), parcel.readDouble(), parcel.readDouble());
        }

        @Override // android.os.Parcelable.Creator
        public GeocodedBusinessAddress[] newArray(int i) {
            return new GeocodedBusinessAddress[i];
        }
    }

    public GeocodedBusinessAddress(String str, String str2, String str3, String str4, double d, double d2) {
        this.street = str;
        this.zipCode = str2;
        this.city = str3;
        this.countryCode = str4;
        this.latitude = d;
        this.longitude = d2;
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    public final String getCity() {
        return this.city;
    }

    public final String getCountryCode() {
        return this.countryCode;
    }

    public final double getLatitude() {
        return this.latitude;
    }

    public final double getLongitude() {
        return this.longitude;
    }

    public final String getStreet() {
        return this.street;
    }

    public final String getZipCode() {
        return this.zipCode;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        l.e(parcel, "parcel");
        parcel.writeString(this.street);
        parcel.writeString(this.zipCode);
        parcel.writeString(this.city);
        parcel.writeString(this.countryCode);
        parcel.writeDouble(this.latitude);
        parcel.writeDouble(this.longitude);
    }
}

package com.truecaller.bizmon.p152ui.address;

import android.os.Parcel;
import android.os.Parcelable;
import androidx.annotation.Keep;
import kotlin.Metadata;
import p193e.p1432d.p1439c.p1440a.C22128a;
import s1.z.c.l;
@Metadata(bv = {1, 0, 3}, d1 = {"��0\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0006\n\u0002\b\u0004\n\u0002\u0010\u000e\n\u0002\b\u000f\b\u0007\u0018��2\u00020\u0001B=\u0012\u0006\u0010\u0019\u001a\u00020\u0010\u0012\b\u0010\u0015\u001a\u0004\u0018\u00010\u0010\u0012\u0006\u0010\u0017\u001a\u00020\u0010\u0012\u0006\u0010\u0011\u001a\u00020\u0010\u0012\b\u0010\u001b\u001a\u0004\u0018\u00010\u000b\u0012\b\u0010\f\u001a\u0004\u0018\u00010\u000b¢\u0006\u0004\b\u001d\u0010\u001eJ\u0010\u0010\u0003\u001a\u00020\u0002HÖ\u0001¢\u0006\u0004\b\u0003\u0010\u0004J \u0010\t\u001a\u00020\b2\u0006\u0010\u0006\u001a\u00020\u00052\u0006\u0010\u0007\u001a\u00020\u0002HÖ\u0001¢\u0006\u0004\b\t\u0010\nR\u001b\u0010\f\u001a\u0004\u0018\u00010\u000b8\u0006@\u0006¢\u0006\f\n\u0004\b\f\u0010\r\u001a\u0004\b\u000e\u0010\u000fR\u0019\u0010\u0011\u001a\u00020\u00108\u0006@\u0006¢\u0006\f\n\u0004\b\u0011\u0010\u0012\u001a\u0004\b\u0013\u0010\u0014R\u001b\u0010\u0015\u001a\u0004\u0018\u00010\u00108\u0006@\u0006¢\u0006\f\n\u0004\b\u0015\u0010\u0012\u001a\u0004\b\u0016\u0010\u0014R\u0019\u0010\u0017\u001a\u00020\u00108\u0006@\u0006¢\u0006\f\n\u0004\b\u0017\u0010\u0012\u001a\u0004\b\u0018\u0010\u0014R\u0019\u0010\u0019\u001a\u00020\u00108\u0006@\u0006¢\u0006\f\n\u0004\b\u0019\u0010\u0012\u001a\u0004\b\u001a\u0010\u0014R\u001b\u0010\u001b\u001a\u0004\u0018\u00010\u000b8\u0006@\u0006¢\u0006\f\n\u0004\b\u001b\u0010\r\u001a\u0004\b\u001c\u0010\u000f¨\u0006\u001f"}, d2 = {"Lcom/truecaller/bizmon/ui/address/BusinessAddressInput;", "Landroid/os/Parcelable;", "", "describeContents", "()I", "Landroid/os/Parcel;", "parcel", "flags", "Ls1/s;", "writeToParcel", "(Landroid/os/Parcel;I)V", "", "longitude", "Ljava/lang/Double;", "getLongitude", "()Ljava/lang/Double;", "", "countryCode", "Ljava/lang/String;", "getCountryCode", "()Ljava/lang/String;", "zipCode", "getZipCode", "city", "getCity", "street", "getStreet", "latitude", "getLatitude", "<init>", "(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Double;Ljava/lang/Double;)V", "bizmon_release"}, k = 1, mv = {1, 4, 1})
@Keep
/* renamed from: com.truecaller.bizmon.ui.address.BusinessAddressInput */
/* loaded from: classes6-dex2jar.jar:com/truecaller/bizmon/ui/address/BusinessAddressInput.class */
public final class BusinessAddressInput implements Parcelable {
    public static final Parcelable.Creator<BusinessAddressInput> CREATOR = new C3518a();
    private final String city;
    private final String countryCode;
    private final Double latitude;
    private final Double longitude;
    private final String street;
    private final String zipCode;

    /* renamed from: com.truecaller.bizmon.ui.address.BusinessAddressInput$a */
    /* loaded from: classes6-dex2jar.jar:com/truecaller/bizmon/ui/address/BusinessAddressInput$a.class */
    public static final class C3518a implements Parcelable.Creator<BusinessAddressInput> {
        @Override // android.os.Parcelable.Creator
        public BusinessAddressInput createFromParcel(Parcel parcel) {
            l.e(parcel, "in");
            return new BusinessAddressInput(parcel.readString(), parcel.readString(), parcel.readString(), parcel.readString(), parcel.readInt() != 0 ? Double.valueOf(parcel.readDouble()) : null, parcel.readInt() != 0 ? Double.valueOf(parcel.readDouble()) : null);
        }

        @Override // android.os.Parcelable.Creator
        public BusinessAddressInput[] newArray(int i) {
            return new BusinessAddressInput[i];
        }
    }

    public BusinessAddressInput(String str, String str2, String str3, String str4, Double d, Double d2) {
        C22128a.m8703I0(str, "street", str3, "city", str4, "countryCode");
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

    public final Double getLatitude() {
        return this.latitude;
    }

    public final Double getLongitude() {
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
        Double d = this.latitude;
        if (d != null) {
            parcel.writeInt(1);
            parcel.writeDouble(d.doubleValue());
        } else {
            parcel.writeInt(0);
        }
        Double d2 = this.longitude;
        if (d2 == null) {
            parcel.writeInt(0);
            return;
        }
        parcel.writeInt(1);
        parcel.writeDouble(d2.doubleValue());
    }
}

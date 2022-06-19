package com.truecaller.data.entity;

import android.os.Parcel;
import android.os.Parcelable;
import android.text.TextUtils;
import androidx.annotation.Keep;
import com.tenor.android.core.constant.StringConstant;
import com.truecaller.common.network.country.CountryListDto;
import com.truecaller.data.dto.ContactDto;
import java.util.Comparator;
import p193e.p194a.p1129p5.C19231g0;
import p193e.p194a.p372b0.p430q.C8588j;
import p193e.p194a.p997k3.p1000l.AbstractC16497e;
import w3.c.a.a.a.h;
import w3.c.a.a.a.k.a;
@Keep
/* loaded from: classes8-dex2jar.jar:com/truecaller/data/entity/Address.class */
public class Address extends RowEntity<ContactDto.Contact.Address> implements AbstractC16497e {
    public static final Comparator<Address> PRESENTATION_COMPARATOR = new C3816a();
    public static final Parcelable.Creator<Address> CREATOR = new C3817b();

    /* renamed from: com.truecaller.data.entity.Address$a */
    /* loaded from: classes8-dex2jar.jar:com/truecaller/data/entity/Address$a.class */
    public class C3816a implements Comparator<Address> {
        @Override // java.util.Comparator
        public int compare(Address address, Address address2) {
            Address address3 = address;
            Address address4 = address2;
            int i = 0;
            if (address3 != address4) {
                i = Entity.presentationCompare(address3.getStreet(), address4.getStreet(), address3.getCity(), address4.getCity(), address3.getArea(), address4.getArea(), address3.getZipCode(), address4.getZipCode(), address3.getCountryCode(), address4.getCountryCode(), address3.getTimeZone(), address4.getTimeZone());
            }
            return i;
        }
    }

    /* renamed from: com.truecaller.data.entity.Address$b */
    /* loaded from: classes8-dex2jar.jar:com/truecaller/data/entity/Address$b.class */
    public class C3817b implements Parcelable.Creator<Address> {
        @Override // android.os.Parcelable.Creator
        public Address createFromParcel(Parcel parcel) {
            return new Address(parcel);
        }

        @Override // android.os.Parcelable.Creator
        public Address[] newArray(int i) {
            return new Address[i];
        }
    }

    public Address() {
        this(new ContactDto.Contact.Address());
    }

    public Address(Parcel parcel) {
        super(parcel);
    }

    public Address(ContactDto.Contact.Address address) {
        super(address);
    }

    public Address(Address address) {
        this(new ContactDto.Contact.Address(address.row()));
    }

    private String formatAddress() {
        String countryCode = getCountryCode();
        return C19231g0.m13813D(", ", getStreet(), C19231g0.m13813D(StringConstant.SPACE, getZipCode(), (countryCode == null || !countryCode.equalsIgnoreCase("US")) ? getCityOrArea() : C19231g0.m13813D(", ", getCity(), getArea())), getCountryName());
    }

    private String mergeStr(String str) {
        return TextUtils.isEmpty(str) ? "" : str.trim().toLowerCase();
    }

    public String getArea() {
        return ((ContactDto.Contact.Address) this.mRow).area;
    }

    public String getCity() {
        return ((ContactDto.Contact.Address) this.mRow).city;
    }

    public String getCityOrArea() {
        return TextUtils.isEmpty(getCity()) ? getArea() : getCity();
    }

    public String getCountryCode() {
        return ((ContactDto.Contact.Address) this.mRow).countryCode;
    }

    public String getCountryName() {
        String countryCode = getCountryCode();
        CountryListDto.C3679a m28286c = C8588j.m28286c(countryCode == null ? null : countryCode.toLowerCase());
        return m28286c == null ? "" : C19231g0.m13808I(m28286c.f10911b);
    }

    public String getDisplayableAddress() {
        return isSplit() ? formatAddress() : C19231g0.m13813D(", ", getStreet(), getCountryName());
    }

    public String getShortDisplayableAddress() {
        return C19231g0.m13813D(", ", getCityOrArea(), getCountryName());
    }

    public String getStreet() {
        return ((ContactDto.Contact.Address) this.mRow).street;
    }

    public String getTimeZone() {
        return ((ContactDto.Contact.Address) this.mRow).timeZone;
    }

    public int getType() {
        return a.g(((ContactDto.Contact.Address) this.mRow).type);
    }

    public String getTypeLabel() {
        return null;
    }

    public String getZipCode() {
        return ((ContactDto.Contact.Address) this.mRow).zipCode;
    }

    public boolean isSplit() {
        return !TextUtils.isEmpty(getZipCode()) || !TextUtils.isEmpty(getCity()) || !TextUtils.isEmpty(getArea());
    }

    @Override // p193e.p194a.p997k3.p1000l.AbstractC16497e
    public boolean mergeEquals(AbstractC16497e abstractC16497e) {
        boolean z = true;
        if (this == abstractC16497e) {
            return true;
        }
        if (!(abstractC16497e instanceof Address)) {
            return false;
        }
        Address address = (Address) abstractC16497e;
        if (!h.f(getCountryCode(), address.getCountryCode())) {
            return false;
        }
        String mergeStr = mergeStr(getCity());
        String mergeStr2 = mergeStr(getStreet());
        String mergeStr3 = mergeStr(getZipCode());
        String mergeStr4 = mergeStr(getArea());
        String mergeStr5 = mergeStr(address.getCity());
        String mergeStr6 = mergeStr(address.getStreet());
        String mergeStr7 = mergeStr(address.getZipCode());
        String mergeStr8 = mergeStr(address.getArea());
        if (!isSplit()) {
            return address.isSplit() ? mergeStr2.contains(mergeStr6) : mergeStr2.equals(mergeStr6);
        } else if (!address.isSplit()) {
            return mergeStr6.contains(mergeStr2);
        } else {
            if (!mergeStr.equals(mergeStr5) || !mergeStr2.equals(mergeStr6) || !mergeStr3.equals(mergeStr7) || !mergeStr4.equals(mergeStr8)) {
                z = false;
            }
            return z;
        }
    }

    public void setArea(String str) {
        ((ContactDto.Contact.Address) this.mRow).area = str;
    }

    public void setCity(String str) {
        ((ContactDto.Contact.Address) this.mRow).city = str;
    }

    public void setCountryCode(String str) {
        ((ContactDto.Contact.Address) this.mRow).countryCode = str;
    }

    public void setStreet(String str) {
        ((ContactDto.Contact.Address) this.mRow).street = str;
    }

    public void setTimeZone(String str) {
        ((ContactDto.Contact.Address) this.mRow).timeZone = str;
    }

    public void setType(int i) {
        ((ContactDto.Contact.Address) this.mRow).type = String.valueOf(i);
    }

    public void setTypeLabel(String str) {
    }

    public void setZipCode(String str) {
        ((ContactDto.Contact.Address) this.mRow).zipCode = str;
    }
}

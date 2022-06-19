package com.telguarder.features.numberLookup;

import android.text.TextUtils;
import androidx.webkit.ProxyConfig;
import com.telguarder.features.rateAndFeedback.Reportable;
import com.telguarder.features.sharing.Shareable;
import com.telguarder.helpers.log.Logger;
import java.io.Serializable;
import java.net.MalformedURLException;
import java.net.URL;
import java.util.ArrayList;
import java.util.List;
/* loaded from: classes2-dex2jar.jar:com/telguarder/features/numberLookup/Result.class */
public abstract class Result implements Reportable, Shareable, Serializable {
    public Address address;
    public String birthDate;
    public Coordinates coordinates;
    public String email;
    public String firstName;

    /* renamed from: id */
    public String f1287id;
    public String lastName;
    public String logoUrl;
    public String middleName;
    public PhoneNumber mobileNumbers;
    public String name;
    public PhoneNumber phoneNumbers;
    public String regionCode;
    public String spamInfoPageUrl;
    public ActorType type;
    public Address visitingAddress;
    public String webUrl;
    public String webUrlText;

    private String getPhoneNumbersForSharing() {
        PhoneNumber phoneNumber = this.phoneNumbers;
        String str = "";
        if (phoneNumber != null) {
            str = "";
            if (!phoneNumber.asList().isEmpty()) {
                str = "" + this.phoneNumbers.getForSharing();
            }
        }
        PhoneNumber phoneNumber2 = this.mobileNumbers;
        String str2 = str;
        if (phoneNumber2 != null) {
            str2 = str;
            if (!phoneNumber2.asList().isEmpty()) {
                String str3 = str;
                if (TextUtils.isEmpty(str)) {
                    str3 = str + ", ";
                }
                str2 = str3 + this.mobileNumbers.getForSharing();
            }
        }
        return str2;
    }

    public String geAddressForMapLocation() {
        Address address;
        Address address2 = this.visitingAddress;
        if (address2 == null || ((TextUtils.isEmpty(address2.place) && TextUtils.isEmpty(this.visitingAddress.zip)) || TextUtils.isEmpty(this.visitingAddress.street))) {
            Address address3 = this.address;
            address = (address3 == null || (TextUtils.isEmpty(address3.place) && TextUtils.isEmpty(this.address.zip)) || TextUtils.isEmpty(this.address.street)) ? null : this.address;
        } else {
            address = this.visitingAddress;
        }
        if (address != null) {
            StringBuilder sb = new StringBuilder();
            sb.append(address.street);
            sb.append(", ");
            sb.append(!TextUtils.isEmpty(address.zip) ? address.zip : "");
            sb.append(" ");
            String str = "";
            if (!TextUtils.isEmpty(address.place)) {
                str = address.place;
            }
            sb.append(str);
            sb.append(this.regionCode);
            return sb.toString();
        }
        return null;
    }

    public ActorType getActorType() {
        return this.type;
    }

    public List<String> getAllPhoneNumberList() {
        ArrayList arrayList = new ArrayList();
        PhoneNumber phoneNumber = this.phoneNumbers;
        if (phoneNumber != null) {
            arrayList.addAll(phoneNumber.asList());
        }
        PhoneNumber phoneNumber2 = this.mobileNumbers;
        if (phoneNumber2 != null) {
            arrayList.addAll(phoneNumber2.asList());
        }
        return arrayList;
    }

    @Override // com.telguarder.features.rateAndFeedback.Reportable
    public List<String> getAllReportablePhoneNumbers() {
        return getAllPhoneNumberList();
    }

    public Address getAnyAddress() {
        Address address = this.visitingAddress;
        if (address != null) {
            return address;
        }
        Address address2 = this.address;
        if (address2 == null) {
            return null;
        }
        return address2;
    }

    public String getAnyMobileNumber() {
        PhoneNumber phoneNumber = this.mobileNumbers;
        if (phoneNumber == null || TextUtils.isEmpty(phoneNumber.primary)) {
            PhoneNumber phoneNumber2 = this.mobileNumbers;
            if (phoneNumber2 != null && !TextUtils.isEmpty(phoneNumber2.secondary)) {
                return this.mobileNumbers.secondary;
            }
            return null;
        }
        return this.mobileNumbers.primary;
    }

    public String getAnyPhoneNumber() {
        if (!TextUtils.isEmpty(getPrimaryPhoneNumber())) {
            return getPrimaryPhoneNumber();
        }
        PhoneNumber phoneNumber = this.phoneNumbers;
        if (phoneNumber != null && !TextUtils.isEmpty(phoneNumber.secondary)) {
            return this.phoneNumbers.secondary;
        }
        PhoneNumber phoneNumber2 = this.mobileNumbers;
        if (phoneNumber2 != null && !TextUtils.isEmpty(phoneNumber2.secondary)) {
            return this.mobileNumbers.secondary;
        }
        return null;
    }

    public String getFormattedName() {
        String str = "";
        if (this.type == ActorType.PERSON) {
            String str2 = str;
            if (!TextUtils.isEmpty(this.firstName)) {
                str2 = "" + this.firstName.trim();
            }
            str = str2;
            if (!TextUtils.isEmpty(this.lastName)) {
                str = str2 + " " + this.lastName.trim();
            }
        } else if (!TextUtils.isEmpty(this.name)) {
            str = this.name.trim();
        }
        return str.trim();
    }

    public String getPrimaryPhoneNumber() {
        PhoneNumber phoneNumber = this.phoneNumbers;
        if (phoneNumber == null || TextUtils.isEmpty(phoneNumber.primary)) {
            PhoneNumber phoneNumber2 = this.mobileNumbers;
            if (phoneNumber2 != null && !TextUtils.isEmpty(phoneNumber2.primary)) {
                return this.mobileNumbers.primary;
            }
            return null;
        }
        return this.phoneNumbers.primary;
    }

    @Override // com.telguarder.features.rateAndFeedback.Reportable
    public String getReportableAddress() {
        Address anyAddress = getAnyAddress();
        return anyAddress == null ? "" : anyAddress.asTwoLines();
    }

    @Override // com.telguarder.features.rateAndFeedback.Reportable
    public String getReportableName() {
        return null;
    }

    @Override // com.telguarder.features.rateAndFeedback.Reportable
    public String getReportablePhoneNumber() {
        return getAnyPhoneNumber();
    }

    @Override // com.telguarder.features.rateAndFeedback.Reportable
    public String getReportableWebUrl() {
        return this.webUrl;
    }

    @Override // com.telguarder.features.sharing.Shareable
    public String getShareableAddress() {
        return this.address.singleLine();
    }

    @Override // com.telguarder.features.sharing.Shareable
    public String getShareableCompanyName() {
        return "";
    }

    @Override // com.telguarder.features.sharing.Shareable
    public String getShareableEmailAddress() {
        return this.email;
    }

    @Override // com.telguarder.features.sharing.Shareable
    public String getShareableName() {
        return getFormattedName();
    }

    @Override // com.telguarder.features.sharing.Shareable
    public String getShareablePhoneNumber() {
        return getAnyPhoneNumber();
    }

    @Override // com.telguarder.features.sharing.Shareable
    public String getShareableRole() {
        return "";
    }

    @Override // com.telguarder.features.sharing.Shareable
    public String getShareableText() {
        String str = ("" + getFormattedName()) + "\n";
        String str2 = str;
        if (getAnyAddress() != null) {
            str2 = (str + getAnyAddress().singleLine()) + "\n";
        }
        String phoneNumbersForSharing = getPhoneNumbersForSharing();
        String str3 = str2;
        if (!TextUtils.isEmpty(phoneNumbersForSharing)) {
            str3 = str2 + phoneNumbersForSharing;
        }
        return str3;
    }

    @Override // com.telguarder.features.sharing.Shareable
    public String getShareableWebsite() {
        return this.webUrl;
    }

    public String getWebUrlTextForDisplaying() {
        URL url;
        if (TextUtils.isEmpty(this.webUrlText)) {
            try {
                if (!this.webUrl.contains(ProxyConfig.MATCH_HTTP)) {
                    url = new URL("http://" + this.webUrl);
                } else {
                    url = new URL(this.webUrl);
                }
                return url.getHost();
            } catch (MalformedURLException e) {
                Logger.error(e.getMessage());
                return this.webUrl;
            }
        }
        return this.webUrlText;
    }

    public boolean hasAnyMobileNumber() {
        return !TextUtils.isEmpty(getAnyMobileNumber());
    }

    public boolean hasAnyPhoneNumber() {
        return !TextUtils.isEmpty(getAnyPhoneNumber());
    }

    public boolean hasEmailAddress() {
        return !TextUtils.isEmpty(this.email);
    }

    public boolean hasValidAddressForMapLocation() {
        Address address;
        Address address2 = this.visitingAddress;
        return (address2 != null && ((!TextUtils.isEmpty(address2.place) || !TextUtils.isEmpty(this.visitingAddress.zip)) && !TextUtils.isEmpty(this.visitingAddress.street))) || ((address = this.address) != null && ((!TextUtils.isEmpty(address.place) || !TextUtils.isEmpty(this.address.zip)) && !TextUtils.isEmpty(this.address.street)));
    }
}

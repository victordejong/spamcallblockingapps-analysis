package com.callapp.contacts.model.contact;

import com.callapp.common.model.json.JSONAddress;
import com.callapp.common.model.json.JSONCHLocalOpeningHours;
import com.callapp.common.model.json.JSONCHLocalOpeningHoursRows;
import com.callapp.common.model.json.JSONCHLocalPhone;
import com.callapp.common.model.json.JSONCategory;
import com.callapp.common.model.json.JSONEmail;
import com.callapp.common.model.json.JSONOpeningHours;
import com.callapp.common.model.json.JSONPhoneNumber;
import com.callapp.common.model.json.JSONSocialNetworkID;
import com.callapp.common.model.json.JSONWebsite;
import com.callapp.common.model.json.PhoneFieldType;
import com.callapp.framework.phone.PhoneType;
import com.callapp.framework.util.CollectionUtils;
import com.callapp.framework.util.StringUtils;
import com.sinch.verification.core.verification.VerificationLanguage;
import java.util.ArrayList;
import java.util.Collection;
import java.util.HashSet;
import java.util.List;
import java.util.Objects;
/* loaded from: classes2-dex2jar.jar:com/callapp/contacts/model/contact/CHLocalData.class */
public class CHLocalData extends ExternalSourceData {
    private static final long serialVersionUID = -7771691238143046616L;
    private final List<JSONAddress> addresses;
    private final List<JSONCategory> categories;
    private final String description;
    private final Collection<JSONEmail> emails;
    private final List<String> imagesUrl;
    private final boolean isBusiness;
    private final double lat;
    private final double lng;
    private final String logoImageUrl;
    private final JSONOpeningHours openingHours;
    private final Collection<JSONPhoneNumber> phones;
    private final String photoUrl;
    private final String url;
    private final JSONSocialNetworkID venueFoursquareID;
    private final List<VideoData> videos;
    private final Collection<JSONWebsite> websites;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes2-dex2jar.jar:com/callapp/contacts/model/contact/CHLocalData$ContactFields.class */
    public class ContactFields {
        private final Collection<JSONEmail> emailList;
        private final Collection<JSONPhoneNumber> phonesList;
        private final Collection<JSONWebsite> websiteList;

        private ContactFields(Collection<JSONPhoneNumber> collection, Collection<JSONEmail> collection2, Collection<JSONWebsite> collection3) {
            this.phonesList = collection;
            this.emailList = collection2;
            this.websiteList = collection3;
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:42:0x021c  */
    /* JADX WARN: Removed duplicated region for block: B:48:0x026a  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public CHLocalData(com.callapp.common.model.json.JSONCHLocalResult r9, com.callapp.framework.phone.Phone r10) {
        /*
            Method dump skipped, instructions count: 1144
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.callapp.contacts.model.contact.CHLocalData.<init>(com.callapp.common.model.json.JSONCHLocalResult, com.callapp.framework.phone.Phone):void");
    }

    private ContactFields getContactFields(List<JSONCHLocalPhone> list, boolean z) {
        JSONPhoneNumber fromRawPhoneNumByRegion;
        if (CollectionUtils.a(list)) {
            return new ContactFields(null, null, null);
        }
        HashSet hashSet = new HashSet();
        HashSet hashSet2 = new HashSet();
        HashSet hashSet3 = new HashSet();
        for (JSONCHLocalPhone jSONCHLocalPhone : list) {
            if (jSONCHLocalPhone.isEmailType()) {
                hashSet2.add(new JSONEmail(jSONCHLocalPhone.getContact_value(), 3));
            } else if (jSONCHLocalPhone.isWebsiteType()) {
                hashSet3.add(new JSONWebsite(jSONCHLocalPhone.getContact_value(), 1));
            } else {
                Integer phoneType = getPhoneType(jSONCHLocalPhone, z);
                if (!(phoneType == null || (fromRawPhoneNumByRegion = JSONPhoneNumber.fromRawPhoneNumByRegion(jSONCHLocalPhone.getContact_value(), phoneType.intValue(), "CH")) == null)) {
                    hashSet.add(fromRawPhoneNumByRegion);
                }
            }
        }
        HashSet hashSet4 = CollectionUtils.a(hashSet) ? null : hashSet;
        if (CollectionUtils.a(hashSet2)) {
            hashSet2 = null;
        }
        if (CollectionUtils.a(hashSet3)) {
            hashSet3 = null;
        }
        return new ContactFields(hashSet4, hashSet2, hashSet3);
    }

    private JSONOpeningHours getOpeningHours(JSONCHLocalOpeningHours jSONCHLocalOpeningHours) {
        if (jSONCHLocalOpeningHours == null || CollectionUtils.a(jSONCHLocalOpeningHours.getRows())) {
            return null;
        }
        JSONOpeningHours jSONOpeningHours = new JSONOpeningHours();
        for (JSONCHLocalOpeningHoursRows jSONCHLocalOpeningHoursRows : jSONCHLocalOpeningHours.getRows()) {
            if (jSONCHLocalOpeningHoursRows.isDayOfWeek() && StringUtils.b((CharSequence) jSONCHLocalOpeningHoursRows.getStart()) && StringUtils.b((CharSequence) jSONCHLocalOpeningHoursRows.getEnd())) {
                Collection<String> hoursPerDay = jSONOpeningHours.getHoursPerDay(jSONCHLocalOpeningHoursRows.getIndex() + 1);
                Collection<String> collection = hoursPerDay;
                if (hoursPerDay == null) {
                    collection = new ArrayList<>();
                }
                collection.add(jSONCHLocalOpeningHoursRows.getStart() + VerificationLanguage.REGION_PREFIX + jSONCHLocalOpeningHoursRows.getEnd());
                jSONOpeningHours.setHoursPerDay(jSONCHLocalOpeningHoursRows.getIndex() + 1, collection);
            }
        }
        if (jSONOpeningHours.isEmpty()) {
            return null;
        }
        return jSONOpeningHours;
    }

    public static Integer getPhoneType(PhoneFieldType phoneFieldType, boolean z) {
        Integer num;
        if (phoneFieldType.isPhoneType()) {
            num = Integer.valueOf((z ? PhoneType.WORK : PhoneType.OTHER).code);
        } else if (phoneFieldType.isFaxType()) {
            num = Integer.valueOf((z ? PhoneType.FAX_WORK : PhoneType.FAX_HOME).code);
        } else {
            num = phoneFieldType.isMobileType() ? Integer.valueOf(PhoneType.MOBILE.code) : null;
        }
        return num;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || getClass() != obj.getClass()) {
            return false;
        }
        CHLocalData cHLocalData = (CHLocalData) obj;
        if (this.isBusiness == cHLocalData.isBusiness && Double.compare(cHLocalData.lat, this.lat) == 0 && Double.compare(cHLocalData.lng, this.lng) == 0 && Objects.equals(this.logoImageUrl, cHLocalData.logoImageUrl) && Objects.equals(this.imagesUrl, cHLocalData.imagesUrl) && Objects.equals(this.photoUrl, cHLocalData.photoUrl) && Objects.equals(this.venueFoursquareID, cHLocalData.venueFoursquareID) && Objects.equals(this.videos, cHLocalData.videos) && Objects.equals(this.addresses, cHLocalData.addresses) && Objects.equals(this.phones, cHLocalData.phones) && Objects.equals(this.emails, cHLocalData.emails) && Objects.equals(this.websites, cHLocalData.websites) && Objects.equals(this.categories, cHLocalData.categories) && Objects.equals(this.openingHours, cHLocalData.openingHours) && Objects.equals(this.description, cHLocalData.description)) {
            return Objects.equals(this.url, cHLocalData.url);
        }
        return false;
    }

    public List<JSONAddress> getAddresses() {
        return this.addresses;
    }

    public List<JSONCategory> getCategories() {
        return this.categories;
    }

    public String getDescription() {
        return this.description;
    }

    public Collection<JSONEmail> getEmails() {
        return this.emails;
    }

    public int getImagesCount() {
        return this.imagesUrl.size();
    }

    public String getImagesUrl(int i) {
        List<String> list = this.imagesUrl;
        if (list == null || i >= list.size()) {
            return null;
        }
        return this.imagesUrl.get(i);
    }

    public double getLat() {
        return this.lat;
    }

    public double getLng() {
        return this.lng;
    }

    public JSONOpeningHours getOpeningHours() {
        return this.openingHours;
    }

    public Collection<JSONPhoneNumber> getPhones() {
        return this.phones;
    }

    public String getPhotoUrl() {
        return this.photoUrl;
    }

    public String getUrl() {
        return this.url;
    }

    public JSONSocialNetworkID getVenueFoursquareID() {
        return this.venueFoursquareID;
    }

    public List<VideoData> getVideos() {
        return this.videos;
    }

    public Collection<JSONWebsite> getWebsites() {
        return this.websites;
    }

    public int hashCode() {
        String str = this.logoImageUrl;
        int i = 0;
        int hashCode = str != null ? str.hashCode() : 0;
        List<String> list = this.imagesUrl;
        int hashCode2 = list != null ? list.hashCode() : 0;
        boolean z = this.isBusiness;
        String str2 = this.photoUrl;
        int hashCode3 = str2 != null ? str2.hashCode() : 0;
        JSONSocialNetworkID jSONSocialNetworkID = this.venueFoursquareID;
        int hashCode4 = jSONSocialNetworkID != null ? jSONSocialNetworkID.hashCode() : 0;
        List<VideoData> list2 = this.videos;
        int hashCode5 = list2 != null ? list2.hashCode() : 0;
        List<JSONAddress> list3 = this.addresses;
        int hashCode6 = list3 != null ? list3.hashCode() : 0;
        long doubleToLongBits = Double.doubleToLongBits(this.lat);
        int i2 = (int) (doubleToLongBits ^ (doubleToLongBits >>> 32));
        long doubleToLongBits2 = Double.doubleToLongBits(this.lng);
        int i3 = (int) (doubleToLongBits2 ^ (doubleToLongBits2 >>> 32));
        Collection<JSONPhoneNumber> collection = this.phones;
        int hashCode7 = collection != null ? collection.hashCode() : 0;
        Collection<JSONEmail> collection2 = this.emails;
        int hashCode8 = collection2 != null ? collection2.hashCode() : 0;
        Collection<JSONWebsite> collection3 = this.websites;
        int hashCode9 = collection3 != null ? collection3.hashCode() : 0;
        List<JSONCategory> list4 = this.categories;
        int hashCode10 = list4 != null ? list4.hashCode() : 0;
        JSONOpeningHours jSONOpeningHours = this.openingHours;
        int hashCode11 = jSONOpeningHours != null ? jSONOpeningHours.hashCode() : 0;
        String str3 = this.description;
        int hashCode12 = str3 != null ? str3.hashCode() : 0;
        String str4 = this.url;
        if (str4 != null) {
            i = str4.hashCode();
        }
        return (((((((((((((((((((((((((((((hashCode * 31) + hashCode2) * 31) + (z ? 1 : 0)) * 31) + hashCode3) * 31) + hashCode4) * 31) + hashCode5) * 31) + hashCode6) * 31) + i2) * 31) + i3) * 31) + hashCode7) * 31) + hashCode8) * 31) + hashCode9) * 31) + hashCode10) * 31) + hashCode11) * 31) + hashCode12) * 31) + i;
    }

    public boolean isBusiness() {
        return this.isBusiness;
    }
}

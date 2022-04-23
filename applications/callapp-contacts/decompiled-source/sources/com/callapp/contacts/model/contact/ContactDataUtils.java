package com.callapp.contacts.model.contact;

import android.provider.ContactsContract;
import com.callapp.common.api.ApiConstants;
import com.callapp.common.model.json.JSONEmail;
import com.callapp.common.model.json.JSONSocialNetworkID;
import com.callapp.common.util.Joiner;
import com.callapp.common.util.Objects;
import com.callapp.contacts.api.helper.google.GoogleHelper;
import com.callapp.contacts.framework.dao.ContentQuery;
import com.callapp.contacts.framework.dao.RowContext;
import com.callapp.contacts.framework.dao.RowVisitor;
import com.callapp.contacts.framework.dao.column.Column;
import com.callapp.contacts.framework.dao.column.StringColumn;
import com.callapp.contacts.framework.util.MultiTaskRunner;
import com.callapp.contacts.loader.api.LoadContext;
import com.callapp.contacts.loader.device.DeviceIdLoader;
import com.callapp.contacts.manager.contacts.ContactUtils;
import com.callapp.contacts.manager.task.Task;
import com.callapp.contacts.model.Constants;
import com.callapp.contacts.model.contact.social.SocialData;
import com.callapp.framework.phone.Phone;
import com.callapp.framework.phone.PhoneNumberUtils;
import com.callapp.framework.phone.PhoneType;
import com.callapp.framework.util.CollectionUtils;
import com.callapp.framework.util.StringUtils;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Collections;
import java.util.Comparator;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Set;
/* loaded from: classes2-dex2jar.jar:com/callapp/contacts/model/contact/ContactDataUtils.class */
public class ContactDataUtils {

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes2-dex2jar.jar:com/callapp/contacts/model/contact/ContactDataUtils$PhoneDetails.class */
    public static class PhoneDetails {
        public final Long deviceId;
        public final String displayName;
        public final Boolean isStarred;

        private PhoneDetails(Long l, String str, Boolean bool) {
            this.deviceId = l;
            this.displayName = str;
            this.isStarred = bool;
        }
    }

    private static void findExactContactId(ContactData contactData) {
        final StringColumn stringColumn = new StringColumn("data1");
        StringColumn stringColumn2 = new StringColumn(PhoneNumberUtils.e("data1"));
        ArrayList arrayList = new ArrayList(contactData.getPhones().size());
        final HashMap hashMap = new HashMap();
        for (Phone phone : contactData.getPhones()) {
            arrayList.add(PhoneNumberUtils.d(phone.getRawNumber()));
        }
        new ContentQuery(ContactsContract.CommonDataKinds.Phone.CONTENT_URI).a(stringColumn2, arrayList).b(stringColumn, "!=", (String) null).b(stringColumn, "!=", "").a(Constants.CONTACT_ID_COLUMN).a(stringColumn).a(Constants.STARRED_COLUMN).a(Constants.DISPLAY_NAME_COLUMN).b("display_name_source", "!=", "20").a(new RowVisitor() { // from class: com.callapp.contacts.model.contact.ContactDataUtils.8
            @Override // com.callapp.contacts.framework.dao.RowVisitor
            public final void onRow(RowContext rowContext) {
                Long l = (Long) rowContext.a(Constants.CONTACT_ID_COLUMN);
                String str = (String) rowContext.a(StringColumn.this);
                Boolean bool = (Boolean) rowContext.a(Constants.STARRED_COLUMN);
                String str2 = (String) rowContext.a(Constants.DISPLAY_NAME_COLUMN);
                if (l != null && l.longValue() != 0 && StringUtils.b((CharSequence) str)) {
                    Set set = (Set) hashMap.get(l);
                    Set set2 = set;
                    if (set == null) {
                        set2 = new HashSet();
                        hashMap.put(new PhoneDetails(l, str2, bool), set2);
                    }
                    set2.add(str);
                }
            }
        });
        long j = 0;
        boolean z = false;
        String str = null;
        int i = 0;
        for (Map.Entry entry : hashMap.entrySet()) {
            Set set = (Set) entry.getValue();
            if (set.size() >= i) {
                i = set.size();
                PhoneDetails phoneDetails = (PhoneDetails) entry.getKey();
                j = phoneDetails.deviceId.longValue();
                z = phoneDetails.isStarred.booleanValue();
                str = phoneDetails.displayName;
            }
        }
        contactData.setDeviceId(j);
        contactData.assertDeviceDataExist();
        contactData.getDeviceData().setFavorite(Boolean.valueOf(z));
        contactData.fireChange(ContactField.favorite);
        if (StringUtils.b((CharSequence) str)) {
            contactData.getDeviceData().setFullName(str);
            contactData.fireChange(ContactField.fullName);
        }
        DeviceIdLoader.a();
    }

    public static String getContactPhotoUrlOnSocial(ContactData contactData, int i, boolean z) {
        if (i == 1) {
            return getSocialPhotoUrlSafe(contactData.getFacebookData());
        }
        if (i == 7) {
            return getSocialPhotoUrlSafe(contactData.getInstagramData());
        }
        if (i == 4) {
            return getSocialPhotoUrlSafe(contactData.getTwitterData());
        }
        if (i == 5) {
            String socialPhotoUrlSafe = getSocialPhotoUrlSafe(contactData.getGooglePlacesData());
            if (StringUtils.b((CharSequence) socialPhotoUrlSafe)) {
                return socialPhotoUrlSafe;
            }
            if (z) {
                return GoogleHelper.get().getProfileImageUrl();
            }
            return null;
        } else if (i == 9) {
            return getSocialPhotoUrlSafe(contactData.getPinterestData());
        } else {
            if (i != 10) {
                return null;
            }
            return getSocialPhotoUrlSafe(contactData.getVKData());
        }
    }

    public static String getEmailListString(Collection<JSONEmail> collection, String str) {
        String str2;
        if (CollectionUtils.b(collection)) {
            ArrayList arrayList = new ArrayList(collection.size());
            for (JSONEmail jSONEmail : collection) {
                String str3 = "";
                if (!(jSONEmail == null || jSONEmail.getEmail() == null)) {
                    str3 = jSONEmail.getEmail();
                }
                arrayList.add(str3);
            }
            str2 = Joiner.a(str).a(arrayList);
        } else {
            str2 = null;
        }
        return str2;
    }

    public static String getPhoneListString(List<Phone> list, String str) {
        ArrayList arrayList = new ArrayList(list.size());
        Iterator<Phone> it2 = list.iterator();
        while (it2.hasNext()) {
            Phone next = it2.next();
            arrayList.add(next == null ? "" : next.a());
        }
        return Joiner.a(str).a(arrayList);
    }

    public static List<Phone> getPrioritizedPhoneList(List<Phone> list) {
        ArrayList arrayList;
        if (CollectionUtils.b(list)) {
            arrayList = new ArrayList(list);
            final Phone phone = arrayList.get(0);
            Collections.sort(arrayList, new Comparator<Phone>() { // from class: com.callapp.contacts.model.contact.ContactDataUtils.7
                public final int compare(Phone phone2, Phone phone3) {
                    if (phone2 == phone3) {
                        return 0;
                    }
                    Phone phone4 = Phone.this;
                    if (phone2 == phone4) {
                        return -1;
                    }
                    if (phone3 == phone4) {
                        return 1;
                    }
                    PhoneType type = phone2.getType();
                    PhoneType type2 = phone3.getType();
                    if (type == type2) {
                        return 0;
                    }
                    if (type == PhoneType.MOBILE) {
                        return -1;
                    }
                    if (type2 == PhoneType.MOBILE) {
                        return 1;
                    }
                    return type.code - type2.code;
                }
            });
        } else {
            arrayList = null;
        }
        return arrayList;
    }

    public static SocialData getSocialData(ContactData contactData, int i) {
        return i != 1 ? i != 4 ? i != 6 ? i != 7 ? i != 9 ? i != 10 ? null : contactData.getVKData() : contactData.getPinterestData() : contactData.getInstagramData() : contactData.getFoursquareData() : contactData.getTwitterData() : contactData.getFacebookData();
    }

    public static JSONSocialNetworkID getSocialNetworkID(ContactData contactData, int i) {
        if (i == 1) {
            return contactData.getFacebookId();
        }
        if (i == 4) {
            return contactData.getTwitterScreenName();
        }
        if (i == 6) {
            return contactData.getFoursquareId();
        }
        if (i == 7) {
            return contactData.getInstagramId();
        }
        switch (i) {
            case 9:
                return contactData.getPinterestId();
            case 10:
                return contactData.getVKId();
            case 11:
                return contactData.getVenueFoursquareId();
            default:
                return null;
        }
    }

    private static String getSocialPhotoUrlSafe(PlaceData placeData) {
        if (placeData != null) {
            return placeData.getPhotoUrl();
        }
        return null;
    }

    private static String getSocialPhotoUrlSafe(SocialData socialData) {
        if (socialData != null) {
            return socialData.getPhotoUrl();
        }
        return null;
    }

    public static int hasAnySocialId(ContactData contactData) {
        for (Integer num : ApiConstants.f10379c) {
            int intValue = num.intValue();
            if (getSocialNetworkID(contactData, intValue) != null) {
                return intValue;
            }
        }
        return -1;
    }

    public static void setIsFavorite(ContactData contactData, boolean z) {
        if (contactData != null) {
            ContactUtils.a(contactData.getDeviceId(), z);
            updateFavorite(contactData, z);
        }
    }

    public static void setLoadInternals(ContactData contactData, boolean z, Set<ContactField> set) {
        contactData.onlySure = z;
        contactData.loadedFields = set;
    }

    public static void updateAllSocialIdsFromFields(final ContactData contactData, Set<ContactField> set, LoadContext loadContext, boolean z) {
        MultiTaskRunner b2 = loadContext.b();
        if (set.contains(ContactField.facebookId)) {
            b2.a(new Task() { // from class: com.callapp.contacts.model.contact.ContactDataUtils.1
                @Override // com.callapp.contacts.manager.task.Task
                public final void doTask() {
                    ContactData.this.updateFacebookId();
                }
            });
        }
        if (set.contains(ContactField.twitterScreenName)) {
            b2.a(new Task() { // from class: com.callapp.contacts.model.contact.ContactDataUtils.2
                @Override // com.callapp.contacts.manager.task.Task
                public final void doTask() {
                    ContactData.this.updateTwitterScreenName();
                }
            });
        }
        if (set.contains(ContactField.foursquareId)) {
            b2.a(new Task() { // from class: com.callapp.contacts.model.contact.ContactDataUtils.3
                @Override // com.callapp.contacts.manager.task.Task
                public final void doTask() {
                    ContactData.this.updateFoursquareId();
                }
            });
        }
        if (set.contains(ContactField.instagramId)) {
            b2.a(new Task() { // from class: com.callapp.contacts.model.contact.ContactDataUtils.4
                @Override // com.callapp.contacts.manager.task.Task
                public final void doTask() {
                    ContactData.this.updateInstagramId();
                }
            });
        }
        if (set.contains(ContactField.pinterestId)) {
            b2.a(new Task() { // from class: com.callapp.contacts.model.contact.ContactDataUtils.5
                @Override // com.callapp.contacts.manager.task.Task
                public final void doTask() {
                    ContactData.this.updatePinterestId();
                }
            });
        }
        if (set.contains(ContactField.vkId)) {
            b2.a(new Task() { // from class: com.callapp.contacts.model.contact.ContactDataUtils.6
                @Override // com.callapp.contacts.manager.task.Task
                public final void doTask() {
                    ContactData.this.updateVKId();
                }
            });
        }
        loadContext.a(b2, z);
    }

    private static void updateFavorite(ContactData contactData, boolean z) {
        contactData.assertDeviceDataExist();
        if (!Objects.a(contactData.getDeviceData().isFavorite(), Boolean.valueOf(z))) {
            contactData.getDeviceData().setFavorite(Boolean.valueOf(z));
            contactData.fireChange(ContactField.favorite);
        }
    }

    public static void updateSocialNetwork(ContactData contactData, int i, JSONSocialNetworkID jSONSocialNetworkID) {
        if (contactData.getDeviceData() == null) {
            return;
        }
        if (i == 1) {
            contactData.getDeviceData().setFacebookId(jSONSocialNetworkID);
            contactData.updateFacebookId();
        } else if (i == 4) {
            contactData.getDeviceData().setTwitterScreenName(jSONSocialNetworkID);
            contactData.updateTwitterScreenName();
        } else if (i == 6) {
            contactData.getDeviceData().setFoursquareId(jSONSocialNetworkID);
            contactData.updateFoursquareId();
        } else if (i == 7) {
            contactData.getDeviceData().setInstagramId(jSONSocialNetworkID);
            contactData.updateInstagramId();
        } else if (i == 9) {
            contactData.getDeviceData().setPinterestId(jSONSocialNetworkID);
            contactData.updatePinterestId();
        } else if (i == 10) {
            contactData.getDeviceData().setVKId(jSONSocialNetworkID);
            contactData.updateVKId();
        }
    }

    private static void validateContactDeviceId(ContactData contactData) {
        Integer count = new ContentQuery(ContactsContract.Contacts.CONTENT_URI).a(Constants.ID_COLUMN).b((Column<String>) Constants.ID_COLUMN, "=", (String) Long.valueOf(contactData.getDeviceId())).getCount();
        if (count != null && count.intValue() == 0) {
            contactData.setDeviceId(0L);
        }
    }

    public static void verifyContactInDevice(ContactData contactData) {
        if (contactData.getDeviceId() == 0) {
            findExactContactId(contactData);
        } else {
            validateContactDeviceId(contactData);
        }
    }
}

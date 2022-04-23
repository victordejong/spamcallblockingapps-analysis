package com.callapp.contacts.sync.syncer;

import android.provider.ContactsContract;
import android.util.SparseArray;
import com.callapp.common.model.json.JSONDate;
import com.callapp.common.model.json.JSONEvent;
import com.callapp.common.model.json.JSONSocialNetworkID;
import com.callapp.common.model.json.JSONWebsite;
import com.callapp.contacts.framework.dao.ContentQuery;
import com.callapp.contacts.framework.dao.RowContext;
import com.callapp.contacts.framework.dao.RowVisitor;
import com.callapp.contacts.framework.dao.column.Column;
import com.callapp.contacts.loader.UserPositiveNegativeManager;
import com.callapp.contacts.manager.SuggestContactManager;
import com.callapp.contacts.manager.contacts.ContactUtils;
import com.callapp.contacts.manager.phone.PhoneManager;
import com.callapp.contacts.model.Constants;
import com.callapp.contacts.model.contact.ContactData;
import com.callapp.contacts.model.contact.ContactDataUtils;
import com.callapp.contacts.model.contact.SuggestionData;
import com.callapp.contacts.model.objectbox.UserNegativePositiveData;
import com.callapp.contacts.model.objectbox.UserNegativeSocialData;
import com.callapp.contacts.model.objectbox.UserPositiveSocialData;
import com.callapp.contacts.sync.model.SyncerContext;
import com.callapp.contacts.util.CLog;
import com.callapp.contacts.util.date.DateUtils;
import com.callapp.framework.phone.Phone;
import com.callapp.framework.phone.PhoneType;
import com.callapp.framework.util.CollectionUtils;
import com.callapp.framework.util.StringUtils;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Date;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Set;
/* loaded from: classes2-dex2jar.jar:com/callapp/contacts/sync/syncer/DeviceDataSyncer.class */
public class DeviceDataSyncer extends Syncer {
    private void a() {
        Map<Long, String> contactIdToThumbnailUriMap = ContactUtils.getContactIdToThumbnailUriMap();
        for (Long l : contactIdToThumbnailUriMap.keySet()) {
            long longValue = l.longValue();
            if (CollectionUtils.b(this.syncContext.allContacts) && this.syncContext.allContacts.containsKey(Long.valueOf(longValue))) {
                ContactData contactData = this.syncContext.allContacts.get(Long.valueOf(longValue));
                String str = contactIdToThumbnailUriMap.get(Long.valueOf(longValue));
                if (StringUtils.b((CharSequence) str)) {
                    contactData.assertDeviceDataExist();
                    contactData.getDeviceData().setThumbnailUrl(str);
                }
            }
        }
    }

    private void b() {
        Map<Long, SparseArray<String>> allSuggestionMap = SuggestContactManager.getAllSuggestionMap();
        for (Long l : this.syncContext.allContacts.keySet()) {
            ContactData contactData = this.syncContext.allContacts.get(Long.valueOf(l.longValue()));
            SparseArray<String> sparseArray = allSuggestionMap.get(Long.valueOf(contactData.getDeviceId()));
            SparseArray<String> sparseArray2 = sparseArray;
            if (sparseArray == null) {
                sparseArray2 = new SparseArray<>();
            }
            SuggestionData suggestionData = new SuggestionData();
            contactData.setSuggestionMap(sparseArray2);
            for (int i = 0; i < sparseArray2.size(); i++) {
                suggestionData.setSocialIdByNetId(new JSONSocialNetworkID(sparseArray2.valueAt(i), false), sparseArray2.keyAt(i));
            }
            contactData.setSuggestionData(suggestionData);
        }
    }

    @Override // com.callapp.contacts.sync.syncer.Syncer
    public boolean needsDeviceData() {
        return false;
    }

    @Override // com.callapp.contacts.sync.syncer.Syncer
    public void onSyncContact(SyncerContext syncerContext) {
        syncerContext.markFullySynced();
    }

    @Override // com.callapp.contacts.sync.syncer.Syncer
    public void onSyncStart() {
        boolean z;
        super.onSyncStart();
        Iterator<Syncer> it2 = this.syncContext.syncers.iterator();
        while (true) {
            if (it2.hasNext()) {
                if (it2.next().needsDeviceData()) {
                    z = true;
                    break;
                }
            } else {
                z = false;
                break;
            }
        }
        if (!z) {
            setSyncEnabled(false);
            return;
        }
        System.currentTimeMillis();
        CLog.a(DeviceDataSyncer.class, "Sync loading websites...");
        final Map<Long, ContactData> map = this.syncContext.allContacts;
        new ContentQuery(ContactsContract.Data.CONTENT_URI).a(Constants.CONTACT_ID_COLUMN, Constants.TYPE_COLUMN, Constants.DATA_COLUMN).b(Constants.MIMETYPE_COLUMN, "=", "vnd.android.cursor.item/website").a(new RowVisitor() { // from class: com.callapp.contacts.sync.syncer.DeviceDataSyncer.1
            @Override // com.callapp.contacts.framework.dao.RowVisitor
            public void onRow(RowContext rowContext) {
                String str = (String) rowContext.a(Constants.DATA_COLUMN);
                if (!StringUtils.a((CharSequence) str)) {
                    ContactData contactData = (ContactData) map.get(Long.valueOf(rowContext.c(Constants.CONTACT_ID_COLUMN.f14402a)));
                    if (contactData != null) {
                        Collection<JSONWebsite> websites = contactData.getDeviceData().getWebsites();
                        Collection<JSONWebsite> collection = websites;
                        if (websites.isEmpty()) {
                            collection = new ArrayList<>();
                            contactData.getDeviceData().setWebsites(collection);
                        }
                        JSONWebsite jSONWebsite = new JSONWebsite();
                        jSONWebsite.setFromDevice(true);
                        jSONWebsite.setType(((Integer) rowContext.a(Constants.TYPE_COLUMN)).intValue());
                        jSONWebsite.setWebsiteUrl(str);
                        collection.add(jSONWebsite);
                        contactData.updateWebsites();
                    }
                }
            }
        });
        CLog.a(DeviceDataSyncer.class, "Sync loading positives...");
        List<UserNegativePositiveData> all = UserPositiveNegativeManager.getAll();
        if (CollectionUtils.b(all)) {
            for (UserNegativePositiveData userNegativePositiveData : all) {
                ContactData contactData = this.syncContext.allContacts.get(Long.valueOf(userNegativePositiveData.getContactId()));
                if (contactData != null) {
                    for (UserPositiveSocialData userPositiveSocialData : userNegativePositiveData.getUserPositiveSocialData()) {
                        String profileId = userPositiveSocialData.getProfileId();
                        if (!StringUtils.a((CharSequence) profileId)) {
                            ContactDataUtils.updateSocialNetwork(contactData, userPositiveSocialData.getSocialNetworkId(), new JSONSocialNetworkID(profileId, userPositiveSocialData.isSure()));
                        }
                    }
                    for (UserNegativeSocialData userNegativeSocialData : userNegativePositiveData.getUserNegativeSocialData()) {
                        String profileId2 = userNegativeSocialData.getProfileId();
                        if (!StringUtils.a((CharSequence) profileId2)) {
                            SparseArray<Set<String>> negativesMap = contactData.getNegativesMap();
                            SparseArray<Set<String>> sparseArray = negativesMap;
                            if (negativesMap.size() == 0) {
                                sparseArray = new SparseArray<>();
                                contactData.setNegativesMap(sparseArray);
                            }
                            int socialNetworkId = userNegativeSocialData.getSocialNetworkId();
                            Set<String> set = sparseArray.get(socialNetworkId);
                            Set<String> set2 = set;
                            if (set == null) {
                                set2 = new HashSet<>();
                                sparseArray.put(socialNetworkId, set2);
                            }
                            set2.add(profileId2);
                        }
                    }
                }
            }
        }
        b();
        CLog.a(DeviceDataSyncer.class, "Sync loading birthdays...");
        new ContentQuery(ContactsContract.Data.CONTENT_URI).a(Constants.CONTACT_ID_COLUMN).c("data1").b(Constants.MIMETYPE_COLUMN, "=", "vnd.android.cursor.item/contact_event").b((Column<String>) Constants.TYPE_COLUMN, "=", (String) 3).a(new RowVisitor() { // from class: com.callapp.contacts.sync.syncer.DeviceDataSyncer.3
            @Override // com.callapp.contacts.framework.dao.RowVisitor
            public void onRow(RowContext rowContext) {
                Date a2;
                ContactData contactData2 = DeviceDataSyncer.this.syncContext.allContacts.get(Long.valueOf(rowContext.c(Constants.CONTACT_ID_COLUMN.f14402a)));
                if (contactData2 != null) {
                    String a3 = rowContext.a("data1");
                    if (!StringUtils.a((CharSequence) a3) && (a2 = DateUtils.a(a3)) != null) {
                        contactData2.getDeviceData().setBirthday(new JSONDate(a2));
                        contactData2.updateBirthDate();
                        Collection<JSONEvent> events = contactData2.getDeviceData().getEvents();
                        Collection<JSONEvent> collection = events;
                        if (events.isEmpty()) {
                            collection = new ArrayList<>();
                            contactData2.getDeviceData().setEvents(collection);
                        }
                        JSONEvent jSONEvent = new JSONEvent();
                        jSONEvent.setFromDevice(true);
                        jSONEvent.setType(3);
                        jSONEvent.setFormattedDate(new JSONDate(a2));
                        collection.add(jSONEvent);
                        contactData2.updateEvents();
                    }
                }
            }
        });
        CLog.a(DeviceDataSyncer.class, "Sync loading phones...");
        final Map<Long, ContactData> map2 = this.syncContext.allContacts;
        new ContentQuery(ContactsContract.CommonDataKinds.Phone.CONTENT_URI).a(Constants.CONTACT_ID_COLUMN, Constants.TYPE_COLUMN, Constants.DATA_COLUMN).a(new RowVisitor() { // from class: com.callapp.contacts.sync.syncer.DeviceDataSyncer.2
            @Override // com.callapp.contacts.framework.dao.RowVisitor
            public void onRow(RowContext rowContext) {
                String str = (String) rowContext.a(Constants.DATA_COLUMN);
                if (!StringUtils.a((CharSequence) str)) {
                    ContactData contactData2 = (ContactData) map2.get(Long.valueOf(rowContext.c(Constants.CONTACT_ID_COLUMN.f14402a)));
                    if (contactData2 != null) {
                        Collection<Phone> phones = contactData2.getDeviceData().getPhones();
                        Collection<Phone> collection = phones;
                        if (phones.isEmpty()) {
                            collection = new ArrayList<>();
                            contactData2.getDeviceData().setPhones(collection);
                        }
                        Phone a2 = PhoneManager.get().a(str);
                        Integer num = (Integer) rowContext.a(Constants.TYPE_COLUMN);
                        if (num != null) {
                            a2.f17101c = PhoneType.fromCode(num.intValue());
                        }
                        collection.add(a2);
                        contactData2.updatePhones();
                    }
                }
            }
        });
        a();
    }

    @Override // com.callapp.contacts.sync.syncer.Syncer
    public boolean shouldSync() {
        return true;
    }

    @Override // com.callapp.contacts.sync.syncer.Syncer
    public boolean shouldSyncContact(ContactData contactData) {
        return false;
    }
}

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
    /* renamed from: a */
    private void m27741a() {
        Map<Long, String> contactIdToThumbnailUriMap = ContactUtils.getContactIdToThumbnailUriMap();
        for (Long l : contactIdToThumbnailUriMap.keySet()) {
            long longValue = l.longValue();
            if (CollectionUtils.m26067b(this.syncContext.allContacts) && this.syncContext.allContacts.containsKey(Long.valueOf(longValue))) {
                ContactData contactData = this.syncContext.allContacts.get(Long.valueOf(longValue));
                String str = contactIdToThumbnailUriMap.get(Long.valueOf(longValue));
                if (StringUtils.m26045b((CharSequence) str)) {
                    contactData.assertDeviceDataExist();
                    contactData.getDeviceData().setThumbnailUrl(str);
                }
            }
        }
    }

    /* renamed from: b */
    private void m27740b() {
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
        CLog.m27611a(DeviceDataSyncer.class, "Sync loading websites...");
        final Map<Long, ContactData> map = this.syncContext.allContacts;
        new ContentQuery(ContactsContract.Data.CONTENT_URI).m29018a(Constants.CONTACT_ID_COLUMN, Constants.TYPE_COLUMN, Constants.DATA_COLUMN).m29014b(Constants.MIMETYPE_COLUMN, "=", "vnd.android.cursor.item/website").m29024a(new RowVisitor() { // from class: com.callapp.contacts.sync.syncer.DeviceDataSyncer.1
            @Override // com.callapp.contacts.framework.dao.RowVisitor
            public void onRow(RowContext rowContext) {
                String str = (String) rowContext.m29003a(Constants.DATA_COLUMN);
                if (StringUtils.m26059a((CharSequence) str)) {
                    return;
                }
                ContactData contactData = (ContactData) map.get(Long.valueOf(rowContext.m29000c(Constants.CONTACT_ID_COLUMN.f25180a)));
                if (contactData == null) {
                    return;
                }
                Collection<JSONWebsite> websites = contactData.getDeviceData().getWebsites();
                ArrayList arrayList = websites;
                if (websites.isEmpty()) {
                    arrayList = new ArrayList();
                    contactData.getDeviceData().setWebsites(arrayList);
                }
                JSONWebsite jSONWebsite = new JSONWebsite();
                jSONWebsite.setFromDevice(true);
                jSONWebsite.setType(((Integer) rowContext.m29003a(Constants.TYPE_COLUMN)).intValue());
                jSONWebsite.setWebsiteUrl(str);
                arrayList.add(jSONWebsite);
                contactData.updateWebsites();
            }
        });
        CLog.m27611a(DeviceDataSyncer.class, "Sync loading positives...");
        List<UserNegativePositiveData> all = UserPositiveNegativeManager.getAll();
        if (CollectionUtils.m26068b(all)) {
            for (UserNegativePositiveData userNegativePositiveData : all) {
                ContactData contactData = this.syncContext.allContacts.get(Long.valueOf(userNegativePositiveData.getContactId()));
                if (contactData != null) {
                    for (UserPositiveSocialData userPositiveSocialData : userNegativePositiveData.getUserPositiveSocialData()) {
                        String profileId = userPositiveSocialData.getProfileId();
                        if (!StringUtils.m26059a((CharSequence) profileId)) {
                            ContactDataUtils.updateSocialNetwork(contactData, userPositiveSocialData.getSocialNetworkId(), new JSONSocialNetworkID(profileId, userPositiveSocialData.isSure()));
                        }
                    }
                    for (UserNegativeSocialData userNegativeSocialData : userNegativePositiveData.getUserNegativeSocialData()) {
                        String profileId2 = userNegativeSocialData.getProfileId();
                        if (!StringUtils.m26059a((CharSequence) profileId2)) {
                            SparseArray<Set<String>> negativesMap = contactData.getNegativesMap();
                            SparseArray<Set<String>> sparseArray = negativesMap;
                            if (negativesMap.size() == 0) {
                                sparseArray = new SparseArray<>();
                                contactData.setNegativesMap(sparseArray);
                            }
                            int socialNetworkId = userNegativeSocialData.getSocialNetworkId();
                            Set<String> set = sparseArray.get(socialNetworkId);
                            HashSet hashSet = set;
                            if (set == null) {
                                hashSet = new HashSet();
                                sparseArray.put(socialNetworkId, hashSet);
                            }
                            hashSet.add(profileId2);
                        }
                    }
                }
            }
        }
        m27740b();
        CLog.m27611a(DeviceDataSyncer.class, "Sync loading birthdays...");
        new ContentQuery(ContactsContract.Data.CONTENT_URI).m29023a(Constants.CONTACT_ID_COLUMN).m29008c("data1").m29014b(Constants.MIMETYPE_COLUMN, "=", "vnd.android.cursor.item/contact_event").m29014b((Column<String>) Constants.TYPE_COLUMN, "=", (String) 3).m29024a(new RowVisitor() { // from class: com.callapp.contacts.sync.syncer.DeviceDataSyncer.3
            @Override // com.callapp.contacts.framework.dao.RowVisitor
            public void onRow(RowContext rowContext) {
                Date m27130a;
                ContactData contactData2 = DeviceDataSyncer.this.syncContext.allContacts.get(Long.valueOf(rowContext.m29000c(Constants.CONTACT_ID_COLUMN.f25180a)));
                if (contactData2 == null) {
                    return;
                }
                String m29002a = rowContext.m29002a("data1");
                if (StringUtils.m26059a((CharSequence) m29002a) || (m27130a = DateUtils.m27130a(m29002a)) == null) {
                    return;
                }
                contactData2.getDeviceData().setBirthday(new JSONDate(m27130a));
                contactData2.updateBirthDate();
                Collection<JSONEvent> events = contactData2.getDeviceData().getEvents();
                ArrayList arrayList = events;
                if (events.isEmpty()) {
                    arrayList = new ArrayList();
                    contactData2.getDeviceData().setEvents(arrayList);
                }
                JSONEvent jSONEvent = new JSONEvent();
                jSONEvent.setFromDevice(true);
                jSONEvent.setType(3);
                jSONEvent.setFormattedDate(new JSONDate(m27130a));
                arrayList.add(jSONEvent);
                contactData2.updateEvents();
            }
        });
        CLog.m27611a(DeviceDataSyncer.class, "Sync loading phones...");
        final Map<Long, ContactData> map2 = this.syncContext.allContacts;
        new ContentQuery(ContactsContract.CommonDataKinds.Phone.CONTENT_URI).m29018a(Constants.CONTACT_ID_COLUMN, Constants.TYPE_COLUMN, Constants.DATA_COLUMN).m29024a(new RowVisitor() { // from class: com.callapp.contacts.sync.syncer.DeviceDataSyncer.2
            @Override // com.callapp.contacts.framework.dao.RowVisitor
            public void onRow(RowContext rowContext) {
                String str = (String) rowContext.m29003a(Constants.DATA_COLUMN);
                if (StringUtils.m26059a((CharSequence) str)) {
                    return;
                }
                ContactData contactData2 = (ContactData) map2.get(Long.valueOf(rowContext.m29000c(Constants.CONTACT_ID_COLUMN.f25180a)));
                if (contactData2 == null) {
                    return;
                }
                Collection<Phone> phones = contactData2.getDeviceData().getPhones();
                ArrayList arrayList = phones;
                if (phones.isEmpty()) {
                    arrayList = new ArrayList();
                    contactData2.getDeviceData().setPhones(arrayList);
                }
                Phone m28239a = PhoneManager.get().m28239a(str);
                Integer num = (Integer) rowContext.m29003a(Constants.TYPE_COLUMN);
                if (num != null) {
                    m28239a.f29664c = PhoneType.fromCode(num.intValue());
                }
                arrayList.add(m28239a);
                contactData2.updatePhones();
            }
        });
        m27741a();
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

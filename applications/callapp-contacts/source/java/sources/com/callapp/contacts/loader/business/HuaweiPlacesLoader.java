package com.callapp.contacts.loader.business;

import com.callapp.common.model.json.JSONExternalSourceContact;
import com.callapp.contacts.framework.util.MultiTaskRunner;
import com.callapp.contacts.loader.api.LoadContext;
import com.callapp.contacts.loader.external.ExternalSourcesLoader;
import com.callapp.contacts.loader.external.ExternalSourcesUtils;
import com.callapp.contacts.manager.task.Task;
import com.callapp.contacts.model.contact.ContactData;
import com.callapp.contacts.model.contact.ContactField;
import com.callapp.contacts.model.contact.HuaweiPlaceData;
import com.callapp.contacts.model.contact.social.ContactFieldEnumSets;
import com.callapp.framework.util.CollectionUtils;
import com.callapp.framework.util.StringUtils;
import java.util.Collections;
import java.util.List;
import java.util.Set;
/* loaded from: classes2-dex2jar.jar:com/callapp/contacts/loader/business/HuaweiPlacesLoader.class */
public class HuaweiPlacesLoader extends ExternalSourcesLoader<HuaweiPlaceData> {
    @Override // com.callapp.contacts.loader.external.ExternalSourcesLoader
    /* renamed from: a */
    public final /* bridge */ /* synthetic */ JSONExternalSourceContact mo28805a(HuaweiPlaceData huaweiPlaceData) {
        return ExternalSourcesUtils.m28826a(huaweiPlaceData);
    }

    @Override // com.callapp.contacts.loader.external.ExternalSourcesLoader
    /* renamed from: a */
    public final /* synthetic */ void mo28808a(LoadContext loadContext, HuaweiPlaceData huaweiPlaceData) {
        HuaweiPlaceData huaweiPlaceData2 = huaweiPlaceData;
        Set<ContactField> set = loadContext.f25323b;
        final ContactData contactData = loadContext.f25322a;
        contactData.setHuaweiPlaceData(huaweiPlaceData2);
        if (huaweiPlaceData2 == null || StringUtils.m26059a((CharSequence) huaweiPlaceData2.getFullName())) {
            return;
        }
        MultiTaskRunner m28862b = loadContext.m28862b();
        if (CollectionUtils.m26073a(set, ContactField.fullName, ContactField.names)) {
            m28862b.m28974a(new Task() { // from class: com.callapp.contacts.loader.business.HuaweiPlacesLoader.1
                @Override // com.callapp.contacts.manager.task.Task
                public void doTask() {
                    contactData.updateFullName();
                }
            });
        }
        if (CollectionUtils.m26070a((Set) set, (Set) ContactFieldEnumSets.PHOTO_FIELDS)) {
            m28862b.m28974a(new Task() { // from class: com.callapp.contacts.loader.business.HuaweiPlacesLoader.2
                @Override // com.callapp.contacts.manager.task.Task
                public void doTask() {
                    contactData.updatePhoto();
                }
            });
        }
        if (set.contains(ContactField.rating)) {
            m28862b.m28974a(new Task() { // from class: com.callapp.contacts.loader.business.HuaweiPlacesLoader.3
                @Override // com.callapp.contacts.manager.task.Task
                public void doTask() {
                    contactData.updateRating();
                }
            });
        }
        if (set.contains(ContactField.addresses)) {
            m28862b.m28974a(new Task() { // from class: com.callapp.contacts.loader.business.HuaweiPlacesLoader.4
                @Override // com.callapp.contacts.manager.task.Task
                public void doTask() {
                    contactData.updateAddresses();
                }
            });
        }
        if (set.contains(ContactField.latLng)) {
            m28862b.m28974a(new Task() { // from class: com.callapp.contacts.loader.business.HuaweiPlacesLoader.5
                @Override // com.callapp.contacts.manager.task.Task
                public void doTask() {
                    contactData.updateLatLng();
                }
            });
        }
        if (set.contains(ContactField.websites)) {
            m28862b.m28974a(new Task() { // from class: com.callapp.contacts.loader.business.HuaweiPlacesLoader.6
                @Override // com.callapp.contacts.manager.task.Task
                public void doTask() {
                    contactData.updateWebsites();
                }
            });
        }
        if (set.contains(ContactField.openingHours)) {
            m28862b.m28974a(new Task() { // from class: com.callapp.contacts.loader.business.HuaweiPlacesLoader.7
                @Override // com.callapp.contacts.manager.task.Task
                public void doTask() {
                    contactData.updateOpeningHours();
                }
            });
        }
        if (set.contains(ContactField.huaweiPlaces)) {
            m28862b.m28974a(new Task() { // from class: com.callapp.contacts.loader.business.HuaweiPlacesLoader.8
                @Override // com.callapp.contacts.manager.task.Task
                public void doTask() {
                    contactData.updateHuaweiPlacesData();
                }
            });
        }
        loadContext.m28868a(m28862b, this.f25279d);
    }

    @Override // com.callapp.contacts.loader.external.ExternalSourcesLoader
    /* renamed from: c */
    public final List<HuaweiPlaceData> mo28800c(LoadContext loadContext) {
        ContactData contactData = loadContext.f25322a;
        synchronized (contactData.getLock(HuaweiPlacesLoader.class)) {
            HuaweiPlaceData huaweiPlaceData = contactData.getHuaweiPlaceData();
            if (huaweiPlaceData == null || huaweiPlaceData.isExpired(2131427366)) {
                return Collections.singletonList(huaweiPlaceData);
            }
            return null;
        }
    }

    @Override // com.callapp.contacts.loader.external.ExternalSourcesLoader
    public Class<HuaweiPlaceData> getDataClass() {
        return HuaweiPlaceData.class;
    }

    @Override // com.callapp.contacts.loader.external.ExternalSourcesLoader
    public int getExernalSourceId() {
        return 1022;
    }

    @Override // com.callapp.contacts.loader.api.ContactDataLoader
    public Set<ContactField> getListenFields() {
        return ContactFieldEnumSets.NONE;
    }
}

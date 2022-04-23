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
    public final /* bridge */ /* synthetic */ JSONExternalSourceContact a(HuaweiPlaceData huaweiPlaceData) {
        return ExternalSourcesUtils.a(huaweiPlaceData);
    }

    @Override // com.callapp.contacts.loader.external.ExternalSourcesLoader
    public final /* synthetic */ void a(LoadContext loadContext, HuaweiPlaceData huaweiPlaceData) {
        HuaweiPlaceData huaweiPlaceData2 = huaweiPlaceData;
        Set<ContactField> set = loadContext.f14536b;
        final ContactData contactData = loadContext.f14535a;
        contactData.setHuaweiPlaceData(huaweiPlaceData2);
        if (huaweiPlaceData2 != null && !StringUtils.a((CharSequence) huaweiPlaceData2.getFullName())) {
            MultiTaskRunner b2 = loadContext.b();
            if (CollectionUtils.a(set, ContactField.fullName, ContactField.names)) {
                b2.a(new Task() { // from class: com.callapp.contacts.loader.business.HuaweiPlacesLoader.1
                    @Override // com.callapp.contacts.manager.task.Task
                    public void doTask() {
                        contactData.updateFullName();
                    }
                });
            }
            if (CollectionUtils.a((Set) set, (Set) ContactFieldEnumSets.PHOTO_FIELDS)) {
                b2.a(new Task() { // from class: com.callapp.contacts.loader.business.HuaweiPlacesLoader.2
                    @Override // com.callapp.contacts.manager.task.Task
                    public void doTask() {
                        contactData.updatePhoto();
                    }
                });
            }
            if (set.contains(ContactField.rating)) {
                b2.a(new Task() { // from class: com.callapp.contacts.loader.business.HuaweiPlacesLoader.3
                    @Override // com.callapp.contacts.manager.task.Task
                    public void doTask() {
                        contactData.updateRating();
                    }
                });
            }
            if (set.contains(ContactField.addresses)) {
                b2.a(new Task() { // from class: com.callapp.contacts.loader.business.HuaweiPlacesLoader.4
                    @Override // com.callapp.contacts.manager.task.Task
                    public void doTask() {
                        contactData.updateAddresses();
                    }
                });
            }
            if (set.contains(ContactField.latLng)) {
                b2.a(new Task() { // from class: com.callapp.contacts.loader.business.HuaweiPlacesLoader.5
                    @Override // com.callapp.contacts.manager.task.Task
                    public void doTask() {
                        contactData.updateLatLng();
                    }
                });
            }
            if (set.contains(ContactField.websites)) {
                b2.a(new Task() { // from class: com.callapp.contacts.loader.business.HuaweiPlacesLoader.6
                    @Override // com.callapp.contacts.manager.task.Task
                    public void doTask() {
                        contactData.updateWebsites();
                    }
                });
            }
            if (set.contains(ContactField.openingHours)) {
                b2.a(new Task() { // from class: com.callapp.contacts.loader.business.HuaweiPlacesLoader.7
                    @Override // com.callapp.contacts.manager.task.Task
                    public void doTask() {
                        contactData.updateOpeningHours();
                    }
                });
            }
            if (set.contains(ContactField.huaweiPlaces)) {
                b2.a(new Task() { // from class: com.callapp.contacts.loader.business.HuaweiPlacesLoader.8
                    @Override // com.callapp.contacts.manager.task.Task
                    public void doTask() {
                        contactData.updateHuaweiPlacesData();
                    }
                });
            }
            loadContext.a(b2, this.f14493d);
        }
    }

    @Override // com.callapp.contacts.loader.external.ExternalSourcesLoader
    public final List<HuaweiPlaceData> c(LoadContext loadContext) {
        ContactData contactData = loadContext.f14535a;
        synchronized (contactData.getLock(HuaweiPlacesLoader.class)) {
            HuaweiPlaceData huaweiPlaceData = contactData.getHuaweiPlaceData();
            if (huaweiPlaceData != null && !huaweiPlaceData.isExpired(2131427366)) {
                return null;
            }
            return Collections.singletonList(huaweiPlaceData);
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

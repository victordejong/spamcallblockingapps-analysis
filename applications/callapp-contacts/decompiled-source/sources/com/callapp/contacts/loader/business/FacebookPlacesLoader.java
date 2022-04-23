package com.callapp.contacts.loader.business;

import com.callapp.contacts.framework.util.MultiTaskRunner;
import com.callapp.contacts.loader.SimpleContactLoader;
import com.callapp.contacts.loader.api.LoadContext;
import com.callapp.contacts.manager.cache.CacheManager;
import com.callapp.contacts.manager.task.Task;
import com.callapp.contacts.model.contact.ContactData;
import com.callapp.contacts.model.contact.ContactField;
import com.callapp.contacts.model.contact.FacebookPlaceData;
import com.callapp.contacts.model.contact.social.ContactFieldEnumSets;
import com.callapp.framework.util.CollectionUtils;
import java.util.EnumSet;
import java.util.Set;
/* loaded from: classes2-dex2jar.jar:com/callapp/contacts/loader/business/FacebookPlacesLoader.class */
public class FacebookPlacesLoader extends SimpleContactLoader {
    @Override // com.callapp.contacts.loader.SimpleContactLoader
    public final void a(LoadContext loadContext) {
        synchronized (loadContext.f14535a.getLock(FacebookPlaceData.class)) {
            if (loadContext.f14535a.getFacebookPlaceData() == null) {
                FacebookPlaceData facebookPlaceData = (FacebookPlaceData) CacheManager.get().b(FacebookPlaceData.class, loadContext.f14535a.getCacheKey(FacebookPlaceData.class), false);
                if (facebookPlaceData != null) {
                    Set<ContactField> set = loadContext.f14536b;
                    final ContactData contactData = loadContext.f14535a;
                    contactData.setFacebookPlaceData(facebookPlaceData);
                    MultiTaskRunner b2 = loadContext.b();
                    if (CollectionUtils.a(set, ContactField.facebookId)) {
                        b2.a(new Task() { // from class: com.callapp.contacts.loader.business.FacebookPlacesLoader.1
                            @Override // com.callapp.contacts.manager.task.Task
                            public void doTask() {
                                contactData.updateFacebookId();
                            }
                        });
                    }
                    if (CollectionUtils.a(set, ContactField.fullName, ContactField.names)) {
                        b2.a(new Task() { // from class: com.callapp.contacts.loader.business.FacebookPlacesLoader.2
                            @Override // com.callapp.contacts.manager.task.Task
                            public void doTask() {
                                contactData.updateFullName();
                            }
                        });
                    }
                    if (CollectionUtils.a((Set) set, (Set) ContactFieldEnumSets.PHOTO_FIELDS)) {
                        b2.a(new Task() { // from class: com.callapp.contacts.loader.business.FacebookPlacesLoader.3
                            @Override // com.callapp.contacts.manager.task.Task
                            public void doTask() {
                                contactData.updatePhoto();
                            }
                        });
                    }
                    if (set.contains(ContactField.rating)) {
                        b2.a(new Task() { // from class: com.callapp.contacts.loader.business.FacebookPlacesLoader.4
                            @Override // com.callapp.contacts.manager.task.Task
                            public void doTask() {
                                contactData.updateRating();
                            }
                        });
                    }
                    if (set.contains(ContactField.addresses)) {
                        b2.a(new Task() { // from class: com.callapp.contacts.loader.business.FacebookPlacesLoader.5
                            @Override // com.callapp.contacts.manager.task.Task
                            public void doTask() {
                                contactData.updateAddresses();
                            }
                        });
                    }
                    if (set.contains(ContactField.latLng)) {
                        b2.a(new Task() { // from class: com.callapp.contacts.loader.business.FacebookPlacesLoader.6
                            @Override // com.callapp.contacts.manager.task.Task
                            public void doTask() {
                                contactData.updateLatLng();
                            }
                        });
                    }
                    if (set.contains(ContactField.websites)) {
                        b2.a(new Task() { // from class: com.callapp.contacts.loader.business.FacebookPlacesLoader.7
                            @Override // com.callapp.contacts.manager.task.Task
                            public void doTask() {
                                contactData.updateWebsites();
                            }
                        });
                    }
                    if (set.contains(ContactField.openingHours)) {
                        b2.a(new Task() { // from class: com.callapp.contacts.loader.business.FacebookPlacesLoader.8
                            @Override // com.callapp.contacts.manager.task.Task
                            public void doTask() {
                                contactData.updateOpeningHours();
                            }
                        });
                    }
                    if (CollectionUtils.a(set, ContactField.priceRange)) {
                        b2.a(new Task() { // from class: com.callapp.contacts.loader.business.FacebookPlacesLoader.9
                            @Override // com.callapp.contacts.manager.task.Task
                            public void doTask() {
                                contactData.updatePriceRange();
                            }
                        });
                    }
                    if (set.contains(ContactField.facebookPlaces)) {
                        b2.a(new Task() { // from class: com.callapp.contacts.loader.business.FacebookPlacesLoader.10
                            @Override // com.callapp.contacts.manager.task.Task
                            public void doTask() {
                                contactData.updateFacebookPlacesData();
                            }
                        });
                    }
                    loadContext.a(b2, this.f14493d);
                }
            }
        }
    }

    @Override // com.callapp.contacts.loader.api.ContactDataLoader
    public Set<ContactField> getListenFields() {
        return EnumSet.of(ContactField.phone);
    }
}

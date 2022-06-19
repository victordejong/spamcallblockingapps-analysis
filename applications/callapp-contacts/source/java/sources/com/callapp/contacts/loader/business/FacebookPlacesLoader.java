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
    /* renamed from: a */
    public final void mo27726a(LoadContext loadContext) {
        synchronized (loadContext.f25322a.getLock(FacebookPlaceData.class)) {
            if (loadContext.f25322a.getFacebookPlaceData() != null) {
                return;
            }
            FacebookPlaceData facebookPlaceData = (FacebookPlaceData) CacheManager.get().m28378b(FacebookPlaceData.class, loadContext.f25322a.getCacheKey(FacebookPlaceData.class), false);
            if (facebookPlaceData != null) {
                Set<ContactField> set = loadContext.f25323b;
                final ContactData contactData = loadContext.f25322a;
                contactData.setFacebookPlaceData(facebookPlaceData);
                MultiTaskRunner m28862b = loadContext.m28862b();
                if (CollectionUtils.m26073a(set, ContactField.facebookId)) {
                    m28862b.m28974a(new Task() { // from class: com.callapp.contacts.loader.business.FacebookPlacesLoader.1
                        @Override // com.callapp.contacts.manager.task.Task
                        public void doTask() {
                            contactData.updateFacebookId();
                        }
                    });
                }
                if (CollectionUtils.m26073a(set, ContactField.fullName, ContactField.names)) {
                    m28862b.m28974a(new Task() { // from class: com.callapp.contacts.loader.business.FacebookPlacesLoader.2
                        @Override // com.callapp.contacts.manager.task.Task
                        public void doTask() {
                            contactData.updateFullName();
                        }
                    });
                }
                if (CollectionUtils.m26070a((Set) set, (Set) ContactFieldEnumSets.PHOTO_FIELDS)) {
                    m28862b.m28974a(new Task() { // from class: com.callapp.contacts.loader.business.FacebookPlacesLoader.3
                        @Override // com.callapp.contacts.manager.task.Task
                        public void doTask() {
                            contactData.updatePhoto();
                        }
                    });
                }
                if (set.contains(ContactField.rating)) {
                    m28862b.m28974a(new Task() { // from class: com.callapp.contacts.loader.business.FacebookPlacesLoader.4
                        @Override // com.callapp.contacts.manager.task.Task
                        public void doTask() {
                            contactData.updateRating();
                        }
                    });
                }
                if (set.contains(ContactField.addresses)) {
                    m28862b.m28974a(new Task() { // from class: com.callapp.contacts.loader.business.FacebookPlacesLoader.5
                        @Override // com.callapp.contacts.manager.task.Task
                        public void doTask() {
                            contactData.updateAddresses();
                        }
                    });
                }
                if (set.contains(ContactField.latLng)) {
                    m28862b.m28974a(new Task() { // from class: com.callapp.contacts.loader.business.FacebookPlacesLoader.6
                        @Override // com.callapp.contacts.manager.task.Task
                        public void doTask() {
                            contactData.updateLatLng();
                        }
                    });
                }
                if (set.contains(ContactField.websites)) {
                    m28862b.m28974a(new Task() { // from class: com.callapp.contacts.loader.business.FacebookPlacesLoader.7
                        @Override // com.callapp.contacts.manager.task.Task
                        public void doTask() {
                            contactData.updateWebsites();
                        }
                    });
                }
                if (set.contains(ContactField.openingHours)) {
                    m28862b.m28974a(new Task() { // from class: com.callapp.contacts.loader.business.FacebookPlacesLoader.8
                        @Override // com.callapp.contacts.manager.task.Task
                        public void doTask() {
                            contactData.updateOpeningHours();
                        }
                    });
                }
                if (CollectionUtils.m26073a(set, ContactField.priceRange)) {
                    m28862b.m28974a(new Task() { // from class: com.callapp.contacts.loader.business.FacebookPlacesLoader.9
                        @Override // com.callapp.contacts.manager.task.Task
                        public void doTask() {
                            contactData.updatePriceRange();
                        }
                    });
                }
                if (set.contains(ContactField.facebookPlaces)) {
                    m28862b.m28974a(new Task() { // from class: com.callapp.contacts.loader.business.FacebookPlacesLoader.10
                        @Override // com.callapp.contacts.manager.task.Task
                        public void doTask() {
                            contactData.updateFacebookPlacesData();
                        }
                    });
                }
                loadContext.m28868a(m28862b, this.f25279d);
            }
        }
    }

    @Override // com.callapp.contacts.loader.api.ContactDataLoader
    public Set<ContactField> getListenFields() {
        return EnumSet.of(ContactField.phone);
    }
}

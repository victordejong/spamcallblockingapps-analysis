package com.callapp.contacts.sync.syncer.cache;

import com.callapp.contacts.loader.SimpleContactLoader;
import com.callapp.contacts.model.contact.ContactData;
import com.callapp.contacts.model.contact.ContactDataUtils;
import com.callapp.contacts.model.contact.ContactField;
import com.callapp.contacts.sync.syncer.cache.SocialFoundThenOtherSyncerLoader;
/* loaded from: classes2-dex2jar.jar:com/callapp/contacts/sync/syncer/cache/PhotoOrIdShouldLoadLogic.class */
public class PhotoOrIdShouldLoadLogic implements SocialFoundThenOtherSyncerLoader.ShouldLoadLogic {
    @Override // com.callapp.contacts.sync.syncer.cache.SocialFoundThenOtherSyncerLoader.ShouldLoadLogic
    /* renamed from: a */
    public final boolean mo27729a(SimpleContactLoader simpleContactLoader, ContactData contactData) {
        return !(ContactDataUtils.hasAnySocialId(contactData) > 0) && !((contactData.getDeviceData() != null && contactData.getDeviceData().hasAnyPhotoUri()) || (contactData.hasAnyPhotoUrl() && contactData.isSure(ContactField.photoUrl)));
    }
}

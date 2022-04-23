package com.callapp.contacts.sync.syncer.cache;

import com.callapp.contacts.loader.SimpleContactLoader;
import com.callapp.contacts.loader.social.BaseSocialLoader;
import com.callapp.contacts.model.contact.ContactData;
import com.callapp.contacts.model.contact.ContactDataUtils;
import com.callapp.contacts.model.contact.ContactField;
import com.callapp.contacts.sync.syncer.cache.SocialFoundThenOtherSyncerLoader;
/* loaded from: classes2-dex2jar.jar:com/callapp/contacts/sync/syncer/cache/BaseSocialShouldLoadLogic.class */
public class BaseSocialShouldLoadLogic implements SocialFoundThenOtherSyncerLoader.ShouldLoadLogic {
    @Override // com.callapp.contacts.sync.syncer.cache.SocialFoundThenOtherSyncerLoader.ShouldLoadLogic
    public final boolean a(SimpleContactLoader simpleContactLoader, ContactData contactData) {
        if (!(simpleContactLoader instanceof BaseSocialLoader)) {
            return true;
        }
        return !((contactData.getDeviceData() != null && contactData.getDeviceData().hasAnyPhotoUri()) || (contactData.hasAnyPhotoUrl() && contactData.isSure(ContactField.photoUrl))) || !(ContactDataUtils.hasAnySocialId(contactData) > 0);
    }
}

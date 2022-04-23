package com.callapp.contacts.loader.social.instagram;

import com.callapp.common.model.json.JSONSocialNetworkID;
import com.callapp.contacts.api.helper.common.RemoteAccountHelper;
import com.callapp.contacts.loader.api.LoadContext;
import com.callapp.contacts.loader.social.BaseSocialLoader;
import com.callapp.contacts.manager.Singletons;
import com.callapp.contacts.model.contact.ContactData;
import com.callapp.contacts.model.contact.ContactField;
import com.callapp.contacts.model.contact.DataSource;
import com.callapp.contacts.model.contact.social.InstagramData;
import java.util.EnumSet;
import java.util.Set;
/* loaded from: classes2-dex2jar.jar:com/callapp/contacts/loader/social/instagram/InstagramLoader.class */
public class InstagramLoader extends BaseSocialLoader<InstagramData> {

    /* renamed from: b  reason: collision with root package name */
    private static final Set<ContactField> f14763b = EnumSet.of(ContactField.instagramId, ContactField.genomeData, ContactField.names, ContactField.fullName);

    /* renamed from: c  reason: collision with root package name */
    private static final EnumSet<ContactField> f14764c = EnumSet.of(ContactField.instagramId, ContactField.instagramData, ContactField.instagramSearchResults, ContactField.fullName, ContactField.names, ContactField.photoUrl, ContactField.websites, ContactField.isFriend, ContactField.uploadedPhotosUrl);

    @Override // com.callapp.contacts.loader.social.BaseSocialLoader
    public final void a(LoadContext loadContext, JSONSocialNetworkID jSONSocialNetworkID) {
    }

    @Override // com.callapp.contacts.loader.social.BaseSocialLoader
    public final /* bridge */ /* synthetic */ void a(LoadContext loadContext, InstagramData instagramData, InstagramData instagramData2) {
    }

    @Override // com.callapp.contacts.loader.social.BaseSocialLoader
    public final void a(ContactData contactData) {
        contactData.updateInstagramId();
    }

    @Override // com.callapp.contacts.loader.social.BaseSocialLoader
    public Class<InstagramData> getDataClass() {
        return InstagramData.class;
    }

    @Override // com.callapp.contacts.loader.social.BaseSocialLoader
    public DataSource getDataSource() {
        return DataSource.instagram;
    }

    @Override // com.callapp.contacts.loader.api.ContactDataLoader
    public Set<ContactField> getListenFields() {
        return f14763b;
    }

    @Override // com.callapp.contacts.loader.SimpleContactLoader
    public EnumSet<ContactField> getLoadedFields() {
        return f14764c;
    }

    @Override // com.callapp.contacts.loader.social.BaseSocialLoader
    public RemoteAccountHelper getSocialHelper() {
        return Singletons.get().getInstagramHelper();
    }
}

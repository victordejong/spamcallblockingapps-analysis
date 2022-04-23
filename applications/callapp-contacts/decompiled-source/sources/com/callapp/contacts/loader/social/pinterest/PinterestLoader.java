package com.callapp.contacts.loader.social.pinterest;

import com.callapp.common.model.json.JSONSocialNetworkID;
import com.callapp.contacts.api.helper.common.RemoteAccountHelper;
import com.callapp.contacts.loader.api.LoadContext;
import com.callapp.contacts.loader.social.BaseSocialLoader;
import com.callapp.contacts.manager.Singletons;
import com.callapp.contacts.model.contact.ContactData;
import com.callapp.contacts.model.contact.ContactField;
import com.callapp.contacts.model.contact.DataSource;
import com.callapp.contacts.model.contact.social.PinterestData;
import java.util.EnumSet;
import java.util.Set;
/* loaded from: classes2-dex2jar.jar:com/callapp/contacts/loader/social/pinterest/PinterestLoader.class */
public class PinterestLoader extends BaseSocialLoader<PinterestData> {

    /* renamed from: b  reason: collision with root package name */
    private static final Set<ContactField> f14765b = EnumSet.of(ContactField.pinterestId, ContactField.genomeData, ContactField.names, ContactField.fullName);

    /* renamed from: c  reason: collision with root package name */
    private static final EnumSet<ContactField> f14766c = EnumSet.of(ContactField.pinterestId, ContactField.pinterestData, ContactField.pinterestSearchResults, ContactField.fullName, ContactField.names, ContactField.photoUrl, ContactField.isFriend);

    @Override // com.callapp.contacts.loader.social.BaseSocialLoader
    public final void a(LoadContext loadContext, JSONSocialNetworkID jSONSocialNetworkID) {
    }

    @Override // com.callapp.contacts.loader.social.BaseSocialLoader
    public final void a(ContactData contactData) {
        contactData.updatePinterestId();
    }

    @Override // com.callapp.contacts.loader.social.BaseSocialLoader
    public Class<PinterestData> getDataClass() {
        return PinterestData.class;
    }

    @Override // com.callapp.contacts.loader.social.BaseSocialLoader
    public DataSource getDataSource() {
        return DataSource.pinterest;
    }

    @Override // com.callapp.contacts.loader.api.ContactDataLoader
    public Set<ContactField> getListenFields() {
        return f14765b;
    }

    @Override // com.callapp.contacts.loader.SimpleContactLoader
    public EnumSet<ContactField> getLoadedFields() {
        return f14766c;
    }

    @Override // com.callapp.contacts.loader.social.BaseSocialLoader
    public RemoteAccountHelper getSocialHelper() {
        return Singletons.get().getPinterestHelper();
    }
}

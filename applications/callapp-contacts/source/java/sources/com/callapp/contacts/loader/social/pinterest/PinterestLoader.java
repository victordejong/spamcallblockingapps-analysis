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

    /* renamed from: b */
    private static final Set<ContactField> f25560b = EnumSet.of(ContactField.pinterestId, ContactField.genomeData, ContactField.names, ContactField.fullName);

    /* renamed from: c */
    private static final EnumSet<ContactField> f25561c = EnumSet.of(ContactField.pinterestId, ContactField.pinterestData, ContactField.pinterestSearchResults, ContactField.fullName, ContactField.names, ContactField.photoUrl, ContactField.isFriend);

    @Override // com.callapp.contacts.loader.social.BaseSocialLoader
    /* renamed from: a */
    public final void mo28773a(LoadContext loadContext, JSONSocialNetworkID jSONSocialNetworkID) {
    }

    @Override // com.callapp.contacts.loader.social.BaseSocialLoader
    /* renamed from: a */
    public final void mo28771a(ContactData contactData) {
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
        return f25560b;
    }

    @Override // com.callapp.contacts.loader.SimpleContactLoader
    public EnumSet<ContactField> getLoadedFields() {
        return f25561c;
    }

    @Override // com.callapp.contacts.loader.social.BaseSocialLoader
    public RemoteAccountHelper getSocialHelper() {
        return Singletons.get().getPinterestHelper();
    }
}

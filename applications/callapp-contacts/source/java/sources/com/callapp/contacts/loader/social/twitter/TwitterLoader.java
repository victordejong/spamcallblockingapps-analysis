package com.callapp.contacts.loader.social.twitter;

import com.callapp.common.model.json.JSONSocialNetworkID;
import com.callapp.contacts.api.helper.common.RemoteAccountHelper;
import com.callapp.contacts.framework.util.MultiTaskRunner;
import com.callapp.contacts.loader.api.LoadContext;
import com.callapp.contacts.loader.social.BaseSocialLoader;
import com.callapp.contacts.loader.social.LoadIsFriendTask;
import com.callapp.contacts.loader.social.LoadMutualFriendsTask;
import com.callapp.contacts.manager.Singletons;
import com.callapp.contacts.model.contact.ContactData;
import com.callapp.contacts.model.contact.ContactField;
import com.callapp.contacts.model.contact.DataSource;
import com.callapp.contacts.model.contact.social.TwitterData;
import com.callapp.framework.util.CollectionUtils;
import java.util.EnumSet;
import java.util.Set;
/* loaded from: classes2-dex2jar.jar:com/callapp/contacts/loader/social/twitter/TwitterLoader.class */
public class TwitterLoader extends BaseSocialLoader<TwitterData> {

    /* renamed from: b */
    private static final Set<ContactField> f25563b = EnumSet.of(ContactField.twitterScreenName, ContactField.genomeData, ContactField.names, ContactField.fullName);

    /* renamed from: c */
    private static final EnumSet<ContactField> f25564c = EnumSet.of(ContactField.twitterScreenName, ContactField.twitterData, ContactField.twitterSearchResults, ContactField.fullName, ContactField.names, ContactField.photoUrl, ContactField.isFriend);

    @Override // com.callapp.contacts.loader.social.BaseSocialLoader
    /* renamed from: a */
    public final void mo28773a(LoadContext loadContext, JSONSocialNetworkID jSONSocialNetworkID) {
        ContactData contactData = loadContext.f25322a;
        Set<ContactField> set = loadContext.f25323b;
        if (contactData.getTwitterData() == null) {
            contactData.setTwitterData(new TwitterData());
        }
        MultiTaskRunner m28869a = loadContext.m28869a();
        if (CollectionUtils.m26070a((Set) set, (Set) LoadTwitterUserTask.f25562c)) {
            m28869a.m28974a(new LoadTwitterUserTask(this, loadContext, jSONSocialNetworkID));
        }
        if (CollectionUtils.m26073a(set, ContactField.photoUrl)) {
            m28869a.m28974a(new LoadTwitterPhotoTask(this, loadContext, jSONSocialNetworkID));
        }
        if (set.contains(ContactField.twitterData)) {
            m28869a.m28974a(new LoadTwitterLastTweetTask(this, loadContext, jSONSocialNetworkID));
        }
        if (set.contains(ContactField.mutualFriends)) {
            m28869a.m28974a(new LoadMutualFriendsTask(this, loadContext, jSONSocialNetworkID, getDataSource().dbCode));
        }
        if (set.contains(ContactField.isFriend) && !Boolean.TRUE.equals(contactData.getTwitterData().isFriend())) {
            m28869a.m28974a(new LoadIsFriendTask(this, loadContext, jSONSocialNetworkID, 4));
        }
        loadContext.m28868a(m28869a, true);
    }

    @Override // com.callapp.contacts.loader.social.BaseSocialLoader
    /* renamed from: a */
    public final void mo28771a(ContactData contactData) {
        contactData.updateTwitterScreenName();
    }

    @Override // com.callapp.contacts.loader.social.BaseSocialLoader
    public Class<TwitterData> getDataClass() {
        return TwitterData.class;
    }

    @Override // com.callapp.contacts.loader.social.BaseSocialLoader
    public DataSource getDataSource() {
        return DataSource.twitter;
    }

    @Override // com.callapp.contacts.loader.api.ContactDataLoader
    public Set<ContactField> getListenFields() {
        return f25563b;
    }

    @Override // com.callapp.contacts.loader.SimpleContactLoader
    public EnumSet<ContactField> getLoadedFields() {
        return f25564c;
    }

    @Override // com.callapp.contacts.loader.social.BaseSocialLoader
    public RemoteAccountHelper getSocialHelper() {
        return Singletons.get().getTwitterHelper();
    }
}

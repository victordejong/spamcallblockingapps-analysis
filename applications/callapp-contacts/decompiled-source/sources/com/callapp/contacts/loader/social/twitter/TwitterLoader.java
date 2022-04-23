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

    /* renamed from: b  reason: collision with root package name */
    private static final Set<ContactField> f14768b = EnumSet.of(ContactField.twitterScreenName, ContactField.genomeData, ContactField.names, ContactField.fullName);

    /* renamed from: c  reason: collision with root package name */
    private static final EnumSet<ContactField> f14769c = EnumSet.of(ContactField.twitterScreenName, ContactField.twitterData, ContactField.twitterSearchResults, ContactField.fullName, ContactField.names, ContactField.photoUrl, ContactField.isFriend);

    @Override // com.callapp.contacts.loader.social.BaseSocialLoader
    public final void a(LoadContext loadContext, JSONSocialNetworkID jSONSocialNetworkID) {
        ContactData contactData = loadContext.f14535a;
        Set<ContactField> set = loadContext.f14536b;
        if (contactData.getTwitterData() == null) {
            contactData.setTwitterData(new TwitterData());
        }
        MultiTaskRunner a2 = loadContext.a();
        if (CollectionUtils.a((Set) set, (Set) LoadTwitterUserTask.f14767c)) {
            a2.a(new LoadTwitterUserTask(this, loadContext, jSONSocialNetworkID));
        }
        if (CollectionUtils.a(set, ContactField.photoUrl)) {
            a2.a(new LoadTwitterPhotoTask(this, loadContext, jSONSocialNetworkID));
        }
        if (set.contains(ContactField.twitterData)) {
            a2.a(new LoadTwitterLastTweetTask(this, loadContext, jSONSocialNetworkID));
        }
        if (set.contains(ContactField.mutualFriends)) {
            a2.a(new LoadMutualFriendsTask(this, loadContext, jSONSocialNetworkID, getDataSource().dbCode));
        }
        if (set.contains(ContactField.isFriend) && !Boolean.TRUE.equals(contactData.getTwitterData().isFriend())) {
            a2.a(new LoadIsFriendTask(this, loadContext, jSONSocialNetworkID, 4));
        }
        loadContext.a(a2, true);
    }

    @Override // com.callapp.contacts.loader.social.BaseSocialLoader
    public final void a(ContactData contactData) {
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
        return f14768b;
    }

    @Override // com.callapp.contacts.loader.SimpleContactLoader
    public EnumSet<ContactField> getLoadedFields() {
        return f14769c;
    }

    @Override // com.callapp.contacts.loader.social.BaseSocialLoader
    public RemoteAccountHelper getSocialHelper() {
        return Singletons.get().getTwitterHelper();
    }
}

package com.callapp.contacts.loader.social.twitter;

import com.callapp.common.model.json.JSONSocialNetworkID;
import com.callapp.contacts.api.helper.twitter.TwitterHelper;
import com.callapp.contacts.loader.api.LoadContext;
import com.callapp.contacts.loader.social.BaseSocialLoader;
import com.callapp.contacts.loader.social.BaseSocialLoaderTask;
import com.callapp.contacts.model.contact.ContactData;
import com.callapp.contacts.model.contact.ContactField;
import com.callapp.contacts.model.contact.social.SocialDataUtils;
import com.callapp.contacts.model.contact.social.TwitterData;
import com.callapp.contacts.model.contact.social.TwitterDataUtils;
import com.twitter.sdk.android.core.models.User;
import java.util.EnumSet;
import java.util.Set;
/* loaded from: classes2-dex2jar.jar:com/callapp/contacts/loader/social/twitter/LoadTwitterUserTask.class */
class LoadTwitterUserTask extends BaseSocialLoaderTask {

    /* renamed from: c  reason: collision with root package name */
    static final Set<ContactField> f14767c = EnumSet.of(ContactField.twitterData, ContactField.fullName, ContactField.names);

    /* JADX INFO: Access modifiers changed from: package-private */
    public LoadTwitterUserTask(BaseSocialLoader baseSocialLoader, LoadContext loadContext, JSONSocialNetworkID jSONSocialNetworkID) {
        super(baseSocialLoader, loadContext, jSONSocialNetworkID);
    }

    @Override // com.callapp.contacts.manager.task.Task
    public void doTask() {
        ContactData contactData = this.f14431a.f14535a;
        TwitterData twitterData = contactData.getTwitterData();
        if (twitterData != null) {
            User d2 = TwitterHelper.get().d(this.f14738b.getId(), false);
            if (d2 != null) {
                SocialDataUtils.setFullName(contactData, twitterData, d2.name);
                TwitterDataUtils.setDescription(contactData, twitterData, d2.description);
                return;
            }
            SocialDataUtils.setFullName(contactData, twitterData, null);
            TwitterDataUtils.setDescription(contactData, twitterData, null);
        }
    }
}

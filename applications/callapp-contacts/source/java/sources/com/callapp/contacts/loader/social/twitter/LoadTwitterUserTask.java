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

    /* renamed from: c */
    static final Set<ContactField> f25562c = EnumSet.of(ContactField.twitterData, ContactField.fullName, ContactField.names);

    public LoadTwitterUserTask(BaseSocialLoader baseSocialLoader, LoadContext loadContext, JSONSocialNetworkID jSONSocialNetworkID) {
        super(baseSocialLoader, loadContext, jSONSocialNetworkID);
    }

    @Override // com.callapp.contacts.manager.task.Task
    public void doTask() {
        ContactData contactData = this.f25214a.f25322a;
        TwitterData twitterData = contactData.getTwitterData();
        if (twitterData == null) {
            return;
        }
        User m29138d = TwitterHelper.get().m29138d(this.f25533b.getId(), false);
        if (m29138d != null) {
            SocialDataUtils.setFullName(contactData, twitterData, m29138d.name);
            TwitterDataUtils.setDescription(contactData, twitterData, m29138d.description);
            return;
        }
        SocialDataUtils.setFullName(contactData, twitterData, null);
        TwitterDataUtils.setDescription(contactData, twitterData, null);
    }
}

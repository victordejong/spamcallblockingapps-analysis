package com.callapp.contacts.loader.social.twitter;

import com.callapp.common.model.json.JSONSocialNetworkID;
import com.callapp.contacts.api.helper.twitter.TwitterHelper;
import com.callapp.contacts.loader.api.LoadContext;
import com.callapp.contacts.loader.social.BaseSocialLoader;
import com.callapp.contacts.loader.social.BaseSocialLoaderTask;
import com.callapp.contacts.model.contact.ContactData;
import com.callapp.contacts.model.contact.social.SocialDataUtils;
import com.callapp.contacts.model.contact.social.TwitterData;
/* loaded from: classes2-dex2jar.jar:com/callapp/contacts/loader/social/twitter/LoadTwitterPhotoTask.class */
class LoadTwitterPhotoTask extends BaseSocialLoaderTask {
    public LoadTwitterPhotoTask(BaseSocialLoader baseSocialLoader, LoadContext loadContext, JSONSocialNetworkID jSONSocialNetworkID) {
        super(baseSocialLoader, loadContext, jSONSocialNetworkID);
    }

    @Override // com.callapp.contacts.manager.task.Task
    public void doTask() {
        ContactData contactData = this.f25214a.f25322a;
        TwitterData twitterData = contactData.getTwitterData();
        if (twitterData == null) {
            return;
        }
        SocialDataUtils.setPhotoUrl(contactData, twitterData, TwitterHelper.get().m29131l(this.f25533b.getId()), TwitterHelper.get().m29130m(this.f25533b.getId()));
    }
}

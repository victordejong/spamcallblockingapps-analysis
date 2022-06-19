package com.callapp.contacts.loader.social.facebook;

import com.callapp.common.model.json.JSONSocialNetworkID;
import com.callapp.contacts.api.helper.facebook.FacebookHelper;
import com.callapp.contacts.loader.api.LoadContext;
import com.callapp.contacts.loader.social.BaseSocialLoader;
import com.callapp.contacts.loader.social.BaseSocialLoaderTask;
import com.callapp.contacts.model.contact.ContactData;
import com.callapp.contacts.model.contact.social.FacebookData;
import com.callapp.contacts.model.contact.social.SocialDataUtils;
import com.callapp.framework.util.StringUtils;
/* loaded from: classes2-dex2jar.jar:com/callapp/contacts/loader/social/facebook/LoadFbPhotoTask.class */
class LoadFbPhotoTask extends BaseSocialLoaderTask {
    public LoadFbPhotoTask(BaseSocialLoader baseSocialLoader, LoadContext loadContext, JSONSocialNetworkID jSONSocialNetworkID) {
        super(baseSocialLoader, loadContext, jSONSocialNetworkID);
    }

    @Override // com.callapp.contacts.manager.task.Task
    public void doTask() {
        ContactData contactData = this.f25214a.f25322a;
        FacebookData facebookData = contactData.getFacebookData();
        if (facebookData == null) {
            return;
        }
        String m29205k = FacebookHelper.get().m29205k(this.f25533b.getId());
        FacebookHelper.get();
        String str = null;
        if (StringUtils.m26045b((CharSequence) m29205k)) {
            str = FacebookHelper.get().mo29098h(this.f25533b.getId());
            FacebookHelper.get();
        }
        SocialDataUtils.setPhotoUrl(contactData, facebookData, m29205k, str);
    }
}

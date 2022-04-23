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
    /* JADX INFO: Access modifiers changed from: package-private */
    public LoadFbPhotoTask(BaseSocialLoader baseSocialLoader, LoadContext loadContext, JSONSocialNetworkID jSONSocialNetworkID) {
        super(baseSocialLoader, loadContext, jSONSocialNetworkID);
    }

    @Override // com.callapp.contacts.manager.task.Task
    public void doTask() {
        ContactData contactData = this.f14431a.f14535a;
        FacebookData facebookData = contactData.getFacebookData();
        if (facebookData != null) {
            String k = FacebookHelper.get().k(this.f14738b.getId());
            FacebookHelper.get();
            String str = null;
            if (StringUtils.b((CharSequence) k)) {
                str = FacebookHelper.get().h(this.f14738b.getId());
                FacebookHelper.get();
            }
            SocialDataUtils.setPhotoUrl(contactData, facebookData, k, str);
        }
    }
}

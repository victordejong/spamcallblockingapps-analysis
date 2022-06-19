package com.callapp.contacts.loader.social;

import com.callapp.common.model.json.JSONSocialNetworkID;
import com.callapp.contacts.loader.api.LoadContext;
import com.callapp.contacts.manager.Singletons;
import com.callapp.contacts.model.contact.ContactData;
import com.callapp.contacts.model.contact.ContactDataUtils;
import com.callapp.contacts.model.contact.social.SocialData;
import com.callapp.contacts.model.contact.social.SocialDataUtils;
/* loaded from: classes2-dex2jar.jar:com/callapp/contacts/loader/social/LoadMutualFriendsTask.class */
public class LoadMutualFriendsTask extends BaseSocialLoaderTask {

    /* renamed from: c */
    private int f25535c;

    public LoadMutualFriendsTask(BaseSocialLoader baseSocialLoader, LoadContext loadContext, JSONSocialNetworkID jSONSocialNetworkID, int i) {
        super(baseSocialLoader, loadContext, jSONSocialNetworkID);
        this.f25535c = i;
    }

    @Override // com.callapp.contacts.manager.task.Task
    public void doTask() {
        ContactData contactData = this.f25214a.f25322a;
        SocialData socialData = ContactDataUtils.getSocialData(contactData, this.f25535c);
        if (socialData == null || this.f25533b == null) {
            return;
        }
        SocialDataUtils.setMutualFriends(contactData, socialData, Singletons.get().getRemoteAccountHelper(this.f25535c).m29236e(this.f25533b.getId()));
    }
}

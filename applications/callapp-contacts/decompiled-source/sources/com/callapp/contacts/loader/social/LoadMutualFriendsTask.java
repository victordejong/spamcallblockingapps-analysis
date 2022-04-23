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

    /* renamed from: c  reason: collision with root package name */
    private int f14740c;

    public LoadMutualFriendsTask(BaseSocialLoader baseSocialLoader, LoadContext loadContext, JSONSocialNetworkID jSONSocialNetworkID, int i) {
        super(baseSocialLoader, loadContext, jSONSocialNetworkID);
        this.f14740c = i;
    }

    @Override // com.callapp.contacts.manager.task.Task
    public void doTask() {
        ContactData contactData = this.f14431a.f14535a;
        SocialData socialData = ContactDataUtils.getSocialData(contactData, this.f14740c);
        if (socialData != null && this.f14738b != null) {
            SocialDataUtils.setMutualFriends(contactData, socialData, Singletons.get().getRemoteAccountHelper(this.f14740c).e(this.f14738b.getId()));
        }
    }
}

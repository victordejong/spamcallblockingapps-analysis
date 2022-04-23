package com.callapp.contacts.loader.social;

import com.callapp.common.model.json.JSONSocialNetworkID;
import com.callapp.contacts.api.helper.common.RemoteAccountHelper;
import com.callapp.contacts.loader.api.LoadContext;
import com.callapp.contacts.manager.Singletons;
import com.callapp.contacts.model.contact.ContactData;
import com.callapp.contacts.model.contact.ContactDataUtils;
import com.callapp.contacts.model.contact.DataSource;
import com.callapp.contacts.model.contact.social.SocialData;
import com.callapp.contacts.model.contact.social.SocialDataUtils;
/* loaded from: classes2-dex2jar.jar:com/callapp/contacts/loader/social/LoadIsFriendTask.class */
public class LoadIsFriendTask extends BaseSocialLoaderTask {

    /* renamed from: c  reason: collision with root package name */
    private int f14739c;

    public LoadIsFriendTask(BaseSocialLoader baseSocialLoader, LoadContext loadContext, JSONSocialNetworkID jSONSocialNetworkID, int i) {
        super(baseSocialLoader, loadContext, jSONSocialNetworkID);
        this.f14739c = i;
    }

    @Override // com.callapp.contacts.manager.task.Task
    public void doTask() {
        RemoteAccountHelper remoteAccountHelper;
        ContactData contactData = this.f14431a.f14535a;
        SocialData socialData = ContactDataUtils.getSocialData(contactData, this.f14739c);
        if (socialData != null && this.f14738b != null && !Boolean.TRUE.equals(socialData.isFriend()) && (remoteAccountHelper = Singletons.get().getRemoteAccountHelper(this.f14739c)) != null) {
            boolean d2 = remoteAccountHelper.d(this.f14738b.getId());
            DataSource dataSource = DataSource.getDataSource(this.f14739c);
            if (dataSource != null) {
                SocialDataUtils.setIsFriend(contactData, socialData, Boolean.valueOf(d2), dataSource.socialDataField);
            }
        }
    }
}

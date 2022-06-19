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

    /* renamed from: c */
    private int f25534c;

    public LoadIsFriendTask(BaseSocialLoader baseSocialLoader, LoadContext loadContext, JSONSocialNetworkID jSONSocialNetworkID, int i) {
        super(baseSocialLoader, loadContext, jSONSocialNetworkID);
        this.f25534c = i;
    }

    @Override // com.callapp.contacts.manager.task.Task
    public void doTask() {
        RemoteAccountHelper remoteAccountHelper;
        ContactData contactData = this.f25214a.f25322a;
        SocialData socialData = ContactDataUtils.getSocialData(contactData, this.f25534c);
        if (socialData == null || this.f25533b == null || Boolean.TRUE.equals(socialData.isFriend()) || (remoteAccountHelper = Singletons.get().getRemoteAccountHelper(this.f25534c)) == null) {
            return;
        }
        boolean mo29178d = remoteAccountHelper.mo29178d(this.f25533b.getId());
        DataSource dataSource = DataSource.getDataSource(this.f25534c);
        if (dataSource == null) {
            return;
        }
        SocialDataUtils.setIsFriend(contactData, socialData, Boolean.valueOf(mo29178d), dataSource.socialDataField);
    }
}

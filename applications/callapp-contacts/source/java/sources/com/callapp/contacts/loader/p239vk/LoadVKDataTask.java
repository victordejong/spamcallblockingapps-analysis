package com.callapp.contacts.loader.p239vk;

import com.callapp.common.model.json.JSONSocialNetworkID;
import com.callapp.contacts.loader.api.LoadContext;
import com.callapp.contacts.loader.social.BaseSocialLoader;
import com.callapp.contacts.loader.social.BaseSocialLoaderTask;
import com.callapp.contacts.model.contact.ContactField;
import java.util.EnumSet;
/* renamed from: com.callapp.contacts.loader.vk.LoadVKDataTask */
/* loaded from: classes2-dex2jar.jar:com/callapp/contacts/loader/vk/LoadVKDataTask.class */
public class LoadVKDataTask extends BaseSocialLoaderTask {

    /* renamed from: c */
    public static final EnumSet<ContactField> f25565c = EnumSet.of(ContactField.vkData, ContactField.fullName, ContactField.names, ContactField.photoUrl, ContactField.birthday, ContactField.phone, ContactField.phones, ContactField.websites, ContactField.facebookId, ContactField.twitterScreenName, ContactField.imAddresses, ContactField.addresses);

    public LoadVKDataTask(BaseSocialLoader baseSocialLoader, LoadContext loadContext, JSONSocialNetworkID jSONSocialNetworkID) {
        super(baseSocialLoader, loadContext, jSONSocialNetworkID);
    }

    /* JADX WARN: Code restructure failed: missing block: B:81:0x032c, code lost:
        if (r0 != false) goto L82;
     */
    @Override // com.callapp.contacts.manager.task.Task
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void doTask() {
        /*
            Method dump skipped, instructions count: 831
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.callapp.contacts.loader.p239vk.LoadVKDataTask.doTask():void");
    }
}

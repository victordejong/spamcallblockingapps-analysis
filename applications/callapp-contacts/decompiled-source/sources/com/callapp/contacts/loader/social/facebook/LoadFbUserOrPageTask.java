package com.callapp.contacts.loader.social.facebook;

import com.callapp.common.model.json.JSONSocialNetworkID;
import com.callapp.contacts.loader.api.LoadContext;
import com.callapp.contacts.loader.social.BaseSocialLoader;
import com.callapp.contacts.loader.social.BaseSocialLoaderTask;
import com.callapp.contacts.model.contact.ContactField;
import java.util.EnumSet;
import java.util.Set;
/* loaded from: classes2-dex2jar.jar:com/callapp/contacts/loader/social/facebook/LoadFbUserOrPageTask.class */
class LoadFbUserOrPageTask extends BaseSocialLoaderTask {

    /* renamed from: c  reason: collision with root package name */
    static final Set<ContactField> f14762c = EnumSet.of(ContactField.facebookData, ContactField.organizations, ContactField.fullName, ContactField.names, ContactField.birthday, ContactField.emails, ContactField.websites, ContactField.addresses, ContactField.latLng, ContactField.categories);

    /* JADX INFO: Access modifiers changed from: package-private */
    public LoadFbUserOrPageTask(BaseSocialLoader baseSocialLoader, LoadContext loadContext, JSONSocialNetworkID jSONSocialNetworkID) {
        super(baseSocialLoader, loadContext, jSONSocialNetworkID);
    }

    /* JADX WARN: Removed duplicated region for block: B:76:0x0284  */
    /* JADX WARN: Removed duplicated region for block: B:82:0x02cb  */
    @Override // com.callapp.contacts.manager.task.Task
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void doTask() {
        /*
            Method dump skipped, instructions count: 909
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.callapp.contacts.loader.social.facebook.LoadFbUserOrPageTask.doTask():void");
    }
}

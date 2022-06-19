package com.callapp.contacts.loader.social;

import com.callapp.common.model.json.JSONSocialNetworkID;
import com.callapp.contacts.loader.BaseLoaderTask;
import com.callapp.contacts.loader.api.LoadContext;
/* loaded from: classes2-dex2jar.jar:com/callapp/contacts/loader/social/BaseSocialLoaderTask.class */
public abstract class BaseSocialLoaderTask extends BaseLoaderTask {

    /* renamed from: b */
    protected JSONSocialNetworkID f25533b;

    public BaseSocialLoaderTask(BaseSocialLoader baseSocialLoader, LoadContext loadContext, JSONSocialNetworkID jSONSocialNetworkID) {
        super(baseSocialLoader, loadContext);
        this.f25533b = jSONSocialNetworkID;
    }
}

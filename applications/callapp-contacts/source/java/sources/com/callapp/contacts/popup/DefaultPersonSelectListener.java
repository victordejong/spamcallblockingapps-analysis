package com.callapp.contacts.popup;

import com.callapp.contacts.api.helper.common.RemoteAccountHelper;
import com.callapp.contacts.api.helper.common.SocialNetworksSearchUtil;
import com.callapp.contacts.manager.analytics.AnalyticsManager;
import com.callapp.contacts.model.Constants;
import com.callapp.contacts.model.contact.ContactData;
import com.callapp.contacts.popup.selection.PersonSelectPopup;
import com.callapp.framework.util.StringUtils;
/* loaded from: classes2-dex2jar.jar:com/callapp/contacts/popup/DefaultPersonSelectListener.class */
public class DefaultPersonSelectListener implements PersonSelectPopup.PersonSelectListener {

    /* renamed from: a */
    private final RemoteAccountHelper f26875a;

    /* renamed from: b */
    private final ContactData f26876b;

    public DefaultPersonSelectListener(RemoteAccountHelper remoteAccountHelper, ContactData contactData) {
        this.f26875a = remoteAccountHelper;
        this.f26876b = contactData;
    }

    @Override // com.callapp.contacts.popup.selection.PersonSelectPopup.PersonSelectListener
    /* renamed from: a */
    public void mo27901a() {
        this.f26875a.setDoesntHave(this.f26876b);
    }

    @Override // com.callapp.contacts.popup.selection.PersonSelectPopup.PersonSelectListener
    /* renamed from: a */
    public void mo27900a(String str) {
        if (StringUtils.m26045b((CharSequence) str)) {
            this.f26875a.m29245a(this.f26876b, str, true);
            AnalyticsManager.get().m28449a(Constants.CONTACT_DETAILS, "Profile is sure", SocialNetworksSearchUtil.getSocialNetworkName(this.f26875a.getHelperSocialNetDBId()));
        }
    }

    @Override // com.callapp.contacts.popup.selection.PersonSelectPopup.PersonSelectListener
    /* renamed from: b */
    public void mo27899b() {
    }
}

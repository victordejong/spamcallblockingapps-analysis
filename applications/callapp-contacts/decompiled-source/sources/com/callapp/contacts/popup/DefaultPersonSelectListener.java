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

    /* renamed from: a  reason: collision with root package name */
    private final RemoteAccountHelper f15319a;

    /* renamed from: b  reason: collision with root package name */
    private final ContactData f15320b;

    public DefaultPersonSelectListener(RemoteAccountHelper remoteAccountHelper, ContactData contactData) {
        this.f15319a = remoteAccountHelper;
        this.f15320b = contactData;
    }

    @Override // com.callapp.contacts.popup.selection.PersonSelectPopup.PersonSelectListener
    public void a() {
        this.f15319a.setDoesntHave(this.f15320b);
    }

    @Override // com.callapp.contacts.popup.selection.PersonSelectPopup.PersonSelectListener
    public void a(String str) {
        if (StringUtils.b((CharSequence) str)) {
            this.f15319a.a(this.f15320b, str, true);
            AnalyticsManager.get().a(Constants.CONTACT_DETAILS, "Profile is sure", SocialNetworksSearchUtil.getSocialNetworkName(this.f15319a.getHelperSocialNetDBId()));
        }
    }

    @Override // com.callapp.contacts.popup.selection.PersonSelectPopup.PersonSelectListener
    public void b() {
    }
}

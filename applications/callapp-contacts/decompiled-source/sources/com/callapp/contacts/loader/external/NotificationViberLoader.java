package com.callapp.contacts.loader.external;

import com.callapp.contacts.manager.NotificationExtractors.DataExtractedInspector;
import com.callapp.contacts.manager.NotificationExtractors.IMDataExtractionUtils;
import com.callapp.contacts.model.contact.ContactData;
import com.callapp.contacts.model.contact.social.NotificationFromIMData;
import com.callapp.framework.util.StringUtils;
/* loaded from: classes2-dex2jar.jar:com/callapp/contacts/loader/external/NotificationViberLoader.class */
public class NotificationViberLoader extends NotificationFromIMLoader {
    public NotificationViberLoader() {
        super(IMDataExtractionUtils.RecognizedPersonOrigin.VIBER);
    }

    @Override // com.callapp.contacts.loader.external.NotificationFromIMLoader
    protected final void a(ContactData contactData, NotificationFromIMData notificationFromIMData) {
        contactData.setNotificationViberData(notificationFromIMData);
    }

    @Override // com.callapp.contacts.loader.external.NotificationFromIMLoader
    protected final boolean a(NotificationFromIMData notificationFromIMData) {
        return isLoaderEnabled() && StringUtils.b((CharSequence) notificationFromIMData.getFullName());
    }

    @Override // com.callapp.contacts.loader.external.ExternalSourcesLoader
    protected int getExernalSourceId() {
        return 1014;
    }

    @Override // com.callapp.contacts.loader.external.NotificationFromIMLoader
    protected boolean isLoaderEnabled() {
        return DataExtractedInspector.isViberSenderNameOK();
    }
}

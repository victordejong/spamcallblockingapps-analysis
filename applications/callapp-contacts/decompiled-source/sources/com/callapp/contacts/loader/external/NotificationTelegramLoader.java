package com.callapp.contacts.loader.external;

import com.callapp.contacts.manager.NotificationExtractors.DataExtractedInspector;
import com.callapp.contacts.manager.NotificationExtractors.IMDataExtractionUtils;
import com.callapp.contacts.model.contact.ContactData;
import com.callapp.contacts.model.contact.social.NotificationFromIMData;
import com.callapp.framework.util.NameValidationUtils;
/* loaded from: classes2-dex2jar.jar:com/callapp/contacts/loader/external/NotificationTelegramLoader.class */
public class NotificationTelegramLoader extends NotificationFromIMLoader {
    public NotificationTelegramLoader() {
        super(IMDataExtractionUtils.RecognizedPersonOrigin.TELEGRAM);
    }

    @Override // com.callapp.contacts.loader.external.NotificationFromIMLoader
    protected final void a(ContactData contactData, NotificationFromIMData notificationFromIMData) {
        contactData.setNotificationTelegramData(notificationFromIMData);
    }

    @Override // com.callapp.contacts.loader.external.NotificationFromIMLoader
    protected final boolean a(NotificationFromIMData notificationFromIMData) {
        return isLoaderEnabled() && notificationFromIMData != null && NameValidationUtils.a(notificationFromIMData.getFullName());
    }

    @Override // com.callapp.contacts.loader.external.ExternalSourcesLoader
    protected int getExernalSourceId() {
        return 1015;
    }

    @Override // com.callapp.contacts.loader.external.NotificationFromIMLoader
    protected boolean isLoaderEnabled() {
        return DataExtractedInspector.isTelegramSenderNameOK();
    }
}

package com.callapp.contacts.loader.external;

import com.callapp.common.model.json.JSONExternalSourceContact;
import com.callapp.contacts.loader.api.LoadContext;
import com.callapp.contacts.manager.NotificationExtractors.IMDataExtractionUtils;
import com.callapp.contacts.manager.task.Task;
import com.callapp.contacts.model.contact.ContactData;
import com.callapp.contacts.model.contact.ContactField;
import com.callapp.contacts.model.contact.social.ContactFieldEnumSets;
import com.callapp.contacts.model.contact.social.NotificationFromIMData;
import com.callapp.framework.util.CollectionUtils;
import com.callapp.framework.util.StringUtils;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Set;
/* loaded from: classes2-dex2jar.jar:com/callapp/contacts/loader/external/NotificationFromIMLoader.class */
public abstract class NotificationFromIMLoader extends ExternalSourcesLoader<NotificationFromIMData> {

    /* renamed from: a */
    private final IMDataExtractionUtils.RecognizedPersonOrigin f25487a;

    public NotificationFromIMLoader(IMDataExtractionUtils.RecognizedPersonOrigin recognizedPersonOrigin) {
        this.f25487a = recognizedPersonOrigin;
    }

    @Override // com.callapp.contacts.loader.external.ExternalSourcesLoader
    /* renamed from: a */
    protected final /* synthetic */ JSONExternalSourceContact mo28805a(NotificationFromIMData notificationFromIMData) {
        NotificationFromIMData notificationFromIMData2 = notificationFromIMData;
        if (mo28815a(notificationFromIMData2)) {
            JSONExternalSourceContact jSONExternalSourceContact = new JSONExternalSourceContact();
            jSONExternalSourceContact.setName(notificationFromIMData2.getFullName());
            return jSONExternalSourceContact;
        }
        return null;
    }

    @Override // com.callapp.contacts.loader.external.ExternalSourcesLoader
    /* renamed from: a */
    protected final /* synthetic */ void mo28808a(LoadContext loadContext, NotificationFromIMData notificationFromIMData) {
        NotificationFromIMData notificationFromIMData2 = notificationFromIMData;
        Set<ContactField> set = loadContext.f25323b;
        final ContactData contactData = loadContext.f25322a;
        if (notificationFromIMData2 != null) {
            mo28816a(contactData, notificationFromIMData2);
            if (!CollectionUtils.m26070a((Set) set, (Set) ContactFieldEnumSets.NAME_FIELDS)) {
                return;
            }
            LoadContext.m28866a(new Task() { // from class: com.callapp.contacts.loader.external.NotificationFromIMLoader.1
                @Override // com.callapp.contacts.manager.task.Task
                public void doTask() {
                    contactData.updateFullName();
                }
            });
        }
    }

    /* renamed from: a */
    protected abstract void mo28816a(ContactData contactData, NotificationFromIMData notificationFromIMData);

    /* renamed from: a */
    protected abstract boolean mo28815a(NotificationFromIMData notificationFromIMData);

    @Override // com.callapp.contacts.loader.external.ExternalSourcesLoader
    /* renamed from: c */
    protected final List<NotificationFromIMData> mo28800c(LoadContext loadContext) {
        if (isLoaderEnabled()) {
            ArrayList arrayList = new ArrayList(1);
            String m28612b = IMDataExtractionUtils.m28612b(this.f25487a, loadContext.f25322a.getPhone());
            if (StringUtils.m26045b((CharSequence) m28612b)) {
                arrayList.add(new NotificationFromIMData(m28612b));
            }
            Iterator it2 = arrayList.iterator();
            while (it2.hasNext()) {
                ((NotificationFromIMData) it2.next()).setKey(loadContext.f25322a.getPhone().m26101a());
            }
            return arrayList;
        }
        return null;
    }

    @Override // com.callapp.contacts.loader.external.ExternalSourcesLoader
    protected Class<NotificationFromIMData> getDataClass() {
        return NotificationFromIMData.class;
    }

    @Override // com.callapp.contacts.loader.api.ContactDataLoader
    public Set<ContactField> getListenFields() {
        return ContactFieldEnumSets.NONE;
    }

    protected abstract boolean isLoaderEnabled();
}

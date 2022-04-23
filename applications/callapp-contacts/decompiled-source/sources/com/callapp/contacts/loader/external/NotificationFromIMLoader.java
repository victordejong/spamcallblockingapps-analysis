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

    /* renamed from: a  reason: collision with root package name */
    private final IMDataExtractionUtils.RecognizedPersonOrigin f14693a;

    public NotificationFromIMLoader(IMDataExtractionUtils.RecognizedPersonOrigin recognizedPersonOrigin) {
        this.f14693a = recognizedPersonOrigin;
    }

    @Override // com.callapp.contacts.loader.external.ExternalSourcesLoader
    protected final /* synthetic */ JSONExternalSourceContact a(NotificationFromIMData notificationFromIMData) {
        NotificationFromIMData notificationFromIMData2 = notificationFromIMData;
        if (!a2(notificationFromIMData2)) {
            return null;
        }
        JSONExternalSourceContact jSONExternalSourceContact = new JSONExternalSourceContact();
        jSONExternalSourceContact.setName(notificationFromIMData2.getFullName());
        return jSONExternalSourceContact;
    }

    @Override // com.callapp.contacts.loader.external.ExternalSourcesLoader
    protected final /* synthetic */ void a(LoadContext loadContext, NotificationFromIMData notificationFromIMData) {
        NotificationFromIMData notificationFromIMData2 = notificationFromIMData;
        Set<ContactField> set = loadContext.f14536b;
        final ContactData contactData = loadContext.f14535a;
        if (notificationFromIMData2 != null) {
            a(contactData, notificationFromIMData2);
            if (CollectionUtils.a((Set) set, (Set) ContactFieldEnumSets.NAME_FIELDS)) {
                LoadContext.a(new Task() { // from class: com.callapp.contacts.loader.external.NotificationFromIMLoader.1
                    @Override // com.callapp.contacts.manager.task.Task
                    public void doTask() {
                        contactData.updateFullName();
                    }
                });
            }
        }
    }

    protected abstract void a(ContactData contactData, NotificationFromIMData notificationFromIMData);

    /* renamed from: a  reason: avoid collision after fix types in other method */
    protected abstract boolean a2(NotificationFromIMData notificationFromIMData);

    @Override // com.callapp.contacts.loader.external.ExternalSourcesLoader
    protected final List<NotificationFromIMData> c(LoadContext loadContext) {
        if (!isLoaderEnabled()) {
            return null;
        }
        ArrayList arrayList = new ArrayList(1);
        String b2 = IMDataExtractionUtils.b(this.f14693a, loadContext.f14535a.getPhone());
        if (StringUtils.b((CharSequence) b2)) {
            arrayList.add(new NotificationFromIMData(b2));
        }
        Iterator it2 = arrayList.iterator();
        while (it2.hasNext()) {
            ((NotificationFromIMData) it2.next()).setKey(loadContext.f14535a.getPhone().a());
        }
        return arrayList;
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

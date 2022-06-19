package com.callapp.contacts.loader.device;

import android.provider.ContactsContract;
import com.callapp.contacts.framework.dao.ContentQuery;
import com.callapp.contacts.framework.dao.RowCallback;
import com.callapp.contacts.framework.dao.RowContext;
import com.callapp.contacts.framework.dao.column.Column;
import com.callapp.contacts.manager.task.Task;
import com.callapp.contacts.model.Constants;
import com.callapp.contacts.model.contact.ContactData;
import com.callapp.framework.util.CollectionUtils;
import java.util.ArrayList;
import java.util.Collection;
import java.util.HashSet;
/* loaded from: classes2-dex2jar.jar:com/callapp/contacts/loader/device/LoadNamesTask.class */
public class LoadNamesTask extends Task {

    /* renamed from: a */
    private final ContactData f25419a;

    public LoadNamesTask(ContactData contactData) {
        this.f25419a = contactData;
    }

    @Override // com.callapp.contacts.manager.task.Task
    public void doTask() {
        ArrayList arrayList = new ArrayList();
        arrayList.add(Constants.WHATSAPP_ACCOUNT_TYPE);
        arrayList.add(Constants.WHATSAPP_4B_ACCOUNT_TYPE);
        arrayList.add("com.callapp.contacts.account");
        ContentQuery m29012b = new ContentQuery(ContactsContract.RawContacts.CONTENT_URI).m29008c("aggregation_mode").m29018a(Constants.ACCOUNT_TYPE_COLUMN).m29012b("contact_id", "=", String.valueOf(this.f25419a.getDeviceId())).m29008c("display_name").m29012b("display_name_source", "!=", "20");
        m29012b.m29034a(false, (Column) Constants.ACCOUNT_TYPE_COLUMN, (Collection) arrayList);
        Collection<String> m29019a = m29012b.m29019a(new HashSet(), new RowCallback<String>() { // from class: com.callapp.contacts.loader.device.LoadNamesTask.1
            @Override // com.callapp.contacts.framework.dao.RowCallback
            public /* synthetic */ String onRow(RowContext rowContext) {
                return rowContext.m29002a("display_name");
            }
        });
        if (!CollectionUtils.m26074a(m29019a, this.f25419a.getDeviceData().getNames())) {
            this.f25419a.getDeviceData().setNames(m29019a);
            this.f25419a.updateNames();
        }
    }
}

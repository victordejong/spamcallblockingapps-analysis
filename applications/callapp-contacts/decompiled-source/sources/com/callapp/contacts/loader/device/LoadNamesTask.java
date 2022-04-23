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

    /* renamed from: a  reason: collision with root package name */
    private final ContactData f14627a;

    public LoadNamesTask(ContactData contactData) {
        this.f14627a = contactData;
    }

    @Override // com.callapp.contacts.manager.task.Task
    public void doTask() {
        ArrayList arrayList = new ArrayList();
        arrayList.add(Constants.WHATSAPP_ACCOUNT_TYPE);
        arrayList.add(Constants.WHATSAPP_4B_ACCOUNT_TYPE);
        arrayList.add("com.callapp.contacts.account");
        ContentQuery b2 = new ContentQuery(ContactsContract.RawContacts.CONTENT_URI).c("aggregation_mode").a(Constants.ACCOUNT_TYPE_COLUMN).b("contact_id", "=", String.valueOf(this.f14627a.getDeviceId())).c("display_name").b("display_name_source", "!=", "20");
        b2.a(false, (Column) Constants.ACCOUNT_TYPE_COLUMN, (Collection) arrayList);
        Collection<String> a2 = b2.a(new HashSet(), new RowCallback<String>() { // from class: com.callapp.contacts.loader.device.LoadNamesTask.1
            @Override // com.callapp.contacts.framework.dao.RowCallback
            public /* synthetic */ String onRow(RowContext rowContext) {
                return rowContext.a("display_name");
            }
        });
        if (!CollectionUtils.a(a2, this.f14627a.getDeviceData().getNames())) {
            this.f14627a.getDeviceData().setNames(a2);
            this.f14627a.updateNames();
        }
    }
}

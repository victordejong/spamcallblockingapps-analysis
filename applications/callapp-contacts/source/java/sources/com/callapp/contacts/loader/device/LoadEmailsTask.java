package com.callapp.contacts.loader.device;

import android.provider.ContactsContract;
import com.callapp.common.model.json.JSONEmail;
import com.callapp.common.util.RegexUtils;
import com.callapp.contacts.framework.dao.ContentQuery;
import com.callapp.contacts.framework.dao.RowCallback;
import com.callapp.contacts.framework.dao.RowContext;
import com.callapp.contacts.manager.task.Task;
import com.callapp.contacts.model.Constants;
import com.callapp.contacts.model.contact.ContactData;
import com.callapp.framework.util.CollectionUtils;
import java.util.List;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes2-dex2jar.jar:com/callapp/contacts/loader/device/LoadEmailsTask.class */
public class LoadEmailsTask extends Task {

    /* renamed from: a */
    private final ContactData f25410a;

    public LoadEmailsTask(ContactData contactData) {
        this.f25410a = contactData;
    }

    @Override // com.callapp.contacts.manager.task.Task
    public void doTask() {
        List m29026a = new ContentQuery(ContactsContract.CommonDataKinds.Email.CONTENT_URI).m29017a("data2", "data1").m29012b("contact_id", "=", String.valueOf(this.f25410a.getDeviceId())).m29012b("data1", "!=", (String) null).m29014b(Constants.DATA_COLUMN, "!=", "").m29026a(new RowCallback<JSONEmail>() { // from class: com.callapp.contacts.loader.device.LoadEmailsTask.1
            @Override // com.callapp.contacts.framework.dao.RowCallback
            public /* synthetic */ JSONEmail onRow(RowContext rowContext) {
                String m29002a = rowContext.m29002a("data1");
                if (!RegexUtils.m31891j(m29002a)) {
                    return null;
                }
                JSONEmail jSONEmail = new JSONEmail();
                jSONEmail.setFromDevice(true);
                jSONEmail.setType(rowContext.m28999d("data2"));
                jSONEmail.setEmail(m29002a);
                return jSONEmail;
            }
        });
        if (!CollectionUtils.m26074a(m29026a, this.f25410a.getDeviceData().getEmails())) {
            this.f25410a.getDeviceData().setEmails(m29026a);
            this.f25410a.updateEmails();
        }
    }
}

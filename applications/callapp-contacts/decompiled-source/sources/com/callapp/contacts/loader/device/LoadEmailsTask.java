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
/* loaded from: classes2-dex2jar.jar:com/callapp/contacts/loader/device/LoadEmailsTask.class */
class LoadEmailsTask extends Task {

    /* renamed from: a  reason: collision with root package name */
    private final ContactData f14618a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public LoadEmailsTask(ContactData contactData) {
        this.f14618a = contactData;
    }

    @Override // com.callapp.contacts.manager.task.Task
    public void doTask() {
        List a2 = new ContentQuery(ContactsContract.CommonDataKinds.Email.CONTENT_URI).a("data2", "data1").b("contact_id", "=", String.valueOf(this.f14618a.getDeviceId())).b("data1", "!=", (String) null).b(Constants.DATA_COLUMN, "!=", "").a(new RowCallback<JSONEmail>() { // from class: com.callapp.contacts.loader.device.LoadEmailsTask.1
            @Override // com.callapp.contacts.framework.dao.RowCallback
            public /* synthetic */ JSONEmail onRow(RowContext rowContext) {
                String a3 = rowContext.a("data1");
                if (!RegexUtils.j(a3)) {
                    return null;
                }
                JSONEmail jSONEmail = new JSONEmail();
                jSONEmail.setFromDevice(true);
                jSONEmail.setType(rowContext.d("data2"));
                jSONEmail.setEmail(a3);
                return jSONEmail;
            }
        });
        if (!CollectionUtils.a(a2, this.f14618a.getDeviceData().getEmails())) {
            this.f14618a.getDeviceData().setEmails(a2);
            this.f14618a.updateEmails();
        }
    }
}

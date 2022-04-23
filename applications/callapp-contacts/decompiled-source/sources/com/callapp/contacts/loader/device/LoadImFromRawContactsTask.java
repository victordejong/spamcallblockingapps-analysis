package com.callapp.contacts.loader.device;

import android.provider.ContactsContract;
import com.callapp.common.model.json.JSONIMaddress;
import com.callapp.contacts.framework.dao.ContentQuery;
import com.callapp.contacts.framework.dao.RowCallback;
import com.callapp.contacts.framework.dao.RowContext;
import com.callapp.contacts.framework.dao.column.Column;
import com.callapp.contacts.manager.task.Task;
import com.callapp.contacts.model.Constants;
import com.callapp.contacts.model.contact.ContactData;
import com.callapp.framework.util.CollectionUtils;
import java.util.List;
/* loaded from: classes2-dex2jar.jar:com/callapp/contacts/loader/device/LoadImFromRawContactsTask.class */
public class LoadImFromRawContactsTask extends Task {

    /* renamed from: a  reason: collision with root package name */
    private final ContactData f14620a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public LoadImFromRawContactsTask(ContactData contactData) {
        this.f14620a = contactData;
    }

    static /* synthetic */ String a(LoadImFromRawContactsTask loadImFromRawContactsTask, String str) {
        return (String) new ContentQuery(ContactsContract.Data.CONTENT_URI).c("data3").b("mimetype", "=", Constants.WHATSAPP_MINETYPE).b("raw_contact_id", "=", str).a((RowCallback<RowCallback<String>>) new RowCallback<String>() { // from class: com.callapp.contacts.loader.device.LoadImFromRawContactsTask.1
            @Override // com.callapp.contacts.framework.dao.RowCallback
            public /* synthetic */ String onRow(RowContext rowContext) {
                return rowContext.a("data3");
            }
        }, (RowCallback<String>) null);
    }

    @Override // com.callapp.contacts.manager.task.Task
    public void doTask() {
        ContentQuery b2 = new ContentQuery(ContactsContract.RawContacts.CONTENT_URI).a(Constants.ID_COLUMN).c("_id").c("account_type").b((Column<String>) Constants.CONTACT_ID_COLUMN, "=", (String) Long.valueOf(this.f14620a.getDeviceId()));
        b2.b("account_type", Constants.VIBER_ACCOUNT_TYPE, Constants.VIBER_ACCOUNT_TYPE_OLD_BEFORE_JUN15, Constants.WHATSAPP_ACCOUNT_TYPE, Constants.WHATSAPP_4B_ACCOUNT_TYPE, Constants.SKYPE_ACCOUNT_TYPE, Constants.WECHAT_ACCOUNT_TYPE, Constants.TELEGRAM_ACCOUNT_TYPE, Constants.TELEGRAM_OLD_ACCOUNT_TYPE, Constants.DUO_ACCOUNT_TYPE, Constants.SIGNAL_ACCOUNT_TYPE, Constants.ALLO_ACCOUNT_TYPE, Constants.MESSENGER_ACCOUNT_TYPE);
        List a2 = b2.a(new RowCallback<JSONIMaddress>() { // from class: com.callapp.contacts.loader.device.LoadImFromRawContactsTask.2
            /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
            /* JADX WARN: Code restructure failed: missing block: B:36:0x015e, code lost:
                if (r0.equals(com.callapp.contacts.model.Constants.VIBER_ACCOUNT_TYPE_OLD_BEFORE_JUN15) == false) goto L_0x0098;
             */
            @Override // com.callapp.contacts.framework.dao.RowCallback
            /*
                Code decompiled incorrectly, please refer to instructions dump.
                To view partially-correct add '--show-bad-code' argument
            */
            public /* synthetic */ com.callapp.common.model.json.JSONIMaddress onRow(com.callapp.contacts.framework.dao.RowContext r7) {
                /*
                    Method dump skipped, instructions count: 874
                    To view this dump add '--comments-level debug' option
                */
                throw new UnsupportedOperationException("Method not decompiled: com.callapp.contacts.loader.device.LoadImFromRawContactsTask.AnonymousClass2.onRow(com.callapp.contacts.framework.dao.RowContext):java.lang.Object");
            }
        });
        if (!CollectionUtils.a(a2, this.f14620a.getDeviceData().getImContacts())) {
            this.f14620a.getDeviceData().setImContacts(a2);
            this.f14620a.updateImAddresses();
        }
    }
}

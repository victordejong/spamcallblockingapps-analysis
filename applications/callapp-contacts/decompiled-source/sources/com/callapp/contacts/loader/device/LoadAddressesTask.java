package com.callapp.contacts.loader.device;

import android.provider.ContactsContract;
import com.callapp.common.model.json.JSONAddress;
import com.callapp.contacts.framework.dao.ContentQuery;
import com.callapp.contacts.framework.dao.RowCallback;
import com.callapp.contacts.framework.dao.RowContext;
import com.callapp.contacts.manager.task.Task;
import com.callapp.contacts.model.contact.ContactData;
import com.callapp.framework.util.CollectionUtils;
import java.util.List;
/* loaded from: classes2-dex2jar.jar:com/callapp/contacts/loader/device/LoadAddressesTask.class */
class LoadAddressesTask extends Task {

    /* renamed from: a  reason: collision with root package name */
    private final ContactData f14608a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public LoadAddressesTask(ContactData contactData) {
        this.f14608a = contactData;
    }

    @Override // com.callapp.contacts.manager.task.Task
    public void doTask() {
        List a2 = new ContentQuery(ContactsContract.CommonDataKinds.StructuredPostal.CONTENT_URI).a("data2").c("data4").c("data5").c("data9").c("data7").c("data8").c("data10").b("contact_id", "=", String.valueOf(this.f14608a.getDeviceId())).b("mimetype", "=", "vnd.android.cursor.item/postal-address_v2").a(new RowCallback<JSONAddress>() { // from class: com.callapp.contacts.loader.device.LoadAddressesTask.1
            @Override // com.callapp.contacts.framework.dao.RowCallback
            public /* synthetic */ JSONAddress onRow(RowContext rowContext) {
                JSONAddress jSONAddress = new JSONAddress();
                jSONAddress.setFromDevice(true);
                jSONAddress.setType(rowContext.d("data2"));
                jSONAddress.setStreet(rowContext.a("data4"));
                jSONAddress.setCity(rowContext.a("data7"));
                jSONAddress.setState(rowContext.a("data8"));
                jSONAddress.setPostalCode(rowContext.a("data9"));
                jSONAddress.setCountry(rowContext.a("data10"));
                jSONAddress.setPoBox(rowContext.a("data5"));
                return jSONAddress;
            }
        });
        if (!CollectionUtils.a(a2, this.f14608a.getDeviceData().getAddresses())) {
            this.f14608a.getDeviceData().setAddresses(a2);
            this.f14608a.updateAddresses();
        }
    }
}

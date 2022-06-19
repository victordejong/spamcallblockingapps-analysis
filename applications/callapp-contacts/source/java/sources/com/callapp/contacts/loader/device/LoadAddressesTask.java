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
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes2-dex2jar.jar:com/callapp/contacts/loader/device/LoadAddressesTask.class */
public class LoadAddressesTask extends Task {

    /* renamed from: a */
    private final ContactData f25397a;

    public LoadAddressesTask(ContactData contactData) {
        this.f25397a = contactData;
    }

    @Override // com.callapp.contacts.manager.task.Task
    public void doTask() {
        List m29026a = new ContentQuery(ContactsContract.CommonDataKinds.StructuredPostal.CONTENT_URI).m29017a("data2").m29008c("data4").m29008c("data5").m29008c("data9").m29008c("data7").m29008c("data8").m29008c("data10").m29012b("contact_id", "=", String.valueOf(this.f25397a.getDeviceId())).m29012b("mimetype", "=", "vnd.android.cursor.item/postal-address_v2").m29026a(new RowCallback<JSONAddress>() { // from class: com.callapp.contacts.loader.device.LoadAddressesTask.1
            @Override // com.callapp.contacts.framework.dao.RowCallback
            public /* synthetic */ JSONAddress onRow(RowContext rowContext) {
                JSONAddress jSONAddress = new JSONAddress();
                jSONAddress.setFromDevice(true);
                jSONAddress.setType(rowContext.m28999d("data2"));
                jSONAddress.setStreet(rowContext.m29002a("data4"));
                jSONAddress.setCity(rowContext.m29002a("data7"));
                jSONAddress.setState(rowContext.m29002a("data8"));
                jSONAddress.setPostalCode(rowContext.m29002a("data9"));
                jSONAddress.setCountry(rowContext.m29002a("data10"));
                jSONAddress.setPoBox(rowContext.m29002a("data5"));
                return jSONAddress;
            }
        });
        if (!CollectionUtils.m26074a(m29026a, this.f25397a.getDeviceData().getAddresses())) {
            this.f25397a.getDeviceData().setAddresses(m29026a);
            this.f25397a.updateAddresses();
        }
    }
}

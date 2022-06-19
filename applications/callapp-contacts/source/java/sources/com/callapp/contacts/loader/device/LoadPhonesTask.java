package com.callapp.contacts.loader.device;

import android.provider.ContactsContract;
import android.util.Pair;
import com.callapp.contacts.framework.dao.ContentQuery;
import com.callapp.contacts.framework.dao.RowCallback;
import com.callapp.contacts.framework.dao.RowContext;
import com.callapp.contacts.manager.phone.PhoneManager;
import com.callapp.contacts.manager.task.Task;
import com.callapp.contacts.model.contact.ContactData;
import com.callapp.framework.phone.Phone;
import com.callapp.framework.phone.PhoneType;
import com.callapp.framework.util.CollectionUtils;
import com.callapp.framework.util.StringUtils;
import java.util.ArrayList;
import java.util.List;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes2-dex2jar.jar:com/callapp/contacts/loader/device/LoadPhonesTask.class */
public class LoadPhonesTask extends Task {

    /* renamed from: a */
    private final ContactData f25421a;

    public LoadPhonesTask(ContactData contactData) {
        this.f25421a = contactData;
    }

    @Override // com.callapp.contacts.manager.task.Task
    public void doTask() {
        List<Pair> m29026a = new ContentQuery(ContactsContract.CommonDataKinds.Phone.CONTENT_URI).m29017a("data2", "data3", "data1", "is_super_primary").m29012b("contact_id", "=", String.valueOf(this.f25421a.getDeviceId())).m29020a("is_super_primary", false).m29020a("is_primary", false).m29026a(new RowCallback<Pair<Phone, Boolean>>() { // from class: com.callapp.contacts.loader.device.LoadPhonesTask.1
            @Override // com.callapp.contacts.framework.dao.RowCallback
            public /* synthetic */ Pair<Phone, Boolean> onRow(RowContext rowContext) {
                Phone m28239a = PhoneManager.get().m28239a(rowContext.m29002a("data1"));
                Integer valueOf = Integer.valueOf(rowContext.m28999d("data2"));
                String m29002a = rowContext.m29002a("data3");
                if (valueOf != null) {
                    m28239a.f29664c = PhoneType.fromCode(valueOf.intValue());
                }
                if (StringUtils.m26045b((CharSequence) m29002a)) {
                    m28239a.setCustomType(m29002a);
                }
                return Pair.create(m28239a, Boolean.valueOf(rowContext.m29001b("is_super_primary")));
            }
        });
        ArrayList arrayList = new ArrayList();
        if (CollectionUtils.m26068b(m29026a)) {
            for (Pair pair : m29026a) {
                if (((Boolean) pair.second).booleanValue()) {
                    this.f25421a.setPhone((Phone) pair.first);
                }
                arrayList.add(pair.first);
            }
        }
        if (CollectionUtils.m26068b(arrayList) && (this.f25421a.getPhone().isEmpty() || !arrayList.contains(this.f25421a.getPhone()))) {
            this.f25421a.setPhone((Phone) arrayList.get(0));
        }
        if (!CollectionUtils.m26074a(arrayList, this.f25421a.getDeviceData().getPhones())) {
            this.f25421a.getDeviceData().setPhones(arrayList);
            this.f25421a.updatePhones();
        }
    }
}

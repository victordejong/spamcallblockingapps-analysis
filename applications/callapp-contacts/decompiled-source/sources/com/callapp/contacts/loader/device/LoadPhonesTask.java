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
/* loaded from: classes2-dex2jar.jar:com/callapp/contacts/loader/device/LoadPhonesTask.class */
class LoadPhonesTask extends Task {

    /* renamed from: a  reason: collision with root package name */
    private final ContactData f14629a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public LoadPhonesTask(ContactData contactData) {
        this.f14629a = contactData;
    }

    @Override // com.callapp.contacts.manager.task.Task
    public void doTask() {
        List<Pair> a2 = new ContentQuery(ContactsContract.CommonDataKinds.Phone.CONTENT_URI).a("data2", "data3", "data1", "is_super_primary").b("contact_id", "=", String.valueOf(this.f14629a.getDeviceId())).a("is_super_primary", false).a("is_primary", false).a(new RowCallback<Pair<Phone, Boolean>>() { // from class: com.callapp.contacts.loader.device.LoadPhonesTask.1
            @Override // com.callapp.contacts.framework.dao.RowCallback
            public /* synthetic */ Pair<Phone, Boolean> onRow(RowContext rowContext) {
                Phone a3 = PhoneManager.get().a(rowContext.a("data1"));
                Integer valueOf = Integer.valueOf(rowContext.d("data2"));
                String a4 = rowContext.a("data3");
                if (valueOf != null) {
                    a3.f17101c = PhoneType.fromCode(valueOf.intValue());
                }
                if (StringUtils.b((CharSequence) a4)) {
                    a3.setCustomType(a4);
                }
                return Pair.create(a3, Boolean.valueOf(rowContext.b("is_super_primary")));
            }
        });
        ArrayList arrayList = new ArrayList();
        if (CollectionUtils.b(a2)) {
            for (Pair pair : a2) {
                if (((Boolean) pair.second).booleanValue()) {
                    this.f14629a.setPhone((Phone) pair.first);
                }
                arrayList.add(pair.first);
            }
        }
        if (CollectionUtils.b(arrayList) && (this.f14629a.getPhone().isEmpty() || !arrayList.contains(this.f14629a.getPhone()))) {
            this.f14629a.setPhone((Phone) arrayList.get(0));
        }
        if (!CollectionUtils.a(arrayList, this.f14629a.getDeviceData().getPhones())) {
            this.f14629a.getDeviceData().setPhones(arrayList);
            this.f14629a.updatePhones();
        }
    }
}

package com.callapp.contacts.loader.device;

import com.callapp.common.util.Objects;
import com.callapp.common.util.SerializablePair;
import com.callapp.contacts.loader.SimpleContactLoader;
import com.callapp.contacts.loader.api.LoadContext;
import com.callapp.contacts.model.contact.ContactField;
import com.callapp.contacts.model.contact.DeviceData;
import com.callapp.contacts.model.contact.social.ContactFieldEnumSets;
import com.callapp.contacts.util.SmsUtils;
import com.callapp.framework.phone.Phone;
import com.callapp.framework.phone.PhoneNumberUtils;
import com.callapp.framework.util.StringUtils;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Date;
import java.util.Set;
/* loaded from: classes2-dex2jar.jar:com/callapp/contacts/loader/device/SmsLoader.class */
public class SmsLoader extends SimpleContactLoader {
    @Override // com.callapp.contacts.loader.SimpleContactLoader
    public final void a(LoadContext loadContext) {
        DeviceData deviceData = loadContext.f14535a.getDeviceData();
        if (deviceData != null && loadContext.f14536b.contains(ContactField.lastSms)) {
            Collection<Phone> phones = loadContext.f14535a.getPhones();
            String fullName = deviceData.getFullName();
            if (!phones.isEmpty() || !StringUtils.a((CharSequence) fullName)) {
                ArrayList arrayList = new ArrayList();
                for (Phone phone : phones) {
                    arrayList.add(PhoneNumberUtils.d(phone.b()));
                    arrayList.add(PhoneNumberUtils.d(phone.a()));
                }
                if (StringUtils.b((CharSequence) fullName)) {
                    arrayList.add(fullName);
                }
                for (String str : deviceData.getNames()) {
                    if (StringUtils.b((CharSequence) str)) {
                        arrayList.add(str);
                    }
                }
                SerializablePair<Date, SerializablePair<String, String>> a2 = SmsUtils.a(arrayList);
                if (!Objects.a(a2, deviceData.getLastSms())) {
                    deviceData.setLastSms(a2);
                    loadContext.f14535a.updateLastSMS();
                }
            } else if (deviceData.getLastSms() != null) {
                deviceData.setLastSms(null);
                loadContext.f14535a.updateLastSMS();
            }
        }
    }

    @Override // com.callapp.contacts.loader.api.ContactDataLoader
    public Set<ContactField> getListenFields() {
        return ContactFieldEnumSets.NONE;
    }
}

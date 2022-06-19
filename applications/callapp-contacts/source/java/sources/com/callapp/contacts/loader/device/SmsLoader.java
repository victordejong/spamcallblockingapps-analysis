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
    /* renamed from: a */
    public final void mo27726a(LoadContext loadContext) {
        DeviceData deviceData = loadContext.f25322a.getDeviceData();
        if (deviceData == null || !loadContext.f25323b.contains(ContactField.lastSms)) {
            return;
        }
        Collection<Phone> phones = loadContext.f25322a.getPhones();
        String fullName = deviceData.getFullName();
        if (phones.isEmpty() && StringUtils.m26059a((CharSequence) fullName)) {
            if (deviceData.getLastSms() == null) {
                return;
            }
            deviceData.setLastSms(null);
            loadContext.f25322a.updateLastSMS();
            return;
        }
        ArrayList arrayList = new ArrayList();
        for (Phone phone : phones) {
            arrayList.add(PhoneNumberUtils.m26080d(phone.m26095b()));
            arrayList.add(PhoneNumberUtils.m26080d(phone.m26101a()));
        }
        if (StringUtils.m26045b((CharSequence) fullName)) {
            arrayList.add(fullName);
        }
        for (String str : deviceData.getNames()) {
            if (StringUtils.m26045b((CharSequence) str)) {
                arrayList.add(str);
            }
        }
        SerializablePair<Date, SerializablePair<String, String>> m27393a = SmsUtils.m27393a(arrayList);
        if (Objects.m31915a(m27393a, deviceData.getLastSms())) {
            return;
        }
        deviceData.setLastSms(m27393a);
        loadContext.f25322a.updateLastSMS();
    }

    @Override // com.callapp.contacts.loader.api.ContactDataLoader
    public Set<ContactField> getListenFields() {
        return ContactFieldEnumSets.NONE;
    }
}

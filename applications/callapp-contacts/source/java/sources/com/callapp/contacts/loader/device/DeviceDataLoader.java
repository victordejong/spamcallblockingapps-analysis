package com.callapp.contacts.loader.device;

import com.callapp.contacts.activity.calllog.CallLogViewHolder;
import com.callapp.contacts.framework.util.MultiTaskRunner;
import com.callapp.contacts.loader.DeviceIdAndPhoneBasedContactLoader;
import com.callapp.contacts.loader.api.LoadContext;
import com.callapp.contacts.loader.device.DeviceIdLoader;
import com.callapp.contacts.manager.NotificationExtractors.IMDataExtractionUtils;
import com.callapp.contacts.manager.contacts.ContactDeviceIDAndPhoneChangesUtils;
import com.callapp.contacts.manager.task.Task;
import com.callapp.contacts.model.contact.ContactData;
import com.callapp.contacts.model.contact.ContactField;
import com.callapp.contacts.model.contact.social.ContactFieldEnumSets;
import com.callapp.framework.util.CollectionUtils;
import java.util.Set;
/* loaded from: classes2-dex2jar.jar:com/callapp/contacts/loader/device/DeviceDataLoader.class */
public class DeviceDataLoader extends DeviceIdAndPhoneBasedContactLoader {

    /* renamed from: c */
    private final String f25385c = "contactRemovedOrAddedToContactListKey";

    @Override // com.callapp.contacts.loader.DeviceIdAndPhoneBasedContactLoader, com.callapp.contacts.loader.SimpleContactLoader
    /* renamed from: a */
    public final void mo27726a(LoadContext loadContext) {
        ContactData contactData = loadContext.f25322a;
        Set<ContactField> set = loadContext.f25323b;
        contactData.assertDeviceDataExist();
        boolean z = false;
        if (set != null) {
            z = false;
            if (set.contains(ContactField.deviceId)) {
                long deviceId = contactData.getDeviceData().getDeviceId();
                int i = (deviceId > 0L ? 1 : (deviceId == 0L ? 0 : -1));
                if (i == 0 || contactData.getDeviceId() != 0) {
                    z = false;
                    if (i == 0) {
                        z = false;
                        if (contactData.getDeviceId() != 0) {
                            ContactDeviceIDAndPhoneChangesUtils.m28353b(contactData.getDeviceId(), contactData.getPhone());
                        }
                    }
                    contactData.getDeviceData().setDeviceId(contactData.getDeviceId());
                } else {
                    ContactDeviceIDAndPhoneChangesUtils.m28364a(deviceId, contactData.getPhone());
                }
                z = true;
                contactData.getDeviceData().setDeviceId(contactData.getDeviceId());
            }
        }
        loadContext.f25326e.setValue("contactRemovedOrAddedToContactListKey", Boolean.valueOf(z));
        super.mo27726a(loadContext);
    }

    @Override // com.callapp.contacts.loader.DeviceIdAndPhoneBasedContactLoader
    /* renamed from: c */
    public final void mo28856c(LoadContext loadContext) {
        final ContactData contactData = loadContext.f25322a;
        Set<ContactField> set = loadContext.f25323b;
        MultiTaskRunner m28862b = loadContext.m28862b();
        boolean booleanValue = ((Boolean) loadContext.f25326e.getValue("contactRemovedOrAddedToContactListKey")).booleanValue();
        if (!contactData.isContactInDevice()) {
            contactData.clearDeviceData();
            if (set.contains(ContactField.imAddresses)) {
                contactData.setWhatsAppDataExtraction(IMDataExtractionUtils.m28626a(IMDataExtractionUtils.RecognizedPersonOrigin.WHATSAPP, contactData.getPhone()));
            }
        } else {
            if (set.contains(ContactField.phones)) {
                m28862b.m28974a(new LoadPhonesTask(contactData));
            }
            if (set.contains(ContactField.emails)) {
                m28862b.m28974a(new LoadEmailsTask(contactData));
            }
            if (set.contains(ContactField.imAddresses)) {
                m28862b.m28974a(new LoadImFromRawContactsTask(contactData));
            }
            if (set.contains(ContactField.addresses)) {
                m28862b.m28974a(new LoadAddressesTask(contactData));
            }
            boolean contains = set.contains(ContactField.organizations);
            boolean contains2 = set.contains(ContactField.websites);
            boolean m26073a = CollectionUtils.m26073a(set, ContactField.events, ContactField.birthday);
            boolean contains3 = set.contains(ContactField.imAddresses);
            if (contains || contains2 || m26073a || contains3) {
                m28862b.m28974a(new LoadContactsContractData(contactData, contains, contains2, m26073a, contains3));
            }
            if (set.contains(ContactField.names)) {
                m28862b.m28974a(new LoadNamesTask(contactData));
            }
            if (booleanValue && set.contains(ContactField.fullName)) {
                m28862b.m28974a(new Task() { // from class: com.callapp.contacts.loader.device.DeviceDataLoader.1
                    @Override // com.callapp.contacts.manager.task.Task
                    public void doTask() {
                        DeviceIdLoader.DeviceDataResult m28852a = DeviceIdLoader.m28852a(contactData.getPhone().getRawNumber(), contactData.getDeviceId(), true, true, true);
                        if (m28852a != null) {
                            contactData.getDeviceData().setFullName(m28852a.f25394b);
                            contactData.updateFullName();
                        }
                    }
                });
            }
        }
        if (booleanValue || CollectionUtils.m26070a((Set) set, (Set) ContactFieldEnumSets.SOCIAL_NETWORKS_IDS)) {
            m28862b.m28974a(new LoadSocialNetworksIdTask(contactData));
        }
        loadContext.m28868a(m28862b, this.f25279d);
        if (booleanValue) {
            CallLogViewHolder.m31335n();
            contactData.updateImAddresses();
            contactData.updateEmails();
            contactData.updateAddresses();
            contactData.updateWebsites();
            contactData.updateFullName();
            contactData.updateNames();
            contactData.fireChange(ContactField.deviceId);
        }
        contactData.fireChange(ContactField.deviceData);
    }

    @Override // com.callapp.contacts.loader.api.ContactDataLoader
    public Set<ContactField> getListenFields() {
        return ContactFieldEnumSets.DEVICE_ID_MONITORED;
    }
}

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

    /* renamed from: c  reason: collision with root package name */
    private final String f14596c = "contactRemovedOrAddedToContactListKey";

    @Override // com.callapp.contacts.loader.DeviceIdAndPhoneBasedContactLoader, com.callapp.contacts.loader.SimpleContactLoader
    public final void a(LoadContext loadContext) {
        ContactData contactData = loadContext.f14535a;
        Set<ContactField> set = loadContext.f14536b;
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
                            ContactDeviceIDAndPhoneChangesUtils.b(contactData.getDeviceId(), contactData.getPhone());
                        }
                    }
                    contactData.getDeviceData().setDeviceId(contactData.getDeviceId());
                } else {
                    ContactDeviceIDAndPhoneChangesUtils.a(deviceId, contactData.getPhone());
                }
                z = true;
                contactData.getDeviceData().setDeviceId(contactData.getDeviceId());
            }
        }
        loadContext.e.setValue("contactRemovedOrAddedToContactListKey", Boolean.valueOf(z));
        super.a(loadContext);
    }

    @Override // com.callapp.contacts.loader.DeviceIdAndPhoneBasedContactLoader
    public final void c(LoadContext loadContext) {
        final ContactData contactData = loadContext.f14535a;
        Set<ContactField> set = loadContext.f14536b;
        MultiTaskRunner b2 = loadContext.b();
        boolean booleanValue = ((Boolean) loadContext.e.getValue("contactRemovedOrAddedToContactListKey")).booleanValue();
        if (!contactData.isContactInDevice()) {
            contactData.clearDeviceData();
            if (set.contains(ContactField.imAddresses)) {
                contactData.setWhatsAppDataExtraction(IMDataExtractionUtils.a(IMDataExtractionUtils.RecognizedPersonOrigin.WHATSAPP, contactData.getPhone()));
            }
        } else {
            if (set.contains(ContactField.phones)) {
                b2.a(new LoadPhonesTask(contactData));
            }
            if (set.contains(ContactField.emails)) {
                b2.a(new LoadEmailsTask(contactData));
            }
            if (set.contains(ContactField.imAddresses)) {
                b2.a(new LoadImFromRawContactsTask(contactData));
            }
            if (set.contains(ContactField.addresses)) {
                b2.a(new LoadAddressesTask(contactData));
            }
            boolean contains = set.contains(ContactField.organizations);
            boolean contains2 = set.contains(ContactField.websites);
            boolean a2 = CollectionUtils.a(set, ContactField.events, ContactField.birthday);
            boolean contains3 = set.contains(ContactField.imAddresses);
            if (contains || contains2 || a2 || contains3) {
                b2.a(new LoadContactsContractData(contactData, contains, contains2, a2, contains3));
            }
            if (set.contains(ContactField.names)) {
                b2.a(new LoadNamesTask(contactData));
            }
            if (booleanValue && set.contains(ContactField.fullName)) {
                b2.a(new Task() { // from class: com.callapp.contacts.loader.device.DeviceDataLoader.1
                    @Override // com.callapp.contacts.manager.task.Task
                    public void doTask() {
                        DeviceIdLoader.DeviceDataResult a3 = DeviceIdLoader.a(contactData.getPhone().getRawNumber(), contactData.getDeviceId(), true, true, true);
                        if (a3 != null) {
                            contactData.getDeviceData().setFullName(a3.f14605b);
                            contactData.updateFullName();
                        }
                    }
                });
            }
        }
        if (booleanValue || CollectionUtils.a((Set) set, (Set) ContactFieldEnumSets.SOCIAL_NETWORKS_IDS)) {
            b2.a(new LoadSocialNetworksIdTask(contactData));
        }
        loadContext.a(b2, this.f14493d);
        if (booleanValue) {
            CallLogViewHolder.n();
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

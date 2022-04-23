package com.callapp.contacts.manager;

import android.util.Pair;
import b.a;
import com.callapp.contacts.loader.api.ContactLoader;
import com.callapp.contacts.manager.task.Task;
import com.callapp.contacts.model.contact.ContactData;
import com.callapp.contacts.model.contact.ContactDataChangeListener;
import com.callapp.contacts.model.contact.ContactField;
import com.callapp.contacts.model.contact.social.ContactFieldEnumSets;
import com.callapp.contacts.model.objectbox.ExtractedInfo;
import com.callapp.contacts.util.CLog;
import com.callapp.framework.phone.Phone;
import com.callapp.framework.util.StringUtils;
import java.util.HashMap;
import java.util.Set;
/* loaded from: classes2-dex2jar.jar:com/callapp/contacts/manager/ContactLoaderManager.class */
public class ContactLoaderManager implements ManagedLifecycle, ContactDataChangeListener {
    private final Object contactLoadersLock = new Object();
    private HashMap<Phone, ContactLoader> contactLoaders = new HashMap<>();
    private HashMap<Phone, Task> cancelTasks = new HashMap<>();

    private void cancelContactLoaderCancelTask(Phone phone) {
        Task task = this.cancelTasks.get(phone);
        if (task != null && !task.isCancelled()) {
            task.cancel();
            this.cancelTasks.remove(phone);
        }
    }

    public static boolean checkIfWeHaveNameForNonContact(ContactData contactData) {
        return !contactData.isContactInDevice() && StringUtils.b((CharSequence) contactData.getFullName()) && !contactData.isVoiceMail();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public ContactLoader createContactLoaderAndLoad(Phone phone, long j, boolean z, ExtractedInfo extractedInfo) {
        ContactLoader contactLoader;
        synchronized (this.contactLoadersLock) {
            ContactLoader contactLoader2 = this.contactLoaders.get(phone);
            contactLoader = contactLoader2;
            if (contactLoader2 == null) {
                CLog.a(ContactLoaderManager.class, "Create new unbounded ContactLoader for phone: ".concat(String.valueOf(phone)));
                contactLoader = createFullContactDetailsStackLoader(z);
                this.contactLoaders.put(phone, contactLoader);
                scheduleCancelingContactLoader(z ? contactLoader.loadSelfContact(phone) : contactLoader.load(phone, j, extractedInfo), true);
            }
        }
        return contactLoader;
    }

    private ContactLoader createFullContactDetailsStackLoader(boolean z) {
        return new ContactLoader().addAllFields().addContactDetailsStack(z).setForceRefresh().setIterativeLoad();
    }

    public static ContactLoaderManager get() {
        return Singletons.get().getContactLoaderManager();
    }

    private Pair<ContactData, Set<ContactField>> registerForContactDetailsStack(Phone phone, ExtractedInfo extractedInfo, long j, ContactDataChangeListener contactDataChangeListener, Set<ContactField> set, boolean z) {
        ContactLoader contactLoader;
        final Pair<ContactData, Set<ContactField>> pair;
        synchronized (this.contactLoadersLock) {
            ContactLoader contactLoader2 = this.contactLoaders.get(phone);
            if (contactLoader2 == null) {
                CLog.a(ContactLoaderManager.class, "Create new ContactLoader for phone: ".concat(String.valueOf(phone)));
                contactLoader = createContactLoaderAndLoad(phone, j, z, extractedInfo);
            } else {
                if (contactLoader2.getContact().getPhoneOrigin() != extractedInfo) {
                    contactLoader2.getContact().setPhoneOrigin(extractedInfo);
                    contactLoader2.getContact().setRecognized(false);
                }
                if (contactDataChangeListener != null) {
                    cancelContactLoaderCancelTask(phone);
                }
                CLog.a(ContactLoaderManager.class, "Reusing ContactLoader for phone: ".concat(String.valueOf(phone)));
                contactLoader = contactLoader2;
            }
            if (contactDataChangeListener != null) {
                contactLoader.addListener(contactDataChangeListener, set);
            }
            boolean addListener = contactLoader.addListener(this, ContactFieldEnumSets.ALL);
            pair = new Pair<>(contactLoader.getContact(), contactLoader.getContact().getPastChangedFields());
            if (addListener && pair.first != null && StringUtils.b((CharSequence) ((ContactData) pair.first).getFullName())) {
                a.C0124a aVar = a.f6247a;
                a.C0124a.a(new Task() { // from class: com.callapp.contacts.manager.ContactLoaderManager.3
                    @Override // com.callapp.contacts.manager.task.Task
                    public void doTask() {
                        ContactLoaderManager.this.onContactChanged((ContactData) pair.first, (Set) pair.second);
                    }
                });
            }
        }
        return pair;
    }

    private void scheduleCancelingContactLoader(final ContactData contactData, boolean z) {
        if (contactData != null) {
            synchronized (this.contactLoadersLock) {
                cancelContactLoaderCancelTask(contactData.getPhone());
                Task task = new Task() { // from class: com.callapp.contacts.manager.ContactLoaderManager.2
                    @Override // com.callapp.contacts.manager.task.Task
                    public void doTask() {
                        synchronized (ContactLoaderManager.this.contactLoadersLock) {
                            Phone phone = contactData.getPhone();
                            ContactLoader contactLoader = (ContactLoader) ContactLoaderManager.this.contactLoaders.get(phone);
                            if (contactLoader != null) {
                                if (contactLoader.getListenersCount() > 1 || contactLoader.removeListener(ContactLoaderManager.this) != 0) {
                                    CLog.a(ContactLoaderManager.class, "Cancelling stopping ContactLoader for phone: ".concat(String.valueOf(phone)));
                                } else {
                                    CLog.a(ContactLoaderManager.class, "Stopping ContactLoader for phone: ".concat(String.valueOf(phone)));
                                    contactLoader.stopLoading(contactData);
                                    ContactLoaderManager.this.contactLoaders.remove(phone);
                                }
                            }
                            if (ContactLoaderManager.this.cancelTasks.get(phone) == this) {
                                ContactLoaderManager.this.cancelTasks.remove(phone);
                            }
                        }
                    }
                };
                if (z) {
                    task.schedule(10000);
                    this.cancelTasks.put(contactData.getPhone(), task);
                } else {
                    task.execute();
                }
            }
        }
    }

    public void asyncCreateContactLoaderAndLoad(final Phone phone, final long j, final ExtractedInfo extractedInfo) {
        new Task() { // from class: com.callapp.contacts.manager.ContactLoaderManager.1
            @Override // com.callapp.contacts.manager.task.Task
            public void doTask() {
                ContactLoaderManager.this.createContactLoaderAndLoad(phone, j, false, extractedInfo);
            }
        }.execute();
    }

    public ContactLoader createSelfContactStackLoader() {
        return new ContactLoader().addAllFields().addSelfContactStack().setForceRefresh().setIterativeLoad().removeField(ContactField.suggestions);
    }

    @Override // com.callapp.contacts.manager.ManagedLifecycle
    public void destroy() {
    }

    public Pair<ContactData, Set<ContactField>> getContactDataOnlyIfAlreadyLoaded(Phone phone, long j) {
        synchronized (this.contactLoadersLock) {
            ContactLoader contactLoader = this.contactLoaders.get(phone);
            if (contactLoader == null) {
                return null;
            }
            return new Pair<>(contactLoader.getContact(), contactLoader.getContact().getPastChangedFields());
        }
    }

    @Override // com.callapp.contacts.manager.ManagedLifecycle
    public void init() {
    }

    /* JADX WARN: Removed duplicated region for block: B:67:0x01f4  */
    /* JADX WARN: Removed duplicated region for block: B:68:0x0207  */
    @Override // com.callapp.contacts.model.contact.ContactDataChangeListener
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void onContactChanged(com.callapp.contacts.model.contact.ContactData r8, java.util.Set<com.callapp.contacts.model.contact.ContactField> r9) {
        /*
            Method dump skipped, instructions count: 552
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.callapp.contacts.manager.ContactLoaderManager.onContactChanged(com.callapp.contacts.model.contact.ContactData, java.util.Set):void");
    }

    public Pair<ContactData, Set<ContactField>> registerForContactDetailsStack(Phone phone, long j, ContactDataChangeListener contactDataChangeListener, Set<ContactField> set) {
        return registerForContactDetailsStack(phone, null, j, contactDataChangeListener, set, false);
    }

    public Pair<ContactData, Set<ContactField>> registerForContactDetailsStack(Phone phone, ExtractedInfo extractedInfo, long j, ContactDataChangeListener contactDataChangeListener, Set<ContactField> set) {
        return registerForContactDetailsStack(phone, extractedInfo, j, contactDataChangeListener, set, false);
    }

    public Pair<ContactData, Set<ContactField>> registerForContactDetailsStackForSelfContact(Phone phone, long j, ContactDataChangeListener contactDataChangeListener, Set<ContactField> set) {
        return registerForContactDetailsStack(phone, null, j, contactDataChangeListener, set, true);
    }

    public void unRegisterForContactDetailsStack(ContactData contactData, ContactDataChangeListener contactDataChangeListener) {
        unRegisterForContactDetailsStack(contactData, contactDataChangeListener, true);
    }

    public void unRegisterForContactDetailsStack(ContactData contactData, ContactDataChangeListener contactDataChangeListener, boolean z) {
        synchronized (this.contactLoadersLock) {
            if (contactData != null) {
                Phone phone = contactData.getPhone();
                ContactLoader contactLoader = this.contactLoaders.get(phone);
                if (contactLoader != null && contactLoader.removeListener(contactDataChangeListener) <= 1 && contactLoader.removeListener(this) == 0) {
                    CLog.a(ContactLoaderManager.class, "Scheduling stopping ContactLoader task for phone: ".concat(String.valueOf(phone)));
                    scheduleCancelingContactLoader(contactData, z);
                }
            }
        }
    }
}

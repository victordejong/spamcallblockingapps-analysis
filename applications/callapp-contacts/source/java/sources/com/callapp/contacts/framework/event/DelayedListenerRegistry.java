package com.callapp.contacts.framework.event;

import com.callapp.contacts.loader.api.ContactLoader;
import com.callapp.contacts.manager.task.Task;
import com.callapp.contacts.model.contact.ContactData;
import com.callapp.contacts.model.contact.ContactDataChangeListener;
import com.callapp.contacts.model.contact.ContactField;
import com.callapp.contacts.model.contact.social.ContactFieldEnumSets;
import com.callapp.contacts.util.CLog;
import com.callapp.framework.util.CollectionUtils;
import java.util.Map;
import java.util.Set;
import java.util.concurrent.ConcurrentHashMap;
import kotlinx.coroutines.C20172az;
import p091b.C3170a;
/* loaded from: classes2-dex2jar.jar:com/callapp/contacts/framework/event/DelayedListenerRegistry.class */
public class DelayedListenerRegistry implements FieldListenerRegistry {

    /* renamed from: b */
    ContactData f25183b;

    /* renamed from: c */
    protected final ContactLoader f25184c;

    /* renamed from: a */
    protected final Map<ContactDataChangeListener, Set<ContactField>> f25182a = new ConcurrentHashMap();

    /* renamed from: e */
    private boolean f25186e = true;

    /* renamed from: f */
    private final Task f25187f = new Task() { // from class: com.callapp.contacts.framework.event.DelayedListenerRegistry.1
        @Override // com.callapp.contacts.manager.task.Task
        public void doTask() {
            final Set set;
            DelayedListenerRegistry.this.f25186e = true;
            synchronized (DelayedListenerRegistry.this) {
                set = DelayedListenerRegistry.this.f25185d;
                DelayedListenerRegistry.this.f25185d = ContactFieldEnumSets.NONE.clone();
            }
            CLog.m27610a(DelayedListenerRegistry.class, "notifyTask Firing %s", set);
            for (final Map.Entry<ContactDataChangeListener, Set<ContactField>> entry : DelayedListenerRegistry.this.f25182a.entrySet()) {
                if (CollectionUtils.m26070a(set, (Set) entry.getValue())) {
                    C3170a.C3171a c3171a = C3170a.f11528a;
                    C3170a.C3171a.m39249a(new Task() { // from class: com.callapp.contacts.framework.event.DelayedListenerRegistry.1.1
                        @Override // com.callapp.contacts.manager.task.Task
                        public void doTask() {
                            try {
                                ((ContactDataChangeListener) entry.getKey()).onContactChanged(DelayedListenerRegistry.this.f25183b, set);
                            } catch (RuntimeException e) {
                                CLog.m27596b(DelayedListenerRegistry.class, e);
                            }
                        }
                    });
                }
            }
        }
    };

    /* renamed from: d */
    private Set<ContactField> f25185d = ContactFieldEnumSets.NONE.clone();

    public DelayedListenerRegistry(ContactLoader contactLoader) {
        this.f25184c = contactLoader;
    }

    @Override // com.callapp.contacts.framework.event.FieldListenerRegistry
    /* renamed from: a */
    public final void mo28983a(ContactDataChangeListener contactDataChangeListener) {
        this.f25182a.remove(contactDataChangeListener);
    }

    @Override // com.callapp.contacts.framework.event.FieldListenerRegistry
    /* renamed from: a */
    public final void mo28982a(ContactDataChangeListener contactDataChangeListener, Set<ContactField> set) {
        this.f25182a.put(contactDataChangeListener, set);
    }

    @Override // com.callapp.contacts.framework.event.FieldListenerRegistry
    /* renamed from: a */
    public final void mo28981a(Set<ContactField> set) {
        synchronized (this) {
            this.f25185d.addAll(set);
        }
        if (this.f25186e) {
            C3170a.C3171a c3171a = C3170a.f11528a;
            C3170a.C3171a.m39248a(this.f25187f, 200L, C20172az.m1061a());
            this.f25186e = false;
        }
    }

    @Override // com.callapp.contacts.framework.event.FieldListenerRegistry
    public void setValue(ContactData contactData) {
        this.f25183b = contactData;
    }
}

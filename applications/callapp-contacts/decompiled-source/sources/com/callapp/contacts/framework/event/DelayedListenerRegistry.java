package com.callapp.contacts.framework.event;

import b.a;
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
import kotlinx.coroutines.az;
/* loaded from: classes2-dex2jar.jar:com/callapp/contacts/framework/event/DelayedListenerRegistry.class */
public class DelayedListenerRegistry implements FieldListenerRegistry {

    /* renamed from: b  reason: collision with root package name */
    ContactData f14405b;

    /* renamed from: c  reason: collision with root package name */
    protected final ContactLoader f14406c;

    /* renamed from: a  reason: collision with root package name */
    protected final Map<ContactDataChangeListener, Set<ContactField>> f14404a = new ConcurrentHashMap();
    private boolean e = true;
    private final Task f = new Task() { // from class: com.callapp.contacts.framework.event.DelayedListenerRegistry.1
        @Override // com.callapp.contacts.manager.task.Task
        public void doTask() {
            final Set set;
            DelayedListenerRegistry.this.e = true;
            synchronized (DelayedListenerRegistry.this) {
                set = DelayedListenerRegistry.this.f14407d;
                DelayedListenerRegistry.this.f14407d = ContactFieldEnumSets.NONE.clone();
            }
            CLog.a(DelayedListenerRegistry.class, "notifyTask Firing %s", set);
            for (final Map.Entry<ContactDataChangeListener, Set<ContactField>> entry : DelayedListenerRegistry.this.f14404a.entrySet()) {
                if (CollectionUtils.a(set, (Set) entry.getValue())) {
                    a.C0124a aVar = a.f6247a;
                    a.C0124a.a(new Task() { // from class: com.callapp.contacts.framework.event.DelayedListenerRegistry.1.1
                        @Override // com.callapp.contacts.manager.task.Task
                        public void doTask() {
                            try {
                                ((ContactDataChangeListener) entry.getKey()).onContactChanged(DelayedListenerRegistry.this.f14405b, set);
                            } catch (RuntimeException e) {
                                CLog.b(DelayedListenerRegistry.class, e);
                            }
                        }
                    });
                }
            }
        }
    };

    /* renamed from: d  reason: collision with root package name */
    private Set<ContactField> f14407d = ContactFieldEnumSets.NONE.clone();

    public DelayedListenerRegistry(ContactLoader contactLoader) {
        this.f14406c = contactLoader;
    }

    @Override // com.callapp.contacts.framework.event.FieldListenerRegistry
    public final void a(ContactDataChangeListener contactDataChangeListener) {
        this.f14404a.remove(contactDataChangeListener);
    }

    @Override // com.callapp.contacts.framework.event.FieldListenerRegistry
    public final void a(ContactDataChangeListener contactDataChangeListener, Set<ContactField> set) {
        this.f14404a.put(contactDataChangeListener, set);
    }

    @Override // com.callapp.contacts.framework.event.FieldListenerRegistry
    public final void a(Set<ContactField> set) {
        synchronized (this) {
            this.f14407d.addAll(set);
        }
        if (this.e) {
            a.C0124a aVar = a.f6247a;
            a.C0124a.a(this.f, 200L, az.a());
            this.e = false;
        }
    }

    @Override // com.callapp.contacts.framework.event.FieldListenerRegistry
    public void setValue(ContactData contactData) {
        this.f14405b = contactData;
    }
}

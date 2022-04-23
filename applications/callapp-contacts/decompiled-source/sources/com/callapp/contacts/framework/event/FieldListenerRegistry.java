package com.callapp.contacts.framework.event;

import com.callapp.contacts.model.contact.ContactData;
import com.callapp.contacts.model.contact.ContactDataChangeListener;
import com.callapp.contacts.model.contact.ContactField;
import java.util.Set;
/* loaded from: classes2-dex2jar.jar:com/callapp/contacts/framework/event/FieldListenerRegistry.class */
public interface FieldListenerRegistry {
    void a(ContactDataChangeListener contactDataChangeListener);

    void a(ContactDataChangeListener contactDataChangeListener, Set<ContactField> set);

    void a(Set<ContactField> set);

    void setValue(ContactData contactData);
}

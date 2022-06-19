package com.callapp.contacts.framework.event;

import com.callapp.contacts.model.contact.ContactData;
import com.callapp.contacts.model.contact.ContactDataChangeListener;
import com.callapp.contacts.model.contact.ContactField;
import java.util.Set;
/* loaded from: classes2-dex2jar.jar:com/callapp/contacts/framework/event/FieldListenerRegistry.class */
public interface FieldListenerRegistry {
    /* renamed from: a */
    void mo28983a(ContactDataChangeListener contactDataChangeListener);

    /* renamed from: a */
    void mo28982a(ContactDataChangeListener contactDataChangeListener, Set<ContactField> set);

    /* renamed from: a */
    void mo28981a(Set<ContactField> set);

    void setValue(ContactData contactData);
}

package com.callapp.contacts.framework.event;

import com.callapp.contacts.model.contact.ContactData;
import com.callapp.contacts.model.contact.ContactDataChangeListener;
import com.callapp.contacts.model.contact.ContactField;
import java.util.Set;
/* loaded from: classes2-dex2jar.jar:com/callapp/contacts/framework/event/NopListenerRegistry.class */
public class NopListenerRegistry implements FieldListenerRegistry {

    /* renamed from: a  reason: collision with root package name */
    private static final NopListenerRegistry f14412a = new NopListenerRegistry();

    public static NopListenerRegistry get() {
        return f14412a;
    }

    @Override // com.callapp.contacts.framework.event.FieldListenerRegistry
    public final void a(ContactDataChangeListener contactDataChangeListener) {
    }

    @Override // com.callapp.contacts.framework.event.FieldListenerRegistry
    public final void a(ContactDataChangeListener contactDataChangeListener, Set<ContactField> set) {
    }

    @Override // com.callapp.contacts.framework.event.FieldListenerRegistry
    public final void a(Set<ContactField> set) {
    }

    @Override // com.callapp.contacts.framework.event.FieldListenerRegistry
    public void setValue(ContactData contactData) {
    }
}

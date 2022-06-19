package com.callapp.contacts.framework.event;

import com.callapp.contacts.model.contact.ContactData;
import com.callapp.contacts.model.contact.ContactDataChangeListener;
import com.callapp.contacts.model.contact.ContactField;
import java.util.Set;
/* loaded from: classes2-dex2jar.jar:com/callapp/contacts/framework/event/NopListenerRegistry.class */
public class NopListenerRegistry implements FieldListenerRegistry {

    /* renamed from: a */
    private static final NopListenerRegistry f25192a = new NopListenerRegistry();

    public static NopListenerRegistry get() {
        return f25192a;
    }

    @Override // com.callapp.contacts.framework.event.FieldListenerRegistry
    /* renamed from: a */
    public final void mo28983a(ContactDataChangeListener contactDataChangeListener) {
    }

    @Override // com.callapp.contacts.framework.event.FieldListenerRegistry
    /* renamed from: a */
    public final void mo28982a(ContactDataChangeListener contactDataChangeListener, Set<ContactField> set) {
    }

    @Override // com.callapp.contacts.framework.event.FieldListenerRegistry
    /* renamed from: a */
    public final void mo28981a(Set<ContactField> set) {
    }

    @Override // com.callapp.contacts.framework.event.FieldListenerRegistry
    public void setValue(ContactData contactData) {
    }
}

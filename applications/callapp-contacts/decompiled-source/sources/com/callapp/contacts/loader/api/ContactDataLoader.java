package com.callapp.contacts.loader.api;

import com.callapp.contacts.model.contact.ContactField;
import java.util.Set;
/* loaded from: classes2-dex2jar.jar:com/callapp/contacts/loader/api/ContactDataLoader.class */
public interface ContactDataLoader {

    /* loaded from: classes2-dex2jar.jar:com/callapp/contacts/loader/api/ContactDataLoader$_CC.class */
    public final /* synthetic */ class _CC {
        public static void $default$b(ContactDataLoader contactDataLoader) {
        }
    }

    void a(LoadContext loadContext, boolean z);

    void b();

    void b(LoadContext loadContext);

    Set<ContactField> getListenFields();
}

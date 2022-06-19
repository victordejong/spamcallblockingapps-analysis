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

    /* renamed from: a */
    void mo28873a(LoadContext loadContext, boolean z);

    /* renamed from: b */
    void mo28872b();

    /* renamed from: b */
    void mo28789b(LoadContext loadContext);

    Set<ContactField> getListenFields();
}

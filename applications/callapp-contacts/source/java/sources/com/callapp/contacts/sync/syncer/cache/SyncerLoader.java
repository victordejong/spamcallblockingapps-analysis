package com.callapp.contacts.sync.syncer.cache;

import com.callapp.contacts.loader.BaseCompoundLoader;
import com.callapp.contacts.loader.SimpleContactLoader;
import com.callapp.contacts.loader.api.LoadContext;
import com.callapp.contacts.model.contact.ContactField;
/* loaded from: classes2-dex2jar.jar:com/callapp/contacts/sync/syncer/cache/SyncerLoader.class */
public abstract class SyncerLoader extends BaseCompoundLoader {
    public SyncerLoader() {
        super(true);
    }

    @Override // com.callapp.contacts.loader.BaseCompoundLoader
    /* renamed from: a */
    public final void mo27728a(SimpleContactLoader simpleContactLoader, LoadContext loadContext) {
        loadContext.f25323b.add(ContactField.photoUrl);
        simpleContactLoader.mo28873a(loadContext, this.f25279d);
    }
}

package com.callapp.contacts.loader.device;

import com.callapp.contacts.framework.util.MultiTaskRunner;
import com.callapp.contacts.loader.LocalGenomeLoader;
import com.callapp.contacts.loader.SimpleContactLoader;
import com.callapp.contacts.loader.api.ContactDataLoader;
import com.callapp.contacts.loader.api.LoadContext;
import com.callapp.contacts.manager.task.Task;
import com.callapp.contacts.model.contact.ContactField;
import com.callapp.contacts.model.contact.social.ContactFieldEnumSets;
import java.util.List;
import java.util.Set;
/* loaded from: classes2-dex2jar.jar:com/callapp/contacts/loader/device/CacheLoader.class */
public class CacheLoader extends SimpleContactLoader {

    /* loaded from: classes2-dex2jar.jar:com/callapp/contacts/loader/device/CacheLoader$LoadFromCacheTask.class */
    public static final class LoadFromCacheTask extends Task {

        /* renamed from: a */
        private final LoadContext f25383a;

        /* renamed from: b */
        private final ContactDataLoader f25384b;

        LoadFromCacheTask(LoadContext loadContext, ContactDataLoader contactDataLoader) {
            this.f25383a = loadContext;
            this.f25384b = contactDataLoader;
        }

        @Override // com.callapp.contacts.manager.task.Task
        public final void doTask() {
            this.f25384b.mo28789b(this.f25383a);
        }
    }

    /* renamed from: a */
    public static void m28858a(LoadContext loadContext, List<? extends ContactDataLoader> list, boolean z) {
        MultiTaskRunner m28862b = loadContext.m28862b();
        for (ContactDataLoader contactDataLoader : list) {
            if (contactDataLoader instanceof LocalGenomeLoader) {
                contactDataLoader.mo28789b(loadContext);
            } else {
                m28862b.m28974a(new LoadFromCacheTask(loadContext, contactDataLoader));
            }
        }
        loadContext.m28868a(m28862b, z);
    }

    @Override // com.callapp.contacts.loader.SimpleContactLoader
    /* renamed from: a */
    public final void mo27726a(LoadContext loadContext) {
        m28858a(loadContext, loadContext.getLoaders(), this.f25279d);
    }

    @Override // com.callapp.contacts.loader.api.ContactDataLoader
    public Set<ContactField> getListenFields() {
        return ContactFieldEnumSets.DEVICE_ID;
    }
}

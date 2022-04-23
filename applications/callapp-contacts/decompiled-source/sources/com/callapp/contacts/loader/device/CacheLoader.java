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

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes2-dex2jar.jar:com/callapp/contacts/loader/device/CacheLoader$LoadFromCacheTask.class */
    public static final class LoadFromCacheTask extends Task {

        /* renamed from: a  reason: collision with root package name */
        private final LoadContext f14594a;

        /* renamed from: b  reason: collision with root package name */
        private final ContactDataLoader f14595b;

        LoadFromCacheTask(LoadContext loadContext, ContactDataLoader contactDataLoader) {
            this.f14594a = loadContext;
            this.f14595b = contactDataLoader;
        }

        @Override // com.callapp.contacts.manager.task.Task
        public final void doTask() {
            this.f14595b.b(this.f14594a);
        }
    }

    public static void a(LoadContext loadContext, List<? extends ContactDataLoader> list, boolean z) {
        MultiTaskRunner b2 = loadContext.b();
        for (ContactDataLoader contactDataLoader : list) {
            if (contactDataLoader instanceof LocalGenomeLoader) {
                contactDataLoader.b(loadContext);
            } else {
                b2.a(new LoadFromCacheTask(loadContext, contactDataLoader));
            }
        }
        loadContext.a(b2, z);
    }

    @Override // com.callapp.contacts.loader.SimpleContactLoader
    public final void a(LoadContext loadContext) {
        a(loadContext, loadContext.getLoaders(), this.f14493d);
    }

    @Override // com.callapp.contacts.loader.api.ContactDataLoader
    public Set<ContactField> getListenFields() {
        return ContactFieldEnumSets.DEVICE_ID;
    }
}

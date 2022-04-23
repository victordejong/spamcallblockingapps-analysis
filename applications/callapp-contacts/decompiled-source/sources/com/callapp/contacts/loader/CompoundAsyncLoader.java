package com.callapp.contacts.loader;

import com.callapp.contacts.framework.util.MultiTaskRunner;
import com.callapp.contacts.loader.api.LoadContext;
import com.callapp.contacts.manager.task.Task;
import com.callapp.contacts.model.contact.ContactField;
import com.callapp.contacts.util.CLog;
import com.callapp.framework.util.CollectionUtils;
import java.util.ArrayList;
import java.util.Set;
/* loaded from: classes2-dex2jar.jar:com/callapp/contacts/loader/CompoundAsyncLoader.class */
public class CompoundAsyncLoader extends BaseCompoundLoader {
    public CompoundAsyncLoader() {
    }

    public CompoundAsyncLoader(boolean z, SimpleContactLoader... simpleContactLoaderArr) {
        super(z, simpleContactLoaderArr);
    }

    @Override // com.callapp.contacts.loader.BaseCompoundLoader
    protected final void a(SimpleContactLoader simpleContactLoader, LoadContext loadContext) {
    }

    @Override // com.callapp.contacts.loader.BaseCompoundLoader, com.callapp.contacts.loader.SimpleContactLoader
    public final void a(final LoadContext loadContext) {
        if (this.f14428a instanceof ArrayList) {
            ((ArrayList) this.f14428a).trimToSize();
        }
        MultiTaskRunner b2 = loadContext.b();
        Set<ContactField> set = loadContext.f14537c;
        for (final SimpleContactLoader simpleContactLoader : this.f14428a) {
            if (set == null || CollectionUtils.a((Set) set, (Set) simpleContactLoader.getListenFields())) {
                b2.a(new Task() { // from class: com.callapp.contacts.loader.CompoundAsyncLoader.1
                    @Override // com.callapp.contacts.manager.task.Task
                    public void doTask() {
                        long currentTimeMillis = System.currentTimeMillis();
                        simpleContactLoader.a(loadContext, true);
                        CLog.a(CompoundAsyncLoader.class, simpleContactLoader.toString() + ".load() took " + (System.currentTimeMillis() - currentTimeMillis));
                    }
                });
            }
        }
        loadContext.a(b2, this.f14493d);
    }
}

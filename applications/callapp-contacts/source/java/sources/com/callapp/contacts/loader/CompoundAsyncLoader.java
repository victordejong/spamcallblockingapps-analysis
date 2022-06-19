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
    /* renamed from: a */
    protected final void mo27728a(SimpleContactLoader simpleContactLoader, LoadContext loadContext) {
    }

    @Override // com.callapp.contacts.loader.BaseCompoundLoader, com.callapp.contacts.loader.SimpleContactLoader
    /* renamed from: a */
    public final void mo27726a(final LoadContext loadContext) {
        if (this.f25211a instanceof ArrayList) {
            ((ArrayList) this.f25211a).trimToSize();
        }
        MultiTaskRunner m28862b = loadContext.m28862b();
        Set<ContactField> set = loadContext.f25324c;
        for (final SimpleContactLoader simpleContactLoader : this.f25211a) {
            if (set == null || CollectionUtils.m26070a((Set) set, (Set) simpleContactLoader.getListenFields())) {
                m28862b.m28974a(new Task() { // from class: com.callapp.contacts.loader.CompoundAsyncLoader.1
                    @Override // com.callapp.contacts.manager.task.Task
                    public void doTask() {
                        long currentTimeMillis = System.currentTimeMillis();
                        simpleContactLoader.mo28873a(loadContext, true);
                        CLog.m27611a(CompoundAsyncLoader.class, simpleContactLoader.toString() + ".load() took " + (System.currentTimeMillis() - currentTimeMillis));
                    }
                });
            }
        }
        loadContext.m28868a(m28862b, this.f25279d);
    }
}

package com.callapp.contacts.loader;

import com.callapp.contacts.loader.api.LoadContext;
import com.callapp.contacts.loader.device.CacheLoader;
import com.callapp.contacts.model.contact.ContactField;
import com.callapp.contacts.model.contact.social.ContactFieldEnumSets;
import com.callapp.contacts.util.CLog;
import java.util.ArrayList;
import java.util.List;
import java.util.Set;
/* loaded from: classes2-dex2jar.jar:com/callapp/contacts/loader/BaseCompoundLoader.class */
public abstract class BaseCompoundLoader extends SimpleContactLoader {

    /* renamed from: a */
    protected final List<SimpleContactLoader> f25211a;

    /* renamed from: b */
    protected final Set<ContactField> f25212b;

    /* renamed from: c */
    protected final boolean f25213c;

    public BaseCompoundLoader() {
        this(false);
    }

    public BaseCompoundLoader(boolean z) {
        this.f25211a = new ArrayList();
        this.f25212b = ContactFieldEnumSets.NONE.clone();
        this.f25213c = z;
    }

    public BaseCompoundLoader(boolean z, SimpleContactLoader... simpleContactLoaderArr) {
        this(z);
        for (SimpleContactLoader simpleContactLoader : simpleContactLoaderArr) {
            m28957a(simpleContactLoader);
        }
    }

    /* renamed from: a */
    public final BaseCompoundLoader m28957a(SimpleContactLoader simpleContactLoader) {
        this.f25211a.add(simpleContactLoader);
        this.f25212b.addAll(simpleContactLoader.getListenFields());
        return this;
    }

    /* renamed from: a */
    protected abstract void mo27728a(SimpleContactLoader simpleContactLoader, LoadContext loadContext);

    @Override // com.callapp.contacts.loader.SimpleContactLoader
    /* renamed from: a */
    public void mo27726a(LoadContext loadContext) {
        List<SimpleContactLoader> list = this.f25211a;
        if (list instanceof ArrayList) {
            ((ArrayList) list).trimToSize();
        }
        Set<ContactField> set = loadContext.f25324c;
        for (SimpleContactLoader simpleContactLoader : this.f25211a) {
            if (loadContext.isStopped()) {
                return;
            }
            if (loadContext.m28867a(simpleContactLoader, set)) {
                try {
                    mo27728a(simpleContactLoader, loadContext);
                } catch (RuntimeException e) {
                    CLog.m27586c(getClass(), e, "Error loading %s", simpleContactLoader.getClass().getSimpleName());
                }
            }
        }
    }

    @Override // com.callapp.contacts.loader.SimpleContactLoader, com.callapp.contacts.loader.api.ContactDataLoader
    /* renamed from: b */
    public final void mo28789b(LoadContext loadContext) {
        if (this.f25213c) {
            CacheLoader.m28858a(loadContext, this.f25211a, this.f25279d);
        }
    }

    @Override // com.callapp.contacts.loader.api.ContactDataLoader
    public Set<ContactField> getListenFields() {
        return this.f25212b;
    }
}

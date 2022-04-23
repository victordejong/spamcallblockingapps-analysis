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

    /* renamed from: a  reason: collision with root package name */
    protected final List<SimpleContactLoader> f14428a;

    /* renamed from: b  reason: collision with root package name */
    protected final Set<ContactField> f14429b;

    /* renamed from: c  reason: collision with root package name */
    protected final boolean f14430c;

    public BaseCompoundLoader() {
        this(false);
    }

    public BaseCompoundLoader(boolean z) {
        this.f14428a = new ArrayList();
        this.f14429b = ContactFieldEnumSets.NONE.clone();
        this.f14430c = z;
    }

    public BaseCompoundLoader(boolean z, SimpleContactLoader... simpleContactLoaderArr) {
        this(z);
        for (SimpleContactLoader simpleContactLoader : simpleContactLoaderArr) {
            a(simpleContactLoader);
        }
    }

    public final BaseCompoundLoader a(SimpleContactLoader simpleContactLoader) {
        this.f14428a.add(simpleContactLoader);
        this.f14429b.addAll(simpleContactLoader.getListenFields());
        return this;
    }

    protected abstract void a(SimpleContactLoader simpleContactLoader, LoadContext loadContext);

    @Override // com.callapp.contacts.loader.SimpleContactLoader
    public void a(LoadContext loadContext) {
        List<SimpleContactLoader> list = this.f14428a;
        if (list instanceof ArrayList) {
            ((ArrayList) list).trimToSize();
        }
        Set<ContactField> set = loadContext.f14537c;
        for (SimpleContactLoader simpleContactLoader : this.f14428a) {
            if (loadContext.isStopped()) {
                return;
            }
            if (loadContext.a(simpleContactLoader, set)) {
                try {
                    a(simpleContactLoader, loadContext);
                } catch (RuntimeException e) {
                    CLog.c(getClass(), e, "Error loading %s", simpleContactLoader.getClass().getSimpleName());
                }
            }
        }
    }

    @Override // com.callapp.contacts.loader.SimpleContactLoader, com.callapp.contacts.loader.api.ContactDataLoader
    public final void b(LoadContext loadContext) {
        if (this.f14430c) {
            CacheLoader.a(loadContext, this.f14428a, this.f14493d);
        }
    }

    @Override // com.callapp.contacts.loader.api.ContactDataLoader
    public Set<ContactField> getListenFields() {
        return this.f14429b;
    }
}

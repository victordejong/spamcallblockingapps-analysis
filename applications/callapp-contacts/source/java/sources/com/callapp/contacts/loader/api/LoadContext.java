package com.callapp.contacts.loader.api;

import com.callapp.contacts.event.Callback;
import com.callapp.contacts.framework.util.MultiTaskRunner;
import com.callapp.contacts.loader.social.QuotaReachedException;
import com.callapp.contacts.manager.task.Task;
import com.callapp.contacts.model.contact.ContactData;
import com.callapp.contacts.model.contact.ContactField;
import java.util.List;
import java.util.Set;
import kotlinx.coroutines.C20172az;
import p091b.C3170a;
/* loaded from: classes2-dex2jar.jar:com/callapp/contacts/loader/api/LoadContext.class */
public class LoadContext {

    /* renamed from: a */
    public final ContactData f25322a;

    /* renamed from: b */
    public final Set<ContactField> f25323b;

    /* renamed from: c */
    public final Set<ContactField> f25324c;

    /* renamed from: d */
    public final Callback<LoadContext> f25325d;

    /* renamed from: e */
    public final ContactLoader f25326e;

    /* renamed from: f */
    boolean f25327f;

    public LoadContext(ContactData contactData, Set<ContactField> set, Set<ContactField> set2, Callback<LoadContext> callback, ContactLoader contactLoader) {
        this.f25325d = callback;
        this.f25322a = contactData;
        this.f25323b = set;
        this.f25324c = set2;
        this.f25326e = contactLoader;
    }

    /* renamed from: a */
    public static void m28866a(Task task) {
        C3170a.C3171a c3171a = C3170a.f11528a;
        C3170a.C3171a.m39249a(task);
    }

    /* renamed from: a */
    public final MultiTaskRunner m28869a() {
        MultiTaskRunner multiTaskRunner = new MultiTaskRunner(C20172az.m1059c());
        multiTaskRunner.f25196a = this.f25322a.getId();
        return multiTaskRunner;
    }

    /* renamed from: a */
    public final void m28868a(MultiTaskRunner multiTaskRunner, boolean z) {
        if (multiTaskRunner != null) {
            if (!z) {
                multiTaskRunner.m28972c();
            } else if (this.f25322a.isInSync()) {
                multiTaskRunner.m28973b();
            } else {
                multiTaskRunner.m28975a();
            }
        }
    }

    /* renamed from: a */
    public final void m28864a(Class<? extends ContactDataLoader> cls, Throwable th) {
        if (!(this.f25326e.flags.contains(LoaderFlags.ignoreQuotaException) && (th instanceof QuotaReachedException))) {
            this.f25326e.stopLoader(cls);
        }
    }

    /* renamed from: a */
    public final void m28863a(Exception exc) {
        this.f25325d.mo28870a(this, exc);
    }

    /* renamed from: a */
    public final boolean m28867a(ContactDataLoader contactDataLoader, Set<ContactField> set) {
        return this.f25326e.shouldLoad(contactDataLoader, set);
    }

    /* renamed from: a */
    public final boolean m28865a(Class<? extends ContactDataLoader> cls) {
        return this.f25326e.isLoaderStopped(cls);
    }

    /* renamed from: b */
    public final MultiTaskRunner m28862b() {
        MultiTaskRunner multiTaskRunner = new MultiTaskRunner();
        multiTaskRunner.f25196a = this.f25322a.getId();
        return multiTaskRunner;
    }

    /* renamed from: c */
    public final void m28861c() {
        for (ContactDataLoader contactDataLoader : getLoaders()) {
            contactDataLoader.mo28872b();
        }
    }

    public Set<LoaderFlags> getFlags() {
        return this.f25326e.flags;
    }

    public List<ContactDataLoader> getLoaders() {
        return this.f25326e.getLoaders();
    }

    public boolean isStopped() {
        return this.f25327f;
    }
}

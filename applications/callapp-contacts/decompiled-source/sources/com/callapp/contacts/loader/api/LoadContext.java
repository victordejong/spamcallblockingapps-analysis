package com.callapp.contacts.loader.api;

import b.a;
import com.callapp.contacts.event.Callback;
import com.callapp.contacts.framework.util.MultiTaskRunner;
import com.callapp.contacts.loader.social.QuotaReachedException;
import com.callapp.contacts.manager.task.Task;
import com.callapp.contacts.model.contact.ContactData;
import com.callapp.contacts.model.contact.ContactField;
import java.util.List;
import java.util.Set;
import kotlinx.coroutines.az;
/* loaded from: classes2-dex2jar.jar:com/callapp/contacts/loader/api/LoadContext.class */
public class LoadContext {

    /* renamed from: a  reason: collision with root package name */
    public final ContactData f14535a;

    /* renamed from: b  reason: collision with root package name */
    public final Set<ContactField> f14536b;

    /* renamed from: c  reason: collision with root package name */
    public final Set<ContactField> f14537c;

    /* renamed from: d  reason: collision with root package name */
    public final Callback<LoadContext> f14538d;
    public final ContactLoader e;
    boolean f;

    public LoadContext(ContactData contactData, Set<ContactField> set, Set<ContactField> set2, Callback<LoadContext> callback, ContactLoader contactLoader) {
        this.f14538d = callback;
        this.f14535a = contactData;
        this.f14536b = set;
        this.f14537c = set2;
        this.e = contactLoader;
    }

    public static void a(Task task) {
        a.C0124a aVar = a.f6247a;
        a.C0124a.a(task);
    }

    public final MultiTaskRunner a() {
        MultiTaskRunner multiTaskRunner = new MultiTaskRunner(az.c());
        multiTaskRunner.f14416a = this.f14535a.getId();
        return multiTaskRunner;
    }

    public final void a(MultiTaskRunner multiTaskRunner, boolean z) {
        if (multiTaskRunner == null) {
            return;
        }
        if (!z) {
            multiTaskRunner.c();
        } else if (this.f14535a.isInSync()) {
            multiTaskRunner.b();
        } else {
            multiTaskRunner.a();
        }
    }

    public final void a(Class<? extends ContactDataLoader> cls, Throwable th) {
        if (!(this.e.flags.contains(LoaderFlags.ignoreQuotaException) && (th instanceof QuotaReachedException))) {
            this.e.stopLoader(cls);
        }
    }

    public final void a(Exception exc) {
        this.f14538d.a(this, exc);
    }

    public final boolean a(ContactDataLoader contactDataLoader, Set<ContactField> set) {
        return this.e.shouldLoad(contactDataLoader, set);
    }

    public final boolean a(Class<? extends ContactDataLoader> cls) {
        return this.e.isLoaderStopped(cls);
    }

    public final MultiTaskRunner b() {
        MultiTaskRunner multiTaskRunner = new MultiTaskRunner();
        multiTaskRunner.f14416a = this.f14535a.getId();
        return multiTaskRunner;
    }

    public final void c() {
        for (ContactDataLoader contactDataLoader : getLoaders()) {
            contactDataLoader.b();
        }
    }

    public Set<LoaderFlags> getFlags() {
        return this.e.flags;
    }

    public List<ContactDataLoader> getLoaders() {
        return this.e.getLoaders();
    }

    public boolean isStopped() {
        return this.f;
    }
}
